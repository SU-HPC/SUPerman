//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PARALLELSKIPPERMAN_H
#define SUPERMAN_REBORN_PARALLELSKIPPERMAN_H

#include "Permanent.h"
#include "SparseMatrix.h"


template <class C, class S>
class ParallelSkipPerman: public Permanent<C, S>
{
public:
    ParallelSkipPerman(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double ParallelSkipPerman<C, S>::permanentFunction()
{
    SparseMatrix<S> *sparsemat = dynamic_cast<SparseMatrix<S> *>(this->m_Matrix);

    //Pack parameters//
    int* rptrs = sparsemat->rptrs;
    int* cols = sparsemat->cols;
    S* rvals = sparsemat->rvals;
    int* cptrs = sparsemat->cptrs;
    int* rows = sparsemat->rows;
    S* cvals = sparsemat->cvals;
    int nov = sparsemat->nov;
    //Pack parameters//

    //Pack flags//
    int threads = this->m_Settings.threadC;
    //Pack flags//

    //first initialize the vector then we will copy it to ourselves
    C rs, x[64], p;
    int j, ptr;
    unsigned long long ci, start, end, chunk_size;

    //initialize the vector entries
    for (j = 0; j < nov; j++) {
        rs = .0f;
        for(ptr = rptrs[j]; ptr < rptrs[j+1]; ptr++)
            rs += rvals[ptr];
        x[j] = -rs/(2.0f);
    }

    for(ptr = cptrs[nov-1]; ptr < cptrs[nov]; ptr++) {
        x[rows[ptr]] += cvals[ptr];
    }

    //update perman with initial x
    C prod = 1;
    for(j = 0; j < nov; j++) {
        prod *= x[j];
    }
    p = prod;

    //find start location
    start = 1;
    int change_j;
    for(int j = 0; j < nov; j++) {
        if(x[j] == 0) {
            change_j = -1;
            for (ptr = rptrs[j]; ptr < rptrs[j + 1]; ptr++) {
                ci = 1ULL << cols[ptr];
                if(ci < change_j) {
                    change_j = ci;
                }
            }
            if(change_j > start) {
                start = change_j;
            }
        }
    }

    end = (1ULL << (nov-1));

    chunk_size = (end - start + 1) / threads + 1;

#pragma omp parallel num_threads(threads) private(j, ci, change_j)
    {
        C my_x[64];
        memcpy(my_x, x, sizeof(C) * 64);

        int tid = omp_get_thread_num();
        unsigned long long my_start = start + tid * chunk_size;
        unsigned long long my_end = std::min(start + ((tid+1) * chunk_size), end);

        //update if neccessary
        C my_p = 0;

        unsigned long long my_gray;
        unsigned long long my_prev_gray = 0;

        int ptr, last_zero;
        unsigned long long period, steps, step_start;

        unsigned long long i = my_start;

        while (i < my_end) {
            //k = __builtin_ctzll(i + 1);
            my_gray = i ^ (i >> 1);

            unsigned long long gray_diff = my_prev_gray ^ my_gray;
            //cout << "X: " << gray_diff << endl;
            j = 0;
            while(gray_diff > 0) { // this contains the bit to be updated
                unsigned long long onej = 1ULL << j;
                if(gray_diff & onej) { // if bit l is changed
                    gray_diff ^= onej;   // unset bit
                    if(my_gray & onej) {    // do the update
                        for (ptr = cptrs[j]; ptr < cptrs[j + 1]; ptr++) {
                            my_x[rows[ptr]] += cvals[ptr];
                        }
                    }
                    else {
                        for (ptr = cptrs[j]; ptr < cptrs[j + 1]; ptr++) {
                            my_x[rows[ptr]] -= cvals[ptr];
                        }
                    }
                }
                j++;
            }
            //counter++;
            my_prev_gray = my_gray;
            last_zero = -1;
            C my_prod = 1;
            for(j = nov - 1; j >= 0; j--) {
                my_prod *= my_x[j];
                if(my_x[j] == 0) {
                    last_zero = j;
                    break;
                }
            }

            if(my_prod != 0) {
                my_p += ((i&1ULL)? -1.0:1.0) * my_prod;
                i++;
            }
            else {
                change_j = -1;
                for (ptr = rptrs[last_zero]; ptr < rptrs[last_zero + 1]; ptr++) {
                    step_start = 1ULL << cols[ptr];
                    period = step_start << 1;
                    ci = step_start;
                    if(i >= step_start) {
                        steps = (i - step_start) / period;
                        ci = step_start + ((steps + 1) * period);
                    }
                    if(ci < change_j) {
                        change_j = ci;
                    }
                }

                i++;
                if(change_j > i) {
                    i = change_j;
                }
            }
        }

#pragma omp critical
        {
            p += my_p;
            //printf("tid is: %d -- p is: %f\n", tid, p);
        }
    }

    return (4*(nov&1)-2) * p;
}


#endif //SUPERMAN_REBORN_PARALLELSKIPPERMAN_H
