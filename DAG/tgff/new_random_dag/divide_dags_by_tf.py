# -*- coding: utf-8 -*-

import os
import sys


args = sys.argv
num_of_dag = int(args[1])  # DAGの数を受け取る


for i in range(num_of_dag):
    # read
	tf_dag_path = './new_random_tf_' + str(i) + '.tgff'
	dag_path = './new_random_' + str(i) + '.tgff'
	eps_path = './new_random_' + str(i) + '.eps'
	txt_path = './new_random_' + str(i) + '.txt'

	# write
	tf_dag_rename_path = './tf/new_random_tf_' + str(i) + '.tgff'
	dag_rename_path = './raw/new_random_' + str(i) + '.tgff'
	eps_rename_path = './raw/new_random_' + str(i) + '.eps'
	txt_rename_path = './raw/new_random_' + str(i) + '.txt'

	os.rename(tf_dag_path, tf_dag_rename_path)
	os.rename(dag_path, dag_rename_path)
	os.rename(eps_path, eps_rename_path)
	os.rename(txt_path, txt_rename_path)