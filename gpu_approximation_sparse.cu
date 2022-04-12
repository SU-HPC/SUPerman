#include <omp.h>
#include <stdio.h>
#include <curand.h>
#include <curand_kernel.h>
//#include "util.h"
#include "flags.h"
#include "gpu_wrappers.h"

#define BITARRSIZE 64

template <class C>
bool cpu_ScaleMatrix_sparse(int *cptrs,
			    int *rows,
			    int *rptrs,
			    int *cols,
			    int nov,
			    int row_extracted[],
			    int col_extracted[],
			    C d_r[],
			    C d_c[], 
			    int scale_times) {
  
  for (int k = 0; k < scale_times; k++) {
    
    for (int j = 0; j < nov; j++) {
      if (!((col_extracted[j / 32] >> (j % 32)) & 1)) {
	C col_sum = 0;
	int r;
	for (int i = cptrs[j]; i < cptrs[j+1]; i++) {
	  r = rows[i];
	  if (!((row_extracted[r / 32] >> (r % 32)) & 1)) {
	    col_sum += d_r[r];
	  }
	}
	if (col_sum == 0) {
	  return false;
	}
	d_c[j] = 1 / col_sum;
      }
    }
    for (int i = 0; i < nov; i++) {
      if (!((row_extracted[i / 32] >> (i % 32)) & 1)) {
	C row_sum = 0;
	int c;
	for (int j = rptrs[i]; j < rptrs[i+1]; j++) {
	  c = cols[j];
	  if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
	    row_sum += d_c[c];
	  }
	}
	if (row_sum == 0) {
	  return false;
	}
	d_r[i] = 1 / row_sum;
      }
      
    }
  }
  
  return true;
}

template <class C>
C cpu_rasmussen_sparse(int *cptrs,
		       int *rows,
		       int *rptrs,
		       int *cols,
		       int nov,
		       int random,
		       int number_of_times,
		       int threads) {
  
  srand(random);
  
  C sum_perm = 0;
  C sum_zeros = 0;
    
  #pragma omp parallel for num_threads(threads) reduction(+:sum_perm) reduction(+:sum_zeros)
    for (int time = 0; time < number_of_times; time++) {
      int row_nnz[nov];
      int col_extracted[BITARRSIZE];
      int row_extracted[BITARRSIZE];
      for (int i = 0; i < BITARRSIZE; i++) {
        col_extracted[i]=0;
        row_extracted[i]=0;
      }

      int row;
      int min=nov+1;

      for (int i = 0; i < nov; i++) {
        row_nnz[i] = rptrs[i+1] - rptrs[i];
        if (min > row_nnz[i]) {
          min = row_nnz[i];
          row = i;
        }
      }
      
      C perm = 1;
      
      for (int k = 0; k < nov; k++) {
        // multiply permanent with number of nonzeros in the current row
        perm *= row_nnz[row];

        // choose the column to be extracted randomly
        int random = rand() % row_nnz[row];
        int col;
        for (int i = rptrs[row]; i < rptrs[row+1]; i++) {
          int c = cols[i];
          if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
            if (random == 0) {
              col = c;
              break;
            } else {
              random--;
            }        
          }
        }
	
        // exract the column
        col_extracted[col / 32] |= (1 << (col % 32));
        row_extracted[row / 32] |= (1 << (row % 32));
	
        min = nov+1;
	
        // update number of nonzeros of the rows after extracting the column
        bool zero_row = false;
        for (int i = cptrs[col]; i < cptrs[col+1]; i++) {
          int r = rows[i];
          if (!((row_extracted[r / 32] >> (r % 32)) & 1)) {
            row_nnz[r]--;
            if (row_nnz[r] == 0) {
              zero_row = true;
              break;
            }
            if (min > row_nnz[r]) {
              min = row_nnz[r];
              row = r;
            }
          }
        }
	
        if (zero_row) {
          perm = 0;
          sum_zeros += 1;
          break;
        }
      }
      
      sum_perm += perm;
    }
    
    return sum_perm;
}

template <class C>
C cpu_approximation_perman64_sparse(int *cptrs,
					 int *rows,
					 int *rptrs,
					 int *cols,
					 int nov,
					 int random,
					 int number_of_times,
					 int scale_intervals,
					 int scale_times,
					 int threads) {
  
  srand(random);
  
  C sum_perm = 0;
  C sum_zeros = 0;
  
#pragma omp parallel for num_threads(threads) reduction(+:sum_perm) reduction(+:sum_zeros)
  for (int time = 0; time < number_of_times; time++) {
    int col_extracted[BITARRSIZE];
    int row_extracted[BITARRSIZE];
    for (int i = 0; i < BITARRSIZE; i++) {
      col_extracted[i]=0;
      row_extracted[i]=0;
    }
    
    C Xa = 1;
    C d_r[nov];
    C d_c[nov];
    for (int i = 0; i < nov; i++) {
      d_r[i] = 1;
        d_c[i] = 1;
      }

      int row;
      int min;
      int nnz;

      for (int k = 0; k < nov; k++) {
        min=nov+1;
        for (int i = 0; i < nov; i++) {
          if (!((row_extracted[i / 32] >> (i % 32)) & 1)) {
            nnz = 0;
            for (int j = rptrs[i]; j < rptrs[i+1]; j++) {
              int c = cols[j];
              if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
                nnz++;
              }
            }
            if (min > nnz) {
              min = nnz;
              row = i;
            }
          }
        }

        // Scale part
        if (row % scale_intervals == 0) {
          bool success = cpu_ScaleMatrix_sparse(cptrs, rows, rptrs, cols, nov, row_extracted, col_extracted, d_r, d_c, scale_times);
          if (!success) {
            Xa = 0;
            sum_zeros++;
            break;
          }
        }

        // use scaled matrix for pj
        C sum_row_of_S = 0;
        for (int i = rptrs[row]; i < rptrs[row+1]; i++) {
          int c = cols[i];
          if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
            sum_row_of_S += d_r[row] * d_c[c];
          }
        }
        if (sum_row_of_S == 0) {
          Xa = 0;
          sum_zeros++;
          break;
        }

        C random = (C(rand()) / RAND_MAX) * sum_row_of_S;
        C temp = 0;
        C s, pj;
        int col;
        for (int i = rptrs[row]; i < rptrs[row+1]; i++) {
          int c = cols[i];
          if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
            s = d_r[row] * d_c[c];
            temp += s;
            if (random <= temp) {
              col = c;
              pj = s / sum_row_of_S;
              break;
            }
          }
        }

        // update Xa
        Xa /= pj;
        
        // exract the column
        col_extracted[col / 32] |= (1 << (col % 32));
        // exract the row
        row_extracted[row / 32] |= (1 << (row % 32));

      }

      sum_perm += Xa;
    }
  
  return sum_perm;
}


//Looks like this kernel suffers register spilling
//Maybe, should take row_extracted and col_extracted arrays to shared memory

template<class C>
__global__ void kernel_rasmussen_sparse(int* rptrs, int* cols, C* p, int nov, int nnz, int rand) {
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);
  int thread_id = threadIdx.x; 
  int block_dim = blockDim.x; 

  extern __shared__ double shared_mem[]; 
  int *shared_rptrs = (int*) shared_mem; // size = nov + 1 
  int *shared_cols = (int*) &shared_rptrs[nov + 1]; // size = nnz 
  int max;
  
  if (nnz > nov) {
    max = nnz;
  } else {
    max = nov + 1;
  }

  for (int k = 0; k < (max / block_dim + 1); k++) { 
    if ((block_dim * k + thread_id) < nnz) {
      shared_cols[block_dim * k + thread_id] = cols[block_dim * k + thread_id];
    }
    if ((block_dim * k + thread_id) < (nov + 1)) {
      shared_rptrs[block_dim * k + thread_id] = rptrs[block_dim * k + thread_id];
    }
  }
  
  __syncthreads();
  
  curandState_t state; 
  curand_init(rand*tid,0,0,&state);

  int col_extracted[BITARRSIZE]; 
  int row_extracted[BITARRSIZE]; 
  //In worst case, may move these arrays to shared memory
  for (int i = 0; i < BITARRSIZE; i++) {
    col_extracted[i] = 0;
    row_extracted[i] = 0;
  }
  
  C perm = 1;
  int row;
  
  for (int k = 0; k < nov; k++) {
    // multiply permanent with number of nonzeros in the current row
    int min_nnz = nov+1;
    int nnz;
    for (int r = 0; r < nov; r++) {
      if (!((row_extracted[r / 32] >> (r % 32)) & 1)) {
        nnz = 0;
        for (int i = shared_rptrs[r]; i < shared_rptrs[r+1]; i++) {
          int c = shared_cols[i];
          if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
            nnz++;
          }
        }
        if (min_nnz > nnz) {
          min_nnz = nnz;
          row = r;
        }
      }
    }
    
    if (min_nnz == 0) {
      perm = 0;
      break;
    }
    perm *= min_nnz;

        
    // choose the column to be extracted randomly
    int random = curand_uniform(&state) / (1.0 / C(min_nnz));
    int col;
    
    if (random >= min_nnz) {
      random = min_nnz - 1;
    }
    for (int i = shared_rptrs[row]; i < shared_rptrs[row+1]; i++) {
      int c = shared_cols[i];
      if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
        if (random == 0) {
          col = c;
          break;
        } else {
          random--;
        }        
      }
    }
    
    // exract the column
    col_extracted[col / 32] |= (1 << (col % 32));
    // exract the row
    row_extracted[row / 32] |= (1 << (row % 32));
  }
  
  p[tid] = perm;
  /*
  if(p[tid] > 0)
    printf("tid: %d | p[tid]: %f \n", tid, (double)p[tid]);


  __syncthreads();
  
  if(tid == 0){
    printf("col_extracted: \n");
    for(int i = 0; i < BITARRSIZE; i++)
      printf("%d ", col_extracted[i]);

    printf("\n");
    
    printf("row_extracted: \n");
    for(int i = 0; i < BITARRSIZE; i++)
      printf("%d ", row_extracted[i]);

    printf("\n");
  }
  */
}

template<class C>
__global__ void kernel_approximation_sparse(int* rptrs, int* cols, int* cptrs, int* rows, C* p, C* d_r, C* d_c, int nov, int nnz, int scale_intervals, int scale_times, int rand) {
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);

  extern __shared__ double shared_mem[]; 
  int *shared_rptrs = (int*) shared_mem; // size = nov + 1
  int *shared_cols = (int*) &shared_rptrs[nov + 1]; // size = nnz
  int *shared_cptrs = (int*) &shared_cols[nnz]; // size = nov + 1
  int *shared_rows = (int*) &shared_cptrs[nov + 1]; // size = nnz

  int max;
  if (nnz > nov) {
    max = nnz;
  } else {
    max = nov + 1;
  }

  for (int k = 0; k < (max / blockDim.x + 1); k++) {
    if ((blockDim.x * k + threadIdx.x) < nnz) {
      shared_cols[blockDim.x * k + threadIdx.x] = cols[blockDim.x * k + threadIdx.x];
      shared_rows[blockDim.x * k + threadIdx.x] = rows[blockDim.x * k + threadIdx.x];
    }
    if ((blockDim.x * k + threadIdx.x) < (nov + 1)) {
      shared_rptrs[blockDim.x * k + threadIdx.x] = rptrs[blockDim.x * k + threadIdx.x];
      shared_cptrs[blockDim.x * k + threadIdx.x] = cptrs[blockDim.x * k + threadIdx.x];
    }
  }

  __syncthreads();

  curandState_t state;
  curand_init(rand*tid,0,0,&state);
  
  int col_extracted[BITARRSIZE]; //We have another 21 here
  int row_extracted[BITARRSIZE]; //We have yet another 21 here
  //It is not illogical since they used bit-wise but;
  //They also may cause kernel to not launching or register spilling
  for (int i = 0; i < BITARRSIZE; i++) {
    col_extracted[i]=0;
    row_extracted[i]=0;
  }

  bool is_break;
  for (int i = 0; i < nov; i++) {
    d_r[tid*nov + i] = 1;
    d_c[tid*nov + i] = 1;
  }
  
  C perm = 1;
  C col_sum, row_sum;
  int row;
  int min;
  
  for (int iter = 0; iter < nov; iter++) {
    min = nov+1;
    for (int i = 0; i < nov; i++) {
      if (!((row_extracted[i / 32] >> (i % 32)) & 1)) {
        nnz = 0;
        for (int j = shared_rptrs[i]; j < shared_rptrs[i+1]; j++) {
          int c = shared_cols[j];
          if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
            nnz++;
          }
        }
        if (min > nnz) {
          min = nnz;
          row = i;
        }
      }
    }
    // Scale part
    if (iter % scale_intervals == 0) {

      for (int k = 0; k < scale_times; k++) {

        for (int j = 0; j < nov; j++) {
          if (!((col_extracted[j / 32] >> (j % 32)) & 1)) {
            col_sum = 0;
            int r;
            for (int i = shared_cptrs[j]; i < shared_cptrs[j+1]; i++) {
              r = shared_rows[i];
              if (!((row_extracted[r / 32] >> (r % 32)) & 1)) {
                col_sum += d_r[tid*nov + r];
              }
            }
            if (col_sum == 0) {
              is_break = true;
              break;
            }
            d_c[tid*nov + j] = 1 / col_sum;
          }
        }
        if (is_break) {
          break;
        }

        for (int i = 0; i < nov; i++) {
          if (!((row_extracted[i / 32] >> (i % 32)) & 1)) {
            row_sum = 0;
            int c;
            for (int j = shared_rptrs[i]; j < shared_rptrs[i+1]; j++) {
              c = shared_cols[j];
              if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
                row_sum += d_c[tid*nov + c];
              }
            }
            if (row_sum == 0) {
              is_break = true;
              break;
            }
            d_r[tid*nov + i] = 1 / row_sum;
          }
        }
        if (is_break) {
          break;
        }
      }

    }

    if (is_break) {
      perm = 0;
      break;
    }

    // use scaled matrix for pj
    C sum_row_of_S = 0;
    for (int i = shared_rptrs[row]; i < shared_rptrs[row+1]; i++) {
      int c = shared_cols[i];
      if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
        sum_row_of_S += d_r[tid*nov + row] * d_c[tid*nov + c];
      }
    }
    if (sum_row_of_S == 0) {
      perm = 0;
      break;
    }

    C random = curand_uniform(&state) * sum_row_of_S;
    C temp = 0;
    C s, pj;
    int col;
    for (int i = shared_rptrs[row]; i < shared_rptrs[row+1]; i++) {
      int c = shared_cols[i];
      if (!((col_extracted[c / 32] >> (c % 32)) & 1)) {
        s = d_r[tid*nov + row] * d_c[tid*nov + c];
        temp += s;
        if (random <= temp) {
          col = c;
          // update perm
          perm /= (s / sum_row_of_S);
          break;
        }
      }
    }

    // exract the column
    col_extracted[col / 32] |= (1 << (col % 32));
    // exract the row
    row_extracted[row / 32] |= (1 << (row % 32));
  }

  p[tid] = perm;
}


template<class C, class S>
extern Result gpu_perman64_rasmussen_sparse(SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters//
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  int nov = sparsemat->nov;
  int nnz = sparsemat->nnz;
  //Pack parameters//

  //Pack flags//
  int number_of_times = flags.number_of_times;
  bool grid_graph = flags.grid_graph;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  int block_dim;
  int grid_dim;

  size_t size = ((nnz + nov + 1)*sizeof(int));

  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
                                     &block_dim,
                                     &kernel_rasmussen_sparse<C>,
                                     size,
                                     0);


  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);

  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  C *h_p = new C[grid_dim * block_dim];

  int *d_rptrs, *d_cols;
  C *d_p;

  cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_cols, (nnz) * sizeof(int));
  //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));

  cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cols, cols, (nnz) * sizeof(int), cudaMemcpyHostToDevice);

  srand(time(0));

  double one_run = grid_dim * block_dim;
  double current = 0;

  double p = 0;

  while(current < number_of_times){
    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
    
    kernel_rasmussen_sparse<C><<<grid_dim ,block_dim ,size>>>(d_rptrs, d_cols, d_p, nov, nnz, rand());
    cudaDeviceSynchronize();

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

    
    for (int i = 0; i < grid_dim * block_dim; i++) {
      p += h_p[i];
    }

    current += one_run;
    cudaFree(d_p);
  }
      
  
  

  cudaFree(d_rptrs);
  cudaFree(d_cols);

  delete[] h_p;

  
  printf("==SI== Actual Times: %d \n", (int)current);
  
  double perman = p / current;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  
}

template <class C, class S>
  extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse(SparseMatrix<S>* sparsemat, flags flags) {

  //Pack parameters//
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  int nov = sparsemat->nov;
  int nnz = sparsemat->nnz;
  //Pack parameters//

  //Pack flags//
  int number_of_times = flags.number_of_times;
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int threads = flags.threads;
  bool grid_graph = flags.grid_graph;
  int f_grid_dim = flags.grid_dim;
  int f_block_dim = flags.block_dim;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
  for(int i = 0; i < gpu_num; i++){
    cudaGetDeviceProperties(&props[i], i);
    printf("==SC== Using Device: %d -- %s \n", i, props[i].name);
  }

  double starttime = omp_get_wtime();
  int gpu_driver_threads = gpu_num;
  int calculation_threads = threads - gpu_num;

  
  printf("==SC== Using %d threads for GPU drivers \n", gpu_driver_threads);
  printf("==SC== Using %d threads for calculation \n", calculation_threads);
  
  if(calculation_threads < 1){
    printf("==WARNING== No calculation threads left for CPU \n");
    cpu = false;
  }

  int if_cpu = (int)cpu;
  
  int grid_dims[gpu_num];
  int block_dims[gpu_num];
  
  
  size_t size = ((nnz + nov + 1) * sizeof(int));
  
  for(int dev = 0; dev < gpu_num; dev++){
    cudaSetDevice(dev);
    cudaOccupancyMaxPotentialBlockSize(&grid_dims[dev],
				       &block_dims[dev],
				       &kernel_rasmussen_sparse<C>,
				       size,
				       0);

    printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, dev, props[dev].name);
    printf("==SC== Grid dim is set to : %d on %d-%s \n", grid_dims[dev], dev, props[dev].name);
    printf("==SC== Block dim is set to : %d \n", block_dims[dev], dev, props[dev].name);
    
    if(grid_dim_multip != 1){
      grid_dims[dev] *= grid_dim_multip;
      printf("==SC== Grid dim is re-set to : %d on %d-%s \n", grid_dims[dev], dev, props[dev].name);
    }
  }

  unsigned long long cpu_chunk = if_cpu * (number_of_times / 100);
  unsigned long long gpu_chunks[gpu_num];
  for(int dev = 0; dev < gpu_num; dev++){
    gpu_chunks[dev] = grid_dims[dev] * block_dims[dev];
  }

  unsigned long long curr_chunk = 0;
  
  C p = 0;
  C p_partial[gpu_num + if_cpu];
  C p_partial_times[gpu_num + if_cpu];
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p_partial[dev] = 0;
    p_partial_times[dev] = 0;
  }

  
  
  srand(time(0));

  omp_set_nested(1);
  omp_set_dynamic(0);
#pragma omp parallel num_threads(gpu_num + if_cpu)
  {
    
    int tid = omp_get_thread_num();
    int nt = omp_get_num_threads();
    
    unsigned long long last = curr_chunk;
    
#pragma omp barrier
    
    if (tid == gpu_num) {//CPU PART
      
      while (last < number_of_times) {
	
	p_partial[tid] += cpu_rasmussen_sparse<C>(cptrs, rows, rptrs, cols, nov, rand(), cpu_chunk, calculation_threads);
	p_partial_times[tid] += cpu_chunk;

#pragma omp atomic update
	curr_chunk += cpu_chunk;
#pragma omp atomic read
	last = curr_chunk;
      }
    }//CPU PART
    else {//GPU PART
      
        cudaSetDevice(tid);

	int grid_dim = grid_dims[tid];
	int block_dim = block_dims[tid];

	cudaStream_t thread_stream;
	cudaStreamCreate(&thread_stream);
	
        int *d_rptrs, *d_cols;
        C *d_p;
        C *h_p = new C[grid_dim * block_dim];

        //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
        cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
        cudaMalloc( &d_cols, (nnz) * sizeof(int));
	
        cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cols, cols, (nnz) * sizeof(int), cudaMemcpyHostToDevice);
    
	while (last < number_of_times) {
	  cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
	  
          kernel_rasmussen_sparse<<< grid_dim , block_dim , size, thread_stream >>> (d_rptrs, d_cols, d_p, nov, nnz, rand());
          cudaStreamSynchronize(thread_stream);
          
          cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	  
          for (int i = 0; i < grid_dim * block_dim; i++) {
            p_partial[tid] += h_p[i];
          }
          p_partial_times[tid] += grid_dim* block_dim;
	  cudaFree(d_p);


#pragma omp atomic update
	  curr_chunk += gpu_chunks[tid];
#pragma omp atomic read
	  last = curr_chunk;
        }
	
        cudaFree(d_rptrs);
        cudaFree(d_cols);
        //cudaFree(d_p);
        delete[] h_p;
    }//GPU PART
  }
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p += p_partial[dev];
  }
  
  double times = 0;
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    times += p_partial_times[dev];
  }
  
  
  double duration = omp_get_wtime() - starttime;
  printf("==SI== Actual Times: %d \n", (int)times);
  double perman = p / times;
  Result result(perman, duration);
  return result;
}

template <class C, class S>
  extern Result gpu_perman64_approximation_sparse(SparseMatrix<S>* sparsemat, flags flags) {
  
  //Pack parameters//
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  int nov = sparsemat->nov;
  int nnz = sparsemat->nnz;
  //Pack parameters//
  
  //Pack flags//
  int number_of_times = flags.number_of_times;
  int scale_intervals = flags.scale_intervals;
  int scale_times = flags.scale_times;
  bool grid_graph = flags.grid_graph;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  int block_dim;
  int grid_dim;

  size_t size = ((nov + 1) + nnz + (nov + 1) + nnz) * sizeof(int);

  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
                                     &block_dim,
                                     &kernel_approximation_sparse<C>,
                                     size,
                                     0);


  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);

  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }  
  
  C *h_p = new C[grid_dim * block_dim];

  int *d_rptrs, *d_cols, *d_cptrs, *d_rows;
  C *d_r, *d_c;
  C *d_p;

  cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_cols, (nnz) * sizeof(int));
  //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));

  cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_cols, cols, (nnz) * sizeof(int), cudaMemcpyHostToDevice);

  cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
  cudaMalloc( &d_rows, (nnz) * sizeof(int));
  cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy( d_rows, rows, (nnz) * sizeof(int), cudaMemcpyHostToDevice);
  
  srand(time(0));

  cudaMalloc( &d_r, (nov * grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_c, (nov * grid_dim * block_dim) * sizeof(C));


  double one_run = grid_dim * block_dim;
  double current = 0;

  double p = 0;
  
  while(current < number_of_times){
    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));

    kernel_approximation_sparse<C><<<grid_dim ,block_dim, size>>> (d_rptrs, d_cols, d_cptrs, d_rows, d_p, d_r, d_c, nov, nnz, scale_intervals, scale_times, rand());
    cudaDeviceSynchronize();

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
    
    for (int i = 0; i < grid_dim * block_dim; i++) {
      p += h_p[i];
    }
    current += one_run;
    cudaFree(d_p);
  }
  
  
  
  //cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

  cudaFree(d_rptrs);
  cudaFree(d_cols);
  cudaFree(d_cptrs);
  cudaFree(d_rows);
  cudaFree(d_r);
  cudaFree(d_c);
  //cudaFree(d_p);
  
  delete[] h_p;

  printf("==SI== Actual Times: %d \n", (int)current);
  
  double perman = p / (current);
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
  //return (p / (grid_dim * block_dim));

}


//In case of problem: SparseMatrix<int>* looks like enough for all cases
template <class C, class S>
  extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse(SparseMatrix<S>* sparsemat, flags flags) {
  
  //Pack parameters//
  int* cptrs = sparsemat->cptrs;
  int* rows = sparsemat->rows;
  int* rptrs = sparsemat->rptrs;
  int* cols = sparsemat->cols;
  int nov = sparsemat->nov;
  int nnz = sparsemat->nnz;
  //Pack parameters//
  
  //Pack flags//
  int number_of_times = flags.number_of_times;
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int scale_intervals = flags.scale_intervals;
  int scale_times = flags.scale_times;
  int threads = flags.threads;
  bool grid_graph = flags.grid_graph;
  int f_grid_dim = flags.grid_dim;
  int f_block_dim = flags.block_dim;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
  for(int i = 0; i < gpu_num; i++){
    cudaGetDeviceProperties(&props[i], i);
    printf("==SC== Using Device: %d -- %s \n", i, props[i].name);
  }

  double starttime = omp_get_wtime();
  int gpu_driver_threads = gpu_num;
  int calculation_threads = threads - gpu_num;

  printf("==SC== Using %d threads for GPU drivers \n", gpu_driver_threads);
  printf("==SC== Using %d threads for calculation \n", calculation_threads);

  if(calculation_threads < 1){
    printf("==WARNING== No calculation threads left for CPU \n");
    cpu = false;
  }

  int if_cpu = (int)cpu;

  int grid_dims[gpu_num];
  int block_dims[gpu_num];

  size_t size = 2*(nnz + nov + 1)*sizeof(int);
  
  for(int dev = 0; dev < gpu_num; dev++){
    cudaSetDevice(dev);
    cudaOccupancyMaxPotentialBlockSize(&grid_dims[dev],
				       &block_dims[dev],
				       &kernel_approximation_sparse<C>,
				       size,
				       0);

    printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, dev, props[dev].name);
    printf("==SC== Grid dim is set to : %d  on %d-%s \n", grid_dims[dev], dev, props[dev].name);
    printf("==SC== Block dim is set to : %d on %d-%s \n", block_dims[dev], dev, props[dev].name);

    if(grid_dim_multip != 1){
      grid_dims[dev] *= grid_dim_multip;
      printf("==SC== Grid dim is re-set to : %d on %d-%s \n", grid_dims[dev], dev, props[dev].name);
    }
    
  }

  unsigned long long cpu_chunk = if_cpu * (number_of_times / 100);
  unsigned long long gpu_chunks[gpu_num];
  for(int dev = 0; dev < gpu_num; dev++){
    gpu_chunks[dev] = grid_dims[dev] * block_dims[dev];
  }

  unsigned long long curr_chunk = 0;
    
  C p = 0;
  C p_partial[gpu_num + if_cpu];
  C p_partial_times[gpu_num + if_cpu];
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p_partial[dev] = 0;
    p_partial_times[dev] = 0;
  }

  
  
  srand(time(0));

  omp_set_nested(1);
  omp_set_dynamic(0);
#pragma omp parallel num_threads(gpu_num + if_cpu)
  {
    int tid = omp_get_thread_num();
    int nt = omp_get_num_threads();
    
    
    unsigned long long last = curr_chunk;
    
    if (tid == gpu_num) { //CPU PART

      
      while (last < number_of_times) {

	//printf("CPU -- tid: % d -- last: %d \n", tid, last);
	
	cpu_approximation_perman64_sparse<C>(cptrs, rows, rptrs, cols, nov, rand(), cpu_chunk, scale_intervals, scale_times, calculation_threads);
	
	p_partial_times[tid] += cpu_chunk;

#pragma omp atomic update
	curr_chunk += cpu_chunk;
#pragma omp atomic read
	last = curr_chunk;
        
      }
    }//CPU PART
      
    else { //GPU PART

      
      cudaSetDevice(tid);

      int grid_dim = grid_dims[tid];
      int block_dim = block_dims[tid];

      cudaStream_t thread_stream;
      cudaStreamCreate(&thread_stream);

      
      C *h_r, *h_c;
      C *h_p = new C[grid_dim * block_dim];

      int *d_rptrs, *d_cols, *d_cptrs, *d_rows;
      C *d_p;
      C *d_r, *d_c;

      //cudaMalloc( &d_p, (grid_size * block_size) * sizeof(C));
      cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
      cudaMalloc( &d_cols, (nnz) * sizeof(int));

      cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy( d_cols, cols, (nnz) * sizeof(int), cudaMemcpyHostToDevice);
      
      cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
      cudaMalloc( &d_rows, (nnz) * sizeof(int));
      cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
      cudaMemcpy( d_rows, rows, (nnz) * sizeof(int), cudaMemcpyHostToDevice);
      
      cudaMalloc( &d_r, (nov * grid_dim * block_dim) * sizeof(C));
      cudaMalloc( &d_c, (nov * grid_dim * block_dim) * sizeof(C));
      
      
      while (last < number_of_times) {
	
	//printf("GPU -- tid: % d -- last: %d \n", tid, last);

	cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
	
	kernel_approximation_sparse<<< grid_dim , block_dim , size, thread_stream >>> (d_rptrs, d_cols, d_cptrs, d_rows, d_p, d_r, d_c, nov, nnz, scale_intervals, scale_times, rand());
	cudaStreamSynchronize(thread_stream);
	
	cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	
	for (int i = 0; i < grid_dim * block_dim; i++) {
	  p_partial[tid] += h_p[i];
	}
	p_partial_times[tid] += grid_dim * block_dim;
	cudaFree(d_p);

#pragma omp atomic update
	curr_chunk += gpu_chunks[tid];
#pragma omp atomic read
	last = curr_chunk;
      }
      
      cudaFree(d_rptrs);
      cudaFree(d_cols);
      cudaFree(d_cptrs);
      cudaFree(d_rows);
      //cudaFree(d_p);
      cudaFree(d_r);
      cudaFree(d_c);
      
      delete[] h_p;
    }
  }
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p += p_partial[dev];
    printf("p_partial[%d]: %f \n", dev, (double)p_partial[dev]);
  }
  
  double times = 0;
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    times += p_partial_times[dev];
  }


  double duration = omp_get_wtime() - starttime;
  printf("==SI== Actual Times: %d \n", (int)times);
  double perman = p / times;
  Result result(perman, duration);
  return result;
}


//Explicit instantiations required for separate compilation
 
/////
template extern Result gpu_perman64_rasmussen_sparse<float, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_sparse<double, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_sparse<float, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_sparse<double, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_sparse<float, double>(SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_sparse<double, double>(SparseMatrix<double>* sparsemat, flags flags);
/////

 /////
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<float, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<double, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<float, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<double, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<float, double>(SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse<double, double>(SparseMatrix<double>* sparsemat, flags flags);
/////


/////
template extern Result gpu_perman64_approximation_sparse<float, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_sparse<double, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_sparse<float, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_sparse<double, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_sparse<float, double>(SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_sparse<double, double>(SparseMatrix<double>* sparsemat, flags flags);
/////

/////
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<float, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<double, int>(SparseMatrix<int>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<float, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<double, float>(SparseMatrix<float>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<float, double>(SparseMatrix<double>* sparsemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse<double,double>(SparseMatrix<double>* sparsemat, flags flags);
/////
//Explicit instantiations required for separate compilation
