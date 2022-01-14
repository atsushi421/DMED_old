# -*- coding: utf-8 -*-

import sys
from class_DAG import DAG
from divide_subG import divide_subG
from class_ClusteredManyCore import ClusteredManyCoreProcessor
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity
from class_Scheduler import Scheduler


class Evaluater:
    # <コンストラクタ>
    def __init__(self, args):
        '''
        EVA_NAME : 評価名
        DAG_NAME : 対象のDAG
        TARGET : 対象のプロセッサ
        ALG_NAME : 使用するアルゴリズム
        VALUE_OF_A : a in Eq. (1) の値
        
        RESULT_PATH : 結果を書き込むファイルへのパス
        '''
        self.EVA_NAME = args[1]
        self.DAG_NAME = args[2]
        self.TARGET = ClusteredManyCoreProcessor(int(args[3]), int(args[4]), float(args[5]))
        self.ALG_NAME = args[6]
        self.VALUE_OF_A = float(args[7])
        
        self.RESULT_PATH = self.set_result_path()
        self.evaluate()
    
    
    # <メソッド>
    # -- 評価を行う --
    def evaluate(self):
        if(self.EVA_NAME == "aw_find_min_a"): self.aw_find_min_a()
        if(self.EVA_NAME == "aw_change_coreNum"): self.aw_change_coreNum()
        if(self.EVA_NAME == "aw_change_a"): self.aw_change_a()
    
    
    # -- 評価名に基づいて, result_path を決める --
    def set_result_path(self):
        if(self.EVA_NAME == "aw_find_min_a"):
            return "./result/Autoware/aw_find_min_a/" + str(self.ALG_NAME) + ".txt"
        
        if(self.EVA_NAME == "aw_change_coreNum"):
            return "./result/Autoware/aw_change_coreNum/a_" + str(self.VALUE_OF_A) + "/" + str(self.ALG_NAME) + ".txt"

        if(self.EVA_NAME == "aw_change_a"):
            return "./result/Autoware/aw_change_a/coreNum_" + str(self.TARGET.num_of_core) + "/" + str(self.ALG_NAME) + ".txt"
    
    
    # -- aw_change_a --
    def aw_change_a(self):
        dag = DAG(self.DAG_NAME)
        divg = divide_subG(dag)
        jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A)
        laxity = Laxity(jld_analyzer)
        target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
        scheduler = Scheduler(dag, target, jld_analyzer, laxity.laxity_table, self.ALG_NAME)
        
        # 結果を記入
        if(self.TARGET.num_of_core == 1.4):  # 最初
            # 列名の書き込み
            f = open(self.RESULT_PATH, "w")
            f.write("コア数" + "\t" + "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
            f.close()
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(self.TARGET.num_of_core) + "\t" + str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\t" + str(scheduler.calc_cpu_usage()) + "\n")
        f.close()
    
    
    # -- aw_change_coreNum --
    def aw_change_coreNum(self):
        dag = DAG(self.DAG_NAME)
        divg = divide_subG(dag)
        jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A)
        laxity = Laxity(jld_analyzer)
        target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
        scheduler = Scheduler(dag, target, jld_analyzer, laxity.laxity_table, self.ALG_NAME)
        
        # 結果を記入
        if(self.TARGET.num_of_core == 16):  # 最初
            # 列名の書き込み
            f = open(self.RESULT_PATH, "w")
            f.write("コア数" + "\t" + "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
            f.close()
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(self.TARGET.num_of_core) + "\t" + str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\t" + str(scheduler.calc_cpu_usage()) + "\n")
        f.close()
    
    
    # -- aw_find_min_a --
    def aw_find_min_a(self):
        dag = DAG(self.DAG_NAME)
        divg = divide_subG(dag)
        jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A)
        laxity = Laxity(jld_analyzer)
        target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
        scheduler = Scheduler(dag, target, jld_analyzer, laxity.laxity_table, self.ALG_NAME)
        
        # 結果を記入
        if(self.VALUE_OF_A == 0.1):  # 最初
            # 列名の書き込み
            f = open(self.RESULT_PATH, "w")
            f.write("a の値" + "\t" + "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\n")
            f.close()
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(self.VALUE_OF_A) + "\t" + str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\n")
        f.close()



if __name__ == "__main__":
    args = sys.argv
    Evaluater(args)