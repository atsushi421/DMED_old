# -*- coding: utf-8 -*-

# パラメータ
numCores = ["1", "5", "6", "7", "8"]
alg_names = ["FIFO", "RMS", "EDF", "LLF"]


for numCore in numCores:
    for alg_name in alg_names:
        read_path = "./result/TGFF/tgff_change_numCore/numCore_" + numCore + "/" + alg_name + ".txt"
        first_10_flag = 0
        first_20_flag = 0
        first_30_flag = 0
        first_40_flag = 0
        first_50_flag = 0
        first_60_flag = 0
        first_70_flag = 0
        first_80_flag = 0
        first_90_flag = 0
        first_100_flag = 0

        
        read_file = open(read_path, "r")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            cpu_usage = float(line_list[4])
            
            if(cpu_usage >= 10 and cpu_usage < 20):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_10/" + alg_name + ".txt"
                if(first_10_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_10_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 20 and cpu_usage < 30):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_20/" + alg_name + ".txt"
                if(first_20_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_20_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 30 and cpu_usage < 40):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_30/" + alg_name + ".txt"
                if(first_30_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_30_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 40 and cpu_usage < 50):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_40/" + alg_name + ".txt"
                if(first_40_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_40_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 50 and cpu_usage < 60):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_50/" + alg_name + ".txt"
                if(first_50_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_50_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 60 and cpu_usage < 70):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_60/" + alg_name + ".txt"
                if(first_60_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_60_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 70 and cpu_usage < 80):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_70/" + alg_name + ".txt"
                if(first_70_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_70_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 80 and cpu_usage < 90):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_80/" + alg_name + ".txt"
                if(first_80_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_80_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 90 and cpu_usage < 100):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_90/" + alg_name + ".txt"
                if(first_90_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_90_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage == 100):
                write_path = "./result/TGFF/tgff_change_numCore/cpuUsage_100/" + alg_name + ".txt"
                if(first_100_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_100_flag = 1
                    
                else:
                    f = open(write_path, "a", encoding="utf-8")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
        
        read_file.close()