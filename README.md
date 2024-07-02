# SUPerman - An Efficient Permanent Computation Library

## Step-by-Step Guide

### Direct Execution Method

1. **Execute `./build.sh` Command from Within the Source Directory**

   Run the `build.sh` script to set up the necessary environment and dependencies for building the project.
    ```bash
    ./build.sh
    ```

2. **Create a Build Directory for Build Files**

   Create a directory where the build files will be generated.
    ```bash
    mkdir build
    cd build
    ```

3. **Run the Following Commands Successively within the Newly Created Build Directory**

   First, configure the project with `cmake`:
    ```bash
    cmake ..
    ```

   Then, compile the project with `make`:
    ```bash
    make
    ```

4. **Run the Executable with Necessary Arguments**

   You can now run the `SUPerman` executable by providing the necessary arguments. For example:
    ```bash
    ./SUPerman filename="/path/to/matrix.mtx" mode="single_gpu"
    ```

### Using the Bash Script Method

Alternatively, you can configure and run the provided bash script to execute the `SUPerman` program with predefined arguments.

1. **Execute `./build.sh` Command from Within the Source Directory**

   Run the `build.sh` script to set up the necessary environment and dependencies for building the project.
    ```bash
    ./build.sh
    ```

2. **Create a Build Directory for Build Files**

   Create a directory where the build files will be generated.
    ```bash
    mkdir build
    cd build
    ```

3. **Run the Following Commands Successively within the Newly Created Build Directory**

   First, configure the project with `cmake`:
    ```bash
    cmake ..
    ```

   Then, compile the project with `make`:
    ```bash
    make
    ```

4. **Configure the Bash Script**

   Edit the bash script to set the appropriate paths and parameters. Here is the sample script:

    ```bash
    #!/bin/bash

    build_directory="build"
    matrix_directory="/common_data/matrices/"
    filenames=("cage5.mtx" "football.mtx" "GD95_a.mtx")
    algorithms=("auto" "auto" "auto")
    modes=("single_gpu" "single_gpu" "single_gpu")
    thread_counts=(16 16 16)
    device_ids=(0 0 0)
    gpu_nums=(1 1 1)
    binarys=("false" "false" "true")
    scalings=("false" "false" "false")
    scaling_thresholds=(0 0 0)

    for i in "${!filenames[@]}"; do
        ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${binarys[$i]}" scaling="${scalings[$i]}" scaling_threshold="${scaling_thresholds[$i]}"
    done
    ```

5. **Run the Bash Script**

   Make the script executable and run it:
    ```bash
    chmod +x run_SUPerman.sh
    ./run_SUPerman.sh
    ```