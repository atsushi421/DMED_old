# -*- coding: utf-8 -*-


class subDAG:
    # <コンストラクタ>
    def __init__(self, node_list, dag):
        '''
        node_list : subG を構成するノードの添え字のリスト
        tail_list : tail node の添え字のリスト
        head_list : head node の添え字のリスト
        period : subG の周期
        duration : 考えるべき期間
        '''
        self.node_list = node_list
        self.tail_list = []
        self.head_list = []
        self.period = 0
        self.duration = dag.HP  # デフォルトは HP
        self.init_set_param(dag)
    
    
    # <メソッド>
    # -- subG の各パラメータの設定 --
    def init_set_param(self, dag):
        # tail node
        for node_index in self.node_list:
            # subG 外のノードへエッジを持つなら，tail node
            succ_list = dag.succ[node_index]
            for succ in succ_list:
                if(succ not in self.node_list):
                    self.tail_list.append(node_index)
                    break
        
        # head node & period
        for node_index in self.node_list:
            pred_list = dag.pred[node_index]
            matched = set(pred_list) & set(self.node_list)
            if(len(matched) == 0):
                self.head_list.append(node_index)
                self.period = dag.node[node_index].period  # head node は timer-driven node
    
    # -- duration 内での subG の発火回数を返す --
    def get_num_trigger(self):
        return int(self.duration / self.period + 1)  # 0 ms でも発火するので，+ 1



subG = []  # 全ての再帰関数からアクセスされるグローバル変数


def search_succs(dag, index):
    global subG
    
    # 探索終了判定
    if(dag.node[index].isJoin == True):
        if(dag.node[index].isTimer == True and len(subG) != 1):  # len == 1 の場合，join node から始まるパス
            subG.remove(index)
            return 0
        if(dag.node[index].isEvent == True):
            pred_list = dag.pred[index]  # 現在見ているノードの前任ノードのリスト
            
            # 共通部分を抜き出すために set に変換
            pred_set = set(pred_list)
            subG_set = set(subG)
            matched_list = list(pred_set & subG_set)  # 共通部分を抜き出したリスト. 複数あるかは不明なので，一旦1つと想定
            
            if(dag.isUpdate(matched_list[0], index) == True):
                subG.remove(index)
                return 0
    
    # 通常の処理
    succ_list = dag.succ[index]
    
    # 既に subG に含まれているノードを削除
    succ_set = set(succ_list)
    subG_set = set(subG)
    matched_set = succ_set & subG_set
    succ_list = list(succ_set - matched_set)
    
    subG += succ_list
    for succ in succ_list:
        search_succs(dag, succ)
    

def divide_subG(dag):
    G = []  # subG を全て格納したもの. 元の DAG G とノード・エッジは一致する
    global subG
    
    # 全ての timer-driven node に対して，search_succs 関数を呼び出す
    timer_list = dag.get_timer_list()
    for timer_index in timer_list:
        subG.append(timer_index)
        search_succs(dag, timer_index)
        G.append(subG)
        subG = []
        
    # 同じ経路を通る subG がある場合（同じ周期の subG から入力を受け取るノードがある場合），それらの subG をマージする
    for i in range(len(G)):
        for j in range(len(G)):
            set_i = set(G[i])
            set_j = set(G[j])
            if(len(set_i & set_j) > 0):  # 重複がある場合
                G[i] += list(set_j - set_i)
                
    # 同じ経路を通る subG がある場合，全く同じ subG ができるはずなので，それを削除
    for subG in G:
        subG.sort()
    tuple_list_G = list(set(list(map(tuple, G))))
    G = list(map(list, tuple_list_G))
    
    # subDAG インスタンスに変換
    for subG_index in range(len(G)):
        G[subG_index] = subDAG(G[subG_index], dag)
    
    return G