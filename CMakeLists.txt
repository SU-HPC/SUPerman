cmake_minimum_required(VERSION 3.24)
project(SUPerman)

### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)
add_compile_definitions(SPECIFIC=REGISTERS40)
add_compile_definitions(NOV=40)
# add_definitions(-DMAT_SPECIFIC_COMPILATION)
### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)

# C++
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
#

# OpenMP
find_package(OpenMP REQUIRED)
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -Xcompiler ${OpenMP_CXX_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
#

# CUDA
find_package(CUDAToolkit QUIET)
if(CUDAToolkit_FOUND)
  set(CMAKE_CUDA_ARCHITECTURES native)
  enable_language(CUDA)
  add_definitions(-DGPU_AVAILABLE)
endif()
#

# MPI
find_package(MPI QUIET)
if(MPI_FOUND)
  add_definitions(-DMPI_AVAILABLE)
  include_directories(${MPI_INCLUDE_PATH})
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${MPI_CXX_COMPILE_FLAGS}")
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${MPI_CXX_LINK_FLAGS}")
endif()
#

# GMP (arbitrary precision library)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
find_package(GMP QUIET)
if(GMP_FOUND)
  add_definitions(-DGMP_AVAILABLE)
endif()
#

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
#

# GPU Files
set(GPU_WRAPPER_FILES
  Algorithms/GPU/GPUKernelWrappers.cu
  Algorithms/Complex/gpuComputeComplex.cu
)
#

# MPI Files
set(MPI_WRAPPER_FILES
  MPIWrappers/mpi_wrapper.cpp
)
#

# All Files
set(FILES
  main.cpp
  IO/dm.cpp
  ${CPU_HEADER_FILES}
)
#

# Add GPU Files to All Files if CUDA detected
if(CUDAToolkit_FOUND)
  list(APPEND FILES ${GPU_WRAPPER_FILES})
endif()
#

# Add MPI Files to All Files if MPI detected
if(MPI_FOUND)
  list(APPEND FILES ${MPI_WRAPPER_FILES})
endif()
#

# Create executable
add_executable(SUPerman
  ${FILES}
)
#

# Link libraries
target_link_libraries(SUPerman PRIVATE
  OpenMP::OpenMP_CXX
)

if(CUDAToolkit_FOUND)
  target_link_libraries(SUPerman PRIVATE
    CUDA::cudart
	)
endif()

if(MPI_FOUND)
  target_link_libraries(SUPerman PRIVATE
    MPI::MPI_CXX
  )
endif()

if(TARGET GMP::gmpxx)
  target_link_libraries(SUPerman PRIVATE 
    GMP::gmpxx
  )
else()
  target_link_libraries(SUPerman PRIVATE 
    GMP::gmp
  )
endif()
#

# Set compilation flags
target_compile_options(SUPerman PRIVATE
  $<$<COMPILE_LANGUAGE:CXX>:-O3 -g -std=c++17>
)

if(CUDAToolkit_FOUND)
  target_compile_options(SUPerman PRIVATE
    $<$<COMPILE_LANGUAGE:CUDA>:-O3 --generate-line-info --std=c++17 -Xptxas=-v>
  )
endif()
#
