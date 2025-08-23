/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

#include <mpi.h>
#include "mpi_wrapper.h"


extern "C" void initMPI(int *argc, char ***argv)
{
    MPI_Init(argc, argv);
}

extern "C" void mpiCommRank(MPI_Comm comm, int* rank)
{
    MPI_Comm_rank(comm, rank);
}

extern "C" void mpiCommSize(MPI_Comm comm, int* size)
{
    MPI_Comm_size(comm, size);
}

extern "C" void finalizeMPI()
{
    MPI_Finalize();
}

extern "C" void mpiBarrier(MPI_Comm comm)
{
    MPI_Barrier(comm);
}

extern "C" void mpiReduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm)
{
    MPI_Reduce(sendbuf, recvbuf, count, datatype, op, root, comm);
}

extern "C" void mpiAllReduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm)
{
    MPI_Allreduce(sendbuf, recvbuf, count, datatype, op, comm);
}

extern "C" void mpiAllGather(const void* sendbuf, int sendCount, MPI_Datatype sendType, void* recvbuf, int recvCount, MPI_Datatype recvType, MPI_Comm comm)
{
    MPI_Allgather(sendbuf, sendCount, sendType, recvbuf, recvCount, recvType, comm);
}

extern "C" void mpiAllGatherV(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int *recvcounts, const int *displs, MPI_Datatype recvtype, MPI_Comm comm)
{
    MPI_Allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, comm);
}

extern "C" MPI_Comm getMPI_COMM_WORLD()
{
    return MPI_COMM_WORLD;
}

extern "C" MPI_Datatype getMPI_DOUBLE()
{
    return MPI_DOUBLE;
}

extern "C" MPI_Datatype getMPI_INT()
{
    return MPI_INT;
}

extern "C" MPI_Op getMPI_SUM()
{
    return MPI_SUM;
}
