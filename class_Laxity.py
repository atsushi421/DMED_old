# -*- coding: utf-8 -*-


class Laxity:
    # <コンストラクタ>
    def __init__(self, dag, jld_analyzer):
        '''
        dag : 元の DAG
        jld_analyzer : JLDAnalyzer
        job_succ : duration 内の各ジョブの後続ジョブのリスト
        laxity_table : 行がノード番号, 列がジョブ番号
        '''
        self.dag = dag
        self.jld_analyzer = jld_analyzer
        self.job_succ = jld_analyzer.job_succ
        self.laxity_table = self.init_set_table_size()
        
        # laxity の計算
        entry_list = self.dag.get_entry_list()
        for entry_index in entry_list:
            for job_index in range(self.jld_analyzer.get_num_trigger(entry_index)):
                self.calc_laxity(entry_index, job_index)
        
        print("a")
    
    
    # <メソッド>
    # -- laxity_table の size 初期設定 --
    def init_set_table_size(self):
        max_num_trigger = 0
        
        for node_index in range(len(self.dag.node)):
            if(len(self.dag.node[node_index].st_list) > max_num_trigger):
                max_num_trigger = len(self.dag.node[node_index].st_list)
        
        table = [[0 for i in range(max_num_trigger)] for j in range(len(self.dag.node))]
        return table
    
    
    def calc_laxity(self, node_index, job_index):
        if(self.dag.exit[node_index] == 1):
            deadline_list = self.jld_analyzer.get_deadline_list(node_index)
            self.laxity_table[node_index][job_index] = deadline_list[job_index] - self.dag.node[node_index].exec_time
            return self.laxity_table[node_index][job_index]
        
        else:
            min_value = 99999999999999999
            min_value_node_index = -1
            min_value_job_index = -1
            succ_job_list = self.job_succ[node_index][job_index]
            
            for succ_job in succ_job_list:
                tmp_node_index = succ_job[0]
                tmp_job_index = succ_job[1]
                tmp_value = self.calc_laxity(tmp_node_index, tmp_job_index) - self.dag.edge[node_index][tmp_node_index][1]
                
                if(tmp_value < min_value):
                    min_value = tmp_value
                    min_value_node_index = tmp_node_index
                    min_value_job_index = tmp_job_index
            
            self.laxity_table[node_index][job_index] = min_value - self.dag.node[node_index].exec_time
            return self.laxity_table[node_index][job_index]