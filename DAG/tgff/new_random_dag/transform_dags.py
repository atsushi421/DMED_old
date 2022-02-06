# -*- coding: utf-8 -*-

import os
import sys
import random


class Node:
    # <コンストラクタ>
    def __init__(self, isJoin, isEvent, isTimer, isStress, period, offset, exec_time):
        '''
        isJoin : Join node なら True
        isEvent : event-driven node なら True
        isTimer : timer-driven node なら True
        period : timer-driven node の場合の周期
        offset : timer-driven node の場合のオフセット
        exec_time : 実行時間
        '''
        self.isJoin = isJoin
        self.isEvent = isEvent
        self.isTimer = isTimer
        self.period = period
        self.offset = offset
        self.exec_time = exec_time
        


class DAG:
    # <コンストラクタ>
    def __init__(self, dag_file):
        '''
        dag_file : .dag ファイルの名前
        node[] : DAG 内のノード
        edge[i][j] : ni~nj 間の通信時間
        pred[i] : ni の前任ノードのリスト
        succ[i] : ni の後続ノードのリスト
        entry[i]=1 : niはentryノード. entry[i]=0 : niはentryノードではない
        exit[i]=1 : niはexitノード. exit[i]=0 : niはexitノードではない
        '''
        self.dag_file = dag_file
        self.node = []
        self.edge, self.pred, self.succ, self.entry, self.exit = self.read_dag_file(self.dag_file)



    # <メソッド>
    # -- .tgffファイルの読み込み --
    def read_dag_file(self, dag_path):
        dag_file = open(dag_path, "r")
        
        type_cost = []  # TYPE と処理時間の対応関係の配列
        read_flag = 0  # PE 0 の情報だけを読み込むためのフラグ
        info_flag = 0   #余計な部分を読み込まないためのフラグ
        
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            # 読み込む範囲を限定
            if(len(line_list) >= 2):
                if(line_list[0] == '@PE' and line_list[1] == '5'):
                    read_flag = 1
                if(line_list[1] == 'type' and line_list[2] == 'exec_time'):
                    info_flag = 1
                    continue
                
                # TYPE の情報取得
                if(read_flag == 1 and info_flag == 1):
                    type_cost.append(int(float(line_list[1]) / 20))  # TYPE に対応する処理時間を int 型で格納（大きいので20で割る）
                    
            elif(line_list[0] == '}'):
                read_flag = 0
                info_flag = 0
        
        dag_file.close()
        
        
        # TASK の情報の取得
        dag_file = open(dag_path, "r")
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            if(line_list[0] == 'TASK'):
                isJoin = isEvent = isTimer = False
                period = 0
                exec_time = type_cost[int(line_list[3])]
                
                # 追加パラメータの初期値
                isJoin = False
                isEvent = True  # 全部イベントにしとく
                isTimer = False
                period = 0
                offset = 0  # offset は 0 とする
                
                self.node.append(Node(isJoin, isEvent, isTimer, False, period, offset, exec_time))
        dag_file.close()

        
        # ARC 情報の取得
        edge = [[["None", 0] for j in range(len(self.node))] for i in range(len(self.node))]
        dag_file = open(dag_path, "r")
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            if(line_list[0] == 'ARC'):                
                # 各パラメータの判定・格納
                from_n = int(line_list[3][3:])  # エッジを出力するノードの添え字
                to_n = int(line_list[5][3:])  # エッジが入力されるノードの添え字
                comm_time = int(type_cost[int(line_list[7])])  # TYPE に書かれている時間を通信時間とする
                
                edge[from_n][to_n][0] = "Trigger"  # 全部トリガーにしとく
                edge[from_n][to_n][1] = comm_time

        dag_file.close()
        
        
        # pred を求める
        pred = [[] for i in range(len(self.node))]
        for in_node in range(len(self.node)):
            for out_node in range(len(self.node)):
                if(edge[in_node][out_node][0] != "None"):  # エッジがあれば
                    pred[out_node].append(in_node)
        
        # succ を求める
        succ = [[] for i in range(len(self.node))]
        for in_node in range(len(self.node)):
            for out_node in range(len(self.node)):
                if(edge[in_node][out_node][0] != "None"):  # エッジがあれば
                    succ[in_node].append(out_node)
                    
        # entry node を求める
        entry = [0] * len(self.node)
        for i in range(len(self.node)):
            if(len(pred[i]) == 0):
                entry[i] = 1
                
        # exit node を求める
        exit = [0] * len(self.node)
        for i in range(len(self.node)):
            if(len(succ[i]) == 0):
                exit[i] = 1
        
        return edge, pred, succ, entry, exit
    
    
    # -- 現在の DAG を .tgffファイルに書き出す --
    def export_tgff(self, output_path):
            f = open(output_path, "w")
            
            type_list = []  # type 情報を保持
            
            f.write("@TASK_GRAPH 0 {\n")
            # TASK 情報の書き出し
            for node_index in range(len(self.node)):
                if(self.node[node_index].isTimer == True):  # timer driven の場合
                    period = self.node[node_index].period
                    if(self.node[node_index].isJoin == True):  # join の場合
                        f.write("   TASK t_" + str(node_index) + " TYPE " + str(node_index) + " TIMER " + str(period) + " JOIN\n")
                    else:
                        f.write("   TASK t_" + str(node_index) + " TYPE " + str(node_index) + " TIMER " + str(period) + "\n")
                
                if(self.node[node_index].isEvent == True):  # event driven の場合
                    if(self.node[node_index].isJoin == True):  # join の場合
                        f.write("   TASK t_" + str(node_index) + " TYPE " + str(node_index) + " EVENT JOIN\n")
                    else:
                        f.write("   TASK t_" + str(node_index) + " TYPE " + str(node_index) + " EVENT\n")
                
                type_list.append(self.node[node_index].exec_time)
            
            f.write("\n\n")  # TASK と ARC の間
            
            # ARC 情報の書き出し
            arc_index = 0
            
            for in_node_index in range(len(self.node)):
                for out_node_index in range(len(self.node)):
                    if(self.edge[in_node_index][out_node_index][0] != "None"):  # エッジがあれば
                        if(self.edge[in_node_index][out_node_index][0] == "Trigger"):  # trigger の場合
                            f.write("   ARC a_" + str(arc_index) + "  FROM t_" + str(in_node_index) + "  TO t_" + str(out_node_index) + str("  TYPE " + str(len(type_list)) + " TRIGGER\n"))
                            arc_index += 1
                            type_list.append(self.edge[in_node_index][out_node_index][1])
                        
                        if(self.edge[in_node_index][out_node_index][0] == "Update"):  # update の場合
                            f.write("   ARC a_" + str(arc_index) + "  FROM t_" + str(in_node_index) + "  TO t_" + str(out_node_index) + str("  TYPE " + str(len(type_list)) + " UPDATE\n"))
                            arc_index += 1
                            type_list.append(self.edge[in_node_index][out_node_index][1])
            
            f.write("}\n\n\n@PE 5 {\n# type  exec_time\n")
            
            # TYPE 情報の書き出し
            for type_index in range(len(type_list)):
                f.write("  " + str(type_index) + "     " + str(type_list[type_index]) + "\n")
            
            f.write("}")
            
            f.close()
    
    
    # -- DAG 内の entry node の添え字のリストを返す --
    def get_entry_list(self):
        entry_list = []
        for node_index in range(len(self.node)):
            if(self.entry[node_index] == 1): entry_list.append(node_index)
        
        return entry_list
    
    
    # -- DAG 内の exit node の添え字のリストを返す --
    def get_exit_list(self):
        exit_list = []
        for node_index in range(len(self.node)):
            if(self.exit[node_index] == 1): exit_list.append(node_index)
        
        return exit_list
    
    
    # -- DAG 内の timer-driven node の添え字のリストを返す --
    def get_timer_list(self):
        timer_list = []
        for i in range(len(self.node)):
            if(self.node[i].isTimer == True): timer_list.append(i)
        
        return timer_list
    
    
    # -- DAG 内の event-driven node の添え字のリストを返す --
    def get_event_list(self):
        event_list = []
        for i in range(len(self.node)):
            if(self.node[i].isEvent == True): event_list.append(i)
        
        return event_list
    
    
    # -- ni~nj 間が update edge なら True を返す --
    def isUpdate(self, i, j):
        if(self.edge[i][j][0] == "Update"):
            return True
        else:
            return False
    
    
    # -- entry node 以外の添え字のリストを返す --
    def get_except_entry_list(self):
        except_entry_list = []
        entry_list = self.get_entry_list()
        
        for i in range(len(self.node)):
            if(i not in entry_list):
                except_entry_list.append(i)
        
        return except_entry_list



if __name__ == "__main__":
    args = sys.argv
    num_of_dag = int(args[1])  # DAGの数を受け取る

    for i in range(num_of_dag):
        dag_path = './new_random_' + str(i) + '.tgff'
        
        dag = DAG(dag_path)
        
        
        
        # -- entry node 関係 --
        entry_list = dag.get_entry_list()
        for entry_index in entry_list:
            # -- entry node を timer driven node に変換 --
            dag.node[entry_index].isEvent = False
            dag.node[entry_index].isTimer = True
            dag.node[entry_index].period = random.choice([10, 20, 30, 40, 50, 60, 80, 100, 120])
        
            # -- entry node に後続がない場合，entry node 以外に繋ぐ --
            if(dag.exit[entry_index] == 1):
                except_entry_list = dag.get_except_entry_list()
                if(len(except_entry_list) != 0):  # entry node しかない場合がある
                    selected_index = random.choice(except_entry_list)
                    dag.exit[entry_index] = 0
                    dag.succ[entry_index].append(selected_index)
                    dag.pred[selected_index].append(entry_index)
                    dag.edge[entry_index][selected_index][0] = "Trigger"
                    dag.edge[entry_index][selected_index][1] = random.randint(1, 20)
        
        
        # -- exit node が複数ある場合，1つ以外を, 選ばれた exit node に繋ぐ --
        if(len(dag.get_exit_list()) >= 2):
            exit_list = dag.get_exit_list()
            selected_exit_index = random.choice(exit_list)
            exit_list.remove(selected_exit_index)
            
            for exit_index in exit_list:
                dag.succ[exit_index].append(selected_exit_index)
                dag.pred[selected_exit_index].append(exit_index)
                dag.edge[exit_index][selected_exit_index][0] = "Trigger"
                dag.edge[exit_index][selected_exit_index][1] = random.randint(1, 20)
        
        
        # -- 前任が複数あるノードを timer driven node 及び join node に変換 -- ※面倒だから event にはしていない
        for node_index in range(len(dag.node)):
            if(len(dag.pred[node_index]) >= 2):
                dag.node[node_index].isJoin = True
                dag.node[node_index].isEvent = False
                dag.node[node_index].isTimer = True
                dag.node[node_index].period = random.choice([10, 20, 30, 40, 50, 60, 80, 100, 120])
        
        
        # -- timer driven node に繋がるエッジを全て update edge に変換 --
        timer_list = dag.get_timer_list()
        for timer_index in timer_list:
            if(len(dag.pred[timer_index]) != 0):
                for pred_index in dag.pred[timer_index]:
                    dag.edge[pred_index][timer_index][0] = "Update"
        
        
        
        # 変換後の dag を tgff ファイルに書き出す
        output_path = './new_random_tf_' + str(i) + '.tgff'
        dag.export_tgff(output_path)