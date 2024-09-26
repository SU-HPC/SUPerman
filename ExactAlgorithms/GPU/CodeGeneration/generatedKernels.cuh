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
	reg0 += 3669.000000;
	reg1 += 5407.000000;
	reg2 += 659.000000;
	reg3 += 9927.000000;
	reg4 += 3495.000000;

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
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 6466.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 8751.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6131.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 9481.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8075.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 5205.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 5191.000000;
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
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 29.000000;
	reg1 += 6335.000000;
	reg2 += 6892.000000;
	reg3 += 2631.000000;
	reg4 += 9443.000000;

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
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 7998.000000;
	reg3 += 127.000000;
	reg4 += 1418.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 8856.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 3321.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 3503.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1027.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 9370.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 7566.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 4495.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 3924.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 9469.000000;
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
__device__ __inline__ void c4included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 4513.000000;
	reg1 += 8628.000000;
	reg2 += 96.000000;
	reg3 += 9551.000000;
	reg4 += 4856.000000;

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
	reg0 += 1801.000000;
	reg1 += 8313.000000;
	reg2 += 7967.000000;
	reg3 += 2718.000000;
	reg4 += 260.000000;

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
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 7111.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 1154.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 3623.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 4149.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 3554.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 8342.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 827.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 9693.000000;
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
__device__ __inline__ void c42included(
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
	reg3 += 7259.000000;
	reg4 += 2345.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 3485.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 6555.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 7294.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 6657.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 5789.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 5055.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 9950.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 4861.000000;
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
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 8530.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 878.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 946.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 3513.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 2308.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 4758.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 6286.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 658.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 2271.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 4833.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 947.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 7086.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 1302.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 5804.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 448.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 3381.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 2772.000000;
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
__device__ __inline__ void c26included(
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
	reg2 += 4057.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 6306.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 4526.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 492.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 8445.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 4506.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 96.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 6234.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 8626.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 2346.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 5.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 361.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 5913.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 9944.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 2912.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 6442.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 417.000000;
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
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 9403.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 8514.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 6872.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 5861.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 1424.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 3307.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2974.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 2475.000000;
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
	x[totalThreadCount * 39 + globalThreadID] += 5056.000000;
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
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 4887.000000;
	reg1 += 9507.000000;
	reg2 += 2715.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 4173.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 212.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 5805.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 418.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 9422.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8623.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 1527.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 5412.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 2074.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 5128.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 7219.000000;
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
__device__ __inline__ void c27included(
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
	reg0 += 3354.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9859.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 867.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 4406.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 1589.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 7616.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 9385.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 579.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 8732.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 8473.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 9325.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 9538.000000;
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
__device__ __inline__ void c37included(
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
	reg1 += 845.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 2347.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 6130.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 3969.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 7192.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1721.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 7603.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 721.000000;
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
	x[totalThreadCount * 39 + globalThreadID] += 8929.000000;
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
	x[totalThreadCount * 1 + globalThreadID] += 4702.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 1206.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 4435.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 5289.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9192.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 6676.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 6619.000000;
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
__device__ __inline__ void c11included(
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
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 8368.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 2275.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 4046.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 1929.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 4337.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 3183.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 7669.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 3633.000000;
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
__device__ __inline__ void c5included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 2110.000000;
	reg1 += 7699.000000;
	reg2 += 641.000000;
	reg3 += 3069.000000;
	reg4 += 2481.000000;

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
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 7651.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 6733.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 2719.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 7428.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 5329.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 9164.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 4556.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 4071.000000;
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
__device__ __inline__ void c20included(
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
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9204.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 396.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 762.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 3445.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 8784.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 8473.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 9735.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 8167.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 6780.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 3501.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 2289.000000;
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
__device__ __inline__ void c30included(
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
	reg3 += 4286.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 131.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 4485.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 9213.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 4080.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 3766.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 2835.000000;
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
	x[totalThreadCount * 25 + globalThreadID] += 1379.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 5545.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 7756.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 1564.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 5314.000000;
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
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 7935.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 4982.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9389.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9992.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 5509.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 8952.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1776.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 7851.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 4324.000000;
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
__device__ __inline__ void c29included(
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
	reg3 += 5482.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 8993.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 9755.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 6189.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 440.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 76.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 7486.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1148.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 2564.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 7397.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 93.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 1204.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 9257.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 9986.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 6072.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 5811.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 6409.000000;
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
	reg1 += 6174.000000;
	reg3 += 6414.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 7037.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9462.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 334.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 2061.000000;
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
	x[totalThreadCount * 21 + globalThreadID] += 9117.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 7446.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 42.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 3159.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 6387.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 5368.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 7546.000000;
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
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 1440.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 2493.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 6387.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 4626.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 8023.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 1187.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 780.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 2376.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 3059.000000;
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
__device__ __inline__ void c3included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 4712.000000;
	reg1 += 3007.000000;
	reg2 += 9353.000000;
	reg3 += 2313.000000;
	reg4 += 1662.000000;

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
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 6034.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 7495.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 7690.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 1149.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 336.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 9465.000000;
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
	x[totalThreadCount * 30 + globalThreadID] += 7622.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 9021.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 8403.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 5365.000000;
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
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 512.000000;
	reg3 += 847.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 8852.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 5941.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 2709.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 5612.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 2092.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 6210.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 7249.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 4471.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 117.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 7016.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 7163.000000;
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
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 5700.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 48.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1991.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 1816.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 6737.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 7538.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 4909.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2799.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 5820.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 1442.000000;
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
__device__ __inline__ void c17included(
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
	reg3 += 3829.000000;

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
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 2040.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 2055.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 6510.000000;
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
	x[totalThreadCount * 27 + globalThreadID] += 4969.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 8019.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 7746.000000;
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
__device__ __inline__ void c40included(
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
	reg1 += 8179.000000;
	reg4 += 2860.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 3088.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 6450.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 471.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 579.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 6614.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 4554.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 5279.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 1763.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 8311.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 7329.000000;
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
__device__ __inline__ void c23included(
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
	reg0 += 8474.000000;

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
	x[totalThreadCount * 9 + globalThreadID] += 9762.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 9157.000000;
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
	x[totalThreadCount * 23 + globalThreadID] += 2582.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 7753.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 1652.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 9012.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 1503.000000;
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
__device__ __inline__ void c7included(
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
	reg0 += 707.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 9960.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 4492.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 4660.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 7363.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 8609.000000;
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
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 4657.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 7408.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 4662.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 6989.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 8540.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 6649.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 5507.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 3700.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 6375.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 4828.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 3195.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 3369.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 8121.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 7732.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 5625.000000;
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
	x[totalThreadCount * 2 + globalThreadID] += 5738.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7536.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 4826.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 5277.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 4132.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 3007.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 801.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 3202.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 868.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 1413.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 5955.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 4150.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] += 9126.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 7591.000000;
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
__device__ __inline__ void c19included(
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
	x[totalThreadCount * 2 + globalThreadID] += 4443.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 3146.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 3435.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 3259.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 196.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 6929.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 3398.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 6679.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 370.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] += 2420.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 938.000000;
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
__device__ __inline__ void c18included(
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
	reg0 += 69.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 6146.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 9348.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 9966.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 4026.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 1249.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 3847.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 7016.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 2669.000000;
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
__device__ __inline__ void c31included(
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
	reg3 += 4537.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 2559.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 177.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 9189.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 1583.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 9519.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8810.000000;
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
	x[totalThreadCount * 36 + globalThreadID] += 6055.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 330.000000;
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
__device__ __inline__ void c6included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 += 7195.000000;
	reg1 += 3090.000000;
	reg2 += 7889.000000;
	reg3 += 7854.000000;
	reg4 += 9369.000000;

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
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 2857.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 4949.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 1005.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 8681.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 6548.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 6770.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 7161.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 7360.000000;
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
	x[totalThreadCount * 36 + globalThreadID] += 9755.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 4635.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 3193.000000;
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
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 7682.000000;
	reg2 += 8726.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 210.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 3193.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 3860.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 3790.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 8589.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 7290.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 7945.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 6251.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 7946.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 1187.000000;
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
									const C& reg2,
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 1924.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 9216.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 9970.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 186.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 4260.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 1114.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 4096.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 129.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 399.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 8263.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 4225.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] += 4211.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] += 8777.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 7055.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 658.000000;
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
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 2203.000000;
	reg4 += 782.000000;

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
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 2934.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 2661.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 8155.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 591.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 3847.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 2958.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 494.000000;
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
__device__ __inline__ void c28included(
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
	reg3 += 9576.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 4543.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 3662.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6332.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 4435.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 5366.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2900.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 3983.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 6162.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] += 2878.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] += 6387.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 6323.000000;
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
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 6709.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 4872.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 3193.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 6250.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 1568.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 2211.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 3522.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 4956.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 772.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 4369.000000;
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
	x[totalThreadCount * 34 + globalThreadID] += 987.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 9848.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 4446.000000;
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
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 5290.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 2158.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 9019.000000;
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
	x[totalThreadCount * 25 + globalThreadID] += 2500.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] += 2296.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] += 6386.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] += 4289.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] += 1211.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] += 6196.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] += 512.000000;
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
	reg0 -= 3669.000000;
	reg1 -= 5407.000000;
	reg2 -= 659.000000;
	reg3 -= 9927.000000;
	reg4 -= 3495.000000;

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
	reg0 -= 7195.000000;
	reg1 -= 3090.000000;
	reg2 -= 7889.000000;
	reg3 -= 7854.000000;
	reg4 -= 9369.000000;

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
	reg0 -= 4712.000000;
	reg1 -= 3007.000000;
	reg2 -= 9353.000000;
	reg3 -= 2313.000000;
	reg4 -= 1662.000000;

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
	reg0 -= 4513.000000;
	reg1 -= 8628.000000;
	reg2 -= 96.000000;
	reg3 -= 9551.000000;
	reg4 -= 4856.000000;

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
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 7998.000000;
	reg3 -= 127.000000;
	reg4 -= 1418.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 8856.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 3321.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 3503.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1027.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 9370.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 7566.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 4495.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 3924.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 9469.000000;
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
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 29.000000;
	reg1 -= 6335.000000;
	reg2 -= 6892.000000;
	reg3 -= 2631.000000;
	reg4 -= 9443.000000;

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
	reg0 -= 1801.000000;
	reg1 -= 8313.000000;
	reg2 -= 7967.000000;
	reg3 -= 2718.000000;
	reg4 -= 260.000000;

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
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 3829.000000;

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
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 2040.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 2055.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 6510.000000;
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
	x[totalThreadCount * 27 + globalThreadID] -= 4969.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 8019.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 7746.000000;
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
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 7111.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 1154.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 3623.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 4149.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 3554.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 8342.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 827.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 9693.000000;
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
__device__ __inline__ void c10excluded(
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
	reg0 -= 1440.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 2493.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 6387.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 4626.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 8023.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 1187.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 780.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 2376.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 3059.000000;
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
__device__ __inline__ void c21excluded(
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
	x[totalThreadCount * 2 + globalThreadID] -= 5738.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7536.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 4826.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 5277.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 4132.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 3007.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 801.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 3202.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 868.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 1413.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 5955.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 4150.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 9126.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 7591.000000;
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
__device__ __inline__ void c33excluded(
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
	reg2 -= 6034.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 7495.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 7690.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 1149.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 336.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 9465.000000;
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
	x[totalThreadCount * 30 + globalThreadID] -= 7622.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 9021.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 8403.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 5365.000000;
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
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 2203.000000;
	reg4 -= 782.000000;

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
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 2934.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 2661.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 8155.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 591.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 3847.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2958.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 494.000000;
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
__device__ __inline__ void c36excluded(
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
	reg1 -= 5290.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 2158.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 9019.000000;
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
	x[totalThreadCount * 25 + globalThreadID] -= 2500.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 2296.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 6386.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 4289.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 1211.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 6196.000000;
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 512.000000;
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
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 69.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 6146.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9348.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 9966.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 4026.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 1249.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 3847.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 7016.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 2669.000000;
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
__device__ __inline__ void c29excluded(
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
	reg3 -= 5482.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 8993.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 9755.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 6189.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 440.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 76.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 7486.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1148.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 2564.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 7397.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 93.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 1204.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 9257.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 9986.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 6072.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 5811.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 6409.000000;
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
	reg1 -= 6174.000000;
	reg3 -= 6414.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 7037.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9462.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 334.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 2061.000000;
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
	x[totalThreadCount * 21 + globalThreadID] -= 9117.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 7446.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 42.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 3159.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 6387.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 5368.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 7546.000000;
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
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 4537.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 2559.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 177.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9189.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 1583.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 9519.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8810.000000;
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
	x[totalThreadCount * 36 + globalThreadID] -= 6055.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 330.000000;
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
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 6709.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 4872.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 3193.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 6250.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 1568.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 2211.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 3522.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 4956.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 772.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 4369.000000;
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
	x[totalThreadCount * 34 + globalThreadID] -= 987.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 9848.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 4446.000000;
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
__device__ __inline__ void c27excluded(
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
	reg0 -= 3354.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9859.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 867.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 4406.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 1589.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 7616.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 9385.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 579.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 8732.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 8473.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 9325.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 9538.000000;
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
__device__ __inline__ void c37excluded(
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
	reg1 -= 845.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 2347.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 6130.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 3969.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 7192.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1721.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 7603.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 721.000000;
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
	x[totalThreadCount * 39 + globalThreadID] -= 8929.000000;
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
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 512.000000;
	reg3 -= 847.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 8852.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 5941.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 2709.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 5612.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 2092.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 6210.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 7249.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 4471.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 117.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 7016.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 7163.000000;
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
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 7682.000000;
	reg2 -= 8726.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 210.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 3193.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 3860.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 3790.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 8589.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 7290.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 7945.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 6251.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 7946.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 1187.000000;
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
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 8368.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 2275.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 4046.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 1929.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 4337.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 3183.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 7669.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 3633.000000;
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
__device__ __inline__ void c38excluded(
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
	reg2 -= 9403.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 8514.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 6872.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 5861.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 1424.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 3307.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2974.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 2475.000000;
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
	x[totalThreadCount * 39 + globalThreadID] -= 5056.000000;
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
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 9576.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 4543.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 3662.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6332.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 4435.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 5366.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2900.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 3983.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 6162.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 2878.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 6387.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 6323.000000;
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
__device__ __inline__ void c7excluded(
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
	reg0 -= 707.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 9960.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 4492.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 4660.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 7363.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 8609.000000;
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
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 4286.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 131.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 4485.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 9213.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 4080.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 3766.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 2835.000000;
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
	x[totalThreadCount * 25 + globalThreadID] -= 1379.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 5545.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 7756.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 1564.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	x[totalThreadCount * 38 + globalThreadID] -= 5314.000000;
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
__device__ __inline__ void c39excluded(
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
	reg4 -= 4657.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 7408.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 4662.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 6989.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 8540.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 6649.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 5507.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 3700.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 6375.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 4828.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 3195.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 3369.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 8121.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 7732.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 5625.000000;
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
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 8530.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 878.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 946.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 3513.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 2308.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 4758.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 6286.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 658.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 2271.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 4833.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 947.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 7086.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 1302.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 5804.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 448.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 3381.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 2772.000000;
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
									const C& reg3,
									C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 6466.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 8751.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6131.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 9481.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8075.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 5205.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 5191.000000;
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
__device__ __inline__ void c23excluded(
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
	reg0 -= 8474.000000;

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
	x[totalThreadCount * 9 + globalThreadID] -= 9762.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 9157.000000;
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
	x[totalThreadCount * 23 + globalThreadID] -= 2582.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 7753.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 1652.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 9012.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 1503.000000;
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
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 5700.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 48.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1991.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 1816.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 6737.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 7538.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 4909.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 2799.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 5820.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 1442.000000;
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
__device__ __inline__ void c20excluded(
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
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9204.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 396.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 762.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 3445.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 8784.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 8473.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 9735.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 8167.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 6780.000000;
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 3501.000000;
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 2289.000000;
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
__device__ __inline__ void c5excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4)
{
	reg0 -= 2110.000000;
	reg1 -= 7699.000000;
	reg2 -= 641.000000;
	reg3 -= 3069.000000;
	reg4 -= 2481.000000;

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
	x[totalThreadCount * 2 + globalThreadID] -= 4443.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 3146.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 3435.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 3259.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 196.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 6929.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 3398.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 6679.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 370.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 2420.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	x[totalThreadCount * 32 + globalThreadID] -= 938.000000;
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
__device__ __inline__ void c42excluded(
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
	reg3 -= 7259.000000;
	reg4 -= 2345.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 3485.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 6555.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 7294.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 6657.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 5789.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	x[totalThreadCount * 31 + globalThreadID] -= 5055.000000;
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 9950.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 4861.000000;
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
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 7935.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 4982.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 9389.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9992.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 5509.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 8952.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1776.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 7851.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 4324.000000;
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
__device__ __inline__ void c34excluded(
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
	reg1 -= 2857.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 4949.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 1005.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 8681.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 6548.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 6770.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 7161.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 7360.000000;
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
	x[totalThreadCount * 36 + globalThreadID] -= 9755.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 4635.000000;
	globalProduct *= x[totalThreadCount * 37 + globalThreadID];
	globalProduct *= x[totalThreadCount * 38 + globalThreadID];
	x[totalThreadCount * 39 + globalThreadID] -= 3193.000000;
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
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 4887.000000;
	reg1 -= 9507.000000;
	reg2 -= 2715.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 4173.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 212.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 5805.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 418.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 9422.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8623.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 1527.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 5412.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 2074.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 5128.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	x[totalThreadCount * 33 + globalThreadID] -= 7219.000000;
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
__device__ __inline__ void c26excluded(
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
	reg2 -= 4057.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 6306.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 4526.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 492.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 8445.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 4506.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 96.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 6234.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 8626.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 2346.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 5.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 361.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 5913.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	x[totalThreadCount * 29 + globalThreadID] -= 9944.000000;
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	x[totalThreadCount * 34 + globalThreadID] -= 2912.000000;
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 6442.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 417.000000;
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
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 7651.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 6733.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 2719.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 7428.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 5329.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 9164.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 4556.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 4071.000000;
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
__device__ __inline__ void c40excluded(
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
	reg1 -= 8179.000000;
	reg4 -= 2860.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 3088.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 6450.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 471.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 579.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 6614.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 4554.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 5279.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	x[totalThreadCount * 28 + globalThreadID] -= 1763.000000;
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 8311.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 7329.000000;
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
	x[totalThreadCount * 1 + globalThreadID] -= 4702.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 1206.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 4435.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 5289.000000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 9192.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 6676.000000;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 6619.000000;
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
__device__ __inline__ void c24excluded(
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
	reg4 -= 1924.000000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 9216.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 9970.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 186.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 4260.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 1114.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 4096.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 129.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 399.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 8263.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 4225.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];
	globalProduct *= x[totalThreadCount * 28 + globalThreadID];
	globalProduct *= x[totalThreadCount * 29 + globalThreadID];
	x[totalThreadCount * 30 + globalThreadID] -= 4211.000000;
	globalProduct *= x[totalThreadCount * 30 + globalThreadID];
	globalProduct *= x[totalThreadCount * 31 + globalThreadID];
	globalProduct *= x[totalThreadCount * 32 + globalThreadID];
	globalProduct *= x[totalThreadCount * 33 + globalThreadID];
	globalProduct *= x[totalThreadCount * 34 + globalThreadID];
	x[totalThreadCount * 35 + globalThreadID] -= 8777.000000;
	globalProduct *= x[totalThreadCount * 35 + globalThreadID];
	x[totalThreadCount * 36 + globalThreadID] -= 7055.000000;
	globalProduct *= x[totalThreadCount * 36 + globalThreadID];
	x[totalThreadCount * 37 + globalThreadID] -= 658.000000;
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

	C reg0 = -21480.000000;
	C reg1 = -54309.000000;
	C reg2 = -32184.500000;
	C reg3 = -40083.000000;
	C reg4 = -24591.000000;

	x[totalThreadCount * 0 + globalThreadID] = -22811.000000;
	x[totalThreadCount * 1 + globalThreadID] = -28528.500000;
	x[totalThreadCount * 2 + globalThreadID] = -22280.000000;
	x[totalThreadCount * 3 + globalThreadID] = -19117.500000;
	x[totalThreadCount * 4 + globalThreadID] = -39628.000000;
	x[totalThreadCount * 5 + globalThreadID] = -22525.000000;
	x[totalThreadCount * 6 + globalThreadID] = -33350.000000;
	x[totalThreadCount * 7 + globalThreadID] = -9332.500000;
	x[totalThreadCount * 8 + globalThreadID] = -26230.000000;
	x[totalThreadCount * 9 + globalThreadID] = -29046.000000;
	x[totalThreadCount * 10 + globalThreadID] = -12347.000000;
	x[totalThreadCount * 11 + globalThreadID] = -23258.000000;
	x[totalThreadCount * 12 + globalThreadID] = -19049.000000;
	x[totalThreadCount * 13 + globalThreadID] = -37657.000000;
	x[totalThreadCount * 14 + globalThreadID] = -12113.000000;
	x[totalThreadCount * 15 + globalThreadID] = -22238.500000;
	x[totalThreadCount * 16 + globalThreadID] = -28650.000000;
	x[totalThreadCount * 17 + globalThreadID] = -15055.500000;
	x[totalThreadCount * 18 + globalThreadID] = -24329.500000;
	x[totalThreadCount * 19 + globalThreadID] = -26095.000000;
	x[totalThreadCount * 20 + globalThreadID] = -16136.000000;
	x[totalThreadCount * 21 + globalThreadID] = -22233.000000;
	x[totalThreadCount * 22 + globalThreadID] = -37320.000000;
	x[totalThreadCount * 23 + globalThreadID] = -15377.000000;
	x[totalThreadCount * 24 + globalThreadID] = -20022.500000;
	x[totalThreadCount * 25 + globalThreadID] = -13225.500000;
	x[totalThreadCount * 26 + globalThreadID] = -26082.000000;
	x[totalThreadCount * 27 + globalThreadID] = -13347.000000;
	x[totalThreadCount * 28 + globalThreadID] = -19268.500000;
	x[totalThreadCount * 29 + globalThreadID] = -23955.500000;
	x[totalThreadCount * 30 + globalThreadID] = -16824.000000;
	x[totalThreadCount * 31 + globalThreadID] = -8475.500000;
	x[totalThreadCount * 32 + globalThreadID] = -18223.000000;
	x[totalThreadCount * 33 + globalThreadID] = -15807.500000;
	x[totalThreadCount * 34 + globalThreadID] = -25933.000000;
	x[totalThreadCount * 35 + globalThreadID] = -15670.000000;
	x[totalThreadCount * 36 + globalThreadID] = -37776.000000;
	x[totalThreadCount * 37 + globalThreadID] = -20400.000000;
	x[totalThreadCount * 38 + globalThreadID] = -9160.000000;
	x[totalThreadCount * 39 + globalThreadID] = -17364.000000;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 3669.000000;
		reg1 += 5407.000000;
		reg2 += 659.000000;
		reg3 += 9927.000000;
		reg4 += 3495.000000;
	}
	if ((gray >> 1) & 1LL)
	{
		reg0 += 1801.000000;
		reg1 += 8313.000000;
		reg2 += 7967.000000;
		reg3 += 2718.000000;
		reg4 += 260.000000;
	}
	if ((gray >> 2) & 1LL)
	{
		reg0 += 29.000000;
		reg1 += 6335.000000;
		reg2 += 6892.000000;
		reg3 += 2631.000000;
		reg4 += 9443.000000;
	}
	if ((gray >> 3) & 1LL)
	{
		reg0 += 4712.000000;
		reg1 += 3007.000000;
		reg2 += 9353.000000;
		reg3 += 2313.000000;
		reg4 += 1662.000000;
	}
	if ((gray >> 4) & 1LL)
	{
		reg0 += 4513.000000;
		reg1 += 8628.000000;
		reg2 += 96.000000;
		reg3 += 9551.000000;
		reg4 += 4856.000000;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 2110.000000;
		reg1 += 7699.000000;
		reg2 += 641.000000;
		reg3 += 3069.000000;
		reg4 += 2481.000000;
	}
	if ((gray >> 6) & 1LL)
	{
		reg0 += 7195.000000;
		reg1 += 3090.000000;
		reg2 += 7889.000000;
		reg3 += 7854.000000;
		reg4 += 9369.000000;
	}
	if ((gray >> 7) & 1LL)
	{
		reg0 += 707.000000;
		x[totalThreadCount * 0 + globalThreadID] += 9960.000000;
		x[totalThreadCount * 1 + globalThreadID] += 4492.000000;
		x[totalThreadCount * 2 + globalThreadID] += 4660.000000;
		x[totalThreadCount * 3 + globalThreadID] += 7363.000000;
		x[totalThreadCount * 4 + globalThreadID] += 8609.000000;
	}
	if ((gray >> 8) & 1LL)
	{
		x[totalThreadCount * 1 + globalThreadID] += 4702.000000;
		x[totalThreadCount * 5 + globalThreadID] += 1206.000000;
		x[totalThreadCount * 6 + globalThreadID] += 4435.000000;
		x[totalThreadCount * 7 + globalThreadID] += 5289.000000;
		x[totalThreadCount * 8 + globalThreadID] += 9192.000000;
		x[totalThreadCount * 9 + globalThreadID] += 6676.000000;
		x[totalThreadCount * 10 + globalThreadID] += 6619.000000;
	}
	if ((gray >> 9) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += 7111.000000;
		x[totalThreadCount * 3 + globalThreadID] += 1154.000000;
		x[totalThreadCount * 9 + globalThreadID] += 3623.000000;
		x[totalThreadCount * 10 + globalThreadID] += 4149.000000;
		x[totalThreadCount * 11 + globalThreadID] += 3554.000000;
		x[totalThreadCount * 12 + globalThreadID] += 8342.000000;
		x[totalThreadCount * 13 + globalThreadID] += 827.000000;
		x[totalThreadCount * 14 + globalThreadID] += 9693.000000;
	}
	if ((gray >> 10) & 1LL)
	{
		reg0 += 1440.000000;
		x[totalThreadCount * 3 + globalThreadID] += 2493.000000;
		x[totalThreadCount * 8 + globalThreadID] += 6387.000000;
		x[totalThreadCount * 9 + globalThreadID] += 4626.000000;
		x[totalThreadCount * 11 + globalThreadID] += 8023.000000;
		x[totalThreadCount * 12 + globalThreadID] += 1187.000000;
		x[totalThreadCount * 13 + globalThreadID] += 780.000000;
		x[totalThreadCount * 15 + globalThreadID] += 2376.000000;
		x[totalThreadCount * 16 + globalThreadID] += 3059.000000;
	}
	if ((gray >> 11) & 1LL)
	{
		x[totalThreadCount * 3 + globalThreadID] += 8368.000000;
		x[totalThreadCount * 10 + globalThreadID] += 2275.000000;
		x[totalThreadCount * 11 + globalThreadID] += 4046.000000;
		x[totalThreadCount * 15 + globalThreadID] += 1929.000000;
		x[totalThreadCount * 16 + globalThreadID] += 4337.000000;
		x[totalThreadCount * 17 + globalThreadID] += 3183.000000;
		x[totalThreadCount * 18 + globalThreadID] += 7669.000000;
		x[totalThreadCount * 19 + globalThreadID] += 3633.000000;
	}
	if ((gray >> 12) & 1LL)
	{
		reg1 += 7651.000000;
		x[totalThreadCount * 2 + globalThreadID] += 6733.000000;
		x[totalThreadCount * 10 + globalThreadID] += 2719.000000;
		x[totalThreadCount * 13 + globalThreadID] += 7428.000000;
		x[totalThreadCount * 16 + globalThreadID] += 5329.000000;
		x[totalThreadCount * 18 + globalThreadID] += 9164.000000;
		x[totalThreadCount * 20 + globalThreadID] += 4556.000000;
		x[totalThreadCount * 21 + globalThreadID] += 4071.000000;
	}
	if ((gray >> 13) & 1LL)
	{
		reg2 += 7935.000000;
		x[totalThreadCount * 0 + globalThreadID] += 4982.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9389.000000;
		x[totalThreadCount * 8 + globalThreadID] += 9992.000000;
		x[totalThreadCount * 9 + globalThreadID] += 5509.000000;
		x[totalThreadCount * 18 + globalThreadID] += 8952.000000;
		x[totalThreadCount * 20 + globalThreadID] += 1776.000000;
		x[totalThreadCount * 22 + globalThreadID] += 7851.000000;
		x[totalThreadCount * 23 + globalThreadID] += 4324.000000;
	}
	if ((gray >> 14) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += 5700.000000;
		x[totalThreadCount * 3 + globalThreadID] += 48.000000;
		x[totalThreadCount * 4 + globalThreadID] += 1991.000000;
		x[totalThreadCount * 12 + globalThreadID] += 1816.000000;
		x[totalThreadCount * 13 + globalThreadID] += 6737.000000;
		x[totalThreadCount * 19 + globalThreadID] += 7538.000000;
		x[totalThreadCount * 20 + globalThreadID] += 4909.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2799.000000;
		x[totalThreadCount * 24 + globalThreadID] += 5820.000000;
		x[totalThreadCount * 25 + globalThreadID] += 1442.000000;
	}
	if ((gray >> 15) & 1LL)
	{
		reg4 += 6466.000000;
		x[totalThreadCount * 6 + globalThreadID] += 8751.000000;
		x[totalThreadCount * 11 + globalThreadID] += 6131.000000;
		x[totalThreadCount * 15 + globalThreadID] += 9481.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8075.000000;
		x[totalThreadCount * 24 + globalThreadID] += 5205.000000;
		x[totalThreadCount * 26 + globalThreadID] += 5191.000000;
	}
	if ((gray >> 16) & 1LL)
	{
		reg1 += 2203.000000;
		reg4 += 782.000000;
		x[totalThreadCount * 12 + globalThreadID] += 2934.000000;
		x[totalThreadCount * 15 + globalThreadID] += 2661.000000;
		x[totalThreadCount * 16 + globalThreadID] += 8155.000000;
		x[totalThreadCount * 19 + globalThreadID] += 591.000000;
		x[totalThreadCount * 20 + globalThreadID] += 3847.000000;
		x[totalThreadCount * 22 + globalThreadID] += 2958.000000;
		x[totalThreadCount * 27 + globalThreadID] += 494.000000;
	}
	if ((gray >> 17) & 1LL)
	{
		reg3 += 3829.000000;
		x[totalThreadCount * 11 + globalThreadID] += 2040.000000;
		x[totalThreadCount * 14 + globalThreadID] += 2055.000000;
		x[totalThreadCount * 17 + globalThreadID] += 6510.000000;
		x[totalThreadCount * 27 + globalThreadID] += 4969.000000;
		x[totalThreadCount * 28 + globalThreadID] += 8019.000000;
		x[totalThreadCount * 29 + globalThreadID] += 7746.000000;
	}
	if ((gray >> 18) & 1LL)
	{
		reg0 += 69.000000;
		x[totalThreadCount * 1 + globalThreadID] += 6146.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9348.000000;
		x[totalThreadCount * 13 + globalThreadID] += 9966.000000;
		x[totalThreadCount * 21 + globalThreadID] += 4026.000000;
		x[totalThreadCount * 22 + globalThreadID] += 1249.000000;
		x[totalThreadCount * 24 + globalThreadID] += 3847.000000;
		x[totalThreadCount * 28 + globalThreadID] += 7016.000000;
		x[totalThreadCount * 30 + globalThreadID] += 2669.000000;
	}
	if ((gray >> 19) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 4443.000000;
		x[totalThreadCount * 5 + globalThreadID] += 3146.000000;
		x[totalThreadCount * 14 + globalThreadID] += 3435.000000;
		x[totalThreadCount * 15 + globalThreadID] += 3259.000000;
		x[totalThreadCount * 18 + globalThreadID] += 196.000000;
		x[totalThreadCount * 19 + globalThreadID] += 6929.000000;
		x[totalThreadCount * 20 + globalThreadID] += 3398.000000;
		x[totalThreadCount * 23 + globalThreadID] += 6679.000000;
		x[totalThreadCount * 29 + globalThreadID] += 370.000000;
		x[totalThreadCount * 31 + globalThreadID] += 2420.000000;
		x[totalThreadCount * 32 + globalThreadID] += 938.000000;
	}
	if ((gray >> 20) & 1LL)
	{
		x[totalThreadCount * 8 + globalThreadID] += 9204.000000;
		x[totalThreadCount * 9 + globalThreadID] += 396.000000;
		x[totalThreadCount * 10 + globalThreadID] += 762.000000;
		x[totalThreadCount * 13 + globalThreadID] += 3445.000000;
		x[totalThreadCount * 16 + globalThreadID] += 8784.000000;
		x[totalThreadCount * 24 + globalThreadID] += 8473.000000;
		x[totalThreadCount * 26 + globalThreadID] += 9735.000000;
		x[totalThreadCount * 31 + globalThreadID] += 8167.000000;
		x[totalThreadCount * 32 + globalThreadID] += 6780.000000;
		x[totalThreadCount * 33 + globalThreadID] += 3501.000000;
		x[totalThreadCount * 34 + globalThreadID] += 2289.000000;
	}
	if ((gray >> 21) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += 5738.000000;
		x[totalThreadCount * 6 + globalThreadID] += 7536.000000;
		x[totalThreadCount * 11 + globalThreadID] += 4826.000000;
		x[totalThreadCount * 14 + globalThreadID] += 5277.000000;
		x[totalThreadCount * 15 + globalThreadID] += 4132.000000;
		x[totalThreadCount * 17 + globalThreadID] += 3007.000000;
		x[totalThreadCount * 20 + globalThreadID] += 801.000000;
		x[totalThreadCount * 25 + globalThreadID] += 3202.000000;
		x[totalThreadCount * 27 + globalThreadID] += 868.000000;
		x[totalThreadCount * 28 + globalThreadID] += 1413.000000;
		x[totalThreadCount * 29 + globalThreadID] += 5955.000000;
		x[totalThreadCount * 32 + globalThreadID] += 4150.000000;
		x[totalThreadCount * 34 + globalThreadID] += 9126.000000;
		x[totalThreadCount * 35 + globalThreadID] += 7591.000000;
	}
	if ((gray >> 22) & 1LL)
	{
		reg1 += 8530.000000;
		x[totalThreadCount * 1 + globalThreadID] += 878.000000;
		x[totalThreadCount * 3 + globalThreadID] += 946.000000;
		x[totalThreadCount * 6 + globalThreadID] += 3513.000000;
		x[totalThreadCount * 7 + globalThreadID] += 2308.000000;
		x[totalThreadCount * 12 + globalThreadID] += 4758.000000;
		x[totalThreadCount * 16 + globalThreadID] += 6286.000000;
		x[totalThreadCount * 18 + globalThreadID] += 658.000000;
		x[totalThreadCount * 19 + globalThreadID] += 2271.000000;
		x[totalThreadCount * 20 + globalThreadID] += 4833.000000;
		x[totalThreadCount * 22 + globalThreadID] += 947.000000;
		x[totalThreadCount * 27 + globalThreadID] += 7086.000000;
		x[totalThreadCount * 28 + globalThreadID] += 1302.000000;
		x[totalThreadCount * 31 + globalThreadID] += 5804.000000;
		x[totalThreadCount * 32 + globalThreadID] += 448.000000;
		x[totalThreadCount * 34 + globalThreadID] += 3381.000000;
		x[totalThreadCount * 36 + globalThreadID] += 2772.000000;
	}
	if ((gray >> 23) & 1LL)
	{
		reg0 += 8474.000000;
		x[totalThreadCount * 9 + globalThreadID] += 9762.000000;
		x[totalThreadCount * 13 + globalThreadID] += 9157.000000;
		x[totalThreadCount * 23 + globalThreadID] += 2582.000000;
		x[totalThreadCount * 26 + globalThreadID] += 7753.000000;
		x[totalThreadCount * 27 + globalThreadID] += 1652.000000;
		x[totalThreadCount * 32 + globalThreadID] += 9012.000000;
		x[totalThreadCount * 36 + globalThreadID] += 1503.000000;
	}
	if ((gray >> 24) & 1LL)
	{
		reg4 += 1924.000000;
		x[totalThreadCount * 0 + globalThreadID] += 9216.000000;
		x[totalThreadCount * 1 + globalThreadID] += 9970.000000;
		x[totalThreadCount * 2 + globalThreadID] += 186.000000;
		x[totalThreadCount * 6 + globalThreadID] += 4260.000000;
		x[totalThreadCount * 8 + globalThreadID] += 1114.000000;
		x[totalThreadCount * 10 + globalThreadID] += 4096.000000;
		x[totalThreadCount * 12 + globalThreadID] += 129.000000;
		x[totalThreadCount * 18 + globalThreadID] += 399.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8263.000000;
		x[totalThreadCount * 23 + globalThreadID] += 4225.000000;
		x[totalThreadCount * 30 + globalThreadID] += 4211.000000;
		x[totalThreadCount * 35 + globalThreadID] += 8777.000000;
		x[totalThreadCount * 36 + globalThreadID] += 7055.000000;
		x[totalThreadCount * 37 + globalThreadID] += 658.000000;
	}
	if ((gray >> 25) & 1LL)
	{
		reg1 += 6709.000000;
		x[totalThreadCount * 1 + globalThreadID] += 4872.000000;
		x[totalThreadCount * 2 + globalThreadID] += 3193.000000;
		x[totalThreadCount * 6 + globalThreadID] += 6250.000000;
		x[totalThreadCount * 8 + globalThreadID] += 1568.000000;
		x[totalThreadCount * 10 + globalThreadID] += 2211.000000;
		x[totalThreadCount * 15 + globalThreadID] += 3522.000000;
		x[totalThreadCount * 17 + globalThreadID] += 4956.000000;
		x[totalThreadCount * 18 + globalThreadID] += 772.000000;
		x[totalThreadCount * 19 + globalThreadID] += 4369.000000;
		x[totalThreadCount * 34 + globalThreadID] += 987.000000;
		x[totalThreadCount * 36 + globalThreadID] += 9848.000000;
		x[totalThreadCount * 37 + globalThreadID] += 4446.000000;
	}
	if ((gray >> 26) & 1LL)
	{
		reg2 += 4057.000000;
		x[totalThreadCount * 0 + globalThreadID] += 6306.000000;
		x[totalThreadCount * 3 + globalThreadID] += 4526.000000;
		x[totalThreadCount * 5 + globalThreadID] += 492.000000;
		x[totalThreadCount * 9 + globalThreadID] += 8445.000000;
		x[totalThreadCount * 11 + globalThreadID] += 4506.000000;
		x[totalThreadCount * 17 + globalThreadID] += 96.000000;
		x[totalThreadCount * 18 + globalThreadID] += 6234.000000;
		x[totalThreadCount * 19 + globalThreadID] += 8626.000000;
		x[totalThreadCount * 23 + globalThreadID] += 2346.000000;
		x[totalThreadCount * 26 + globalThreadID] += 5.000000;
		x[totalThreadCount * 27 + globalThreadID] += 361.000000;
		x[totalThreadCount * 28 + globalThreadID] += 5913.000000;
		x[totalThreadCount * 29 + globalThreadID] += 9944.000000;
		x[totalThreadCount * 34 + globalThreadID] += 2912.000000;
		x[totalThreadCount * 36 + globalThreadID] += 6442.000000;
		x[totalThreadCount * 37 + globalThreadID] += 417.000000;
	}
	if ((gray >> 27) & 1LL)
	{
		reg0 += 3354.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9859.000000;
		x[totalThreadCount * 11 + globalThreadID] += 867.000000;
		x[totalThreadCount * 12 + globalThreadID] += 4406.000000;
		x[totalThreadCount * 16 + globalThreadID] += 1589.000000;
		x[totalThreadCount * 18 + globalThreadID] += 7616.000000;
		x[totalThreadCount * 21 + globalThreadID] += 9385.000000;
		x[totalThreadCount * 25 + globalThreadID] += 579.000000;
		x[totalThreadCount * 32 + globalThreadID] += 8732.000000;
		x[totalThreadCount * 34 + globalThreadID] += 8473.000000;
		x[totalThreadCount * 36 + globalThreadID] += 9325.000000;
		x[totalThreadCount * 37 + globalThreadID] += 9538.000000;
	}
	if ((gray >> 28) & 1LL)
	{
		reg3 += 9576.000000;
		x[totalThreadCount * 2 + globalThreadID] += 4543.000000;
		x[totalThreadCount * 6 + globalThreadID] += 3662.000000;
		x[totalThreadCount * 11 + globalThreadID] += 6332.000000;
		x[totalThreadCount * 18 + globalThreadID] += 4435.000000;
		x[totalThreadCount * 20 + globalThreadID] += 5366.000000;
		x[totalThreadCount * 24 + globalThreadID] += 2900.000000;
		x[totalThreadCount * 26 + globalThreadID] += 3983.000000;
		x[totalThreadCount * 27 + globalThreadID] += 6162.000000;
		x[totalThreadCount * 29 + globalThreadID] += 2878.000000;
		x[totalThreadCount * 33 + globalThreadID] += 6387.000000;
		x[totalThreadCount * 37 + globalThreadID] += 6323.000000;
	}
	if ((gray >> 29) & 1LL)
	{
		reg3 += 5482.000000;
		x[totalThreadCount * 1 + globalThreadID] += 8993.000000;
		x[totalThreadCount * 5 + globalThreadID] += 9755.000000;
		x[totalThreadCount * 6 + globalThreadID] += 6189.000000;
		x[totalThreadCount * 10 + globalThreadID] += 440.000000;
		x[totalThreadCount * 12 + globalThreadID] += 76.000000;
		x[totalThreadCount * 13 + globalThreadID] += 7486.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1148.000000;
		x[totalThreadCount * 18 + globalThreadID] += 2564.000000;
		x[totalThreadCount * 21 + globalThreadID] += 7397.000000;
		x[totalThreadCount * 23 + globalThreadID] += 93.000000;
		x[totalThreadCount * 25 + globalThreadID] += 1204.000000;
		x[totalThreadCount * 27 + globalThreadID] += 9257.000000;
		x[totalThreadCount * 29 + globalThreadID] += 9986.000000;
		x[totalThreadCount * 30 + globalThreadID] += 6072.000000;
		x[totalThreadCount * 36 + globalThreadID] += 5811.000000;
		x[totalThreadCount * 37 + globalThreadID] += 6409.000000;
	}
	if ((gray >> 30) & 1LL)
	{
		reg3 += 4286.000000;
		x[totalThreadCount * 2 + globalThreadID] += 131.000000;
		x[totalThreadCount * 3 + globalThreadID] += 4485.000000;
		x[totalThreadCount * 6 + globalThreadID] += 9213.000000;
		x[totalThreadCount * 13 + globalThreadID] += 4080.000000;
		x[totalThreadCount * 14 + globalThreadID] += 3766.000000;
		x[totalThreadCount * 15 + globalThreadID] += 2835.000000;
		x[totalThreadCount * 25 + globalThreadID] += 1379.000000;
		x[totalThreadCount * 28 + globalThreadID] += 5545.000000;
		x[totalThreadCount * 29 + globalThreadID] += 7756.000000;
		x[totalThreadCount * 35 + globalThreadID] += 1564.000000;
		x[totalThreadCount * 38 + globalThreadID] += 5314.000000;
	}
	if ((gray >> 31) & 1LL)
	{
		reg3 += 4537.000000;
		x[totalThreadCount * 1 + globalThreadID] += 2559.000000;
		x[totalThreadCount * 2 + globalThreadID] += 177.000000;
		x[totalThreadCount * 8 + globalThreadID] += 9189.000000;
		x[totalThreadCount * 15 + globalThreadID] += 1583.000000;
		x[totalThreadCount * 19 + globalThreadID] += 9519.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8810.000000;
		x[totalThreadCount * 36 + globalThreadID] += 6055.000000;
		x[totalThreadCount * 38 + globalThreadID] += 330.000000;
	}
	if ((gray >> 32) & 1LL)
	{
		reg1 += 6174.000000;
		reg3 += 6414.000000;
		x[totalThreadCount * 1 + globalThreadID] += 7037.000000;
		x[totalThreadCount * 4 + globalThreadID] += 9462.000000;
		x[totalThreadCount * 5 + globalThreadID] += 334.000000;
		x[totalThreadCount * 9 + globalThreadID] += 2061.000000;
		x[totalThreadCount * 21 + globalThreadID] += 9117.000000;
		x[totalThreadCount * 26 + globalThreadID] += 7446.000000;
		x[totalThreadCount * 27 + globalThreadID] += 42.000000;
		x[totalThreadCount * 29 + globalThreadID] += 3159.000000;
		x[totalThreadCount * 33 + globalThreadID] += 6387.000000;
		x[totalThreadCount * 36 + globalThreadID] += 5368.000000;
		x[totalThreadCount * 38 + globalThreadID] += 7546.000000;
	}
	if ((gray >> 33) & 1LL)
	{
		reg2 += 6034.000000;
		x[totalThreadCount * 2 + globalThreadID] += 7495.000000;
		x[totalThreadCount * 4 + globalThreadID] += 7690.000000;
		x[totalThreadCount * 5 + globalThreadID] += 1149.000000;
		x[totalThreadCount * 7 + globalThreadID] += 336.000000;
		x[totalThreadCount * 13 + globalThreadID] += 9465.000000;
		x[totalThreadCount * 30 + globalThreadID] += 7622.000000;
		x[totalThreadCount * 35 + globalThreadID] += 9021.000000;
		x[totalThreadCount * 38 + globalThreadID] += 8403.000000;
		x[totalThreadCount * 39 + globalThreadID] += 5365.000000;
	}
	if ((gray >> 34) & 1LL)
	{
		reg1 += 2857.000000;
		x[totalThreadCount * 5 + globalThreadID] += 4949.000000;
		x[totalThreadCount * 10 + globalThreadID] += 1005.000000;
		x[totalThreadCount * 13 + globalThreadID] += 8681.000000;
		x[totalThreadCount * 16 + globalThreadID] += 6548.000000;
		x[totalThreadCount * 21 + globalThreadID] += 6770.000000;
		x[totalThreadCount * 25 + globalThreadID] += 7161.000000;
		x[totalThreadCount * 26 + globalThreadID] += 7360.000000;
		x[totalThreadCount * 36 + globalThreadID] += 9755.000000;
		x[totalThreadCount * 37 + globalThreadID] += 4635.000000;
		x[totalThreadCount * 39 + globalThreadID] += 3193.000000;
	}
	if ((gray >> 35) & 1LL)
	{
		reg1 += 512.000000;
		reg3 += 847.000000;
		x[totalThreadCount * 3 + globalThreadID] += 8852.000000;
		x[totalThreadCount * 4 + globalThreadID] += 5941.000000;
		x[totalThreadCount * 6 + globalThreadID] += 2709.000000;
		x[totalThreadCount * 11 + globalThreadID] += 5612.000000;
		x[totalThreadCount * 20 + globalThreadID] += 2092.000000;
		x[totalThreadCount * 22 + globalThreadID] += 6210.000000;
		x[totalThreadCount * 23 + globalThreadID] += 7249.000000;
		x[totalThreadCount * 24 + globalThreadID] += 4471.000000;
		x[totalThreadCount * 29 + globalThreadID] += 117.000000;
		x[totalThreadCount * 34 + globalThreadID] += 7016.000000;
		x[totalThreadCount * 37 + globalThreadID] += 7163.000000;
	}
	if ((gray >> 36) & 1LL)
	{
		reg1 += 5290.000000;
		x[totalThreadCount * 4 + globalThreadID] += 2158.000000;
		x[totalThreadCount * 5 + globalThreadID] += 9019.000000;
		x[totalThreadCount * 25 + globalThreadID] += 2500.000000;
		x[totalThreadCount * 28 + globalThreadID] += 2296.000000;
		x[totalThreadCount * 32 + globalThreadID] += 6386.000000;
		x[totalThreadCount * 36 + globalThreadID] += 4289.000000;
		x[totalThreadCount * 37 + globalThreadID] += 1211.000000;
		x[totalThreadCount * 38 + globalThreadID] += 6196.000000;
		x[totalThreadCount * 39 + globalThreadID] += 512.000000;
	}
	if ((gray >> 37) & 1LL)
	{
		reg1 += 845.000000;
		x[totalThreadCount * 0 + globalThreadID] += 2347.000000;
		x[totalThreadCount * 8 + globalThreadID] += 6130.000000;
		x[totalThreadCount * 13 + globalThreadID] += 3969.000000;
		x[totalThreadCount * 15 + globalThreadID] += 7192.000000;
		x[totalThreadCount * 20 + globalThreadID] += 1721.000000;
		x[totalThreadCount * 22 + globalThreadID] += 7603.000000;
		x[totalThreadCount * 28 + globalThreadID] += 721.000000;
		x[totalThreadCount * 39 + globalThreadID] += 8929.000000;
	}
	if ((gray >> 38) & 1LL)
	{
		reg2 += 9403.000000;
		x[totalThreadCount * 5 + globalThreadID] += 8514.000000;
		x[totalThreadCount * 7 + globalThreadID] += 6872.000000;
		x[totalThreadCount * 12 + globalThreadID] += 5861.000000;
		x[totalThreadCount * 19 + globalThreadID] += 1424.000000;
		x[totalThreadCount * 22 + globalThreadID] += 3307.000000;
		x[totalThreadCount * 24 + globalThreadID] += 2974.000000;
		x[totalThreadCount * 28 + globalThreadID] += 2475.000000;
		x[totalThreadCount * 39 + globalThreadID] += 5056.000000;
	}
	if ((gray >> 39) & 1LL)
	{
		reg4 += 4657.000000;
		x[totalThreadCount * 1 + globalThreadID] += 7408.000000;
		x[totalThreadCount * 4 + globalThreadID] += 4662.000000;
		x[totalThreadCount * 6 + globalThreadID] += 6989.000000;
		x[totalThreadCount * 8 + globalThreadID] += 8540.000000;
		x[totalThreadCount * 9 + globalThreadID] += 6649.000000;
		x[totalThreadCount * 15 + globalThreadID] += 5507.000000;
		x[totalThreadCount * 21 + globalThreadID] += 3700.000000;
		x[totalThreadCount * 23 + globalThreadID] += 6375.000000;
		x[totalThreadCount * 24 + globalThreadID] += 4828.000000;
		x[totalThreadCount * 25 + globalThreadID] += 3195.000000;
		x[totalThreadCount * 27 + globalThreadID] += 3369.000000;
		x[totalThreadCount * 33 + globalThreadID] += 8121.000000;
		x[totalThreadCount * 34 + globalThreadID] += 7732.000000;
		x[totalThreadCount * 39 + globalThreadID] += 5625.000000;
	}
	if ((gray >> 40) & 1LL)
	{
		reg1 += 8179.000000;
		reg4 += 2860.000000;
		x[totalThreadCount * 2 + globalThreadID] += 3088.000000;
		x[totalThreadCount * 4 + globalThreadID] += 6450.000000;
		x[totalThreadCount * 5 + globalThreadID] += 471.000000;
		x[totalThreadCount * 11 + globalThreadID] += 579.000000;
		x[totalThreadCount * 13 + globalThreadID] += 6614.000000;
		x[totalThreadCount * 17 + globalThreadID] += 4554.000000;
		x[totalThreadCount * 26 + globalThreadID] += 5279.000000;
		x[totalThreadCount * 28 + globalThreadID] += 1763.000000;
		x[totalThreadCount * 35 + globalThreadID] += 8311.000000;
		x[totalThreadCount * 36 + globalThreadID] += 7329.000000;
	}
	if ((gray >> 41) & 1LL)
	{
		reg1 += 7682.000000;
		reg2 += 8726.000000;
		x[totalThreadCount * 5 + globalThreadID] += 210.000000;
		x[totalThreadCount * 6 + globalThreadID] += 3193.000000;
		x[totalThreadCount * 7 + globalThreadID] += 3860.000000;
		x[totalThreadCount * 9 + globalThreadID] += 3790.000000;
		x[totalThreadCount * 12 + globalThreadID] += 8589.000000;
		x[totalThreadCount * 19 + globalThreadID] += 7290.000000;
		x[totalThreadCount * 22 + globalThreadID] += 7945.000000;
		x[totalThreadCount * 23 + globalThreadID] += 6251.000000;
		x[totalThreadCount * 30 + globalThreadID] += 7946.000000;
		x[totalThreadCount * 39 + globalThreadID] += 1187.000000;
	}
	if ((gray >> 42) & 1LL)
	{
		reg3 += 7259.000000;
		reg4 += 2345.000000;
		x[totalThreadCount * 4 + globalThreadID] += 3485.000000;
		x[totalThreadCount * 9 + globalThreadID] += 6555.000000;
		x[totalThreadCount * 16 + globalThreadID] += 7294.000000;
		x[totalThreadCount * 17 + globalThreadID] += 6657.000000;
		x[totalThreadCount * 25 + globalThreadID] += 5789.000000;
		x[totalThreadCount * 31 + globalThreadID] += 5055.000000;
		x[totalThreadCount * 34 + globalThreadID] += 9950.000000;
		x[totalThreadCount * 39 + globalThreadID] += 4861.000000;
	}
	if ((gray >> 43) & 1LL)
	{
		reg0 += 4887.000000;
		reg1 += 9507.000000;
		reg2 += 2715.000000;
		x[totalThreadCount * 2 + globalThreadID] += 4173.000000;
		x[totalThreadCount * 4 + globalThreadID] += 212.000000;
		x[totalThreadCount * 5 + globalThreadID] += 5805.000000;
		x[totalThreadCount * 10 + globalThreadID] += 418.000000;
		x[totalThreadCount * 16 + globalThreadID] += 9422.000000;
		x[totalThreadCount * 22 + globalThreadID] += 8623.000000;
		x[totalThreadCount * 24 + globalThreadID] += 1527.000000;
		x[totalThreadCount * 26 + globalThreadID] += 5412.000000;
		x[totalThreadCount * 28 + globalThreadID] += 2074.000000;
		x[totalThreadCount * 30 + globalThreadID] += 5128.000000;
		x[totalThreadCount * 33 + globalThreadID] += 7219.000000;
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
