#!/bin/bash

# DO NOT MODIFY
build_directory="build"
###############

matrix_directory="/common_data/matrices/"
# The directory under which your matrix files are located.

filenames=("deniz_generate.mtx")
# The filename of your matrix.
# If the filename ends with .mtx, the library assumes that the nonzero coordinates are 1-based. Otherwise, it assumes them to be 0-based.

algorithms=("auto")
# The algorithm used to compute the permanent of your matrix.
# "auto" lets the library select the fastest algorithm available.

modes=("single_gpu")
# The mode in which the matrix permanent is computed.
# Available modes are:
# - cpu: Uses only the CPU (very slow; avoid if your matrix size exceeds 40x40).
# - single_gpu: Utilizes a single GPU (specified by device_id) during computation.
# - multi_gpu: Uses multiple GPUs (number specified by gpu_num) for computation.
# - multi_gpu_mpi: Uses multiple nodes, each with possibly multiple GPUs.

thread_counts=(44)
# The number of CPU threads the library will use when computing the permanent on the CPU.
# Only relevant if the mode is "cpu".

device_ids=(0)
# The device ID of the GPU used for computation.
# Only relevant if the mode is "single_gpu".

gpu_nums=(1)
# The number of GPUs used for computation.
# Only relevant if the mode is "multi_gpu" or "multi_gpu_mpi".

is_binary=("false")
# If true, the library assumes that the matrix edges are unweighted.

is_undirected=("false")
# If true, the library assumes that the matrix is undirected, meaning for every edge u -> v, there is also an edge v -> u.

requires_scaling=("true")
# If true, the matrix will be scaled. For more details on this process, refer to our article.
scaling_iteration_nos=(100)
# Number of iterations required for scaling
scale_into=(1)

chunk_partitionings=(5)
# Specifies how many partitions the chunk will be divided into for each GPU.
# During runtime, these partitions are dynamically distributed across GPUs.
# A value of 5 is well-tested and generally effective.
# If your GPUs have uneven compute capabilities, consider increasing this number.
# Small partition numbers work well for evenly distributed compute powers, while large numbers are better for uneven distribution.
# Only relevant if the mode is "multi_gpu" or "multi_gpu_mpi".

for i in "${!filenames[@]}"; do
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" scale_into="${scale_into[$i]}" chunk_partitioning="${chunk_partitionings[$i]}"
done
