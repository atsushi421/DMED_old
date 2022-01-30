#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/TGFF/tgff_change_numCore/ -name *.txt | xargs rm
wait



for ((i=0 ; i<$1 ; i++))
do
    for a in $(seq $2 0.1 $3); do
        python3 eval.py tgff_change_a new_random_tf_${i} 1 4 1 EDF None ${a} 0
        python3 eval.py tgff_change_a new_random_tf_${i} 1 4 1 LLF Proposed ${a} 0
        python3 eval.py tgff_change_a new_random_tf_${i} 1 4 1 LLF Igarashi ${a} 0
        python3 eval.py tgff_change_a new_random_tf_${i} 1 4 1 LLF Salah ${a} 0
    done
done