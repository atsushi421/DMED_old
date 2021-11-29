# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity


dag = DAG("AutowareAuto")
divg = divide_subG(dag)

jdl_analyzer = JLDAnalyzer(dag, divg)
laxity = Laxity(dag, jdl_analyzer.job_succ)

print("a")