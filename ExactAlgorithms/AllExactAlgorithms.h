//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
#define SUPERMAN_REBORN_ALLEXACTALGORITHMS_H


#include "ParallelPermanDense.h"
#include "ParallelPermanSparse.h"
#include "ParallelSkipPerman.h"
#include "ParallelSkipPermanBalanced.h"

#ifdef GPU
// DENSE
#include "DenseKernelDefinitions.cuh"
#include "PermanGlobal.cuh"
#include "PermanLocal.cuh"
#include "PermanRegisterCoalescingCGray.cuh"
#include "PermanRegisterCoalescingPlainMatrixShared.cuh"
#include "PermanRegisterCoalescingPlainMatrixSharedCGray.cuh"
#include "PermanRegisterCoalescingPlainMatrixSharedPerwarp.cuh"
#include "PermanShared.cuh"
#include "PermanSharedCoalescing.cuh"
#include "PermanSharedCoalescingPlainMatrix.cuh"
#include "PermanSharedCoalescingPlainMatrixShared.cuh"
#include "PermanSharedCoalescingPlainMatrixSharedPerwarp.cuh"
#include "PermanSharedCoalescingPlainMatrixTexeight.cuh"
#include "PermanSharedCoalescingPlainMatrixTexfour.cuh"
#include "PermanSharedCoalescingPlainMatrixShared.cuh"
#include "PermanSharedCoalescingSharedCGray.cuh"
#include "PermanSharedCoalescingSharedMultiGPU.cuh"
#include "PermanSharedCoalescingSharedMultiGPUCPUChunks.cuh"
#include "DenseKernelDefinitions.cuh"

// SPARSE
#include "SparseKernelDefinitions.cuh"
#include "SparsePermanLocal.cuh"
#include "SparsePermanShared.cuh"
#include "SparsePermanSharedCoalescing.cuh"
#include "SparsePermanSharedCoalescingShared.cuh"
#include "SparsePermanSharedCoalescingSharedMultiGPU.cuh"
#include "SparsePermanSharedCoalescingSharedMultiGPUCPUChunks.cuh"
#include "SparsePermanSharedCoalescingSharedMultiGPUCPUChunksSkipper.cuh"
#include "SparsePermanSharedCoalescingSharedSkipper.cuh"
#endif


#endif //SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
