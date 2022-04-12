#include <omp.h>

#include <stdio.h>
#include "flags.h"
#include "gpu_wrappers.h"

int glob_nov;
int glob_total;
int glob_sizeof_c; //Size of type used for calculation
int glob_sizeof_s; //Size of type used for storage

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
  C cpu_perman64_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, int threads, C* x, long long unsigned start, long long unsigned end) {
  
  //Pack parameters//
  //S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
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
  C cpu_perman64_skip(SparseMatrix<S>* sparsemat, int threads, C* x, long long unsigned start, long long unsigned end) {

  //Pack parameters//
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  S* rvals = sparsemat->rvals;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
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
      unsigned long long my_end = min(start + ((cid+1) * chunk_size), end);

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


template <class C, class S>
  extern Result gpu_perman64_xlocal_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags){

  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
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
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
				     &block_dim,
				     &kernel_xlocal_sparse<C,S>,
				     0,
				     0);

  printf("==SC== No Shared memory is used for the kernel..\n");
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
    
  S *d_cvals;
  int *d_cptrs, *d_rows;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (total) * sizeof(int));
  cudaMalloc( &d_cvals, (total) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

  //double stt = omp_get_wtime();
  kernel_xlocal_sparse<C,S><<<grid_dim , block_dim>>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //cout << "kernel" << " in " << (enn - stt) << endl;
  //printf("kernel in %f \n", enn - stt);
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_x);
  cudaFree(d_p);
  cudaFree(d_cptrs);
  cudaFree(d_rows);
  cudaFree(d_cvals);

  double return_p = p;

  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  
  
  //return((4*(nov&1)-2) * return_p)
  Result result(perman, duration);
  return result;
}

template <class C, class S>
extern Result gpu_perman64_xshared_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {

  
  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
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
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						 &block_dim,
						 &kernel_xshared_sparse<C,S>,
						 xshared_sparse_sharedmem,
						 0);

  //grid_dim = 160;
  //block_dim = 160;
  
  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  S *d_cvals;
  int *d_cptrs, *d_rows;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (total) * sizeof(int));
  cudaMalloc( &d_cvals, (total) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);
  
  
  //double stt = omp_get_wtime();
  kernel_xshared_sparse<C,S><<< grid_dim , block_dim , size>>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //cout << "kernel" << " in " << (enn - stt) << endl;
  //printf("kernel in %f \n", enn - stt);
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_x);
  cudaFree(d_p);
  cudaFree(d_cptrs);
  cudaFree(d_rows);
  cudaFree(d_cvals);

  double return_p = p;

  for (int i = 0; i < grid_dim * block_dim; i++) {
    //printf("p: %e || i: %d hp[i]: %e |||", return_p, i, h_p[i]);
    return_p += (double)h_p[i];
    //printf("%e %e \n", (double)h_p[i], return_p);
    //printf("--->p: %e \n", return_p);
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

  //return((4*(nov&1)-2) * return_p);
}

template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
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
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						 &block_dim,
						 &kernel_xshared_coalescing_sparse<C,S>,
						 xshared_coalescing_sparse_sharedmem,
						 0);
  
  size_t size = nov*block_dim*sizeof(C);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  
  
  cudaSetDevice(device_id);
  S *d_cvals;
  int *d_cptrs, *d_rows;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (total) * sizeof(int));
  cudaMalloc( &d_cvals, (total) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

    
  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_sparse<C,S><<<grid_dim , block_dim , size>>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //cout << "kernel" << " in " << (enn - stt) << endl;
  //printf("kernel in %f \n", enn - stt);
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
    
  cudaFree(d_x);
  cudaFree(d_p);
  cudaFree(d_cptrs);
  cudaFree(d_rows);
  cudaFree(d_cvals);

  double return_p = p;

  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
  //return((4*(nov&1)-2) * return_p);
}

template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_mshared_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {
  
  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

      
  cudaDeviceProp prop;
  cudaGetDeviceProperties(&prop, device_id);
  printf("==SC== Running on device: %d -- %s \n", device_id, prop.name);

  size_t max_shared_per_block = prop.sharedMemPerBlock;

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();
  
  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  int total = 0;
  int zero = 0;

  //printf("Calculation bytes: %d \n", sizeof(p));
  //printf("Storage bytes: %d \n", sizeof(mat[0]));
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != (S)0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
      else{
	zero++;
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  total = sparsemat->nnz;

  //printf("!!Reported by func total: %d \n", getNnz(densemat->mat, nov));  
  //printf("!!Total: %d | Zero: %d | nov*nov: %d!!\n", total, zero, nov*nov);
  //printf("!!total: %d --densemat->nov: %d !!\n", total, densemat->nov);
  //printf("!!total: %d --densemat->nnz: %d !!\n", total, densemat->nnz);
  //printf("!!total: %d --sparsemat->nnz: %d !!\n", total, sparsemat->nnz);
  
  
  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //printf("sizeof_c: %d -- sizeof_s: %d \n", glob_sizeof_c, glob_sizeof_s);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						 &block_dim,
						 &kernel_xshared_coalescing_mshared_sparse<C,S>,
						 xshared_coalescing_mshared_sparse_sharedmem,
						 0);


  //int power = 5;
  //int real_block_dim = 0;
  
  //while(pow(2, power+1) < block_dim){
  //power++;
  //}

  //block_dim = pow(2, power);
  
  
  
  
  size_t size = nov*block_dim*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S) + sizeof(S);

  printf("==SC== Maximum Shared memory per block : %zu \n", max_shared_per_block);
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);


  //printf("Calculation bytes: %d -- %d\n", sizeof(p), sizeof(C));
  //printf("Storage bytes: %d -- %d \n", sizeof(mat[0]), sizeof(S));

  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  
  //grid_dim = 160;
  //block_dim = 192;
  
  S *d_cvals;
  int *d_cptrs, *d_rows;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));  
  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (total) * sizeof(int));
  cudaMalloc( &d_cvals, (total) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));
  
  double stt = omp_get_wtime();
 
  //printf("Just before launch %d -- %d \n", grid_dim, block_dim);
  kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim , block_dim , size>>>(d_cptrs,
										 d_rows,
										 d_cvals,
										 d_x,
										 d_p,
										 nov,
										 total,
										 start,
										 end);
  cudaDeviceSynchronize();
  double enn = omp_get_wtime();
  //printf("kernel in %f \n", enn - stt);
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  //cudaFree(d_x);
  //cudaFree(d_p);
  //cudaFree(d_cptrs);
  //cudaFree(d_rows);
  //cudaFree(d_cvals);
  
  double return_p = p;
  
  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
  //return((4*(nov&1)-2) * return_p);
}

template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {
  
  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters
  
  //Pack flags
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int gpu_num = flags.gpu_num;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  C p_partial[gpu_num]; //This is used only once and while computing return value
  //So it's double in order not to lose further precision while summing partial
  //results up
  
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p_partial[gpu_id] = 0;
  }
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  long long start = 1;
  long long end = (1LL << (nov-1));
  long long offset = (end - start) / gpu_num;

  //Multigpu special//
  int grid_dims[gpu_num];
  int block_dims[gpu_num];
  //Multigpu special//
  
#pragma omp parallel num_threads(gpu_num)
  {
    
    int gpu_id = omp_get_thread_num();
    cudaSetDevice(gpu_id);

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, gpu_id);
    printf("==SC== Running on device: %d -- %s \n", gpu_id, prop.name);

    cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dims[gpu_id],
						   &block_dims[gpu_id],
						   &kernel_xshared_coalescing_mshared_sparse<C,S>,
						   xshared_coalescing_mshared_sparse_sharedmem,
						   0);

    size_t size = nov*block_dims[gpu_id]*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S);
    
    printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, gpu_id, prop.name);
    printf("==SC== Grid dim is set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
    printf("==SC== Block dim is set to : %d on %d-%s\n", block_dims[gpu_id], gpu_id, prop.name);

    if(grid_dim_multip != 1){
      grid_dims[gpu_id] *= grid_dim_multip;
      printf("==SC== Grid dim re-set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
    }
    
    S *d_cvals;
    int *d_cptrs, *d_rows;
    C *d_x, *d_p;
    C *h_p = new C[grid_dims[gpu_id] * block_dims[gpu_id]];
    
    cudaMalloc( &d_x, (nov) * sizeof(C)); 
    cudaMalloc( &d_p, (grid_dims[gpu_id] * block_dims[gpu_id]) * sizeof(C));
    cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
    cudaMalloc( &d_rows, (total) * sizeof(int));
    cudaMalloc( &d_cvals, (total) * sizeof(S));

    cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
    cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);
    
    
    
    //double stt = omp_get_wtime();
    if (gpu_id == gpu_num-1) {
      kernel_xshared_coalescing_mshared_sparse<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, (start + gpu_id*offset), end);  
    } else {
      kernel_xshared_coalescing_mshared_sparse<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, (start + gpu_id*offset), (start + (gpu_id+1)*offset));
    }
    cudaDeviceSynchronize();
    //double enn = omp_get_wtime();
    //cout << "kernel" << gpu_id << " in " << (enn - stt) << endl;
    //printf("kernel %d in %f \n", gpu_id, enn - stt);
    
    cudaMemcpy( h_p, d_p, grid_dims[gpu_id] * block_dims[gpu_id] * sizeof(C), cudaMemcpyDeviceToHost);
    
    cudaFree(d_x);
    cudaFree(d_p);
    cudaFree(d_cptrs);
    cudaFree(d_rows);
    cudaFree(d_cvals);
    
    for (int i = 0; i < grid_dims[gpu_id] * block_dims[gpu_id]; i++) {
      p_partial[gpu_id] += (double)h_p[i];
    }
    
    delete[] h_p;
  }
  
  double return_p = p;
  
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    return_p += p_partial[gpu_id];
  }
  
  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  //return((4*(nov&1)-2) * return_p);
}


//Moreover, hybrid approach designed really very bad, need to restucture this function
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
  //int grid_dim = flags.grid_dim;
  //int block_dim = flags.block_dim;  
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int threads = flags.threads;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
  for(int i = 0; i < gpu_num; i++){
    cudaGetDeviceProperties(&props[i], i);
    printf("===SC=== Using Device: %d -- %s \n", i, props[i].name); //Just print this for every GPU we have
  }

  double starttime = omp_get_wtime();
  int gpu_driver_threads = gpu_num;
  int calculation_threads = threads - (gpu_num);
  printf("===SC=== Using %d threads for GPU drivers \n", gpu_driver_threads);
  printf("===SC=== Using %d threads for calculation \n", calculation_threads);
  if(calculation_threads < 1){
    printf("===WARNING=== No calculation threads left for CPU \n");
    cpu = false;
  }
  int if_cpu = (int)cpu; //1 thread will be responsible for launching cpu kernel if cpu is chosen
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  
  C p_partial[gpu_num + if_cpu]; //This is only used while calculating return value

  //printf("if_cpu: %d \n", if_cpu);
  
  for (int id = 0; id < gpu_num + if_cpu; id++) {
    p_partial[id] = 0;
    //printf("p_partial[id]: %f \n", (double)p_partial[id]);
  }
  
  unsigned long long number_of_chunks = 1;
  for (int i = 0; i < nov/4; i++) {
    number_of_chunks *= 2;
  }
  
  int total = 0; //?
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);

  if((total != densemat->nnz) || (total != densemat->nnz) || (densemat->nnz != sparsemat->nnz)){
    printf("Some pointers flew away, exiting.. \n");
    exit(1);
  }
  
  unsigned long long start = 1;
  unsigned long long end = (1LL << (nov-1));
  unsigned long long offset = (end - start) / number_of_chunks;
  
  unsigned long long curr_chunk = gpu_num + if_cpu - 1;
  
  
  omp_set_nested(1);
  omp_set_dynamic(0);

  //print_x(x, nov);

#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
  for(int dev = 0; dev < gpu_num + if_cpu; dev++){
    
    int tid = omp_get_thread_num();
    int nt = omp_get_num_threads();
    unsigned long long last = tid;
    
    
    if(tid == gpu_num){//CPU PART
      
      //printf("I'm thread %d, I am running CPU, my last: %llu \n", tid, last);
      
      while(last < number_of_chunks){
	//printf("tid: %d last: %llu / %llu -- Start: %llu - End: %llu \n", tid, last, number_of_chunks, (start + last * offset), (start + (last+1) * offset));
	
	if(last == number_of_chunks - 1){
	  p_partial[tid] += cpu_perman64_sparse(densemat, sparsemat, calculation_threads, x,
						(start + last * offset), end);
	}
	else{
	  p_partial[tid] += cpu_perman64_sparse(densemat, sparsemat, calculation_threads, x,
						(start + last * offset),
						(start + (last+1) * offset));
	}
	
	//lasts[last] = !lasts[last];
	
#pragma omp atomic update
	curr_chunk++;
#pragma omp atomic read
	last = curr_chunk;
      }
    }//CPU PART
    else{//GPU PART
      
      cudaSetDevice(tid);
      //printf("Thread %d running device %d -- %s \n", tid, tid, props[tid].name);

      //printf("I'm thread %d, I am running GPU, my last: %llu \n", tid, last);
      cudaStream_t thread_stream;
      cudaStreamCreate(&thread_stream);

      int grid_dim = 0;
      int block_dim = 0;

      cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						     &block_dim,
						     &kernel_xshared_coalescing_mshared_sparse<C,S>,
						     xshared_coalescing_mshared_sparse_sharedmem,
						     0);

      size_t size = nov*block_dim*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S) + sizeof(S);

      //?
      if(grid_dim_multip != 1){
	grid_dim *= grid_dim_multip;
      }
      
      //printf("==SC== Device: %d -- Grid Dim: %d -- Block Dim: %d -- Shared Per Block: %zu \n", dev, grid_dim, block_dim, size);

      S *d_cvals;
      int *d_cptrs, *d_rows;
      C *d_x, *d_p;
      C *h_p = new C[grid_dim*block_dim];

      
      cudaMalloc(&d_x, (nov) * sizeof(C));
      //cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C), thread_stream);
      cudaMalloc(&d_rows, (total) * sizeof(int));
      cudaMalloc(&d_cptrs, (nov + 1) * sizeof(int));
      cudaMalloc(&d_cvals, (total) * sizeof(S));

      cudaMemcpy(d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
      cudaMemcpy(d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy(d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy(d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);
      
      while(last < number_of_chunks){
	//printf("tid: %d last: %llu / %llu \n", tid, last, number_of_chunks);
	
	cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));
	
	if(last == number_of_chunks -1){
	  //printf("Ending with gpu, dev: %d \n", tid);
	  kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim, block_dim, size, thread_stream>>>(d_cptrs,
												      d_rows,
												      d_cvals,
												      d_x,
												      d_p,
												      nov,
												      total,
												      (start + last * offset),
												      end);
	  cudaStreamSynchronize(thread_stream);
	}
	else{
	  kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim, block_dim, size, thread_stream>>>(d_cptrs,
												      d_rows,
												      d_cvals,
												      d_x,
												      d_p,
												      nov,
												      total,
												      (start + last * offset),
												      (start + (last + 1) * offset));
	  cudaStreamSynchronize(thread_stream);
	}
	
	
	cudaMemcpy(h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	cudaFree(d_p);
	
	for(int i = 0; i < grid_dim * block_dim; i++){
	  p_partial[tid] += h_p[i];
	}

	//lasts[last] = !lasts[last];
	
#pragma omp atomic update
	curr_chunk++;
#pragma omp atomic read
	last = curr_chunk;
      }

      cudaFree(d_x);
      cudaFree(d_cptrs);
      cudaFree(d_rows);
      cudaFree(d_cvals);
      
    }//GPU PART
  }
  double return_p = p;
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    return_p += p_partial[dev];
    //printf("p_partial[%d]: %.16f \n", dev, p_partial[dev]);
  }

//for(int i = 0; i < number_of_chunks; i++){
//if(!lasts[i])
//printf("lasts[%d] is weird! \n", i);
//}

  //delete p_partial;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
  //return((4*(nov&1)-2) * return_p);
}

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_skipper(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  //This is where all will be unified, set device, and then start timing
  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For variable smem
  
  cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						 &block_dim,
						 &kernel_xshared_coalescing_mshared_skipper<C,S>,
						 xshared_coalescing_mshared_skipper_sharedmem,
						 0);
  
  size_t size = nov*block_dim*sizeof(C) + 2*(nov+1)*sizeof(int) + 2*total*sizeof(int) + total*sizeof(S);
  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }
  
  S *d_cvals;
  int *d_rptrs, *d_cols, *d_cptrs, *d_rows;
  C *d_x, *d_p;
  C *h_p = new C[grid_dim * block_dim];

  cudaMalloc( &d_x, (nov) * sizeof(C));
  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_cols, (total) * sizeof(int));
  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (total) * sizeof(int));
  cudaMalloc( &d_cvals, (total) * sizeof(S));

  cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cols, cols, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

  long long start = 1;
  long long end = (1LL << (nov-1));

  //double stt = omp_get_wtime();
  kernel_xshared_coalescing_mshared_skipper<C,S><<<grid_dim , block_dim , size>>>(d_rptrs, d_cols, d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, start, end);
  cudaDeviceSynchronize();
  //double enn = omp_get_wtime();
  //cout << "kernel" << " in " << (enn - stt) << endl;
  //printf("kernel in %f \n", enn - stt);
  
  cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_x);
  cudaFree(d_p);
  cudaFree(d_rptrs);
  cudaFree(d_cols);
  cudaFree(d_cptrs);
  cudaFree(d_rows);
  cudaFree(d_cvals);

  double return_p = p;

  for (int i = 0; i < grid_dim * block_dim; i++) {
    return_p += (double)h_p[i];
  }

  delete[] h_p;

  double perman = (4*(nov&1)-2) * return_p;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

  //return((4*(nov&1)-2) * return_p);
}

template <class C, class S>
  extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters
  S* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  S* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int threads = flags.threads;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags

  cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
  for(int i = 0; i < gpu_num; i++){
    cudaGetDeviceProperties(&props[i], i);
    printf("===SC=== Using Device: %d -- %s \n", i, props[i].name); //Just print this for every GPU we have
  }

  double starttime = omp_get_wtime();
  int gpu_driver_threads = gpu_num;
  int calculation_threads = threads - (gpu_num);
  
  printf("===SC=== Using %d threads for GPU drivers \n", gpu_driver_threads);
  printf("===SC=== Using %d threads for calculation \n", calculation_threads);
  if(calculation_threads < 1){
    printf("===WARNING=== No calculation threads left for CPU \n");
    cpu = false;
  }
  int if_cpu = (int)cpu; //1 thread will be responsible for launching cpu kernel if cpu is chosen 
    
  C x[nov]; 
  C rs; //row sum
  C p = 1; //product of the elements in vector 'x'
  C p_partial[gpu_num + if_cpu];
  
  for (int id = 0; id < gpu_num+1; id++) {
    p_partial[id] = 0;
  }

  unsigned long long number_of_chunks = 1;
  for (int i = 0; i < nov/4; i++) {
    number_of_chunks *= 2;
  }
  
  int chunk_id = 0;
  
  int total = 0;
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  //For variable smem
  glob_nov = nov;
  glob_total = total;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);


  if((total != densemat->nnz) || (total != densemat->nnz) || (densemat->nnz != sparsemat->nnz)){
    printf("Some pointers flew away, exiting.. \n");
    exit(1);
  }
  
  unsigned long long start = 1;
  unsigned long long end = (1LL << (nov-1));
  unsigned long long offset = (end - start) / number_of_chunks;

  unsigned long long curr_chunk = gpu_num + if_cpu - 1;
  
  omp_set_nested(1);
  omp_set_dynamic(0);
  
#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {

      int tid = omp_get_thread_num();
      int nt = omp_get_num_threads();
      unsigned long long last = tid;
      
      if(tid == gpu_num){//CPU PART

	while(last < number_of_chunks){

	  if(last == number_of_chunks - 1){
	    p_partial[tid] += cpu_perman64_skip(sparsemat, calculation_threads, x,
						(start + last * offset), end);
	  }
	  else{
	    p_partial[tid] += cpu_perman64_skip(sparsemat, calculation_threads, x,
						(start + last * offset),
						(start + (last+1) * offset));
	  }

#pragma omp atomic update
	  curr_chunk++;
#pragma omp atomic read
	  last = curr_chunk;
	}
      }//CPU PART
      else{//GPU PART
	
	cudaSetDevice(tid);
	cudaStream_t thread_stream;
	cudaStreamCreate(&thread_stream);
	//printf("Thread %d set device to: %s \n", tid, props[tid].name);
	
	
	int grid_dim = 0;
	int block_dim = 0;
	
	cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
						       &block_dim,
						       &kernel_xshared_coalescing_mshared_skipper<C,S>,
						       xshared_coalescing_mshared_skipper_sharedmem,
						       0);
	
	size_t size = nov*block_dim*sizeof(C) + 2*(nov+1)*sizeof(int) + 2*total*sizeof(int) + total*sizeof(S);
	
        S *d_cvals;
        int *d_rptrs, *d_cols, *d_cptrs, *d_rows;
        C *d_x, *d_p;
        C *h_p = new C[grid_dim * block_dim];
	
        cudaMalloc( &d_x, (nov) * sizeof(C));
        cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
        cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
        cudaMalloc( &d_cols, (total) * sizeof(int));
        cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
        cudaMalloc( &d_rows, (total) * sizeof(int));
        cudaMalloc( &d_cvals, (total) * sizeof(S));
	
        cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
        cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cols, cols, (total) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);
	
	
	while(last < number_of_chunks){
	  
	  cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));
	  //printf("tid: %d -- last: %d / %llu \n", tid, last, number_of_chunks);
	  
	  if(last == number_of_chunks - 1){
	      kernel_xshared_coalescing_mshared_skipper<C,S><<<grid_dim, block_dim, size>>>(d_rptrs,
											    d_cols,
											    d_cptrs,
											    d_rows,
											    d_cvals,
											    d_x,
											    d_p,
											    nov,
											    total,
											    (start + last * offset),
											    end);
	      
	      cudaStreamSynchronize(thread_stream);
	    }
	    else{
		 kernel_xshared_coalescing_mshared_skipper<C,S><<<grid_dim, block_dim, size>>>(d_rptrs,
											       d_cols,
											       d_cptrs,
											       d_rows,
											       d_cvals,
											       d_x,
											       d_p,
											       nov,
											       total,
											       (start + last * offset),
											       (start + (last+1) * offset));
		 cudaStreamSynchronize(thread_stream);
	    }
	  
	  cudaMemcpy(h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	  cudaFree(d_p);
	  
	  for(int i = 0; i < grid_dim * block_dim; i++){
	    p_partial[tid] += h_p[i];
	  }
	  
#pragma omp atomic update
	  curr_chunk++;
#pragma omp atomic read
	  last = curr_chunk;
	}
	
        cudaFree(d_x);
        cudaFree(d_p);
        cudaFree(d_rptrs);
        cudaFree(d_cols);
        cudaFree(d_cptrs);
        cudaFree(d_rows);
        cudaFree(d_cvals);
        delete[] h_p;
	    
      }//GPU PART
    }
    
    
    double return_p = p;

    //for(int i = 0; i < gpu_num + if_cpu; i++){
    //printf("p_partial[%d]: %f \n", i, p_partial[i]);
    //}
    
    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
      return_p += p_partial[dev];
    }

    double perman = (4*(nov&1)-2) * return_p;
    double duration = omp_get_wtime() - starttime;
    Result result(perman, duration);
    return result;
    
}


template <class T>
double gpu_perman64_xshared_coalescing_mshared_multigpu_sparse_manual_distribution(DenseMatrix<T>* densemat, SparseMatrix<T>* sparsemat, flags flags) {

  //Pack parameters
  T* mat = densemat->mat;
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  T* cvals = sparsemat->cvals;
  int nov = sparsemat->nov;
  //Pack parameters

  //Pack flags
  int gpu_num = flags.gpu_num;
  int grid_dim = flags.grid_dim;
  int block_dim = flags.block_dim;
  //Pack flags
  
  
  T x[nov]; 
  T rs; //row sum
  T p = 1; //product of the elements in vector 'x'
  double p_partial[gpu_num]; //This is only used while 
  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p_partial[gpu_id] = 0;
  }
  int total = 0;
  
  //create the x vector and initiate the permanent
  for (int j = 0; j < nov; j++) {
    rs = .0f;
    for (int k = 0; k < nov; k++) {
      if (mat[(j * nov) + k] != 0) {
        total++;
        rs += mat[(j * nov) + k];  // sum of row j
      }
    }
    x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
    p *= x[j];   // product of the elements in vector 'x'
  }

  long long start = 1;
  long long end = (1LL << (nov-1));
  long long offset = (end - start) / 8;

  #pragma omp parallel for num_threads(gpu_num)
    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
      cudaSetDevice(gpu_id);
      T *d_cvals;
      int *d_cptrs, *d_rows;
      T *d_x, *d_p;
      T *h_p = new T[grid_dim * block_dim];

      cudaMalloc( &d_x, (nov) * sizeof(T) );
      cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(T) );
      cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int) );
      cudaMalloc( &d_rows, (total) * sizeof(int) );
      cudaMalloc( &d_cvals, (total) * sizeof(T) );

      cudaMemcpy( d_x, x, (nov) * sizeof(T), cudaMemcpyHostToDevice);
      cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy( d_cvals, cvals, (total) * sizeof(T), cudaMemcpyHostToDevice);

      int x;
      double stt = omp_get_wtime();
      if (gpu_id == 0) {
        //kernel_xshared_coalescing_mshared_sparse<<< grid_dim , block_dim , (nov*block_dim*sizeof(T) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(T)) >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, start, start + 3*offset);
	x = 1;
      } else if (gpu_id == 1) {
        //kernel_xshared_coalescing_mshared_sparse<<< grid_dim , block_dim , (nov*block_dim*sizeof(T) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(T)) >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, start + 3*offset, start + 6*offset);
	x = 2;
      } else if (gpu_id == 2) {
        //kernel_xshared_coalescing_mshared_sparse<<< grid_dim , block_dim , (nov*block_dim*sizeof(T) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(T)) >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, start + 6*offset, start + 7*offset);
	x = 3;
      } else if (gpu_id == 3) {
        //kernel_xshared_coalescing_mshared_sparse<<< grid_dim , block_dim , (nov*block_dim*sizeof(T) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(T)) >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, start + 7*offset, end);
	x = 4;
      }
      cudaDeviceSynchronize();
      double enn = omp_get_wtime();

      //cout << "kernel" << gpu_id << " in " << (enn - stt) << endl;
      //printf("kernel %d in %f \n", gpu_id, enn - stt);
        
      cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(T), cudaMemcpyDeviceToHost);

      cudaFree(d_x);
      cudaFree(d_p);
      cudaFree(d_cptrs);
      cudaFree(d_rows);
      cudaFree(d_cvals);

      for (int i = 0; i < grid_dim * block_dim; i++) {
        p_partial[gpu_id] += h_p[i];
      }

      delete[] h_p;
    }

  for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
    p += p_partial[gpu_id];
  }

  return((4*(nov&1)-2) * p);
}


//Explicit instantiations required for separate compilation//

/////
template extern Result gpu_perman64_xlocal_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xlocal_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xlocal_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xlocal_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xlocal_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xlocal_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_skipper<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<float, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<double, int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<float, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<double, float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<float, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper<double, double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////

/////DEPRECATED
template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_sparse_manual_distribution<int>(DenseMatrix<int>* densemat, SparseMatrix<int>* sparsemat, flags flags);
template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_sparse_manual_distribution<float>(DenseMatrix<float>* densemat, SparseMatrix<float>* sparsemat, flags flags);
template extern double gpu_perman64_xshared_coalescing_mshared_multigpu_sparse_manual_distribution<double>(DenseMatrix<double>* densemat, SparseMatrix<double>* sparsemat, flags flags);
/////
//Explicit instantiations required for separate compilation//
