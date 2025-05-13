//
// Created by delbek on 7/30/24.
//

#ifndef SUPERMAN_KERNELGENERATOR_CUH
#define SUPERMAN_KERNELGENERATOR_CUH

#include <string>
#include "omp.h"
#include "cuda_runtime.h"
#ifdef MPI_AVAILABLE
#include "mpi_wrapper.h"
#endif


template <class C, class S>
class KernelGenerator
{
public:
    KernelGenerator(S* mat, int nov, C* x, Settings& settings);

    KernelGenerator(const KernelGenerator& other) = delete;
    KernelGenerator& operator=(const KernelGenerator& other) = delete;
    KernelGenerator(KernelGenerator&& other) = delete;
    KernelGenerator& operator=(KernelGenerator&& other) = delete;

    std::string generateNaiveKernelCode();
    std::string generateUTOrderedKernelCode(int& k);

private:
    /*          NAIVE KERNEL CODE           */
    void prodReduce();

    // col kernel
    void colKernel(int col, bool columnIncluded);
    void colKernelFuncSign(int col, bool columnIncluded, std::string& colKernel);
    void colKernelRegUpdts(int col, bool columnIncluded, std::string& colKernel);
    void colKernelProdReduce(std::string& colKernel);

    // global kernel
    void globalKernel();
    void globKernelRegInit(std::string& globalKernel);
    void globKernelRegUpdts(std::string& globalKernel);
    void globKernelSwitchCase(std::string& globalKernel);
    /*          NAIVE KERNEL CODE           */


    /*          UT ORDERED KERNEL CODE           */
    void determineRegisterArea(int& k, int& c);
    unsigned determineNumberOfThreads(int nregisters);

    void prodReduce_ut(int k);

    // col kernel
    void colKernel_ut(int k, int c, int col, bool columnIncluded);
    void colKernelFuncSign_ut(int k, int c, int col, bool columnIncluded, std::string& colKernel);
    void colKernelRegUpdts_ut(int k, int c, int col, bool columnIncluded, std::string& colKernel);
    void colKernelProdReduce_ut(int k, std::string& colKernel);

    // global kernel
    void globalKernel_ut(int k, int c);
    void globKernelRegInit_ut(int k, std::string& globalKernel);
    void globKernelRegUpdts_ut(int k, std::string& globalKernel);
    void globKernelGlobalProdInit_ut(int k, std::string& globalKernel);
    void globKernelSwitchCase_ut(int k, int c, std::string& globalKernel);
    /*          UT ORDERED KERNEL CODE           */

private:
    S* m_Mat; // col major
    int m_Nov;
    C* m_X;
    Settings& m_Settings;
    std::string m_File;
};


template <class C, class S>
KernelGenerator<C, S>::KernelGenerator(S* mat, int nov, C* x, Settings& settings)
:   m_Mat(mat),
    m_Nov(nov),
    m_X(x),
    m_Settings(settings)
{

}

#include "NaiveKernelCodeGen.cuh"
#include "UTOrderedKernelCodeGen.cuh"

template <class C, class S>
void generateKernels(int& k, S* mat, C* x, int nov, Settings& settings)
{
    if (settings.PID == 1)
    {
        S* matTransposed = new S[nov * nov];
        for (int i = 0; i < nov; ++i)
        {
            for (int j = 0; j < nov; ++j)
            {
                matTransposed[j * nov + i] = mat[i * nov + j];
            }
        }

        std::cout << "************KERNELS ARE BEING GENERATED************" << std::endl;
        std::string kernelFile = settings.REPO_DIR + "Algorithms/Exact/GPU/CodeGeneration/generatedKernels.cuh";
        std::ofstream kernelWriter(kernelFile);
        KernelGenerator<C, S> kernelGenerator(matTransposed, nov, x, settings);
        std::string kernel;
        if (settings.algorithm == NAIVECODEGENERATION)
        {
            kernel = kernelGenerator.generateNaiveKernelCode();
            k = nov;
        }
        else if (settings.algorithm == REGEFFICIENTCODEGENERATION)
        {
            kernel = kernelGenerator.generateUTOrderedKernelCode(k);
        }
        kernelWriter << kernel << std::flush;
        kernelWriter.close();

        delete[] matTransposed;
        writePipe(k, settings.rank);

        #ifdef MPI_AVAILABLE
            finalizeMPI();
        #endif
        exit(0);
    }
    k = readPipe(settings.rank);
}


#endif //SUPERMAN_KERNELGENERATOR_CUH
