//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
#define SUPERMAN_REBORN_PARALLELPERMANSPARSE_H

#include "Permanent.h"
#include "SparseMatrix.h"


template <class C, class S>
class ParallelPermanSparse: public Permanent<C, S>
{
public:
    ParallelPermanSparse(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double ParallelPermanSparse<C, S>::permanentFunction()
{
    SparseMatrix<S> *sparsemat = dynamic_cast<SparseMatrix<S> *>(this->m_Matrix);

    //Pack parameters//
    S *mat = sparsemat->mat;
    int *cptrs = sparsemat->cptrs;
    int *rows = sparsemat->rows;
    S *cvals = sparsemat->cvals;
    int nov = sparsemat->noRow;
    //Pack parameters//

    //Pack flags//
    int threads = this->m_Settings.threadC;
    //Pack flags//

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'

    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            rs += mat[(j * nov) + k];  // sum of row j
        }
        x[j] = mat[(j * nov) + (nov - 1)] - rs / 2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }

    long long one = 1;
    long long start = 1;
    long long end = (1LL << (nov - 1));

    long long chunk_size = end / threads + 1;

#pragma omp parallel num_threads(threads) firstprivate(x)
    {
        int tid = omp_get_thread_num();
        long long my_start = start + tid * chunk_size;
        long long my_end = std::min(start + ((tid + 1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i - 1) ^ ((i - 1) >> 1);

        for (int k = 0; k < (nov - 1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = cptrs[k]; j < cptrs[k + 1]; j++) {
                    x[rows[j]] += cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        prod = 1.0;
        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (x[j] == 0) {
                zero_num++;
            } else {
                prod *= x[j];  //product of the elements in vector 'x'
            }
        }
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            //compute the gray code
            k = __builtin_ctzll(i);
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            for (int j = cptrs[k]; j < cptrs[k + 1]; j++) {
                if (x[rows[j]] == 0) {
                    zero_num--;
                    x[rows[j]] += s * cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                    prod *= x[rows[j]];  //product of the elements in vector 'x'
                } else {
                    prod /= x[rows[j]];
                    x[rows[j]] += s * cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                    if (x[rows[j]] == 0) {
                        zero_num++;
                    } else {
                        prod *= x[rows[j]];  //product of the elements in vector 'x'
                    }
                }
            }

            if (zero_num == 0) {
                my_p += prodSign * prod;
            }
            prodSign *= -1;
            i++;
        }

#pragma omp critical
        p += my_p;
    }

    return (4*(nov&1)-2) * p;
}


#endif //SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
