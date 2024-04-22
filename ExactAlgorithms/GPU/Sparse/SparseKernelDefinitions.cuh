//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH

#include "cuda_runtime.h"
#include "GPUHelpers.h"


namespace Definitions
{
    template <class C, class S>
    __global__ void kernel_xlocal_sparse(int* cptrs,
                                         int* rows,
                                         S* cvals,
                                         C* x,
                                         C* p,
                                         int nov) {
        C my_x[40]; //That should not be named as local, should be names as *register*
        //And also, there should be controversy about it's size
        //What if number of registers vary with GPU -> register spilling = BAD
        for (int k = 0; k < nov; k++) {
            my_x[k] = x[k];
        }

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        long long start = 1;
        long long end = (1LL << (nov-1));

        long long chunk_size = (end - start) / number_of_threads + 1;


        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
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

        prod = 1.0;
        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[j] == 0) {
                zero_num++;
            } else {
                prod *= my_x[j];  //product of the elements in vector 'x'
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
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

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xshared_sparse(int* cptrs,
                                          int* rows,
                                          S* cvals,
                                          C* x,
                                          C* p,
                                          int nov) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE

        for (int k = 0; k < nov; k++) {
            my_x[thread_id*nov + k] = x[k];
        }

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        long long start = 1;
        long long end = (1LL << (nov-1));

        long long chunk_size = (end - start) / number_of_threads + 1;

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                    my_x[thread_id*nov + rows[j]] += cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        prod = 1.0;
        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[thread_id*nov + j] == 0) {
                zero_num++;
            } else {
                prod *= my_x[thread_id*nov + j];  //product of the elements in vector 'x'
            }
        }

        long long gray_diff;
        int k;

        C prodSign = 1;  //Optimization point
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                int row_id = rows[j];
                int ind = thread_id*nov + row_id;
                C my_val = my_x[ind];
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
                my_x[ind] = my_val;
            }

            if(zero_num == 0) {
                my_p += prodSign * prod;
            }
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xshared_coalescing_sparse(int* cptrs,
                                                     int* rows,
                                                     S* cvals,
                                                     C* x,
                                                     C* p,
                                                     int nov) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        long long start = 1;
        long long end = (1LL << (nov-1));

        long long chunk_size = end / number_of_threads + 1;

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);


        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                    my_x[block_dim*rows[j] + thread_id] += cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        prod = 1.0;
        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[block_dim*j + thread_id] == 0) {
                zero_num++;
            } else {
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            for (int j = cptrs[k]; j < cptrs[k+1]; j++) {
                int row_id = rows[j];
                int ind = block_dim*row_id + thread_id;
                S col_val = cvals[j];
                C my_val = my_x[ind];

                if (my_val == 0) {
                    zero_num--;
                    my_val += s * col_val;
                    prod *= my_val;
                } else
                {
                    prod /= my_val;
                    my_val += s * col_val;
                    if (my_val == 0) {
                        zero_num++;
                    } else
                    {
                        prod *= my_val;  //product of the elements in vector 'x'
                    }
                }
                my_x[ind] = my_val;
            }

            if(zero_num == 0) {
                my_p += prodSign * prod;
            }
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xshared_coalescing_mshared_sparse(int* cptrs,
                                                             int* rows,
                                                             S* cvals,
                                                             C* x,
                                                             C* p,
                                                             int nov,
                                                             int total,
                                                             long long start,
                                                             long long end) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);

        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        int *shared_cptrs = (int*) &my_x[nov * block_dim]; // size = nov + 1
        int *shared_rows = (int*) &shared_cptrs[nov + 1];  // size = total num of elts
        S *shared_cvals;

        int offset = ((unsigned long long)(&shared_rows[total])) % sizeof(S);
        //if(thread_id == 0)
        //printf("offset: %d \n", offset);
        shared_cvals = (S*) ((unsigned long long)(&shared_rows[total]) + (sizeof(S) - offset));


        __syncthreads();

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
            shared_cptrs[k] = cptrs[k];
        }
        shared_cptrs[nov] = cptrs[nov];

        for (int k = 0; k < total; k++) { //Produce out of warp error
            shared_rows[k] = rows[k];
            //printf("Adress of misaligned: %p \n", &shared_cvals[k]);
            shared_cvals[k] = cvals[k];
        }

        __syncthreads();

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;

        long long chunk_size = (end - start) / number_of_threads + 1;

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = shared_cptrs[k]; j < shared_cptrs[k+1]; j++) {
                    //printf("tid(%d)(%d)(%d) Will access -- j: %d - ind %d --- &: %p \n", tid, thread_id, blockIdx.x, j, block_dim*shared_rows[j] + thread_id, &my_x[block_dim*shared_rows[j] + thread_id]);
                    //__syncthreads();
                    my_x[block_dim*shared_rows[j] + thread_id] += shared_cvals[j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        prod = 1.0;
        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[block_dim*j + thread_id] == 0) {
                zero_num++;
            } else {
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            for (int j = shared_cptrs[k]; j < shared_cptrs[k+1]; j++) {
                int row_id = shared_rows[j];
                int ind = block_dim * row_id + thread_id;
                S col_val = shared_cvals[j];
                C my_val = my_x[ind];
                if (my_val == 0) {
                    zero_num--;
                    my_val += s * col_val;
                    prod *= my_val;
                } else
                {
                    prod /= my_val;
                    my_val += s * col_val;
                    if (my_val == 0) {
                        zero_num++;
                    } else {
                        prod *= my_val;  //product of the elements in vector 'x'
                    }
                }
                my_x[ind] = my_val;
            }

            if(zero_num == 0) {
                my_p += prodSign * prod;
            }
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


    template <class C, class S>
    __global__ void kernel_xshared_coalescing_mshared_skipper(int* rptrs,
                                                              int* cols,
                                                              int* cptrs,
                                                              int* rows,
                                                              S* cvals,
                                                              C* x,
                                                              C* p,
                                                              int nov,
                                                              int total,
                                                              long long start,
                                                              long long end) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*) shared_mem; // size = nov * BLOCK_SIZE
        int *shared_rptrs = (int*) &my_x[nov * block_dim]; // size = nov + 1
        int *shared_cols = (int*) &shared_rptrs[nov + 1]; // size = total num of elts
        int *shared_cptrs = (int*) &shared_cols[total]; // size = nov + 1
        int *shared_rows = (int*) &shared_cptrs[nov + 1]; // size = total num of elts
        //printf("Working total: %d \n" , total);
        S *shared_cvals = (S*) &shared_rows[total]; // size = total num of elts

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
            shared_rptrs[k] = rptrs[k];
            shared_cptrs[k] = cptrs[k];
        }
        shared_rptrs[nov] = rptrs[nov];
        shared_cptrs[nov] = cptrs[nov];

        for (int k = 0; k < total; k++) {
            shared_cols[k] = cols[k];
            shared_rows[k] = rows[k];
            shared_cvals[k] = cvals[k];
        }

        __syncthreads();

        long long number_of_threads = blockDim.x * gridDim.x;

        long long chunk_size = (end - start) / number_of_threads + 1;

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long prev_gray = 0;
        long long gray;

        int zero_num = 0;
        for (int j = 0; j < nov; j++) {
            if (my_x[block_dim*j + thread_id] == 0) {
                zero_num++;
            } else {
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }
        }

        long long gray_diff;
        unsigned long long ci, period, steps, step_start;
        double change_j;
        int j = 0;
        while (i < my_end) {
            gray = i ^ (i >> 1);
            gray_diff = prev_gray ^ gray;

            j = 0;
            while(gray_diff > 0) { // this contains the bit to be updated
                long long onej = 1LL << j;
                if(gray_diff & onej) { // if bit l is changed
                    gray_diff ^= onej;   // unset bit
                    if(gray & onej) {    // do the update
                        for (int ptr = shared_cptrs[j]; ptr < shared_cptrs[j + 1]; ptr++) {
                            my_x[block_dim*shared_rows[ptr] + thread_id] += shared_cvals[ptr];
                        }
                    }
                    else {
                        for (int ptr = shared_cptrs[j]; ptr < shared_cptrs[j + 1]; ptr++) {
                            my_x[block_dim*shared_rows[ptr] + thread_id] -= shared_cvals[ptr];
                        }
                    }
                }
                j++;
            }

            prev_gray = gray;
            int last_zero = -1;
            prod = 1.0;
            for(j = nov - 1; j >= 0; j--) {
                prod *= my_x[block_dim*j + thread_id];
                if(my_x[block_dim*j + thread_id] == 0) {
                    last_zero = j;
                    break;
                }
            }

            if(prod != 0) {
                my_p += ((i&1LL)? -1.0:1.0) * prod;
                i++;
            }
            else {
                change_j = -1;
                for (int ptr = shared_rptrs[last_zero]; ptr < shared_rptrs[last_zero + 1]; ptr++) {
                    step_start = 1ULL << shared_cols[ptr];
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

        p[tid] = my_p;
    }
}


#endif //SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH
