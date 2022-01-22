#!/usr/bin/bash

# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/result/Autoware/aw_change_a/ -name *.txt | xargs rm
wait


# -- 1 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 1 1 Proposed_LLF 3.0
wait


# -- 2 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 2 1 Proposed_LLF 3.0
wait


# -- 3 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 3 1 Proposed_LLF 3.0
wait


# -- 4 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 4 1 Proposed_LLF 3.0
wait


# -- 5 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 5 1 Proposed_LLF 3.0
wait


# -- 6 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 6 1 Proposed_LLF 3.0
wait


# -- 7 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 7 1 Proposed_LLF 3.0
wait


# -- 8 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 8 1 Proposed_LLF 3.0
wait


# -- 9 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 9 1 Proposed_LLF 3.0
wait


# -- 10 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 10 1 Proposed_LLF 3.0
wait


# -- 11 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 11 1 Proposed_LLF 3.0
wait


# -- 12 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 12 1 Proposed_LLF 3.0
wait


# -- 13 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 13 1 Proposed_LLF 3.0
wait


# -- 14 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 14 1 Proposed_LLF 3.0
wait


# -- 15 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 15 1 Proposed_LLF 3.0
wait


# -- 16 --
# FIFO
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 1.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.0
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.1
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.2
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.3
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 2.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 FIFO 3.0
wait

# RMS
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 1.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.0
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.1
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.2
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.3
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 2.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 RMS 3.0
wait

# EDF
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 1.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.0
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.1
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.2
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.3
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 2.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 EDF 3.0
wait

# Proposed_LLF
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 1.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.0
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.1
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.2
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.3
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.4
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.5
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.6
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.7
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.8
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 2.9
python3 eval.py aw_change_a AutowareAuto 1 16 1 Proposed_LLF 3.0
wait