#!/bin/bash

#SBATCH -J superman_2
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 10
#SBATCH --partition=akya-cuda
#SBATCH --constraint=akya-cuda
#SBATCH --gres=gpu:2
#SBATCH --time=1-0:00:00
#SBATCH --output=/truba/home/delbek/SUPerman/res/superman2-%j.out
#SBATCH --error=/truba/home/delbek/SUPerman/res/superman2-%j.err

echo "SLURM NODELIST $SLURM_NODELIST"
echo "NUMBER OF SLURM CORES $SLURM_NTASKS"

module purge

# CMAKE
module load centos7.3/comp/cmake/3.18.0

# GCC
module load centos7.3/comp/gcc/7

# CUDA
module load centos7.3/lib/cuda/10.1

# OpenMPI
module load centos7.3/lib/openmpi/4.0.1-gcc-7.0.1
module load centos7.3/lib/openmpi/4.0.1-intel-PS2018

# Python
module load centos7.3/comp/python/3.5.5-intel
module load centos7.3/comp/python/3.6.5-gcc

# OMP
module load centos7.3/comp/intel/PS2019-update1
module load centos7.3/comp/intel/PS2018-update2

# repo path
repo_path=/truba/home/delbek/SUPerman/

# matrix dir path
matrix_directory=/truba/home/delbek/test_matrices/

# build dir path
build_directory=/truba/home/delbek/SUPerman/build/

# output dirs
mkdir -p ${repo_path}2_gpu_results/normal
mkdir -p ${repo_path}2_gpu_results/mat_optimized

filenames=(
"deniz_dense_30.mtx"
"deniz_dense_32.mtx"
"deniz_dense_35.mtx"
"deniz_dense_40.mtx"
"deniz_dense_45.mtx"
"deniz_dense_48.mtx"
"deniz_dense_50.mtx"
"deniz_sparse_%25_30.mtx"
"deniz_sparse_%25_32.mtx"
"deniz_sparse_%25_35.mtx"
"deniz_sparse_%25_40.mtx"
"deniz_sparse_%25_45.mtx"
"deniz_sparse_%25_48.mtx"
"deniz_sparse_%25_50.mtx"
)

algorithms=("auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto")
modes=("multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu" "multi_gpu")
thread_counts=(10 10 10 10 10 10 10 10 10 10 10 10 10 10)
device_ids=(0 0 0 0 0 0 0 0 0 0 0 0 0 0)
gpu_nums=(2 2 2 2 2 2 2 2 2 2 2 2 2 2)
is_binary=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
is_undirected=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
requires_scaling=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
scaling_iteration_nos=(100 100 100 100 100 100 100 100 100 100 100 100 100 100)
chunk_partitionings=(5 5 5 5 5 5 5 5 5 5 5 5 5 5)

export OMP_NUM_THREADS=${10}

extract_matrix_size() {
  local filename=$1
  local size=$(echo $filename | grep -o -E '[0-9]+\.mtx' | grep -o -E '[0-9]+')
  echo $size
}

build() {
  python3 ${repo_path}build_truba.py
  ${repo_path}scripts/build.sh
  mkdir -p ${build_directory}
  cd ${build_directory}
  cmake ${repo_path}
  make
}

build_mat_specific() {
  local size=$1
  python3 ${repo_path}build_truba.py ${size}
  ${repo_path}scripts/build.sh
  mkdir -p ${build_directory}
  cd ${build_directory}
  cmake ${repo_path}
  make
}

# Run kernels in normal mode
for i in "${!filenames[@]}"; do
  build
  output_file="${repo_path}2_gpu_results/normal/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done

# Run kernels in mat specific compilation
for i in "${!filenames[@]}"; do
  build_mat_specific "${filenames[$i]}"
  output_file="${repo_path}2_gpu_results/mat_optimized/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done
