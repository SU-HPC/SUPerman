#!/bin/bash

experimental_kernels=("xregister_mshared")

build_directory="build"
matrix_directory="/common_data/matrices/"
filenames=("deniz_dense50.mtx")
modes=("single_gpu")
thread_counts=(44)
device_ids=(0)
gpu_nums=(1)
is_binary=("false")
is_undirected=("false")
requires_scaling=("false")
scaling_thresholds=(0)

for i in "${!filenames[@]}"; do
  for algo in "${!experimental_kernels[@]}"; do
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${experimental_kernels[$algo]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_threshold="${scaling_thresholds[$i]}"
  done
done
