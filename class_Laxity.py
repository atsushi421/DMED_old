# -*- coding: utf-8 -*-


class Laxity:
    # <コンストラクタ>
    def __init__(self, dag, job_succ):
        '''
        dag : 元の DAG
        job_succ : duration 内の各ジョブの後続ジョブのリスト
        laxity_table : 行がノード番号, 列がジョブ番号
        '''
        self.dag = dag
        self.job_succ = job_succ
        self.laxity_table = self.init_set_table_size()
        print(self.laxity_table)
    
    
    # <メソッド>
    def init_set_table_size(self):
        max_num_trigger = 0
        
        for node_index in range(len(self.dag.node)):
            if(len(self.dag.node[node_index].st_list) > max_num_trigger):
                max_num_trigger = len(self.dag.node[node_index].st_list)
        
        table = [[0 for i in range(max_num_trigger)] for j in range(len(self.dag.node))]
        return table
    
    
    def calc_laxity(self, node_index, job_index):
        if(self.dag.exit[node_index] == 1):
            laxity_list = 0