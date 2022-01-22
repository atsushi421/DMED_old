#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_coreNum/ -name *.txt | xargs rm
wait

# -- 0.5 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 0.5
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 0.5
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 0.5
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 0.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 0.5
wait


# -- 0.6 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 0.6
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 0.6
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 0.6
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 0.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 0.6
wait


# -- 0.7 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 0.7
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 0.7
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 0.7
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 0.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 0.7
wait


# -- 0.8 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 0.8
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 0.8
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 0.8
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 0.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 0.8
wait


# -- 0.9 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 0.9
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 0.9
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 0.9
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 0.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 0.9
wait


# -- 1.0 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.0
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.0
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.0
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.0
wait


# -- 1.1 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.1
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.1
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.1
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.1
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.1
wait


# -- 1.2 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.2
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.2
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.2
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.2
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.2
wait


# -- 1.3 --
# FIFO
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 FIFO 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 FIFO 1.3
wait

# RMS
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 RMS 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 RMS 1.3
wait

# EDF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 EDF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 EDF 1.3
wait

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.3
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.3
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.4
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.4
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.5
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.5
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.6
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.6
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.7
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.7
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.8
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.8
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 1.9
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 1.9
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

# Proposed_LLF
python3 eval.py aw_change_coreNum AutowareAuto 1 16 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 15 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 14 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 13 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 12 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 11 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 10 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 9 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 8 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 7 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 6 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 5 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 4 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 3 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 2 1 Proposed_LLF 2.0
python3 eval.py aw_change_coreNum AutowareAuto 1 1 1 Proposed_LLF 2.0
wait