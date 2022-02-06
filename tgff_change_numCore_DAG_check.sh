#!/usr/bin/bash


for ((i=0 ; i<$1 ; i++))
do
    python3 eval.py tgff_change_numCore new_random_tf_${i} 1 16 1 EDF None 2.0 0
done
wait

python3 del_rand_dag.py