#!/bin/bash
#SBATCH -J wr
#SBATCH --account=proj13
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=kolyoz-cuda
#SBATCH --gres=gpu:1
#SBATCH --time=0-0:10:00
#SBATCH --output=/arf/home/delbek/SUPerman/res/wr-%j.out
#SBATCH --error=/arf/home/delbek/SUPerman/res/wr-%j.err
#SBATCH --export=NONE

module purge
unset SLURM_EXPORT_ENV

source /etc/profile.d/modules.sh

module use /arf/sw/modulefiles
module load comp/cmake/3.31.1
if [ $? -ne 0 ]; then
  echo "Failed to load comp/cmake/3.31.1"
  exit 1
fi

module load comp/gcc/12.3.0
if [ $? -ne 0 ]; then
  echo "Failed to load comp/gcc/12.3.0"
  exit 1
fi

module load lib/cuda/12.4
if [ $? -ne 0 ]; then
  echo "Failed to load lib/cuda/12.4"
  exit 1
fi

repo_directory=/arf/home/delbek/SUPerman/
matrix_directory=/arf/home/delbek/test_matrices/
build_directory=/arf/home/delbek/SUPerman/build/
output_directory=${repo_directory}wr/

mkdir -p ${output_directory}

filenames=(
"deniz_dense_45.mtx"
)
# The filename of your matrix.
# If the filename ends with .mtx, the library assumes that the nonzero coordinates are 1-based.
# Otherwise, it assumes them to be 0-based.
# NO DEFAULT, absence of it is undefined!

algorithms=("auto")
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

processor_num=(1)
# The number of MPI nodes to use for the computation.
# Only relevant if the mode is "multi_gpu_mpi".
# NO DEFAULT, absence of it is undefined!
# UNDEFINED EXECUTION PATTERN IF: processor_num > 1 and mode != multi_gpu_mpi

is_complex=("false")
# If true, the library assumes the matrix to contain complex entries of the form (a + bi).
# DEFAULT: "false"

is_binary=("false")
# If true, the library assumes that the matrix edges are unweighted.
# DEFAULT: "false"

is_undirected=("false")
# If true, the library assumes that the matrix is undirected, meaning for every edge u -> v,
#                                                              there is also an edge v -> u.
# DEFAULT: "false"

matrix_specific_compilation=("false")
# Although not recommended to be set as "true", if so, the library compiles itself with specific matrix size
# (to be determined in the following argument) for improved efficiency, details of which is accessible in our paper.
# DEFAULT: "false"
matrix_specific_size=("40")
# NO DEFAULT, must be indicated if matrix_specific_compilation is true.

calculation_precision=("dd")
# Precision in which to compute the permanent
# DEFAULT: dd

printing_precision=(30)
# Precision in which to print the permanent result
# DEFAULT: 30

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export SRUN_CPUS_PER_TASK=$SLURM_CPUS_PER_TASK

g++ -std=c++17 "${repo_directory}wrapper.cpp" -o "${repo_directory}wrapper"
if [ $? -ne 0 ]; then
  echo "Compilation of wrapper.cpp failed!" >&2
  exit 1
fi

chmod +x "${repo_directory}wrapper"
if [ $? -ne 0 ]; then
  echo "chmod failed!" >&2
  exit 1
fi

for i in "${!filenames[@]}"; do
  output_file="${output_directory}out.txt"
  if [ "${matrix_specific_compilation[$i]}" = "true" ]; then
    "${repo_directory}wrapper" \
      "${processor_num[$i]}" \
      "${build_directory}" \
      "${matrix_specific_compilation[$i]}" \
      "${matrix_specific_size[$i]}" \
      repo_dir="${repo_directory}" \
      filename="${matrix_directory}${filenames[$i]}" \
      algorithm="${algorithms[$i]}" \
      mode="${modes[$i]}" \
      thread_count="${thread_counts[$i]}" \
      device_id="${device_ids[$i]}" \
      gpu_num="${gpu_nums[$i]}" \
      complex="${is_complex[$i]}" \
      binary="${is_binary[$i]}" \
      undirected="${is_undirected[$i]}" \
      calculation_precision="${calculation_precision[$i]}" \
      printing_precision="${printing_precision[$i]}" >> "${output_file}" 2>&1
    if [ $? -ne 0 ]; then
      echo "Execution of wrapper failed for matrix-specific compilation on file ${filenames[$i]}" >&2
      exit 1
    fi
  else
    "${repo_directory}wrapper" \
      "${processor_num[$i]}" \
      "${build_directory}" \
      "${matrix_specific_compilation[$i]}" \
      repo_dir="${repo_directory}" \
      filename="${matrix_directory}${filenames[$i]}" \
      algorithm="${algorithms[$i]}" \
      mode="${modes[$i]}" \
      thread_count="${thread_counts[$i]}" \
      device_id="${device_ids[$i]}" \
      gpu_num="${gpu_nums[$i]}" \
      complex="${is_complex[$i]}" \
      binary="${is_binary[$i]}" \
      undirected="${is_undirected[$i]}" \
      calculation_precision="${calculation_precision[$i]}" \
      printing_precision="${printing_precision[$i]}" >> "${output_file}" 2>&1
    if [ $? -ne 0 ]; then
      echo "Execution of wrapper failed on file ${filenames[$i]}" >&2
      exit 1
    fi
  fi
done
