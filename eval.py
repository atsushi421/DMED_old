# -*- coding: utf-8 -*-

import sys
import time
import copy
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
        GEN_RATIO : stress job の生成確率
        
        RESULT_PATH : 結果を書き込むファイルへのパス
        '''
        self.EVA_NAME = args[1]
        self.DAG_NAME = args[2]
        self.TARGET = ClusteredManyCoreProcessor(int(args[3]), int(args[4]), float(args[5]))
        self.ALG_NAME = args[6]
        self.METHOD_NAME = args[7]
        self.VALUE_OF_A = float(args[8])
        self.GEN_RATIO = float(args[9])
        
        self.RESULT_PATH = self.set_result_path()
        self.evaluate()
    
    
    # <メソッド>
    # -- 評価を行う --
    def evaluate(self):
        if(self.EVA_NAME == "aw_find_min_a"): self.aw_find_min_a()
        if(self.EVA_NAME == "aw_change_coreNum"): self.aw_change_coreNum()
        if(self.EVA_NAME == "aw_change_a"): self.aw_change_a()
        if(self.EVA_NAME == "aw_change_cpuUsage"): self.aw_change_cpuUsage()
        if(self.EVA_NAME == "tgff_run_time"): self.tgff_run_time()
        if(self.EVA_NAME == "tgff_change_numCore"): self.tgff_change_numCore()
        if(self.EVA_NAME == "tgff_change_a"): self.tgff_change_a()
    
    
    # -- 評価名に基づいて, result_path を決める --
    def set_result_path(self):
        if(self.EVA_NAME == "aw_find_min_a"):
            return "./result/Autoware/aw_find_min_a/" + str(self.ALG_NAME) + ".txt"
        
        if(self.EVA_NAME == "aw_change_coreNum"):
            return "./result/Autoware/aw_change_coreNum/a_" + str(self.VALUE_OF_A) + "/" + str(self.ALG_NAME) + ".txt"

        if(self.EVA_NAME == "aw_change_a"):
            return "./result/Autoware/aw_change_a/coreNum_" + str(self.TARGET.num_of_core) + "/" + str(self.ALG_NAME) + ".txt"

        if(self.EVA_NAME == "aw_change_cpuUsage"):
            if(self.METHOD_NAME != "None"):
                return "./result/Autoware/aw_change_cpuUsage/a_" + str(self.VALUE_OF_A) + "/" + str(self.METHOD_NAME) + "_" + str(self.ALG_NAME) + ".txt"
            else:  # 依存関係が関係ないアルゴリズムの場合
                return "./result/Autoware/aw_change_cpuUsage/a_" + str(self.VALUE_OF_A) + "/" + str(self.ALG_NAME) + ".txt"
        
        if(self.EVA_NAME == "tgff_change_numCore"):
            if(self.METHOD_NAME != "None"):
                return "./result/TGFF/tgff_change_numCore/numCore_" + str(self.TARGET.num_of_core) + "/" + str(self.METHOD_NAME) + "_" + str(self.ALG_NAME) + ".txt"
            else:
                return "./result/TGFF/tgff_change_numCore/numCore_" + str(self.TARGET.num_of_core) + "/" + str(self.ALG_NAME) + ".txt"
            
        if(self.EVA_NAME == "tgff_change_a"):
            if(self.METHOD_NAME != "None"):
                return "./result/TGFF/tgff_change_a/a_" + str(self.VALUE_OF_A) + "/" + str(self.METHOD_NAME) + "_" + str(self.ALG_NAME) + ".txt"
            else:
                return "./result/TGFF/tgff_change_a/a_" + str(self.VALUE_OF_A) + "/" + str(self.ALG_NAME) + ".txt"
        
        if(self.EVA_NAME == "tgff_run_time"):
            return "./result/TGFF/tgff_run_time/run_time.txt"
    
    
    # -- aw_change_cpuUsage --
    def aw_change_cpuUsage(self):
        # 提案手法による laxity を計算
        dag_t = DAG(self.DAG_NAME)
        divg = divide_subG(dag_t)
        jld_analyzer_t = JLDAnalyzer(dag_t, divg, self.VALUE_OF_A, "Proposed")
        laxity_t = Laxity(jld_analyzer_t)
        laxity_table = copy.deepcopy(laxity_t.laxity_table)
        
        if(self.METHOD_NAME != "None"):
            dag = DAG(self.DAG_NAME)
            jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A, self.METHOD_NAME)
            laxity = Laxity(jld_analyzer)
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag, target, jld_analyzer, laxity_table, self.ALG_NAME, self.GEN_RATIO, laxity.laxity_table)
        else:
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag_t, target, jld_analyzer_t, laxity_table, self.ALG_NAME, self.GEN_RATIO)
        
        # 結果を記入
        # "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率"
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\t" + str(scheduler.calc_cpu_usage()) + "\n")
        f.close()
    
    
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
    
    
    # -- tgff_run_time --
    def tgff_run_time(self):
        dag = DAG("tgff/new_random_dag/tf/" + self.DAG_NAME)
        
        run_start_time = time.time()  # 計測開始
        divg = divide_subG(dag)
        jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A, "Proposed")
        laxity = Laxity(jld_analyzer)
        run_finish_time = time.time()  # 計測終了
        elapsed_time = run_finish_time - run_start_time  # DAG の入力から laxity_table の出力までにかかった時間
        
        # HP 内のジョブ数を取得
        sum_num_jobs = 0
        for node_index in range(len(dag.node)):
            sum_num_jobs += jld_analyzer.get_num_trigger_hp(node_index)
        
        # 結果を記入
        # "ジョブ数" + "\t" + "かかった時間"
        f = open(self.RESULT_PATH, "a")
        f.write(str(sum_num_jobs) + "\t" + str(elapsed_time) + "\n")
        f.close()
    
    
    # -- tgff_change_numCore --
    def tgff_change_numCore(self):
        # 提案手法における laxity の値を計算
        dag_t = DAG("tgff/new_random_dag/tf/" + self.DAG_NAME)
        divg = divide_subG(dag_t)
        jld_analyzer_t = JLDAnalyzer(dag_t, divg, self.VALUE_OF_A, "Proposed")
        laxity = Laxity(jld_analyzer_t)
        laxity_table = copy.deepcopy(laxity.laxity_table)
        
        if(self.METHOD_NAME != "None"):
            dag = DAG("tgff/new_random_dag/tf/" + self.DAG_NAME)
            jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A, self.METHOD_NAME)
            laxity = Laxity(jld_analyzer)
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag, target, jld_analyzer, laxity_table, self.ALG_NAME, self.GEN_RATIO, laxity.laxity_table)
        else:
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag_t, target, jld_analyzer_t, laxity_table, self.ALG_NAME, self.GEN_RATIO)
        
        # 結果を記入
        # "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率"
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\t" + str(scheduler.calc_cpu_usage()) + "\n")
        f.close()
        
        
    # -- tgff_change_a --
    def tgff_change_a(self):
        # 提案手法における laxity の値を計算
        dag_t = DAG("tgff/new_random_dag/tf/" + self.DAG_NAME)
        divg = divide_subG(dag_t)
        jld_analyzer_t = JLDAnalyzer(dag_t, divg, self.VALUE_OF_A, "Proposed")
        laxity = Laxity(jld_analyzer_t)
        laxity_table = copy.deepcopy(laxity.laxity_table)
        
        if(self.METHOD_NAME != "None"):
            dag = DAG("tgff/new_random_dag/tf/" + self.DAG_NAME)
            jld_analyzer = JLDAnalyzer(dag, divg, self.VALUE_OF_A, self.METHOD_NAME)
            laxity = Laxity(jld_analyzer)
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag, target, jld_analyzer, laxity_table, self.ALG_NAME, self.GEN_RATIO, laxity.laxity_table)
        else:
            target = ClusteredManyCoreProcessor(1, self.TARGET.num_of_core, 1)  # コア数以外は関係ない
            scheduler = Scheduler(dag_t, target, jld_analyzer_t, laxity_table, self.ALG_NAME, self.GEN_RATIO)
        
        # 結果を記入
        # "早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率"
        
        f = open(self.RESULT_PATH, "a")
        f.write(str(scheduler.early_detection_flag) + "\t" + str(scheduler.early_detection_time) + "\t" + str(scheduler.deadline_miss_flag) + "\t" + str(scheduler.deadline_miss_time) + "\t" + str(scheduler.calc_cpu_usage()) + "\n")
        f.close()



if __name__ == "__main__":
    args = sys.argv
    Evaluater(args)