## run_superman.sh

`SUPerman` employs advanced compilation strategies to maximize performance. For certain algorithms, it uses code generation techniques that require the separate compilation of generated kernels and additional linking during runtime.

To make the library accessible to users from all backgrounds, we provide the `run_superman.sh` script, which automates all the necessary intermediate steps for a successful execution.
Using the `run_superman.sh` script to compute matrix permanents is incredibly straightforward. The detailed usage is provided below.

---

## 1. Example Script

An example `run_superman.sh` script is provided [here](../run_superman.sh).

Upon opening this script, you will see a variety of settings that you can modify to tailor the computation to your needs. Each setting is explained both in the file (as comments) and briefly summarized below.

---

## 2. Settings

Below is a compact summary of the settings in the `run_superman.sh` script:

- **Repository Directory (`repo_directory`):**
    - The directory belonging to the repository.

- **Build Directory (`build_directory`):**
    - The directory into which the build files will be dumped.
    - **WARNING:** Please never modify this.

- **Matrix Directory (`matrix_directory`):**
    - The directory under which your matrix files are located.

- **Matrix Filenames (`filenames`):**
    - The filename of your matrix.
    - **Note:** If the filename ends with .mtx, the library assumes that the nonzero coordinates are 1-based. Otherwise, it assumes them to be 0-based.

- **Algorithm (`algorithms`):**
    - The algorithm used to compute the permanent of your matrix.
    - **Note:** "auto" lets the library select the fastest algorithm available.

- **Computation Mode (`modes`):**
    - The mode in which the matrix permanent is computed.
    - **Options:**
        - cpu: Uses only the CPU (very slow; avoid if your matrix size exceeds 40x40).
        - single_gpu: Utilizes a single GPU (specified by device_id) during the computation.
        - multi_gpu: Uses multiple GPUs (number specified by gpu_num) per-task for the computation.
        - multi_gpu_mpi: Uses multiple tasks (perhaps coming from multiple nodes), each with possibly multiple GPUs.

- **CPU Thread Count (`thread_counts`):**
    - The number of CPU threads the library will use when computing the permanent on the CPU.
    - **Note:** Only relevant if the mode is "cpu".

- **GPU Device IDs (`device_ids`):**
    - Either the device ID of the GPU used for the computation if the mode is "single_gpu" or the device ID for which the GPU kernels are generated if the mode is "multi_gpu" or "multi_gpu_mpi".

- **Number of GPUs (`gpu_nums`):**
    - The number of GPUs used for the computation per-task.
    - **Note:** Only relevant if the mode is "multi_gpu" or "multi_gpu_mpi".

- **Processor Count (`processor_num`):**
    - The number of MPI tasks (perhaps coming from multiple nodes) to use for the computation.
    - **Note:** Only relevant if the mode is "multi_gpu_mpi".
    - **WARNING:** Undefined execution pattern if: processor_num > 1 and mode != multi_gpu_mpi.

- **Complex Matrix Flag (`is_complex`):**
    - If true, the library assumes the matrix to contain complex entries of the form (a + bi).

- **Binary Matrix Flag (`is_binary`):**
    - If true, the library assumes that the matrix edges are unweighted.

- **Undirected Matrix Flag (`is_undirected`):**
    - If true, the library assumes that the matrix is undirected, meaning for every edge u -> v, there is also an edge v -> u.

- **Matrix-Specific Compilation (`matrix_specific_compilation`):**
    - Although not recommended to be set as "true" (unless the matrix has complex entries, in which case we highly recommend it), if so, the library compiles itself with specific matrix size (to be determined in the following argument) for improved efficiency, details of which is accessible in our paper.

- **Matrix Specific Size (`matrix_specific_size`):**
    - The specific matrix size to use if matrix-specific compilation is enabled.

- **Calculation Precision (`calculation_precision`):**
    - Precision in which to compute the permanent.

- **Printing Precision (`printing_precision`):**
    - Precision in which to print the computed permanent.