#!/bin/bash

build_directory="build"
matrix_directory="/common_data/matrices/"
filenames=("can_61.mtx" "can_62.mtx" "dwt_59.mtx")
algorithms=("auto" "auto" "auto")
modes=("cpu" "cpu" "cpu")
thread_counts=(16 16 16)
device_ids=(0 0 0)
gpu_nums=(1 1 1)
binarys=("true" "true" "true")
scalings=("false" "false" "false")
scaling_thresholds=(0 0 0)

for i in "${!filenames[@]}"; do
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${binarys[$i]}" scaling="${scalings[$i]}" scaling_threshold="${scaling_thresholds[$i]}"
done
