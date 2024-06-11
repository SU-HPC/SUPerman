//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_SETTINGS_H
#define SUPERMAN_REBORN_SETTINGS_H

#include <vector>
#include "omp.h"
#include "cuda_runtime.h"


enum Algorithm
{
    SPXLOCALMSHARED,
    SPXLOCALMGLOBAL,
    AlgorithmEnds
};

struct Settings
{
    // General
    Algorithm algorithm;

    // CPU Specific
    int threadC;

    // GPU Specific
    int deviceID;
    int gpuNum;
    std::vector<cudaStream_t> streams;

    // MPI Specific
    int machineID;
    int processorNum;
};


#endif //SUPERMAN_REBORN_SETTINGS_H
