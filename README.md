# SUPerman - Highly Efficient Permanent Computation Library

SUPerman is a state-of-the-art, complete software suite built for the efficient computation of matrix permanents. It supports a diverse range of matrix types, including real, complex, binary, sparse, and dense matrices, with specialized handling tailored to each type to maximize performance.

If you use this library in your research, please cite:
<br/><br/>
Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya. SUPerman: Efficient Permanent Computation on GPUs (2025).

If you use the ideas behind our state-of-the-art sparse matrix permanent code generation technique in your research, please cite:
<br/><br/>
Deniz Elbek and Kamer Kaya. Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs (2025). arXiv:2501.15126. URL: https://arxiv.org/abs/2501.15126


### Hard Requirements

| **Requirement** | **Minimum Version** |
| --------------- | ------------------- |
| C++             | `17`             |
| GCC             | `12.3.1`         |
| CMake           | `3.16.3`         |
| Linux OS        | -                   |

### Soft Requirements

| **Requirement** | **Minimum Version** |
| --------------- | ------------------- |
| CUDA            | `12.3`           |
| OpenMPI         | `4.1.4`          |


## Supported Algorithms

```plaintext
-----------------------------------------------------------------------------------------------------------
├── Dense
│   ├── CPU (cpu)
│   │   ├── Parallel Ryser
│   ├── Single-GPU
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
│   ├── Multi-GPU (single_gpu)
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
│   ├── Multi-GPU-MPI (multi_gpu_mpi)
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
├── Sparse (density < 0.5)
│   ├── CPU (cpu)
│   │   ├── Parallel SpaRyser
│   ├── Single-GPU
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
│   │   └── X-Global M-Shared (xglobal_mshared)
│   │   └── X-Global M-Global (xshared_mglobal)
│   ├── Multi-GPU (single_gpu)
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
│   │   └── X-Global M-Shared (xglobal_mshared)
│   │   └── X-Global M-Global (xshared_mglobal)
│   ├── Multi-GPU-MPI (multi_gpu_mpi)
│   │   ├── Naive Code Generation (naive_code_generation)
│   │   └── Hybrid Code Generation (register_efficient_code_generation)
│   │   └── X-Register M-Shared (xregister_mshared) (Kahan and Matrix-Specific Compilation are supported)
│   │   └── X-Register M-Global (xregister_mglobal)
│   │   └── X-Shared M-Shared (xshared_mshared)
│   │   └── X-Shared M-Global (xshared_mglobal)
│   │   └── X-Global M-Shared (xglobal_mshared)
│   │   └── X-Global M-Global (xshared_mglobal)
-----------------------------------------------------------------------------------------------------------
```


## Step-by-Step Guide

1. Open the run_superman.sh file, modify it as needed for your matrices, and save the changes.

2. Make the run_superman.sh executable by running the following command:

```bash 
  chmod +x run_superman.sh
```

3. Execute the run_superman.sh file from within the source directory:
```bash
  ./run_superman.sh
```


### MIT Licence
