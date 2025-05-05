cmake_minimum_required(VERSION 3.18)
project(SUPerman)

### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)
add_compile_definitions(SPECIFIC=REGISTERS40)
add_compile_definitions(NOV=40)
# add_definitions(-DMAT_SPECIFIC_COMPILATION)
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
include_directories(Algorithms/CPU)
include_directories(Algorithms/CPU/Dense)
include_directories(Algorithms/CPU/Sparse)
include_directories(Algorithms/GPU)
include_directories(Algorithms/GPU/Dense)
include_directories(Algorithms/GPU/Sparse)
include_directories(Algorithms/GPU/CodeGeneration)
include_directories(Algorithms/Complex)

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
        Algorithms/AllExactAlgorithms.h
)

# CPU Files
set(CPU_HEADER_FILES
        Algorithms/CPU/Dense/dpNaivePerman.h
        Algorithms/CPU/Sparse/spNaivePerman.h
        Algorithms/Complex/cpuComputeComplex.h
)

# GPU Files
set(GPU_HEADER_FILES
        Algorithms/GPU/GPUHelpers.cuh
        Algorithms/GPU/Sparse/SparseKernelDefinitions.cuh
        Algorithms/GPU/Sparse/spSingleGPU.cuh
        Algorithms/GPU/Sparse/spMultiGPU.cuh
        Algorithms/GPU/Sparse/spMultiGPUMPI.cuh
        Algorithms/GPU/Dense/DenseKernelDefinitions.cuh
        Algorithms/GPU/Dense/dpSingleGPU.cuh
        Algorithms/GPU/Dense/dpMultiGPU.cuh
        Algorithms/GPU/Dense/dpMultiGPUMPI.cuh
        Algorithms/GPU/Registers.cuh
        Algorithms/GPU/PrecisionHelpers.cuh
        Algorithms/GPU/CodeGeneration/KernelGenSingleGPU.cuh
        Algorithms/GPU/CodeGeneration/KernelGenMultiGPU.cuh
        Algorithms/GPU/CodeGeneration/KernelGenMultiGPUMPI.cuh
        Algorithms/GPU/CodeGeneration/KernelGenerator.cuh
        Algorithms/GPU/CodeGeneration/NaiveKernelCodeGen.cuh
        Algorithms/GPU/CodeGeneration/UTOrderedKernelCodeGen.cuh
        Algorithms/GPU/CodeGeneration/generatedKernels.cuh
        Algorithms/Complex/gpuComputeComplex.cuh
)

set(GPU_WRAPPER_FILES
        Algorithms/GPU/GPUKernelWrappers.h
        Algorithms/GPU/GPUKernelWrappers.cu
        Algorithms/Complex/gpuComputeComplex.cu
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
