# -*- coding: utf-8 -*-


class JLDAnalyzer:
    # <コンストラクタ>
    def __init__(self, dag, divG):
        '''
        dag : 解析対象の DAG
        divG : subG の集合に切り分けられた DAG
        job_succ[i][j] : n_(i,j) の後続ジョブの添え字を格納するリスト
        job_pred[i][j] : n_(i,j) の前任ジョブの添え字を格納するリスト
        '''
        self.dag = dag
        self.divG = divG
        self.job_succ = [[] for i in range(len(self.dag.node))]
        self.job_pred = [[] for i in range(len(self.dag.node))]
        
        self.calc_ideal_st_ft()
        self.calc_duration()
        self.analyze_in_subG()
        self.analyze_tail_to_join()
        
        
    # <メソッド>
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
        

        if(node_index in self.divG[subG_index].head_list):
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


    # -- job_succ, job_pred を duration 分用意 --
    def set_job_succ_pred_size(self, node_index):
        num_trigger = self.get_num_trigger_duration(node_index)
        
        while(len(self.job_succ[node_index]) < num_trigger):  # duration 分にリストのサイズが足りない場合
            self.job_succ[node_index].append([])
            self.job_pred[node_index].append([])


    # -- subG 内の依存関係を解析 --
    def analyze_in_subG(self):
        for subG_index in range(len(self.divG)):  # subG 毎にループ
            for node_index in self.divG[subG_index].node_list:
                
                same_subG_list = self.divG[subG_index].node_list
                succ_list = self.dag.succ[node_index]
                if(len(set(same_subG_list) & set(succ_list)) != 0):  # 後続に同じ subG のノードがある場合
                    self.set_job_succ_pred_size(node_index)
                    for succ_index in succ_list:
                        if(self.isSame(succ_index, node_index) == False): continue
                        for k in range(self.get_num_trigger_duration(node_index)):
                            self.job_succ[node_index][k].append([succ_index, k])  # [ノード番号, ジョブ番号]
                            self.set_job_succ_pred_size(succ_index)
                            self.job_pred[succ_index][k].append([node_index, k])
    
    
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
    
    
    # -- tail~join 間の依存関係を解析 --
    def analyze_tail_to_join(self):
        tail_list = self.get_tail_list()
        join_list = self.get_join_list()
        
        for tail_index in tail_list:
            if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
            
            self.set_job_succ_pred_size(tail_index)
            tail_succ_list = self.dag.succ[tail_index]
            succ_join_list = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト
            
            for succ_join in succ_join_list:
                for k in reversed(range(len(self.dag.node[tail_index].ft_list))):  # 後ろから見ていく
                    for s in range(len(self.dag.node[succ_join].st_list)):
                        if(s == 0):  # s の最初は条件式の範囲を超えるので，別の処理を行う
                            if(self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join][1] <= self.dag.node[succ_join].st_list[s]) :  # 1 つ目の条件のみ
                                self.job_succ[tail_index][k].append([succ_join, s])
                                self.set_job_succ_pred_size(succ_join)
                                self.job_pred[succ_join][s].append([tail_index, k])
                        
                        if((self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join][1]) <= self.dag.node[succ_join].st_list[s]):  # Definition 1 - 条件 1
                            self.job_succ[tail_index][k].append([succ_join, s])
                            self.set_job_succ_pred_size(succ_join)
                            self.job_pred[succ_join][s].append([tail_index, k])

    
    # -- デッドラインミスに関わる tail~join 間の依存関係を解析 --
    def critical_analyze_tail_to_join(self):
        tail_list = self.get_tail_list()
        join_list = self.get_join_list()
        
        for tail_index in tail_list:
            if(self.dag.exit[tail_index] == 1): continue  # exit node は後続が無いのでスキップ
            
            self.set_job_succ_pred_size(tail_index)
            tail_succ_list = self.dag.succ[tail_index]
            succ_join_list = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト
            
            for succ_join in succ_join_list:
                for k in range(len(self.dag.node[tail_index].ft_list)):
                    for s in range(len(self.dag.node[succ_join].st_list)):
                        # k の最後は条件式の範囲を超えるので，別の処理を行う
                        if(k == len(self.dag.node[tail_index].ft_list) - 1):
                            next_ft = self.dag.node[tail_index].ft_list[k] + self.get_period(tail_index) + self.dag.edge[tail_index][succ_join][1]  # k+1 の ft を計算
                            if((self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join][1]) <= self.dag.node[succ_join].st_list[s] and next_ft >= self.dag.node[succ_join].st_list[s]):  # Definition 1
                                self.job_succ[tail_index][k].append([succ_join, s])
                                self.set_job_succ_pred_size(succ_join)
                                self.job_pred[succ_join][s].append([tail_index, k])
                            
                            continue
                        
                        # 通常処理
                        if((self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join][1]) <= self.dag.node[succ_join].st_list[s] and (self.dag.node[tail_index].ft_list[k+1] + self.dag.edge[tail_index][succ_join][1]) >= self.dag.node[succ_join].st_list[s]):  # Definition 1
                            self.job_succ[tail_index][k].append([succ_join, s])
                            self.set_job_succ_pred_size(succ_join)
                            self.job_pred[succ_join][s].append([tail_index, k])