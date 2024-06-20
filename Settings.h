//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H


enum Algorithm
{
    XLOCALMSHARED,
    XLOCALMGLOBAL,
    XSHAREDMGLOBAL,
    XSHAREDMSHARED,
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

struct Settings
{
    // General
    Algorithm algorithm;
    Mode mode;
    bool binary;
    bool scaling;

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
