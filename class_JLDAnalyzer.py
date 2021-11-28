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
        event_list = self.dag.get_event_list()
        for event_index in event_list:
            pred_list = self.dag.pred[event_index]
            
