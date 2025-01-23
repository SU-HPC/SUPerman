#ifndef SUPERMAN_GENERATEDKERNELS_CUH
#define SUPERMAN_GENERATEDKERNELS_CUH


template <class C>
__device__ __inline__ void prodReduce(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3)
{
	product *= reg0;
	product *= reg1;
	product *= reg2;
	product *= reg3;
	product *= globalProduct;
}

template <class C>
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3)
{
	reg2 += 4.400000;
	reg3 += 6.600000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c1included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3)
{
	reg0 += 3.400000;
	reg1 += 4.600000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c4included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 8.100000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 1.700000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 5.300000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c3included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 11.600000;
	reg3 += 1.800000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 2.600000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 9.900000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c5included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 7.100000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.800000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 1.400000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c0included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3)
{
	reg0 += 2.100000;
	reg1 += 3.300000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c1excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3)
{
	reg0 -= 3.400000;
	reg1 -= 4.600000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3)
{
	reg2 -= 4.400000;
	reg3 -= 6.600000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c4excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 8.100000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 1.700000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 5.300000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c3excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 11.600000;
	reg3 -= 1.800000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 2.600000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 9.900000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c5excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 7.100000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.800000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 1.400000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C>
__device__ __inline__ void c0excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3)
{
	reg0 -= 2.100000;
	reg1 -= 3.300000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3);
}

template <class C, class S>
__global__ void globalKernel(S* mat,
                             C* x,
                             C* p,
                             int nov,
                             long long start,
                             long long end,
                             long long chunkSize)
{
    const volatile unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
    const volatile unsigned totalThreadCount = gridDim.x * blockDim.x;

    C myResult = 0;

	C reg0 = -2.750000;
	C reg1 = -3.950000;
	C reg2 = -8.500000;
	C reg3 = -4.200000;

	x[totalThreadCount * 0 + globalThreadID] = -1.750000;
	x[totalThreadCount * 1 + globalThreadID] = -6.900000;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 2.100000;
		reg1 += 3.300000;
	}
	if ((gray >> 1) & 1LL)
	{
		reg0 += 3.400000;
		reg1 += 4.600000;
	}
	if ((gray >> 2) & 1LL)
	{
		reg2 += 4.400000;
		reg3 += 6.600000;
	}
	if ((gray >> 3) & 1LL)
	{
		reg2 += 11.600000;
		reg3 += 1.800000;
		x[totalThreadCount * 0 + globalThreadID] += 2.600000;
		x[totalThreadCount * 1 + globalThreadID] += 9.900000;
	}
	if ((gray >> 4) & 1LL)
	{
		reg2 += 8.100000;
		x[totalThreadCount * 0 + globalThreadID] += 1.700000;
		x[totalThreadCount * 1 + globalThreadID] += 5.300000;
	}

	C globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];

    int productSign = (myStart & 1LL) ? -1 : 1;

    for (long long i = myStart; i < myEnd; ++i)
    {
        long long grayDifference = (i ^ (i >> 1)) ^ gray;
        int columnChanged = __ffsll(grayDifference) - 1;
        gray ^= (1LL << columnChanged);

        C added = ((1LL << columnChanged) & gray) ? 1 : -1;

        C product = 1;

		if (added == 1)
		{
			switch (columnChanged)
			{
				case 0:
					c0included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 1:
					c1included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 2:
					c2included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 3:
					c3included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 4:
					c4included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 5:
					c5included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				default:
					break;
			}
		}
		else
		{
			switch (columnChanged)
			{
				case 0:
					c0excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 1:
					c1excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 2:
					c2excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3);
					break;
				case 3:
					c3excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 4:
					c4excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 5:
					c5excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				default:
					break;
			}
		}

        myResult += productSign * product;
        productSign *= -1;
    }

    p[globalThreadID] += myResult;
}


#endif //SUPERMAN_GENERATEDKERNELS_CUH
