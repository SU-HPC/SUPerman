cmake_minimum_required(VERSION 3.18)
project(SUPerman)

### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)
add_compile_definitions(SPECIFIC=REGISTERS40)
add_compile_definitions(NOV=40)
add_definitions(-DMAT_SPECIFIC_COMPILATION)
### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)

# C++ standard
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
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
find_package(CUDAToolkit QUIET)
if(CUDAToolkit_FOUND)
    set(CMAKE_CUDA_ARCHITECTURES 52 60 70 75 80 90)
    enable_language(CUDA)
    add_definitions(-DGPU_AVAILABLE)
endif()

# MPI
find_package(MPI QUIET)
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
include_directories(CommonFiles)
include_directories(MPIWrappers)
include_directories(Algorithms)
include_directories(Algorithms/Exact)
include_directories(Algorithms/Exact/CPU)
include_directories(Algorithms/Exact/CPU/Dense)
include_directories(Algorithms/Exact/CPU/Sparse)
include_directories(Algorithms/Exact/GPU)
include_directories(Algorithms/Exact/GPU/Dense)
include_directories(Algorithms/Exact/GPU/Sparse)
include_directories(Algorithms/Exact/GPU/CodeGeneration)
include_directories(Algorithms/Exact/Complex)

# Files
set(COMMON_HEADER_FILES
        CommonFiles/Settings.h
        CommonFiles/Result.h
        CommonFiles/Helpers.h
        CommonFiles/Permanent.h
        CommonFiles/DecomposePerman.h
        Structures/Matrix.h
        Structures/SparseMatrix.h
        IO/IO.h
        IO/dm.h
        IO/dm.cpp
        CommonFiles/AlgorithmSelector.h
        Algorithms/Exact/AllExactAlgorithms.h
)

# CPU Files
set(CPU_HEADER_FILES
        Algorithms/Exact/CPU/Dense/dpNaivePerman.h
        Algorithms/Exact/CPU/Sparse/spNaivePerman.h
        Algorithms/Exact/Complex/cpuComputeComplex.h
)

# GPU Files
set(GPU_HEADER_FILES
        Algorithms/Exact/GPU/GPUHelpers.cuh
        Algorithms/Exact/GPU/Sparse/SparseKernelDefinitions.cuh
        Algorithms/Exact/GPU/Sparse/spSingleGPU.cuh
        Algorithms/Exact/GPU/Sparse/spMultiGPU.cuh
        Algorithms/Exact/GPU/Sparse/spMultiGPUMPI.cuh
        Algorithms/Exact/GPU/Dense/DenseKernelDefinitions.cuh
        Algorithms/Exact/GPU/Dense/dpSingleGPU.cuh
        Algorithms/Exact/GPU/Dense/dpMultiGPU.cuh
        Algorithms/Exact/GPU/Dense/dpMultiGPUMPI.cuh
        Algorithms/Exact/GPU/Registers.cuh
        Algorithms/Exact/GPU/PrecisionHelpers.cuh
        Algorithms/Exact/GPU/CodeGeneration/KernelGenSingleGPU.cuh
        Algorithms/Exact/GPU/CodeGeneration/KernelGenMultiGPU.cuh
        Algorithms/Exact/GPU/CodeGeneration/KernelGenMultiGPUMPI.cuh
        Algorithms/Exact/GPU/CodeGeneration/KernelGenerator.cuh
        Algorithms/Exact/GPU/CodeGeneration/NaiveKernelCodeGen.cuh
        Algorithms/Exact/GPU/CodeGeneration/UTOrderedKernelCodeGen.cuh
        Algorithms/Exact/GPU/CodeGeneration/generatedKernels.cuh
        Algorithms/Exact/Complex/gpuComputeComplex.cuh
)

set(GPU_WRAPPER_FILES
        Algorithms/Exact/GPU/GPUKernelWrappers.h
        Algorithms/Exact/GPU/GPUKernelWrappers.cu
        Algorithms/Exact/Complex/gpuComputeComplex.cu
)

# MPI Files
set(MPI_WRAPPER_FILES
        MPIWrappers/mpi_wrapper.h
        MPIWrappers/mpi_wrapper.cpp
)

# All Files
set(FILES
        ${COMMON_HEADER_FILES}
        ${CPU_HEADER_FILES}
)

# Add GPU Files to All Files if Cuda detected
if(CUDAToolkit_FOUND)
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

# Link shared libraries
target_link_libraries(SUPerman OpenMP::OpenMP_CXX)

if(CMAKE_CUDA_COMPILER)
    target_link_libraries(SUPerman
        cuda
        CUDA::cudart
        ${CUDA_LIBRARIES}
)
endif()

if(MPI_FOUND)
    target_link_libraries(SUPerman
            MPI::MPI_CXX
    )
endif()

target_compile_options(SUPerman PRIVATE -O3)
target_compile_options(SUPerman PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:
        -O3
        --generate-line-info
        >)
