cmake_minimum_required(VERSION 3.16.3)
project(SUPerman)

# C++ standard
set(CMAKE_CXX_STANDARD 17)
#set(CMAKE_BUILD_TYPE Debug)

# OpenMP
find_package(OpenMP REQUIRED)
if(OpenMP_FOUND)
    set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -Xcompiler ${OpenMP_CXX_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()

# Cuda
include(CheckLanguage)
check_language(CUDA)
if(CMAKE_CUDA_COMPILER)
    enable_language(CUDA)
    add_definitions(-DGPU_AVAILABLE)
    #set(CMAKE_CUDA_FLAGS_DEBUG "${CMAKE_CUDA_FLAGS_DEBUG} -G -lineinfo")
    set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -Xcompiler ${OpenMP_CXX_FLAGS}")
    find_package(CUDAToolkit REQUIRED)
endif()

# MPI
find_package(MPI)
if(MPI_FOUND)
    add_definitions(-DMPI_AVAILABLE)
    include_directories(${MPI_INCLUDE_PATH})
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${MPI_CXX_COMPILE_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${MPI_CXX_LINK_FLAGS}")
endif()

#set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")

# Directories
include_directories(.)
include_directories(Structures)
include_directories(IO)
include_directories(ExactAlgorithms)
include_directories(ExactAlgorithms/CPU)
include_directories(ExactAlgorithms/CPU/Dense)
include_directories(ExactAlgorithms/CPU/Sparse)
include_directories(ExactAlgorithms/GPU)
include_directories(ExactAlgorithms/GPU/Dense)
include_directories(ExactAlgorithms/GPU/Sparse)

# Files
set(COMMON_HEADER_FILES
        Settings.h
        Result.h
        Helpers.h
        Permanent.h
        DecomposePerman.h
        Structures/Matrix.h
        Structures/SparseMatrix.h
        IO/IO.h
        AlgorithmRecommender.h
        ExactAlgorithms/AllExactAlgorithms.h
)

# CPU Files
set(CPU_HEADER_FILES
        ExactAlgorithms/CPU/Dense/dpNaivePerman.h
        ExactAlgorithms/CPU/Sparse/spNaivePerman.h
)

# GPU Files
set(GPU_HEADER_FILES
        ExactAlgorithms/GPU/GPUHelpers.cuh
        ExactAlgorithms/GPU/Sparse/SparseKernelDefinitions.cuh
        ExactAlgorithms/GPU/Sparse/spSingleGPU.cuh
        ExactAlgorithms/GPU/Sparse/spMultiGPU.cuh
        ExactAlgorithms/GPU/Sparse/spMultiGPUMPI.cuh
        ExactAlgorithms/GPU/Dense/DenseKernelDefinitions.cuh
        ExactAlgorithms/GPU/Dense/dpSingleGPU.cuh
        ExactAlgorithms/GPU/Dense/dpMultiGPU.cuh
        ExactAlgorithms/GPU/Dense/dpMultiGPUMPI.cuh
        ExactAlgorithms/GPU/Registers.cuh
)

set(GPU_WRAPPER_FILES
        ExactAlgorithms/GPU/GPUKernelWrappers.h
        ExactAlgorithms/GPU/GPUKernelWrappers.cu
)

# MPI Files
set(MPI_WRAPPER_FILES
        mpi_wrapper.h
        mpi_wrapper.cpp
)

# All Files
set(FILES
        ${COMMON_HEADER_FILES}
        ${CPU_HEADER_FILES}
)

# Add GPU Files to All Files if Cuda detected
if(CMAKE_CUDA_COMPILER)
    list(APPEND FILES ${GPU_HEADER_FILES})
    list(APPEND FILES ${GPU_WRAPPER_FILES})
endif()

# Add MPI Files to All Files if MPI detected
if(MPI_FOUND)
    list(APPEND FILES ${MPI_WRAPPER_FILES})
endif()

# Create executable
add_executable(SUPerman
        main.cpp
        ${FILES}
)

# Shared Library
set(SHARED_LIBRARY_PATH "${CMAKE_SOURCE_DIR}")
set(SHARED_LIBRARY_NAME "libWrappers.so")

# Link the shared library
target_link_libraries(SUPerman
        OpenMP::OpenMP_CXX
        cuda
        ${CUDA_LIBRARIES}
        ${SHARED_LIBRARY_PATH}/${SHARED_LIBRARY_NAME}
)

if(MPI_FOUND)
    target_link_libraries(SUPerman
            MPI::MPI_CXX
    )
endif()

# Runtime recognition of the shared library
set_target_properties(SUPerman PROPERTIES
    BUILD_RPATH "${SHARED_LIBRARY_PATH}"
    INSTALL_RPATH "${SHARED_LIBRARY_PATH}"
)

target_compile_options(SUPerman PRIVATE -O3)
