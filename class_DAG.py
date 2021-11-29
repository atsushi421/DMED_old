# -*- coding: utf-8 -*-
import pprint
import math


class Node:
    # <コンストラクタ>
    def __init__(self, isJoin, isEvent, isTimer, period, offset, exec_time):
        '''
        isJoin : Join node なら True
        isEvent : event-driven node なら True
        trigger_list : event-driven node の場合のトリガーされるノードの添え字のリスト
        isTimer : timer-driven node なら True
        period : timer-driven node の場合の周期
        offset : timer-driven node の場合のオフセット
        exec_time : 実行時間
        st_list : HP 内の各ジョブの開始時間のリスト
        ft_list : HP 内の各ジョブの終了時間のリスト
        '''
        self.isJoin = isJoin
        self.isEvent = isEvent
        self.trigger_list = []
        self.isTimer = isTimer
        self.period = period
        self.offset = offset
        self.exec_time = exec_time
        self.st_list = []
        self.ft_list = []
        


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
        HP : ハイパーピリオド
        Deadline : 一度目のデッドライン
        '''
        self.dag_file = dag_file
        self.node = []
        self.edge, self.pred, self.succ, self.entry, self.exit = self.read_dag_file(self.dag_file)
        self.HP = int(self.calc_hp())
        self.Deadline = int(120)  # 120 ms と仮定
        self.set_trigger_index()



    # <メソッド>
    # -- .dagファイルの読み込み --
    def read_dag_file(self, dag_file):
        path = "./DAG/" + self.dag_file + ".dag"  # DAG ディレクトリ直下にあることを想定
        dag_file = open(path, "r")
        
        type_cost = []  # TYPE と処理時間の対応関係の配列
        read_flag = 0  # PE 0 の情報だけを読み込むためのフラグ
        info_flag = 0   #余計な部分を読み込まないためのフラグ
        
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            # 読み込む範囲を限定
            if(len(line_list) >= 2):
                if(line_list[0] == '@PE' and line_list[1] == '0'):
                    read_flag = 1
                if(line_list[1] == 'type' and line_list[2] == 'exec_time'):
                    info_flag = 1
                    continue
                
                # TYPE の情報取得
                if(read_flag == 1 and info_flag == 1):
                    type_cost.append(int(float(line_list[1])))  # TYPE に対応する処理時間を int 型で格納
                    
            elif(line_list[0] == '}'):
                read_flag = 0
                info_flag = 0
        
        dag_file.close()
        
        
        # TASK の情報の取得
        dag_file = open(path, "r")
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            if(line_list[0] == 'TASK'):
                isJoin = isEvent = isTimer = False
                period = 0
                exec_time = type_cost[int(line_list[3])]
                
                # 各パラメータの判定・格納
                if(line_list[-1] == 'JOIN'): isJoin = True
                if(line_list[4] == 'EVENT'): isEvent = True
                if(line_list[4] == 'TIMER'):
                    isTimer = True
                    period = int(line_list[5])
                    offset = 0
                
                self.node.append(Node(isJoin, isEvent, isTimer, period, offset, exec_time))
        dag_file.close()

        
        # ARC 情報の取得
        edge = [[["None", 0] for j in range(len(self.node))] for i in range(len(self.node))]
        dag_file = open(path, "r")
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            if(line_list[0] == 'ARC'):                
                # 各パラメータの判定・格納
                from_n = int(line_list[3][2:])  # エッジを出力するノードの添え字
                to_n = int(line_list[5][2:])  # エッジが入力されるノードの添え字
                comm_time = int(type_cost[int(line_list[7])])  # TYPE に書かれている時間を通信時間とする
                
                if(line_list[-1] == 'TRIGGER'):
                    edge[from_n][to_n][0] = "Trigger"
                    edge[from_n][to_n][1] = comm_time
                else:
                    edge[from_n][to_n][0] = "Update"
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
    
    
    # -- DAG 内の entry node の添え字のリストを返す --
    def get_entry_list(self):
        entry_list = []
        for node_index in range(len(self.node)):
            if(self.entry[node_index] == 1): entry_list.append(node_index)
        
        return entry_list
    
    
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
    
    
    # -- event-driven node の trigger_index を設定 --
    def set_trigger_index(self):
        event_list = self.get_event_list()
        for event_index in event_list:
            pred_list = self.pred[event_index]
            for pred in pred_list:
                if(self.edge[pred][event_index][0] == "Trigger"):
                        self.node[event_index].trigger_list.append(pred)
    
    
    # -- ni~nj 間が update edge なら True を返す --
    def isUpdate(self, i, j):
        if(self.edge[i][j][0] == "Update"):
            return True
        else:
            return False
    
    
    # -- HP を返す --
    def calc_hp(self):
        period_list = []
        for i in range(len(self.node)):
            if(self.node[i].isTimer == True):
                period_list.append(self.node[i].period)
        
        return math.lcm(*period_list)
    
    
    # -- 変数の表示 --
    def print_pred(self):
        print("pred = ", end = "")
        pprint.pprint(self.pred)
    
    def print_succ(self):
        print("succ = ", end = "")
        pprint.pprint(self.succ)
    
    def print_entry(self):
        print("entry = ", end = "")
        print(self.entry)
        
    def print_exit(self):
        print("exit = ", end = "")
        print(self.exit)

    def print_all(self):
        self.print_pred()
        self.print_succ()
        self.print_entry()
        self.print_exit()