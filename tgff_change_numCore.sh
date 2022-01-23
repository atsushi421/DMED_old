#!/usr/bin/bash

# # remove result
# find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/TGFF/tgff_change_numCore/ -name *.txt | xargs rm
# wait


for ((numCore=$2 ; numCore<$3 ; numCore++))
do
    for ((i=0 ; i<$1 ; i++))
    do
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 EDF None 6.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Proposed 6.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Igarashi 6.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Salah 6.0 0
    done
done


# wait
# python3 sort_tgff_change_numCore.py