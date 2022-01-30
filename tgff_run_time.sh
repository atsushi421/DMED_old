#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/TGFF/tgff_run_time/ -name *.txt | xargs rm
wait



for ((i=0 ; i<$1 ; i++))
do
    python3 eval.py tgff_run_time new_random_tf_${i} 1 1 1 LLF Proposed 15.0 0

    if [ $((i % 10)) -eq 0 ]; then
        wait
    fi
done