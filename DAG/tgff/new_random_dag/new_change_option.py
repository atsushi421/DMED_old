# -*- coding: utf-8 -*-

import random


file = open('./new.tgffopt', 'r')  # ファイルを開く

lines = file.readlines()  # 1行ずつのデータのリスト

seed = random.randint(0, 1000)  # seedを0~1000でランダムで決める
lines[0] = 'seed ' + str(seed) + '\n'

task_cnt = random.randint(10, 70)  # タスク数を 10~70 でランダム
lines[2] = 'task_cnt ' + str(task_cnt) + ' 1\n'

start_node = random.randint(3, 5)  # entry node 数を 3~5 でランダム
lines[3] = 'start_node ' + str(start_node) + ' 1\n'

series_len = random.randint(2, 5)
lines[4] = 'series_len ' + str(series_len) + ' 1\n'

series_wid = random.randint(1, 1)
lines[5] = 'series_wid ' + str(series_wid) + ' 1\n'

file.close()


file = open('./new.tgffopt', 'w')

file.writelines(lines)

file.close()