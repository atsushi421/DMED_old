# -*- coding: utf-8 -*-
import copy


class Scheduler:
    # ＜コンストラクタ＞
    def __init__(self, scheduling_list, dag, target):
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
        self.result_core = [[[] for j in range(self.target.num_of_core)] for i in range(self.target.num_of_cluster)]
        self.result_job = [[] for i in range(len(self.dag.node))]
        self.finish_jobs = []
        
        self.schedule()
        print("a")
        
    
    # ＜メソッド＞
    # スケジューリングリストをもとに割り当て
    def schedule(self):
        
        while(len(self.finish_jobs) != self.num_of_jobs):  #すべてのジョブの実行が終了したら、ループ終了

            # 処理を待つ場合
            if(len(self.scheduling_list) == 0):  # スケジューリングリストが空
                self.advance_time()
                continue
                
            if(self.legal(self.scheduling_list[0][0], self.scheduling_list[0][1]) == False):  # スケジューリングリストの先頭が legal でない
                self.advance_time()
                continue
            
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
            
            # headの割り当て
            self.scheduling_list.pop(0)  # スケジューリングリストの先頭を削除
            self.allocate(head[0], head[1], earliest_CC, earliest_core)

    
    # ジョブをクラスタi,コアjに割り当てる
    def allocate(self, node_index, job_index, i, j):
        self.target.cluster[i].core[j].idle = False
        self.target.cluster[i].core[j].processing_node = node_index
        self.target.cluster[i].core[j].processing_job = job_index
        self.target.cluster[i].core[j].remain_process = self.dag.node[node_index].exec_time
        
        # resultの書き込み
        self.result_core[i][j].append([node_index, job_index, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time)])
        self.result_job[node_index].append([i, j, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time)])
    
    
    # 時刻を1進め, 終了判定
    def advance_time(self):
        self.target.current_time+=1

        #終了判定
        processing_jobs = self.target.processing_jobs()
        for processing_job in processing_jobs:
            if(self.result_job[processing_job[0]][processing_job[1]][3] == self.target.current_time):  # ジョブの処理終了時間が現在時刻と等しい
                self.finish_jobs.append(processing_job)
        
        self.target.advance_process()
    
    
    # ジョブの処理終了時間を返す
    def AFT(self, node_index, job_index):
        return self.result_job[node_index][job_index][3]
                
        
    # クラスタ i が Idle 状態になる時間とその時のコアを返す
    def AT(self, i):
        min_idle = 99999999  # 最も早く idle 状態となる時間
        earliest_core = -1
        
        for j in range(self.target.num_of_core):
            idle_time = self.result_core[i][j][-1][3]
            if(idle_time < min_idle):
                min_idle = idle_time
                earliest_core = j
        
        return min_idle, earliest_core
    
    
    # 受け取ったジョブがlegalであればTrue, そうでなければFalse
    def legal(self, node_index, job_index):
        for trigger_node in self.dag.node[node_index].trigger_list:
            if([trigger_node, job_index] not in self.finish_jobs):
                return False
        
        return True
    