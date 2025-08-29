/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

#ifndef SUPERMAN_SETTINGS_H
#define SUPERMAN_SETTINGS_H

#include <string>

extern double avgN;
extern double avgNNZ;
extern unsigned count;
extern bool printing;
extern bool sparse;

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
    ARBITRARY,
    PrecisionEnds
};

struct Settings
{
    // General
    std::string filename;
    int PID;
    std::string REPO_DIR;
    std::string pipe;
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
    unsigned arbitraryPrecision;
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
