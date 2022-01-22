#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/TGFF/tgff_change_numCore/ -name *.txt | xargs rm
wait


for ((numCore=1 ; numCore<8 ; numCore++))
do
    for ((i=0 ; i<$1 ; i++))
    do
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 EDF None 3.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Proposed 3.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Igarashi 3.0 0
        python3 eval.py tgff_change_numCore new_random_tf_${i} 1 ${numCore} 1 LLF Salah 3.0 0
    done
done


wait
python3 sort_tgff_change_numCore.py