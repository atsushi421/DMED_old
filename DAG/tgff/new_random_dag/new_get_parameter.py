# -*- coding: utf-8 -*-


original_file = open('./new.tgffopt', 'r')  # ファイルを開く

lines = original_file.readlines()  # 1行ずつのデータのリスト

new_file_name = 'new_generate_parameter.txt'


new_file = open('./' + new_file_name, 'a')

new_file.write(str(lines[0]) + str(lines[1]) + str(lines[2]) + str(lines[3]) + str(lines[4]) + str(lines[5]))

new_file.close()
original_file.close()