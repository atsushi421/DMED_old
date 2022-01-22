#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_cpuUsage/ -name *.txt | xargs rm
wait


for a in $(seq 1.4 0.1 2.0); do
    for ((i=0 ; i<$1 ; i++)); do
        # EDF
        for gen_ratio in $(seq 0.09 0.01 0.15); do
            python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF None ${a} ${gen_ratio}
        done

        # Proposed_LLF
        for gen_ratio in $(seq 0.09 0.01 0.15); do
            python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF Proposed ${a} ${gen_ratio}
        done

        # Igarashi_LLF
        for gen_ratio in $(seq 0.09 0.01 0.15); do
            python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF Igarashi ${a} ${gen_ratio}
        done

        # Salah_LLF
        for gen_ratio in $(seq 0.09 0.01 0.15); do
            python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF Salah ${a} ${gen_ratio}
        done
    done
done


# -- sort --
python3 sort_aw_change_cpuUsage.py