#!/bin/bash

repo_directory="/home/delbek/SUPerman/"
# The directory belonging to the repository.

build_directory="${repo_directory}build/"
# The directory into which the build files will be dumped.

matrix_directory="/home/delbek/SparsePermanExperiments/"
# The directory under which your matrix files are located.

filenames=(
reg_efficient_sparse_matrix_40_0.150000.mtx
)
# The filename of your matrix.
# If the filename ends with .mtx, the library assumes that the nonzero coordinates are 1-based. Otherwise, it assumes them to be 0-based.

algorithms=("register_efficient_code_generation")
# The algorithm used to compute the permanent of your matrix.
# "auto" lets the library select the fastest algorithm available.
# DEFAULT: "auto"

modes=("single_gpu")
# The mode in which the matrix permanent is computed.
# Available modes are:
# - cpu: Uses only the CPU (very slow; avoid if your matrix size exceeds 40x40).
# - single_gpu: Utilizes a single GPU (specified by device_id) during computation.
# - multi_gpu: Uses multiple GPUs (number specified by gpu_num) for computation.
# - multi_gpu_mpi: Uses multiple nodes, each with possibly multiple GPUs.
# DEFAULT: "cpu"

thread_counts=(64)
# The number of CPU threads the library will use when computing the permanent on the CPU.
# Only relevant if the mode is "cpu".
# DEFAULT: maximum number of hardware threads allowed on the architecture

device_ids=(0)
# Either the device ID of the GPU used for the computation if the mode is "single_gpu"
# or the device ID for which the GPU kernels are generated if the mode is "multi_gpu" or "multi_gpu_mpi".
# DEFAULT: 0

gpu_nums=(1)
# The number of GPUs used for computation.
# Only relevant if the mode is "multi_gpu" or "multi_gpu_mpi".
# DEFAULT: 1

processor_num=(1)
# The number of MPI nodes to use for the computation.
# Only relevant if the mode is "multi_gpu_mpi".

is_binary=("false")
# If true, the library assumes that the matrix edges are unweighted.
# DEFAULT: "false"

is_undirected=("false")
# If true, the library assumes that the matrix is undirected, meaning for every edge u -> v, there is also an edge v -> u.
# DEFAULT: "false"

printing_precision=(30)
# Precision in which to print the permanent result
# DEFAULT: 30

g++ -std=c++17 wrapper.cpp
for i in "${!filenames[@]}"; do
  "${repo_directory}a.out" "${processor_num[$i]}" ${build_directory} repo_dir="${repo_directory}" filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" printing_precision="${printing_precision[$i]}"
done
