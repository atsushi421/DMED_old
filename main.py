# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity
from class_ClusteredManyCore import ClusteredManyCoreProcessor
from class_Scheduler import Scheduler


dag = DAG("eg")
divg = divide_subG(dag)
jdl_analyzer = JLDAnalyzer(dag, divg)
laxity = Laxity(jdl_analyzer)
laxity.export_laxity()