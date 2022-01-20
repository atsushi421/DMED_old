# -*- coding: utf-8 -*-
import pandas as pd


class Laxity:
    # <コンストラクタ>
    def __init__(self, jld_analyzer):
        '''
        dag : 元の DAG
        jld_analyzer : JLDAnalyzer
        job_succ : duration 内の各ジョブの後続ジョブのリスト
        laxity_table : 行がノード番号, 列がジョブ番号
        rank_table : 行がノード番号, 列がジョブ番号
        '''
        self.dag = jld_analyzer.dag
        self.jld_analyzer = jld_analyzer
        self.job_succ = jld_analyzer.job_succ
        self.laxity_table = self.init_set_table_size()
        self.rank_table = self.init_set_table_size()
        
        # laxity の計算
        entry_list = self.dag.get_entry_list()
        for entry_index in entry_list:
            for job_index in range(self.jld_analyzer.get_num_trigger_hp(entry_index)):
                self.calc_laxity(entry_index, job_index)
        
        timer_list = self.dag.get_timer_list()
        for timer_index in timer_list:
            for job_index in range(self.jld_analyzer.get_num_trigger_hp(timer_index)):
                self.calc_laxity(timer_index, job_index)
    
    
    # <メソッド>
    # -- laxity_table の size 初期設定 --
    def init_set_table_size(self):
        max_num_trigger = 0
        
        for node_index in range(len(self.dag.node)):
            if(self.jld_analyzer.get_num_trigger_hp(node_index) > max_num_trigger):
                max_num_trigger = len(self.dag.node[node_index].st_list)
        
        table = [[-1 for i in range(max_num_trigger)] for j in range(len(self.dag.node))]  # デフォルト値は -1
        return table
    
    
    def calc_laxity(self, node_index, job_index):
        if(self.dag.exit[node_index] == 1):
            deadline_list = self.jld_analyzer.get_deadline_list(node_index)
            laxity = deadline_list[job_index] - self.dag.node[node_index].exec_time
            
            if(job_index < self.jld_analyzer.get_num_trigger_hp(node_index)):  # table に書き込むのは HP 内のジョブのみ
                self.laxity_table[node_index][job_index] = laxity
                
            return laxity
        
        else:
            min_value = 99999999999999999
            succ_job_list = self.job_succ[node_index][job_index]
            
            for succ_job in succ_job_list:
                tmp_node_index = succ_job[0]
                tmp_job_index = succ_job[1]
                tmp_value = self.calc_laxity(tmp_node_index, tmp_job_index) - self.dag.edge[node_index][tmp_node_index][1]
                
                if(tmp_value < min_value): min_value = tmp_value
            
            laxity = min_value - self.dag.node[node_index].exec_time
            
            if(job_index < self.jld_analyzer.get_num_trigger_hp(node_index)):  # table に書き込むのは HP 内のジョブのみ
                self.laxity_table[node_index][job_index] = laxity
                
            return laxity
    
    
    # -- laxity_table を csv 形式で出力 --
    def export_laxity(self):
        # laxity が計算されていないジョブの laxity を -1 にする
        for node_index in range(len(self.laxity_table)):
            for job_index in range(len(self.laxity_table[node_index])):
                if(self.laxity_table[node_index][job_index] > 10000000000000000):  # laxity が計算されていない（不完全）
                    self.laxity_table[node_index][job_index] = -1
        
        col = []
        for k in range(len(self.laxity_table[0])):
            col.append("job" + str(k+1))
        
        ind = []
        for i in range(len(self.dag.node)):
            ind.append("node" + str(i+1))
        
        df = pd.DataFrame(self.laxity_table, index=ind, columns=col)
        df.to_csv(self.dag.dag_file + ".csv")
        
        
    
    # -- laxity の昇順でスケジューリングリストを作成 --
    def make_scheduling_list(self):
        scheduling_list = []
        
        while(True):
            # ノードのリストの先頭を全て見て，laxity の最小値からスケジューリングリストに格納していく
            min_value = 99999999999999999
            min_node_index = -1
            min_job_index = -1
                
            for node_index in range(len(self.dag.node)):
                # -1 以外を探索
                head_index = -1  # そのノードのリストにおいて，先頭から探索していき，値が入っている添え字
                for job_index in range(len(self.laxity_table[node_index])):
                    if(self.laxity_table[node_index][job_index] != -1):
                        head_index = job_index
                        break
                
                if(head_index == -1): continue  # その node のリストには値が入っていない
                
                if(self.laxity_table[node_index][head_index] < min_value):
                    min_value = self.laxity_table[node_index][head_index]
                    min_node_index = node_index
                    min_job_index = head_index
                elif(self.laxity_table[node_index][head_index] == min_value):  # laxity が同じ場合
                    if(head_index < min_job_index):  # job_index が小さい方を優先
                        min_value = self.laxity_table[node_index][head_index]
                        min_node_index = node_index
                        min_job_index = head_index
            
            # 終了判定
            if(min_value == 99999999999999999):  # 値が更新されていない = laxity_table に値が存在しない
                break
                    
            scheduling_list.append([min_node_index, min_job_index])
            self.laxity_table[min_node_index][min_job_index] = -1  # pop と同義．-1 : 値が入っていない
        
        return scheduling_list