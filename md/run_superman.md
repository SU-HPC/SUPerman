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
    - **Description:** The directory belonging to the repository.

- **Build Directory (`build_directory`):**
    - **Description:** The directory where build files will be dumped.

- **Matrix Directory (`matrix_directory`):**
    - **Description:** The directory where your matrix files are located.
  
-**Note:** Following settings can be given as an array of parameters, with the `ith` parameter in every setting determining a configuration for the `ith` matrix for which permanent computation will be made.

- **Matrix Filenames (`filenames`):**
    - **Description:** Matrix filename to be processed.
    - **Note:** If the filename ends with `.mtx`, the library assumes that the nonzero coordinates are 1-based; otherwise, 0-based.

- **Algorithm (`algorithms`):**
    - **Description:** The algorithm used to compute the permanent of your matrix.
    - **Note:** Although `"auto"` is recommended, you can manually select an algorithm. Supported algorithms are listed in [supported_algorithms.md](supported_algorithms.md).

- **Computation Mode (`modes`):**
    - **Description:** The mode in which the matrix permanent is computed.
    - **Options:**
        - `cpu`: Uses only the CPU (avoid if your matrix size exceeds 40x40).
        - `single_gpu`: Utilizes a single GPU (specified by `device_ids`).
        - `multi_gpu`: Uses multiple GPUs (number specified by `gpu_nums`).
        - `multi_gpu_mpi`: Uses multiple nodes, each with possibly multiple GPUs.

- **CPU Thread Count (`thread_counts`):**
    - **Description:** Number of CPU threads to use when computing on the CPU.

- **GPU Device ID (`device_ids`):**
    - **Description:** The GPU device ID used for `single_gpu` mode, or the target device for GPU kernel generation in multi-GPU modes.

- **Number of GPUs (`gpu_nums`):**
    - **Description:** Number of GPUs to use for computation (relevant for multi-GPU modes).

- **Processor Count (`processor_num`):**
    - **Description:** The number of MPI nodes to use (only relevant for `multi_gpu_mpi` mode).
    - **Note:** Undefined execution if `processor_num > 1` and `mode is not multi_gpu_mpi`.

- **Complex Matrix Flag (`is_complex`):**
    - **Description:** If `"true"`, the library assumes the matrix contains complex entries (formatted as `a + bi`).

- **Binary Matrix Flag (`is_binary`):**
    - **Description:** If `"true"`, the library assumes that the matrix edges are unweighted.

- **Undirected Matrix Flag (`is_undirected`):**
    - **Description:** If `"true"`, the matrix is assumed to be undirected (for every edge `u → v`, there is also an edge `v → u`).

- **Matrix-Specific Compilation (`matrix_specific_compilation`):**
    - **Description:** If `"true"`, the library compiles itself with a specific matrix size for improved efficiency (see our paper for details).

- **Matrix Specific Size (`matrix_specific_size`):**
    - **Description:** The specific matrix size to use if matrix-specific compilation is enabled.

- **Calculation Precision (`calculation_precision`):**
    - **Description:** Precision in which to compute the matrix permanent.

- **Printing Precision (`printing_precision`):**
    - **Description:** Precision in which to print the computed permanent.