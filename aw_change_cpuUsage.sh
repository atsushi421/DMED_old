#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_cpuUsage/ -name *.txt | xargs rm
wait


# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.4 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.4 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.4 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.4 0.2
done