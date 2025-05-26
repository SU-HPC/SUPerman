//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_ASPSINGLEGPU_CUH
#define SUPERMAN_ASPSINGLEGPU_CUH

#include "Permanent.h"
#include "ApproximateSparseKernelDefinitions.cuh"
#include "SparseMatrix.h"

template <typename C, typename S, ApproximateSparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class aspSingleGPU: public Permanent<C, S>
{
public:
    aspSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};

template <typename C, typename S, ApproximateSparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double aspSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* sp = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    unsigned nov = sp->nov;
    unsigned nnz = sp->nnz;
    unsigned* rowPtrs = reinterpret_cast<unsigned*>(sp->rptrs);
    unsigned* cols = reinterpret_cast<unsigned*>(sp->cols);
    unsigned* colPtrs = reinterpret_cast<unsigned*>(sp->cptrs);
    unsigned* rows = reinterpret_cast<unsigned*>(sp->rows);

    scaleType* h_rvInit = new scaleType[nov];
    scaleType* h_cvInit = new scaleType[nov];
    for (unsigned i = 0; i < nov; ++i)
    {
        h_rvInit[i] = 1;
        h_cvInit[i] = 1;
    }

    ApproximateSparseDefinitions::scaleABInit(nov, nnz, rowPtrs, cols, colPtrs, rows, h_rvInit, h_cvInit);

    unsigned* d_nov;
    unsigned* d_nnz;
    unsigned* d_rowPtrs;
    unsigned* d_cols;
    unsigned* d_colPtrs;
    unsigned* d_rows;
    scaleType* d_rvInit;
    scaleType* d_cvInit;
    scaleType* d_rv;
    scaleType* d_cv;
    int* d_rowElems;
    int* d_colElems;
    double* d_result;
    unsigned* d_stack;
    unsigned* d_sampleCounter;

    int gridSize, blockSize;
    cudaOccupancyMaxPotentialBlockSize(&gridSize, &blockSize, Algo, 0, 0);
    unsigned noThreads = gridSize * blockSize;

    gpuErrchk(cudaMalloc(&d_nov, sizeof(unsigned)))
    gpuErrchk(cudaMalloc(&d_nnz, sizeof(unsigned)))
    gpuErrchk(cudaMalloc(&d_rowPtrs, sizeof(unsigned) * (nov + 1)))
    gpuErrchk(cudaMalloc(&d_cols, sizeof(unsigned) * nnz))
    gpuErrchk(cudaMalloc(&d_colPtrs, sizeof(unsigned) * (nov + 1)))
    gpuErrchk(cudaMalloc(&d_rows, sizeof(unsigned) * nnz))

    gpuErrchk(cudaMemcpy(d_nov, &nov, sizeof(unsigned), cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_nnz, &nnz, sizeof(unsigned), cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_rowPtrs, rowPtrs, sizeof(unsigned) * (nov + 1), cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_cols, cols, sizeof(unsigned) * nnz, cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_colPtrs, colPtrs, sizeof(unsigned) * (nov + 1), cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_rows, rows, sizeof(unsigned) * nnz, cudaMemcpyHostToDevice))

    gpuErrchk(cudaMalloc(&d_rvInit, sizeof(double) * nov))
    gpuErrchk(cudaMalloc(&d_cvInit, sizeof(double) * nov))
    gpuErrchk(cudaMalloc(&d_rv, sizeof(scaleType) * nov * noThreads))
    gpuErrchk(cudaMalloc(&d_cv, sizeof(scaleType) * nov * noThreads))
    gpuErrchk(cudaMalloc(&d_rowElems, sizeof(int) * nov * noThreads))
    gpuErrchk(cudaMalloc(&d_colElems, sizeof(int) * nov * noThreads))
    gpuErrchk(cudaMalloc(&d_stack, sizeof(unsigned) * nov * noThreads))

    gpuErrchk(cudaMemcpy(d_rvInit, h_rvInit, sizeof(scaleType) * nov, cudaMemcpyHostToDevice))
    gpuErrchk(cudaMemcpy(d_cvInit, h_cvInit, sizeof(scaleType) * nov, cudaMemcpyHostToDevice))

    gpuErrchk(cudaMalloc(&d_result, sizeof(double)))
    gpuErrchk(cudaMemset(d_result, 0, sizeof(double)))

    gpuErrchk(cudaMalloc(&d_sampleCounter, sizeof(unsigned)))
    gpuErrchk(cudaMemset(d_sampleCounter, 0, sizeof(unsigned)))

    double start = omp_get_wtime();
    Algo<<<gridSize, blockSize>>>(
                                    d_rowPtrs, d_cols, 
                                    d_colPtrs, d_rows, 
                                    d_nov, d_nnz,
                                    d_rvInit, d_cvInit,
                                    d_rv, d_cv, 
                                    d_rowElems, d_colElems, 
                                    d_result,
                                    d_stack,
                                    d_sampleCounter
                                    );
    gpuErrchk(cudaDeviceSynchronize())

    unsigned h_sampleCounter;
    gpuErrchk(cudaMemcpy(&this->productSum, d_result, sizeof(double), cudaMemcpyDeviceToHost))
    gpuErrchk(cudaMemcpy(&h_sampleCounter, d_sampleCounter, sizeof(unsigned), cudaMemcpyDeviceToHost))
    this->productSum /= h_sampleCounter;

    gpuErrchk(cudaFree(d_nov))
    gpuErrchk(cudaFree(d_nnz))
    gpuErrchk(cudaFree(d_rowPtrs))
    gpuErrchk(cudaFree(d_cols))
    gpuErrchk(cudaFree(d_colPtrs))
    gpuErrchk(cudaFree(d_rows))
    gpuErrchk(cudaFree(d_rvInit))
    gpuErrchk(cudaFree(d_cvInit))
    gpuErrchk(cudaFree(d_rv))
    gpuErrchk(cudaFree(d_cv))
    gpuErrchk(cudaFree(d_rowElems))
    gpuErrchk(cudaFree(d_colElems))
    gpuErrchk(cudaFree(d_result))
    gpuErrchk(cudaFree(d_stack))
    gpuErrchk(cudaFree(d_sampleCounter))

    delete[] h_rvInit;
    delete[] h_cvInit;

    return 0;
}

#endif //SUPERMAN_ASPSINGLEGPU_CUH
