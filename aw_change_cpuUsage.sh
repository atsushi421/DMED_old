#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_cpuUsage/ -name *.txt | xargs rm
wait


# -- 1.4 --
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


# -- 1.5 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.5 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.5 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.5 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.5 0.2
done


# -- 1.6 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.6 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.6 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.6 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.6 0.2
done


# -- 1.7 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.7 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.7 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.7 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.7 0.2
done


# -- 1.8 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.8 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.8 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.8 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.8 0.2
done


# -- 1.9 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 1.9 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 1.9 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 1.9 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 1.9 0.2
done


# -- 2.0 --
# FIFO
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 FIFO 2.0 0.2
done

# RMS
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 RMS 2.0 0.2
done


# EDF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 EDF 2.0 0.2
done


# LLF
for ((i=0 ; i<$1 ; i++))
do
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.1
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.11
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.12
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.13
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.14
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.15
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.16
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.17
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.18
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.19
python3 eval.py aw_change_cpuUsage AutowareAuto 1 8 1 LLF 2.0 0.2
done



# -- sort --
python3 sort_aw_change_cpuUsage.py