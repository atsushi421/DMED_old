# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity
from class_ClusteredManyCore import ClusteredManyCoreProcessor
from class_Scheduler import Scheduler


dag = DAG("AutowareAuto")

divg = divide_subG(dag)

jld_analyzer = JLDAnalyzer(dag, divg, 2.0)

laxity = Laxity(jld_analyzer)

target = ClusteredManyCoreProcessor(1, 1, 1)  # コア数以外関係ない

scheduler = Scheduler(dag, target, jld_analyzer, laxity.laxity_table, "P_LLF")



laxity.export_laxity()