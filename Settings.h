//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H

#include <vector>
#include "omp.h"
#include "cuda_runtime.h"


enum Algorithm
{
    SPXLOCALMSHARED,
    SPXLOCALMGLOBAL,
    SPXSHAREDMGLOBAL,
    SPXSHAREDMSHARED,
    DPXLOCALMSHARED,
    DPXLOCALMGLOBAL,
    DPXSHAREDMGLOBAL,
    DPXSHAREDMSHARED,
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

    // MPI Specific
    int machineID;
    int processorNum;
};


#endif //SUPERMAN_SETTINGS_H
