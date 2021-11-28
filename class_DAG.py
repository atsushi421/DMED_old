# -*- coding: utf-8 -*-
import pprint


class Node:
    # <コンストラクタ>
    def __init__(self, isJoin, isEvent, isTimer, period, exec_time):
        '''
        isJoin : Join node なら True
        isEvent : event-driven node なら True
        isTimer : timer-driven node なら True
        period : timer-driven node の場合の周期
        exec_time : 実行時間
        '''
        self.isJoin = isJoin
        self.isEvent = isEvent
        self.isTimer = isTimer
        self.period = period
        self.exec_time = exec_time
        
        
class Edge:
    # <コンストラクタ>
    def __init__(self, isTrigger, isUpdate, FROM, TO,  comm_time):
        '''
        isTrigger : Trigger edge なら True
        isUpdate : Update edge なら True
        FROM : エッジを出力するノードの添え字
        TO : エッジが入力されるノードの添え字
        comm_time : 通信時間
        '''
        self.isTrigger = isTrigger
        self.isUpdate = isUpdate
        self.FROM = FROM
        self.TO = TO
        self.comm_time = comm_time


class DAG:
    # <コンストラクタ>
    def __init__(self, dag_file):
        '''
        dag_file : .dag ファイルの名前
        node[] : DAG 内のノード
        edge[] : DAG 内のエッジ
        pred[i] : ni の前任ノードのリスト
        succ[i] : ni の後続ノードのリスト
        entry[i]=1 : niはentryノード. entry[i]=0 : niはentryノードではない
        exit[i]=1 : niはexitノード. exit[i]=0 : niはexitノードではない
        HP : ハイパーピリオド
        '''
        
        self.dag_file = dag_file
        self.node = []
        self.edge = []
        self.pred, self.succ, self.entry, self.exit = self.read_dag_file(self.dag_file)
        # self.HP = self.calc_hp(self)



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
                    period = line_list[5]
                
                self.node.append(Node(isJoin, isEvent, isTimer, period, exec_time))
        dag_file.close()

        
        # ARC 情報の取得
        dag_file = open(path, "r")
        for line in dag_file:
            if(line == "\n"):
                continue  # 空行はスキップ
            
            line_list = line.split()  # 文字列の半角スペース・タブ区切りで区切ったリストを取得
            
            if(line_list[0] == 'ARC'):
                isTrigger = isUpdate = False
                
                # 各パラメータの判定・格納
                if(line_list[-1] == 'TRIGGER'): isTrigger = True
                if(line_list[-1] == 'UPDATE') : isUpdate = True
                from_n = int(line_list[3][2:])  # エッジを出力するノードの添え字
                to_n = int(line_list[5][2:])  # エッジが入力されるノードの添え字
                comm_time = int(type_cost[int(line_list[7])])  # TYPE に書かれている時間を通信時間とする
                
                self.edge.append(Edge(isTrigger, isUpdate, from_n, to_n, comm_time))
                
        dag_file.close()
        
        
        # pred を求める
        pred = [[] for i in range(len(self.node))]
        for edge in self.edge:
            pred[edge.TO].append(edge.FROM)
        
        # succ を求める
        succ = [[] for i in range(len(self.node))]
        for edge in self.edge:
            succ[edge.FROM].append(edge.TO)
                    
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
        
        return pred, succ, entry, exit
    
    
    # -- DAG 内の timer-driven node の添え字のリストを返す --
    def timer_list(self):
        timer_list = []
        for i in range(len(self.node)):
            if(self.node[i].isTimer == True): timer_list.append(i)
        
        return timer_list
    
    
    # -- ni~nj 間が update edge なら True を返す --
    def isUpdate(self, i, j):
        for edge in self.edge:
            if(edge.FROM == i and edge.TO == j):
                if(edge.isUpdate == True):
                    return True
                else:
                    return False
    
    
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