# SUPerman - An Efficient Permanent Computation Library

## Step-by-Step Guide

1. Run the build script to compile the library using one of the commands below, depending on your Python installation:

```bash 
  python3 build_superman.py  # Use this if you have Python 3 installed
```

```bash
  python build_superman.py  # Use this if you have a different Python version installed
```

2. Open the run_SUPerman.sh file, modify it as needed for your matrices, and save the changes.

3. Execute the run_SUPerman.sh file from within the source directory:
```bash
  ./run_SUPerman.sh
```

## Matrix-Specific Compilation

SUPerman allows users to compile the library optimized specifically for the matrices they aim to calculate the permanent for. This method compiles a kernel tailored to the specific matrix, providing significant performance improvements, especially for matrices larger than 40x40. This method can reduce the execution time by approximately 1.7x in certain situations.

To utilize this compilation method, pass an integer parameter indicating the size of the matrix to the build_superman.py Python program, like so:

```bash 
  python3 build_superman.py 37  # Compiles the library optimized for a 37x37 matrix
```

In this example, the library will be compiled with optimizations based on the assumption that the permanent will be computed on a 37x37 matrix.

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
