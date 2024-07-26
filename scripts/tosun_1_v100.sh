#!/bin/bash

#SBATCH --partition=cuda
#SBATCH --account=cuda
#SBATCH --qos=cuda
#SBATCH --nodelist=cn04
#SBATCH -J superman_1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --gres=gpu:1
#SBATCH --mem=5G
#SBATCH --time=15-00:00:00  # 15 days
#SBATCH --output=out/superman_1-%j.out
##SBATCH --error=superman_1-%j.err


echo "SLURM NODELIST $SLURM_NODELIST"
echo "NUMBER OF SLURM CORES $SLURM_NTASKS"

module purge
module load cuda/10.2
module load cmake/3.16.3
module load gcc-5.3.0-gcc-9.2.0-7hkwitl

# job id
job_id=${SLURM_JOB_ID}

# repo path
repo_path=/cta/users/deniz.elbek/SUPerman/

# matrix dir path
matrix_directory=/cta/users/deniz.elbek/matrices/

# build dir path
build_directory=/cta/users/deniz.elbek/SUPerman/build/

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
"deniz_sparse_%25_50.mtx")

algorithms=("auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto" "auto")
modes=("single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu" "single_gpu")
thread_counts=(1 1 1 1 1 1 1 1 1 1 1 1 1 1)
device_ids=(0 0 0 0 0 0 0 0 0 0 0 0 0 0)
gpu_nums=(1 1 1 1 1 1 1 1 1 1 1 1 1 1)
is_binary=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
is_undirected=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
requires_scaling=("false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false" "false")
scaling_iteration_nos=(100 100 100 100 100 100 100 100 100 100 100 100 100 100)
chunk_partitionings=(5 5 5 5 5 5 5 5 5 5 5 5 5 5)

extract_matrix_size() {
  local filename=$1
  local size=$(echo $filename | grep -o -E '[0-9]+\.mtx' | grep -o -E '[0-9]+')
  echo $size
}

# output dirs
mkdir -p ${repo_path}1_gpu_results/normal
mkdir -p ${repo_path}1_gpu_results/mat_optimized

# Run kernels in normal mode
for i in "${!filenames[@]}"; do
  output_file=${repo_path}"1_gpu_results/normal/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done

# Run kernels in mat specific compilation
for i in "${!filenames[@]}"; do
  matrix_size=$(extract_matrix_size "${filenames[$i]}")
  python3 ${repo_path}build_superman.py ${matrix_size}
  output_file="${repo_path}1_gpu_results/mat_optimized/${filenames[$i]%.*}+${algorithms[$i]}.txt"
  ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}" >> "${output_file}"
done
