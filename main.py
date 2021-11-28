# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer


dag = DAG("AutowareAuto")
divg = divide_subG(dag)

jdl_analyzer = JLDAnalyzer(dag, divg)
jdl_analyzer.calc_first_st_ft()
jdl_analyzer.analyze_in_subG()

print("a")