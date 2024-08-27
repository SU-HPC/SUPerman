#!/bin/bash

# DO NOT MODIFY
build_directory="build"
###############

matrix_directory="/common_data/matrices/"
# The directory under which your matrix files are located.

filenames=(
"all1_45.mtx"
"all1_48.mtx"
"all1_50.mtx"
)

calculation_precisions=(
"dd"
"dq1"
"dq2"
"qq"
"kahan"
)

sizes=(
45
48
50
)

for i in "${!filenames[@]}"; do
    python3 build_superman.py ${sizes[i]}
    for j in "${!calculation_precisions[@]}"; do
      ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" mode="single_gpu" calculation_precision="${calculation_precisions[$j]}" > "${filenames[$i]}_${calculation_precisions[j]}"
    done
done
