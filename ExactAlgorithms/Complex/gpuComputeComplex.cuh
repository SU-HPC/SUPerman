//
// Created by delbek on 1/28/25.
//

#ifndef SUPERMAN_GPUCOMPUTECOMPLEX_CUH
#define SUPERMAN_GPUCOMPUTECOMPLEX_CUH

#include "Matrix.h"
#include "Settings.h"
#include <complex>


void gpuComputeComplex(Matrix<std::complex<double>>* matrix, Settings* settings);


#endif //SUPERMAN_GPUCOMPUTECOMPLEX_CUH
