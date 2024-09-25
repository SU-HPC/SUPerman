#!/bin/bash

#SBATCH -J superman_1
#SBATCH --account=proj13
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=palamut-cuda
#SBATCH --gres=gpu:1
#SBATCH --time=0-0:05:00
#SBATCH --output=/truba/home/delbek/1sp/SUPerman/res/superman1-%j.out
#SBATCH --error=/truba/home/delbek/1sp/SUPerman/res/superman1-%j.err
#SBATCH --export=ALL

source /etc/profile
module purge

# CMAKE
module load centos7.9/comp/cmake/3.24.0

# GCC
module load centos7.9/comp/gcc/7

# CUDA
module load centos7.9/lib/cuda/11.8

# Python
module load centos7.9/lib/intelpython3/2024.0.0

# repo path
repo_directory="/truba/home/delbek/1sp/SUPerman/"

# DO NOT MODIFY
build_directory="${repo_directory}build/"
cache="${build_directory}Cache.txt"
###############

matrix_directory="/truba/home/delbek/SparsePermanExperiments/"
# The directory under which your matrix files are located.

# output dirs
mkdir -p "${repo_directory}1_gpu_results/reg_efficient"

filenames=(
    sparse_matrix_40_0.150000.mtx
    sparse_matrix_40_0.200000.mtx
    sparse_matrix_40_0.250000.mtx
    sparse_matrix_40_0.300000.mtx
    sparse_matrix_40_0.350000.mtx
    sparse_matrix_40_0.400000.mtx
    sparse_matrix_40_0.450000.mtx
    sparse_matrix_40_0.500000.mtx
    sparse_matrix_45_0.150000.mtx
    sparse_matrix_45_0.200000.mtx
    sparse_matrix_45_0.250000.mtx
    sparse_matrix_45_0.300000.mtx
    sparse_matrix_45_0.350000.mtx
    sparse_matrix_45_0.400000.mtx
    sparse_matrix_45_0.450000.mtx
    sparse_matrix_45_0.500000.mtx
    sparse_matrix_48_0.150000.mtx
    sparse_matrix_48_0.200000.mtx
    sparse_matrix_48_0.250000.mtx
    sparse_matrix_48_0.300000.mtx
    sparse_matrix_48_0.350000.mtx
    sparse_matrix_48_0.400000.mtx
    sparse_matrix_48_0.450000.mtx
    sparse_matrix_48_0.500000.mtx
    sparse_matrix_50_0.150000.mtx
    sparse_matrix_50_0.200000.mtx
    sparse_matrix_50_0.250000.mtx
    sparse_matrix_50_0.300000.mtx
    sparse_matrix_50_0.350000.mtx
    sparse_matrix_50_0.400000.mtx
    sparse_matrix_50_0.450000.mtx
    sparse_matrix_50_0.500000.mtx
)

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}

kernel_compilation_check()
{
    local file=${1}
    if [[ -f "${file}" ]]; then
        # shellcheck disable=SC2155
        local content=$(cat "${file}")
        if [[ "${content}" -eq 1 ]]; then
            return 0
        else
            return 1
        fi
    else
        return 1
    fi
}

build()
{
  mkdir -p "${build_directory}"
  cmake -S . -B "${build_directory}"
  make -C "${build_directory}" -j 4
}

for i in "${!filenames[@]}"; do
    rm -rf "${build_directory}"
    echo "SUPERMAN IS BEING COMPILED ..."
    build > /dev/null 2>&1
    "${build_directory}SUPerman" repo_dir="${repo_directory}" filename="${matrix_directory}${filenames[$i]}" algorithm="register_efficient_code_generation" mode="single_gpu" thread_count="${SLURM_CPUS_PER_TASK}"
    if kernel_compilation_check "$cache"; then
      echo "KERNELS ARE BEING COMPILED ..."
      build > /dev/null 2>&1
      "${build_directory}SUPerman" repo_dir="${repo_directory}" filename="${matrix_directory}${filenames[$i]}" algorithm="register_efficient_code_generation" mode="single_gpu" thread_count="${SLURM_CPUS_PER_TASK}"
    fi
done
