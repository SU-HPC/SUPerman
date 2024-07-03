//
// Created by delbek on 6/11/24.
//

#ifndef SUPERMAN_DPNAIVEPERMAN_H
#define SUPERMAN_DPNAIVEPERMAN_H

#include "Permanent.h"
#include "Matrix.h"
#include <cstring>
#include "omp.h"


template <class C, class S>
class dpNaivePerman: public Permanent<C, S>
{
public:
    dpNaivePerman(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;

public:
    C productSum;
};


template<class C, class S>
double dpNaivePerman<C, S>::permanentFunction()
{
    int nov = this->m_Matrix->nov;
    S* mat = this->m_Matrix->mat;

    int threads = this->m_Settings.threadC;

    C x[nov];
    C product = 1;
    for (int i = 0; i < nov; ++i)
    {
        C rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[i * nov + j];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }
    productSum = product;

    S* matTransposed = new S[nov * nov];
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    long long start = 1;
    long long end = (1LL << (nov - 1));

#pragma omp parallel num_threads(threads)
    {
        int threadID = omp_get_thread_num();
        C myResult = 0;

        C myX[nov];
        memcpy(myX, x, sizeof(C) * nov);

        long long chunkSize = (end - start) / threads + 1;
        long long myStart = start + (threadID * chunkSize);
        long long myEnd = std::min(start + ((threadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = 0; i < nov; ++i)
                {
                    myX[i] += matTransposed[j * nov + i];
                }
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i); // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            C myProduct = 1;
            for (int r = 0; r < nov; ++r)
            {
                myX[r] += added * matTransposed[columnChanged * nov + r];
                myProduct *= myX[r];
            }

            myResult += productSign * myProduct;
            productSign *= -1; // sign for the next subset
        }

        #pragma omp atomic
            productSum += myResult;
    }

    delete[] matTransposed;

    return 0;
}


#endif //SUPERMAN_DPNAIVEPERMAN_H
