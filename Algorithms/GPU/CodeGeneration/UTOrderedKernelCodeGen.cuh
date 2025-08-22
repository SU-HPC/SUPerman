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

#ifndef SUPERMAN_UTORDEREDKERNELCODEGEN_CUH
#define SUPERMAN_UTORDEREDKERNELCODEGEN_CUH

#include "KernelGenerator.cuh"
#include <string>
#include "omp.h"
#include "cuda_runtime.h"


template<class C, class S>
std::string KernelGenerator<C, S>::generateUTOrderedKernelCode(int& k)
{
    m_File += "#ifndef SUPERMAN_GENERATEDKERNELS_CUH\n"
              "#define SUPERMAN_GENERATEDKERNELS_CUH\n\n";

    m_File += "#include \"GPUHelpers.cuh\"\n";
    m_File += "#include \"PrecisionHelpers.cuh\"\n\n\n";

    int c = -1;
    determineRegisterArea(k, c);

    prodReduce_ut(k);

#pragma omp parallel for num_threads(omp_get_max_threads())
    for (int j = 0; j < m_Nov; ++j)
    {
        colKernel_ut(k, c, j, true);
    }

#pragma omp parallel for num_threads(omp_get_max_threads())
    for (int j = 0; j < m_Nov; ++j)
    {
        colKernel_ut(k, c, j, false);
    }

    globalKernel_ut(k, c);

    m_File += '\n';
    m_File += "#endif //SUPERMAN_GENERATEDKERNELS_CUH\n";

    return m_File;
}

template<class C, class S>
void KernelGenerator<C, S>::determineRegisterArea(int &k, int &c)
{
    const double GRATIO = 32;

    double iterationCovered = 0;
    double totalPoint = 0;

    double percent = 50;

    int nrows = 0;
    for (int j = 0; j < m_Nov; ++j)
    {
        int rowSpan = 0;
        for (int i = (m_Nov - 1); i >= 0; --i)
        {
            if (m_Mat[j * m_Nov + i] == 0)
            {
                continue;
            }

            rowSpan = i;
            break;
        }

        double currentIteration = iterationCovered + percent;
        percent /= 2;

        nrows = std::max(nrows, (rowSpan + 1));
        int nregisters = nrows * (sizeof(C) / 4);
        unsigned numberOfThreads = determineNumberOfThreads(nregisters);

        double regAccess = ((nregisters * currentIteration) / 100);
        double globalAccess = (((m_Nov - nrows) * (100 - currentIteration)) / 100) * GRATIO;

        double currentPoint = numberOfThreads / (regAccess + globalAccess);
        if ((currentPoint > totalPoint) || (nrows == k))
        {
            iterationCovered = currentIteration;
            totalPoint = currentPoint;
            k = nrows;
            c = j;
        }
    }

    std::stringstream stream;
    stream << "Number of registers needed to store the X vector in: " << k * (sizeof(C) / 4) << std::endl;
    stream << "Last column index to be included in the register area: " << c << std::endl;
    stream << "Total iteration space in which only register access is required: " << iterationCovered << std::endl;
    print(stream, m_Settings.rank, m_Settings.PID, 1);
}

template<class C, class S>
unsigned KernelGenerator<C, S>::determineNumberOfThreads(int nregisters)
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, m_Settings.deviceID);

    const unsigned& SM_NO = prop.multiProcessorCount;
    const unsigned& REG_NO = prop.regsPerMultiprocessor;

    unsigned regBoundThreadNo = double(REG_NO) / (20 + nregisters);

    return regBoundThreadNo * SM_NO;
}

template<class C, class S>
void KernelGenerator<C, S>::prodReduce_ut(int k)
{
    std::string space = "\t\t\t\t\t\t\t\t\t";

    m_File += "template <class C>\n";
    m_File += "__device__ __inline__ void prodReduce(\n";
    m_File += space + "C& product,\n";
    m_File += space + "const C& globalProduct,\n";

    for (int i = 0; i < k; ++i)
    {
        m_File += space + "const C& reg" + std::to_string(i) + ",\n";
    }
    m_File.pop_back();
    m_File.pop_back();
    m_File += ")\n";

    m_File += "{\n";

    const unsigned UNROLL = 8;
    for (unsigned inner = 0; inner < UNROLL; ++inner)
    {
        m_File += "\t" + std::string("C t") + std::to_string(inner) + ";\n";
    }
    m_File += "\n";

    bool* one = new bool[UNROLL];
    unsigned chunks = (k + (UNROLL * 2) - 1) / (UNROLL * 2);
    for (unsigned iter = 0; iter < chunks; ++iter)
    {
        unsigned start = iter * UNROLL * 2;

        std::fill(one, one + UNROLL, false);
        for (unsigned inner = 0; inner < UNROLL; ++inner)
        {
            unsigned i = start + inner * 2;
            std::string tname = std::string("t") + std::to_string(inner);
    
            if (i < k)
            {
                m_File += "\t" + tname + " = reg" + std::to_string(i);
                if (i + 1 < k)
                {
                    m_File += " * reg" + std::to_string(i + 1) + ";\n";
                }
                else
                {
                    m_File += ";\n";
                }
            }
            else
            {
                one[inner] = true;
                m_File += "\t" + tname + " = 1;\n";
            }
        }

        for (unsigned offset = 1; offset < UNROLL; offset *= 2)
        {
            for (unsigned inner = 0; inner < UNROLL; inner += offset * 2)
            {
                if (one[inner])
                {
                    continue;
                }
                m_File += "\tt" + std::to_string(inner) + " *= t" + std::to_string(inner + offset) + ";\n";
            }
        }

        m_File += "\tproduct *= t0;\n\n";
    }
    delete[] one;
    
    m_File += "\tproduct *= globalProduct;\n";

    m_File += "}\n\n";
}

template<class C, class S>
void KernelGenerator<C, S>::colKernel_ut(int k, int c, int col, bool columnIncluded)
{
    std::string colKernel;

    colKernelFuncSign_ut(k, c, col, columnIncluded, colKernel);

    colKernel += "{\n";

    colKernelRegUpdts_ut(k, c, col, columnIncluded, colKernel);

    colKernel += "\n";

    colKernelProdReduce_ut(k, colKernel);

    colKernel += "}\n";

#pragma omp critical
    {
        m_File += colKernel + '\n';
    };
}

template <class C, class S>
void KernelGenerator<C, S>::colKernelFuncSign_ut(int k, int c, int col, bool columnIncluded, std::string &colKernel)
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
    if (col <= c)
    {
        colKernel += space + "const C& globalProduct,\n";
    }
    else
    {
        colKernel += space + "C& globalProduct,\n";
    }

    for (int i = 0; i < k; ++i)
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

    if (col > c)
    {
        colKernel += space + "const volatile unsigned& totalThreadCount,\n";
        colKernel += space + "const volatile unsigned& globalThreadID,\n";
        colKernel += space + "C* x)\n";
    }
    else
    {
        colKernel.pop_back();
        colKernel.pop_back();
        colKernel += ")\n";
    }
}

template<class C, class S>
void KernelGenerator<C, S>::colKernelRegUpdts_ut(int k, int c, int col, bool columnIncluded, std::string &colKernel)
{
    if (columnIncluded)
    {
        for (int i = 0; i < k; ++i)
        {
            S val = m_Mat[col * m_Nov + i];
            if (val != 0)
            {
                colKernel += "\treg" + std::to_string(i) + " += " + std::to_string(val) + ";\n";
            }
        }
        if (col > c)
        {
            colKernel += "\n";
            colKernel += "\tglobalProduct = 1;\n";
            for (int i = k; i < m_Nov; ++i)
            {
                S val = m_Mat[col * m_Nov + i];
                if (val == 0)
                {
                    colKernel += "\tglobalProduct *= x[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID];\n";
                    continue;
                }

                colKernel += "\tx[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID] += " + std::to_string(val) + ";\n";
                colKernel += "\tglobalProduct *= x[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID];\n";
            }
        }
    }
    else
    {
        for (int i = 0; i < k; ++i)
        {
            S val = m_Mat[col * m_Nov + i];
            if (val != 0)
            {
                colKernel += "\treg" + std::to_string(i) + " -= " + std::to_string(val) + ";\n";
            }
        }
        if (col > c)
        {
            colKernel += "\n";
            colKernel += "\tglobalProduct = 1;\n";
            for (int i = k; i < m_Nov; ++i)
            {
                S val = m_Mat[col * m_Nov + i];
                if (val == 0)
                {
                    colKernel += "\tglobalProduct *= x[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID];\n";
                    continue;
                }

                colKernel += "\tx[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID] -= " + std::to_string(val) + ";\n";
                colKernel += "\tglobalProduct *= x[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID];\n";
            }
        }
    }
}

template <class C, class S>
void KernelGenerator<C, S>::colKernelProdReduce_ut(int k, std::string &colKernel)
{
    std::string space = "\t\t\t\t\t";

    colKernel += "\tprodReduce<C>(\n";
    colKernel += space + "product,\n";
    colKernel += space + "globalProduct,\n";

    for (int i = 0; i < k; ++i)
    {
        colKernel += space + "reg" + std::to_string(i) + ",\n";
    }

    colKernel.pop_back();
    colKernel.pop_back();
    colKernel += ");\n";
}

template<class C, class S>
void KernelGenerator<C, S>::globalKernel_ut(int k, int c)
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
                        "    const volatile unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;\n"
                        "    const volatile unsigned totalThreadCount = gridDim.x * blockDim.x;\n"
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
                        "    const volatile unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;\n"
                        "    const volatile unsigned totalThreadCount = gridDim.x * blockDim.x;\n"
                        "\n"
                        "    C myResult = 0;\n"
                        "\n";
    }

    globKernelRegInit_ut(k, globalKernel);

    globalKernel += "    if (chunkSize == -1)\n"
                    "    {\n"
                    "        chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;\n"
                    "    }\n"
                    "    long long myStart = start + (globalThreadID * chunkSize);\n"
                    "    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);\n"
                    "\n"
                    "    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);\n";

    globKernelRegUpdts_ut(k, globalKernel);
    globKernelGlobalProdInit_ut(k, globalKernel);

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
                    "        C product = 1;\n\n";

    globKernelSwitchCase_ut(k, c, globalKernel);

    if (m_Settings.calculationPrecision == KAHAN)
    {
        globalKernel += "        kahanAdd<C>(myResult, myError, productSign * product);\n"
                        "        productSign *= -1;\n"
                        "    }\n"
                        "\n"
                        "    p[globalThreadID] += myResult;\n"
                        "}\n";
    }
    else
    {
        globalKernel += "        myResult += productSign * product;\n"
                        "        productSign *= -1;\n"
                        "    }\n"
                        "\n"
                        "    p[globalThreadID] += myResult;\n"
                        "}\n";
    }

    m_File += globalKernel + '\n';
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelRegInit_ut(int k, std::string &globalKernel)
{
    for (int i = 0; i < k; ++i)
    {
        globalKernel += "\tC reg" + std::to_string(i) + " = " + std::to_string(m_X[i]) + ";\n";
    }
    globalKernel += '\n';

    for (int i = k; i < m_Nov; ++i)
    {
        globalKernel += "\tx[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID]" + " = " + std::to_string(m_X[i]) + ";\n";
    }
    globalKernel += '\n';
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelRegUpdts_ut(int k, std::string &globalKernel)
{
    for (int j = 0; j < m_Nov - 1; ++j)
    {
        globalKernel += "\tif ((gray >> " + std::to_string(j) + ") & 1LL)\n";
        globalKernel += "\t{\n";
        for (int i = 0; i < m_Nov; ++i)
        {
            S val = m_Mat[j * m_Nov + i];
            if (val == 0) continue;

            if (i < k)
            {
                globalKernel += "\t\treg" + std::to_string(i) + " += " + std::to_string(m_Mat[j * m_Nov + i]) + ";\n";
            }
            else
            {
                globalKernel += "\t\tx[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID]" + " += " + std::to_string(m_Mat[j * m_Nov + i]) + ";\n";
            }
        }
        globalKernel += "\t}\n";
    }
    globalKernel += "\n";
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelGlobalProdInit_ut(int k, std::string &globalKernel)
{
    globalKernel += "\tC globalProduct = 1;\n";

    for (int i = k; i < m_Nov; ++i)
    {
        globalKernel += "\tglobalProduct *= x[totalThreadCount * " + std::to_string(i - k) + " + globalThreadID];\n";
    }

    globalKernel += '\n';
}

template<class C, class S>
void KernelGenerator<C, S>::globKernelSwitchCase_ut(int k, int c, std::string &globalKernel)
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
        globalKernel += space + "globalProduct,\n";
        for (int j = 0; j < k; ++j)
        {
            globalKernel += space + "reg" + std::to_string(j) + ",\n";
        }
        if (i > c)
        {
            globalKernel += space + "totalThreadCount,\n";
            globalKernel += space + "globalThreadID,\n";
            globalKernel += space + "x);\n";
        }
        else
        {
            globalKernel.pop_back();
            globalKernel.pop_back();
            globalKernel += ");\n";
        }
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
        globalKernel += space + "globalProduct,\n";
        for (int j = 0; j < k; ++j)
        {
            globalKernel += space + "reg" + std::to_string(j) + ",\n";
        }
        if (i > c)
        {
            globalKernel += space + "totalThreadCount,\n";
            globalKernel += space + "globalThreadID,\n";
            globalKernel += space + "x);\n";
        }
        else
        {
            globalKernel.pop_back();
            globalKernel.pop_back();
            globalKernel += ");\n";
        }
        globalKernel += "\t\t\t\t\tbreak;\n";
    }
    globalKernel += "\t\t\t\tdefault:\n";
    globalKernel += "\t\t\t\t\tbreak;\n";
    globalKernel += "\t\t\t}\n";
    globalKernel += "\t\t}\n";

    globalKernel += "\n";
}


#endif //SUPERMAN_UTORDEREDKERNELCODEGEN_CUH
