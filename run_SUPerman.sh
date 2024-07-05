#!/bin/bash

build_directory="build"
matrix_directory="/common_data/matrices/"
filenames=("cage5.mtx")
algorithms=("auto")
modes=("single_gpu")
thread_counts=(44)
device_ids=(0)
gpu_nums=(1)
is_binary=("false")
is_undirected=("false")
requires_scaling=("false")
scaling_thresholds=(0)

for i in "${!filenames[@]}"; do
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_threshold="${scaling_thresholds[$i]}"
done
