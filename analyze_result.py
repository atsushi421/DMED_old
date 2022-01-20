# -*- coding: utf-8 -*-

import sys
import pandas as pd
import numpy as np


class AwResultAnalyzer:
    # <コンストラクタ>
    def __init__(self):
        # パラメータ
        self.a_values = ["1.4", "1.5", "1.6", "1.7", "1.8", "1.9", "2.0"]
        self.cpu_usages = ["60", "65", "70", "75", "80", "85", "90", "95"]
        self.alg_names = ["FIFO", "RMS", "EDF", "LLF"]
    
    
    # <メソッド>
    # -- 見たいパラメータから読み込みパスを生成
    def gen_read_path(self, a_value, cpu_usage, alg_name):
        return "./result/Autoware/aw_change_cpuUsage/a_" + str(a_value) + "/" + str(cpu_usage) + "/" + str(alg_name) + ".txt"

    
    # -- 「デッドラインミスした and 早期検知した」率を取得 --
    def get_EDR_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 1 and int(line_list[2]) == 1): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスした and 早期検知してない」率を取得 --
    def get_NEDR_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 0 and int(line_list[2]) == 1): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスしてない and 早期検知してない」率を取得 --
    def get_NENDR_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[0]) == 0 and int(line_list[2]) == 0): num_this_case += 1
        
        read_file.close()
        
        return float(num_this_case / num_case)
    
    
    # -- 「デッドラインミスしてない and 早期検知した」率を取得 --
    def get_ENDR_ratio(self, a_value, cpu_usage, alg_name):
        num_case = 0
        num_this_case = 0
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
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
        
        read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
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
            EDR_list = np.empty(0)
            NEDR_list = np.empty(0)
            NENDR_list = np.empty(0)
            ENDR_list = np.empty(0)
            
            for cpu_usage in self.cpu_usages:
                EDR_list = np.append(EDR_list, self.get_EDR_ratio(2.0, cpu_usage, alg_name))
                NEDR_list = np.append(NEDR_list, self.get_NEDR_ratio(2.0, cpu_usage, alg_name))
                NENDR_list = np.append(NENDR_list, self.get_NENDR_ratio(2.0, cpu_usage, alg_name))
                ENDR_list = np.append(ENDR_list, self.get_ENDR_ratio(2.0, cpu_usage, alg_name))
            
            result_table = np.stack([EDR_list, NEDR_list, NENDR_list, ENDR_list])  # 縦に結合
            
            # 出力
            col = self.cpu_usages
            ind = ["EDR", "NEDR", "NENDR", "ENDR"]
            df = pd.DataFrame(result_table, index=ind, columns=col)
            df.to_csv(alg_name + "_stacked_bar_graph_by_change_cpuUsage.csv")
            
        
    # -- a の値を変化させたときの EDR, NEDR, ENDR, NENDR 率の折れ線グラフデータ作成 --
    def ratio_line_graph_by_change_a(self):
        for alg_name in self.alg_names:
            EDR_list = np.empty(0)
            NEDR_list = np.empty(0)
            NENDR_list = np.empty(0)
            ENDR_list = np.empty(0)
            
            for a_value in self.a_values:
                sum_EDR = 0
                sum_NEDR = 0
                sum_NENDR = 0
                sum_ENDR = 0
                
                for cpu_usage in self.cpu_usages:
                    sum_EDR += self.get_EDR_ratio(a_value, cpu_usage, alg_name)
                    sum_NEDR += self.get_NEDR_ratio(a_value, cpu_usage, alg_name)
                    sum_NENDR += self.get_NENDR_ratio(a_value, cpu_usage, alg_name)
                    sum_ENDR += self.get_ENDR_ratio(a_value, cpu_usage, alg_name)
                
                EDR_list = np.append(EDR_list, sum_EDR / len(self.cpu_usages))
                NEDR_list = np.append(NEDR_list, sum_NEDR / len(self.cpu_usages))
                NENDR_list = np.append(NENDR_list, sum_NENDR / len(self.cpu_usages))
                ENDR_list = np.append(ENDR_list, sum_ENDR / len(self.cpu_usages))
                
            result_table = np.stack([EDR_list, NEDR_list, NENDR_list, ENDR_list])  # 縦に結合
            
            # 出力
            col = self.a_values
            ind = ["EDR", "NEDR", "NENDR", "ENDR"]
            df = pd.DataFrame(result_table, index=ind, columns=col)
            df.to_csv(alg_name + "_ratio_line_graph_by_change_a.csv")
    
    
    #  -- 「デッドラインミスした and 早期検知した」場合の平均削減時間データ作成（横軸はアルゴリズム） --
    def early_time_bar_graph_by_alg(self):
        sum_result = 0  # 計測結果の数の合計
        FIFO_sum_earlier_time = 0
        RMS_sum_earlier_time = 0
        EDF_sum_earlier_time = 0
        LLF_sum_earlier_time = 0
        
        for a_value in self.a_values:
            for cpu_usage in self.cpu_usages:
                for alg_name in self.alg_names:
                    read_file = open(self.gen_read_path(a_value, cpu_usage, alg_name), "r", encoding="utf-8")  # ファイルを開く
                    for line in read_file:  # 1行ずつ読み込む
                        line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
                        if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
                        
                        if(int(line_list[0]) == 1 and int(line_list[2]) == 1):
                            sum_result += 1
                            if(alg_name == "FIFO"): FIFO_sum_earlier_time += (int(line_list[3]) - int(line_list[1]))
                            if(alg_name == "RMS"): RMS_sum_earlier_time += (int(line_list[3]) - int(line_list[1]))
                            if(alg_name == "EDF"): EDF_sum_earlier_time += (int(line_list[3]) - int(line_list[1]))
                            if(alg_name == "LLF"): LLF_sum_earlier_time += (int(line_list[3]) - int(line_list[1]))
                    
                    read_file.close()
        
        # 計算
        sum_result /= 4
        FIFO_ave_earlier_time = FIFO_sum_earlier_time / sum_result
        RMS_ave_earlier_time = RMS_sum_earlier_time / sum_result
        EDF_ave_earlier_time = EDF_sum_earlier_time / sum_result
        LLF_ave_earlier_time = LLF_sum_earlier_time / sum_result
        
        
        # 出力
        result_list = [FIFO_ave_earlier_time, RMS_ave_earlier_time, EDF_ave_earlier_time, LLF_ave_earlier_time]
        df = pd.DataFrame(result_list, index=self.alg_names)
        df.to_csv("early_time_bar_graph_by_alg.csv")




class TgffResultAnalyzer:
    # <コンストラクタ>
    def __init__(self):
        # パラメータ
        self.alg_names = ["FIFO", "RMS", "EDF", "LLF"]
        self.cpuUsages = ["1", "2", "3", "4", "5", "6", "7", "8"]
        self.cpuUsages = ["10", "20", "30", "40", "50", "60", "70", "80", "90", "100"]
        
    
    # <メソッド>
    # -- 見たいパラメータから読み込みパスを生成
    def gen_read_path(self, cpuUsage, alg_name):
        return "./result/TGFF/tgff_change_numCore/cpuUsage_" + str(cpuUsage) + "/" + str(alg_name) + ".txt"
    
    
    # -- デッドラインミス率を取得 --
    def get_deadline_miss_ratio(self, cpuUsage, alg_name):
        num_case = 0
        num_deadline_miss = 0
        
        read_file = open(self.gen_read_path(cpuUsage, alg_name), "r", encoding="utf-8")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ
            
            num_case += 1
            if(int(line_list[2]) == 1): num_deadline_miss += 1
        
        read_file.close()
        
        return float(num_deadline_miss / num_case)
    
    
    # -- CPU 利用率を変化させたときの、デッドラインミス率の折れ線グラフデータ作成 --
    def deadline_miss_ratio_line_graph_by_change_cpuUsage(self):
        ten_list = np.empty(0)
        twelve_list = np.empty(0)
        thirty_list = np.empty(0)
        forty_list = np.empty(0)
        fifty_list = np.empty(0)
        sixty_list = np.empty(0)
        seventy_list = np.empty(0)
        eighty_list = np.empty(0)
        ninety_list = np.empty(0)
        one_hundred_list = np.empty(0)
        
        for cpuUsage in self.cpuUsages:
            for alg_name in self.alg_names:
                if(cpuUsage == "10"): ten_list = np.append(ten_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "20"): twelve_list = np.append(twelve_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "30"): thirty_list = np.append(thirty_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "40"): forty_list = np.append(forty_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "50"): fifty_list = np.append(fifty_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "60"): sixty_list = np.append(sixty_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "70"): seventy_list = np.append(seventy_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "80"): eighty_list = np.append(eighty_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "90"): ninety_list = np.append(ninety_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                if(cpuUsage == "100"): one_hundred_list = np.append(one_hundred_list, self.get_deadline_miss_ratio(cpuUsage, alg_name))
                
        result_table = np.stack([ten_list, twelve_list, thirty_list, forty_list, fifty_list, sixty_list, seventy_list, eighty_list, ninety_list, one_hundred_list])  # 縦に結合
        # 出力
        col = self.alg_names
        ind = self.cpuUsages
        df = pd.DataFrame(result_table, index=ind, columns=col)
        df.to_csv("Deadline_miss_ratio_line_graph_by_change_cpuUsage.csv")
    
    
    # -- ジョブ数を変化させたときの run time の折れ線グラフデータ作成 --
    def run_time_line_graph_by_change_jobNum(self):
        result_table = []
        
        # 結果の取得
        read_file = open("./result/TGFF/tgff_run_time/run_time.txt", "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            if(line_list[0] == "早期検知したか"): continue  # 1行目はスキップ

            float_line_list = [float(s) for s in line_list] # float 型に変換
            result_table.append(float_line_list)
        read_file.close()
        
        sorted_result_table = sorted(result_table, key=lambda x:(x[0])) # 0 列目を基準に昇順にソート
        
        # 結果の書き込み
        col = ["Number of Jobs", "Run Time"]
        df = pd.DataFrame(sorted_result_table, columns=col)
        df.to_csv("run_time_line_graph_by_change_jobNum.csv")
        


if __name__ == "__main__":
    args = sys.argv
    aw = AwResultAnalyzer()
    # aw.early_time_bar_graph_by_alg()
    # aw.ratio_line_graph_by_change_a()
    
    tgff = TgffResultAnalyzer()
    tgff.deadline_miss_ratio_line_graph_by_change_cpuUsage()