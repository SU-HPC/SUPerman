//
// Created by delbek on 1/28/25.
//

#ifndef SUPERMAN_CPUCOMPUTECOMPLEX_H
#define SUPERMAN_CPUCOMPUTECOMPLEX_H

#include "Matrix.h"
#include "Settings.h"
#include <complex>
#include "omp.h"


template <class C, class S>
void cpuComputeComplex(Matrix<std::complex<S>>* matrix, Settings* settings)
{
    int nov = matrix->nov;
    int threads = settings->threadC;
    std::complex<S>* mat = matrix->mat;

    std::complex<C> x[nov];
    std::complex<C> product(1.0, 0.0);
    for (int i = 0; i < nov; ++i)
    {
        std::complex<C> rowSum(0.0, 0.0);
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[i * nov + j];
        }
        x[i] = mat[i * nov + (nov - 1)] - (rowSum / std::complex<C>(2.0, 0.0));
        product *= x[i];
    }
    std::complex<C> productSum = product;

    std::complex<S>* matTransposed = new std::complex<S>[nov * nov];
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    long long start = 1;
    long long end = (1LL << (nov - 1));

    double timeStart = omp_get_wtime();
#pragma omp parallel num_threads(threads)
    {
        std::complex<C> myResult(0.0, 0.0);

        std::complex<C> myX[nov];
        memcpy(myX, x, sizeof(std::complex<C>) * nov);

        long long chunkSize = (end - start) / threads + 1;
        int threadID = omp_get_thread_num();
        long long myStart = start + threadID * chunkSize;
        long long myEnd = std::min(start + (threadID + 1) * chunkSize, end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL)
            {
                for (int i = 0; i < nov; ++i)
                {
                    myX[i] += matTransposed[j * nov + i];
                }
            }
        }

        std::complex<C> productSign = (myStart & 1LL) ? std::complex<C>(-1.0, 0.0) : std::complex<C>(1.0, 0.0);

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i);
            gray ^= (1LL << columnChanged);

            std::complex<C> added = ((1LL << columnChanged) & gray) ? std::complex<C>(1.0, 0.0) : std::complex<C>(-1.0, 0.0);

            std::complex<C> myProduct(1.0, 0.0);
            for (int r = 0; r < nov; ++r)
            {
                myX[r] += added * matTransposed[columnChanged * nov + r];
                myProduct *= myX[r];
            }

            myResult += productSign * myProduct;
            productSign *= std::complex<C>(-1.0, 0.0);
        }

#pragma omp critical
        {
            productSum += myResult;
        }
    }
    double timeEnd = omp_get_wtime();

    std::complex<C> result = std::complex<C>((4 * (nov % 2) - 2), 0) * productSum;
    std::cout << "Permanent: " << std::setprecision(settings->printingPrecision) << result << std::endl;
    std::cout << "Time took: " << timeEnd - timeStart << std::endl;

    delete[] matTransposed;
}


#endif //SUPERMAN_CPUCOMPUTECOMPLEX_H
