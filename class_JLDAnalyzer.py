# -*- coding: utf-8 -*-


class JLDAnalyzer:
    # <コンストラクタ>
    def __init__(self, dag, divG):
        '''
        dag : 解析対象の DAG
        divG : subG の集合に切り分けられた DAG
        job_pred[i][j] : n_(i,j) の前任ジョブの添え字を格納するリスト
        job_succ[i][j] : n_(i,j) の後続ジョブの添え字を格納するリスト
        '''
        self.dag = dag
        self.divG = divG
        self.job_pred = [[] for i in range(len(self.dag.node))]
        self.job_succ = [[] for i in range(len(self.dag.node))]
        
        self.calc_ideal_st_ft()
        self.calc_duration()
        self.analyze_in_subG()
        
        
    # <メソッド>
    # -- ni が所属する subG の Duration を返す --
    def get_duration(self, node_index):
        return self.divG[self.get_subG_index(node_index)].duration
    
    
    # -- ni が所属する subG の period を返す
    def get_period(self, node_index):
        return self.divG[self.get_subG_index(node_index)].period
    
    
    # -- ni が duration 間で発火する回数を返す
    def get_num_trigger(self, node_index):
        subG_index = self.get_subG_index(node_index)
        
        return self.divG[subG_index].get_num_trigger()
    
    
    # -- st_list, ft_list を duration 分用意 --
    def set_time_list_size(self, node_index):
        num_trigger = self.get_num_trigger(node_index)
        
        while(len(self.dag.node[node_index].st_list) < num_trigger):  # duration 分にリストのサイズが足りない場合
            self.dag.node[node_index].st_list.append(-1)  # 初期値は -1
            self.dag.node[node_index].ft_list.append(-1)  # 初期値は -1
    
    
    # -- 全てのノードがコアを占有できる前提の st, ft を計算 --
    def calc_ideal_st_ft(self):
        # timer-driven node
        timer_list = self.dag.get_timer_list()
        
        for timer_index in timer_list:
            self.set_time_list_size(timer_index)
            
            for k in range(self.get_num_trigger(timer_index)):
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
                    
                    for k in range(self.get_num_trigger(event_index)):
                        tmp_st = self.dag.node[trigger_index].ft_list[k] + self.dag.edge[trigger_index][event_index][1]
                        if(tmp_st > self.dag.node[event_index].st_list[k]):
                            self.dag.node[event_index].st_list[k] = tmp_st  # 最大値を使用
                
                # ft_list の計算
                if(self.dag.node[event_index].st_list[-1] != -1):  # st_list を計算できている場合のみ
                    for k in range(self.get_num_trigger(event_index)):
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
        
    
    # -- ni が head node なら True を返す --
    def isHead(self, node_index, subG_index):
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


    # -- subG 内の依存関係を解析 --
    def analyze_in_subG(self):
        for subG_index in range(len(self.divG)):  # subG 毎にループ
            for node_index in self.divG[subG_index].node_list:
                # job_pred
                if(node_index not in self.divG[subG_index].head_list):  # head node でない場合
                    pred_list = self.dag.pred[node_index]
                    for pred_index in pred_list:
                        if(self.isSame(pred_index, node_index) == False): continue
                        for k in range(self.get_num_trigger(node_index)):
                            if(len(self.job_pred[node_index]) <= k):
                                self.job_pred[node_index].append([[int(pred_index), int(k)]])  # [ノード番号, ジョブ番号]
                            else:  # 前任ノードが複数ある場合
                                self.job_pred[node_index][k].append([int(pred_index), int(k)])  # [ノード番号, ジョブ番号]
                
                # job_succ
                if(node_index not in self.divG[subG_index].tail_list):  # tail node でない場合
                    succ_list = self.dag.succ[node_index]
                    for succ_index in succ_list:
                        if(self.isSame(succ_index, node_index) == False): continue
                        for k in range(self.get_num_trigger(node_index)):
                            if(len(self.job_succ[node_index]) <= k):
                                self.job_succ[node_index].append([[int(succ_index), int(k)]])  # [ノード番号, ジョブ番号]
                            else:  # 後続ノードが複数ある場合
                                self.job_succ[node_index][k].append([int(succ_index), int(k)])  # [ノード番号, ジョブ番号]
    
    
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
                        self.divG[pair_join_subG_index].duration += self.divG[pair_join_subG_index].period
                        finish_flag = False  # 延長されなくなったら終了
                        
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
            tail_succ_list = self.dag.succ[tail_index]
            succ_join = list(set(tail_succ_list) & set(join_list))  # 見ている tail node の後続の join node の添え字のリスト. 一旦 1 つと仮定
            
            for k in range(len(self.dag.node[tail_index].ft_list)):
                for s in range(len(self.dag.node[succ_join[0]].st_list)):
                    if((self.dag.node[tail_index].ft_list[k] + self.dag.edge[tail_index][succ_join[0]][1]) <= self.dag.node[succ_join[0]].st_list[s] and (self.dag.node[tail_index].ft_list[k+1] + self.dag.edge[tail_index][succ_join[0]][1]) >= self.dag.node[succ_join[0]].st_list[s]):  # Definition 1
                        self.job_pred[succ_join[0]][s].append([tail_index, k])
                        self.job_succ[tail_index][k].append([succ_join[0], s])