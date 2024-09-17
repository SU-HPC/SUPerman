#!/bin/bash

# DO NOT MODIFY
build_directory="build"
cache="build/Cache.txt"
code_gen_cache="build/CodeGenCache.txt"
###############

matrix_directory="/common_data/matrices/"
# The directory under which your matrix files are located.

filenames=("sparse_20.mtx")
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

thread_counts=(88)
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

is_binary=("false")
# If true, the library assumes that the matrix edges are unweighted.
# DEFAULT: "false"

is_undirected=("false")
# If true, the library assumes that the matrix is undirected, meaning for every edge u -> v, there is also an edge v -> u.
# DEFAULT: "false"

printing_precision=(30)
# Precision in which to print the permanent result
# DEFAULT: 30

calculation_precision=("dd")
# Precision for the data structures where the products and sums are stored, available settings are:
# "dd" -> product: double, sum: double
# "dq1" -> product: double, sum: quad
# "dq2" -> product: double, sum: quad
# "qq" -> product: quad, sum: quad
# DEFAULT: "dd"

kernel_compilation_check()
{
    local file=$1
    if [[ -f "$file" ]]; then
        local content=$(cat "$file")
        if [[ "$content" -eq 1 ]]; then
            return 0
        else
            return 1
        fi
    else
        echo "File does not exist."
        return 1
    fi
}

clear_caches()
{
    if [ -f "$cache" ]; then
        rm -f "$cache"
      fi

    if [ -f "$code_gen_cache" ]; then
        rm -f "$code_gen_cache"
    fi
}

for i in "${!filenames[@]}"; do
    clear_caches
    echo "SUPERMAN IS BEING COMPILED ..."
    python3 build_superman.py > /dev/null 2>&1
    ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" printing_precision="${printing_precision[$i]}" calculation_precision="${calculation_precision[$i]}"
    if kernel_compilation_check "$cache"; then
      echo "KERNELS ARE BEING COMPILED ..."
      python3 build_superman.py > /dev/null 2>&1
      ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" printing_precision="${printing_precision[$i]}" calculation_precision="${calculation_precision[$i]}"
    fi
done

### IF YOU WANT TO USE MPI THEN COMMENT OUT THE FOLLOWING LOOP INSTEAD OF THE ABOVE ONE
#processor_count=2
#for i in "${!filenames[@]}"; do
#    clear_caches
#    echo "SUPERMAN IS BEING COMPILED ..."
#    python3 build_superman.py > /dev/null 2>&1
#    mpirun --mca btl ^openib -np ${processor_count} ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" printing_precision="${printing_precision[$i]}" calculation_precision="${calculation_precision[$i]}"
#    if kernel_compilation_check "$cache"; then
#      echo "KERNELS ARE BEING COMPILED ..."
#      python3 build_superman.py > /dev/null 2>&1
#      mpirun --mca btl ^openib -np ${processor_count} ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" printing_precision="${printing_precision[$i]}" calculation_precision="${calculation_precision[$i]}"
#    fi
#done
