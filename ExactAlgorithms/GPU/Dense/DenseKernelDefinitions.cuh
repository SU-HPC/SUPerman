//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_DENSEKERNELDEFINITIONS_CUH
#define SUPERMAN_REBORN_DENSEKERNELDEFINITIONS_CUH

#include "cuda_runtime.h"
#include "GPUHelpers.h"


namespace Definitions
{
    template<class C, class S>
    __global__ void kernel_xglobal(S *mat_t,
                                   C *x,
                                   C *p,
                                   int nov)
    {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        long long start = 1;
        long long end = (1LL << (nov - 1));

        long long chunk_size = (end - start) / number_of_threads + 1; //Is this the problem

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid + 1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i - 1) ^ ((i - 1) >> 1);

        for (int k = 0; k < (nov - 1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = 0; j < nov; j++) {
                    x[tid * nov + j] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                x[tid * nov + j] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= x[tid * nov + j];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xlocal(S* mat_t, C* x, C* p, int nov) {

        C my_x[40]; //Again, it is problematic for matrices > 40 but anyways, we will not calculate them with this kernel. Another problem is, this may cause register spilling with different GPUs.

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

        C *xptr;
        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                xptr = (C*)my_x;
                for (int j = 0; j < nov; j++) {
                    *xptr += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                    xptr++;
                }
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

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xshared(S* mat_t, C* x, C* p, int nov) {
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
                for (int j = 0; j < nov; j++) {
                    my_x[thread_id*nov + j] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
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

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[thread_id*nov + j] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[thread_id*nov + j];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

    template <class C, class S>
    __global__ void kernel_xshared_coalescing(S* mat_t, C* x, C* p, int nov) {
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
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

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

///////Vertical versions 1
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix(S* mat_t, C* x, C* p, int nov) {
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
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

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


///////Vertical versions 2
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix_texfour(S* mat_t, C* x, C* p, int nov) {
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
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

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

///////Vertical versions 3
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix_texeight(S* mat_t, C* x, C* p, int nov) {
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
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

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//Vertical versions 4
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix_mshared(S* mat, C* x, C* p, int nov, long long start, long long end) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }

        for(int k = 0; (k*block_dim) < (nov*nov); k++){
            if(k*block_dim + thread_id < nov*nov){
                shared_mat[k*block_dim+thread_id] = mat[k*block_dim+thread_id];
                //if(tid < block_dim)
                //printf("tid: %d -- thread_id: %d -- k: %d -- access: %d \n", tid, thread_id, k, k*block_dim+thread_id);
            }
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += shared_mat[(j * nov) + k]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        //if(tid < 32){
        //for(int i = 0; i < nov; i++){
        //printf("tid: %d || x: %d || #value: %f \n", tid, i, (double)my_x[i]);
        //}
        //}

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * shared_mat[(j * nov) + k]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

//Vertical versions 5
    template <class C, class S>
    __global__ void kernel_xregister_coalescing_plainmatrix_mshared(S* mat, C* x, C* p, int nov, long long start, long long end) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        S *shared_mat = (S*) &shared_mem; // size = nov * nov

#define X(value, a) C value;
        LIST_OF_REGISTERS
#undef X

#define X(value, a) if(a < nov){value=x[a];}
        LIST_OF_REGISTERS
#undef X

        for(int k = 0; (k*block_dim) < (nov*nov); k++){
            if(k*block_dim + thread_id < nov*nov){
                shared_mat[k*block_dim+thread_id] = mat[k*block_dim+thread_id];
            }
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

#define X(value, a) if(a < nov){value += shared_mat[(a * nov) + k];}
                LIST_OF_REGISTERS
#undef X
            }
        }

        //if(tid < 32){
        //#define X(value, a) if(a < nov){printf("tid: %d || reg: %d ||  #value: %f \n", tid, a, (double)value);}
        //LIST_OF_REGISTERS
        //#undef X
        //}

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;

            /*
            if(tid < 64){
              printf("--cg-- tid: %d - i: %lld - k: %d \n", tid, i , k);
              if(tid == 0)
            printf("################\n");
            }
            __syncthreads();
            */


#define X(value, a) if(a < nov){value+=s*shared_mat[(a*nov)+k];prod*=value;}
            LIST_OF_REGISTERS
#undef X

            /*
        #define X(value, a) if(a < nov){value+=s*shared_mat[(k*nov)+a];prod*=value;}
            LIST_OF_REGISTERS
        #undef X
            */
            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

//Vertical versions 11
    template <class C, class S>
    __global__ void kernel_xregister_coalescing_plainmatrix_mshared_cgray(S* mat, C* x, C* p, int nov, long long start, long long end, long long chunk_size) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        S *shared_mat = (S*) &shared_mem; // size = nov * nov

#define X(value, a) C value;
        LIST_OF_REGISTERS
#undef X

#define X(value, a) if(a < nov){value=x[a];}
        LIST_OF_REGISTERS
#undef X

        for(int k = 0; (k*block_dim) < (nov*nov); k++){
            if(k*block_dim + thread_id < nov*nov){
                shared_mat[k*block_dim+thread_id] = mat[k*block_dim+thread_id];
            }
        }

        __syncthreads();

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;

        //long long chunk_size = (end - start) / number_of_threads + 1;

        //if(tid == 0)
        //printf("--cg-- chunk size: %lld \n",  chunk_size);

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not

#define X(value, a) if(a < nov){value += shared_mat[(a * nov) + k];}
                LIST_OF_REGISTERS
#undef X
            }
        }

        //if(tid < 32){
        //#define X(value, a) if(a < nov){printf("tid: %d || reg: %d ||  #value: %f \n", tid, a, (double)value);}
        //LIST_OF_REGISTERS
        //#undef X
        //}

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;

            /*
            if(tid < 64){
              printf("--cg-- tid: %d - i: %lld - k: %d \n", tid, i , k);
              if(tid == 0)
            printf("################\n");
            }
            __syncthreads();
            */


#define X(value, a) if(a < nov){value+=s*shared_mat[(a*nov)+k];prod*=value;}
            LIST_OF_REGISTERS
#undef X

            /*
        #define X(value, a) if(a < nov){value+=s*shared_mat[(k*nov)+a];prod*=value;}
            LIST_OF_REGISTERS
        #undef X
            */
            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//Vertical versions 12
    template <class C, class S>
    __global__ void kernel_xregister_coalescing_cgray(S* mat_t, C* x, C* p, int nov, long long start, long long end, long long chunk_size) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;


#define X(value, a) C value;
        LIST_OF_REGISTERS
#undef X

#define X(value, a) if(a < nov){value=x[a];}
        LIST_OF_REGISTERS
#undef X

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        //long long start = 1;
        //long long end = (1LL << (nov-1));

        //long long chunk_size = (end - start) / number_of_threads + 1;

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
#define X(value, a) if(a < nov){value += mat_t[(a * nov) + k];}
                LIST_OF_REGISTERS
#undef X
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

            prod = 1.0;

#define X(value, a) if(a < nov){value+=s*mat_t[(a*nov)+k];prod*=value;}
            LIST_OF_REGISTERS
#undef X

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//Vertical versions 12.1
    template <class C, class S>
    __global__ void kernel_xregister_coalescing(S* mat_t, C* x, C* p, int nov, long long start, long long end) {

        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;


#define X(value, a) C value;
        LIST_OF_REGISTERS
#undef X

#define X(value, a) if(a < nov){value=x[a];}
        LIST_OF_REGISTERS
#undef X

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;
        //long long start = 1;
        //long long end = (1LL << (nov-1));

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
#define X(value, a) if(a < nov){value += mat_t[(a * nov) + k];}
                LIST_OF_REGISTERS
#undef X
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

            prod = 1.0;

#define X(value, a) if(a < nov){value+=s*mat_t[(a*nov)+k];prod*=value;}
            LIST_OF_REGISTERS
#undef X

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//Vertical versions 6
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix_mshared_selected(S* mat_t, C* x, C* p, int nov, long long start, long long end) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat_t = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }

        for (int k = 0; k < ((nov*nov)/block_dim + 1); k++) {
            if ((block_dim * k + thread_id) < (nov * nov))
                shared_mat_t[block_dim * k + thread_id] = mat_t[block_dim * k + thread_id];
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }

//Vertical versions 7
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_plainmatrix_mshared_selected_perwarp(S* mat_t, C* x, C* p, int nov, long long start, long long end) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat_t = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }

        for (int k = 0; k < ((nov*nov)/block_dim + 1); k++) {
            if ((block_dim * k + thread_id) < (nov * nov))
                shared_mat_t[block_dim * k + thread_id] = mat_t[block_dim * k + thread_id];
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//Vertical versions 8
    template <class C, class S>
    __global__ void kernel_xregister_coalescing_plainmatrix_mshared_selected_perwarp(S* mat_t, C* x, C* p, int nov, long long start, long long end) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat_t = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }

        for (int k = 0; k < ((nov*nov)/block_dim + 1); k++) {
            if ((block_dim * k + thread_id) < (nov * nov))
                shared_mat_t[block_dim * k + thread_id] = mat_t[block_dim * k + thread_id];
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
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                my_x[block_dim*j + thread_id] += s * shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }



    template <class C, class S>
    __global__ void kernel_xshared_coalescing_mshared(S* mat_t, C* x, C* p, int nov, long long start, long long end) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        C my_val;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat_t = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }


        for(int k = 0; (k*block_dim) < (nov*nov); k++){
            if(k*block_dim + thread_id < nov*nov){ //It looks weird when look after a year of work
                shared_mat_t[k*block_dim+thread_id] = mat_t[k*block_dim+thread_id];
                //if(tid < block_dim)
                //printf("tid: %d -- thread_id: %d -- k: %d -- access: %d \n", tid, thread_id, k, k*block_dim+thread_id);
            }
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
                for (int j = 0; j < nov; j++) {
                    //my_x[block_dim*j + thread_id] += shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                    my_val = shared_mat_t[(k * nov) + j];
                    my_x[block_dim*j + thread_id] += my_val;
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }
        while (i < my_end) {
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;

            /*
            if(tid < 64){
              printf("--cg-- tid: %d - i: %lld - k: %d \n", tid, i , k);
              if(tid == 0)
            printf("################\n");
            }
            __syncthreads();
            */

            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            for (int j = 0; j < nov; j++) {
                //my_x[block_dim*j + thread_id] += s * shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                my_val = s * shared_mat_t[(k * nov) + j];
                my_x[block_dim*j + thread_id] += my_val;
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }


//COALESCED GRAY
    template <class C, class S>
    __global__ void kernel_xshared_coalescing_mshared_cgray(S* mat_t, C* x, C* p, int nov, long long start, long long end, long long chunk_size) {
        int tid = threadIdx.x + (blockIdx.x * blockDim.x);
        int thread_id = threadIdx.x;
        int block_dim = blockDim.x;

        int laneId = threadIdx.x & 0x1f;

        extern __shared__ double shared_mem[];
        C *my_x = (C*)shared_mem; // size = nov * BLOCK_SIZE
        S *shared_mat_t = (S*) &my_x[nov * block_dim]; // size = nov * nov

        for (int k = 0; k < nov; k++) {
            my_x[block_dim*k + thread_id] = x[k];
        }


        for(int k = 0; (k*block_dim) < (nov*nov); k++){
            if(k*block_dim + thread_id < nov*nov){
                shared_mat_t[k*block_dim+thread_id] = mat_t[k*block_dim+thread_id];
                //if(tid < block_dim)
                //printf("tid: %d -- thread_id: %d -- k: %d -- access: %d \n", tid, thread_id, k, k*block_dim+thread_id);
            }
        }

        __syncthreads();

        long long number_of_threads = blockDim.x * gridDim.x;

        long long one = 1;

        //long long chunk_size = (end - start) / number_of_threads + 1;

        //if(tid == 0)
        //printf("--cg-- chunk size: %lld \n",  chunk_size);

        long long my_start = start + tid * chunk_size;
        long long my_end = min(start + ((tid+1) * chunk_size), end);

        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                for (int j = 0; j < nov; j++) {
                    my_x[block_dim*j + thread_id] += shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                }
            }
        }

        long long gray_diff;
        int k;

        int prodSign = 1;
        if (i & 1LL) {
            prodSign = -1;
        }

        __syncthreads();

        S br_val;

        while (i < my_end) { //Except for last iteration
            gray_diff = (i ^ (i >> 1)) ^ gray;
            k = __ffsll(gray_diff) - 1;


            /*
            if(tid < 64 && chunk_size == 16384){
              printf("--cg-- tid: %d - i: %lld - k: %d \n", tid, i , k);
              if(tid == 0)
            printf("################\n");
            }
            __syncthreads();
            */

            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            //Unroll here?
            for (int j = 0; j < nov; j++) {
                //if(laneId == 0)
                //br_val = shared_mat_t[(k * nov) + j];
                //br_val = __shfl_sync(0xffffffff, br_val, 0);
                //my_x[block_dim*j + thread_id] += s * br_val; // see Nijenhuis and Wilf - update x vector entries
                my_x[block_dim*j + thread_id] += s * shared_mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= my_x[block_dim*j + thread_id];  //product of the elements in vector 'x'
            }

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

        p[tid] = my_p;
    }
}


#endif //SUPERMAN_REBORN_DENSEKERNELDEFINITIONS_CUH
