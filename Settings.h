//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_SETTINGS_H
#define SUPERMAN_REBORN_SETTINGS_H

#include <vector>
#include "omp.h"


enum MatrixType
{
    Sparse,
    Dense,
    MatrixTypeEnds
};

enum MatrixProperty
{
    PatternSymmetric,
    Binary,
    Symmetric,
    PropertyEnds
};

enum Algorithm
{
    PermanSparse,
    PermanDense,
    ParallelSkipper,
    ParallelSkipperBalanced,
    Perman,
    GPUPermanGlobal,
    AlgorithmEnds
};

enum Precision
{
    Half,
    Double,
    Quad,
    PrecisionEnds
};

struct Settings
{
    Settings(Precision calculationPrecision, Precision storagePrecision)
    :   matrixType(MatrixTypeEnds),
        algorithm(AlgorithmEnds),
        calculationPrecision(calculationPrecision),
        storagePrecision(storagePrecision),
        threadC(omp_get_max_threads()) {}

    Settings(MatrixType matrixType, std::vector<MatrixProperty> matrixProperties, Algorithm algorithm, Precision calculationPrecision, Precision storagePrecision, unsigned threadC)
    :   matrixType(matrixType),
        matrixProperties(matrixProperties),
        algorithm(algorithm),
        calculationPrecision(calculationPrecision),
        storagePrecision(storagePrecision),
        threadC(threadC) {}

    Settings(MatrixType matrixType, std::vector<MatrixProperty> matrixProperties, Algorithm algorithm, Precision calculationPrecision, Precision storagePrecision, unsigned gridDim, unsigned blockDim, unsigned deviceID, unsigned gridDimMultiplier, int synchronizedGray, unsigned gpuNum)
    :   matrixType(matrixType),
        matrixProperties(matrixProperties),
        algorithm(algorithm),
        calculationPrecision(calculationPrecision),
        storagePrecision(storagePrecision),
        gridDim(gridDim),
        blockDim(blockDim),
        deviceID(deviceID),
        gridDimMultiplier(gridDimMultiplier),
        synchronizedGray(synchronizedGray),
        gpuNum(gpuNum),
        threadC(1) {}

    MatrixType matrixType;
    std::vector<MatrixProperty> matrixProperties;
    Algorithm algorithm;
    Precision calculationPrecision;
    Precision storagePrecision;

    // CPU Specific
    unsigned threadC;

    // GPU Specific
    unsigned gridDim;
    unsigned blockDim;
    unsigned deviceID;
    unsigned gridDimMultiplier;
    int synchronizedGray;
    unsigned gpuNum;
};


#endif //SUPERMAN_REBORN_SETTINGS_H
