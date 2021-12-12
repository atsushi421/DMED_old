# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity


dag = DAG("test2")
divg = divide_subG(dag)

jdl_analyzer = JLDAnalyzer(dag, divg)
laxity = Laxity(jdl_analyzer)
scheduling_list = laxity.make_scheduling_list()
print("a")
laxity.export_laxity()