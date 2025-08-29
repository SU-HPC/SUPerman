#!/bin/bash

script_dir="$(dirname "$(readlink -f "$0")")"
repo_directory=${script_dir}/
# The directory belonging to the repository.

build_directory=${repo_directory}build/ # never modify this
# The directory into which the build files will be dumped.

matrix_directory=${repo_directory}ExampleMatrices/
# The directory under which your matrix files are located.

filenames=(
"dense.mtx"
)
# The filename of your matrix.
# If the filename ends with .mtx, the library assumes that the nonzero coordinates are 1-based.
# Otherwise, it assumes them to be 0-based.

algorithms=("auto")
# The algorithm used to compute the permanent of your matrix.
# "auto" lets the library select the fastest algorithm available.

modes=("single_gpu")
# The mode in which the matrix permanent is computed.
# Available modes are:
# - cpu: Uses only the CPU (very slow; avoid if your matrix size exceeds 40x40).
# - single_gpu: Utilizes a single GPU (specified by device_id) during the computation.
# - multi_gpu: Uses multiple GPUs (number specified by gpu_num) per-task for the computation.
# - multi_gpu_mpi: Uses multiple tasks (perhaps coming from multiple nodes), each with possibly multiple GPUs.

thread_counts=(88)
# The number of CPU threads the library will use when computing the permanent on the CPU.
# Only relevant if the mode is "cpu".

device_ids=(0)
# Either the device ID of the GPU used for the computation if the mode is "single_gpu"
# or the device ID for which the GPU kernels are generated if the mode is "multi_gpu" or "multi_gpu_mpi".

gpu_nums=(1)
# The number of GPUs used for the computation per-task.
# Only relevant if the mode is "multi_gpu" or "multi_gpu_mpi".

processor_num=(1)
# The number of MPI tasks (perhaps coming from multiple nodes) to use for the computation.
# Only relevant if the mode is "multi_gpu_mpi".
# UNDEFINED EXECUTION PATTERN IF: processor_num > 1 and mode != multi_gpu_mpi

is_complex=("false")
# If true, the library assumes the matrix to contain complex entries of the form (a + bi).

is_binary=("false")
# If true, the library assumes that the matrix edges are unweighted.

is_undirected=("false")
# If true, the library assumes that the matrix is undirected, meaning for every edge u -> v,
#                                                              there is also an edge v -> u.

matrix_specific_compilation=("false")
# Although not recommended to be set as "true" (unless the matrix has complex entries, in which case we highly recommend it), if so,
# the library compiles itself with specific matrix size (to be determined in the following argument) for improved efficiency,
# details of which is accessible in our paper.
matrix_specific_size=("40")
# The specific matrix size to use if matrix-specific compilation is enabled.

calculation_precision=("kahan")
# Precision in which to compute the permanent

g++ -std=c++17 "${repo_directory}wrapper.cpp" -o "${repo_directory}wrapper"
if [ $? -ne 0 ]; then
  echo "Compilation of wrapper.cpp failed!"
  exit 1
fi

chmod +x "${repo_directory}wrapper"
if [ $? -ne 0 ]; then
  echo "chmod failed!"
  exit 1
fi

set -euo pipefail
get_at()
{
  local -n _arr="$1"
  local _idx="$2"
  local _n="${#_arr[@]}"

  if (( _n == 0 )); then
    printf '%s' ""
  elif (( _idx >= _n )); then
    printf '%s' "${_arr[$((_n-1))]}"
  else
    printf '%s' "${_arr[$_idx]}"
  fi
}

for i in "${!filenames[@]}"; do

  fname="$(get_at filenames "$i")"
  proc_num="$(get_at processor_num "$i")"
  msc="$(get_at matrix_specific_compilation "$i")"
  mss="$(get_at matrix_specific_size "$i")"
  alg="$(get_at algorithms "$i")"
  mode="$(get_at modes "$i")"
  threads="$(get_at thread_counts "$i")"
  dev_id="$(get_at device_ids "$i")"
  gpu_num="$(get_at gpu_nums "$i")"
  complex="$(get_at is_complex "$i")"
  binary="$(get_at is_binary "$i")"
  undirected="$(get_at is_undirected "$i")"
  calc_prec="$(get_at calculation_precision "$i")"

  if [[ "$msc" == "true" ]]; then
    "${repo_directory}wrapper" \
      "$proc_num" \
      "$build_directory" \
      "$msc" \
      "$mss" \
      repo_dir="${repo_directory}" \
      filename="${matrix_directory}${fname}" \
      algorithm="$alg" \
      mode="$mode" \
      thread_count="$threads" \
      device_id="$dev_id" \
      gpu_num="$gpu_num" \
      complex="$complex" \
      binary="$binary" \
      undirected="$undirected" \
      calculation_precision="$calc_prec"
    if [[ $? -ne 0 ]]; then
      echo "Execution of wrapper failed for matrix-specific compilation on file ${fname}"
      exit 1
    fi
  else
    "${repo_directory}wrapper" \
      "$proc_num" \
      "$build_directory" \
      "$msc" \
      repo_dir="${repo_directory}" \
      filename="${matrix_directory}${fname}" \
      algorithm="$alg" \
      mode="$mode" \
      thread_count="$threads" \
      device_id="$dev_id" \
      gpu_num="$gpu_num" \
      complex="$complex" \
      binary="$binary" \
      undirected="$undirected" \
      calculation_precision="$calc_prec"
    if [[ $? -ne 0 ]]; then
      echo "Execution of wrapper failed on file ${fname}"
      exit 1
    fi
  fi
done
