# -*- coding: utf-8 -*-


from math import e


class JLDAnalyzer:
    # <コンストラクタ>
    def __init__(self, dag, divG):
        '''
        dag : 解析対象の DAG
        divG : subG の集合に切り分けられた DAG
        '''
        self.dag = dag
        self.divG = divG
        
        
    # <メソッド>
    # -- ni が所属する subG の周期を返す -- 不要かも
    def get_subG_period(self, index):
        subG_index = -1  # ni が所属する subG の添え字
        for i in range(len(self.divG)):
            if(index in self.divG[i]):
                subG_index = i
                break
        
        timer_list = self.dag.get_timer_list()
        for timer_index in timer_list:
            if(timer_index in self.divG[subG_index]):
                return self.dag.node[timer_index].period
    
    
    # -- 全てのノードがコアを占有できる前提の st, ft を計算
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
