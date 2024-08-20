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
	reg0 += 9383.000000;
	reg1 += 886.000000;
	reg2 += 2777.000000;
	reg3 += 6915.000000;
	reg4 += 7793.000000;

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
	reg0 += 8335.000000;
	reg1 += 5386.000000;
	reg2 += 492.000000;
	reg3 += 6649.000000;
	reg4 += 1421.000000;

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
	reg0 += 2362.000000;
	reg1 += 27.000000;
	reg2 += 8690.000000;
	reg3 += 59.000000;
	reg4 += 7763.000000;

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
	reg0 += 3926.000000;
	reg1 += 540.000000;
	reg2 += 3426.000000;
	reg3 += 9172.000000;
	reg4 += 5736.000000;

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
	reg0 += 5211.000000;
	reg1 += 5368.000000;
	reg2 += 2567.000000;
	reg3 += 6429.000000;
	reg4 += 5782.000000;

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
	reg0 += 1530.000000;
	reg1 += 2862.000000;
	reg2 += 5123.000000;
	reg3 += 4067.000000;
	reg4 += 3135.000000;

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
	reg0 += 3929.000000;
	reg1 += 9802.000000;
	reg2 += 4022.000000;
	reg3 += 3058.000000;
	reg4 += 3069.000000;

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
	reg4 += 428.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 4500.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 6127.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 5629.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 5343.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 5238.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 8390.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 4232.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 8023.000000;
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
	x[totalThreadCount * 2 + globalThreadID] += 2325.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 1852.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 5154.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 5266.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 8954.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 308.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6127.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 4693.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 8159.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 6506.000000;
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
	reg1 += 967.000000;
	reg2 += 6763.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 8270.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 4234.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 9211.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 6059.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 4047.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 5082.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 2954.000000;
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
	reg1 += 589.000000;
	reg2 += 9876.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9878.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 1467.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 5250.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 6977.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 6257.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1238.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 4684.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 7265.000000;
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
	reg4 += 7857.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 6892.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 595.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7685.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 5720.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 415.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2587.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 9296.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 5404.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 4266.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 1476.000000;
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
	x[totalThreadCount * 2 + globalThreadID] += 9668.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7372.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6466.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 4599.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 6887.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 3348.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 6342.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 1255.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 2336.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 7445.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 9301.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 9904.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 3940.000000;
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
	x[totalThreadCount * 0 + globalThreadID] += 871.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 7361.000000;
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
	x[totalThreadCount * 11 + globalThreadID] += 1638.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 9875.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 3069.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 4393.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 2326.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 9300.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 2538.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 4465.000000;
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
	reg2 += 9631.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 2659.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 3286.000000;
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
	x[totalThreadCount * 23 + globalThreadID] += 6289.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 3133.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 1956.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 50.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 6833.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 9954.000000;
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
	reg3 += 3941.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 6628.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 6465.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 3162.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 2854.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 5464.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 8500.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 6487.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 3072.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 9683.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 8738.000000;
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
	reg1 += 2623.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 1287.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 114.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 5523.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 596.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2140.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 936.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 2957.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 2349.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 6067.000000;
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
	reg1 += 3059.000000;
	reg2 += 8518.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 9438.000000;
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
	x[totalThreadCount * 15 + globalThreadID] += 478.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 4471.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 1100.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 1521.000000;
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
	x[totalThreadCount * 33 + globalThreadID] += 8794.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 1388.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 1839.000000;
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
	reg3 += 1472.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 2334.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 5097.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7914.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 8498.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 1086.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 5185.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 2553.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 8329.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 7892.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 5879.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 6560.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 2035.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 6797.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 5159.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 5325.000000;
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
	reg2 += 6226.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 280.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 8031.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 6715.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 8270.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 97.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 4683.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 9503.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 2871.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 8927.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 8624.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 3317.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 8097.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 8440.000000;
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
	reg0 += 2302.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 2014.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 260.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1662.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7682.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 1187.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 3007.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 3495.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 8313.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8726.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 7699.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 6335.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 659.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 8628.000000;
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
	reg1 += 2618.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 3555.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 4538.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 8365.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 3275.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 4818.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 4428.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 8776.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 4914.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 6840.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 5928.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 8858.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 688.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 9917.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 4443.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 9841.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 1237.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 1474.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 7034.000000;
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
	reg0 += 7743.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 9355.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 5644.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 8139.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 9299.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 7605.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 8522.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2600.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 3416.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 7637.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 3622.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 9320.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 6348.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 5661.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 3311.000000;
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
	reg0 += 4030.000000;
	reg3 += 6593.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 8571.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 9485.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 4713.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 9250.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 5710.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 6851.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 6836.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 2195.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 346.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 4018.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 925.000000;
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
	reg2 += 8324.000000;
	reg4 += 4154.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 3959.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 2806.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 6787.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 7457.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 5334.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 6539.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 3378.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 5053.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 4653.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 1338.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 1281.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 7084.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 4010.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 8067.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 8224.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 8701.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 1052.000000;
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
	reg3 += 8437.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 6312.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 6709.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 7069.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 3333.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 5186.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 1171.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 6513.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 5676.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 3050.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 6141.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 3566.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 1743.000000;
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
	reg1 += 732.000000;
	reg4 += 2000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 5139.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 7470.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 5743.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 3320.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 1485.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1983.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 34.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 5190.000000;
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
	x[totalThreadCount * 37 + globalThreadID] += 550.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 9807.000000;
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
	reg2 += 6095.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 6688.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 7208.000000;
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
	x[totalThreadCount * 18 + globalThreadID] += 3682.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 2949.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 9277.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 7549.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 4114.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 1502.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 9242.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 4416.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 2297.000000;
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
	reg3 += 8042.000000;
	reg4 += 7373.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 4919.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 925.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 846.000000;
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
	x[totalThreadCount * 15 + globalThreadID] += 3526.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 7276.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2651.000000;
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
	x[totalThreadCount * 32 + globalThreadID] += 8315.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 3367.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 3895.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 1313.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 336.000000;
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
	reg0 += 6228.000000;
	reg1 += 9150.000000;
	reg4 += 9224.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 7269.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 9299.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9336.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7621.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 2298.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 2590.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 613.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 5385.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 379.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 4259.000000;
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
	x[totalThreadCount * 38 + globalThreadID] += 8581.000000;
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
	reg1 += 537.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 5379.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 4176.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 2805.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 1081.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 3516.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 2231.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 2338.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 5105.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 9021.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 3589.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 1805.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 6982.000000;
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
	x[totalThreadCount * 35 + globalThreadID] += 127.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 9759.000000;
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
	reg1 += 6353.000000;
	reg2 += 5269.000000;
	reg3 += 5404.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1522.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 9664.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 4315.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6911.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 3403.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 7107.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 6837.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 3378.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 6948.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 8820.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 4045.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 5205.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 2443.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 1892.000000;
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
	reg1 += 2958.000000;
	reg3 += 1484.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 2894.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 4410.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 3165.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 614.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 9942.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 9833.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 504.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 9759.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 8863.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 8341.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 10.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 1832.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 2603.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 158.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 6620.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 8320.000000;
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
	reg0 += 7690.000000;
	reg1 += 9391.000000;
	reg4 += 7667.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 2671.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 2373.000000;
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
	x[totalThreadCount * 14 + globalThreadID] += 6742.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1349.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 186.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 5634.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 3287.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 139.000000;
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
	x[totalThreadCount * 39 + globalThreadID] += 7088.000000;
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
	reg1 += 8257.000000;
	reg2 += 4571.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 2339.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 495.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 8972.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 7542.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 356.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2741.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 757.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 7661.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 8860.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 634.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 5883.000000;
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
	reg1 += 4641.000000;
	reg2 += 2111.000000;
	reg4 += 6260.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9955.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 1089.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 5767.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 4511.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 7096.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 5367.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 9260.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 6906.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 7806.000000;
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
	reg1 += 210.000000;
	reg4 += 3193.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 3860.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 7946.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 4401.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 1394.000000;
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
	x[totalThreadCount * 21 + globalThreadID] += 2784.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 6251.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 3790.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 7290.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 7651.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 8589.000000;
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
	reg0 += 3202.000000;
	reg1 += 6784.000000;
	reg2 += 2842.000000;
	reg4 += 5189.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 3921.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9958.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 4500.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 3033.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 28.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 3333.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1152.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 4794.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 8050.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 5436.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 7753.000000;
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
	reg0 += 3190.000000;
	reg1 += 8996.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 8946.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 606.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 4524.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 3168.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 4346.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 6552.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 5433.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 90.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 9479.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 358.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 8969.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 8355.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 4994.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 1312.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 7386.000000;
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
	reg0 += 5820.000000;
	reg2 += 5528.000000;
	reg4 += 7490.000000;

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
	x[totalThreadCount * 9 + globalThreadID] += 7643.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2393.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 6815.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2641.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 528.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 6582.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 7722.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 9126.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 4310.000000;
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
	reg2 += 8967.000000;
	reg3 += 192.000000;
	reg4 += 902.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 3933.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 3174.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 9718.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 3141.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 5474.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 7719.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2723.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 3010.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 4220.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 9559.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 7583.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 1183.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 30.000000;
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
	reg0 += 83.000000;
	reg1 += 9492.000000;
	reg2 += 6496.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 5625.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 8484.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1931.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 9873.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 164.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 8427.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 3165.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8752.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 7543.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 6505.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 4680.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 2251.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 3768.000000;
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
	reg0 += 6629.000000;
	reg3 += 6366.000000;
	reg4 += 7395.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 7776.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 5026.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 7565.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 763.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 9810.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 775.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 5361.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 7984.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 5981.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 8826.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 1382.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 1062.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 2686.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 6508.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 9853.000000;
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
	reg1 += 8094.000000;
	reg3 += 8644.000000;
	reg4 += 9545.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 2869.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 292.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 1087.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 6157.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 8014.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 1417.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 754.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 5139.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 4492.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 6956.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 8482.000000;
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
	reg0 += 4826.000000;
	reg2 += 7127.000000;
	reg4 += 5169.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 1862.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 2173.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 2798.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 9563.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 3660.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 5382.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 7035.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 4209.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 1638.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 1929.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 4887.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 2267.000000;
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
	reg0 -= 9383.000000;
	reg1 -= 886.000000;
	reg2 -= 2777.000000;
	reg3 -= 6915.000000;
	reg4 -= 7793.000000;

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
	reg0 -= 8335.000000;
	reg1 -= 5386.000000;
	reg2 -= 492.000000;
	reg3 -= 6649.000000;
	reg4 -= 1421.000000;

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
	reg0 -= 2362.000000;
	reg1 -= 27.000000;
	reg2 -= 8690.000000;
	reg3 -= 59.000000;
	reg4 -= 7763.000000;

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
	reg0 -= 3926.000000;
	reg1 -= 540.000000;
	reg2 -= 3426.000000;
	reg3 -= 9172.000000;
	reg4 -= 5736.000000;

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
	reg0 -= 5211.000000;
	reg1 -= 5368.000000;
	reg2 -= 2567.000000;
	reg3 -= 6429.000000;
	reg4 -= 5782.000000;

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
	reg0 -= 1530.000000;
	reg1 -= 2862.000000;
	reg2 -= 5123.000000;
	reg3 -= 4067.000000;
	reg4 -= 3135.000000;

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
	reg0 -= 3929.000000;
	reg1 -= 9802.000000;
	reg2 -= 4022.000000;
	reg3 -= 3058.000000;
	reg4 -= 3069.000000;

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
	reg4 -= 428.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 4500.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 6127.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 5629.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 5343.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 5238.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 8390.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 4232.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 8023.000000;
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
	x[totalThreadCount * 2 + globalThreadID] -= 2325.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 1852.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 5154.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 5266.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 8954.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 308.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6127.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 4693.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 8159.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 6506.000000;
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
	reg1 -= 967.000000;
	reg2 -= 6763.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 8270.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 4234.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 9211.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 6059.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 4047.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 5082.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 2954.000000;
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
	reg1 -= 589.000000;
	reg2 -= 9876.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9878.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 1467.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 5250.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 6977.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 6257.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1238.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 4684.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 7265.000000;
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
	reg4 -= 7857.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 6892.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 595.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7685.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 5720.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 415.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2587.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 9296.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 5404.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 4266.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 1476.000000;
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
	x[totalThreadCount * 2 + globalThreadID] -= 9668.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7372.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6466.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 4599.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 6887.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 3348.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 6342.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 1255.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 2336.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 7445.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 9301.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 9904.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 3940.000000;
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
	x[totalThreadCount * 0 + globalThreadID] -= 871.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 7361.000000;
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
	x[totalThreadCount * 11 + globalThreadID] -= 1638.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 9875.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 3069.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 4393.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 2326.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 9300.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 2538.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 4465.000000;
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
	reg2 -= 9631.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 2659.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 3286.000000;
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
	x[totalThreadCount * 23 + globalThreadID] -= 6289.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 3133.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 1956.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 50.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 6833.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 9954.000000;
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
	reg3 -= 3941.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 6628.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 6465.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 3162.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 2854.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 5464.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 8500.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 6487.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 3072.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 9683.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 8738.000000;
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
	reg1 -= 2623.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 1287.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 114.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 5523.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 596.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2140.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 936.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 2957.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 2349.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 6067.000000;
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
	reg1 -= 3059.000000;
	reg2 -= 8518.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 9438.000000;
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
	x[totalThreadCount * 15 + globalThreadID] -= 478.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 4471.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 1100.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 1521.000000;
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
	x[totalThreadCount * 33 + globalThreadID] -= 8794.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 1388.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 1839.000000;
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
	reg3 -= 1472.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 2334.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 5097.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7914.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 8498.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 1086.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 5185.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 2553.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 8329.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 7892.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 5879.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 6560.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 2035.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 6797.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 5159.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 5325.000000;
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
	reg2 -= 6226.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 280.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 8031.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 6715.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 8270.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 97.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 4683.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 9503.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 2871.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 8927.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 8624.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 3317.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 8097.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 8440.000000;
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
	reg0 -= 2302.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 2014.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 260.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1662.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7682.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 1187.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 3007.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 3495.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 8313.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8726.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 7699.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 6335.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 659.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 8628.000000;
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
	reg1 -= 2618.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 3555.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 4538.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 8365.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 3275.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 4818.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 4428.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 8776.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 4914.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 6840.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 5928.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 8858.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 688.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 9917.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 4443.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 9841.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 1237.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 1474.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 7034.000000;
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
	reg0 -= 7743.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 9355.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 5644.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 8139.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 9299.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 7605.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 8522.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2600.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 3416.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 7637.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 3622.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 9320.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 6348.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 5661.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 3311.000000;
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
	reg0 -= 4030.000000;
	reg3 -= 6593.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 8571.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 9485.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 4713.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 9250.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 5710.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 6851.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 6836.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 2195.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 346.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 4018.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 925.000000;
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
	reg2 -= 8324.000000;
	reg4 -= 4154.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 3959.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 2806.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 6787.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 7457.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 5334.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 6539.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 3378.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 5053.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 4653.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 1338.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 1281.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 7084.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 4010.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 8067.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 8224.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 8701.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 1052.000000;
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
	reg3 -= 8437.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 6312.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 6709.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 7069.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 3333.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 5186.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 1171.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 6513.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 5676.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 3050.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 6141.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 3566.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 1743.000000;
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
	reg1 -= 732.000000;
	reg4 -= 2000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 5139.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 7470.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 5743.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 3320.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 1485.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1983.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 34.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 5190.000000;
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
	x[totalThreadCount * 37 + globalThreadID] -= 550.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 9807.000000;
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
	reg2 -= 6095.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 6688.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 7208.000000;
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
	x[totalThreadCount * 18 + globalThreadID] -= 3682.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 2949.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 9277.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 7549.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 4114.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 1502.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 9242.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 4416.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 2297.000000;
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
	reg3 -= 8042.000000;
	reg4 -= 7373.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 4919.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 925.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 846.000000;
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
	x[totalThreadCount * 15 + globalThreadID] -= 3526.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 7276.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2651.000000;
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
	x[totalThreadCount * 32 + globalThreadID] -= 8315.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 3367.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 3895.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 1313.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 336.000000;
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
	reg0 -= 6228.000000;
	reg1 -= 9150.000000;
	reg4 -= 9224.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 7269.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 9299.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9336.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7621.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 2298.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 2590.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 613.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 5385.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 379.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 4259.000000;
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
	x[totalThreadCount * 38 + globalThreadID] -= 8581.000000;
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
	reg1 -= 537.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 5379.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 4176.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 2805.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 1081.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 3516.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 2231.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 2338.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 5105.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 9021.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 3589.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 1805.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 6982.000000;
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
	x[totalThreadCount * 35 + globalThreadID] -= 127.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 9759.000000;
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
	reg1 -= 6353.000000;
	reg2 -= 5269.000000;
	reg3 -= 5404.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1522.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 9664.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 4315.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6911.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 3403.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 7107.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 6837.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 3378.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 6948.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 8820.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 4045.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 5205.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 2443.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 1892.000000;
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
	reg1 -= 2958.000000;
	reg3 -= 1484.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 2894.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 4410.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 3165.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 614.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 9942.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 9833.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 504.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 9759.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 8863.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 8341.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 10.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 1832.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 2603.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 158.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 6620.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 8320.000000;
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
	reg0 -= 7690.000000;
	reg1 -= 9391.000000;
	reg4 -= 7667.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 2671.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 2373.000000;
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
	x[totalThreadCount * 14 + globalThreadID] -= 6742.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1349.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 186.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 5634.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 3287.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 139.000000;
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
	x[totalThreadCount * 39 + globalThreadID] -= 7088.000000;
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
	reg1 -= 8257.000000;
	reg2 -= 4571.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 2339.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 495.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 8972.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 7542.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 356.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2741.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 757.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 7661.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 8860.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 634.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 5883.000000;
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
	reg1 -= 4641.000000;
	reg2 -= 2111.000000;
	reg4 -= 6260.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9955.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 1089.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 5767.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 4511.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 7096.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 5367.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 9260.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 6906.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 7806.000000;
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
	reg1 -= 210.000000;
	reg4 -= 3193.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 3860.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 7946.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 4401.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 1394.000000;
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
	x[totalThreadCount * 21 + globalThreadID] -= 2784.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 6251.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 3790.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 7290.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 7651.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 8589.000000;
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
	reg0 -= 3202.000000;
	reg1 -= 6784.000000;
	reg2 -= 2842.000000;
	reg4 -= 5189.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 3921.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9958.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 4500.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 3033.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 28.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 3333.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1152.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 4794.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 8050.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 5436.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 7753.000000;
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
	reg0 -= 3190.000000;
	reg1 -= 8996.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 8946.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 606.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 4524.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 3168.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 4346.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 6552.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 5433.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 90.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 9479.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 358.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 8969.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 8355.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 4994.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 1312.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 7386.000000;
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
	reg0 -= 5820.000000;
	reg2 -= 5528.000000;
	reg4 -= 7490.000000;

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
	x[totalThreadCount * 9 + globalThreadID] -= 7643.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2393.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 6815.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2641.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 528.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 6582.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 7722.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 9126.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 4310.000000;
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
	reg2 -= 8967.000000;
	reg3 -= 192.000000;
	reg4 -= 902.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 3933.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 3174.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 9718.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 3141.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 5474.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 7719.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2723.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 3010.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 4220.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 9559.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 7583.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 1183.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 30.000000;
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
	reg0 -= 83.000000;
	reg1 -= 9492.000000;
	reg2 -= 6496.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 5625.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 8484.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1931.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 9873.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 164.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 8427.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 3165.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8752.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 7543.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 6505.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 4680.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 2251.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 3768.000000;
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
	reg0 -= 6629.000000;
	reg3 -= 6366.000000;
	reg4 -= 7395.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 7776.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 5026.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 7565.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 763.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 9810.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 775.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 5361.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 7984.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 5981.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 8826.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 1382.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 1062.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 2686.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 6508.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 9853.000000;
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
	reg1 -= 8094.000000;
	reg3 -= 8644.000000;
	reg4 -= 9545.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 2869.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 292.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 1087.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 6157.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 8014.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 1417.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 754.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 5139.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 4492.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 6956.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 8482.000000;
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
	reg0 -= 4826.000000;
	reg2 -= 7127.000000;
	reg4 -= 5169.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 1862.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 2173.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 2798.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 9563.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 3660.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 5382.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 7035.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 4209.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 1638.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 1929.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 4887.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 2267.000000;
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

	C reg0 = -38383.500000;
	C reg1 = -55161.000000;
	C reg2 = -55593.500000;
	C reg3 = -43462.000000;
	C reg4 = -54103.500000;

	x[totalThreadCount * 0 + globalThreadID] = -16213.500000;
	x[totalThreadCount * 1 + globalThreadID] = -25791.500000;
	x[totalThreadCount * 2 + globalThreadID] = -36921.500000;
	x[totalThreadCount * 3 + globalThreadID] = -10633.500000;
	x[totalThreadCount * 4 + globalThreadID] = -29788.500000;
	x[totalThreadCount * 5 + globalThreadID] = -20156.500000;
	x[totalThreadCount * 6 + globalThreadID] = -33113.000000;
	x[totalThreadCount * 7 + globalThreadID] = -22348.000000;
	x[totalThreadCount * 8 + globalThreadID] = -34183.000000;
	x[totalThreadCount * 9 + globalThreadID] = -18615.500000;
	x[totalThreadCount * 10 + globalThreadID] = -26902.500000;
	x[totalThreadCount * 11 + globalThreadID] = -42602.000000;
	x[totalThreadCount * 12 + globalThreadID] = -12723.000000;
	x[totalThreadCount * 13 + globalThreadID] = -25118.000000;
	x[totalThreadCount * 14 + globalThreadID] = -26698.500000;
	x[totalThreadCount * 15 + globalThreadID] = -18879.500000;
	x[totalThreadCount * 16 + globalThreadID] = -27790.000000;
	x[totalThreadCount * 17 + globalThreadID] = -23722.000000;
	x[totalThreadCount * 18 + globalThreadID] = -16605.000000;
	x[totalThreadCount * 19 + globalThreadID] = -20082.000000;
	x[totalThreadCount * 20 + globalThreadID] = -23755.000000;
	x[totalThreadCount * 21 + globalThreadID] = -38310.500000;
	x[totalThreadCount * 22 + globalThreadID] = -35566.000000;
	x[totalThreadCount * 23 + globalThreadID] = -33543.500000;
	x[totalThreadCount * 24 + globalThreadID] = -28966.500000;
	x[totalThreadCount * 25 + globalThreadID] = -33665.000000;
	x[totalThreadCount * 26 + globalThreadID] = -20823.500000;
	x[totalThreadCount * 27 + globalThreadID] = -13011.500000;
	x[totalThreadCount * 28 + globalThreadID] = -23836.000000;
	x[totalThreadCount * 29 + globalThreadID] = -21084.500000;
	x[totalThreadCount * 30 + globalThreadID] = -29437.000000;
	x[totalThreadCount * 31 + globalThreadID] = -37017.000000;
	x[totalThreadCount * 32 + globalThreadID] = -30574.500000;
	x[totalThreadCount * 33 + globalThreadID] = -43536.000000;
	x[totalThreadCount * 34 + globalThreadID] = -24221.500000;
	x[totalThreadCount * 35 + globalThreadID] = -25987.000000;
	x[totalThreadCount * 36 + globalThreadID] = -22089.000000;
	x[totalThreadCount * 37 + globalThreadID] = -18961.000000;
	x[totalThreadCount * 38 + globalThreadID] = -25328.000000;
	x[totalThreadCount * 39 + globalThreadID] = -21616.500000;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 9383.000000;
		reg1 += 886.000000;
		reg2 += 2777.000000;
		reg3 += 6915.000000;
		reg4 += 7793.000000;
	}
	if ((gray >> 1) & 1LL)
	{
		reg0 += 8335.000000;
		reg1 += 5386.000000;
		reg2 += 492.000000;
		reg3 += 6649.000000;
		reg4 += 1421.000000;
	}
	if ((gray >> 2) & 1LL)
	{
		reg0 += 2362.000000;
		reg1 += 27.000000;
		reg2 += 8690.000000;
		reg3 += 59.000000;
		reg4 += 7763.000000;
	}
	if ((gray >> 3) & 1LL)
	{
		reg0 += 3926.000000;
		reg1 += 540.000000;
		reg2 += 3426.000000;
		reg3 += 9172.000000;
		reg4 += 5736.000000;
	}
	if ((gray >> 4) & 1LL)
	{
		reg0 += 5211.000000;
		reg1 += 5368.000000;
		reg2 += 2567.000000;
		reg3 += 6429.000000;
		reg4 += 5782.000000;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 1530.000000;
		reg1 += 2862.000000;
		reg2 += 5123.000000;
		reg3 += 4067.000000;
		reg4 += 3135.000000;
	}
	if ((gray >> 6) & 1LL)
	{
		reg0 += 3929.000000;
		reg1 += 9802.000000;
		reg2 += 4022.000000;
		reg3 += 3058.000000;
		reg4 += 3069.000000;
	}
	if ((gray >> 7) & 1LL)
	{
		reg4 += 428.000000;
		x[totalThreadCount * 0 + globalThreadID] += 4500.000000;
		x[totalThreadCount * 1 + globalThreadID] += 6127.000000;
		x[totalThreadCount * 2 + globalThreadID] += 5629.000000;
		x[totalThreadCount * 3 + globalThreadID] += 5343.000000;
		x[totalThreadCount * 4 + globalThreadID] += 5238.000000;
		x[totalThreadCount * 5 + globalThreadID] += 8390.000000;
		x[totalThreadCount * 6 + globalThreadID] += 4232.000000;
		x[totalThreadCount * 7 + globalThreadID] += 8023.000000;
	}
	if ((gray >> 8) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 2325.000000;
		x[totalThreadCount * 5 + globalThreadID] += 1852.000000;
		x[totalThreadCount * 6 + globalThreadID] += 5154.000000;
		x[totalThreadCount * 8 + globalThreadID] += 5266.000000;
		x[totalThreadCount * 9 + globalThreadID] += 8954.000000;
		x[totalThreadCount * 10 + globalThreadID] += 308.000000;
		x[totalThreadCount * 11 + globalThreadID] += 6127.000000;
		x[totalThreadCount * 12 + globalThreadID] += 4693.000000;
		x[totalThreadCount * 13 + globalThreadID] += 8159.000000;
		x[totalThreadCount * 14 + globalThreadID] += 6506.000000;
	}
	if ((gray >> 9) & 1LL)
	{
		reg1 += 967.000000;
		reg2 += 6763.000000;
		x[totalThreadCount * 2 + globalThreadID] += 8270.000000;
		x[totalThreadCount * 11 + globalThreadID] += 4234.000000;
		x[totalThreadCount * 15 + globalThreadID] += 9211.000000;
		x[totalThreadCount * 16 + globalThreadID] += 6059.000000;
		x[totalThreadCount * 17 + globalThreadID] += 4047.000000;
		x[totalThreadCount * 18 + globalThreadID] += 5082.000000;
		x[totalThreadCount * 19 + globalThreadID] += 2954.000000;
	}
	if ((gray >> 10) & 1LL)
	{
		reg1 += 589.000000;
		reg2 += 9876.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9878.000000;
		x[totalThreadCount * 7 + globalThreadID] += 1467.000000;
		x[totalThreadCount * 12 + globalThreadID] += 5250.000000;
		x[totalThreadCount * 17 + globalThreadID] += 6977.000000;
		x[totalThreadCount * 18 + globalThreadID] += 6257.000000;
		x[totalThreadCount * 20 + globalThreadID] += 1238.000000;
		x[totalThreadCount * 21 + globalThreadID] += 4684.000000;
		x[totalThreadCount * 22 + globalThreadID] += 7265.000000;
	}
	if ((gray >> 11) & 1LL)
	{
		reg4 += 7857.000000;
		x[totalThreadCount * 1 + globalThreadID] += 6892.000000;
		x[totalThreadCount * 4 + globalThreadID] += 595.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7685.000000;
		x[totalThreadCount * 10 + globalThreadID] += 5720.000000;
		x[totalThreadCount * 12 + globalThreadID] += 415.000000;
		x[totalThreadCount * 17 + globalThreadID] += 2587.000000;
		x[totalThreadCount * 20 + globalThreadID] += 9296.000000;
		x[totalThreadCount * 21 + globalThreadID] += 5404.000000;
		x[totalThreadCount * 23 + globalThreadID] += 4266.000000;
		x[totalThreadCount * 24 + globalThreadID] += 1476.000000;
	}
	if ((gray >> 12) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 9668.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7372.000000;
		x[totalThreadCount * 11 + globalThreadID] += 6466.000000;
		x[totalThreadCount * 14 + globalThreadID] += 4599.000000;
		x[totalThreadCount * 16 + globalThreadID] += 6887.000000;
		x[totalThreadCount * 17 + globalThreadID] += 3348.000000;
		x[totalThreadCount * 19 + globalThreadID] += 6342.000000;
		x[totalThreadCount * 22 + globalThreadID] += 1255.000000;
		x[totalThreadCount * 23 + globalThreadID] += 2336.000000;
		x[totalThreadCount * 25 + globalThreadID] += 7445.000000;
		x[totalThreadCount * 26 + globalThreadID] += 9301.000000;
		x[totalThreadCount * 27 + globalThreadID] += 9904.000000;
		x[totalThreadCount * 28 + globalThreadID] += 3940.000000;
	}
	if ((gray >> 13) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += 871.000000;
		x[totalThreadCount * 1 + globalThreadID] += 7361.000000;
		x[totalThreadCount * 11 + globalThreadID] += 1638.000000;
		x[totalThreadCount * 13 + globalThreadID] += 9875.000000;
		x[totalThreadCount * 21 + globalThreadID] += 3069.000000;
		x[totalThreadCount * 24 + globalThreadID] += 4393.000000;
		x[totalThreadCount * 26 + globalThreadID] += 2326.000000;
		x[totalThreadCount * 29 + globalThreadID] += 9300.000000;
		x[totalThreadCount * 30 + globalThreadID] += 2538.000000;
		x[totalThreadCount * 31 + globalThreadID] += 4465.000000;
	}
	if ((gray >> 14) & 1LL)
	{
		reg2 += 9631.000000;
		x[totalThreadCount * 5 + globalThreadID] += 2659.000000;
		x[totalThreadCount * 11 + globalThreadID] += 3286.000000;
		x[totalThreadCount * 23 + globalThreadID] += 6289.000000;
		x[totalThreadCount * 27 + globalThreadID] += 3133.000000;
		x[totalThreadCount * 28 + globalThreadID] += 1956.000000;
		x[totalThreadCount * 30 + globalThreadID] += 50.000000;
		x[totalThreadCount * 32 + globalThreadID] += 6833.000000;
		x[totalThreadCount * 33 + globalThreadID] += 9954.000000;
	}
	if ((gray >> 15) & 1LL)
	{
		reg3 += 3941.000000;
		x[totalThreadCount * 0 + globalThreadID] += 6628.000000;
		x[totalThreadCount * 5 + globalThreadID] += 6465.000000;
		x[totalThreadCount * 9 + globalThreadID] += 3162.000000;
		x[totalThreadCount * 13 + globalThreadID] += 2854.000000;
		x[totalThreadCount * 14 + globalThreadID] += 5464.000000;
		x[totalThreadCount * 20 + globalThreadID] += 8500.000000;
		x[totalThreadCount * 21 + globalThreadID] += 6487.000000;
		x[totalThreadCount * 28 + globalThreadID] += 3072.000000;
		x[totalThreadCount * 31 + globalThreadID] += 9683.000000;
		x[totalThreadCount * 33 + globalThreadID] += 8738.000000;
	}
	if ((gray >> 16) & 1LL)
	{
		reg1 += 2623.000000;
		x[totalThreadCount * 7 + globalThreadID] += 1287.000000;
		x[totalThreadCount * 10 + globalThreadID] += 114.000000;
		x[totalThreadCount * 13 + globalThreadID] += 5523.000000;
		x[totalThreadCount * 15 + globalThreadID] += 596.000000;
		x[totalThreadCount * 17 + globalThreadID] += 2140.000000;
		x[totalThreadCount * 26 + globalThreadID] += 936.000000;
		x[totalThreadCount * 27 + globalThreadID] += 2957.000000;
		x[totalThreadCount * 33 + globalThreadID] += 2349.000000;
		x[totalThreadCount * 34 + globalThreadID] += 6067.000000;
	}
	if ((gray >> 17) & 1LL)
	{
		reg1 += 3059.000000;
		reg2 += 8518.000000;
		x[totalThreadCount * 2 + globalThreadID] += 9438.000000;
		x[totalThreadCount * 15 + globalThreadID] += 478.000000;
		x[totalThreadCount * 20 + globalThreadID] += 4471.000000;
		x[totalThreadCount * 21 + globalThreadID] += 1100.000000;
		x[totalThreadCount * 22 + globalThreadID] += 1521.000000;
		x[totalThreadCount * 33 + globalThreadID] += 8794.000000;
		x[totalThreadCount * 34 + globalThreadID] += 1388.000000;
		x[totalThreadCount * 35 + globalThreadID] += 1839.000000;
	}
	if ((gray >> 18) & 1LL)
	{
		reg3 += 1472.000000;
		x[totalThreadCount * 4 + globalThreadID] += 2334.000000;
		x[totalThreadCount * 5 + globalThreadID] += 5097.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7914.000000;
		x[totalThreadCount * 11 + globalThreadID] += 8498.000000;
		x[totalThreadCount * 15 + globalThreadID] += 1086.000000;
		x[totalThreadCount * 17 + globalThreadID] += 5185.000000;
		x[totalThreadCount * 21 + globalThreadID] += 2553.000000;
		x[totalThreadCount * 23 + globalThreadID] += 8329.000000;
		x[totalThreadCount * 24 + globalThreadID] += 7892.000000;
		x[totalThreadCount * 31 + globalThreadID] += 5879.000000;
		x[totalThreadCount * 33 + globalThreadID] += 6560.000000;
		x[totalThreadCount * 34 + globalThreadID] += 2035.000000;
		x[totalThreadCount * 35 + globalThreadID] += 6797.000000;
		x[totalThreadCount * 36 + globalThreadID] += 5159.000000;
		x[totalThreadCount * 37 + globalThreadID] += 5325.000000;
	}
	if ((gray >> 19) & 1LL)
	{
		reg2 += 6226.000000;
		x[totalThreadCount * 2 + globalThreadID] += 280.000000;
		x[totalThreadCount * 4 + globalThreadID] += 8031.000000;
		x[totalThreadCount * 7 + globalThreadID] += 6715.000000;
		x[totalThreadCount * 14 + globalThreadID] += 8270.000000;
		x[totalThreadCount * 15 + globalThreadID] += 97.000000;
		x[totalThreadCount * 19 + globalThreadID] += 4683.000000;
		x[totalThreadCount * 22 + globalThreadID] += 9503.000000;
		x[totalThreadCount * 26 + globalThreadID] += 2871.000000;
		x[totalThreadCount * 30 + globalThreadID] += 8927.000000;
		x[totalThreadCount * 31 + globalThreadID] += 8624.000000;
		x[totalThreadCount * 36 + globalThreadID] += 3317.000000;
		x[totalThreadCount * 37 + globalThreadID] += 8097.000000;
		x[totalThreadCount * 38 + globalThreadID] += 8440.000000;
	}
	if ((gray >> 20) & 1LL)
	{
		reg0 += 2302.000000;
		x[totalThreadCount * 0 + globalThreadID] += 2014.000000;
		x[totalThreadCount * 2 + globalThreadID] += 260.000000;
		x[totalThreadCount * 4 + globalThreadID] += 1662.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7682.000000;
		x[totalThreadCount * 7 + globalThreadID] += 1187.000000;
		x[totalThreadCount * 12 + globalThreadID] += 3007.000000;
		x[totalThreadCount * 20 + globalThreadID] += 3495.000000;
		x[totalThreadCount * 21 + globalThreadID] += 8313.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8726.000000;
		x[totalThreadCount * 30 + globalThreadID] += 7699.000000;
		x[totalThreadCount * 34 + globalThreadID] += 6335.000000;
		x[totalThreadCount * 36 + globalThreadID] += 659.000000;
		x[totalThreadCount * 37 + globalThreadID] += 8628.000000;
	}
	if ((gray >> 21) & 1LL)
	{
		reg1 += 2618.000000;
		x[totalThreadCount * 0 + globalThreadID] += 3555.000000;
		x[totalThreadCount * 6 + globalThreadID] += 4538.000000;
		x[totalThreadCount * 11 + globalThreadID] += 8365.000000;
		x[totalThreadCount * 13 + globalThreadID] += 3275.000000;
		x[totalThreadCount * 14 + globalThreadID] += 4818.000000;
		x[totalThreadCount * 18 + globalThreadID] += 4428.000000;
		x[totalThreadCount * 19 + globalThreadID] += 8776.000000;
		x[totalThreadCount * 21 + globalThreadID] += 4914.000000;
		x[totalThreadCount * 22 + globalThreadID] += 6840.000000;
		x[totalThreadCount * 23 + globalThreadID] += 5928.000000;
		x[totalThreadCount * 25 + globalThreadID] += 8858.000000;
		x[totalThreadCount * 27 + globalThreadID] += 688.000000;
		x[totalThreadCount * 28 + globalThreadID] += 9917.000000;
		x[totalThreadCount * 31 + globalThreadID] += 4443.000000;
		x[totalThreadCount * 32 + globalThreadID] += 9841.000000;
		x[totalThreadCount * 33 + globalThreadID] += 1237.000000;
		x[totalThreadCount * 35 + globalThreadID] += 1474.000000;
		x[totalThreadCount * 36 + globalThreadID] += 7034.000000;
	}
	if ((gray >> 22) & 1LL)
	{
		reg0 += 7743.000000;
		x[totalThreadCount * 2 + globalThreadID] += 9355.000000;
		x[totalThreadCount * 8 + globalThreadID] += 5644.000000;
		x[totalThreadCount * 10 + globalThreadID] += 8139.000000;
		x[totalThreadCount * 11 + globalThreadID] += 9299.000000;
		x[totalThreadCount * 13 + globalThreadID] += 7605.000000;
		x[totalThreadCount * 18 + globalThreadID] += 8522.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2600.000000;
		x[totalThreadCount * 23 + globalThreadID] += 3416.000000;
		x[totalThreadCount * 26 + globalThreadID] += 7637.000000;
		x[totalThreadCount * 29 + globalThreadID] += 3622.000000;
		x[totalThreadCount * 33 + globalThreadID] += 9320.000000;
		x[totalThreadCount * 34 + globalThreadID] += 6348.000000;
		x[totalThreadCount * 35 + globalThreadID] += 5661.000000;
		x[totalThreadCount * 37 + globalThreadID] += 3311.000000;
	}
	if ((gray >> 23) & 1LL)
	{
		reg0 += 4030.000000;
		reg3 += 6593.000000;
		x[totalThreadCount * 5 + globalThreadID] += 8571.000000;
		x[totalThreadCount * 7 + globalThreadID] += 9485.000000;
		x[totalThreadCount * 10 + globalThreadID] += 4713.000000;
		x[totalThreadCount * 14 + globalThreadID] += 9250.000000;
		x[totalThreadCount * 21 + globalThreadID] += 5710.000000;
		x[totalThreadCount * 22 + globalThreadID] += 6851.000000;
		x[totalThreadCount * 25 + globalThreadID] += 6836.000000;
		x[totalThreadCount * 28 + globalThreadID] += 2195.000000;
		x[totalThreadCount * 34 + globalThreadID] += 346.000000;
		x[totalThreadCount * 35 + globalThreadID] += 4018.000000;
		x[totalThreadCount * 37 + globalThreadID] += 925.000000;
	}
	if ((gray >> 24) & 1LL)
	{
		reg2 += 8324.000000;
		reg4 += 4154.000000;
		x[totalThreadCount * 1 + globalThreadID] += 3959.000000;
		x[totalThreadCount * 2 + globalThreadID] += 2806.000000;
		x[totalThreadCount * 6 + globalThreadID] += 6787.000000;
		x[totalThreadCount * 8 + globalThreadID] += 7457.000000;
		x[totalThreadCount * 11 + globalThreadID] += 5334.000000;
		x[totalThreadCount * 16 + globalThreadID] += 6539.000000;
		x[totalThreadCount * 17 + globalThreadID] += 3378.000000;
		x[totalThreadCount * 18 + globalThreadID] += 5053.000000;
		x[totalThreadCount * 20 + globalThreadID] += 4653.000000;
		x[totalThreadCount * 23 + globalThreadID] += 1338.000000;
		x[totalThreadCount * 27 + globalThreadID] += 1281.000000;
		x[totalThreadCount * 29 + globalThreadID] += 7084.000000;
		x[totalThreadCount * 30 + globalThreadID] += 4010.000000;
		x[totalThreadCount * 31 + globalThreadID] += 8067.000000;
		x[totalThreadCount * 33 + globalThreadID] += 8224.000000;
		x[totalThreadCount * 36 + globalThreadID] += 8701.000000;
		x[totalThreadCount * 37 + globalThreadID] += 1052.000000;
	}
	if ((gray >> 25) & 1LL)
	{
		reg3 += 8437.000000;
		x[totalThreadCount * 8 + globalThreadID] += 6312.000000;
		x[totalThreadCount * 10 + globalThreadID] += 6709.000000;
		x[totalThreadCount * 15 + globalThreadID] += 7069.000000;
		x[totalThreadCount * 16 + globalThreadID] += 3333.000000;
		x[totalThreadCount * 17 + globalThreadID] += 5186.000000;
		x[totalThreadCount * 21 + globalThreadID] += 1171.000000;
		x[totalThreadCount * 24 + globalThreadID] += 6513.000000;
		x[totalThreadCount * 29 + globalThreadID] += 5676.000000;
		x[totalThreadCount * 30 + globalThreadID] += 3050.000000;
		x[totalThreadCount * 31 + globalThreadID] += 6141.000000;
		x[totalThreadCount * 35 + globalThreadID] += 3566.000000;
		x[totalThreadCount * 38 + globalThreadID] += 1743.000000;
	}
	if ((gray >> 26) & 1LL)
	{
		reg1 += 732.000000;
		reg4 += 2000.000000;
		x[totalThreadCount * 1 + globalThreadID] += 5139.000000;
		x[totalThreadCount * 2 + globalThreadID] += 7470.000000;
		x[totalThreadCount * 4 + globalThreadID] += 5743.000000;
		x[totalThreadCount * 6 + globalThreadID] += 3320.000000;
		x[totalThreadCount * 13 + globalThreadID] += 1485.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1983.000000;
		x[totalThreadCount * 24 + globalThreadID] += 34.000000;
		x[totalThreadCount * 25 + globalThreadID] += 5190.000000;
		x[totalThreadCount * 37 + globalThreadID] += 550.000000;
		x[totalThreadCount * 39 + globalThreadID] += 9807.000000;
	}
	if ((gray >> 27) & 1LL)
	{
		reg2 += 6095.000000;
		x[totalThreadCount * 4 + globalThreadID] += 6688.000000;
		x[totalThreadCount * 8 + globalThreadID] += 7208.000000;
		x[totalThreadCount * 18 + globalThreadID] += 3682.000000;
		x[totalThreadCount * 19 + globalThreadID] += 2949.000000;
		x[totalThreadCount * 23 + globalThreadID] += 9277.000000;
		x[totalThreadCount * 24 + globalThreadID] += 7549.000000;
		x[totalThreadCount * 25 + globalThreadID] += 4114.000000;
		x[totalThreadCount * 28 + globalThreadID] += 1502.000000;
		x[totalThreadCount * 32 + globalThreadID] += 9242.000000;
		x[totalThreadCount * 33 + globalThreadID] += 4416.000000;
		x[totalThreadCount * 38 + globalThreadID] += 2297.000000;
	}
	if ((gray >> 28) & 1LL)
	{
		reg3 += 8042.000000;
		reg4 += 7373.000000;
		x[totalThreadCount * 0 + globalThreadID] += 4919.000000;
		x[totalThreadCount * 3 + globalThreadID] += 925.000000;
		x[totalThreadCount * 4 + globalThreadID] += 846.000000;
		x[totalThreadCount * 15 + globalThreadID] += 3526.000000;
		x[totalThreadCount * 19 + globalThreadID] += 7276.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2651.000000;
		x[totalThreadCount * 32 + globalThreadID] += 8315.000000;
		x[totalThreadCount * 33 + globalThreadID] += 3367.000000;
		x[totalThreadCount * 35 + globalThreadID] += 3895.000000;
		x[totalThreadCount * 37 + globalThreadID] += 1313.000000;
		x[totalThreadCount * 38 + globalThreadID] += 336.000000;
	}
	if ((gray >> 29) & 1LL)
	{
		reg0 += 6228.000000;
		reg1 += 9150.000000;
		reg4 += 9224.000000;
		x[totalThreadCount * 0 + globalThreadID] += 7269.000000;
		x[totalThreadCount * 1 + globalThreadID] += 9299.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9336.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7621.000000;
		x[totalThreadCount * 11 + globalThreadID] += 2298.000000;
		x[totalThreadCount * 12 + globalThreadID] += 2590.000000;
		x[totalThreadCount * 14 + globalThreadID] += 613.000000;
		x[totalThreadCount * 21 + globalThreadID] += 5385.000000;
		x[totalThreadCount * 25 + globalThreadID] += 379.000000;
		x[totalThreadCount * 28 + globalThreadID] += 4259.000000;
		x[totalThreadCount * 38 + globalThreadID] += 8581.000000;
	}
	if ((gray >> 30) & 1LL)
	{
		reg1 += 537.000000;
		x[totalThreadCount * 2 + globalThreadID] += 5379.000000;
		x[totalThreadCount * 3 + globalThreadID] += 4176.000000;
		x[totalThreadCount * 7 + globalThreadID] += 2805.000000;
		x[totalThreadCount * 8 + globalThreadID] += 1081.000000;
		x[totalThreadCount * 9 + globalThreadID] += 3516.000000;
		x[totalThreadCount * 10 + globalThreadID] += 2231.000000;
		x[totalThreadCount * 15 + globalThreadID] += 2338.000000;
		x[totalThreadCount * 16 + globalThreadID] += 5105.000000;
		x[totalThreadCount * 20 + globalThreadID] += 9021.000000;
		x[totalThreadCount * 22 + globalThreadID] += 3589.000000;
		x[totalThreadCount * 23 + globalThreadID] += 1805.000000;
		x[totalThreadCount * 24 + globalThreadID] += 6982.000000;
		x[totalThreadCount * 35 + globalThreadID] += 127.000000;
		x[totalThreadCount * 38 + globalThreadID] += 9759.000000;
	}
	if ((gray >> 31) & 1LL)
	{
		reg1 += 6353.000000;
		reg2 += 5269.000000;
		reg3 += 5404.000000;
		x[totalThreadCount * 4 + globalThreadID] += 1522.000000;
		x[totalThreadCount * 7 + globalThreadID] += 9664.000000;
		x[totalThreadCount * 9 + globalThreadID] += 4315.000000;
		x[totalThreadCount * 11 + globalThreadID] += 6911.000000;
		x[totalThreadCount * 12 + globalThreadID] += 3403.000000;
		x[totalThreadCount * 14 + globalThreadID] += 7107.000000;
		x[totalThreadCount * 21 + globalThreadID] += 6837.000000;
		x[totalThreadCount * 25 + globalThreadID] += 3378.000000;
		x[totalThreadCount * 26 + globalThreadID] += 6948.000000;
		x[totalThreadCount * 28 + globalThreadID] += 8820.000000;
		x[totalThreadCount * 33 + globalThreadID] += 4045.000000;
		x[totalThreadCount * 34 + globalThreadID] += 5205.000000;
		x[totalThreadCount * 37 + globalThreadID] += 2443.000000;
		x[totalThreadCount * 38 + globalThreadID] += 1892.000000;
	}
	if ((gray >> 32) & 1LL)
	{
		reg1 += 2958.000000;
		reg3 += 1484.000000;
		x[totalThreadCount * 2 + globalThreadID] += 2894.000000;
		x[totalThreadCount * 5 + globalThreadID] += 4410.000000;
		x[totalThreadCount * 7 + globalThreadID] += 3165.000000;
		x[totalThreadCount * 12 + globalThreadID] += 614.000000;
		x[totalThreadCount * 15 + globalThreadID] += 9942.000000;
		x[totalThreadCount * 16 + globalThreadID] += 9833.000000;
		x[totalThreadCount * 20 + globalThreadID] += 504.000000;
		x[totalThreadCount * 21 + globalThreadID] += 9759.000000;
		x[totalThreadCount * 25 + globalThreadID] += 8863.000000;
		x[totalThreadCount * 26 + globalThreadID] += 8341.000000;
		x[totalThreadCount * 27 + globalThreadID] += 10.000000;
		x[totalThreadCount * 30 + globalThreadID] += 1832.000000;
		x[totalThreadCount * 32 + globalThreadID] += 2603.000000;
		x[totalThreadCount * 34 + globalThreadID] += 158.000000;
		x[totalThreadCount * 35 + globalThreadID] += 6620.000000;
		x[totalThreadCount * 39 + globalThreadID] += 8320.000000;
	}
	if ((gray >> 33) & 1LL)
	{
		reg0 += 7690.000000;
		reg1 += 9391.000000;
		reg4 += 7667.000000;
		x[totalThreadCount * 0 + globalThreadID] += 2671.000000;
		x[totalThreadCount * 2 + globalThreadID] += 2373.000000;
		x[totalThreadCount * 14 + globalThreadID] += 6742.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1349.000000;
		x[totalThreadCount * 18 + globalThreadID] += 186.000000;
		x[totalThreadCount * 23 + globalThreadID] += 5634.000000;
		x[totalThreadCount * 26 + globalThreadID] += 3287.000000;
		x[totalThreadCount * 28 + globalThreadID] += 139.000000;
		x[totalThreadCount * 39 + globalThreadID] += 7088.000000;
	}
	if ((gray >> 34) & 1LL)
	{
		reg1 += 8257.000000;
		reg2 += 4571.000000;
		x[totalThreadCount * 3 + globalThreadID] += 2339.000000;
		x[totalThreadCount * 8 + globalThreadID] += 495.000000;
		x[totalThreadCount * 10 + globalThreadID] += 8972.000000;
		x[totalThreadCount * 11 + globalThreadID] += 7542.000000;
		x[totalThreadCount * 15 + globalThreadID] += 356.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2741.000000;
		x[totalThreadCount * 25 + globalThreadID] += 757.000000;
		x[totalThreadCount * 29 + globalThreadID] += 7661.000000;
		x[totalThreadCount * 30 + globalThreadID] += 8860.000000;
		x[totalThreadCount * 32 + globalThreadID] += 634.000000;
		x[totalThreadCount * 34 + globalThreadID] += 5883.000000;
	}
	if ((gray >> 35) & 1LL)
	{
		reg1 += 4641.000000;
		reg2 += 2111.000000;
		reg4 += 6260.000000;
		x[totalThreadCount * 8 + globalThreadID] += 9955.000000;
		x[totalThreadCount * 10 + globalThreadID] += 1089.000000;
		x[totalThreadCount * 19 + globalThreadID] += 5767.000000;
		x[totalThreadCount * 21 + globalThreadID] += 4511.000000;
		x[totalThreadCount * 24 + globalThreadID] += 7096.000000;
		x[totalThreadCount * 28 + globalThreadID] += 5367.000000;
		x[totalThreadCount * 33 + globalThreadID] += 9260.000000;
		x[totalThreadCount * 35 + globalThreadID] += 6906.000000;
		x[totalThreadCount * 36 + globalThreadID] += 7806.000000;
	}
	if ((gray >> 36) & 1LL)
	{
		reg1 += 210.000000;
		reg4 += 3193.000000;
		x[totalThreadCount * 1 + globalThreadID] += 3860.000000;
		x[totalThreadCount * 4 + globalThreadID] += 7946.000000;
		x[totalThreadCount * 8 + globalThreadID] += 4401.000000;
		x[totalThreadCount * 10 + globalThreadID] += 1394.000000;
		x[totalThreadCount * 21 + globalThreadID] += 2784.000000;
		x[totalThreadCount * 23 + globalThreadID] += 6251.000000;
		x[totalThreadCount * 25 + globalThreadID] += 3790.000000;
		x[totalThreadCount * 30 + globalThreadID] += 7290.000000;
		x[totalThreadCount * 31 + globalThreadID] += 7651.000000;
		x[totalThreadCount * 39 + globalThreadID] += 8589.000000;
	}
	if ((gray >> 37) & 1LL)
	{
		reg0 += 3202.000000;
		reg1 += 6784.000000;
		reg2 += 2842.000000;
		reg4 += 5189.000000;
		x[totalThreadCount * 6 + globalThreadID] += 3921.000000;
		x[totalThreadCount * 8 + globalThreadID] += 9958.000000;
		x[totalThreadCount * 11 + globalThreadID] += 4500.000000;
		x[totalThreadCount * 13 + globalThreadID] += 3033.000000;
		x[totalThreadCount * 14 + globalThreadID] += 28.000000;
		x[totalThreadCount * 15 + globalThreadID] += 3333.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1152.000000;
		x[totalThreadCount * 24 + globalThreadID] += 4794.000000;
		x[totalThreadCount * 27 + globalThreadID] += 8050.000000;
		x[totalThreadCount * 31 + globalThreadID] += 5436.000000;
		x[totalThreadCount * 32 + globalThreadID] += 7753.000000;
	}
	if ((gray >> 38) & 1LL)
	{
		reg0 += 3190.000000;
		reg1 += 8996.000000;
		x[totalThreadCount * 1 + globalThreadID] += 8946.000000;
		x[totalThreadCount * 7 + globalThreadID] += 606.000000;
		x[totalThreadCount * 8 + globalThreadID] += 4524.000000;
		x[totalThreadCount * 10 + globalThreadID] += 3168.000000;
		x[totalThreadCount * 15 + globalThreadID] += 4346.000000;
		x[totalThreadCount * 20 + globalThreadID] += 6552.000000;
		x[totalThreadCount * 23 + globalThreadID] += 5433.000000;
		x[totalThreadCount * 25 + globalThreadID] += 90.000000;
		x[totalThreadCount * 30 + globalThreadID] += 9479.000000;
		x[totalThreadCount * 32 + globalThreadID] += 358.000000;
		x[totalThreadCount * 33 + globalThreadID] += 8969.000000;
		x[totalThreadCount * 35 + globalThreadID] += 8355.000000;
		x[totalThreadCount * 36 + globalThreadID] += 4994.000000;
		x[totalThreadCount * 37 + globalThreadID] += 1312.000000;
		x[totalThreadCount * 39 + globalThreadID] += 7386.000000;
	}
	if ((gray >> 39) & 1LL)
	{
		reg0 += 5820.000000;
		reg2 += 5528.000000;
		reg4 += 7490.000000;
		x[totalThreadCount * 9 + globalThreadID] += 7643.000000;
		x[totalThreadCount * 17 + globalThreadID] += 2393.000000;
		x[totalThreadCount * 20 + globalThreadID] += 6815.000000;
		x[totalThreadCount * 24 + globalThreadID] += 2641.000000;
		x[totalThreadCount * 25 + globalThreadID] += 528.000000;
		x[totalThreadCount * 32 + globalThreadID] += 6582.000000;
		x[totalThreadCount * 34 + globalThreadID] += 7722.000000;
		x[totalThreadCount * 38 + globalThreadID] += 9126.000000;
		x[totalThreadCount * 39 + globalThreadID] += 4310.000000;
	}
	if ((gray >> 40) & 1LL)
	{
		reg2 += 8967.000000;
		reg3 += 192.000000;
		reg4 += 902.000000;
		x[totalThreadCount * 2 + globalThreadID] += 3933.000000;
		x[totalThreadCount * 9 + globalThreadID] += 3174.000000;
		x[totalThreadCount * 10 + globalThreadID] += 9718.000000;
		x[totalThreadCount * 11 + globalThreadID] += 3141.000000;
		x[totalThreadCount * 12 + globalThreadID] += 5474.000000;
		x[totalThreadCount * 17 + globalThreadID] += 7719.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2723.000000;
		x[totalThreadCount * 23 + globalThreadID] += 3010.000000;
		x[totalThreadCount * 24 + globalThreadID] += 4220.000000;
		x[totalThreadCount * 25 + globalThreadID] += 9559.000000;
		x[totalThreadCount * 31 + globalThreadID] += 7583.000000;
		x[totalThreadCount * 32 + globalThreadID] += 1183.000000;
		x[totalThreadCount * 35 + globalThreadID] += 30.000000;
	}
	if ((gray >> 41) & 1LL)
	{
		reg0 += 83.000000;
		reg1 += 9492.000000;
		reg2 += 6496.000000;
		x[totalThreadCount * 2 + globalThreadID] += 5625.000000;
		x[totalThreadCount * 3 + globalThreadID] += 8484.000000;
		x[totalThreadCount * 4 + globalThreadID] += 1931.000000;
		x[totalThreadCount * 9 + globalThreadID] += 9873.000000;
		x[totalThreadCount * 10 + globalThreadID] += 164.000000;
		x[totalThreadCount * 13 + globalThreadID] += 8427.000000;
		x[totalThreadCount * 21 + globalThreadID] += 3165.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8752.000000;
		x[totalThreadCount * 25 + globalThreadID] += 7543.000000;
		x[totalThreadCount * 28 + globalThreadID] += 6505.000000;
		x[totalThreadCount * 31 + globalThreadID] += 4680.000000;
		x[totalThreadCount * 32 + globalThreadID] += 2251.000000;
		x[totalThreadCount * 33 + globalThreadID] += 3768.000000;
	}
	if ((gray >> 42) & 1LL)
	{
		reg0 += 6629.000000;
		reg3 += 6366.000000;
		reg4 += 7395.000000;
		x[totalThreadCount * 8 + globalThreadID] += 7776.000000;
		x[totalThreadCount * 10 + globalThreadID] += 5026.000000;
		x[totalThreadCount * 11 + globalThreadID] += 7565.000000;
		x[totalThreadCount * 15 + globalThreadID] += 763.000000;
		x[totalThreadCount * 16 + globalThreadID] += 9810.000000;
		x[totalThreadCount * 21 + globalThreadID] += 775.000000;
		x[totalThreadCount * 22 + globalThreadID] += 5361.000000;
		x[totalThreadCount * 23 + globalThreadID] += 7984.000000;
		x[totalThreadCount * 24 + globalThreadID] += 5981.000000;
		x[totalThreadCount * 29 + globalThreadID] += 8826.000000;
		x[totalThreadCount * 31 + globalThreadID] += 1382.000000;
		x[totalThreadCount * 32 + globalThreadID] += 1062.000000;
		x[totalThreadCount * 35 + globalThreadID] += 2686.000000;
		x[totalThreadCount * 36 + globalThreadID] += 6508.000000;
		x[totalThreadCount * 37 + globalThreadID] += 9853.000000;
	}
	if ((gray >> 43) & 1LL)
	{
		reg1 += 8094.000000;
		reg3 += 8644.000000;
		reg4 += 9545.000000;
		x[totalThreadCount * 5 + globalThreadID] += 2869.000000;
		x[totalThreadCount * 7 + globalThreadID] += 292.000000;
		x[totalThreadCount * 8 + globalThreadID] += 1087.000000;
		x[totalThreadCount * 9 + globalThreadID] += 6157.000000;
		x[totalThreadCount * 16 + globalThreadID] += 8014.000000;
		x[totalThreadCount * 19 + globalThreadID] += 1417.000000;
		x[totalThreadCount * 22 + globalThreadID] += 754.000000;
		x[totalThreadCount * 30 + globalThreadID] += 5139.000000;
		x[totalThreadCount * 32 + globalThreadID] += 4492.000000;
		x[totalThreadCount * 34 + globalThreadID] += 6956.000000;
		x[totalThreadCount * 38 + globalThreadID] += 8482.000000;
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
