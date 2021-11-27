# -*- coding: utf-8 -*-
from class_DAG import DAG


dag = DAG("AutowareAuto")
dag.print_all()
print(dag.node[1].isTimer)
print(dag.node[1].isEvent)