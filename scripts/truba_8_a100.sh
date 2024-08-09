#!/bin/bash

#SBATCH --job-name=superman_8
#SBATCH --account=proj13
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 128
#SBATCH --partition=palamut-cuda
#SBATCH --gres=gpu:8
#SBATCH --time=1-0:00:00
#SBATCH --output=/truba/home/delbek/SUPerman/res/superman8-%j.out
#SBATCH --error=/truba/home/delbek/SUPerman/res/superman8-%j.err

echo "SLURM NODELIST $SLURM_NODELIST"
echo "NUMBER OF SLURM CORES $SLURM_NTASKS"

module purge

# CMAKE
module load centos7.9/comp/cmake/3.24.0

# GCC
module load centos7.9/comp/gcc/7

# CUDA
module load centos7.9/lib/cuda/11.8

# OpenMPI
module load centos7.9/lib/openmpi/4.1.5-gcc-7

# Python
module load centos7.9/lib/intelpython3/2024.0.0

# repo path
repo_path=/truba/home/delbek/SUPerman/

# matrix dir path
matrix_directory=/truba/home/delbek/test_matrices/

# build dir path
build_directory=/truba/home/delbek/SUPerman/build/

# output dirs
mkdir -p ${repo_path}8_gpu_results/normal
mkdir -p ${repo_path}8_gpu_results/mat_optimized

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
modes=("multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi" "multi_gpu_mpi")
thread_counts=(16 16 16 16 16 16 16 16 16 16 16 16 16 16)
device_ids=(0 0 0 0 0 0 0 0 0 0 0 0 0 0)
gpu_nums=(8 8 8 8 8 8 8 8 8 8 8 8 8 8)
is_binary=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
is_undirected=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
requires_scaling=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
scaling_iteration_nos=(100 100 100 100 100 100 100 100 100 100 100 100 100 100)
chunk_partitionings=(5 5 5 5 5 5 5 5 5 5 5 5 5 5)

CPU_THREADS=16
export OMP_NUM_THREADS=${CPU_THREADS}
echo "Using ${CPU_THREADS} threads"

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
  output_file="${repo_path}8_gpu_results/normal/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done

# Run kernels in mat specific compilation
for i in "${!filenames[@]}"; do
  build_mat_specific "${filenames[$i]}"
  output_file="${repo_path}8_gpu_results/mat_optimized/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done
