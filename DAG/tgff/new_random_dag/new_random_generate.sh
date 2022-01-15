#!/usr/bin/bash


# remove result
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/DAG/tgff/new_random_dag/ -name "*.txt" | xargs rm
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/DAG/tgff/new_random_dag/ -name "*.eps" | xargs rm
find /mnt/c/Users/atsushi/Documents/Study/M1/master_thesis/Code/DAG/tgff/new_random_dag/ -name "*.tgff" | xargs rm
wait


for ((i=0 ; i<$1 ; i++))
do
python3 new_change_option.py
python3 new_get_parameter.py
./tgff3_1.exe new
wait

rm new.vcg
mv new_generate_parameter.txt new_random_${i}.txt
mv new.eps new_random_${i}.eps
mv new.tgff new_random_${i}.tgff
wait
done

wait

python3 transform_dags.py $1
wait

python3 divide_dags.py $1