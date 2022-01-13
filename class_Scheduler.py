# -*- coding: utf-8 -*-
import copy


class Scheduler:
    # ＜コンストラクタ＞
    def __init__(self, dag, target, jld_analyzer, laxity_table, alg_name):
        '''
        scheduling_list : スケジューリングリスト．ジョブがトリガーされたらこのリストに格納され，待ちジョブが他にもある場合，優先度順にソートされる
        dag : 割り当てるDAG
        target : ノードを割り当てるターゲットプロセッサ
        jld_analyzer : jld_analyzer
        laxity_table : 提案手法によって生成された，各ジョブのラキシティ
        alg_name : 使用するアルゴリズム名
        result_core[i][j] : クラスタiのコアjの割り当て結果. [ノード番号, ジョブ番号, 処理開始時間, 処理終了時間]
        result_job[i][k] : t_{i,k} の割り当て結果. [割り当てられたクラスタ番号, 割り当てられたコア番号 , 処理開始時間, 処理終了時間]
        finish_jobs : 処理が終わったジョブ
        discard_jobs : 破棄されたジョブ
        '''

        self.scheduling_list = []
        self.dag = dag
        self.target = target
        self.jld_analyzer = jld_analyzer
        self.laxity_table = laxity_table
        self.alg_name = alg_name
        self.result_core = [[[] for j in range(self.target.num_of_core)] for i in range(self.target.num_of_cluster)]
        self.result_job = [[] for i in range(len(self.dag.node))]
        self.finish_jobs = []
        self.discard_jobs = []
        
        self.schedule()
        
        print("a")
        
    
    # ＜メソッド＞
    # -- 結果から CPU 利用率を計算 --
    def calc_cpu_usage(self):
        sum_cpu_usage = 0
        
        for core_index in range(self.target.num_of_core):  # コア毎
            sum_idle_time = 0  # 処理が完了するまでの合計アイドル時間
            current_time = 0
            for result in self.result_core[0][core_index]:  # クラスタ数は1
                start_time = result[2]
                if(start_time - current_time > 0):
                    sum_idle_time += start_time - current_time
                
                current_time = result[3] + 1
            
            cpu_usage = ((current_time - sum_idle_time) / self.get_makespan()) * 100
            sum_cpu_usage += cpu_usage
            print("core " + str(core_index) + " : " + str(cpu_usage))
        
        # 平均 CPU 利用率
        ave_cpu_usage = sum_cpu_usage / self.target.num_of_core
        print("ave : " + str(ave_cpu_usage))
                
    
    # -- 結果からメイクスパンを取得 --
    def get_makespan(self):
        max_last_finish_time = 0
        for core_index in range(self.target.num_of_core):  # コア毎
            temp_last_finish_time = self.result_core[0][core_index][-1][3]
            if(temp_last_finish_time > max_last_finish_time):
                max_last_finish_time = temp_last_finish_time
        
        return max_last_finish_time + 1  # makespan
    
    
    # -- スケジューリングリストをもとに割り当て --
    def schedule(self):
        # exit node job の最後のジョブの添え字（終了条件）を見つける
        exit_node_index = self.dag.get_exit_index()
        last_exit_node_job_index = self.jld_analyzer.get_num_trigger_hp(exit_node_index) - 1
        
        self.set_trigger_time_timer()  # timer-driven node の trigger_time_list をセット
        
        
        while([exit_node_index, last_exit_node_job_index] not in self.finish_jobs):  # exit node job の最後のジョブの実行が終了したら、ループ終了
            
            self.check_trigger_time()  # トリガー時刻となっているジョブを scheduling_list に入れる
            

            # スケジューリングリストが空なら待つ
            if(len(self.scheduling_list) == 0): 
                self.advance_time()
                continue
                
            
            head = self.scheduling_list[0]  # スケジューリングリストの先頭
            
            earliest_CC = -1  # ESTが最小となるクラスタ番号
            earliest_core = -1  # ESTが最小となるコア番号
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
            
            # head が join node の場合，DFC を満たしていなければ，そのジョブを破棄．※1回目のデッドラインまでに開始したジョブは除く
            if(self.dag.node[head[0]].isJoin == True and self.target.current_time > self.jld_analyzer.get_deadline_list(self.dag.get_exit_index())[0]):
                if(self.check_dfc(head[0], min_EST) == False):
                    self.discard_jobs.append([head[0], head[1]])
                    self.scheduling_list.pop(0)  # job を破棄
                    
                    # 破棄した join node job と exit node job が同じ sg に所属している場合，デッドラインミスとなる
                    join_sg_index = self.jld_analyzer.get_subG_index(head[0])
                    exit_sg_index = self.jld_analyzer.get_subG_index(self.dag.get_exit_index())
                    if(join_sg_index == exit_sg_index):
                        deadline_list = self.jld_analyzer.get_deadline_list(self.dag.get_exit_index())
                        print("current_time: " + str(deadline_list[head[1]]) + " Deadline miss occur (end of process) (DFC)")  # log に書き込むなどしたい
                        break
                    else:
                        continue
                    
            
            # head の min_EST が提案手法の laxity を超えていた場合，早期検知
            if(min_EST > self.laxity_table[head[0]][head[1]]):
                print("current_time: " + str(self.target.current_time) + " Deadline miss occur (early detect)")  # log に書き込むなどしたい
            
            
            # headの割り当て
            self.scheduling_list.pop(0)  # スケジューリングリストの先頭を削除
            self.allocate(head[0], head[1], earliest_CC, earliest_core)

    
    # -- トリガー時刻になっているジョブを scheduling_list に格納 --
    def check_trigger_time(self):
        for node_index in range(len(self.dag.node)):
            for job_index in range(len(self.dag.node[node_index].trigger_time_list)):
                if(self.target.current_time == self.dag.node[node_index].trigger_time_list[job_index]):
                    if([node_index, job_index] not in self.discard_jobs and [node_index, job_index] not in self.target.processing_jobs() and [node_index, job_index] not in self.scheduling_list):
                        self.scheduling_list.append([node_index, job_index])
                        print("append" + str(node_index) + "," + str(job_index))
                        self.sort_scheduling_list()  # scheduling_list を優先度順にソート
    
    
    # -- scheduling_list を優先度順にソート --
    def sort_scheduling_list(self):
        if(len(self.scheduling_list) == 1): return 0  # scheduling_list 内にジョブが1つなら何もしない
        
        # RMS
        if(self.alg_name == "RMS"):
            # 末尾から比較していく
            for index in range(1, len(self.scheduling_list)):
                end_job_period = self.jld_analyzer.get_period(self.scheduling_list[-index][0])
                before_job_period = self.jld_analyzer.get_period(self.scheduling_list[-(index+1)][0])
                
                if(end_job_period < before_job_period):
                    # 末尾と一個前を入れ替え
                    temp_end_job = self.scheduling_list[-index]
                    self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                    self.scheduling_list[-(index+1)] = temp_end_job
                    
                elif(end_job_period == before_job_period):  # 周期が同じ場合，トリガー時刻が早いジョブを優先
                    end_job_trigger_time = self.dag.node[self.scheduling_list[-index][0]].trigger_time_list[self.scheduling_list[-index][1]]
                    before_job_trigger_time = self.dag.node[self.scheduling_list[-(index+1)][0]].trigger_time_list[self.scheduling_list[-(index+1)][1]]
                    
                    if(end_job_trigger_time < before_job_trigger_time):
                        # 末尾と一個前を入れ替え
                        temp_end_job = self.scheduling_list[-index]
                        self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                        self.scheduling_list[-(index+1)] = temp_end_job
                        
                else:  # 1個前のジョブの方が周期が小さい場合，ソート終了
                    break
        
        
        # EDF
        if(self.alg_name == "EDF"):
            # 末尾から比較していく
            for index in range(1, len(self.scheduling_list)):
                end_job_deadline = self.jld_analyzer.get_period(self.scheduling_list[-index][0]) * (self.scheduling_list[-index][1] + 1)
                before_job_deadline = self.jld_analyzer.get_period(self.scheduling_list[-(index+1)][0]) * (self.scheduling_list[-(index+1)][1] + 1)
                
                if(end_job_deadline < before_job_deadline):
                    # 末尾と一個前を入れ替え
                    temp_end_job = self.scheduling_list[-index]
                    self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                    self.scheduling_list[-(index+1)] = temp_end_job
                    
                elif(end_job_deadline == before_job_deadline):  # デッドラインが同じ場合，トリガー時刻が早いジョブを優先
                    end_job_trigger_time = self.dag.node[self.scheduling_list[-index][0]].trigger_time_list[self.scheduling_list[-index][1]]
                    before_job_trigger_time = self.dag.node[self.scheduling_list[-(index+1)][0]].trigger_time_list[self.scheduling_list[-(index+1)][1]]
                    
                    if(end_job_trigger_time < before_job_trigger_time):
                        # 末尾と一個前を入れ替え
                        temp_end_job = self.scheduling_list[-index]
                        self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                        self.scheduling_list[-(index+1)] = temp_end_job
                        
                else:  # 1個前のジョブの方がデッドラインが早い場合，ソート終了
                    break
                
        
        # Proposed LLF
        if(self.alg_name == "P_LLF"):
            # 末尾から比較していく
            for index in range(1, len(self.scheduling_list)):
                end_job_laxity = self.laxity_table[self.scheduling_list[-index][0]][self.scheduling_list[-index][1]]
                before_job_laxity = self.laxity_table[self.scheduling_list[-(index+1)][0]][self.scheduling_list[-(index+1)][1]]
                
                if(end_job_laxity < before_job_laxity):
                    if(self.scheduling_list[-index][0] != self.scheduling_list[-(index+1)][0]):  # 同じノードから生成されたジョブでなければ
                        # 末尾と一個前を入れ替え
                        temp_end_job = self.scheduling_list[-index]
                        self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                        self.scheduling_list[-(index+1)] = temp_end_job
                    
                elif(end_job_laxity == before_job_laxity):  # laxity が同じ場合，トリガー時刻が早いジョブを優先
                    end_job_trigger_time = self.dag.node[self.scheduling_list[-index][0]].trigger_time_list[self.scheduling_list[-index][1]]
                    before_job_trigger_time = self.dag.node[self.scheduling_list[-(index+1)][0]].trigger_time_list[self.scheduling_list[-(index+1)][1]]
                    
                    if(end_job_trigger_time < before_job_trigger_time):
                        # 末尾と一個前を入れ替え
                        temp_end_job = self.scheduling_list[-index]
                        self.scheduling_list[-index] = self.scheduling_list[-(index+1)]
                        self.scheduling_list[-(index+1)] = temp_end_job
                        
                else:  # 1個前のジョブの方が laxity が小さい場合，ソート終了
                    break
    
    
    # -- timer-driven node の trigger_time_list をセット --
    def set_trigger_time_timer(self):
        timer_list = self.dag.get_timer_list()
        for timer_index in timer_list:
            for job_index in range(self.jld_analyzer.get_num_trigger_hp(timer_index)):
                self.dag.node[timer_index].trigger_time_list.append(self.dag.node[timer_index].st_list[job_index])  # timer-driven node の trigger_time は st と一致
    
    
    # -- DFC を満たしているかチェック --
    def check_dfc(self, node_index, start_time):
        pred_list = self.dag.pred[node_index]
        
        for pred_node_index in pred_list:
            for finish_job in reversed(self.finish_jobs):  # finish_jobs を終了時刻が遅い順に見ていく
                if(finish_job[0] == pred_node_index):
                    timestamp = self.get_timestamp(pred_node_index, finish_job[1])
                    dfc = self.jld_analyzer.a * self.jld_analyzer.get_period(pred_node_index)
                    
                    if(start_time - timestamp > dfc):  # dfc を超えていたら
                        return False
                    else:  # dfc を満たしていたら
                        break
        
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
            return self.get_timestamp(trigger_nodes[0], job_index)
    
    
    # -- ジョブをクラスタi,コアjに割り当てる --
    def allocate(self, node_index, job_index, i, j):
        self.target.cluster[i].core[j].idle = False
        self.target.cluster[i].core[j].processing_node = node_index
        self.target.cluster[i].core[j].processing_job = job_index
        self.target.cluster[i].core[j].remain_process = self.dag.node[node_index].exec_time
        
        # resultの書き込み (割り当てた時間から処理が開始される)
        self.result_core[i][j].append([node_index, job_index, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time - 1)])
        self.result_job[node_index].append([i, j, self.target.current_time, (self.target.current_time + self.dag.node[node_index].exec_time  - 1)])
    
    
    # -- 時刻を1進め, 終了判定 --
    def advance_time(self):
        self.target.current_time+=1

        #終了判定
        processing_jobs = self.target.processing_jobs()
        for processing_job in processing_jobs:
            if(self.result_job[processing_job[0]][processing_job[1]][3] == self.target.current_time):  # ジョブの処理終了時間が現在時刻と等しい
                self.finish_jobs.append(processing_job)
                self.trigger_succ_event(processing_job[0], self.target.current_time + 1)  # 後続の event-driven node をトリガー
                
                # exit node job の場合，デッドラインミス判定
                if(self.dag.exit[processing_job[0]] == 1):
                    deadline_list = self.jld_analyzer.get_deadline_list(processing_job[0])
                    
                    if(self.result_job[processing_job[0]][processing_job[1]][3] > deadline_list[processing_job[1]]):
                        print("current_time: " + str(self.target.current_time + 1) + " Deadline miss occur (end of process) (E2E)")  # log に書き込むなどしたい
        
        self.target.advance_process()
    
    
    # -- 後続の event-driven node に対して trigger edge があればトリガー --
    def trigger_succ_event(self, node_index, finish_time):
        succ_list = self.dag.succ[node_index]
        for succ_index in succ_list:
            if(self.dag.node[succ_index].isEvent == True):
                if(self.dag.node[succ_index].trigger_list[0] == node_index):  # trigger される前任は1つ前提
                    self.dag.node[succ_index].trigger_time_list.append(finish_time + self.dag.edge[node_index][succ_index][1] + 1)  # 終了時間 + 通信時間
    
    
    # -- ジョブの処理終了時間を返す --
    def AFT(self, node_index, job_index):
        return self.result_job[node_index][job_index][3]
                
        
    # -- クラスタ i が Idle 状態になる時間とその時のコアを返す --
    def AT(self, i):
        min_idle = 99999999  # 最も早く idle 状態となる時間
        earliest_core = -1
        
        for j in range(self.target.num_of_core):
            idle_time = self.result_core[i][j][-1][3] + 1
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
    