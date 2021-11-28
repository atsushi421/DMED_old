# -*- coding: utf-8 -*-
from class_DAG import DAG
from divide_subG import divide_subG


dag = DAG("AutowareAuto")
g = divide_subG(dag)

print(g)