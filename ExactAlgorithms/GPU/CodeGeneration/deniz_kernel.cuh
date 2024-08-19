#ifndef SUPERMAN_GENERATEDKERNELS_CUH
#define SUPERMAN_GENERATEDKERNELS_CUH


template <class C>
__device__ __inline__ void prodReduce(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4)
{
	product *= reg0;
	product *= reg1;
	product *= reg2;
	product *= reg3;
	product *= reg4;
	product *= globalProduct;
}

template <class C>
__device__ __inline__ void c0included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.095588;
	reg1 += 0.007289;
	reg2 += 0.023478;
	reg3 += 0.045179;
	reg4 += 0.061231;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c1included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.120057;
	reg1 += 0.062653;
	reg2 += 0.005881;
	reg3 += 0.061422;
	reg4 += 0.015786;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.042647;
	reg1 += 0.000394;
	reg2 += 0.130214;
	reg3 += 0.000683;
	reg4 += 0.108104;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c3included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.043356;
	reg1 += 0.004816;
	reg2 += 0.031399;
	reg3 += 0.064961;
	reg4 += 0.048856;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c4included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.067324;
	reg1 += 0.056009;
	reg2 += 0.027524;
	reg3 += 0.053270;
	reg4 += 0.057615;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c5included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.030136;
	reg1 += 0.045526;
	reg2 += 0.083744;
	reg3 += 0.051376;
	reg4 += 0.047626;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c6included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 0.083392;
	reg1 += 0.168016;
	reg2 += 0.070846;
	reg3 += 0.041626;
	reg4 += 0.050240;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c7included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 0.003751;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.126302;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.155536;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.133114;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 0.129632;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.109212;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.288256;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.062839;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.267913;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c8included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.048130;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.055700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.066992;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.093580;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.188620;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.005621;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.154198;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.124244;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.165120;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.123233;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c9included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.009592;
	reg2 += 0.068937;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.211418;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.131592;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.278305;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.142589;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.120030;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.159680;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.097263;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c10included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.004834;
	reg2 += 0.083293;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.184217;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.043817;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.142019;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.171214;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.162666;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.025648;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.073529;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.147898;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c11included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 0.061684;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.156746;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.011114;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.102233;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.106837;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.011245;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.063588;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.192902;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.084969;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.074901;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.029534;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c12included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.150068;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.071850;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.122019;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.065319;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.098408;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.060292;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.126789;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.018749;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.030049;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.128999;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.210230;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.325177;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.062836;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c13included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.024420;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.186657;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.047041;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.228049;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.053803;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.098007;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.080009;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.292189;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.067014;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.081806;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c14included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 0.097851;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.098437;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.101794;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.132801;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.168862;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.051209;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.001424;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.175768;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.198779;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c15included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 0.017706;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.114702;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.136954;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.046917;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.040683;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.072899;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.121390;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.070197;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.046022;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.109507;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.099851;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c16included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.024423;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.043611;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.002412;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.129569;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.016904;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.059578;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.032707;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.150094;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.044177;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.171593;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c17included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.038647;
	reg2 += 0.110589;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.307311;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.018395;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.142588;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.026581;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.047665;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.224410;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.053267;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.063452;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c18included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 0.007632;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.034624;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.124596;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.083609;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.173830;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.021596;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.101213;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.031879;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.116135;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.125410;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.076722;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.086503;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.040356;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.121186;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.084202;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.091608;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c19included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 0.043028;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.004853;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.122730;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.164354;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.131159;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.001987;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.104543;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.158528;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.072463;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.172955;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.115938;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.055770;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.143496;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.161901;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c20included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.020284;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.043839;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.004768;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.026874;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.088463;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.030741;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.070529;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.062781;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.113147;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.154024;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.157830;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.136935;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.011724;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.161791;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c21included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.017231;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.071572;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.048334;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.172508;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.054311;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.074781;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.092319;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.191735;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.061862;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.111669;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.083332;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.167729;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.024686;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.172840;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.058455;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.168521;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.016445;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.026495;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.115742;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c22included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.061024;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.153459;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.079478;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.117702;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.185449;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.121961;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.171818;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.041048;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.046438;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.182424;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.079024;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.119818;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.122731;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.098403;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.055533;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c23included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.030129;
	reg3 += 0.031612;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.193768;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.208415;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.064653;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.131703;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.065940;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.102602;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.118741;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.035093;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.006346;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.066253;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.014717;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c24included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 0.052702;
	reg4 += 0.024442;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.067483;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.044556;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.067668;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.101647;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.102970;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.095582;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.062230;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.098616;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.072365;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.017607;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.043025;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.149610;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.071174;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.099352;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.102343;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.134021;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.017080;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c25included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 0.039268;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.081844;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.089337;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.126196;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.046344;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.090879;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.013127;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.092912;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.114029;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.051495;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.071944;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.057077;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.029137;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c26included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.007930;
	reg4 += 0.020693;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.154031;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.208574;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.141380;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.058206;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.040536;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.064236;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.000897;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.161762;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.015702;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.329531;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c27included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 0.062616;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.151929;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.159426;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.116600;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.097861;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.198083;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.183697;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.118323;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.039762;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.240388;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.089170;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.065499;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c28included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 0.045397;
	reg4 += 0.050052;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.106957;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 0.017386;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.013665;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.076346;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.171681;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.046743;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.153781;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.048342;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.075614;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.024594;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.006812;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c29included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.050049;
	reg1 += 0.059383;
	reg4 += 0.057171;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.144305;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.166966;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.137681;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.080039;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.046730;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.055404;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.009382;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.066846;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.007076;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.073194;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.158846;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c30included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.004081;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.105367;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 0.083926;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.077589;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.018178;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.070087;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.038527;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.054129;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.092055;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.173077;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.067663;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.029301;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.129170;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.002636;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.211565;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c31included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.035601;
	reg2 += 0.030342;
	reg3 += 0.024049;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.019381;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.197090;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.063417;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.121346;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.062855;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.093919;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.073282;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.054460;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.146122;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.130881;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.045785;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.088600;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.036076;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.030241;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c32included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.017058;
	reg3 += 0.006796;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.043013;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.095227;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.066425;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.011671;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.174642;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.134534;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.007337;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.107644;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.147045;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.180521;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.000314;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.030435;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.039056;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.002768;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.104261;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.148813;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c33included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.065125;
	reg1 += 0.064228;
	reg4 += 0.050079;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 0.055879;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.041828;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.108739;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.027587;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 0.004030;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.082299;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 0.084370;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.002517;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.150355;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c34included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.059895;
	reg2 += 0.034073;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 0.044863;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.007944;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.147869;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.171416;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.007866;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.049318;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.015798;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.190491;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.185146;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.011965;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.129627;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c35included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.030204;
	reg2 += 0.014118;
	reg4 += 0.038908;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.143338;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.016103;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.124584;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.056153;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.112409;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.092492;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.121724;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.122745;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.127006;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c36included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.001693;
	reg4 += 0.024588;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.086110;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.145591;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.078513;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.025539;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.042937;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.107654;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.087920;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.169340;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.123322;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.214803;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c37included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.025237;
	reg1 += 0.043181;
	reg2 += 0.018590;
	reg4 += 0.031543;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 0.040388;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.140233;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.089747;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.048642;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 0.000420;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.064622;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.021925;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.074275;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 0.279333;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.069166;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.128396;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c38included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.019072;
	reg1 += 0.043436;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 0.119504;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.010649;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.048328;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.034755;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.063919;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.079858;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.056028;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.001250;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.131851;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.004497;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.087471;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.110174;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.060284;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.016693;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.110610;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c39included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.043418;
	reg2 += 0.034225;
	reg4 += 0.043095;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.120765;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.043108;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.103643;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.038729;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.009152;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.103173;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.141317;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.156824;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.080537;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c40included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 0.067460;
	reg3 += 0.001116;
	reg4 += 0.006306;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.074207;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.060941;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.161646;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.072050;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 0.132088;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 0.168968;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.049448;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.047065;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.075199;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.201329;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.110971;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.022533;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.000600;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c41included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.000644;
	reg1 += 0.059442;
	reg2 += 0.041804;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.090786;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 0.140485;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.027478;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.162154;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.002333;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 0.132966;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.037910;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.135950;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 0.135897;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 0.107871;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.058585;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.036676;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.047661;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c42included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.037738;
	reg3 += 0.023242;
	reg4 += 0.032469;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.079094;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.052501;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 0.108975;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.010685;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.107003;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 0.006815;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.061136;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.078398;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.066931;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 0.139093;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 0.012701;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.012703;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 0.033725;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 0.074802;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.119369;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c43included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 0.058229;
	reg3 += 0.049384;
	reg4 += 0.065579;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 0.077284;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 0.007645;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.017301;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.116168;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 0.136784;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 0.033838;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 0.013455;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 0.106505;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 0.084079;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 0.152008;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 0.174049;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c44included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 0.036738;
	reg2 += 0.045026;
	reg4 += 0.030349;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.029503;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 0.030356;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 0.038057;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 0.154190;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 0.051124;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 0.100786;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 0.109175;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 0.055267;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 0.024512;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 0.023953;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 0.079171;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 0.043227;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c0excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.095588;
	reg1 -= 0.007289;
	reg2 -= 0.023478;
	reg3 -= 0.045179;
	reg4 -= 0.061231;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c1excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.120057;
	reg1 -= 0.062653;
	reg2 -= 0.005881;
	reg3 -= 0.061422;
	reg4 -= 0.015786;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.042647;
	reg1 -= 0.000394;
	reg2 -= 0.130214;
	reg3 -= 0.000683;
	reg4 -= 0.108104;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c3excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.043356;
	reg1 -= 0.004816;
	reg2 -= 0.031399;
	reg3 -= 0.064961;
	reg4 -= 0.048856;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c4excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.067324;
	reg1 -= 0.056009;
	reg2 -= 0.027524;
	reg3 -= 0.053270;
	reg4 -= 0.057615;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c5excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.030136;
	reg1 -= 0.045526;
	reg2 -= 0.083744;
	reg3 -= 0.051376;
	reg4 -= 0.047626;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c6excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 0.083392;
	reg1 -= 0.168016;
	reg2 -= 0.070846;
	reg3 -= 0.041626;
	reg4 -= 0.050240;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c7excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 0.003751;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.126302;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.155536;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.133114;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 0.129632;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.109212;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.288256;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.062839;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.267913;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c8excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.048130;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.055700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.066992;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.093580;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.188620;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.005621;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.154198;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.124244;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.165120;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.123233;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c9excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.009592;
	reg2 -= 0.068937;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.211418;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.131592;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.278305;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.142589;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.120030;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.159680;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.097263;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c10excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.004834;
	reg2 -= 0.083293;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.184217;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.043817;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.142019;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.171214;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.162666;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.025648;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.073529;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.147898;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c11excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 0.061684;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.156746;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.011114;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.102233;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.106837;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.011245;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.063588;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.192902;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.084969;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.074901;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.029534;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c12excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.150068;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.071850;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.122019;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.065319;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.098408;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.060292;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.126789;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.018749;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.030049;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.128999;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.210230;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.325177;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.062836;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c13excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.024420;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.186657;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.047041;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.228049;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.053803;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.098007;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.080009;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.292189;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.067014;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.081806;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c14excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 0.097851;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.098437;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.101794;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.132801;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.168862;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.051209;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.001424;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.175768;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.198779;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c15excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 0.017706;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.114702;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.136954;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.046917;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.040683;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.072899;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.121390;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.070197;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.046022;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.109507;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.099851;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c16excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.024423;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.043611;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.002412;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.129569;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.016904;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.059578;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.032707;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.150094;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.044177;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.171593;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c17excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.038647;
	reg2 -= 0.110589;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.307311;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.018395;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.142588;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.026581;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.047665;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.224410;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.053267;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.063452;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c18excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 0.007632;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.034624;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.124596;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.083609;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.173830;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.021596;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.101213;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.031879;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.116135;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.125410;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.076722;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.086503;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.040356;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.121186;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.084202;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.091608;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c19excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 0.043028;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.004853;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.122730;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.164354;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.131159;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.001987;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.104543;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.158528;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.072463;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.172955;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.115938;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.055770;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.143496;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.161901;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c20excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.020284;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.043839;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.004768;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.026874;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.088463;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.030741;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.070529;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.062781;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.113147;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.154024;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.157830;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.136935;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.011724;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.161791;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c21excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.017231;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.071572;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.048334;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.172508;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.054311;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.074781;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.092319;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.191735;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.061862;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.111669;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.083332;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.167729;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.024686;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.172840;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.058455;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.168521;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.016445;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.026495;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.115742;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c22excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.061024;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.153459;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.079478;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.117702;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.185449;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.121961;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.171818;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.041048;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.046438;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.182424;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.079024;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.119818;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.122731;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.098403;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.055533;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c23excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.030129;
	reg3 -= 0.031612;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.193768;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.208415;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.064653;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.131703;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.065940;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.102602;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.118741;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.035093;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.006346;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.066253;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.014717;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c24excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 0.052702;
	reg4 -= 0.024442;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.067483;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.044556;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.067668;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.101647;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.102970;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.095582;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.062230;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.098616;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.072365;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.017607;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.043025;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.149610;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.071174;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.099352;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.102343;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.134021;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.017080;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c25excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 0.039268;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.081844;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.089337;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.126196;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.046344;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.090879;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.013127;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.092912;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.114029;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.051495;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.071944;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.057077;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.029137;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c26excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.007930;
	reg4 -= 0.020693;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.154031;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.208574;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.141380;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.058206;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.040536;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.064236;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.000897;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.161762;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.015702;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.329531;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c27excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 0.062616;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.151929;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.159426;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.116600;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.097861;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.198083;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.183697;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.118323;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.039762;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.240388;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.089170;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.065499;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c28excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 0.045397;
	reg4 -= 0.050052;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.106957;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 0.017386;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.013665;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.076346;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.171681;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.046743;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.153781;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.048342;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.075614;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.024594;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.006812;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c29excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.050049;
	reg1 -= 0.059383;
	reg4 -= 0.057171;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.144305;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.166966;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.137681;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.080039;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.046730;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.055404;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.009382;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.066846;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.007076;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.073194;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.158846;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c30excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.004081;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.105367;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 0.083926;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.077589;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.018178;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.070087;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.038527;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.054129;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.092055;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.173077;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.067663;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.029301;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.129170;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.002636;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.211565;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c31excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.035601;
	reg2 -= 0.030342;
	reg3 -= 0.024049;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.019381;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.197090;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.063417;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.121346;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.062855;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.093919;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.073282;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.054460;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.146122;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.130881;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.045785;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.088600;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.036076;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.030241;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c32excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.017058;
	reg3 -= 0.006796;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.043013;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.095227;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.066425;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.011671;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.174642;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.134534;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.007337;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.107644;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.147045;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.180521;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.000314;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.030435;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.039056;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.002768;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.104261;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.148813;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c33excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.065125;
	reg1 -= 0.064228;
	reg4 -= 0.050079;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 0.055879;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.041828;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.108739;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.027587;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 0.004030;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.082299;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 0.084370;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.002517;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.150355;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c34excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.059895;
	reg2 -= 0.034073;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 0.044863;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.007944;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.147869;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.171416;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.007866;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.049318;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.015798;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.190491;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.185146;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.011965;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.129627;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c35excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.030204;
	reg2 -= 0.014118;
	reg4 -= 0.038908;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.143338;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.016103;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.124584;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.056153;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.112409;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.092492;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.121724;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.122745;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.127006;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c36excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.001693;
	reg4 -= 0.024588;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.086110;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.145591;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.078513;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.025539;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.042937;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.107654;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.087920;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.169340;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.123322;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.214803;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c37excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.025237;
	reg1 -= 0.043181;
	reg2 -= 0.018590;
	reg4 -= 0.031543;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 0.040388;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.140233;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.089747;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.048642;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 0.000420;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.064622;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.021925;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.074275;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 0.279333;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.069166;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.128396;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c38excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.019072;
	reg1 -= 0.043436;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 0.119504;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.010649;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.048328;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.034755;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.063919;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.079858;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.056028;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.001250;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.131851;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.004497;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.087471;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.110174;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.060284;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.016693;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.110610;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c39excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.043418;
	reg2 -= 0.034225;
	reg4 -= 0.043095;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.120765;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.043108;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.103643;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.038729;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.009152;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.103173;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.141317;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.156824;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.080537;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c40excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 0.067460;
	reg3 -= 0.001116;
	reg4 -= 0.006306;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.074207;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.060941;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.161646;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.072050;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 0.132088;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 0.168968;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.049448;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.047065;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.075199;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.201329;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.110971;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.022533;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.000600;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c41excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.000644;
	reg1 -= 0.059442;
	reg2 -= 0.041804;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.090786;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 0.140485;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.027478;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.162154;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.002333;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 0.132966;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.037910;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.135950;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 0.135897;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 0.107871;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.058585;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.036676;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.047661;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c42excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.037738;
	reg3 -= 0.023242;
	reg4 -= 0.032469;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.079094;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.052501;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 0.108975;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.010685;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.107003;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 0.006815;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.061136;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.078398;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.066931;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 0.139093;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 0.012701;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.012703;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 0.033725;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 0.074802;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.119369;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c43excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 0.058229;
	reg3 -= 0.049384;
	reg4 -= 0.065579;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 0.077284;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 0.007645;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.017301;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.116168;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 0.136784;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 0.033838;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 0.013455;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 0.106505;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 0.084079;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 0.152008;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 0.174049;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
}

template <class C>
__device__ __inline__ void c44excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 0.036738;
	reg2 -= 0.045026;
	reg4 -= 0.030349;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.029503;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 0.030356;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 0.038057;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 0.154190;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 0.051124;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 0.100786;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 0.109175;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 0.055267;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 0.024512;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 0.023953;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 0.079171;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 0.043227;
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4);
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

	C reg0 = -0.399241;
	C reg1 = -0.461897;
	C reg2 = -0.543844;
	C reg3 = -0.282360;
	C reg4 = -0.434735;

	x[totalThreadCount * 0 + globalThreadID] = -0.343988;
	x[totalThreadCount * 1 + globalThreadID] = -0.546517;
	x[totalThreadCount * 2 + globalThreadID] = -0.795975;
	x[totalThreadCount * 3 + globalThreadID] = -0.208147;
	x[totalThreadCount * 4 + globalThreadID] = -0.547760;
	x[totalThreadCount * 5 + globalThreadID] = -0.535111;
	x[totalThreadCount * 6 + globalThreadID] = -0.385309;
	x[totalThreadCount * 7 + globalThreadID] = -0.559124;
	x[totalThreadCount * 8 + globalThreadID] = -0.505423;
	x[totalThreadCount * 9 + globalThreadID] = -0.337440;
	x[totalThreadCount * 10 + globalThreadID] = -0.407355;
	x[totalThreadCount * 11 + globalThreadID] = -0.900833;
	x[totalThreadCount * 12 + globalThreadID] = -0.305027;
	x[totalThreadCount * 13 + globalThreadID] = -0.480918;
	x[totalThreadCount * 14 + globalThreadID] = -0.405777;
	x[totalThreadCount * 15 + globalThreadID] = -0.407404;
	x[totalThreadCount * 16 + globalThreadID] = -0.426650;
	x[totalThreadCount * 17 + globalThreadID] = -0.527424;
	x[totalThreadCount * 18 + globalThreadID] = -0.402865;
	x[totalThreadCount * 19 + globalThreadID] = -0.474147;
	x[totalThreadCount * 20 + globalThreadID] = -0.436207;
	x[totalThreadCount * 21 + globalThreadID] = -0.493310;
	x[totalThreadCount * 22 + globalThreadID] = -0.602949;
	x[totalThreadCount * 23 + globalThreadID] = -0.522412;
	x[totalThreadCount * 24 + globalThreadID] = -0.501329;
	x[totalThreadCount * 25 + globalThreadID] = -0.677740;
	x[totalThreadCount * 26 + globalThreadID] = -0.494423;
	x[totalThreadCount * 27 + globalThreadID] = -0.495746;
	x[totalThreadCount * 28 + globalThreadID] = -0.407359;
	x[totalThreadCount * 29 + globalThreadID] = -0.482218;
	x[totalThreadCount * 30 + globalThreadID] = -0.572585;
	x[totalThreadCount * 31 + globalThreadID] = -0.494234;
	x[totalThreadCount * 32 + globalThreadID] = -0.590768;
	x[totalThreadCount * 33 + globalThreadID] = -0.654262;
	x[totalThreadCount * 34 + globalThreadID] = -0.522774;
	x[totalThreadCount * 35 + globalThreadID] = -0.441311;
	x[totalThreadCount * 36 + globalThreadID] = -0.331776;
	x[totalThreadCount * 37 + globalThreadID] = -0.308744;
	x[totalThreadCount * 38 + globalThreadID] = -0.497437;
	x[totalThreadCount * 39 + globalThreadID] = -0.495711;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 0.095588;
		reg1 += 0.007289;
		reg2 += 0.023478;
		reg3 += 0.045179;
		reg4 += 0.061231;
	}
	if ((gray >> 1) & 1LL)
	{
		reg0 += 0.120057;
		reg1 += 0.062653;
		reg2 += 0.005881;
		reg3 += 0.061422;
		reg4 += 0.015786;
	}
	if ((gray >> 2) & 1LL)
	{
		reg0 += 0.042647;
		reg1 += 0.000394;
		reg2 += 0.130214;
		reg3 += 0.000683;
		reg4 += 0.108104;
	}
	if ((gray >> 3) & 1LL)
	{
		reg0 += 0.043356;
		reg1 += 0.004816;
		reg2 += 0.031399;
		reg3 += 0.064961;
		reg4 += 0.048856;
	}
	if ((gray >> 4) & 1LL)
	{
		reg0 += 0.067324;
		reg1 += 0.056009;
		reg2 += 0.027524;
		reg3 += 0.053270;
		reg4 += 0.057615;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 0.030136;
		reg1 += 0.045526;
		reg2 += 0.083744;
		reg3 += 0.051376;
		reg4 += 0.047626;
	}
	if ((gray >> 6) & 1LL)
	{
		reg0 += 0.083392;
		reg1 += 0.168016;
		reg2 += 0.070846;
		reg3 += 0.041626;
		reg4 += 0.050240;
	}
	if ((gray >> 7) & 1LL)
	{
		reg4 += 0.003751;
		x[totalThreadCount * 0 + globalThreadID] += 0.126302;
		x[totalThreadCount * 1 + globalThreadID] += 0.155536;
		x[totalThreadCount * 2 + globalThreadID] += 0.133114;
		x[totalThreadCount * 3 + globalThreadID] += 0.129632;
		x[totalThreadCount * 4 + globalThreadID] += 0.109212;
		x[totalThreadCount * 5 + globalThreadID] += 0.288256;
		x[totalThreadCount * 6 + globalThreadID] += 0.062839;
		x[totalThreadCount * 7 + globalThreadID] += 0.267913;
	}
	if ((gray >> 8) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 0.048130;
		x[totalThreadCount * 5 + globalThreadID] += 0.055700;
		x[totalThreadCount * 6 + globalThreadID] += 0.066992;
		x[totalThreadCount * 8 + globalThreadID] += 0.093580;
		x[totalThreadCount * 9 + globalThreadID] += 0.188620;
		x[totalThreadCount * 10 + globalThreadID] += 0.005621;
		x[totalThreadCount * 11 + globalThreadID] += 0.154198;
		x[totalThreadCount * 12 + globalThreadID] += 0.124244;
		x[totalThreadCount * 13 + globalThreadID] += 0.165120;
		x[totalThreadCount * 14 + globalThreadID] += 0.123233;
	}
	if ((gray >> 9) & 1LL)
	{
		reg1 += 0.009592;
		reg2 += 0.068937;
		x[totalThreadCount * 2 + globalThreadID] += 0.211418;
		x[totalThreadCount * 11 + globalThreadID] += 0.131592;
		x[totalThreadCount * 15 + globalThreadID] += 0.278305;
		x[totalThreadCount * 16 + globalThreadID] += 0.142589;
		x[totalThreadCount * 17 + globalThreadID] += 0.120030;
		x[totalThreadCount * 18 + globalThreadID] += 0.159680;
		x[totalThreadCount * 19 + globalThreadID] += 0.097263;
	}
	if ((gray >> 10) & 1LL)
	{
		reg1 += 0.004834;
		reg2 += 0.083293;
		x[totalThreadCount * 4 + globalThreadID] += 0.184217;
		x[totalThreadCount * 7 + globalThreadID] += 0.043817;
		x[totalThreadCount * 12 + globalThreadID] += 0.142019;
		x[totalThreadCount * 17 + globalThreadID] += 0.171214;
		x[totalThreadCount * 18 + globalThreadID] += 0.162666;
		x[totalThreadCount * 20 + globalThreadID] += 0.025648;
		x[totalThreadCount * 21 + globalThreadID] += 0.073529;
		x[totalThreadCount * 22 + globalThreadID] += 0.147898;
	}
	if ((gray >> 11) & 1LL)
	{
		reg4 += 0.061684;
		x[totalThreadCount * 1 + globalThreadID] += 0.156746;
		x[totalThreadCount * 4 + globalThreadID] += 0.011114;
		x[totalThreadCount * 6 + globalThreadID] += 0.102233;
		x[totalThreadCount * 10 + globalThreadID] += 0.106837;
		x[totalThreadCount * 12 + globalThreadID] += 0.011245;
		x[totalThreadCount * 17 + globalThreadID] += 0.063588;
		x[totalThreadCount * 20 + globalThreadID] += 0.192902;
		x[totalThreadCount * 21 + globalThreadID] += 0.084969;
		x[totalThreadCount * 23 + globalThreadID] += 0.074901;
		x[totalThreadCount * 24 + globalThreadID] += 0.029534;
	}
	if ((gray >> 12) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 0.150068;
		x[totalThreadCount * 6 + globalThreadID] += 0.071850;
		x[totalThreadCount * 11 + globalThreadID] += 0.122019;
		x[totalThreadCount * 14 + globalThreadID] += 0.065319;
		x[totalThreadCount * 16 + globalThreadID] += 0.098408;
		x[totalThreadCount * 17 + globalThreadID] += 0.060292;
		x[totalThreadCount * 19 + globalThreadID] += 0.126789;
		x[totalThreadCount * 22 + globalThreadID] += 0.018749;
		x[totalThreadCount * 23 + globalThreadID] += 0.030049;
		x[totalThreadCount * 25 + globalThreadID] += 0.128999;
		x[totalThreadCount * 26 + globalThreadID] += 0.210230;
		x[totalThreadCount * 27 + globalThreadID] += 0.325177;
		x[totalThreadCount * 28 + globalThreadID] += 0.062836;
	}
	if ((gray >> 13) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += 0.024420;
		x[totalThreadCount * 1 + globalThreadID] += 0.186657;
		x[totalThreadCount * 11 + globalThreadID] += 0.047041;
		x[totalThreadCount * 13 + globalThreadID] += 0.228049;
		x[totalThreadCount * 21 + globalThreadID] += 0.053803;
		x[totalThreadCount * 24 + globalThreadID] += 0.098007;
		x[totalThreadCount * 26 + globalThreadID] += 0.080009;
		x[totalThreadCount * 29 + globalThreadID] += 0.292189;
		x[totalThreadCount * 30 + globalThreadID] += 0.067014;
		x[totalThreadCount * 31 + globalThreadID] += 0.081806;
	}
	if ((gray >> 14) & 1LL)
	{
		reg2 += 0.097851;
		x[totalThreadCount * 5 + globalThreadID] += 0.098437;
		x[totalThreadCount * 11 + globalThreadID] += 0.101794;
		x[totalThreadCount * 23 + globalThreadID] += 0.132801;
		x[totalThreadCount * 27 + globalThreadID] += 0.168862;
		x[totalThreadCount * 28 + globalThreadID] += 0.051209;
		x[totalThreadCount * 30 + globalThreadID] += 0.001424;
		x[totalThreadCount * 32 + globalThreadID] += 0.175768;
		x[totalThreadCount * 33 + globalThreadID] += 0.198779;
	}
	if ((gray >> 15) & 1LL)
	{
		reg3 += 0.017706;
		x[totalThreadCount * 0 + globalThreadID] += 0.114702;
		x[totalThreadCount * 5 + globalThreadID] += 0.136954;
		x[totalThreadCount * 9 + globalThreadID] += 0.046917;
		x[totalThreadCount * 13 + globalThreadID] += 0.040683;
		x[totalThreadCount * 14 + globalThreadID] += 0.072899;
		x[totalThreadCount * 20 + globalThreadID] += 0.121390;
		x[totalThreadCount * 21 + globalThreadID] += 0.070197;
		x[totalThreadCount * 28 + globalThreadID] += 0.046022;
		x[totalThreadCount * 31 + globalThreadID] += 0.109507;
		x[totalThreadCount * 33 + globalThreadID] += 0.099851;
	}
	if ((gray >> 16) & 1LL)
	{
		reg1 += 0.024423;
		x[totalThreadCount * 7 + globalThreadID] += 0.043611;
		x[totalThreadCount * 10 + globalThreadID] += 0.002412;
		x[totalThreadCount * 13 + globalThreadID] += 0.129569;
		x[totalThreadCount * 15 + globalThreadID] += 0.016904;
		x[totalThreadCount * 17 + globalThreadID] += 0.059578;
		x[totalThreadCount * 26 + globalThreadID] += 0.032707;
		x[totalThreadCount * 27 + globalThreadID] += 0.150094;
		x[totalThreadCount * 33 + globalThreadID] += 0.044177;
		x[totalThreadCount * 34 + globalThreadID] += 0.171593;
	}
	if ((gray >> 17) & 1LL)
	{
		reg1 += 0.038647;
		reg2 += 0.110589;
		x[totalThreadCount * 2 + globalThreadID] += 0.307311;
		x[totalThreadCount * 15 + globalThreadID] += 0.018395;
		x[totalThreadCount * 20 + globalThreadID] += 0.142588;
		x[totalThreadCount * 21 + globalThreadID] += 0.026581;
		x[totalThreadCount * 22 + globalThreadID] += 0.047665;
		x[totalThreadCount * 33 + globalThreadID] += 0.224410;
		x[totalThreadCount * 34 + globalThreadID] += 0.053267;
		x[totalThreadCount * 35 + globalThreadID] += 0.063452;
	}
	if ((gray >> 18) & 1LL)
	{
		reg3 += 0.007632;
		x[totalThreadCount * 4 + globalThreadID] += 0.034624;
		x[totalThreadCount * 5 + globalThreadID] += 0.124596;
		x[totalThreadCount * 6 + globalThreadID] += 0.083609;
		x[totalThreadCount * 11 + globalThreadID] += 0.173830;
		x[totalThreadCount * 15 + globalThreadID] += 0.021596;
		x[totalThreadCount * 17 + globalThreadID] += 0.101213;
		x[totalThreadCount * 21 + globalThreadID] += 0.031879;
		x[totalThreadCount * 23 + globalThreadID] += 0.116135;
		x[totalThreadCount * 24 + globalThreadID] += 0.125410;
		x[totalThreadCount * 31 + globalThreadID] += 0.076722;
		x[totalThreadCount * 33 + globalThreadID] += 0.086503;
		x[totalThreadCount * 34 + globalThreadID] += 0.040356;
		x[totalThreadCount * 35 + globalThreadID] += 0.121186;
		x[totalThreadCount * 36 + globalThreadID] += 0.084202;
		x[totalThreadCount * 37 + globalThreadID] += 0.091608;
	}
	if ((gray >> 19) & 1LL)
	{
		reg2 += 0.043028;
		x[totalThreadCount * 2 + globalThreadID] += 0.004853;
		x[totalThreadCount * 4 + globalThreadID] += 0.122730;
		x[totalThreadCount * 7 + globalThreadID] += 0.164354;
		x[totalThreadCount * 14 + globalThreadID] += 0.131159;
		x[totalThreadCount * 15 + globalThreadID] += 0.001987;
		x[totalThreadCount * 19 + globalThreadID] += 0.104543;
		x[totalThreadCount * 22 + globalThreadID] += 0.158528;
		x[totalThreadCount * 26 + globalThreadID] += 0.072463;
		x[totalThreadCount * 30 + globalThreadID] += 0.172955;
		x[totalThreadCount * 31 + globalThreadID] += 0.115938;
		x[totalThreadCount * 36 + globalThreadID] += 0.055770;
		x[totalThreadCount * 37 + globalThreadID] += 0.143496;
		x[totalThreadCount * 38 + globalThreadID] += 0.161901;
	}
	if ((gray >> 20) & 1LL)
	{
		reg0 += 0.020284;
		x[totalThreadCount * 0 + globalThreadID] += 0.043839;
		x[totalThreadCount * 2 + globalThreadID] += 0.004768;
		x[totalThreadCount * 4 + globalThreadID] += 0.026874;
		x[totalThreadCount * 6 + globalThreadID] += 0.088463;
		x[totalThreadCount * 7 + globalThreadID] += 0.030741;
		x[totalThreadCount * 12 + globalThreadID] += 0.070529;
		x[totalThreadCount * 20 + globalThreadID] += 0.062781;
		x[totalThreadCount * 21 + globalThreadID] += 0.113147;
		x[totalThreadCount * 22 + globalThreadID] += 0.154024;
		x[totalThreadCount * 30 + globalThreadID] += 0.157830;
		x[totalThreadCount * 34 + globalThreadID] += 0.136935;
		x[totalThreadCount * 36 + globalThreadID] += 0.011724;
		x[totalThreadCount * 37 + globalThreadID] += 0.161791;
	}
	if ((gray >> 21) & 1LL)
	{
		reg1 += 0.017231;
		x[totalThreadCount * 0 + globalThreadID] += 0.071572;
		x[totalThreadCount * 6 + globalThreadID] += 0.048334;
		x[totalThreadCount * 11 + globalThreadID] += 0.172508;
		x[totalThreadCount * 13 + globalThreadID] += 0.054311;
		x[totalThreadCount * 14 + globalThreadID] += 0.074781;
		x[totalThreadCount * 18 + globalThreadID] += 0.092319;
		x[totalThreadCount * 19 + globalThreadID] += 0.191735;
		x[totalThreadCount * 21 + globalThreadID] += 0.061862;
		x[totalThreadCount * 22 + globalThreadID] += 0.111669;
		x[totalThreadCount * 23 + globalThreadID] += 0.083332;
		x[totalThreadCount * 25 + globalThreadID] += 0.167729;
		x[totalThreadCount * 27 + globalThreadID] += 0.024686;
		x[totalThreadCount * 28 + globalThreadID] += 0.172840;
		x[totalThreadCount * 31 + globalThreadID] += 0.058455;
		x[totalThreadCount * 32 + globalThreadID] += 0.168521;
		x[totalThreadCount * 33 + globalThreadID] += 0.016445;
		x[totalThreadCount * 35 + globalThreadID] += 0.026495;
		x[totalThreadCount * 36 + globalThreadID] += 0.115742;
	}
	if ((gray >> 22) & 1LL)
	{
		reg0 += 0.061024;
		x[totalThreadCount * 2 + globalThreadID] += 0.153459;
		x[totalThreadCount * 8 + globalThreadID] += 0.079478;
		x[totalThreadCount * 10 + globalThreadID] += 0.117702;
		x[totalThreadCount * 11 + globalThreadID] += 0.185449;
		x[totalThreadCount * 13 + globalThreadID] += 0.121961;
		x[totalThreadCount * 18 + globalThreadID] += 0.171818;
		x[totalThreadCount * 22 + globalThreadID] += 0.041048;
		x[totalThreadCount * 23 + globalThreadID] += 0.046438;
		x[totalThreadCount * 26 + globalThreadID] += 0.182424;
		x[totalThreadCount * 29 + globalThreadID] += 0.079024;
		x[totalThreadCount * 33 + globalThreadID] += 0.119818;
		x[totalThreadCount * 34 + globalThreadID] += 0.122731;
		x[totalThreadCount * 35 + globalThreadID] += 0.098403;
		x[totalThreadCount * 37 + globalThreadID] += 0.055533;
	}
	if ((gray >> 23) & 1LL)
	{
		reg0 += 0.030129;
		reg3 += 0.031612;
		x[totalThreadCount * 5 + globalThreadID] += 0.193768;
		x[totalThreadCount * 7 + globalThreadID] += 0.208415;
		x[totalThreadCount * 10 + globalThreadID] += 0.064653;
		x[totalThreadCount * 14 + globalThreadID] += 0.131703;
		x[totalThreadCount * 21 + globalThreadID] += 0.065940;
		x[totalThreadCount * 22 + globalThreadID] += 0.102602;
		x[totalThreadCount * 25 + globalThreadID] += 0.118741;
		x[totalThreadCount * 28 + globalThreadID] += 0.035093;
		x[totalThreadCount * 34 + globalThreadID] += 0.006346;
		x[totalThreadCount * 35 + globalThreadID] += 0.066253;
		x[totalThreadCount * 37 + globalThreadID] += 0.014717;
	}
	if ((gray >> 24) & 1LL)
	{
		reg2 += 0.052702;
		reg4 += 0.024442;
		x[totalThreadCount * 1 + globalThreadID] += 0.067483;
		x[totalThreadCount * 2 + globalThreadID] += 0.044556;
		x[totalThreadCount * 6 + globalThreadID] += 0.067668;
		x[totalThreadCount * 8 + globalThreadID] += 0.101647;
		x[totalThreadCount * 11 + globalThreadID] += 0.102970;
		x[totalThreadCount * 16 + globalThreadID] += 0.095582;
		x[totalThreadCount * 17 + globalThreadID] += 0.062230;
		x[totalThreadCount * 18 + globalThreadID] += 0.098616;
		x[totalThreadCount * 20 + globalThreadID] += 0.072365;
		x[totalThreadCount * 23 + globalThreadID] += 0.017607;
		x[totalThreadCount * 27 + globalThreadID] += 0.043025;
		x[totalThreadCount * 29 + globalThreadID] += 0.149610;
		x[totalThreadCount * 30 + globalThreadID] += 0.071174;
		x[totalThreadCount * 31 + globalThreadID] += 0.099352;
		x[totalThreadCount * 33 + globalThreadID] += 0.102343;
		x[totalThreadCount * 36 + globalThreadID] += 0.134021;
		x[totalThreadCount * 37 + globalThreadID] += 0.017080;
	}
	if ((gray >> 25) & 1LL)
	{
		reg3 += 0.039268;
		x[totalThreadCount * 8 + globalThreadID] += 0.081844;
		x[totalThreadCount * 10 + globalThreadID] += 0.089337;
		x[totalThreadCount * 15 + globalThreadID] += 0.126196;
		x[totalThreadCount * 16 + globalThreadID] += 0.046344;
		x[totalThreadCount * 17 + globalThreadID] += 0.090879;
		x[totalThreadCount * 21 + globalThreadID] += 0.013127;
		x[totalThreadCount * 24 + globalThreadID] += 0.092912;
		x[totalThreadCount * 29 + globalThreadID] += 0.114029;
		x[totalThreadCount * 30 + globalThreadID] += 0.051495;
		x[totalThreadCount * 31 + globalThreadID] += 0.071944;
		x[totalThreadCount * 35 + globalThreadID] += 0.057077;
		x[totalThreadCount * 38 + globalThreadID] += 0.029137;
	}
	if ((gray >> 26) & 1LL)
	{
		reg1 += 0.007930;
		reg4 += 0.020693;
		x[totalThreadCount * 1 + globalThreadID] += 0.154031;
		x[totalThreadCount * 2 + globalThreadID] += 0.208574;
		x[totalThreadCount * 4 + globalThreadID] += 0.141380;
		x[totalThreadCount * 6 + globalThreadID] += 0.058206;
		x[totalThreadCount * 13 + globalThreadID] += 0.040536;
		x[totalThreadCount * 17 + globalThreadID] += 0.064236;
		x[totalThreadCount * 24 + globalThreadID] += 0.000897;
		x[totalThreadCount * 25 + globalThreadID] += 0.161762;
		x[totalThreadCount * 37 + globalThreadID] += 0.015702;
		x[totalThreadCount * 39 + globalThreadID] += 0.329531;
	}
	if ((gray >> 27) & 1LL)
	{
		reg2 += 0.062616;
		x[totalThreadCount * 4 + globalThreadID] += 0.151929;
		x[totalThreadCount * 8 + globalThreadID] += 0.159426;
		x[totalThreadCount * 18 + globalThreadID] += 0.116600;
		x[totalThreadCount * 19 + globalThreadID] += 0.097861;
		x[totalThreadCount * 23 + globalThreadID] += 0.198083;
		x[totalThreadCount * 24 + globalThreadID] += 0.183697;
		x[totalThreadCount * 25 + globalThreadID] += 0.118323;
		x[totalThreadCount * 28 + globalThreadID] += 0.039762;
		x[totalThreadCount * 32 + globalThreadID] += 0.240388;
		x[totalThreadCount * 33 + globalThreadID] += 0.089170;
		x[totalThreadCount * 38 + globalThreadID] += 0.065499;
	}
	if ((gray >> 28) & 1LL)
	{
		reg3 += 0.045397;
		reg4 += 0.050052;
		x[totalThreadCount * 0 + globalThreadID] += 0.106957;
		x[totalThreadCount * 3 + globalThreadID] += 0.017386;
		x[totalThreadCount * 4 + globalThreadID] += 0.013665;
		x[totalThreadCount * 15 + globalThreadID] += 0.076346;
		x[totalThreadCount * 19 + globalThreadID] += 0.171681;
		x[totalThreadCount * 22 + globalThreadID] += 0.046743;
		x[totalThreadCount * 32 + globalThreadID] += 0.153781;
		x[totalThreadCount * 33 + globalThreadID] += 0.048342;
		x[totalThreadCount * 35 + globalThreadID] += 0.075614;
		x[totalThreadCount * 37 + globalThreadID] += 0.024594;
		x[totalThreadCount * 38 + globalThreadID] += 0.006812;
	}
	if ((gray >> 29) & 1LL)
	{
		reg0 += 0.050049;
		reg1 += 0.059383;
		reg4 += 0.057171;
		x[totalThreadCount * 0 + globalThreadID] += 0.144305;
		x[totalThreadCount * 1 + globalThreadID] += 0.166966;
		x[totalThreadCount * 4 + globalThreadID] += 0.137681;
		x[totalThreadCount * 6 + globalThreadID] += 0.080039;
		x[totalThreadCount * 11 + globalThreadID] += 0.046730;
		x[totalThreadCount * 12 + globalThreadID] += 0.055404;
		x[totalThreadCount * 14 + globalThreadID] += 0.009382;
		x[totalThreadCount * 21 + globalThreadID] += 0.066846;
		x[totalThreadCount * 25 + globalThreadID] += 0.007076;
		x[totalThreadCount * 28 + globalThreadID] += 0.073194;
		x[totalThreadCount * 38 + globalThreadID] += 0.158846;
	}
	if ((gray >> 30) & 1LL)
	{
		reg1 += 0.004081;
		x[totalThreadCount * 2 + globalThreadID] += 0.105367;
		x[totalThreadCount * 3 + globalThreadID] += 0.083926;
		x[totalThreadCount * 7 + globalThreadID] += 0.077589;
		x[totalThreadCount * 8 + globalThreadID] += 0.018178;
		x[totalThreadCount * 9 + globalThreadID] += 0.070087;
		x[totalThreadCount * 10 + globalThreadID] += 0.038527;
		x[totalThreadCount * 15 + globalThreadID] += 0.054129;
		x[totalThreadCount * 16 + globalThreadID] += 0.092055;
		x[totalThreadCount * 20 + globalThreadID] += 0.173077;
		x[totalThreadCount * 22 + globalThreadID] += 0.067663;
		x[totalThreadCount * 23 + globalThreadID] += 0.029301;
		x[totalThreadCount * 24 + globalThreadID] += 0.129170;
		x[totalThreadCount * 35 + globalThreadID] += 0.002636;
		x[totalThreadCount * 38 + globalThreadID] += 0.211565;
	}
	if ((gray >> 31) & 1LL)
	{
		reg1 += 0.035601;
		reg2 += 0.030342;
		reg3 += 0.024049;
		x[totalThreadCount * 4 + globalThreadID] += 0.019381;
		x[totalThreadCount * 7 + globalThreadID] += 0.197090;
		x[totalThreadCount * 9 + globalThreadID] += 0.063417;
		x[totalThreadCount * 11 + globalThreadID] += 0.121346;
		x[totalThreadCount * 12 + globalThreadID] += 0.062855;
		x[totalThreadCount * 14 + globalThreadID] += 0.093919;
		x[totalThreadCount * 21 + globalThreadID] += 0.073282;
		x[totalThreadCount * 25 + globalThreadID] += 0.054460;
		x[totalThreadCount * 26 + globalThreadID] += 0.146122;
		x[totalThreadCount * 28 + globalThreadID] += 0.130881;
		x[totalThreadCount * 33 + globalThreadID] += 0.045785;
		x[totalThreadCount * 34 + globalThreadID] += 0.088600;
		x[totalThreadCount * 37 + globalThreadID] += 0.036076;
		x[totalThreadCount * 38 + globalThreadID] += 0.030241;
	}
	if ((gray >> 32) & 1LL)
	{
		reg1 += 0.017058;
		reg3 += 0.006796;
		x[totalThreadCount * 2 + globalThreadID] += 0.043013;
		x[totalThreadCount * 5 + globalThreadID] += 0.095227;
		x[totalThreadCount * 7 + globalThreadID] += 0.066425;
		x[totalThreadCount * 12 + globalThreadID] += 0.011671;
		x[totalThreadCount * 15 + globalThreadID] += 0.174642;
		x[totalThreadCount * 16 + globalThreadID] += 0.134534;
		x[totalThreadCount * 20 + globalThreadID] += 0.007337;
		x[totalThreadCount * 21 + globalThreadID] += 0.107644;
		x[totalThreadCount * 25 + globalThreadID] += 0.147045;
		x[totalThreadCount * 26 + globalThreadID] += 0.180521;
		x[totalThreadCount * 27 + globalThreadID] += 0.000314;
		x[totalThreadCount * 30 + globalThreadID] += 0.030435;
		x[totalThreadCount * 32 + globalThreadID] += 0.039056;
		x[totalThreadCount * 34 + globalThreadID] += 0.002768;
		x[totalThreadCount * 35 + globalThreadID] += 0.104261;
		x[totalThreadCount * 39 + globalThreadID] += 0.148813;
	}
	if ((gray >> 33) & 1LL)
	{
		reg0 += 0.065125;
		reg1 += 0.064228;
		reg4 += 0.050079;
		x[totalThreadCount * 0 + globalThreadID] += 0.055879;
		x[totalThreadCount * 2 + globalThreadID] += 0.041828;
		x[totalThreadCount * 14 + globalThreadID] += 0.108739;
		x[totalThreadCount * 17 + globalThreadID] += 0.027587;
		x[totalThreadCount * 18 + globalThreadID] += 0.004030;
		x[totalThreadCount * 23 + globalThreadID] += 0.082299;
		x[totalThreadCount * 26 + globalThreadID] += 0.084370;
		x[totalThreadCount * 28 + globalThreadID] += 0.002517;
		x[totalThreadCount * 39 + globalThreadID] += 0.150355;
	}
	if ((gray >> 34) & 1LL)
	{
		reg1 += 0.059895;
		reg2 += 0.034073;
		x[totalThreadCount * 3 + globalThreadID] += 0.044863;
		x[totalThreadCount * 8 + globalThreadID] += 0.007944;
		x[totalThreadCount * 10 + globalThreadID] += 0.147869;
		x[totalThreadCount * 11 + globalThreadID] += 0.171416;
		x[totalThreadCount * 15 + globalThreadID] += 0.007866;
		x[totalThreadCount * 22 + globalThreadID] += 0.049318;
		x[totalThreadCount * 25 + globalThreadID] += 0.015798;
		x[totalThreadCount * 29 + globalThreadID] += 0.190491;
		x[totalThreadCount * 30 + globalThreadID] += 0.185146;
		x[totalThreadCount * 32 + globalThreadID] += 0.011965;
		x[totalThreadCount * 34 + globalThreadID] += 0.129627;
	}
	if ((gray >> 35) & 1LL)
	{
		reg1 += 0.030204;
		reg2 += 0.014118;
		reg4 += 0.038908;
		x[totalThreadCount * 8 + globalThreadID] += 0.143338;
		x[totalThreadCount * 10 + globalThreadID] += 0.016103;
		x[totalThreadCount * 19 + globalThreadID] += 0.124584;
		x[totalThreadCount * 21 + globalThreadID] += 0.056153;
		x[totalThreadCount * 24 + globalThreadID] += 0.112409;
		x[totalThreadCount * 28 + globalThreadID] += 0.092492;
		x[totalThreadCount * 33 + globalThreadID] += 0.121724;
		x[totalThreadCount * 35 + globalThreadID] += 0.122745;
		x[totalThreadCount * 36 + globalThreadID] += 0.127006;
	}
	if ((gray >> 36) & 1LL)
	{
		reg1 += 0.001693;
		reg4 += 0.024588;
		x[totalThreadCount * 1 + globalThreadID] += 0.086110;
		x[totalThreadCount * 4 + globalThreadID] += 0.145591;
		x[totalThreadCount * 8 + globalThreadID] += 0.078513;
		x[totalThreadCount * 10 + globalThreadID] += 0.025539;
		x[totalThreadCount * 21 + globalThreadID] += 0.042937;
		x[totalThreadCount * 23 + globalThreadID] += 0.107654;
		x[totalThreadCount * 25 + globalThreadID] += 0.087920;
		x[totalThreadCount * 30 + globalThreadID] += 0.169340;
		x[totalThreadCount * 31 + globalThreadID] += 0.123322;
		x[totalThreadCount * 39 + globalThreadID] += 0.214803;
	}
	if ((gray >> 37) & 1LL)
	{
		reg0 += 0.025237;
		reg1 += 0.043181;
		reg2 += 0.018590;
		reg4 += 0.031543;
		x[totalThreadCount * 6 + globalThreadID] += 0.040388;
		x[totalThreadCount * 8 + globalThreadID] += 0.140233;
		x[totalThreadCount * 11 + globalThreadID] += 0.089747;
		x[totalThreadCount * 13 + globalThreadID] += 0.048642;
		x[totalThreadCount * 14 + globalThreadID] += 0.000420;
		x[totalThreadCount * 15 + globalThreadID] += 0.064622;
		x[totalThreadCount * 17 + globalThreadID] += 0.021925;
		x[totalThreadCount * 24 + globalThreadID] += 0.074275;
		x[totalThreadCount * 27 + globalThreadID] += 0.279333;
		x[totalThreadCount * 31 + globalThreadID] += 0.069166;
		x[totalThreadCount * 32 + globalThreadID] += 0.128396;
	}
	if ((gray >> 38) & 1LL)
	{
		reg0 += 0.019072;
		reg1 += 0.043436;
		x[totalThreadCount * 1 + globalThreadID] += 0.119504;
		x[totalThreadCount * 7 + globalThreadID] += 0.010649;
		x[totalThreadCount * 8 + globalThreadID] += 0.048328;
		x[totalThreadCount * 10 + globalThreadID] += 0.034755;
		x[totalThreadCount * 15 + globalThreadID] += 0.063919;
		x[totalThreadCount * 20 + globalThreadID] += 0.079858;
		x[totalThreadCount * 23 + globalThreadID] += 0.056028;
		x[totalThreadCount * 25 + globalThreadID] += 0.001250;
		x[totalThreadCount * 30 + globalThreadID] += 0.131851;
		x[totalThreadCount * 32 + globalThreadID] += 0.004497;
		x[totalThreadCount * 33 + globalThreadID] += 0.087471;
		x[totalThreadCount * 35 + globalThreadID] += 0.110174;
		x[totalThreadCount * 36 + globalThreadID] += 0.060284;
		x[totalThreadCount * 37 + globalThreadID] += 0.016693;
		x[totalThreadCount * 39 + globalThreadID] += 0.110610;
	}
	if ((gray >> 39) & 1LL)
	{
		reg0 += 0.043418;
		reg2 += 0.034225;
		reg4 += 0.043095;
		x[totalThreadCount * 9 + globalThreadID] += 0.120765;
		x[totalThreadCount * 17 + globalThreadID] += 0.043108;
		x[totalThreadCount * 20 + globalThreadID] += 0.103643;
		x[totalThreadCount * 24 + globalThreadID] += 0.038729;
		x[totalThreadCount * 25 + globalThreadID] += 0.009152;
		x[totalThreadCount * 32 + globalThreadID] += 0.103173;
		x[totalThreadCount * 34 + globalThreadID] += 0.141317;
		x[totalThreadCount * 38 + globalThreadID] += 0.156824;
		x[totalThreadCount * 39 + globalThreadID] += 0.080537;
	}
	if ((gray >> 40) & 1LL)
	{
		reg2 += 0.067460;
		reg3 += 0.001116;
		reg4 += 0.006306;
		x[totalThreadCount * 2 + globalThreadID] += 0.074207;
		x[totalThreadCount * 9 + globalThreadID] += 0.060941;
		x[totalThreadCount * 10 + globalThreadID] += 0.161646;
		x[totalThreadCount * 11 + globalThreadID] += 0.072050;
		x[totalThreadCount * 12 + globalThreadID] += 0.132088;
		x[totalThreadCount * 17 + globalThreadID] += 0.168968;
		x[totalThreadCount * 22 + globalThreadID] += 0.049448;
		x[totalThreadCount * 23 + globalThreadID] += 0.047065;
		x[totalThreadCount * 24 + globalThreadID] += 0.075199;
		x[totalThreadCount * 25 + globalThreadID] += 0.201329;
		x[totalThreadCount * 31 + globalThreadID] += 0.110971;
		x[totalThreadCount * 32 + globalThreadID] += 0.022533;
		x[totalThreadCount * 35 + globalThreadID] += 0.000600;
	}
	if ((gray >> 41) & 1LL)
	{
		reg0 += 0.000644;
		reg1 += 0.059442;
		reg2 += 0.041804;
		x[totalThreadCount * 2 + globalThreadID] += 0.090786;
		x[totalThreadCount * 3 + globalThreadID] += 0.140485;
		x[totalThreadCount * 4 + globalThreadID] += 0.027478;
		x[totalThreadCount * 9 + globalThreadID] += 0.162154;
		x[totalThreadCount * 10 + globalThreadID] += 0.002333;
		x[totalThreadCount * 13 + globalThreadID] += 0.132966;
		x[totalThreadCount * 21 + globalThreadID] += 0.037910;
		x[totalThreadCount * 22 + globalThreadID] += 0.135950;
		x[totalThreadCount * 25 + globalThreadID] += 0.135897;
		x[totalThreadCount * 28 + globalThreadID] += 0.107871;
		x[totalThreadCount * 31 + globalThreadID] += 0.058585;
		x[totalThreadCount * 32 + globalThreadID] += 0.036676;
		x[totalThreadCount * 33 + globalThreadID] += 0.047661;
	}
	if ((gray >> 42) & 1LL)
	{
		reg0 += 0.037738;
		reg3 += 0.023242;
		reg4 += 0.032469;
		x[totalThreadCount * 8 + globalThreadID] += 0.079094;
		x[totalThreadCount * 10 + globalThreadID] += 0.052501;
		x[totalThreadCount * 11 + globalThreadID] += 0.108975;
		x[totalThreadCount * 15 + globalThreadID] += 0.010685;
		x[totalThreadCount * 16 + globalThreadID] += 0.107003;
		x[totalThreadCount * 21 + globalThreadID] += 0.006815;
		x[totalThreadCount * 22 + globalThreadID] += 0.061136;
		x[totalThreadCount * 23 + globalThreadID] += 0.078398;
		x[totalThreadCount * 24 + globalThreadID] += 0.066931;
		x[totalThreadCount * 29 + globalThreadID] += 0.139093;
		x[totalThreadCount * 31 + globalThreadID] += 0.012701;
		x[totalThreadCount * 32 + globalThreadID] += 0.012703;
		x[totalThreadCount * 35 + globalThreadID] += 0.033725;
		x[totalThreadCount * 36 + globalThreadID] += 0.074802;
		x[totalThreadCount * 37 + globalThreadID] += 0.119369;
	}
	if ((gray >> 43) & 1LL)
	{
		reg1 += 0.058229;
		reg3 += 0.049384;
		reg4 += 0.065579;
		x[totalThreadCount * 5 + globalThreadID] += 0.077284;
		x[totalThreadCount * 7 + globalThreadID] += 0.007645;
		x[totalThreadCount * 8 + globalThreadID] += 0.017301;
		x[totalThreadCount * 9 + globalThreadID] += 0.116168;
		x[totalThreadCount * 16 + globalThreadID] += 0.136784;
		x[totalThreadCount * 19 + globalThreadID] += 0.033838;
		x[totalThreadCount * 22 + globalThreadID] += 0.013455;
		x[totalThreadCount * 30 + globalThreadID] += 0.106505;
		x[totalThreadCount * 32 + globalThreadID] += 0.084079;
		x[totalThreadCount * 34 + globalThreadID] += 0.152008;
		x[totalThreadCount * 38 + globalThreadID] += 0.174049;
	}

	C globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	globalProduct *= x[totalThreadCount * 39 + globalThreadID];

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
								reg3,
								reg4);
					break;
				case 1:
					c1included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 2:
					c2included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 3:
					c3included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 4:
					c4included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 5:
					c5included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 6:
					c6included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 7:
					c7included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 8:
					c8included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 9:
					c9included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 10:
					c10included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 11:
					c11included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 12:
					c12included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 13:
					c13included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 14:
					c14included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 15:
					c15included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 16:
					c16included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 17:
					c17included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 18:
					c18included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 19:
					c19included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 20:
					c20included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 21:
					c21included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 22:
					c22included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 23:
					c23included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 24:
					c24included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 25:
					c25included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 26:
					c26included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 27:
					c27included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 28:
					c28included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 29:
					c29included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 30:
					c30included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 31:
					c31included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 32:
					c32included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 33:
					c33included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 34:
					c34included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 35:
					c35included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 36:
					c36included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 37:
					c37included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 38:
					c38included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 39:
					c39included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 40:
					c40included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 41:
					c41included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 42:
					c42included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 43:
					c43included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 44:
					c44included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
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
								reg3,
								reg4);
					break;
				case 1:
					c1excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 2:
					c2excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 3:
					c3excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 4:
					c4excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 5:
					c5excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 6:
					c6excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4);
					break;
				case 7:
					c7excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 8:
					c8excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 9:
					c9excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 10:
					c10excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 11:
					c11excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 12:
					c12excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 13:
					c13excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 14:
					c14excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 15:
					c15excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 16:
					c16excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 17:
					c17excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 18:
					c18excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 19:
					c19excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 20:
					c20excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 21:
					c21excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 22:
					c22excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 23:
					c23excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 24:
					c24excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 25:
					c25excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 26:
					c26excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 27:
					c27excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 28:
					c28excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 29:
					c29excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 30:
					c30excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 31:
					c31excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 32:
					c32excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 33:
					c33excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 34:
					c34excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 35:
					c35excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 36:
					c36excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 37:
					c37excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 38:
					c38excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 39:
					c39excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 40:
					c40excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 41:
					c41excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 42:
					c42excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 43:
					c43excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 44:
					c44excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
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
