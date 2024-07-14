# SUPerman - An Efficient Permanent Computation Library

## Step-by-Step Guide

### Direct Execution Method

1. **Execute `./build.sh` Command from Within the Source Directory**

   Run the `build.sh` script to set up the necessary environment and dependencies for building the project.
    ```bash
    chmod +x build.sh
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
    chmod +x build.sh
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

   Edit the bash script to set the appropriate paths and parameters. Here is a sample script:

    ```bash
   #!/bin/bash
   
   build_directory="build"
   matrix_directory="/common_data/matrices/"
   filenames=("football.mtx" "GD95_a.mtx")
   algorithms=("auto" "auto")
   modes=("single_gpu" "single_gpu")
   thread_counts=(44 44)
   device_ids=(0 0)
   gpu_nums=(1 1)
   is_binary=("false" "true")
   is_undirected=("true" "false")
   requires_scaling=("false" "false")
   scaling_iteration_nos=(10000 10000)
   chunk_partitionings=(5 5)
   
   for i in "${!filenames[@]}"; do
   ${build_directory}/SUPerman filename="${matrix_directory}${filenames[$i]}" algorithm="${algorithms[$i]}" mode="${modes[$i]}" thread_count="${thread_counts[$i]}" device_id="${device_ids[$i]}" gpu_num="${gpu_nums[$i]}" binary="${is_binary[$i]}" undirected="${is_undirected[$i]}" scaling="${requires_scaling[$i]}" scaling_iteration_no="${scaling_iteration_nos[$i]}" chunk_partitioning="${chunk_partitionings[$i]}"
   done
    ```

5. **Run the Bash Script**

   Make the script executable and run it:
    ```bash
    chmod +x run_SUPerman.sh
    ./run_SUPerman.sh
    ```

## Matrix-Specific Compilation

SUPerman enables users to compile the library optimized specifically for the matrices for which they aim to calculate the permanent. This method compiles a kernel that is tailored to the matrix at hand providing a significant performance improvement. It is particularly beneficial for matrices larger than 40x40, where it can reduce execution time by approximately 1.6x.

### Steps for Matrix-Specific Compilation

To utilize this compilation method, follow these two essential steps:

1. **Modify the `build.sh` Script**

   Locate the `build.sh` script in the source directory and find the section designated for matrix-specific compilation. You will see placeholder variables intended for customization:

   ```bash
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   SPECIFIC_VAR=REGISTERS35 # EXAMPLE
   NOV_VAR=35 # EXAMPLE
   MAT_SPECIFIC_COMPILATION=false
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   ```

   Replace the placeholder values based on your matrix dimensions. For example, if your matrix is 44x44, update the script as follows:

   ```bash
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   SPECIFIC_VAR=REGISTERS44
   NOV_VAR=44
   MAT_SPECIFIC_COMPILATION=true
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   ```

   This update changes `NOV_VAR` to 44 and `SPECIFIC_VAR` to `REGISTERS44`, while setting the `MAT_SPECIFIC_COMPILATION` flag to `true`.

2. **Update `CMakeLists.txt`**

   Similar to the `build.sh` script, you need to update the `CMakeLists.txt` file with matrix-specific settings:

   ```cmake
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   add_compile_definitions(SPECIFIC=REGISTERS35) # EXAMPLE
   add_compile_definitions(NOV=35) #EXAMPLE
   # add_definitions(-DMAT_SPECIFIC_COMPILATION)
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   ```

   Modify it according to your specific matrix size:

   ```cmake
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   add_compile_definitions(SPECIFIC=REGISTERS44)
   add_compile_definitions(NOV=44)
   add_definitions(-DMAT_SPECIFIC_COMPILATION)
   ### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
   ```

   Here, `NOV` is set to 44, `SPECIFIC` to `REGISTERS44`, and the `MAT_SPECIFIC_COMPILATION` macro is enabled.

3. **Compile and Run the Library**

   You can now compile and run the library using either the Direct Execution Method or the Bash Script Method, as detailed earlier in the tutorial.

### Important Note on Matrix-Specific Compilation

During execution, if you encounter the following error, please refer to the troubleshooting tips below:

```error
It seems that you have made a matrix specific compilation but the size of the matrix does not match with that of your indicated size during compilation. Perhaps decomposition reduced the size on the runtime? Read README.md for details.
```

This error can arise from:

1. Incorrect compile-time definitions that do not match the matrix size at runtime.
2. Correct compile-time definitions initially, but the library's decomposition process reduced the matrix size during execution.

If the definitions were correct, it's likely that decomposition successfully reduced the matrix's size. In this case, we recommend you not to use matrix-specific compilation.

# SU-HPC
