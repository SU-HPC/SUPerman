cmake_minimum_required(VERSION 3.24.3)
project(SUPerman_Reborn)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find packages
find_package(OpenMP REQUIRED)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")

include_directories(.)
include_directories(Structures)
include_directories(IO)
include_directories(ExactAlgorithms)
include_directories(ExactAlgorithms/CPU)
include_directories(ExactAlgorithms/GPU)
include_directories(ExactAlgorithms/GPU/Dense)
include_directories(ExactAlgorithms/GPU/Sparse)

set(COMMON_HEADER_FILES
        Settings.h
        Permanent.h
        Structures/Matrix.h
        Structures/SparseMatrix.h
        IO/IO.h
        AlgorithmRecommender.h
        ExactAlgorithms/AllExactAlgorithms.h
)

set(CPU_HEADER_FILES
        ExactAlgorithms/CPU/ParallelPermanSparse.h
        ExactAlgorithms/CPU/ParallelPermanDense.h
        ExactAlgorithms/CPU/ParallelSkipPerman.h
        ExactAlgorithms/CPU/ParallelSkipPermanBalanced.h
        ExactAlgorithms/CPU/SequentialPerman.h
)

set(GPU_HEADER_FILES
        ExactAlgorithms/GPU/GPUHelpers.h

        ### DENSE ###
        ExactAlgorithms/GPU/Dense/DenseKernelDefinitions.cuh
        ExactAlgorithms/GPU/Dense/PermanGlobal.cuh
        ExactAlgorithms/GPU/Dense/PermanLocal.cuh
        ExactAlgorithms/GPU/Dense/PermanRegisterCoalescingCGray.cuh
        ExactAlgorithms/GPU/Dense/PermanRegisterCoalescingPlainMatrixShared.cuh
        ExactAlgorithms/GPU/Dense/PermanRegisterCoalescingPlainMatrixSharedCGray.cuh
        ExactAlgorithms/GPU/Dense/PermanRegisterCoalescingPlainMatrixSharedPerwarp.cuh
        ExactAlgorithms/GPU/Dense/PermanShared.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescing.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingPlainMatrix.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingPlainMatrixShared.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingPlainMatrixSharedPerwarp.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingPlainMatrixTexfour.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingPlainMatrixTexeight.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingShared.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingSharedCGray.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingSharedMultiGPU.cuh
        ExactAlgorithms/GPU/Dense/PermanSharedCoalescingSharedMultiGPUCPUChunks.cuh

        ### SPARSE ###
        ExactAlgorithms/GPU/Sparse/SparseKernelDefinitions.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanLocal.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanShared.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescing.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescingShared.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescingSharedMultiGPU.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescingSharedMultiGPUCPUChunks.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescingSharedSkipper.cuh
        ExactAlgorithms/GPU/Sparse/SparsePermanSharedCoalescingSharedMultiGPUCPUChunksSkipper.cuh
)

set(FILES
        ${COMMON_HEADER_FILES}
        ${CPU_HEADER_FILES}
)

include(CheckLanguage)
check_language(CUDA)
if(CMAKE_CUDA_COMPILER)
    enable_language(CUDA)
    add_definitions(-DGPU)
    find_package(CUDAToolkit REQUIRED)
    include_directories(${CUDA_INCLUDE_DIRS})
    list(APPEND FILES ${GPU_HEADER_FILES})
endif()

add_executable(SUPerman_Reborn
        main.cu
        ${FILES}
)

set_target_properties(SUPerman_Reborn PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

target_link_libraries(SUPerman_Reborn OpenMP::OpenMP_CXX)
target_link_libraries(SUPerman_Reborn CUDA::cudart ${CUDA_LIBRARIES} ${CUDA_CUBLAS_LIBRARIES} ${CUDA_cusparse_LIBRARY})
