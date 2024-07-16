#!/bin/bash

# do not modify
build_directory="build"
#


matrix_directory="/common_data/matrices/"
filenames=("football.mtx" "GD95_a.mtx" "chesapeake.mtx" "deniz_dense_40.mtx")
algorithms=("auto" "auto" "auto" "auto")
modes=("single_gpu" "single_gpu" "single_gpu" "single_gpu")
thread_counts=(44 44 44 44)
device_ids=(0 0 0 0)
gpu_nums=(1 1 1 1)
is_binary=("false" "true" "true" "false")
is_undirected=("true" "false" "true" "false")
requires_scaling=("true" "true" "true" "true")
scaling_iteration_nos=(100 100 100 100)
chunk_partitionings=(5 5 5 5)


for i in "${!filenames[@]}"; do
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}"
done
