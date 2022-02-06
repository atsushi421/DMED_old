# -*- coding: utf-8 -*-
import os

read_path = "./result/TGFF/tgff_change_numCore/numCore_16/EDF.txt"
true_index_list = []
count = 0

# -- いらない DAG の削除 --
read_file = open(read_path, "r")  # ファイルを開く
for line in read_file:  # 1行ずつ読み込む
    line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
    
    if(int(line_list[2]) == 1):  # デッドラインミスしている
        delete_path = "./DAG/tgff/new_random_dag/tf/new_random_tf_" + str(count) + ".tgff"
        os.remove(delete_path)
    else:
        true_index_list.append(count)
        
    count += 1

read_file.close()


# -- 残った DAG のリネーム --
true_count = 0

for true_index in true_index_list:
    rename_path = "./DAG/tgff/new_random_dag/tf/new_random_tf_" + str(true_index) + ".tgff"
    dest_path = "./DAG/tgff/new_random_dag/tf/new_random_tf_" + str(true_count) + ".tgff"
    os.rename(rename_path, dest_path)
    true_count += 1