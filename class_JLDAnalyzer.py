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
        
        
    # <メソッド>
    # -- 全てのノードがコアを占有できる前提の st, ft を計算 --
    def calc_first_st_ft(self):
        # timer-driven node
        timer_list = self.dag.get_timer_list()
        for timer_index in timer_list:
            TsubG = self.dag.node[timer_index].period
            for n in range(0, self.dag.HP+TsubG, TsubG):
                self.dag.node[timer_index].st_list.append(n + self.dag.node[timer_index].offset)
                self.dag.node[timer_index].ft_list.append(self.dag.node[timer_index].st_list[-1] + self.dag.node[timer_index].exec_time)
        
        # event-driven node
        while(True):  # 全てのノードが計算できるまで
            event_list = self.dag.get_event_list()
            for event_index in event_list:
                if(len(self.dag.node[event_index].st_list) != 0): continue  # 計算済みのノードはスキップ
                
                for trigger_index in self.dag.node[event_index].trigger_list:
                    for i in range(len(self.dag.node[trigger_index].ft_list)):  # 前任ノードの発火回数分，後続の event-driven node も発火する
                        tmp_st = self.dag.node[trigger_index].ft_list[i] + self.dag.edge[trigger_index][event_index][1]
                        if(len(self.dag.node[event_index].st_list) <= i):  # trigger edge が 1 つの場合
                            self.dag.node[event_index].st_list.append(tmp_st)
                        else:  # trigger edge が複数ある場合
                            if(tmp_st > self.dag.node[event_index].st_list[i]):
                                self.dag.node[event_index].st_list[i] = tmp_st
                
                # ft_list の計算
                for i in range(len(self.dag.node[event_index].st_list)):        
                    self.dag.node[event_index].ft_list.append(self.dag.node[event_index].st_list[i] + self.dag.node[event_index].exec_time)
            
            # 終了判定
            finish_flag = True
            for event_index in event_list:
                if(len(self.dag.node[event_index].st_list) == 0):  # 計算できていないノードがある
                    finish_flag = False
            
            if(finish_flag == True): break


    # -- ni が tail node なら True を返す --
    def isTail(self, node_index, subG_index):
        succ_list = self.dag.succ[node_index]
        matched = set(succ_list) & set(self.divG[subG_index])
        if(len(matched) == 0):
            return True
        else:
            return False
        
    
    # -- ni が head node なら True を返す --
    def isHead(self, node_index, subG_index):
        pred_list = self.dag.pred[node_index]
        matched = set(pred_list) & set(self.divG[subG_index])
        if(len(matched) == 0):
            return True
        else:
            return False
    
    
    # -- ni が所属する subG の添え字を返す --
    def get_subG_index(self, node_index):
        for subG_index in range(len(self.divG)):
            if(node_index in self.divG[subG_index]):
                return subG_index
    
    
    # -- ni と nj が同じ subG に所属しているなら True を返す --
    def isSame(self, i, j):
        if(self.get_subG_index(i) == self.get_subG_index(j)):
            return True
        else:
            return False


    # -- subG 内の依存関係を succ に格納 --
    def analyze_in_subG(self):
        for subG_index in range(len(self.divG)):  # subG 毎にループ
            for node_index in self.divG[subG_index]:
                # job_pred
                if(self.isHead(node_index, subG_index) == False):
                    pred_list = self.dag.pred[node_index]
                    for pred_index in pred_list:
                        if(self.isSame(pred_index, node_index) == False): continue
                        for i in range(len(self.dag.node[node_index].st_list)):  # i がジョブ番号と一致
                            if(len(self.job_pred[node_index]) <= i):
                                self.job_pred[node_index].append([[int(pred_index), int(i)]])  # [ノード番号, ジョブ番号]
                            else:  # 前任ノードが複数ある場合
                                self.job_pred[node_index][i].append([int(pred_index), int(i)])  # [ノード番号, ジョブ番号]
                
                # job_succ
                if(self.isTail(node_index, subG_index) == False):
                    succ_list = self.dag.succ[node_index]
                    for succ_index in succ_list:
                        if(self.isSame(succ_index, node_index) == False): continue
                        for i in range(len(self.dag.node[node_index].st_list)):  # i がジョブ番号と一致
                            if(len(self.job_succ[node_index]) <= i):
                                self.job_succ[node_index].append([[int(succ_index), int(i)]])  # [ノード番号, ジョブ番号]
                            else:  # 後続ノードが複数ある場合
                                self.job_succ[node_index][i].append([int(succ_index), int(i)])  # [ノード番号, ジョブ番号]