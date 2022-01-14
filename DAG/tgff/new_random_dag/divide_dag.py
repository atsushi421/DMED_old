# -*- coding: utf-8 -*-

import os
import sys


args = sys.argv
num_of_dag = int(args[1])  # DAGの数を受け取る

# それぞれの数を保持
num_small = 0
num_ten = 0
num_twenty = 0
num_thirty = 0
num_forty = 0
num_fifty = 0
num_sixty = 0
num_seventy = 0
num_large = 0

for i in range(num_of_dag):
    # read
	dag_path = './new_random_' + str(i) + '.tgff'
	eps_path = './new_random_' + str(i) + '.eps'
	txt_path = './new_random_' + str(i) + '.txt'

	tgff_file = open(dag_path, "r")  # dag ファイルを開く

	num_node_of_dag = 0

	for line in tgff_file:  # 1行ずつ読み込む
		# 空行はスキップ
		if(line == '\n'):
			continue
		
		line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得

		# TASKの情報の取得
		if(line_list[0] == 'TASK'):
			num_node_of_dag += 1

	tgff_file.close()  # ファイルを閉じる
 

	# -- divide --
	if(num_node_of_dag < 10):
		dag_rename_path = './small/new_small_' + str(num_small) + '.tgff'
		eps_rename_path = './small/new_small_' + str(num_small) + '.eps'
		txt_rename_path = './small/new_small_' + str(num_small) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_small += 1
		continue

	if(num_node_of_dag < 20):
		dag_rename_path = './10/new_10_' + str(num_ten) + '.tgff'
		eps_rename_path = './10/new_10_' + str(num_ten) + '.eps'
		txt_rename_path = './10/new_10_' + str(num_ten) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_ten += 1
		continue

	if(num_node_of_dag < 30):
		dag_rename_path = './20/new_20_' + str(num_twenty) + '.tgff'
		eps_rename_path = './20/new_20_' + str(num_twenty) + '.eps'
		txt_rename_path = './20/new_20_' + str(num_twenty) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_twenty += 1
		continue

	if(num_node_of_dag < 40):
		dag_rename_path = './30/new_30_' + str(num_thirty) + '.tgff'
		eps_rename_path = './30/new_30_' + str(num_thirty) + '.eps'
		txt_rename_path = './30/new_30_' + str(num_thirty) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_thirty += 1
		continue

	if(num_node_of_dag < 50):
		dag_rename_path = './40/new_40_' + str(num_forty) + '.tgff'
		eps_rename_path = './40/new_40_' + str(num_forty) + '.eps'
		txt_rename_path = './40/new_40_' + str(num_forty) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_forty += 1
		continue

	if(num_node_of_dag < 60):
		dag_rename_path = './50/new_50_' + str(num_fifty) + '.tgff'
		eps_rename_path = './50/new_50_' + str(num_fifty) + '.eps'
		txt_rename_path = './50/new_50_' + str(num_fifty) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_fifty += 1
		continue

	if(num_node_of_dag < 70):
		dag_rename_path = './60/new_60_' + str(num_sixty) + '.tgff'
		eps_rename_path = './60/new_60_' + str(num_sixty) + '.eps'
		txt_rename_path = './60/new_60_' + str(num_sixty) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_sixty += 1
		continue

	if(num_node_of_dag < 80):
		dag_rename_path = './70/new_70_' + str(num_seventy) + '.tgff'
		eps_rename_path = './70/new_70_' + str(num_seventy) + '.eps'
		txt_rename_path = './70/new_70_' + str(num_seventy) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_seventy += 1
		continue

	else:
		dag_rename_path = './large/new_large_' + str(num_large) + '.tgff'
		eps_rename_path = './large/new_large_' + str(num_large) + '.eps'
		txt_rename_path = './large/new_large_' + str(num_large) + '.txt'
		os.rename(dag_path, dag_rename_path)
		os.rename(eps_path, eps_rename_path)
		os.rename(txt_path, txt_rename_path)

		num_large += 1