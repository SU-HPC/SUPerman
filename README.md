# SUPerman: Highly Efficient Permanent Computation Library

SUPerman is a state-of-the-art, complete software suite built for the efficient computation of matrix permanents. It supports a diverse range of matrix types, including real, complex, binary, sparse, and dense matrices, with specialized handling tailored to each type to maximize performance.

If you use this library in your research, please cite:
<br/><br/>
Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya. SUPerman: Efficient Permanent Computation on GPUs (2025).


### Hard Requirements

| **Requirement** | **Minimum Version** |
| --------------- | ------------------- |
| C++             | `17`             |
| GCC             | `10.5`         |
| CMake           | `3.16.3`         |
| Linux OS        | -                   |

### Soft Requirements

| **Requirement** | **Minimum Version** |
| --------------- | ------------------- |
| CUDA            | `12.3`           |
| OpenMPI         | `4.1.4`          |


## Step-by-Step Guide

1. Open the run_superman.sh file, modify it as needed for your matrices, and save the changes. 
- For a detailed description on how run_superman.sh works: [READ MORE](md/run_superman.md)
- For using run_superman.sh in combination with Slurm: [READ MORE](md/using_superman_with_slurm.md)

2. Make the run_superman.sh executable by running the following command:

```bash 
  chmod +x run_superman.sh
```

3. Execute the run_superman.sh file from within the source directory:
```bash
  ./run_superman.sh
```
