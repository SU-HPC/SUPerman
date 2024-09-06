//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H


enum Algorithm
{
    XREGISTERMSHARED,
    XREGISTERMGLOBAL,
    XGLOBALMGLOBAL,
    XGLOBALMSHARED,
    XSHAREDMGLOBAL,
    XSHAREDMSHARED,
    CODEGENERATION,
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
    DQ1,
    DQ2,
    QQ,
    KAHAN,
    PrecisionEnds
};

struct Settings
{
    // General
    Algorithm algorithm;
    Mode mode;

    bool binary;
    bool undirected;

    bool scaling;
    unsigned scalingIterationNo;
    unsigned scaleInto;

    unsigned printingPrecision;

    Precision calculationPrecision;

    // CPU Specific
    int threadC;

    // GPU Specific
    int deviceID;
    int gpuNum;
    unsigned partition;

    // MPI Specific
    int machineID;
    int processorNum;
};


#endif //SUPERMAN_SETTINGS_H
