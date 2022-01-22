# -*- coding: utf-8 -*-
import copy
import gc
from class_DAG import DAG
from divide_subG import divide_subG
from class_JLDAnalyzer import JLDAnalyzer
from class_Laxity import Laxity
from class_ClusteredManyCore import ClusteredManyCoreProcessor
from class_Scheduler import Scheduler


dag_t = DAG("AutowareAuto")

divg = divide_subG(dag_t)

jld_analyzer = JLDAnalyzer(dag_t, divg, 1.4, "Proposed")

laxity = Laxity(jld_analyzer)

laxity_table = copy.deepcopy(laxity.laxity_table)

# del dag, divg, jld_analyzer.dag, jld_analyzer.divG, jld_analyzer, laxity.jld_analyzer, laxity
# gc.collect()


dag = DAG("AutowareAuto")

jld_analyzer = JLDAnalyzer(dag, divg, 1.5, "Igarashi")

laxity = Laxity(jld_analyzer)

target = ClusteredManyCoreProcessor(1, 2, 1)  # コア数以外関係ない

scheduler = Scheduler(dag, target, jld_analyzer, laxity_table, "LLF", 0.00, laxity.laxity_table)


print(scheduler.calc_cpu_usage())