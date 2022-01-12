# -*- coding: utf-8 -*-
import copy


class Scheduler:
    # ＜コンストラクタ＞
    def __init__(self, scheduling_list, dag, target, jld_analyzer):
        '''
        scheduling_list : スケジューリングリスト
        num_of_jobs : スケジューリングリスト内のジョブの数
        dag : 割り当てるDAG
        target : ノードを割り当てるターゲットプロセッサ
        jld_analyzer : jld_analyzer
        result_core[i][j] : クラスタiのコアjの割り当て結果. [ノード番号, ジョブ番号, 処理開始時間, 処理終了時間]
        result_job[i][k] : t_{i,k} の割り当て結果. [割り当てられたクラスタ番号, 割り当てられたコア番号 , 処理開始時間, 処理終了時間]
        finish_jobs[] : 処理が終わったジョブ
        '''

        self.scheduling_list = copy.deepcopy(scheduling_list)
        self.num_of_jobs = len(scheduling_list)
        self.dag = dag
        self.target = target
        self.jld_analyzer = jld_analyzer
        self.result_core = [[[] for j in range(self.target.num_of_core)] for i in range(self.target.num_of_cluster)]
        self.result_job = [[] for i in range(len(self.dag.node))]
        self.finish_jobs = []
        
        self.schedule()
        print("a")
        
    
    # ＜メソッド＞
    # -- スケジューリングリストをもとに割り当て --
    def schedule(self):
        
        while(len(self.finish_jobs) != self.num_of_jobs):  #すべてのジョブの実行が終了したら、ループ終了

            # 処理を待つ場合
            if(len(self.scheduling_list) == 0):  # スケジューリングリストが空
                self.advance_time()
                continue
            
            # if(self.dag.node[self.scheduling_list[0][0]].isEvent == True):  # event-driven node job の場合，トリガーされていない（前任ジョブが実行完了してない）
            #     if(self.isTriggered(self.scheduling_list[0][0], self.scheduling_list[0][1]) == False):
            #         self.advance_time()
            #         continue
                
            
            head = self.scheduling_list[0]  # スケジューリングリストの先頭
            
            earliest_CC = -1  # ESTが最小となるクラスタ番号
            earliest_core = -1  #ESTが最小となるコア番号
            min_EST = 99999999  # ESTの最小値
                
            for i in range(self.target.num_of_cluster):
                temp_EST = 0  # クラスタ毎のEST
                AT = 0  # 見ているクラスタのAT
                    
                # ATを求める
                idle_flag = self.target.cluster[i].idle_core()
                if(idle_flag != -1):  # クラスタiに空きがある
                    temp_earliest_core = idle_flag
                    AT = 0
                else:  # クラスタiに空きがない
                    AT, temp_earliest_core = self.AT(i)

                # head が timer-driven node の場合
                if(self.dag.node[head[0]].isTimer == True):
                    st = self.dag.node[head[0]].st_list[head[1]]
                    
                    # temp_EST を求める
                    temp_EST = max(st, AT)
                
                # head が event-driven node の場合
                elif(self.dag.node[head[0]].isEvent == True):
                    # max(AFT + WC_e)を求める
                    max_AFT_plus_WCe = 0  # 前任トリガノードをすべて見た時の AFT+WC_e の最大値
                    
                    for trigger_node in self.dag.node[head[0]].trigger_list:
                        temp_AFT_plus_WCe = self.AFT(trigger_node, head[1]) + self.dag.edge[trigger_node][head[0]][1]
                            
                        if(temp_AFT_plus_WCe > max_AFT_plus_WCe):
                            max_AFT_plus_WCe = temp_AFT_plus_WCe
                        
                    # temp_EST を求める
                    temp_EST = max(max_AFT_plus_WCe, AT)
                    
                # ESTの更新
                if(temp_EST < min_EST):
                    min_EST = temp_EST
                    earliest_CC = i
                    earliest_core = temp_earliest_core
            
            if(self.target.current_time < min_EST):  # head の EST の時刻になっていない
                self.advance_time()
                continue
            
            # head が join node の場合，DFC を満たしていなければ，そのジョブを破棄
            if(self.dag.node[head[0]].isJoin == True):
                if(self.check_dfc(self, head[0], min_EST) == False):
                    self.scheduling_list.pop(0)  # job を破棄
                    
                    # 破棄した join node job と exit node job が同じ sg に所属している場合，デッドラインミスとなる
                    join_sg_index = self.jld_analyzer.get_subG_index(head[0])
                    exit_sg_index = self.dag.get_exit_index
                    if(join_sg_index == exit_sg_index):
                        print("current_time: " + str(self.target.current_time) + "Deadline miss occur (end of process)")  # log に書き込むなどしたい
                        break
            
            # headの割り当て
            self.scheduling_list.pop(0)  # スケジューリングリストの先頭を削除
            self.allocate(head[0], head[1], earliest_CC, earliest_core)

    
    # -- DFC を満たしているかチェック --
    def check_dfc(self, node_index, start_time):
        pred_list = self.dag.pred[node_index]
        
        for pred_node_index in pred_list:
            for finish_index in reversed(range(len(self.finish_jobs))):  # finish_jobs を終了時刻が遅い順に見ていく
                if(self.finish_jobs[finish_index][0] == pred_node_index):
                    timestamp = self.get_timestamp(pred_node_index)
                    dfc = self.jld_analyzer.a * self.jld_analyzer.get_period(pred_node_index)
                    
                    if(start_time - timestamp > dfc):  # dfc を超えていたら
                        return False
        
        return True
                    
                
    # -- 実行結果に基づいた data_{node index, job index} のタイムスタンプを返す --
    def get_timestamp(self, node_index, job_index):
        if(self.dag.entry[node_index] == 1):  # 対象ノードが entry node
            return self.result_job[node_index][job_index][2]
        
        elif(self.dag.node[node_index].isJoin == True):  # 対象ノードが join node
            return self.result_job[node_index][job_index][2]
        
        else:
            # 同一 sg 上の前任ノードをたどる
            trigger_nodes = self.dag.node[node_index].trigger_list
            return self.get_ideal_timestamp(trigger_nodes[0], job_index)
    
    
    # -- ジョブをクラスタi,コアjに割り当てる --
    def allocate(self, node_index, job_index, i, j):
        self.target.cluster[i].core[j].idle = False
        self.target.cluster[i].core[j].processing_node = node_index
        self.target.cluster[i].core[j].processing_job = job_index
        self.target.cluster[i].core[j].remain_process = self.dag.node[node_index].exec_time
        
        # resultの書き込み
        self.result_core[i][j].append([node_index, job_index, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time)])
        self.result_job[node_index].append([i, j, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time)])
    
    
    # -- 時刻を1進め, 終了判定 --
    def advance_time(self):
        self.target.current_time+=1

        #終了判定
        processing_jobs = self.target.processing_jobs()
        for processing_job in processing_jobs:
            if(self.result_job[processing_job[0]][processing_job[1]][3] == self.target.current_time):  # ジョブの処理終了時間が現在時刻と等しい
                self.finish_jobs.append(processing_job)
                
                # exit node job の場合，デッドラインミス判定
                if(self.dag.exit[processing_job[0]] == 1):
                    deadline_list = self.jld_analyzer.get_deadline_list(processing_job[0])
                    
                    if(self.result_job[processing_job[0]][processing_job[1]][3] > deadline_list[processing_job[1]]):
                        print("current_time: " + str(self.target.current_time) + "Deadline miss occur (end of process)")  # log に書き込むなどしたい
        
        self.target.advance_process()
    
    
    # -- ジョブの処理終了時間を返す --
    def AFT(self, node_index, job_index):
        return self.result_job[node_index][job_index][3]
                
        
    # -- クラスタ i が Idle 状態になる時間とその時のコアを返す --
    def AT(self, i):
        min_idle = 99999999  # 最も早く idle 状態となる時間
        earliest_core = -1
        
        for j in range(self.target.num_of_core):
            idle_time = self.result_core[i][j][-1][3]
            if(idle_time < min_idle):
                min_idle = idle_time
                earliest_core = j
        
        return min_idle, earliest_core
    
    
    # -- 受け取った event-driven node job がトリガーされていれば True, そうでなければ False --
    def isTriggered(self, node_index, job_index):
        for trigger_node in self.dag.node[node_index].trigger_list:
            if([trigger_node, job_index] not in self.finish_jobs):
                return False
        
        return True
    