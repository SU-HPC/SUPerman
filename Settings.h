//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H


enum Algorithm
{
    XLOCALMSHARED,
    XREGISTERMSHARED,
    XLOCALMGLOBAL,
    XREGISTERMGLOBAL,
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
    bool undirected;
    bool scaling;
    double scalingThreshold;

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
