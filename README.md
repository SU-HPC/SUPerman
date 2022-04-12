# SUPerman
**Fast Sparse-Dense Matrix Permanent Computation Tool**  
*Note that this work is still in progress*

## Compile  
Tests ran on `gcc 9.4.0` and `CUDA 10.1`   
  
To compile SUPerman with CPU, GPU and hybrid algorithms:  
`make`  
To compile only GPU algorithms:  
`make gpu`  
To compile only CPU algorithms (128 bit precision supported only in this setting):  
`make cpu`  
To compile with CPU, GPU and MPI algorithms:  
`make mpi`  


Command Line Parameters
----------
- `-f, --file (required)`: Requires a value which indicates the path for the input matrix.
- `-p, --perman (optional)`: Requires a value which indicates the algorithm id of the algorithm for permanent calculation. `Default value is 1`.
- `-t, --threads (optional)`: Requires a value which indicates the number of threads to be used in CPU. `Default value is 16`.
- `-s, --sparse (optional)`: When used, sparse algorithm will be chosen. If not specified, a dense algorithm will be chosen by default.
- `-b, --binary (optional)`: When used, matrix will be treated as binary matrix where all values are 1. If not specified, original values of the matrix will be used by default.
- `-g, --gpu (optional)`: When used, permanent calculations will be run on GPU. If not specified, and `-c` is specified, calculations will be run on CPU.
- `-d, --device (optional)`: Requires a value which indicates the number of devices to be used in a multigpu algorithm. `Default value is 2`.
- `-c, --cpu (optional)`: When used, permanent calculations will be run on CPU, if and only if `-g` is not specified. If `-c` is not specified, calculations will be run on GPU by default. If `-g` and `-c` is specified at the same time, hybrid algorithm is chosen.
- `-a, --approximation (optional)`: When used, an approximation algorithm will be chosen. If not specified, an exact algorithm will be chosen by default.
- `-x, --numOfTimes (optional)`: Requires a value which indicates number of trials for an approximation algorithm. `Default value is 100000`.
- `-y, --scaleIntervals (optional)`: Requires a value which indicates scale intervals for an scaling approximation algorithm. `Default value is 4`.
- `-z, --scaleTimes (optional)`: Requires a value which indicates number of time to scale for an scaling approximation algorithm. `Default value is 5`.
- `-r, --preprocessing (optional)`: Requires a value which indicates the preprocessing to be applied. If `1` is specified, `SortOrder` is applied. If `2` is specified, `SkipOrder` is applied. If not specified, there will be no preprocessing.
- `-i, --grid (optional)`: When used, a grid graph will be created using `--gridm` and `gridn` dimensions, and a sparse approximation algorithm will be chosen by `--perman`.
- `-m, --gridm (optional)`: Requires a value which indicates the first dimension of the grid graph. `Default value is 36`.  
- `-n, --gridn (optional)`: Requires a value which indicates the second dimension of the grid graph. `Default value is 36`.    
`-h (optional)`: Use 32 bit data type for calculation. `(Default is 64)`  
`-q (optional)`: Use 128 bit data type for calculation. Available only for CPU. `(Default is 64)`  
`-w (optional)`: Use 32 bit data type for storage. `(Default is 64 for real matrices, 32 for integer and binary matrices)`  
`-v (optional)`: Use 128 bit data type for storage. Available only for CPU. `(Default is 64)`  
`-l (optional)`: Choose GPU with id `l` to run single GPU algorithm.  
`-k (optional)`: Repeat calculation `k` times.  
`-e (optional)`: Multiply CUDA run-time chosen grid dimension for GPU algorithms with `e`.  
`-o (optional)`: Enable decompression.  
`-u <value> (optional) `: Scale input matrix to `value`  

  


| Implementations                                                | Feature    |        |                | Flags |      |     |    |     |     |       |            |
|----------------------------------------------------------------|------------|--------|----------------|-------|------|-----|----|-----|-----|-------|------------|
|                                                                | Device     | Value  | Representation | -c    | -t   | -g  | -p | -a  | -s  | -r    | Assumption |
| parallel_perman64()                                            | CPU        | Exact  | Dense          | 1     | 1-64 | -,0 | 1  | -,0 | -,0 | -     |            |
| parallel_perman64_sparse()                                     | CPU        | Exact  | Sparse         | 1     | 1-64 | -,0 | 1  | -,0 | 1   | -,1,2 | -r1        |
| parallel_skip_perman64_w()                                     | CPU        | Exact  | Sparse         | 1     | 1-64 | -,0 | 2  | -,0 | 1   | -,1,2 | -r2        |
| parallel_skip_perman64_w_balanced()                            | CPU        | Exact  | Sparse         | 1     | 1-64 | -,0 | 3  | -,0 | 1   | -,1,2 | -r2        |
| rasmussen()                                                    | CPU        | Approx | Dense          | 1     | 1-64 | -,0 | 1  | 1   | -,0 | -     |            |
| approximation_perman64()                                       | CPU        | Approx | Dense          | 1     | 1-64 | -,0 | 2  | 1   | -,0 | -     |            |
| rasmussen_sparse()                                             | CPU        | Approx | Sparse         | 1     | 1-64 | -,0 | 1  | 1   | 1   | -     |            |
| approximation_perman64_sparse()                                | CPU        | Approx | Sparse         | 1     | 1-64 | -,0 | 2  | 1   | 1   | -     |            |
| gpu_perman64_xglobal()                                         | GPU        | Exact  | Dense          | -,0   | -    | 1   | 21 | -,0 | -,0 | -     |            |
| gpu_perman64_xlocal()                                          | GPU        | Exact  | Dense          | -,0   | -    | 1   | 1  | -,0 | -,0 | -     |            |
| gpu_perman64_xshared()                                         | GPU        | Exact  | Dense          | -,0   | -    | 1   | 2  | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc()                                     | GPU        | Exact  | Dense          | -,0   | -    | 1   | 3  | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_plainmatrix()                         | GPU        | Exact  | Dense          | -,0   | -    | 1   | 31 | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_plainmatrix_texfour() - Trivial       | GPU        | Exact  | Dense          | -,0   | -    | 1   | 32 | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_plainmatrix_texeight() - Trivial      | GPU        | Exact  | Dense          | -,0   | -    | 1   | 33 | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_plainmatrix_mshared()                 | GPU        | Exact  | Dense          | -,0   | -    | 1   | 4  | -,0 | -,0 | -     |            |
| gpu_perman64_xregister_lbc_plainmatrix_mshared()               | GPU        | Exact  | Dense          | -,0   | -    | 1   | 35 | -,0 | -,0 | -     |            |
| gpu_perman64_xregister_lbc_plainmatrix_mshared_mpi()           | Dist. GPUs | Exact  | Dense          | -,0   | -    | 1   | 36 | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_plainmatrix_mshared()                 | GPU        | Exact  | Dense          | -,0   | -    | 1   | 4  | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_mshared_multigpu()                    | GPU+       | Exact  | Dense          | -,0   | -    | 1   | 5  | -,0 | -,0 | -     |            |
| gpu_perman64_xshared_lbc_mshared_multigpucpu_chunks()          | GPU+CPU    | Exact  | Dense          | -,0,1 | 1-64 | 1   | 7  | -,0 | -,0 | -     |            |
| gpu_perman64_xlocal_sparse()                                   | GPU        | Exact  | Sparse         | -,0   | -    | 1   | 1  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_sparse()                                  | GPU        | Exact  | Sparse         | -,0   | -    | 1   | 2  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_lbc_sparse()                              | GPU        | Exact  | Sparse         | -,0   | -    | 1   | 3  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_lbc_mshared_sparse()                      | GPU        | Exact  | Sparse         | -,0   | -    | 1   | 4  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_lbc_mshared_skipper()                     | GPU        | Exact  | Sparse+        | -,0   | -    | 1   | 14 | -,0 | 1   | -1,2  | -r2        |
| gpu_perman64_xshared_lbc_mshared_multigpu_sparse()             | GPU+       | Exact  | Sparse         | -,0   | -    | 1   | 5  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_lbc_mshared_multigpucpu_chunks_sparse()   | GPU+CPU    | Exact  | Sparse         | -,0,1 | 1-64 | 1   | 7  | -,0 | 1   | -,1,2 | -r1        |
| gpu_perman64_xshared_lbc_mshared_multigpucpu_chunks_skipper()  | GPU+CPU    | Exact  | Sparse+        | -,0,1 | 1-64 | 1   | 17 | -,0 | 1   | -,1,2 | -r2        |
| gpu_perman64_rasmussen_global()                                | GPU        | Approx | Dense          | -,0   | -    | 1   | 1  | 1   | -,0 | -     |            |
| gpu_perman64_rasmussen_shared()                                | GPU        | Approx | Dense          | -,0   | -    | 1   | 2  | 1   | -,0 | -     |            |
| gpu_perman64_approximation_global()                            | GPU        | Approx | Dense          | -,0   | -    | 1   | 3  | 1   | -,0 | -     |            |
| gpu_perman64_approximation_shared()                            | GPU        | Approx | Dense          | -,0   | -    | 1   | 4  | 1   | -,0 | -     |            |
| gpu_perman64_rasmussen_global_multigpucpu_chunks()             | GPU+CPU    | Approx | Dense          | -,0,1 | 1-64 | 1   | 5  | 1   | -,0 | -     |            |
| gpu_perman64_rasmussen_shared_multigpucpu_chunks()             | GPU+CPU    | Approx | Dense          | -,0,1 | 1-64 | 1   | 6  | 1   | -,0 | -     |            |
| gpu_perman64_approximation_global_multigpucpu_chunks()         | GPU+CPU    | Approx | Dense          | -,0,1 | 1-64 | 1   | 7  | 1   | -,0 | -     |            |
| gpu_perman64_approximation_shared_multigpucpu_chunks()         | GPU+CPU    | Approx | Dense          | -,0,1 | 1-64 | 1   | 8  | 1   | -,0 | -     |            |
| gpu_perman64_rasmussen_global_sparse()                         | GPU        | Approx | Sparse         | -,0   | -    | 1   | 1  | 1   | 1   | -     |            |
| gpu_perman64_rasmussen_shared_sparse()                         | GPU        | Approx | Sparse         | -,0   | -    | 1   | 2  | 1   | 1   | -     |            |
| gpu_perman64_approximation_global_sparse()                     | GPU        | Approx | Sparse         | -,0   | -    | 1   | 3  | 1   | 1   | -     |            |
| gpu_perman64_approximation_shared_sparse()                     | GPU        | Approx | Sparse         | -,0   | -    | 1   | 4  | 1   | 1   | -     |            |
| gpu_perman64_rasmussen_global_multigpucpu_chunks_sparse()      | GPU+CPU    | Approx | Sparse         | -,0,1 | 1-64 | 1   | 5  | 1   | 1   | -     |            |
| gpu_perman64_rasmussen_shared_multigpucpu_chunks_sparse()      | GPU+CPU    | Approx | Sparse         | -,0,1 | 1-64 | 1   | 6  | 1   | 1   | -     |            |
| gpu_perman64_approximation_global_multigpucpu_chunks_sparse()  | GPU+CPU    | Approx | Sparse         | -,0,1 | 1-64 | 1   | 7  | 1   | 1   | -     |            |
| gpu_perman64_approximation_shared_multigpucpu_chunks_sparse()  | GPU+CPU    | Approx | Sparse         | -,0,1 | 1-64 | 1   | 8  | 1   | 1   | -     |


## Example Commands

- `./gpu_perman -f ex.mtx -p 1`  
gpu_perman_xlocal() is called for GPU device 0  

- `./gpu_perman -f ex.mtx -p 1 -b`  
gpu_perman_xlocal() is called for GPU device 0 and matrix is converted to pattern

- `./gpu_perman -f ex.mtx -s -p 1 -b`  
gpu_perman_xlocal_sparse() is called for GPU device 0 and matrix is converted to pattern

- `./gpu_perman -f ex.mtx -s -p 1 -l2`  
gpu_perman_xlocal_sparse() is called for GPU device 2.

- `./gpu_perman -f ex.mtx -s -p 1 -b`  
gpu_perman_xlocal_sparse() is called for GPU device 0 and matrix is converted to pattern

- `./gpu_perman -f ex.mtx -s -p 1 -c -t 32`  
parallel_perman_sparse() is called for with 32 threads

- `./gpu_perman -f ex.mtx -p 5 -d 4`  
gpu_perman64_xshared_lbc_mshared_multigpu() is called to run on 4 GPUS.

- `./gpu_perman -f ex.mtx -s -p 5 -d 4 -c -t 64`  
gpu_perman64_xshared_lbc_mshared_multigpucpu_chunks_sparse() is called to run on 4 GPUS and 64 CPU threads.

- `mpi_run -np 16 ./mpi_perman -f ex.mtx -s -p 5 -d 4 -c -t 64`  
gpu_perman64_xregister_lbc_plainmatrix_mshared_mpi() is called to run on 16 distributed GPUS.

- `./cpu_perman -f ex.mtx -s -p 1 -c -t 32 -q -v`  
parallel_perman_sparse() is called for with 32 threads, 128 bit data type for calculation and storage is used.

