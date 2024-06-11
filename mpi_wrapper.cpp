//
// Created by deniz on 5/25/24.
//

#include <mpi.h>
#include "mpi_wrapper.h"


extern "C" void initMPI(int *argc, char ***argv)
{
    MPI_Init(argc, argv);
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

extern "C" void mpiAllgather(const void* sendbuf, int sendCount, MPI_Datatype sendType, void* recvbuf, int recvCount, MPI_Datatype recvType, MPI_Comm comm)
{
    MPI_Allgather(sendbuf, sendCount, sendType, recvbuf, recvCount, recvType, comm);
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
