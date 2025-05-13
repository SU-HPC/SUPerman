//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H

#include <string>


enum Algorithm
{
    XREGISTERMSHARED,
    XREGISTERMGLOBAL,
    XGLOBALMGLOBAL,
    XGLOBALMSHARED,
    XSHAREDMGLOBAL,
    XSHAREDMSHARED,
    NAIVECODEGENERATION,
    REGEFFICIENTCODEGENERATION,
    APPROXIMATION,
    AlgorithmEnds
};

enum Mode
{
    CPU,
    SingleGPU,
    MultiGPU,
    MultiGPUMPI,
    ModeEnds
};

enum Precision
{
    DD,
    KAHAN,
    PrecisionEnds
};

struct Settings
{
    // General
    int PID;
    std::string REPO_DIR;
    Algorithm algorithm;
    Mode mode;

    // Matrix Related
    bool complex;
    bool binary;
    bool undirected;

    // Scaling Related
    bool scaling;
    unsigned scalingIterationNo;
    unsigned scaleInto;

    // Precision Related
    unsigned printingPrecision;
    Precision calculationPrecision;

    // CPU Specific
    int threadC;

    // GPU Specific
    int deviceID;
    int gpuNum;
    unsigned partition;

    // MPI Specific
    int rank;
    int processorNum;
};


#endif //SUPERMAN_SETTINGS_H
