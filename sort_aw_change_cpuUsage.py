# -*- coding: utf-8 -*-

# パラメータ
# a_values = ["1.4", "1.5", "1.6", "1.7", "1.8", "1.9", "2.0", "2.1", "2.2", "2.3", "2.4", "2.5"]
a_values = ["2.0", "2.1", "2.2", "2.3", "2.4", "2.5"]
alg_names = ["EDF", "Proposed_LLF", "Igarashi_LLF", "Salah_LLF"]


for a_value in a_values:
    for alg_name in alg_names:
        read_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/" + alg_name + ".txt"
        first_60_flag = 0
        first_65_flag = 0
        first_70_flag = 0
        first_75_flag = 0
        first_80_flag = 0
        first_85_flag = 0
        first_90_flag = 0
        first_95_flag = 0

        
        read_file = open(read_path, "r", encoding="utf-8")  # ファイルを開く
        for line in read_file:  # 1行ずつ読み込む
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            cpu_usage = float(line_list[4])
            
            if(cpu_usage >= 60 and cpu_usage < 65):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/60/" + alg_name + ".txt"
                if(first_60_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_60_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 65 and cpu_usage < 70):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/65/" + alg_name + ".txt"
                if(first_65_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_65_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage > 70 and cpu_usage <= 75):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/70/" + alg_name + ".txt"
                if(first_70_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_70_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 75 and cpu_usage < 80):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/75/" + alg_name + ".txt"
                if(first_75_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_75_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage > 80 and cpu_usage <= 85):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/80/" + alg_name + ".txt"
                if(first_80_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_80_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 85 and cpu_usage < 90):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/85/" + alg_name + ".txt"
                if(first_85_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_85_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 90 and cpu_usage < 95):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/90/" + alg_name + ".txt"
                if(first_90_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_90_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
            elif(cpu_usage >= 95 and cpu_usage < 100):
                write_path = "./result/Autoware/aw_change_cpuUsage/a_" + a_value + "/95/" + alg_name + ".txt"
                if(first_95_flag == 0):  # 初回の書き込みであれば
                    # 列名も書き込む
                    f = open(write_path, "w", encoding="utf-8")
                    f.write("早期検知したか" + "\t" + "早期検知時刻" + "\t" + "デッドラインミスが発生したか" + "\t" + "デッドラインミス時刻" + "\t" + "平均CPU利用率" + "\n")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
                    
                    first_95_flag = 1
                    
                else:
                    f = open(write_path, "a")
                    f.write(line_list[0] + "\t" + line_list[1] + "\t" + line_list[2] + "\t" + line_list[3] + "\t" + line_list[4] + "\n")
                    f.close()
            
        
        read_file.close()