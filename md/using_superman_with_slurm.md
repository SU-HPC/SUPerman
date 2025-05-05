## superman_slurm.slurm

High-performance computing (HPC) clusters and supercomputers have long been used to compute matrix permanents. These systems rely heavily on job schedulers—such as Slurm—to efficiently allocate resources. Fortunately, using SUPerman with Slurm is very similar to running it with `run_superman.sh` (explained in detail in [run_superman.md](run_superman.md)).

An example Slurm script is provided [here](../superman_slurm.slurm). In this script, you will notice a structure similar to that in `run_superman.sh`, with additional Slurm resource management commands that allow you to allocate the appropriate resources for your job.

### Resource Allocation

SUPerman currently computes the permanent of a 45×45 matrix in approximately 142 seconds using a single Nvidia H100 GPU (excluding compilation time, which takes an additional ~3 minutes). For example, if you have a 50×50 matrix, the estimated computation time is roughly `142 × 2^(50 - 45)`, which is approximately 75 minutes. This estimation allows you to allocate just enough resources based on your matrix size.

### Module Loading and Directory Paths

It is essential to ensure that the correct modules are loaded within the Slurm script. These modules must meet the minimum hard/soft requirements as specified in [README.md](../README.md). Also, make sure to correctly specify the absolute paths for the repository, matrix, and build directories, as these paths are crucial during the compilation process.

### Pipe Permissions

SUPerman utilizes pipes located in the `/tmp/` directory, as explained in the [run_superman.md](run_superman.md) tutorial. Proper permissions for creating, reading, and writing these pipes are critical. If SUPerman cannot access the pipes, it will warn you and stop execution immediately. In such cases, consider changing the directory to one where you have the necessary permissions (for example, your home directory). To do so, modify the `PIPE_NAME` macros declared at the top of both [Helpers.h](../CommonFiles/Helpers.h) and [wrapper.cpp](../wrapper.cpp).

### Multi-Node Command Setup

To run **SUPerman** on a multi-node cluster with Slurm, you need to adjust a few settings. First, set the `modes` parameter to `multi_gpu_mpi` and change the `processor_num` parameter to a value greater than 1, as outlined in [run_superman.md](run_superman.md).

Slurm requires that multi-node jobs be launched using `srun`. This means you must modify the execution commands in the `wrapper.cpp` file ([wrapper.cpp](../wrapper.cpp)). In this file, locate the two lines where SUPerman is executed (found on lines 223 and 258):

```cpp
firstProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + " " + firstProgramArguments;
secondProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + " " + secondProgramArguments;
```

Replace these lines with the following commands to use srun instead:

```cpp
firstProgramArguments = "srun -n " + std::to_string(processorNumber) + " " + firstProgramArguments;
secondProgramArguments = "srun -n " + std::to_string(processorNumber) + " " + secondProgramArguments;
```