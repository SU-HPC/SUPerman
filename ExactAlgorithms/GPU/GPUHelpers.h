//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_GPUHELPERS_H
#define SUPERMAN_REBORN_GPUHELPERS_H

#include "stdio.h"
#include "omp.h"
#include <algorithm>


static int glob_nov;
static int glob_sizeof_c;
static int glob_sizeof_s;
static int glob_total;

#define LIST_OF_REGISTERS						\
  X(value0, 0)								\
    X(value1, 1)							\
    X(value2, 2)							\
    X(value3, 3)							\
    X(value4, 4)							\
    X(value5, 5)								\
    X(value6, 6)								\
    X(value7 ,7)								\
    X(value8, 8)								\
    X(value9, 9)								\
    X(value10, 10)								\
    X(value11, 11)								\
    X(value12, 12)								\
    X(value13, 13)								\
    X(value14, 14)								\
    X(value15, 15)								\
    X(value16, 16)								\
    X(value17, 17)								\
    X(value18, 18)								\
    X(value19, 19)								\
    X(value20, 20)								\
    X(value21, 21)								\
    X(value22, 22)								\
    X(value23, 23)								\
    X(value24, 24)								\
    X(value25, 25)								\
    X(value26, 26)								\
    X(value27, 27)								\
    X(value28, 28)								\
    X(value29, 29)								\
    X(value30, 30)								\
    X(value31, 31)								\
    X(value32, 32)								\
    X(value33, 33)								\
    X(value34, 34)								\
    X(value35, 35)								\
    X(value36, 36)								\
    X(value37, 37)								\
    X(value38, 38)								\
    X(value39, 39)


//This is a CPU helper kernel for hybrid setting
template <class C, class S>
C cpu_perman64(S* mat_t,
               C x[],
               int nov,
               long long start,
               long long end,
               int threads) {

    C p = 0; //product of the elements in vector 'x'
    long long one = 1;
    long long unsigned chunk_size = (end - start) / threads + 1;
    //omp_set_num_threads(threads);

#pragma omp parallel num_threads(threads)
    {

        C my_x[nov];
        //for (int i = 0; i < nov; i++) {
        //my_x[i] = x[i];
        //}
        memcpy(my_x, x, nov*sizeof(C));

        int tid = omp_get_thread_num();
        unsigned long long my_start = start + tid * chunk_size;
        long long unsigned my_end = start + (tid+1) * chunk_size;
        if(tid == threads-1)
            my_end = end;

        C *xptr;
        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long unsigned  i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                xptr = (C*)my_x;
                for (int j = 0; j < nov; j++) {
                    *xptr += (C)(mat_t[(k * nov) + j]); // see Nijenhuis and Wilf - update x vector entries
                    xptr++;
                }
            }
        }
        int k;

        int prodSign = 1;
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            //compute the gray code
            k = __builtin_ctzll(i);
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            xptr = (C*)my_x;
            for (int j = 0; j < nov; j++) {
                *xptr += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= *xptr++;  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

#pragma omp atomic
        p += my_p;
    }

    return p;
}

int xshared_sharedmem(int b){
    return glob_nov*b*glob_sizeof_c;
}

//Same with above but lets keep it just to prevent confusion
int xshared_coalescing_sharedmem(int b){
    return glob_nov*b*glob_sizeof_c;
}

int xregister_coalescing_mshared_sharedmem(int b){
    return glob_nov*glob_nov*glob_sizeof_s;
}

int xshared_coalescing_mshared_sharedmem(int b){
    return (glob_nov*b*glob_sizeof_c + glob_nov*glob_nov*glob_sizeof_s);
}

int synchronize_gray_access_grid_dim(int grid_dim, int block_dim){

    int new_grid_dim = 1;
    int curr = grid_dim * block_dim;
    int be = 2;


    while(be < curr){
        be *= 2;
    }


    //be /= 2;

    new_grid_dim = be / (block_dim);

    printf("new_grid_dim: %d -- grid_dim*new_grid_dim: %d \n", new_grid_dim, new_grid_dim*grid_dim);
    return new_grid_dim;
}

long long gcs(long long remaining, int grid_dim, int block_dim){

    long long chunk_size = 1;
    int no_threads = grid_dim * block_dim;

    while((chunk_size * no_threads) < remaining){
        chunk_size *= 2;
    }
    chunk_size /= 2;

    return chunk_size;
}

template<class S>
int getNnz(S* mat2, int nov2){
    int nnz2 = 0;

    for(int i = 0; i < nov2*nov2; i++){
        if(mat2[i] > (S)0)
            nnz2++;
    }

    //printf("!!nnz2: %d!! \n", nnz2);
    return nnz2;
}

template<class C>
void print_x(C* x, int nov){

    printf("###################\n");
    printf("Printing x: \n");
    for(int i = 0; i < nov; i++){
        printf("%f ", (double)x[i]);
    }
    printf("\n");
    printf("###################\n");

}

//Tailored for hybrid setting
template <class C,class S>
C cpu_perman64_sparse(Matrix<S>* matrix, int threads, C* x, long long unsigned start, long long unsigned end) {

    SparseMatrix<S>* sparsemat = dynamic_cast<SparseMatrix<S>*>(matrix);

    //Pack parameters//
    //S* mat = densemat->mat;
    int* cptrs = sparsemat->cptrs;
    int* rows = sparsemat->rows;
    S* cvals = sparsemat->cvals;
    int nov = sparsemat->noRow;
    //Pack parameters//

    C p = 0; //product of the elements in vector 'x'

    //print_x(x, nov);

    long long one = 1;
    //long long start = 1;
    //long long end = (1LL << (nov-1));

    long long unsigned chunk_size = (end - start) / threads;
    //printf("threads %d -- start: %llu - end: %llu - chunk_size: %llu \n", threads, start, end, chunk_size);

    //printf("Should run with %d threads.. \n", threads);
#pragma omp parallel num_threads(threads)
    {
        int tid = omp_get_thread_num();
        long long unsigned my_start = start + tid * chunk_size;
        //long long unsigned my_end = min(start + ((tid+1) * chunk_size), end);
        long long unsigned my_end = start + (tid+1) * chunk_size;
        if(tid == threads-1)
            my_end = end;

        //#pragma omp critical
        //{
        //printf("I'm thread: %d -- my start: %llu - my end: %llu \n", tid, my_start, my_end);
        //}

        C my_x[nov];

        for(int i = 0; i < nov; i++){
            my_x[i] = x[i];
        }

        C s;  //+1 or -1
        C prod = 1.0; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                    my_x[rows[j]] += cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[j] == 0) {
                zero_num++;
            } else {
                prod *= my_x[j];  //product of the elements in vector 'x'
            }
        }
        int k;

        int prodSign = 1;
        if(i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            //compute the gray code
            k = __builtin_ctzll(i);
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                int row_id = rows[j];
                C my_val = my_x[row_id];
                S col_val = cvals[j];
                if (my_val == 0) {
                    zero_num--;
                    my_val += s * col_val; // see Nijenhuis and Wilf - update x vector entries
                    prod *= my_val;  //product of the elements in vector 'x'
                } else {
                    prod /= my_val;
                    my_val += s * col_val; // see Nijenhuis and Wilf - update x vector entries
                    if (my_val == 0) {
                        zero_num++;
                    } else {
                        prod *= my_val;  //product of the elements in vector 'x'
                    }
                }
                my_x[row_id] = my_val;
            }

            if(zero_num == 0) {
                my_p += prodSign * prod;
            }
            prodSign *= -1;
            i++;
        }

#pragma omp critical
        {
            //printf("I'm thread, %d , my_p: %f \n", tid, (double)my_p);
            p += my_p;
        }
    }

    //printf("CPU returning: %.16f \n", p);
    return p;
    //double perman = (4*(nov&1)-2) * p;
    //Result result(perman, duration);

    //return result;
    //return perman;
}

template <class C, class S>
C cpu_perman64_skip(Matrix<S>* matrix, int threads, C* x, long long unsigned start, long long unsigned end) {
    SparseMatrix<S> *sparsemat = dynamic_cast<SparseMatrix<S> *>(matrix);

    //Pack parameters//
    int* rptrs = sparsemat->rptrs;
    int* cols = sparsemat->cols;
    S* rvals = sparsemat->rvals;
    int* cptrs = sparsemat->cptrs;
    int* rows = sparsemat->rows;
    S* cvals = sparsemat->cvals;
    int nov = sparsemat->noRow;
    //Pack parameters//

    C p = 0;

    //first initialize the vector then we will copy it to ourselves

    int j = 0;
    //unsigned long long ci, start, end, chunk_size;
    unsigned long long ci, chunk_size;
    double change_j;

    int no_chunks = threads * 32;
    chunk_size = (end - start + 1) / no_chunks + 1;
    //printf("chunk_size: %llu \n", chunk_size);

#pragma omp parallel num_threads(threads) private(j, ci, change_j)
    {
        C my_x[nov];

#pragma omp for schedule(dynamic, 1)
        for(int cid = 0; cid < no_chunks; cid++) {
            int tid = omp_get_thread_num();
            unsigned long long my_start = start + cid * chunk_size;
            unsigned long long my_end = std::min(start + ((cid+1) * chunk_size), end);

            //#pragma omp critical
            //{
            //printf("start: %llu - end: %llu || cid: %d || tid: %d -- my_start: %llu - my_end: %llu \n", start, end, cid, tid, my_start, my_end);
            //}

            //update if neccessary
            C my_p = 0;

            unsigned long long my_gray;
            unsigned long long my_prev_gray = 0;
            memcpy(my_x, x, sizeof(C) * nov);

            int ptr, last_zero;
            unsigned long long period, steps, step_start;

            unsigned long long i = my_start;

            while (i < my_end) {
                //k = __builtin_ctzll(i + 1);
                my_gray = i ^ (i >> 1);

                unsigned long long gray_diff = my_prev_gray ^ my_gray;

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
            }
        }
    }

    return p;
}

//Unary functions for cudaOccupancyMaxPotentialBlockSizeVariableSmem
int xshared_sparse_sharedmem(int b){
    return glob_nov*b*glob_sizeof_c;
}

int xshared_coalescing_sparse_sharedmem(int b){ //Actually the same but no need to confusion
    return glob_nov*b*glob_sizeof_c;
}

int xshared_coalescing_mshared_sparse_sharedmem(int b){
    return glob_nov*b*glob_sizeof_c + (glob_nov+1)*sizeof(int) + glob_total*sizeof(int)  + glob_total*glob_sizeof_s + glob_sizeof_s;
    //////////////for my_x////////////////////for d_cptrs//////////for d_rows///////////////////for d_cvals////////////
    //Note that d_x is not resides at the shared memory, in contrary, we copy it to d_p at the very beginning
}

int xshared_coalescing_mshared_skipper_sharedmem(int b){
    return glob_nov*b*glob_sizeof_c + 2*(glob_nov+1)*sizeof(int) + 2*glob_total*sizeof(int) + glob_total*glob_sizeof_s;
}


#endif //SUPERMAN_REBORN_GPUHELPERS_H
