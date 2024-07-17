#!/bin/bash

### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION
SPECIFIC_VAR=REGISTERS40
NOV_VAR=40
MAT_SPECIFIC_COMPILATION=false
### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION

find_mpi() {
    if command -v mpicxx >/dev/null 2>&1; then
        MPI_INCLUDE_DIRS=$(mpicxx -showme:incdirs | tr ' ' '\n')
        MPI_CXX_COMPILE_FLAGS=$(mpicxx -showme:compile)
        MPI_CXX_LINK_FLAGS=$(mpicxx -showme:link)
        MPI_LIB_DIRS=$(mpicxx -showme:libdirs | tr ' ' '\n')
        MPI_LIBS=$(mpicxx -showme:libs | tr ' ' '\n')
        MPI_FOUND=true
    else
        MPI_FOUND=false
    fi
}

find_cuda() {
    if [ -d "/usr/local/cuda/lib64" ]; then
        CUDA_LIB_DIR="/usr/local/cuda/lib64"
        CUDA_FOUND=true
    elif [ -d "/usr/local/cuda/lib" ]; then
        CUDA_LIB_DIR="/usr/local/cuda/lib"
        CUDA_FOUND=true
    else
        CUDA_FOUND=false
    fi
}

find_mpi
find_cuda

if [ "$MPI_FOUND" = true ] && [ "$CUDA_FOUND" = true ]; then
    echo "MPI and CUDA found."
    echo "Include directories: $MPI_INCLUDE_DIRS"
    echo "Compile flags: $MPI_CXX_COMPILE_FLAGS"
    echo "Link flags: $MPI_CXX_LINK_FLAGS"
    echo "Lib directories: $MPI_LIB_DIRS"
    echo "Libs: $MPI_LIBS"
    echo "CUDA library directory: $CUDA_LIB_DIR"

    # nvcc
    INCLUDE_DIRS=""
    for dir in $MPI_INCLUDE_DIRS; do
        INCLUDE_DIRS="$INCLUDE_DIRS -I$dir"
    done

    # linking cuda
    LIB_DIRS="-L$CUDA_LIB_DIR"
    for dir in $MPI_LIB_DIRS; do
        LIB_DIRS="$LIB_DIRS -L$dir"
    done

    #  linking mpi
    LIBS=""
    for lib in $MPI_LIBS; do
        LIBS="$LIBS -l${lib}"
    done

    # cuda libs
    CUDA_LIBS="-lcudart -lcuda"

    # compile flags
    COMPILE_FLAGS="-DMPI_AVAILABLE -DGPU_AVAILABLE -DSPECIFIC=${SPECIFIC_VAR} -DNOV=${NOV_VAR} -O3"
    if [ "$MAT_SPECIFIC_COMPILATION" = true ]; then
        COMPILE_FLAGS="${COMPILE_FLAGS} -DMAT_SPECIFIC_COMPILATION"
    fi

    # g++ compiles mpi_wrapper
    g++ ${COMPILE_FLAGS} -c -o mpi_wrapper.o mpi_wrapper.cpp $MPI_CXX_COMPILE_FLAGS -fPIC

    # nvcc compiles cuda
    nvcc ${COMPILE_FLAGS} -c -o GPUKernelWrappers.o ExactAlgorithms/GPU/GPUKernelWrappers.cu \
        -I. \
        -IStructures \
        -IIO \
        -IExactAlgorithms \
        -IExactAlgorithms/CPU \
        -IExactAlgorithms/GPU \
        -IExactAlgorithms/GPU/Dense \
        -IExactAlgorithms/GPU/Sparse \
        -IExactAlgorithms/MPI \
        -IExactAlgorithms/MPI/Dense \
        -IExactAlgorithms/MPI/Sparse \
        $INCLUDE_DIRS \
        -DMPI -DGPU \
        --ptxas-options=-v \
        -Xptxas -dlcm=ca \
        -Xcompiler "-fopenmp $MPI_CXX_COMPILE_FLAGS -fPIC"

    # link objects
    g++ ${COMPILE_FLAGS} -shared -o libWrappers.so mpi_wrapper.o GPUKernelWrappers.o $LIB_DIRS $LIBS $CUDA_LIBS -fopenmp

elif [ "$MPI_FOUND" != true ] && [ "$CUDA_FOUND" = true ]; then
    echo "Only CUDA found."
    echo "CUDA library directory: $CUDA_LIB_DIR"

    # compile flags
    COMPILE_FLAGS="-DGPU_AVAILABLE -DSPECIFIC=${SPECIFIC_VAR} -DNOV=${NOV_VAR} -O3"
    if [ "$MAT_SPECIFIC_COMPILATION" = true ]; then
        COMPILE_FLAGS="${COMPILE_FLAGS} -DMAT_SPECIFIC_COMPILATION"
    fi

    # nvcc compiles cuda
    nvcc ${COMPILE_FLAGS} -c -o GPUKernelWrappers.o ExactAlgorithms/GPU/GPUKernelWrappers.cu \
        -I. \
        -IStructures \
        -IIO \
        -IExactAlgorithms \
        -IExactAlgorithms/CPU \
        -IExactAlgorithms/GPU \
        -IExactAlgorithms/GPU/Dense \
        -IExactAlgorithms/GPU/Sparse \
        -IExactAlgorithms/MPI \
        -IExactAlgorithms/MPI/Dense \
        -IExactAlgorithms/MPI/Sparse \
        -DGPU \
        --ptxas-options=-v \
        -Xptxas -dlcm=ca \
        -Xcompiler "-fopenmp -fPIC"

    # link objects
    g++ ${COMPILE_FLAGS} -shared -o libWrappers.so GPUKernelWrappers.o -L$CUDA_LIB_DIR -lcudart -lcuda -fopenmp

else
    echo "Neither MPI nor CUDA found. Creating a shared library without them."

    # compile flags
    COMPILE_FLAGS="-DSPECIFIC=${SPECIFIC_VAR} -DNOV=${NOV_VAR} -O3"
    if [ "$MAT_SPECIFIC_COMPILATION" = true ]; then
        COMPILE_FLAGS="${COMPILE_FLAGS} -DMAT_SPECIFIC_COMPILATION"
    fi

    # Create an empty shared library
    g++ ${COMPILE_FLAGS} -shared -o libWrappers.so -x c++ /dev/null -fPIC
fi