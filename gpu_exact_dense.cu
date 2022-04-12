#include <omp.h>
#include <stdio.h>
#include "flags.h"
#include "gpu_wrappers.h"
//#ifdef MPIENABLED
//#include <mpi.h>
//#endif

static int glob_nov;
static int glob_sizeof_c;
static int glob_sizeof_s;

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
    unsigned long long my_end = min(start + ((tid+1) * chunk_size), end);
    
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

template <class C, class S>
__global__ void kernel_xglobal(S* mat_t,
			       C* x,
			       C* p,
			       int nov) {
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);
  
  long long number_of_threads = blockDim.x * gridDim.x;

  long long one = 1;
  long long start = 1;
  long long end = (1LL << (nov-1));
  
  long long chunk_size = (end-start) / number_of_threads + 1; //Is this the problem

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
        x[tid*nov + j] += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
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
      x[tid*nov + j] += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
      prod *= x[tid*nov + j];  //product of the elements in vector 'x'
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

  if(tid < 32){
    for(int i = 0; i < nov; i++){
      printf("tid: %d || x: %d || #value: %f \n", tid, i, (double)my_x[i]);
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
#define X(value, a) if(a < nov){value+=s*shared_mat[(a*nov)+k];prod*=value;}
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
extern Result gpu_perman64_xglobal(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();

  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
                                     &block_dim,
                                     &kernel_xglobal<C,S>,
                                     0,
                                     0);
  
  printf("==SC== No Shared memory is used for the kernel..\n");
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);

  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  C *h_x = new C[nov*grid_dim*block_dim];
  for (int i = 0; i < nov*grid_dim*block_dim; i++) {
    h_x[i] = x[i%nov];
  }
  
  S *d_mat_t;
  C *d_x;
  C *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov*grid_dim*block_dim) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, h_x, (nov*grid_dim*block_dim) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xglobal<C,S><<<grid_dim , block_dim>>>(d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = 0;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete [] h_x;
  delete [] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

  
  //return((4*(nov&1)-2) * p);
}

template <class C, class S>
  extern Result gpu_perman64_xlocal(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//
  
  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int grid_dim_multip = flags.grid_multip;
  int device_id = flags.device_id;
  //Pack flags//
  
  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
                                     &block_dim,
                                     &kernel_xlocal<C,S>,
                                     0,
                                     0);
  
  printf("==SC== No Shared memory is used for the kernel..\n");
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }
  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];
  
  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
  
  //double stt = omp_get_wtime();
  kernel_xlocal<C,S><<<grid_dim , block_dim>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
  
  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }
  
  delete[] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
  //return((4*(nov&1)-2) * p);
}

template <class C, class S>
  extern Result gpu_perman64_xshared(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();

  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared<C,S>,
                                                 xshared_sharedmem,
                                                 0);

  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);

  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }


  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }
  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
  
  //double stt = omp_get_wtime();
  kernel_xshared<C,S><<<grid_dim , block_dim , size>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
  //return((4*(nov&1)-2) * p);
}

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing<C,S>,
                                                 xshared_coalescing_sharedmem,
                                                 0);

  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing<C,S><<<grid_dim , block_dim , size>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;


  //return((4*(nov&1)-2) * p);
}


/////// Vertical versions 1
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing<C,S>,
                                                 xshared_coalescing_sharedmem,
                                                 0);

  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_plainmatrix<C,S><<<grid_dim , block_dim , size>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;


  //return((4*(nov&1)-2) * p);
}


/////// Vertical versions 2
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing<C,S>,
                                                 xshared_coalescing_sharedmem,
                                                 0);

  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_plainmatrix_texfour<C,S><<<grid_dim , block_dim , size>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;


  //return((4*(nov&1)-2) * p);
}


/////// Vertical versions 3
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing<C,S>,
                                                 xshared_coalescing_sharedmem,
                                                 0);

  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  
  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_plainmatrix_texeight<C,S><<<grid_dim , block_dim , size>>> (d_mat_t, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete [] mat_t;
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;


  //return((4*(nov&1)-2) * p);
}


/////// Vertical versions 4
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing_mshared<C,S>,
                                                 xshared_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S *d_mat;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  
  kernel_xshared_coalescing_plainmatrix_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat, d_x, d_p, nov, start, end);
  cudaDeviceSynchronize();
  
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }
  
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
}

/////// Vertical versions 5
template <class C, class S>
extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xregister_coalescing_plainmatrix_mshared<C,S>,
                                                 xregister_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = nov*nov*sizeof(S);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S *d_mat;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  
  kernel_xregister_coalescing_plainmatrix_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat, d_x, d_p, nov, start, end);
  cudaDeviceSynchronize();
  
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
}


/////// Vertical versions 6
template <class C, class S>
  extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi(DenseMatrix<S>* densemat, flags flags) {
  

#ifdef MPIENABLED
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//
  
  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  //cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  //double starttime = omp_get_wtime();
  double starttime = MPI_Wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem

  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xregister_coalescing_plainmatrix_mshared<C,S>,
                                                 xregister_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = nov*nov*sizeof(S);

  if(RANK == 0){
    printf("==SC== Shared memory per block is set to : %zu \n", size);
    printf("==SC== Grid dim is set to : %d \n", grid_dim);
    printf("==SC== Block dim is set to : %d \n", block_dim);
  }
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    if(RANK==0) printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S *d_mat;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat, (nov * nov) * sizeof(S));

  

  long long start = 1;
  long long end = (1LL << (nov-1));

  long long my_start;
  long long my_end;  

  long long offset = end / NPROCS + 1;

  //if(RANK == 0) printf("offset: %lld \n", offset);

  my_start = start + RANK*offset;

  if(RANK == NPROCS-1)
    my_end = end;
  else
    my_end = start + (RANK+1)*offset;

  /*
  C* xptr;
  long long gray;
  gray = (my_start - 1) ^ ((my_start - 1) >> 1);

  for(int k = 0; k < (nov - 1); k++){
    if((gray >> k) & 1LL){
      xptr = (C*)x;
      for(int j = 0; j < nov; j++){
	*xptr += mat[(j * nov) + k];
	xptr++;
      }
    }
  }

  for(int i = 0; i < NPROCS; i++){
    if(i == RANK){
      printf("############################\n");
      printf("RANK: %d | xvector: \n", RANK);
      for(int j = 0; j < nov; j++){
	printf("%f ", x[j]);
      }
      printf("\n");
      printf("############################\n");
      fflush(stdout);
    }
    MPI_Barrier (MPI_COMM_WORLD);
  }
  */

  //printf("My RANK: %d / %d  || my_start: %lld - my_end: %lld || start: %lld - end: %lld || my_gray: %lld\n", RANK, NPROCS, my_start, my_end, start, end, gray);

  //X vector needs to have different initial values
  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
  
  kernel_xregister_coalescing_plainmatrix_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat, d_x, d_p, nov, my_start, my_end);
  cudaDeviceSynchronize();
  
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  
  double return_p;
  if(RANK == 0)
    return_p = p;
  else
    return_p = 0;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }

  delete[] h_p;

  MPI_Barrier(MPI_COMM_WORLD);
  double reduce_p = 0;
  MPI_Reduce(&return_p, &reduce_p, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
  
  double reduce_perman = (4*(nov&1)-2) * reduce_p;
  //printf("My RANK: %d / %d || Partial sum: %.16e \n", RANK, NPROCS, return_p);
  //if(RANK == 0)
  //printf("MPI Result || %.16e -> %.16e \n", reduce_p, reduce_perman);
  
  
  double perman = (4*(nov&1)-2) * return_p;

  //MPI_Finalize();
  MPI_Barrier(MPI_COMM_WORLD);
  double duration = MPI_Wtime() - starttime;
  Result result(reduce_perman, duration);
  return result;

#else
  printf("SUPerman did not compiled for MPI! \n Compile as: 'make mpi' \n");
  Result result(-1.0, -1.0);
  return result;
#endif
}


/////// Vertical versions 7
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing_mshared<C,S>,
                                                 xshared_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      //printf("transpose i: %d -- j: %d \n", i, j);
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  
  kernel_xshared_coalescing_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat_t, d_x, d_p, nov, start, end);
  cudaDeviceSynchronize();
  
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }

  //delete [] mat_t;
  free(mat_t);
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
}


/////// Vertical versions 8
template <class C, class S>
  extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing_mshared<C,S>,
                                                 xshared_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      //printf("transpose i: %d -- j: %d \n", i, j);
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  
  kernel_xshared_coalescing_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat_t, d_x, d_p, nov, start, end);
  cudaDeviceSynchronize();
  
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }

  //delete [] mat_t;
  free(mat_t);
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

}
////////



template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_mshared(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'

  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
      //printf("j: %d -- k: %d \n", j, k);
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                 &block_dim,
                                                 &kernel_xshared_coalescing_mshared<C,S>,
                                                 xshared_coalescing_mshared_sharedmem,
                                                 0);

  size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      //printf("transpose i: %d -- j: %d \n", i, j);
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  S *d_mat_t;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat_t, d_x, d_p, nov, start, end);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //printf("Kernel in %f \n", enn - stt);
  //cout << "kernel" << " in " << (enn - stt) << endl;
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_mat_t);
  cudaFree(d_x);
  cudaFree(d_p);
  
  //for(int i = 0; i < grid_dim * block_dim; i++){
  //printf("h_p[%d]: %e \n", i, h_p[i]);
  //}

  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
    //printf("i: %d -- p: %e  \n", i, p);
  }

  //delete [] mat_t;
  free(mat_t);
  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

  //return((4*(nov&1)-2) * p);
} 

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpu(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters
  
  //Pack flags//
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int gpu_num = flags.gpu_num;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  //Multigpu special//
  int grid_dims[gpu_num];
  int block_dims[gpu_num];

  for(int i = 0; i < gpu_num; i++){
    grid_dims[i] = grid_dim;
    block_dims[i] = block_dim;
  }
  //Multigpu special//
  
  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  C p_partial[gpu_num];
  
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p_partial[gpu_id] = 0;
  }
  
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }
  
  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }
  
  long long start = 1;
  long long end = (1LL << (nov-1));
  long long offset = (end - start) / gpu_num;
  
#pragma omp parallel num_threads(gpu_num)
  {
    int gpu_id = omp_get_thread_num();
    cudaSetDevice(gpu_id);
    
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, gpu_id);
    printf("==SC== Running on device: %d -- %s \n", gpu_id, prop.name);
    
    cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dims[gpu_id],
						   &block_dims[gpu_id],
						   &kernel_xshared_coalescing_mshared<C,S>,
						   xshared_coalescing_mshared_sharedmem,
						   0);
    
    size_t size = (nov*block_dims[gpu_id]*sizeof(C) + nov*nov*sizeof(S));
    
    printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, gpu_id, prop.name);
    printf("==SC== Grid dim is set to : %d  on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
    printf("==SC== Block dim is set to : %d on %d-%s \n", block_dims[gpu_id], gpu_id, prop.name);
    
    if(grid_dim_multip != 1){
      grid_dims[gpu_id]*=grid_dim_multip;
      printf("==SC== Grid dim is re-set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
    }
    
    S *d_mat_t;
    C *d_x, *d_p;
    C *h_p = new C[grid_dims[gpu_id] * block_dims[gpu_id]];
    
    cudaMalloc( &d_x, (nov) * sizeof(C));
    cudaMalloc( &d_p, (grid_dims[gpu_id] * block_dims[gpu_id]) * sizeof(C));
    cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));
    
    cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
    cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
  
    
    if (gpu_id == gpu_num-1) {
      kernel_xshared_coalescing_mshared<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_mat_t, d_x, d_p, nov, (start + gpu_id*offset), end);
    }
    else {
      kernel_xshared_coalescing_mshared<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_mat_t, d_x, d_p, nov, (start + gpu_id*offset), (start + (gpu_id+1)*offset));
    }
    cudaDeviceSynchronize();
    
    cudaMemcpy( h_p, d_p, grid_dims[gpu_id] * block_dims[gpu_id] * sizeof(C), cudaMemcpyDeviceToHost);
    
    cudaFree(d_mat_t);
    cudaFree(d_x);
    cudaFree(d_p);

    for (int i = 0; i < grid_dims[gpu_id] * block_dims[gpu_id]; i++) {
      p_partial[gpu_id] += h_p[i];
    }
    delete[] h_p;
  }
  
  delete [] mat_t;
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p += p_partial[gpu_id];
  }
  
  double return_p = p;
  
  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
}

template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters
  
  //Pack parameters
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int threads = flags.threads;
  int f_grid_dim = flags.grid_dim;
  int f_block_dim = flags.block_dim;
  int grid_dim_multip = flags.grid_multip;
  //Pack parameters

  cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
  for(int i = 0; i < gpu_num; i++){
    cudaGetDeviceProperties(&props[i], i);
    printf("===SC=== Using Device: %d -- %s \n", i, props[i].name);
  }

  double starttime = omp_get_wtime();
  int gpu_driver_threads = gpu_num;
  int calculation_threads = threads - gpu_num;

  printf("===SC=== Using %d threads for GPU drivers \n", gpu_driver_threads);
  printf("===SC=== Using %d threads for calculation \n", calculation_threads);

  if(calculation_threads < 1){
    printf("===WARNING=== No calculation threads left for CPU \n");
    cpu = false;
  }

  int if_cpu = (int)cpu;

  //printf("threads: %d | calculation_threads: %d | if_cpu: %d \n", threads, calculation_threads, if_cpu);


    
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  C p_partial[gpu_num + if_cpu];
  
  for (int id = 0; id < gpu_num+1; id++) {
    p_partial[id] = 0;
  }
  
  int number_of_chunks = 1;
    
  for (int i = 0; i < nov/4; i++) {
    number_of_chunks *= 2;
  }
  
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }


  //For variable smem
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  //create the transpose of the matrix
  S* mat_t = new S[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  unsigned long long start = 1;
  long long end = (1LL << (nov-1));
  long long offset = (end - start) / number_of_chunks;

  unsigned long long curr_chunk = gpu_num + if_cpu - 1;
  
  omp_set_nested(1);
  omp_set_dynamic(0);
#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
  for (int dev = 0; dev < gpu_num + if_cpu ; dev++) {
    
    int tid = omp_get_thread_num();
    int nt = omp_get_num_threads();
    unsigned long long last = tid;
    
    if (tid == gpu_num) {//CPU PART
      
      while(last < number_of_chunks){
	
	//printf("thread %d Running CPU kernel, last: %d \n", tid, last);
	
	if (last == number_of_chunks - 1) {
	  p_partial[tid] += cpu_perman64(mat_t, x, nov,
					 (start + last*offset),
					 end,
					 calculation_threads);
	}
	else {
	  p_partial[tid] += cpu_perman64(mat_t, x, nov,
					 (start + last*offset),
					 (start + (last+1)*offset),
					 calculation_threads);
	}
#pragma omp atomic update
	curr_chunk++;
#pragma omp atomic read
	last = curr_chunk;
      }
    }//CPU PART
    else {//GPU PART
      
      cudaSetDevice(tid);
      
      int grid_dim = f_grid_dim; 
      int block_dim = f_block_dim; 
      
      cudaStream_t thread_stream;
      cudaStreamCreate(&thread_stream);
      
      cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						     &block_dim,
						     &kernel_xshared_coalescing_mshared<C,S>,
						     xshared_coalescing_mshared_sharedmem,
						     0);
      
      size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));
      
      if(grid_dim_multip != 1){
	grid_dim *= grid_dim_multip;
      }
      
      S *d_mat_t;
      C *d_x, *d_p;
      C *h_p = new C[grid_dim * block_dim];
      
      cudaMalloc( &d_x, (nov) * sizeof(C));
      //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
      cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));
      
      cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
      cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
      
      
      while (last < number_of_chunks) {

	//printf("thread %d Running GPU kernel, last: %d \n", tid, last);
	
	cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));
	
	if (last == number_of_chunks - 1) {
	  kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , size, thread_stream >>> (d_mat_t, d_x, d_p, nov,
											       (start + last*offset), end);
	  cudaStreamSynchronize(thread_stream);
	} else {
	  kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , size, thread_stream >>> (d_mat_t, d_x, d_p, nov,
											       (start + last*offset),
											       (start + (last+1)*offset));
	  
	  cudaStreamSynchronize(thread_stream);
	}
        
	cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	cudaFree(d_p);
	
	for (int i = 0; i < grid_dim * block_dim; i++) {
	  p_partial[tid] += h_p[i];
	}
	
#pragma omp atomic update
	curr_chunk++;
#pragma omp atomic read
	last = curr_chunk;
      }
      
      cudaFree(d_mat_t);
      cudaFree(d_x);
      cudaFree(d_p);
      delete[] h_p;
    }//GPU PART
  }
  
  delete [] mat_t;
  
  double return_p = p;
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    return_p += p_partial[dev];
  }
  
  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
}


//DEPRECATED
template <class T>
extern double gpu_perman64_xshared_coalescing_mshared_multigpu_manual_distribution(DenseMatrix<T>* densemat, flags flags) {

  int gpu_num = flags.gpu_num;
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;

  //Pack parameters
  T* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters
  
  double x[nov]; 
  double rs; //row sum
  double p = 1; //product of the elements in vector 'x'
  double p_partial[gpu_num];
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p_partial[gpu_id] = 0;
  }
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      rs += mat[(j * nov) + k];  // sum of row j
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //create the transpose of the matrix
  T* mat_t = new T[nov * nov];
  for (int i = 0; i < nov; i++) {
    for (int j = 0; j < nov; j++) {
      mat_t[(i * nov) + j] = mat[(j * nov) + i];
    }
  }

  long long start = 1;
  long long end = (1LL << (nov-1));
  long long offset = (end - start) / 8;

  #pragma omp parallel for num_threads(gpu_num)
    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
      cudaSetDevice(gpu_id);
      T *d_mat_t;
      double *d_x, *d_p;
      double *h_p = new double[grid_dim * block_dim];

      cudaMalloc( &d_x, (nov) * sizeof(double));
      cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(double));
      cudaMalloc( &d_mat_t, (nov * nov) * sizeof(T));

      cudaMemcpy( d_x, x, (nov) * sizeof(double), cudaMemcpyHostToDevice);
      cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(T), cudaMemcpyHostToDevice);

      int x;
      
      double stt = omp_get_wtime();
      if (gpu_id == 0) {
	//kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , (nov*block_dim*sizeof(float) + nov*nov*sizeof(T)) >>> (d_mat_t, d_x, d_p, nov, start, start + 3*offset);
	x = 1;
      } else if (gpu_id == 1) {
        //kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , (nov*block_dim*sizeof(float) + nov*nov*sizeof(T)) >>> (d_mat_t, d_x, d_p, nov, start + 3*offset, start + 6*offset);
	x = 2;
      } else if (gpu_id == 2) {
        //kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , (nov*block_dim*sizeof(float) + nov*nov*sizeof(T)) >>> (d_mat_t, d_x, d_p, nov, start + 6*offset, start + 7*offset);
      } else if (gpu_id == 3) {
        //kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , (nov*block_dim*sizeof(float) + nov*nov*sizeof(T)) >>> (d_mat_t, d_x, d_p, nov, start + 7*offset, end);
	x = 3;
      }
      cudaDeviceSynchronize();
      double enn = omp_get_wtime();
      //printf("Kernel in %f \n", enn - stt);
      //cout << "kernel" << gpu_id << " in " << (enn - stt) << endl;
        
      cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(double), cudaMemcpyDeviceToHost);

      cudaFree(d_mat_t);
      cudaFree(d_x);
      cudaFree(d_p);
      for (int i = 0; i < grid_dim * block_dim; i++) {
        p_partial[gpu_id] += h_p[i];
      }
      delete[] h_p;
    }

  delete [] mat_t;
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p += p_partial[gpu_id];
  }

  return((4*(nov&1)-2) * p);
}



//Explicit instantiations required for separate compilation

/////
template extern Result gpu_perman64_xglobal<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xglobal<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xglobal<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xglobal<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xglobal<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xglobal<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

/////
template extern Result gpu_perman64_xlocal<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xlocal<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xlocal<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xlocal<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xlocal<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xlocal<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared<double, double>(DenseMatrix<double>* densemat, flags flags);
/////


/////
template extern Result gpu_perman64_xshared_coalescing<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 1
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 2
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 3
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 4
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 5
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 6
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 7
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//////Vertical versions 8
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared<float, double>(DenseMatrix<double>* densemat,flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared<double, double>(DenseMatrix<double>* densemat,flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu<double, double>(DenseMatrix<double>* densemat, flags flags);
//////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_manual_distribution<int>(DenseMatrix<int>* densemat, flags flags);
template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_manual_distribution<float>(DenseMatrix<float>* densemat, flags flags);
template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_manual_distribution<double>(DenseMatrix<double>* densemat, flags flags);
//Explicit instantiations required for separated compilation
