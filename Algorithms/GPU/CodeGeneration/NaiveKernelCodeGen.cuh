/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author: Deniz Elbek
 *
 * Please see the papers:
 * 
 * @article{Elbek2026SUperman,
 *   title   = {SUperman: Efficient permanent computation on GPUs},
 *   author  = {Elbek, Deniz and Ta{\c{s}}yaran, Fatih and U{\c{c}}ar, Bora and Kaya, Kamer},
 *   journal = {Computer Physics Communications},
 *   volume  = {321},
 *   pages   = {110027},
 *   year    = {2026},
 *   doi     = {10.1016/j.cpc.2026.110027}
 *
 * @article{Elbek2025CodeGeneration,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 * }
 */

#ifndef SUPERMAN_NAIVEKERNELCODEGEN_CUH
#define SUPERMAN_NAIVEKERNELCODEGEN_CUH

#include "KernelGenerator.cuh"
#include <string>
#include "omp.h"
#include "cuda_runtime.h"


template <class C, class S>
std::string KernelGenerator<C, S>::generateNaiveKernelCode()
{
    m_File += "#ifndef SUPERMAN_GENERATEDKERNELS_CUH\n"
              "#define SUPERMAN_GENERATEDKERNELS_CUH\n\n";

    m_File += "#include \"GPUHelpers.cuh\"\n";
    m_File += "#include \"PrecisionHelpers.cuh\"\n\n\n";

    prodReduce();

#pragma omp parallel for num_threads(omp_get_max_threads())
    for (int j = 0; j < m_Nov; ++j)
    {
        colKernel(j, true);
    }

#pragma omp parallel for num_threads(omp_get_max_threads())
    for (int j = 0; j < m_Nov; ++j)
    {
        colKernel(j, false);
    }

    globalKernel();

    m_File += '\n';
    m_File += "#endif //SUPERMAN_GENERATEDKERNELS_CUH\n";

    return m_File;
}

template<class C, class S>
void KernelGenerator<C, S>::prodReduce()
{
    std::string space = "\t\t\t\t\t\t\t\t\t";

    m_File += "template <class C>\n";
    m_File += "__device__ __inline__ void prodReduce(\n";
    m_File += space + "C& product,\n";

    for (int i = 0; i < m_Nov; ++i)
    {
        m_File += space + "const C& reg" + std::to_string(i) + ",\n";
    }
    m_File.pop_back();
    m_File.pop_back();
    m_File += ")\n";

    m_File += "{\n";

    for (int i = 0; i < m_Nov; ++i)
    {
        m_File += "\tproduct *= reg" + std::to_string(i) + ";\n";
    }

    m_File += "}\n\n";
}

template <class C, class S>
void KernelGenerator<C, S>::colKernel(int col, bool columnIncluded)
{
    std::string colKernel;

    colKernelFuncSign(col, columnIncluded, colKernel);

    colKernel += "{\n";

    colKernelRegUpdts(col, columnIncluded, colKernel);

    colKernel += '\n';

    colKernelProdReduce(colKernel);

    colKernel += "}\n";

#pragma omp critical
    {
        m_File += colKernel + '\n';
    };
}

template<class C, class S>
void KernelGenerator<C, S>::colKernelFuncSign(int col, bool columnIncluded, std::string &colKernel)
{
    std::string space = "\t\t\t\t\t\t\t\t\t";

    colKernel += "template <class C>\n";
    if (columnIncluded)
    {
        colKernel += "__device__ __inline__ void c" + std::to_string(col) + "included(\n";
    }
    else
    {
        colKernel += "__device__ __inline__ void c" + std::to_string(col) + "excluded(\n";
    }
    colKernel += space + "C& product,\n";

    for (int i = 0; i < m_Nov; ++i)
    {
        if (m_Mat[col * m_Nov + i] != 0)
        {
            colKernel += space + "C& reg" + std::to_string(i) + ",\n";
        }
        else
        {
            colKernel += space + "const C& reg" + std::to_string(i) + ",\n";
        }
    }

    colKernel.pop_back();
    colKernel.pop_back();
    colKernel += ")\n";
}

template<class C, class S>
void KernelGenerator<C, S>::colKernelRegUpdts(int col, bool columnIncluded, std::string &colKernel)
{
    if (columnIncluded)
    {
        for (int i = 0; i < m_Nov; ++i)
        {
            S val = m_Mat[col * m_Nov + i];
            if (val != 0)
            {
                colKernel += "\treg" + std::to_string(i) + " += " + std::to_string(val) + ";\n";
            }
        }
    }
    else
    {
        for (int i = 0; i < m_Nov; ++i)
        {
            S val = m_Mat[col * m_Nov + i];
            if (val != 0)
            {
                colKernel += "\treg" + std::to_string(i) + " -= " + std::to_string(val) + ";\n";
            }
        }
    }
}

template<class C, class S>
void KernelGenerator<C, S>::colKernelProdReduce(std::string &colKernel)
{
    std::string space = "\t\t\t\t\t";

    colKernel += "\tprodReduce<C>(\n";
    colKernel += space + "product,\n";

    for (int i = 0; i < m_Nov; ++i)
    {
        colKernel += space + "reg" + std::to_string(i) + ",\n";
    }

    colKernel.pop_back();
    colKernel.pop_back();
    colKernel += ");\n";
}

template <class C, class S>
void KernelGenerator<C, S>::globalKernel()
{
    std::string globalKernel;

    if (m_Settings.calculationPrecision == KAHAN)
    {
        globalKernel += "template <class C, class S>\n"
                        "__global__ void globalKernel(S* mat,\n"
                        "                             C* x,\n"
                        "                             C* p,\n"
                        "                             int nov,\n"
                        "                             long long start,\n"
                        "                             long long end,\n"
                        "                             long long chunkSize)\n"
                        "{\n"
                        "    int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;\n"
                        "    int totalThreadCount = gridDim.x * blockDim.x;\n"
                        "\n"
                        "    C myResult = 0;\n"
                        "    C myError = 0;\n"
                        "\n";
            }
    else
    {
        globalKernel += "template <class C, class S>\n"
                        "__global__ void globalKernel(S* mat,\n"
                        "                             C* x,\n"
                        "                             C* p,\n"
                        "                             int nov,\n"
                        "                             long long start,\n"
                        "                             long long end,\n"
                        "                             long long chunkSize)\n"
                        "{\n"
                        "    int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;\n"
                        "    int totalThreadCount = gridDim.x * blockDim.x;\n"
                        "\n"
                        "    C myResult = 0;\n"
                        "\n";
    }

    globKernelRegInit(globalKernel);

    globalKernel += "    if (chunkSize == -1)\n"
                    "    {\n"
                    "        chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;\n"
                    "    }\n"
                    "    long long myStart = start + (threadID * chunkSize);\n"
                    "    long long myEnd = min(start + ((threadID + 1) * chunkSize), end);\n"
                    "\n"
                    "    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);\n";

    globKernelRegUpdts(globalKernel);

    globalKernel += "    int productSign = (myStart & 1LL) ? -1 : 1;\n"
                    "\n"
                    "    for (long long i = myStart; i < myEnd; ++i)\n"
                    "    {\n"
                    "        long long grayDifference = (i ^ (i >> 1)) ^ gray;\n"
                    "        int columnChanged = __ffsll(grayDifference) - 1;\n"
                    "        gray ^= (1LL << columnChanged);\n"
                    "\n"
                    "        C added = ((1LL << columnChanged) & gray) ? 1 : -1;\n"
                    "\n"
                    "        C product = 1;\n";

    globKernelSwitchCase(globalKernel);

    if (m_Settings.calculationPrecision == KAHAN)
    {
        globalKernel += "        kahanAdd<C>(myResult, myError, productSign * product);\n"
                        "        productSign *= -1;\n"
                        "    }\n"
                        "\n"
                        "    p[threadID] += myResult;\n"
                        "}\n";
    }
    else
    {
        globalKernel += "        myResult += productSign * product;\n"
                        "        productSign *= -1;\n"
                        "    }\n"
                        "\n"
                        "    p[threadID] += myResult;\n"
                        "}\n";
    }

    m_File += globalKernel + '\n';
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelRegInit(std::string &globalKernel)
{
    for (int i = 0; i < m_Nov; ++i)
    {
        globalKernel += "\tC reg" + std::to_string(i) + " = " + std::to_string(m_X[i]) + ";\n";
    }
    globalKernel += '\n';
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelRegUpdts(std::string &globalKernel)
{
    for (int j = 0; j < m_Nov - 1; ++j)
    {
        globalKernel += "\tif ((gray >> " + std::to_string(j) + ") & 1LL)\n";
        globalKernel += "\t{\n";
        for (int i = 0; i < m_Nov; ++i)
        {
            S val = m_Mat[j * m_Nov + i];
            if (val != 0)
            {
                globalKernel += "\t\treg" + std::to_string(i) + " += " + std::to_string(m_Mat[j * m_Nov + i]) + ";\n";
            }
        }
        globalKernel += "\t}\n";
    }
    globalKernel += "\n";
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelSwitchCase(std::string &globalKernel)
{
    std::string space = "\t\t\t\t\t\t\t\t";

    globalKernel += "\t\tif (added == 1)\n";
    globalKernel += "\t\t{\n";
    globalKernel += "\t\t\tswitch (columnChanged)\n";
    globalKernel += "\t\t\t{\n";
    for (int i = 0; i < m_Nov; ++i)
    {
        globalKernel += "\t\t\t\tcase " + std::to_string(i) + ":\n";
        globalKernel += "\t\t\t\t\tc" + std::to_string(i) + "included<C>(\n";
        globalKernel += space + "product,\n";
        for (int j = 0; j < m_Nov; ++j)
        {
            globalKernel += space + "reg" + std::to_string(j) + ",\n";
        }
        globalKernel.pop_back();
        globalKernel.pop_back();
        globalKernel += ");\n";
        globalKernel += "\t\t\t\t\tbreak;\n";
    }
    globalKernel += "\t\t\t\tdefault:\n";
    globalKernel += "\t\t\t\t\tbreak;\n";
    globalKernel += "\t\t\t}\n";
    globalKernel += "\t\t}\n";

    globalKernel += "\t\telse\n";
    globalKernel += "\t\t{\n";
    globalKernel += "\t\t\tswitch (columnChanged)\n";
    globalKernel += "\t\t\t{\n";
    for (int i = 0; i < m_Nov; ++i)
    {
        globalKernel += "\t\t\t\tcase " + std::to_string(i) + ":\n";
        globalKernel += "\t\t\t\t\tc" + std::to_string(i) + "excluded<C>(\n";
        globalKernel += space + "product,\n";
        for (int j = 0; j < m_Nov; ++j)
        {
            globalKernel += space + "reg" + std::to_string(j) + ",\n";
        }
        globalKernel.pop_back();
        globalKernel.pop_back();
        globalKernel += ");\n";
        globalKernel += "\t\t\t\t\tbreak;\n";
    }
    globalKernel += "\t\t\t\tdefault:\n";
    globalKernel += "\t\t\t\t\tbreak;\n";
    globalKernel += "\t\t\t}\n";
    globalKernel += "\t\t}\n";

    globalKernel += "\n";
}


#endif //SUPERMAN_NAIVEKERNELCODEGEN_CUH
