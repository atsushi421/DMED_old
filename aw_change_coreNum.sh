#!/usr/bin/bash

# remove result
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.4/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.5/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.6/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.7/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.8/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_1.9/*.txt
rm /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/a_2.0/*.txt
wait

# -- 1.4 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.4
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.4
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.4
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.4
wait


# -- 1.5 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.5
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.5
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.5
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.5
wait


# -- 1.6 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.6
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.6
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.6
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.6
wait


# -- 1.7 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.7
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.7
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.7
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.7
wait


# -- 1.8 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.8
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.8
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.8
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.8
wait


# -- 1.9 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.9
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.9
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.9
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 1.9
wait


# -- 2.0 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 2.0
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 2.0
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 2.0
wait

# LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 LLF 2.0
wait