# -*- coding: utf-8 -*-
import numpy as np


class JLDAnalyzer:
    # <コンストラクタ>
    def __init__(self, dag, divG, a, method_name):
        '''
        dag : 解析対象の DAG
        divG : subG の集合に切り分けられた DAG
        a : Eq. (1) の a の値
        job_succ[i][j] : n_(i,j) の後続ジョブの添え字を格納するリスト
        method_name : 依存関係を決めるのに使用する手法の名前
        '''
        self.dag = dag
        self.divG = divG
        self.a = float(a)
        self.job_succ = [[] for i in range(len(self.dag.node))]
        self.method_name = method_name
        
        self.calc_ideal_st_ft()
        self.calc_duration()
        self.analyze_in_subG()
        
        if(self.method_name == "Proposed"):
            self.proposed_analyze_tail_to_join()
        elif(self.method_name == "Igarashi"):
            self.igarashi_analyze_tail_to_join()
        elif(self.method_name == "Salah"):
            self.salah_analyze_tail_to_join()
        
        
    # <メソッド>
    # -- 理想的な st, ft に基づいた data_{node index, job index} のタイムスタンプを返す --
    def get_ideal_timestamp(self, node_index, job_index):
        if(self.dag.entry[node_index] == 1):  # 対象ノードが entry node
            return self.dag.node[node_index].st_list[job_index]
        
        elif(self.dag.node[node_index].isJoin == True):  # join node でタイムスタンプが更新されるため
            return self.dag.node[node_index].st_list[job_index]
        
        else:
            # 同一 sg 上の前任ノードをたどる
            trigger_nodes = self.dag.node[node_index].trigger_list
            return self.get_ideal_timestamp(trigger_nodes[0], job_index)
    
    
    # -- k 回目までのデッドラインのリストを返す --
    def get_deadline_list(self, exit_node_index):
        num_trigger_exit = self.get_num_trigger_duration(exit_node_index)
        deadline_list = [0 for i in range(num_trigger_exit)]
        
        for k in range(num_trigger_exit):
            if(k == 0):
                deadline_list[0] = self.dag.Deadline
            else:
                deadline_list[k] = deadline_list[k-1] + self.get_period(exit_node_index)

        return deadline_list
                
    
    # -- ni が所属する subG の Duration を返す --
    def get_duration(self, node_index):
        return self.divG[self.get_subG_index(node_index)].duration
    
    
    # -- ni が所属する subG の period を返す --
    def get_period(self, node_index):
        return self.divG[self.get_subG_index(node_index)].period
    
    
    # -- ni が duration 間で発火する回数を返す --
    def get_num_trigger_duration(self, node_index):
        subG_index = self.get_subG_index(node_index)
        
        return self.divG[subG_index].get_num_trigger_duration()

    
    # -- ni が HP 間で発火する回数を返す --
    def get_num_trigger_hp(self, node_index):
        subG_index = self.get_subG_index(node_index)
        
        return self.divG[subG_index].get_num_trigger_hp()
    
    
    # -- st_list, ft_list を duration 分用意 --
    def set_time_list_size(self, node_index):
        num_trigger = self.get_num_trigger_duration(node_index)
        
        while(len(self.dag.node[node_index].st_list) < num_trigger):  # duration 分にリストのサイズが足りない場合
            self.dag.node[node_index].st_list.append(-1)  # 初期値は -1
            self.dag.node[node_index].ft_list.append(-1)  # 初期値は -1
    
    
    # -- 全てのノードがコアを占有できる前提の st, ft を計算 --
    def calc_ideal_st_ft(self):
        # timer-driven node
        timer_list = self.dag.get_timer_list()
        
        for timer_index in timer_list:
            self.set_time_list_size(timer_index)
            
            for k in range(self.get_num_trigger_duration(timer_index)):
                if(self.dag.node[timer_index].st_list[k] == -1):  # 未計算の場合のみ
                    self.dag.node[timer_index].st_list[k] = self.get_period(timer_index)*k + self.dag.node[timer_index].offset
                    self.dag.node[timer_index].ft_list[k] = self.dag.node[timer_index].st_list[k] + self.dag.node[timer_index].exec_time
        
        # event-driven node
        while(True):  # 全てのノードが計算できるまで
            event_list = self.dag.get_event_list()
            
            for event_index in event_list:
                self.set_time_list_size(event_index)
                
                for trigger_index in self.dag.node[event_index].trigger_list:  # 見ている event-driven node を trigger するノード
                    self.set_time_list_size(trigger_index)

                    if(self.dag.node[trigger_index].ft_list[-1] == -1): continue  # trigger node の ft_list が計算できていない場合
                    
                    for k in range(self.get_num_trigger_duration(event_index)):
                        tmp_st = self.dag.node[trigger_index].ft_list[k] + self.dag.edge[trigger_index][event_index][1]
                        if(tmp_st > self.dag.node[event_index].st_list[k]):
                            self.dag.node[event_index].st_list[k] = tmp_st  # 最大値を使用
                
                # ft_list の計算
                if(self.dag.node[event_index].st_list[-1] != -1):  # st_list を計算できている場合のみ
                    for k in range(self.get_num_trigger_duration(event_index)):
                        self.dag.node[event_index].ft_list[k] = self.dag.node[event_index].st_list[k] + self.dag.node[event_index].exec_time
            
            # 終了判定
            finish_flag = True
            for event_index in event_list:
                if(self.dag.node[event_index].st_list[-1] == -1):  # 計算できていないノードがある
                    finish_flag = False
                    break
            
            if(finish_flag == True): break


    # -- ni が tail node なら True を返す --
    def isTail(self, node_index, subG_index):
        if(node_index in self.divG[subG_index].tail_list):
            return True
        else:
            return False
    
    
    # -- ni が所属する subG の添え字を返す --
    def get_subG_index(self, node_index):
        for subG_index in range(len(self.divG)):
            if(node_index in self.divG[subG_index].node_list):
                return subG_index
    
    
    # -- ni と nj が同じ subG に所属しているなら True を返す --
    def isSame(self, i, j):
        if(self.get_subG_index(i) == self.get_subG_index(j)):
            return True
        else:
            return False


    # -- job_succ を duration 分用意 --
    def set_job_succ_size(self, node_index):
        num_trigger = self.get_num_trigger_duration(node_index)
        
        while(len(self.job_succ[node_index]) < num_trigger):  # duration 分にリストのサイズが足りない場合
            self.job_succ[node_index].append([])


    # -- subG 内の依存関係を解析 --
    def analyze_in_subG(self):
        for subG_index in range(len(self.divG)):  # subG 毎にループ
            for node_index in self.divG[subG_index].node_list:
                
                same_subG_list = self.divG[subG_index].node_list
                succ_list = self.dag.succ[node_index]
                if(len(set(same_subG_list) & set(succ_list)) != 0):  # 後続に同じ subG のノードがある場合
                    self.set_job_succ_size(node_index)
                    for succ_index in succ_list:
                        if(self.isSame(succ_index, node_index) == False): continue
                        for k in range(self.get_num_trigger_duration(node_index)):
                            self.job_succ[node_index][k].append([succ_index, k])  # [ノード番号, ジョブ番号]
    
    
    # -- tail node のリストを返す --
    def get_tail_list(self):
        tail_list = []
        for node_index in range(len(self.dag.node)):
            if(self.isTail(node_index, self.get_subG_index(node_index)) == True):
                tail_list.append(node_index)
        
        return tail_list

    
    # -- join node のリストを返す --
    def get_join_list(self):
        join_list = []
        for node_index in range(len(self.dag.node)):
            if(self.dag.node[node_index].isJoin == True):
                join_list.append(node_index)
        
        return join_list
    
    
    # -- tail node とペアになる join node の添え字を返す --
    def get_pair_join(self, tail_index):
        succ_list = self.dag.succ[tail_index]
        join_list = self.get_join_list()
        matched = list(set(succ_list) & set(join_list))
        
        return matched[0]  # 多分 1 つだけ
    
    
    # -- duration を延長する --
    def calc_duration(self):
        while(True):
            finish_flag = True
            
            for subG in self.divG:
                for tail_index in subG.tail_list:
                    if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
                    
                    pair_join_index = self.get_pair_join(tail_index)
                    pair_join_subG_index = self.get_subG_index(pair_join_index)
                    arrive_time = self.dag.node[tail_index].ft_list[-1] + self.dag.edge[tail_index][pair_join_index][1]  # 後続 subG に到着する時刻
                    
                    # tail node の最後のジョブが間に合うようになるまで，後続 subG の duration を延長
                    while(self.dag.node[pair_join_index].st_list[-1] < arrive_time):
                        finish_flag = False  # 延長されなくなったら終了
                        self.divG[pair_join_subG_index].duration += self.divG[pair_join_subG_index].period
                        
                        for node_index in self.divG[pair_join_subG_index].node_list:
                            self.set_time_list_size(node_index)
                            # 増やした分の st_list, ft_list を計算
                            self.dag.node[node_index].st_list[-1] = self.dag.node[node_index].st_list[-2] + self.get_period(node_index)
                            self.dag.node[node_index].ft_list[-1] = self.dag.node[node_index].st_list[-1] + self.dag.node[node_index].exec_time
                    
            # 終了判定
            if(finish_flag == True): break

    
    # -- 提案手法における tail~join 間の依存関係を解析 --
    def proposed_analyze_tail_to_join(self):
        tail_list = self.get_tail_list()
        join_list = self.get_join_list()
        
        for tail_index in tail_list:
            if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
            
            self.set_job_succ_size(tail_index)
            tail_succ_list = self.dag.succ[tail_index]
            succ_join_list = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト
            
            for succ_join in succ_join_list:
                for k in range(len(self.dag.node[tail_index].ft_list)):
                    for s in range(len(self.dag.node[succ_join].st_list)):
                        # Definition 1
                        if((self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join][1]) <= self.dag.node[succ_join].st_list[s] and (self.dag.node[succ_join].st_list[s] - self.get_ideal_timestamp(tail_index, k)) <= (self.a * self.get_period(tail_index))):
                            self.job_succ[tail_index][k].append([succ_join, s])
    
    
    # -- timer-driven node とした場合の st を返す --
    def get_igarashi_timer_st(self, node_index, job_index):
        if(self.dag.node[node_index].isTimer == True):
            return self.dag.node[node_index].st_list[job_index]
        
        else:
            # 同一 sg 上の前任ノードをたどる
            trigger_nodes = self.dag.node[node_index].trigger_list
            return self.get_igarashi_timer_st(trigger_nodes[0], job_index)
    
    
    # -- DS-RT 2019 における tail~join 間の依存関係を解析 --
    def igarashi_analyze_tail_to_join(self):
        tail_list = self.get_tail_list()
        join_list = self.get_join_list()
        
        for tail_index in tail_list:
            if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
            
            self.set_job_succ_size(tail_index)
            tail_succ_list = self.dag.succ[tail_index]
            succ_join_list = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト
            
            for succ_join in succ_join_list:
                for s in range(self.get_num_trigger_hp(succ_join)):  # 後続ノードの st を 1 つずつ取り出す
                    if(s == 0): continue  # 後続の 0 番目のジョブはスキップで良い
                    
                    min_st_diff = 999999999999999999999  # 最小の st の差
                    min_st_diff_tail_index = -1  # 最小の st の差を持つ tail node job の添え字
                    for k in range(len(self.dag.node[tail_index].st_list)):  # tail node の st を 1 つずつ取り出す
                        st_diff = abs(self.get_igarashi_timer_st(succ_join, s) - self.get_igarashi_timer_st(tail_index, k))
                        if(st_diff < min_st_diff):
                            min_st_diff = st_diff
                            min_st_diff_tail_index = k
                        
                        if(self.dag.node[succ_join].st_list[s] < self.dag.node[tail_index].st_list[k]): break   # tail node job の st が 後続の st を超えていたら探索終了
                        
                    self.job_succ[tail_index][min_st_diff_tail_index].append([succ_join, s])  # 依存関係の追加
    
    
    # -- TMS/DEVS 2019 における tail~join 間の依存関係を解析 --
    def salah_analyze_tail_to_join(self):
        tail_list = self.get_tail_list()
        join_list = self.get_join_list()
        
        for tail_index in tail_list:
            if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
            
            self.set_job_succ_size(tail_index)
            tail_succ_list = self.dag.succ[tail_index]
            succ_join_list = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト
            
            for succ_join in succ_join_list:
                tail_period = self.get_period(tail_index)
                join_period = self.get_period(succ_join)
                
                if(tail_period > join_period):  # slow to fast
                    for k in range(1, self.get_num_trigger_hp(tail_index)):  # 0 は除く
                        join_job_index = int(np.ceil(k * tail_period / join_period))
                        if(join_job_index >= self.get_num_trigger_hp(succ_join)): break
                        
                        self.job_succ[tail_index][k].append([succ_join, join_job_index])  # 依存関係の追加
                        
                elif(tail_period < join_period):  # fast to slow
                    for s in range(1, self.get_num_trigger_hp(succ_join)):  # 0 は除く
                        tail_job_index = int(np.floor(s * join_period / tail_period))
                        if(tail_job_index >= self.get_num_trigger_hp(tail_index)): break
                        
                        self.job_succ[tail_index][tail_job_index].append([succ_join, s])  # 依存関係の追加