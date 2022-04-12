#ifndef GPU_WRAPPERS_H
#define GPU_WRAPPERS_H

#include "flags.h"

//##############~~#####//FUNCTIONS FROM: gpu_exact_dense.cu//#####~~##############//
template <class C, class S>
extern Result gpu_perman64_xglobal(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xlocal(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 1
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 2
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_texfour(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 3
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_texeight(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 4
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 5
template <class C, class S>
extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 6
template <class C, class S>
extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_mpi(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 7
template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_plainmatrix_mshared_selected_perwarp(DenseMatrix<S>* densemat, flags flags);

//Vertical versions 8
template <class C, class S>
extern Result gpu_perman64_xregister_coalescing_plainmatrix_mshared_selected_perwarp(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpu(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags);

//Deprecated
template <class T>
extern double gpu_perman64_xshared_coalescing_mshared_multigpu_manual_distribution(DenseMatrix<T>* densemat, flags flags);
//##############~~#####//FUNCTIONS FROM: gpu_exact_dense.cu//#####~~##############//



//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//
//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//


//##############~~#####//FUNCTIONS FROM: gpu_exact_sparse.cu//#####~~##############//

template <class C, class S>
extern Result gpu_perman64_xlocal_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpu_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_sparse(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_skipper(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_xshared_coalescing_mshared_multigpucpu_chunks_skipper(DenseMatrix<S>* densemat, SparseMatrix<S>* sparsemat, flags flags);


//Deprecated
template <class T>
extern double gpu_perman64_xshared_coalescing_mshared_multigpu_sparse_manual_distribution(DenseMatrix<T>* densemat, SparseMatrix<T>* sparsemat, flags flags);
//##############~~#####//FUNCTIONS FROM: gpu_exact_sparse.cu//#####~~##############//

//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//
//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//

//##############~~#####//FUNCTIONS FROM: gpu_approximation_dense.cu//#####~~##############//

template <class C, class S>
extern Result gpu_perman64_rasmussen(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_rasmussen_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_approximation(DenseMatrix<S>* densemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_approximation_multigpucpu_chunks(DenseMatrix<S>* densemat, flags flags);

//##############~~#####//FUNCTIONS FROM: gpu_approximation_dense.cu//#####~~##############//

//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//
//##############~~#####//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//#####~~##############//

//##############~~#####//FUNCTIONS FROM: gpu_approximation_sparse.cu//#####~~##############//

template <class C, class S>
extern Result gpu_perman64_rasmussen_sparse(SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_rasmussen_multigpucpu_chunks_sparse(SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_approximation_sparse(SparseMatrix<S>* sparsemat, flags flags);

template <class C, class S>
extern Result gpu_perman64_approximation_multigpucpu_chunks_sparse(SparseMatrix<S>* sparsemat, flags flags);

//##############~~#####//FUNCTIONS FROM: gpu_approximation_sparse.cu//#####~~##############//




#endif
