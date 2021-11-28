# -*- coding: utf-8 -*-


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
    
    return G