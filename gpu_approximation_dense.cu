#include <omp.h>
#include <stdio.h>
#include <curand.h>
#include <curand_kernel.h>
//#include "util.h"
#include "flags.h"
#include "gpu_wrappers.h"
using namespace std;

static int glob_nov;
static int glob_sizeof_c;
static int glob_sizeof_s;

//Utilities run on CPU//
template <class C, class S>
bool ScaleMatrix(S M,
		 int nov,
		 long row_extracted,
		 long col_extracted,
		 C d_r[],
		 C d_c[],
		 int scale_times) {
  
  for (int k = 0; k < scale_times; k++) {
    
    for (int j = 0; j < nov; j++) {
      if (!((col_extracted >> j) & 1L)) {
	C col_sum = 0;
	for (int i = 0; i < nov; i++) {
	  if (!((row_extracted >> i) & 1L)) {
	    col_sum += d_r[i] * M[i*nov + j];
	  }
	}
	if (col_sum == 0) {
	  return false;
	}
	d_c[j] = 1 / col_sum;
      }
    }
    for (int i = 0; i < nov; i++) {
      if (!((row_extracted >> i) & 1L)) {
	C row_sum = 0;
	for (int j = 0; j < nov; j++) {
	  if (!((col_extracted >> j) & 1L)) {
	    row_sum += M[i*nov + j] * d_c[j];
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
//

template <class C, class S>
  C cpu_rasmussen(S* mat,
		       S* mat_t,
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
      long col_extracted = 0;
      
      for (int i = 0; i < nov; i++) {
        row_nnz[i] = 0;
        for (int j = 0; j < nov; j++) {
          if (mat[(i * nov) + j] != (S)0) {
            row_nnz[i] += 1;
          }
        }
      }
      
      C perm = 1;
      
      for (int row = 0; row < nov; row++) {
        // multiply permanent with number of nonzeros in the current row
        perm *= row_nnz[row];

        // choose the column to be extracted randomly
        int random = rand() % row_nnz[row];
        int col;
        for (int c = 0; c < nov; c++) {
          if (!((col_extracted >> c) & 1L) && mat[row * nov + c] != (S)0) {
            if (random == 0) {
              col = c;
              break;
            } else {
              random--;
            }        
          }
        }

        // exract the column
        col_extracted |= (1L << col);

        // update number of nonzeros of the rows after extracting the column
        bool zero_row = false;
        for (int r = row + 1; r < nov; r++) {
          if (mat_t[col * nov + r] != 0) {
            row_nnz[r]--;
            if (row_nnz[r] == 0) {
              zero_row = true;
              break;
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

    //printf("CPU returning: %f \n", (double)sum_perm);
    return sum_perm;
    
}

template <class C, class S>
  C cpu_approximation_perman64(S* mat,
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
      long col_extracted = 0;

      C Xa = 1;
      C d_r[nov];
      C d_c[nov];
      for (int i = 0; i < nov; i++) {
        d_r[i] = 1;
        d_c[i] = 1;
      }
      
      for (int row = 0; row < nov; row++) {
        // Scale part
        if ((scale_intervals != -1 || (scale_intervals == -1 && row == 0)) && row % scale_intervals == 0) {
          bool success = ScaleMatrix(mat, nov, row, col_extracted, d_r, d_c, scale_times);
          if (!success) {
            Xa = 0;
            sum_zeros++;
            break;
          }
        }
        
        // use scaled matrix for pj
        C sum_row_of_S = 0;
        for (int j = 0; j < nov; j++) {
          if (!((col_extracted >> j) & 1L) && mat[(row * nov) + j] != 0) {
            sum_row_of_S += d_r[row] * mat[(row * nov) + j] * d_c[j];
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
        for (int j = 0; j < nov; j++) {
          if (!((col_extracted >> j) & 1L) && mat[(row * nov) + j] != 0) {
            s = d_r[row] * mat[(row * nov) + j] * d_c[j];
            temp += s;
            if (random <= temp) {
              col = j;
              pj = s / sum_row_of_S;
              break;
            }
          }
        }

        // update Xa
        Xa /= pj;
        
        // exract the column
        col_extracted |= (1L << col);

      }
      
      sum_perm += Xa;
    }

    //xprintf("CPU Returning: %f \n", (double)sum_perm);
    return sum_perm;
}

//GLOBAL MEMORY KERNELS SINCE WE CANNOT KEEP VERY BIG MATRICES IN SHARED MEMORY//
template <class C, class S>
  __global__ void kernel_rasmussen_global(S* mat,
					  C* p,
					  int nov,
					  int rand){
  
  
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);
  int thread_id = threadIdx.x;
  int block_dim = blockDim.x;
  
  curandState_t state;
  curand_init(rand*tid,0,0,&state);

  long col_extracted = 0;
  long row_extracted = 0;
  
  C perm = 1;
  int row;
  
  for (int i = 0; i < nov; i++) {
    // multiply permanent with number of nonzeros in the current row
    int min_nnz = nov+1;
    int nnz;
    for (int r = 0; r < nov; r++) {
      if (!((row_extracted >> r) & 1L)) {
        nnz = 0;
        for (int c = 0; c < nov; c++) {
          if (!((col_extracted >> c) & 1L) && mat[r * nov + c] != 0) {
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
    int random = curand_uniform(&state) / (1.0 / ((C)(min_nnz)));
    int col;
    
    if (random >= min_nnz) {
      random = min_nnz - 1;
    }
    for (int c = 0; c < nov; c++) {
      if (!((col_extracted >> c) & 1L) && mat[row * nov + c] != 0) {
        if (random == 0) {
          col = c;
          break;
        } else {
          random--;
        }        
      }
    }
    
    // exract the column
    col_extracted |= (1L << col);
    // exract the row
    row_extracted |= (1L << row);
  }
  
  p[tid] = perm;
  
}

    


int rasmussen_sharedmem(int b){
  //printf("b: %d || glob_nov: %d || glob_sizeof_s: %d \n", b, glob_nov, glob_sizeof_s);
  //printf("--> Will return %d \n", b*glob_nov*glob_nov*glob_sizeof_s);
  return b*glob_nov*glob_nov*glob_sizeof_s;
}

//Actually the same but prevents confusion
int scaling_sharedmem(int b){ 
  return b*glob_nov*glob_nov*glob_sizeof_s;
}

//This unary functions would be the case if we were using a dynamically sized array for every
//gpu kernel but we don't so, we use CudaOccupancyMatPotentialBlockSize

template <class C, class S>
  __global__ void kernel_rasmussen_shared(S* mat,
					  C* p,
					  int nov,
					  int rand) {
  
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);
  int thread_id = threadIdx.x;
  int block_dim = blockDim.x;

  extern __shared__ double shared_mem[]; 
  S *shared_mat = (S*) shared_mem; // size = nov * nov

  for (int k = 0; k < ((nov*nov)/block_dim + 1); k++) {
    if ((block_dim * k + thread_id) < (nov * nov))
      shared_mat[block_dim * k + thread_id] = mat[block_dim * k + thread_id];
  }
  
  __syncthreads();
  
  curandState_t state;
  curand_init(rand*tid,0,0,&state);
  
  long col_extracted = 0;
  long row_extracted = 0;
  
  C perm = 1;
  int row;
  
  for (int i = 0; i < nov; i++) {
    // multiply permanent with number of nonzeros in the current row
    int min_nnz = nov+1;
    int nnz;
    for (int r = 0; r < nov; r++) {
      if (!((row_extracted >> r) & 1L)) {
        nnz = 0;
        for (int c = 0; c < nov; c++) {
          if (!((col_extracted >> c) & 1L) && shared_mat[r * nov + c] != 0) {
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
    int random = curand_uniform(&state) / (1.0 / ((C)(min_nnz)));
    int col;
    
    if (random >= min_nnz) {
      random = min_nnz - 1;
    }
    for (int c = 0; c < nov; c++) {
      if (!((col_extracted >> c) & 1L) && shared_mat[row * nov + c] != 0) {
        if (random == 0) {
          col = c;
          break;
        } else {
          random--;
        }        
      }
    }

    // exract the column
    col_extracted |= (1L << col);
    // exract the row
    row_extracted |= (1L << row);
  }

  p[tid] = perm;
}

template <class C, class S>
  __global__ void kernel_approximation(S* mat,
				       C* p,
				       C* d_r,
				       C* d_c,
				       int nov,
				       int scale_intervals,
				       int scale_times,
				       int rand) {
  int tid = threadIdx.x + (blockIdx.x * blockDim.x);
  int thread_id = threadIdx.x;
  int block_dim = blockDim.x;
  
  extern __shared__ double shared_mem[]; 
  S *shared_mat = (S*) shared_mem; // size = nov * nov

  for (int k = 0; k < ((nov*nov)/block_dim + 1); k++) {
    if ((block_dim * k + thread_id) < (nov * nov))
      shared_mat[block_dim * k + thread_id] = mat[block_dim * k + thread_id];
  }
  
  __syncthreads();
  
  curandState_t state;
  curand_init(rand*tid,0,0,&state);

  long col_extracted = 0;
  long row_extracted = 0;
  bool is_break;
  
  for (int i = 0; i < nov; i++) {
    d_r[tid*nov + i] = 1;
    d_c[tid*nov + i] = 1;
  }
  
  C perm = 1;
  C col_sum, row_sum;
  int row;
  int min;
  int nnz;
  
  for (int iter = 0; iter < nov; iter++) {
    min=nov+1;
    for (int i = 0; i < nov; i++) {
      if (!((row_extracted >> i) & 1L)) {
        nnz = 0;
        for (int j = 0; j < nov; j++) {
          if (!((col_extracted >> j) & 1L) && shared_mat[(i * nov) + j] != 0) {
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
          if (!((col_extracted >> j) & 1L)) {
            col_sum = 0;
            for (int i = 0; i < nov; i++) {
              if (!((row_extracted >> i) & 1L)) {
                col_sum += d_r[tid*nov + i] * shared_mat[i*nov + j];
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
          if (!((row_extracted >> i) & 1L)) {
            row_sum = 0;
            for (int j = 0; j < nov; j++) {
              if (!((col_extracted >> j) & 1L)) {
                row_sum += shared_mat[i*nov + j] * d_c[tid*nov + j];
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
    for (int j = 0; j < nov; j++) {
      if (!((col_extracted >> j) & 1L) && shared_mat[(row * nov) + j] != 0) {
        sum_row_of_S += d_r[tid*nov + row] * d_c[tid*nov + j];
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
    for (int j = 0; j < nov; j++) {
      if (!((col_extracted >> j) & 1L) && shared_mat[(row * nov) + j] != 0) {
        s = d_r[tid*nov + row] * d_c[tid*nov + j];
        temp += s;
        if (random <= temp) {
          col = j;
          pj = s / sum_row_of_S;
          break;
        }
      }
    }
    
    // update perm
    perm /= pj;
    
    // exract the column
    col_extracted |= (1L << col);
    // exract the row
    row_extracted |= (1L << row);
  }
  
  p[tid] = perm;
}



template <class C, class S>
  extern Result gpu_perman64_rasmussen(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//
  
  //Pack flags//
  int number_of_times = flags.number_of_times;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//
  
  cudaSetDevice(device_id);
  cudaDeviceSynchronize();
  
  double starttime = omp_get_wtime();
  
  int grid_dim = 1024;
  int block_dim = number_of_times / grid_dim + 1;
  
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  
  size_t size = nov*nov*sizeof(S);
  
  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
				     &block_dim,
				     &kernel_rasmussen_shared<C,S>,
				     size,
				     0);

  
  printf("==SC== Shared memory per block is set to : %zu \n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  
  
  S *d_mat;
  C *d_p;
  //Let's use dynamic shared memory and choose grid and block dim according to the matrix size
  //and type
  C *h_p = new C[grid_dim * block_dim];
  
  //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat, (nov * nov) * sizeof(S));

  cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);

  srand(time(0));

  double one_run = grid_dim * block_dim;
  double current = 0;

  double p = 0;

  while(current < number_of_times){

    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
    
    kernel_rasmussen_shared<C,S><<<grid_dim , block_dim , size>>> (d_mat, d_p, nov, rand());
    cudaDeviceSynchronize();

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

    for(int i = 0; i < grid_dim * block_dim; i++){
      p += h_p[i];
    }
    current += one_run;
    cudaFree(d_p);
  }

  cudaFree(d_mat);
  //cudaFree(d_p);
  
  delete[] h_p;

  printf("==SI== Actual Times: %d \n", int(current));
  
  double perman = p / current;
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;
}

template <class C, class S>
  extern Result gpu_perman64_rasmussen_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags) {
  
  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//
  
  //Pack flags//
  int number_of_times = flags.number_of_times;
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int threads = flags.threads;
  int f_grid_dim = flags.grid_dim;
  int f_block_dim = flags.block_dim;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//
  
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
  
  int grid_dims[gpu_num];
  int block_dims[gpu_num];
  
  //For max potential block size
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For max potential block size
  
  size_t size = nov*nov*sizeof(S);
  
  for(int dev = 0; dev < gpu_num; dev++){
    cudaSetDevice(dev);
    
    cudaOccupancyMaxPotentialBlockSize(&grid_dims[dev],
				       &block_dims[dev],
				       &kernel_rasmussen_shared<C,S>,
				       size,
				       0);

    if(grid_dim_multip != 1){
      grid_dims[dev] *= grid_dim_multip;
    }
  }
  
  int if_cpu = (int)cpu;
  
  unsigned long long cpu_chunk = if_cpu * (number_of_times / 100);
  unsigned long long gpu_chunks[gpu_num];
  
  for(int dev = 0; dev < gpu_num; dev++){
    gpu_chunks[dev] = grid_dims[dev] * block_dims[dev];
  }
  
  C p = 0;
  C p_partial[gpu_num + if_cpu];
  C p_partial_times[gpu_num + if_cpu];
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p_partial[dev] = 0;
    p_partial_times[dev] = 0;
  }
  
  unsigned long long curr_chunk = 0;
  //for(int dev = 0;  dev < gpu_num; dev++){
  //curr_chunk +=  gpu_chunks[dev];
  //}

  //curr_chunk += if_cpu * cpu_chunk;

  curr_chunk = 0; //Note that this is different than exact calculation
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
      
      S* mat_t = new S[nov * nov]; //Create transpose of the matrix
      for (int i = 0; i < nov; i++) {
	for (int j = 0; j < nov; j++) {
	  mat_t[(j * nov) + i] = mat[(i * nov) + j];
	}
      }

      while (last < number_of_times) {
	p_partial[tid] += cpu_rasmussen<C,S>(mat, mat_t, nov, (int)rand(), (int)cpu_chunk, calculation_threads);
	p_partial_times[tid] += cpu_chunk;
	
#pragma omp atomic update
	curr_chunk += cpu_chunk;
#pragma omp atomic read
	last = curr_chunk;
      }	
      delete[] mat_t;
    }//CPU PART
    
    else { //GPU PART
      
      cudaSetDevice(tid);
      
      int grid_dim = grid_dims[tid];
      int block_dim = block_dims[tid];
      
      cudaStream_t thread_stream;
      cudaStreamCreate(&thread_stream);
      
      S *d_mat;
      C *d_p;
      C *h_p = new C[grid_dims[tid] * block_dims[tid]];
      
      //cudaMalloc( &d_p, (grid_size * block_size) * sizeof(C));
      cudaMalloc( &d_mat, (nov * nov) * sizeof(S));
      
      cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
      
      while (last < number_of_times) {
	
	cudaMalloc(&d_p, (grid_dims[tid] * block_dims[tid]) * sizeof(C));
	kernel_rasmussen_shared<<< grid_dims[tid] , block_dims[tid] , size >>>(d_mat, d_p, nov, rand());
	cudaStreamSynchronize(thread_stream);
	cudaMemcpy( h_p, d_p, grid_dims[tid] * block_dims[tid] * sizeof(C), cudaMemcpyDeviceToHost);
	
	for (int i = 0; i < grid_dims[tid] * block_dims[tid]; i++) {
	  p_partial[tid] += h_p[i];
	}
	
	p_partial_times[tid] += (grid_dims[tid] * block_dims[tid]);
	cudaFree(d_p);
	
#pragma omp atomic update
	curr_chunk += gpu_chunks[tid];
#pragma omp atomic read
	last = curr_chunk;
      }
      
      cudaFree(d_mat);
      
      delete[] h_p;
    }
  }
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p += p_partial[dev];
  }
  
  double times = 0;
  for (int id = 0; id < gpu_num + if_cpu; id++) {
    times += p_partial_times[id];
  }
  
  double duration = omp_get_wtime() - starttime;
  printf("==SI== Actual Times: %d \n", (int)times);
  
  double perman = p / times;
  Result result(perman, duration);
  return result;
}

template <class C, class S>
extern Result gpu_perman64_approximation(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int scale_intervals = flags.scale_intervals;
  int scale_times = flags.scale_times;
  int number_of_times = flags.number_of_times;
  int device_id = flags.device_id;
  int grid_dim_multip = flags.grid_multip;
  //Pack flags//

  cudaSetDevice(device_id);
  cudaDeviceSynchronize();

  double starttime = omp_get_wtime();
  
  int block_dim;// = 1024;
  int grid_dim;// = number_of_times / block_size + 1;

  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);

  size_t size = nov*nov*sizeof(S);
  
  cudaOccupancyMaxPotentialBlockSize(&grid_dim,
				     &block_dim,
				     &kernel_approximation<C,S>,
				     size,
				     0);
  
  printf("==SC== Shared memory per block is set to: %zu ..\n", size);
  printf("==SC== Grid dim is set to : %d \n", grid_dim);
  printf("==SC== Block dim is set to : %d \n", block_dim);
  
  if(grid_dim_multip != 1){
    grid_dim*=grid_dim_multip;
    printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
  }

  

  C *h_p = new C[grid_dim * block_dim];

  S *d_mat;
  C *d_p;
  C *d_r, *d_c;

  //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_mat, (nov * nov) * sizeof(S));
  
  cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
  
  srand(time(0));

  cudaMalloc( &d_r, (nov * grid_dim * block_dim) * sizeof(C));
  cudaMalloc( &d_c, (nov * grid_dim * block_dim) * sizeof(C));


  double one_run = grid_dim * block_dim;
  double current = 0;

  double p = 0;

  while(current < number_of_times){
    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
    
    kernel_approximation<C,S><<<grid_dim, block_dim, size>>> (d_mat, d_p, d_r, d_c, nov, scale_intervals, scale_times, rand());
    cudaDeviceSynchronize();

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
    
    for (int i = 0; i < grid_dim * block_dim; i++) {
      p += h_p[i];
    }

    current += one_run;
    cudaFree(d_p);
  }
  
  
  cudaFree(d_mat);
  
  cudaFree(d_r);
  cudaFree(d_c);

  
  delete[] h_p;

  double perman = p / (grid_dim * block_dim);
  double duration = omp_get_wtime() - starttime;
  Result result(perman, duration);
  return result;

  //return (p / (grid_dim * block_dim));
}

template <class C, class S>
extern Result gpu_perman64_approximation_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags) {

  //Pack parameters//
  S* mat = densemat->mat;
  int nov = densemat->nov;
  //Pack parameters//

  //Pack flags//
  int number_of_times = flags.number_of_times;
  int gpu_num = flags.gpu_num;
  bool cpu = flags.cpu;
  int scale_intervals = flags.scale_intervals;
  int scale_times = flags.scale_times;
  int threads = flags.threads;
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

  int grid_dims[gpu_num];
  int block_dims[gpu_num];

  //For max potential block size
  glob_nov = nov;
  glob_sizeof_c = sizeof(C);
  glob_sizeof_s = sizeof(S);
  //For max potential block size

  size_t size = nov*nov*sizeof(S);

  for(int dev = 0; dev < gpu_num; dev++){
    cudaSetDevice(dev);

    cudaOccupancyMaxPotentialBlockSize(&grid_dims[dev],
				       &block_dims[dev],
				       &kernel_approximation<C,S>,
				       size,
				       0);

    if(grid_dim_multip != 1){
      grid_dims[dev] *= grid_dim_multip;
    }
    
  }

  int if_cpu = (int)cpu;

  unsigned long long cpu_chunk = if_cpu * (number_of_times / 100);
  unsigned long long gpu_chunks[gpu_num];

  for(int dev = 0; dev < gpu_num; dev++){
    gpu_chunks[dev] = grid_dims[dev] * block_dims[dev];
  }
  
  C p = 0;
  C p_partial[gpu_num + if_cpu];
  C p_partial_times[gpu_num + if_cpu];
  
  for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
    p_partial[dev] = 0;
    p_partial_times[dev] = 0;
  }

  unsigned long long curr_chunk = 0;
  //for(int dev = 0; dev < gpu_num; dev++){
  //curr_chunk += gpu_chunks[dev];
  //}
  //curr_chunk += if_cpu * cpu_chunk;

  curr_chunk = 0; //Note that this is different than exact calculation
  
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
      
      S* mat_t = new S[nov * nov];
      for (int i = 0; i < nov; i++) {
	for (int j = 0; j < nov; j++) {
	  mat_t[(j * nov) + i] = mat[(i * nov) + j];
	}
      }
      
      while (last < number_of_times) {
	p_partial[tid] += cpu_approximation_perman64<C,S>(mat, nov, rand(), cpu_chunk, scale_intervals, scale_times, calculation_threads);	  
	p_partial_times[tid] += cpu_chunk;
	
#pragma omp atomic update
	curr_chunk += cpu_chunk;
#pragma omp atomic read
	last = curr_chunk;
      }
      
      delete[] mat_t;
      
    } //CPU PART
    else { //GPU PART
      
      cudaSetDevice(tid);

      int grid_dim = grid_dims[tid];
      int block_dim = block_dims[tid];

      cudaStream_t thread_stream;
      cudaStreamCreate(&thread_stream);
      
      C *h_r, *h_c;
      C *h_p = new C[grid_dim * block_dim];
      
      S *d_mat;
      C *d_p;
      C *d_r, *d_c;
      
      //cudaMalloc( &d_p, (grid_size * block_size) * sizeof(C));
      cudaMalloc( &d_mat, (nov * nov) * sizeof(S));
      cudaMemcpy( d_mat, mat, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);
      
      cudaMalloc( &d_r, (nov * grid_dim * block_dim) * sizeof(C));
      cudaMalloc( &d_c, (nov * grid_dim * block_dim) * sizeof(C));
      
      
      while (last < number_of_times) {
	
	cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
	kernel_approximation<<< grid_dim , block_dim , size >>> (d_mat, d_p, d_r, d_c, nov, scale_intervals, scale_times, rand());
	cudaStreamSynchronize(thread_stream);
	
	cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
	
	for (int i = 0; i < grid_dim * block_dim; i++) {
	  p_partial[tid] += h_p[i];
	}
	
	p_partial_times[tid] += (grid_dims[tid] * block_dims[tid]);
	cudaFree(d_p);

#pragma omp atomic update
	curr_chunk += gpu_chunks[tid];
#pragma omp atomic read
	last = curr_chunk;
      }
      
      cudaFree(d_mat);
      cudaFree(d_p);
      cudaFree(d_r);
      cudaFree(d_c);
      
      delete[] h_p;
    }
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
  double perman =  p / times;
  Result result(perman, duration);
  return result;
}


//Explicit instantiations required for separate compilation

/////
template extern Result gpu_perman64_rasmussen<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

/////
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_rasmussen_multigpucpu_chunks<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

/////
template extern Result gpu_perman64_approximation<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_approximation<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_approximation<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_approximation<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_approximation<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_approximation<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//Let's wait for Nebula to become available for multi-gpu optimization
/////
template extern Result gpu_perman64_approximation_multigpucpu_chunks<float, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks<double, int>(DenseMatrix<int>* densemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks<float, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks<double, float>(DenseMatrix<float>* densemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks<float, double>(DenseMatrix<double>* densemat, flags flags);
template extern Result gpu_perman64_approximation_multigpucpu_chunks<double, double>(DenseMatrix<double>* densemat, flags flags);
/////

//Explicit instantiations required for separate compilation





