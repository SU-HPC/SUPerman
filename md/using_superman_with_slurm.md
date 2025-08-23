## superman_slurm.slurm

High-performance computing (HPC) clusters and supercomputers have long been used to compute matrix permanents. These systems rely heavily on job schedulers—such as Slurm—to efficiently allocate resources. Fortunately, using SUPerman with Slurm is very similar to running it with `run_superman.sh` (explained in detail in [run_superman.md](run_superman.md)).

An example Slurm script is provided [here](../superman_slurm.slurm). In this script, you will notice a structure similar to that in `run_superman.sh`, with additional Slurm resource management commands that allow you to allocate the appropriate resources for your job.

---

## Module Loading and Directory Paths

It is essential to ensure that the correct modules are loaded within the Slurm script. These modules must meet the minimum hard/soft requirements as specified in [README.md](../README.md).

---

## WARNING

As was the case in the `run_superman.sh`, the batch script should be submitted to the job scheduler from directly within the source directory through the following command:
```bash
sbatch superman_slurm.slurm
```