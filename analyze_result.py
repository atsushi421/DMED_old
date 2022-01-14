# -*- coding: utf-8 -*-

import sys
import pandas as pd
import numpy as np


class AwResultAnalyzer:
    # <コンストラクタ>
    def __init__(self):
        # パラメータ
        self.a_values = ["1.4", "1.5", "1.6", "1.7", "1.8", "1.9", "2.0"]
        self.cpu_usages = ["60", "70", "80", "90"]
        self.alg_names = ["FIFO", "RMS", "EDF", "LLF"]
        
    
    
    # <メソッド>
    # -- 見たいパラメータから読み込みパスを生成
    def gen_read_path(self, a_value, cpu_usage, alg_name):
        return "./result/Autoware/aw_change_cpuUsage/a_" + str(a_value) + "/" + str(cpu_usage) + "/" + str(alg_name) + ".txt"

    
    # -- デッドラインミス率を取得 --
    def get_deadline_miss_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_deadline_miss = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[2]) == 1): num_deadline_miss += 1
        
        read_file.close()
        
        return float(num_deadline_miss / num_case)
    
    
    # -- 「デッドラインミスした and 早期検知した」率を取得 --
    def get_DYEY_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 1 and int(line_list[2]) == 1): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスした and 早期検知してない」率を取得 --
    def get_DYEN_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 0 and int(line_list[2]) == 1): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスしてない and 早期検知してない」率を取得 --
    def get_DNEN_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 0 and int(line_list[2]) == 0): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスしてない and 早期検知した」率を取得 --
    def get_DNEY_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 1 and int(line_list[2]) == 0): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスした and 早期検知した」場合の平均削減時間を取得 --
    def get_ave_early_time(self, a_value, cpu_usage, alg_name):
        num_case = 0
        sum_early_time = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 1 and int(line_list[2]) == 1):
                deadline_miss_time = int(line_list[3])
                early_detection_time = int(line_list[1])
                sum_early_time += deadline_miss_time - early_detection_time
        
        read_file.close()
        
        return float(sum_early_time / num_case)
    
    
    # -- CPU 利用率を変化させたときの積み上げ棒グラフデータ作成 --
    def stacked_bar_graph_by_change_cpuUsage(self):
        for alg_name in self.alg_names:
            DYEY_list = np.empty(0)
            DYEN_list = np.empty(0)
            DNEN_list = np.empty(0)
            DNEY_list = np.empty(0)
            
            for cpu_usage in self.cpu_usages:
                DYEY_list = np.append(DYEY_list, self.get_DYEY_ratio(1.4, cpu_usage, alg_name))
                DYEN_list = np.append(DYEN_list, self.get_DYEN_ratio(1.4, cpu_usage, alg_name))
                DNEN_list = np.append(DNEN_list, self.get_DNEN_ratio(1.4, cpu_usage, alg_name))
                DNEY_list = np.append(DNEY_list, self.get_DNEY_ratio(1.4, cpu_usage, alg_name))
            
            result_table = np.stack([DYEY_list, DYEN_list, DNEN_list, DNEY_list])  # 縦に結合
            
            # 出力
            col = self.cpu_usages
            ind = ["DYEY", "DYEN", "DNEN", "DNEY"]
            df = pd.DataFrame(result_table, index=ind, columns=col)
            df.to_csv(alg_name + "_stacked_bar_graph_by_change_cpuUsage.csv")
            
        
    # -- a の値を変化させたときの DYEY, DYEN, DNEY 率の折れ線グラフデータ作成 --
    def ratio_line_graph_by_change_a(self):
        print("a")
    
    
    #  -- 「デッドラインミスした and 早期検知した」場合の平均削減時間データ作成（横軸はアルゴリズム） --
    def early_time_bar_graph_by_alg(self):
        print("a")



if __name__ == "__main__":
    args = sys.argv
    aw = AwResultAnalyzer()
    aw.stacked_bar_graph_by_change_cpuUsage()