# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity
from class_ClusteredManyCore import ClusteredManyCoreProcessor
from class_Scheduler import Scheduler


dag = DAG("eg")

divg = divide_subG(dag)

jld_analyzer = JLDAnalyzer(dag, divg, 1.3)

laxity = Laxity(jld_analyzer)

target = ClusteredManyCoreProcessor(1, 2, 1)  # コア数以外関係ない

scheduler = Scheduler(dag, target, jld_analyzer, laxity.laxity_table, "RMS")



laxity.export_laxity()