//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_SETTINGS_H
#define SUPERMAN_REBORN_SETTINGS_H

#include <vector>
#include "omp.h"


enum MatrixProperty
{
    PatternSymmetric,
    Binary,
    Symmetric,
    PropertyEnds
};

enum Precision
{
    HALF,
    DOUBLE,
    QUAD,
    PrecisionEnds
};

enum Algorithm
{
    SPXLOCALMGLOBAL,
    SPXLOCALMSHARED,
    SPXSHAREDMGLOBAL,
    SPXSHAREDMSHARED,
    AlgorithmEnds
};

struct Settings
{
    // General
    std::vector<MatrixProperty> matrixProperties;
    Precision calculationPrecision;
    Precision storagePrecision;
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


#endif //SUPERMAN_REBORN_SETTINGS_H
