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
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	product *= reg0;
	product *= reg1;
	product *= reg2;
	product *= reg3;
	product *= reg4;
	product *= reg5;
	product *= reg6;
	product *= reg7;
	product *= reg8;
	product *= reg9;
	product *= reg10;
	product *= reg11;
	product *= reg12;
	product *= reg13;
	product *= reg14;
	product *= reg15;
	product *= reg16;
	product *= reg17;
	product *= reg18;
	product *= reg19;
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
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 += -1597916.666670;
	reg1 += 3372916.666670;
	reg2 += -2500000.000000;
	reg3 += -8333.333333;
	reg4 += -2500000.000000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c7included(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19)
{
	reg0 += -30864.197531;
	reg11 += -2000000.000000;
	reg13 += -2000000.000000;
	reg15 += -5555555.555550;
	reg16 += 1635447.530860;
	reg17 += -5555555.555550;
	reg18 += -6666.666667;
	reg19 += -1597916.666670;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c44included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 += -2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -275828.470683;
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
	x[totalThreadCount * 11 + globalThreadID] += 1149285.294510;
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
	x[totalThreadCount * 21 + globalThreadID] += -4166.666667;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -3830.950982;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 2399285.294510;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 64710.580611;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 140838.195984;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c26included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += -833333.333333;
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
	x[totalThreadCount * 15 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 501833333.333000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 250000000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 += -30864.197531;
	reg11 += 2000000.000000;
	reg13 += 4298570.589020;
	reg16 += -6666.666667;
	reg18 += 1767410.744460;
	reg19 += -131963.213599;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += -5555555.555550;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -5555555.555550;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += -517922.131816;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 2298570.589020;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 517922.131816;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += -1597916.666670;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c39included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -2083333.333330;
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
	x[totalThreadCount * 13 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += -3925000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 3985879.629630;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += -4166.666667;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 += -15432.098765;
	reg13 += -2634990.274700;
	reg14 += -2083333.333330;
	reg18 += 517922.131816;
	reg19 += -517922.131816;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += -1680000.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += -2165670.784530;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += -551656.941367;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 3890038.068480;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c45included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -55717351.077900;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 229724661.236000;
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
	x[totalThreadCount * 21 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 250000000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -1149285.294510;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 961679848.804000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 2399285.294510;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += -109779731.332000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 += 100000000.000000;
	reg13 += 486193650.990000;
	reg14 += 500000000.000000;
	reg18 += 2298570.589020;
	reg19 += -4798570.589020;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 134990.274700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 2472387301.980000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -551656.941367;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 2500000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c38included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 5555555.555550;
	reg15 += 666666666.667000;
	reg16 += -5555555.555550;
	reg17 += 1535333333.330000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -2000000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c1included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg1 += -2500000.000000;
	reg2 += 1500000000.000000;
	reg3 += 2500000.000000;
	reg4 += 500000000.000000;
	reg5 += -2083333.333330;
	reg6 += 100000000.000000;
	reg7 += -416666.666667;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c10included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 += -3333333.333330;
	reg11 += 1003333333.330000;
	reg13 += 400000000.000000;
	reg16 += -2000000.000000;
	reg18 += 2000000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 100000000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c5included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg1 += -2500000.000000;
	reg2 += 500000000.000000;
	reg3 += 2500000.000000;
	reg4 += 1504166666.670000;
	reg8 += -416666.666667;
	reg10 += 100000000.000000;
	reg12 += -2083333.333330;
	reg14 += -4166666.666670;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c4included(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 += -2000000.000000;
	reg4 += 100000000.000000;
	reg6 += 400000000.000000;
	reg8 += 2083333.333330;
	reg9 += 2000000.000000;
	reg10 += 1003333333.330000;
	reg12 += -2083333.333330;
	reg13 += -3333333.333330;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg2 += -416666.666667;
	reg5 += -28935.185185;
	reg6 += 2083333.333330;
	reg7 += 2411712.962960;
	reg8 += -2355000.000000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg13 += -2298570.589020;
	reg14 += -2500000.000000;
	reg16 += -1597916.666670;
	reg18 += -131963.213599;
	reg19 += 3504879.880270;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 517922.131816;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += -4798570.589020;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -517922.131816;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += -8333.333333;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c35included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 2832268.518520;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += -3333.333333;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -2800000.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c21included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += -38580.246914;
	reg14 += 2500000.000000;
	reg18 += -1597916.666670;
	reg19 += -8333.333333;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 2500000.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 3411496.913580;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += -6944444.444440;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += -6944444.444450;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c25included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 5555555.555550;
	reg15 += 1535333333.330000;
	reg16 += -5555555.555550;
	reg17 += 666666666.667000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += -2000000.000000;
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
	x[totalThreadCount * 16 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c18included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += -2083333.333330;
	reg5 += -1680000.000000;
	reg8 += -28935.185185;
	reg10 += -2083333.333330;
	reg12 += 1724367.283950;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -15432.098765;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += -2777777.777780;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += -2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c30included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += -2083333.333330;
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
	x[totalThreadCount * 12 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 3985879.629630;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += -4166.666667;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += -3925000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c28included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 += -2083333.333330;

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
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += -4166.666667;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 60879.629630;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c27included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 += -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 200000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 1067500000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 333333333.333000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c23included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 6944444.444440;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += -6944444.444440;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 2169166666.670000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 833333333.333000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += -2500000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c43included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 += 5555555.555550;
	reg17 += -2000000.000000;
	reg18 += -5555555.555550;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 666666666.667000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 1564111437.110000;
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
	x[totalThreadCount * 11 + globalThreadID] += -109779731.332000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2359161.804020;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += -55717351.077900;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += -275828.470683;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 10941196.003800;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c9included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += -2083333.333330;
	reg5 += 1724367.283950;
	reg6 += -2083333.333330;
	reg7 += -28935.185185;
	reg12 += -1680000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += -2777777.777780;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += -15432.098765;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += -2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c24included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 += -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 1067500000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 333333333.333000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 200000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += -833333.333333;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c37included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 += -3472222.222220;

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
	x[totalThreadCount * 9 + globalThreadID] += 3472222.222220;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 416666666.667000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 1335166666.670000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 250000000.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c29included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 += 100000000.000000;

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
	x[totalThreadCount * 12 + globalThreadID] += -2500000.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 502500000.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 += -15432.098765;
	reg11 += -2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 1724367.283950;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -1680000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c46included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 += 100000000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 10941196.003800;
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
	x[totalThreadCount * 11 + globalThreadID] += -55717351.077900;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += -2500000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 275828.470683;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += -109779731.332000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 140838.195984;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 531278103.775000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c15included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg10 += -3333333.333330;
	reg11 += 400000000.000000;
	reg13 += 1975720635.310000;
	reg14 += 100000000.000000;
	reg16 += -2000000.000000;
	reg18 += 4298570.589020;
	reg19 += -2298570.589020;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 551656.941366;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 486193650.990000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -2634990.274700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 2083333.333330;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c42included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 += -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += -109779731.332000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 200000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 333333333.333000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 1527346515.470000;
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
	x[totalThreadCount * 22 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -2149285.294510;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += 229724661.236000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += 1149285.294510;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += -55717351.077900;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c47included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 += 2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += -2800000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += 2832268.518520;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -3333.333333;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c6included(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 += 1635447.530860;
	reg1 += -1597916.666670;
	reg6 += -2000000.000000;
	reg9 += -6666.666667;
	reg10 += -2000000.000000;
	reg15 += 5555555.555550;
	reg16 += -30864.197531;
	reg17 += 5555555.555550;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c33included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 += -19290.123457;
	reg13 += 2083333.333330;
	reg14 += -416666.666667;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += -2355000.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 2431003.086420;
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
	x[totalThreadCount * 20 + globalThreadID] += 3472222.222220;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 3472222.222220;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c17included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 += 2083333.333330;
	reg13 += 551656.941366;
	reg18 += -517922.131816;
	reg19 += 517922.131816;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 4577383.747490;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 134990.274700;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -2165670.784530;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += -2355000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c36included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 += -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 333333333.333000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 2777777.777780;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1067500000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 200000000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c16included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += -4166666.666670;
	reg13 += 100000000.000000;
	reg14 += 1504166666.670000;
	reg19 += -2500000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 500000000.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += -2083333.333330;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 2500000.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += -416666.666667;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c41included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 2359161.804020;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += -1000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += -2149285.294510;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += -2800000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += -3333.333333;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2836099.469500;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] += -1149285.294510;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] += -3830.950982;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += 275828.470683;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c20included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += -8333.333333;
	reg2 += 2500000.000000;
	reg3 += 3411496.913580;
	reg4 += 2500000.000000;
	reg9 += -1597916.666670;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += -38580.246914;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 6944444.444440;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 6944444.444450;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c8included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += -6666.666667;
	reg3 += -1597916.666670;
	reg6 += 2000000.000000;
	reg9 += 1635447.530860;
	reg10 += 2000000.000000;
	reg18 += -30864.197531;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 5555555.555550;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 5555555.555550;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c22included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 += 5555555.555550;
	reg15 += -2000000.000000;
	reg18 += -5555555.555550;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 1535333333.330000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 666666666.667000;
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
	x[totalThreadCount * 12 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += -2083333.333330;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c34included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 += 2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 1000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += -3333.333333;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 2832268.518520;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += -28935.185185;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] += -2800000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c40included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 6944444.444450;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 100000000.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += -6944444.444450;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 833333333.333000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 2169166666.670000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] += 416666.666667;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] += 2083333.333330;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] += -2500000.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c3included(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 += -2000000.000000;
	reg2 += 100000000.000000;
	reg5 += -2083333.333330;
	reg6 += 1003333333.330000;
	reg7 += 2083333.333330;
	reg9 += 2000000.000000;
	reg10 += 400000000.000000;
	reg11 += -3333333.333330;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c32included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 += -3472222.222220;

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
	x[totalThreadCount * 9 + globalThreadID] += 3472222.222220;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += -833333.333333;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += -1250000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 250000000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] += 1250000.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] += 1335166666.670000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += 416666666.667000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c31included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += -416666.666667;
	reg7 += -2355000.000000;
	reg8 += 2431003.086420;
	reg10 += 2083333.333330;
	reg12 += -28935.185185;

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
	x[totalThreadCount * 9 + globalThreadID] += -19290.123457;
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
	x[totalThreadCount * 20 + globalThreadID] += -3472222.222220;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] += -3472222.222220;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c0excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 -= -1597916.666670;
	reg1 -= 3372916.666670;
	reg2 -= -2500000.000000;
	reg3 -= -8333.333333;
	reg4 -= -2500000.000000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg2 -= -416666.666667;
	reg5 -= -28935.185185;
	reg6 -= 2083333.333330;
	reg7 -= 2411712.962960;
	reg8 -= -2355000.000000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c44excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 -= -2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -275828.470683;
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
	x[totalThreadCount * 11 + globalThreadID] -= 1149285.294510;
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
	x[totalThreadCount * 21 + globalThreadID] -= -4166.666667;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -3830.950982;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 2399285.294510;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 64710.580611;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 140838.195984;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c7excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19)
{
	reg0 -= -30864.197531;
	reg11 -= -2000000.000000;
	reg13 -= -2000000.000000;
	reg15 -= -5555555.555550;
	reg16 -= 1635447.530860;
	reg17 -= -5555555.555550;
	reg18 -= -6666.666667;
	reg19 -= -1597916.666670;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c5excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg1 -= -2500000.000000;
	reg2 -= 500000000.000000;
	reg3 -= 2500000.000000;
	reg4 -= 1504166666.670000;
	reg8 -= -416666.666667;
	reg10 -= 100000000.000000;
	reg12 -= -2083333.333330;
	reg14 -= -4166666.666670;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c4excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 -= -2000000.000000;
	reg4 -= 100000000.000000;
	reg6 -= 400000000.000000;
	reg8 -= 2083333.333330;
	reg9 -= 2000000.000000;
	reg10 -= 1003333333.330000;
	reg12 -= -2083333.333330;
	reg13 -= -3333333.333330;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c29excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 -= 100000000.000000;

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
	x[totalThreadCount * 12 + globalThreadID] -= -2500000.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 502500000.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c38excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 5555555.555550;
	reg15 -= 666666666.667000;
	reg16 -= -5555555.555550;
	reg17 -= 1535333333.330000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -2000000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c33excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 -= -19290.123457;
	reg13 -= 2083333.333330;
	reg14 -= -416666.666667;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= -2355000.000000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 2431003.086420;
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
	x[totalThreadCount * 20 + globalThreadID] -= 3472222.222220;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 3472222.222220;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c10excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 -= -3333333.333330;
	reg11 -= 1003333333.330000;
	reg13 -= 400000000.000000;
	reg16 -= -2000000.000000;
	reg18 -= 2000000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 100000000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c46excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 -= 100000000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 10941196.003800;
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
	x[totalThreadCount * 11 + globalThreadID] -= -55717351.077900;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= -2500000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 275828.470683;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= -109779731.332000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 140838.195984;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 531278103.775000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c42excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 -= -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -109779731.332000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 200000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 333333333.333000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 1527346515.470000;
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
	x[totalThreadCount * 22 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -2149285.294510;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 229724661.236000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 1149285.294510;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= -55717351.077900;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c37excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 -= -3472222.222220;

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
	x[totalThreadCount * 9 + globalThreadID] -= 3472222.222220;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 416666666.667000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 1335166666.670000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 250000000.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c24excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 -= -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 1067500000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 333333333.333000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 200000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= -833333.333333;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg13 -= -2298570.589020;
	reg14 -= -2500000.000000;
	reg16 -= -1597916.666670;
	reg18 -= -131963.213599;
	reg19 -= 3504879.880270;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 517922.131816;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= -4798570.589020;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -517922.131816;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= -8333.333333;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c23excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 6944444.444440;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= -6944444.444440;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 2169166666.670000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 833333333.333000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= -2500000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c20excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= -8333.333333;
	reg2 -= 2500000.000000;
	reg3 -= 3411496.913580;
	reg4 -= 2500000.000000;
	reg9 -= -1597916.666670;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= -38580.246914;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 6944444.444440;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 6944444.444450;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c31excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= -416666.666667;
	reg7 -= -2355000.000000;
	reg8 -= 2431003.086420;
	reg10 -= 2083333.333330;
	reg12 -= -28935.185185;

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
	x[totalThreadCount * 9 + globalThreadID] -= -19290.123457;
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
	x[totalThreadCount * 20 + globalThreadID] -= -3472222.222220;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= -3472222.222220;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c26excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= -833333.333333;
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
	x[totalThreadCount * 15 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 501833333.333000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 250000000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c18excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= -2083333.333330;
	reg5 -= -1680000.000000;
	reg8 -= -28935.185185;
	reg10 -= -2083333.333330;
	reg12 -= 1724367.283950;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -15432.098765;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= -2777777.777780;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= -2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c22excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 -= 5555555.555550;
	reg15 -= -2000000.000000;
	reg18 -= -5555555.555550;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 1535333333.330000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 666666666.667000;
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
	x[totalThreadCount * 12 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= -2083333.333330;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c9excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= -2083333.333330;
	reg5 -= 1724367.283950;
	reg6 -= -2083333.333330;
	reg7 -= -28935.185185;
	reg12 -= -1680000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= -2777777.777780;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= -15432.098765;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= -2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c47excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg17 -= 2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= -2800000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= 2832268.518520;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -3333.333333;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c34excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 -= 2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= -3333.333333;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2832268.518520;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= -2800000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 -= -30864.197531;
	reg11 -= 2000000.000000;
	reg13 -= 4298570.589020;
	reg16 -= -6666.666667;
	reg18 -= 1767410.744460;
	reg19 -= -131963.213599;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= -5555555.555550;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -5555555.555550;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= -517922.131816;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 2298570.589020;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 517922.131816;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= -1597916.666670;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c1excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg1 -= -2500000.000000;
	reg2 -= 1500000000.000000;
	reg3 -= 2500000.000000;
	reg4 -= 500000000.000000;
	reg5 -= -2083333.333330;
	reg6 -= 100000000.000000;
	reg7 -= -416666.666667;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c25excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 5555555.555550;
	reg15 -= 1535333333.330000;
	reg16 -= -5555555.555550;
	reg17 -= 666666666.667000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= -2000000.000000;
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
	x[totalThreadCount * 16 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c28excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg15 -= -2083333.333330;

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
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= -4166.666667;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 60879.629630;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c3excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 -= -2000000.000000;
	reg2 -= 100000000.000000;
	reg5 -= -2083333.333330;
	reg6 -= 1003333333.330000;
	reg7 -= 2083333.333330;
	reg9 -= 2000000.000000;
	reg10 -= 400000000.000000;
	reg11 -= -3333333.333330;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c45excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -55717351.077900;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 229724661.236000;
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
	x[totalThreadCount * 21 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 250000000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -1149285.294510;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= 961679848.804000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= 2399285.294510;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= -109779731.332000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c8excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= -6666.666667;
	reg3 -= -1597916.666670;
	reg6 -= 2000000.000000;
	reg9 -= 1635447.530860;
	reg10 -= 2000000.000000;
	reg18 -= -30864.197531;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 5555555.555550;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 5555555.555550;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c39excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= -2083333.333330;
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
	x[totalThreadCount * 13 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= -3925000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 3985879.629630;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= -4166.666667;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c17excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 -= 2083333.333330;
	reg13 -= 551656.941366;
	reg18 -= -517922.131816;
	reg19 -= 517922.131816;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 4577383.747490;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 134990.274700;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -2165670.784530;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= -2355000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c16excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= -4166666.666670;
	reg13 -= 100000000.000000;
	reg14 -= 1504166666.670000;
	reg19 -= -2500000.000000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 500000000.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 2500000.000000;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= -416666.666667;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c40excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 6944444.444450;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= -6944444.444450;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 833333333.333000;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 2169166666.670000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= -2500000.000000;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 -= -15432.098765;
	reg13 -= -2634990.274700;
	reg14 -= -2083333.333330;
	reg18 -= 517922.131816;
	reg19 -= -517922.131816;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= -1680000.000000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= -2165670.784530;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= -551656.941367;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 3890038.068480;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 2777777.777780;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c32excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 -= -3472222.222220;

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
	x[totalThreadCount * 9 + globalThreadID] -= 3472222.222220;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 250000000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= 1250000.000000;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= 1335166666.670000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	x[totalThreadCount * 22 + globalThreadID] -= 416666666.667000;
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c41excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 2359161.804020;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= -2149285.294510;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= -2800000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	x[totalThreadCount * 23 + globalThreadID] -= -3333.333333;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2836099.469500;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= -1149285.294510;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= -3830.950982;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 275828.470683;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c27excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg12 -= -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 200000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 1067500000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 333333333.333000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c6excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19)
{
	reg0 -= 1635447.530860;
	reg1 -= -1597916.666670;
	reg6 -= -2000000.000000;
	reg9 -= -6666.666667;
	reg10 -= -2000000.000000;
	reg15 -= 5555555.555550;
	reg16 -= -30864.197531;
	reg17 -= 5555555.555550;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 -= 100000000.000000;
	reg13 -= 486193650.990000;
	reg14 -= 500000000.000000;
	reg18 -= 2298570.589020;
	reg19 -= -4798570.589020;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 134990.274700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 2472387301.980000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -551656.941367;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 2500000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 -= -15432.098765;
	reg11 -= -2083333.333330;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 1724367.283950;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -1680000.000000;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c15excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg10 -= -3333333.333330;
	reg11 -= 400000000.000000;
	reg13 -= 1975720635.310000;
	reg14 -= 100000000.000000;
	reg16 -= -2000000.000000;
	reg18 -= 4298570.589020;
	reg19 -= -2298570.589020;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 551656.941366;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 486193650.990000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= -2634990.274700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 2083333.333330;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c35excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 2083333.333330;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 2832268.518520;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= -3333.333333;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -2800000.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c30excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= -2083333.333330;
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
	x[totalThreadCount * 12 + globalThreadID] -= 416666.666667;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= -28935.185185;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 3985879.629630;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	x[totalThreadCount * 19 + globalThreadID] -= -4166.666667;
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	x[totalThreadCount * 20 + globalThreadID] -= -1250000.000000;
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= -3925000.000000;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c36excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 -= -2777777.777780;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 333333333.333000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 2777777.777780;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1067500000.000000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 200000000.000000;
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
	x[totalThreadCount * 23 + globalThreadID] -= 1000000.000000;
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= -1000000.000000;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= -833333.333333;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c43excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg9 -= 5555555.555550;
	reg17 -= -2000000.000000;
	reg18 -= -5555555.555550;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 666666666.667000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 1564111437.110000;
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
	x[totalThreadCount * 11 + globalThreadID] -= -109779731.332000;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 100000000.000000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];
	globalProduct *= x[totalThreadCount * 19 + globalThreadID];
	globalProduct *= x[totalThreadCount * 20 + globalThreadID];
	x[totalThreadCount * 21 + globalThreadID] -= -2083333.333330;
	globalProduct *= x[totalThreadCount * 21 + globalThreadID];
	globalProduct *= x[totalThreadCount * 22 + globalThreadID];
	globalProduct *= x[totalThreadCount * 23 + globalThreadID];
	x[totalThreadCount * 24 + globalThreadID] -= 2359161.804020;
	globalProduct *= x[totalThreadCount * 24 + globalThreadID];
	x[totalThreadCount * 25 + globalThreadID] -= -55717351.077900;
	globalProduct *= x[totalThreadCount * 25 + globalThreadID];
	x[totalThreadCount * 26 + globalThreadID] -= -275828.470683;
	globalProduct *= x[totalThreadCount * 26 + globalThreadID];
	x[totalThreadCount * 27 + globalThreadID] -= 10941196.003800;
	globalProduct *= x[totalThreadCount * 27 + globalThreadID];

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
}

template <class C>
__device__ __inline__ void c21excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= -38580.246914;
	reg14 -= 2500000.000000;
	reg18 -= -1597916.666670;
	reg19 -= -8333.333333;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 2500000.000000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 3411496.913580;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= -6944444.444440;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= -6944444.444450;
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

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
					reg11,
					reg12,
					reg13,
					reg14,
					reg15,
					reg16,
					reg17,
					reg18,
					reg19);
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

	C reg0 = -3555555.555546;
	C reg1 = 1616666.666667;
	C reg2 = -1048750000.000002;
	C reg3 = -10327777.777777;
	C reg4 = -1048750000.001667;
	C reg5 = 4861111.111110;
	C reg6 = -749999999.998335;
	C reg7 = -847222.222219;
	C reg8 = 2624999.999999;
	C reg9 = -7555555.555546;
	C reg10 = -749999999.998335;
	C reg11 = -749999999.998335;
	C reg12 = 4861111.111110;
	C reg13 = -1479290476.483333;
	C reg14 = -1048750000.001667;
	C reg15 = -1149999999.998500;
	C reg16 = 7555555.555554;
	C reg17 = -1147916666.665170;
	C reg18 = 1256984.966533;
	C reg19 = 3915237.255686;

	x[totalThreadCount * 0 + globalThreadID] = -1149999999.998500;
	x[totalThreadCount * 1 + globalThreadID] = -1087111108.685453;
	x[totalThreadCount * 2 + globalThreadID] = -799999999.999833;
	x[totalThreadCount * 3 + globalThreadID] = -694444.444450;
	x[totalThreadCount * 4 + globalThreadID] = -798999999.999833;
	x[totalThreadCount * 5 + globalThreadID] = -1398879.163585;
	x[totalThreadCount * 6 + globalThreadID] = -1778040476.485002;
	x[totalThreadCount * 7 + globalThreadID] = -142787.503081;
	x[totalThreadCount * 8 + globalThreadID] = 3561111.111113;
	x[totalThreadCount * 9 + globalThreadID] = -4319444.444440;
	x[totalThreadCount * 10 + globalThreadID] = -799999999.999833;
	x[totalThreadCount * 11 + globalThreadID] = -1061037047.147883;
	x[totalThreadCount * 12 + globalThreadID] = -1551250000.001499;
	x[totalThreadCount * 13 + globalThreadID] = -1551250000.001499;
	x[totalThreadCount * 14 + globalThreadID] = -1083333.333331;
	x[totalThreadCount * 15 + globalThreadID] = 2069444.444442;
	x[totalThreadCount * 16 + globalThreadID] = -301249999.999999;
	x[totalThreadCount * 17 + globalThreadID] = -5883333.333331;
	x[totalThreadCount * 18 + globalThreadID] = -375499999.999833;
	x[totalThreadCount * 19 + globalThreadID] = -430555.555557;
	x[totalThreadCount * 20 + globalThreadID] = -1000500000.001834;
	x[totalThreadCount * 21 + globalThreadID] = 2069444.444442;
	x[totalThreadCount * 22 + globalThreadID] = -1000500000.001834;
	x[totalThreadCount * 23 + globalThreadID] = -251064.814811;
	x[totalThreadCount * 24 + globalThreadID] = -213209.842840;
	x[totalThreadCount * 25 + globalThreadID] = -637537047.148383;
	x[totalThreadCount * 26 + globalThreadID] = -1332947.564570;
	x[totalThreadCount * 27 + globalThreadID] = -236277775.351118;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += -1597916.666670;
		reg1 += 3372916.666670;
		reg2 += -2500000.000000;
		reg3 += -8333.333333;
		reg4 += -2500000.000000;
	}
	if ((gray >> 1) & 1LL)
	{
		reg1 += -2500000.000000;
		reg2 += 1500000000.000000;
		reg3 += 2500000.000000;
		reg4 += 500000000.000000;
		reg5 += -2083333.333330;
		reg6 += 100000000.000000;
		reg7 += -416666.666667;
	}
	if ((gray >> 2) & 1LL)
	{
		reg2 += -416666.666667;
		reg5 += -28935.185185;
		reg6 += 2083333.333330;
		reg7 += 2411712.962960;
		reg8 += -2355000.000000;
	}
	if ((gray >> 3) & 1LL)
	{
		reg0 += -2000000.000000;
		reg2 += 100000000.000000;
		reg5 += -2083333.333330;
		reg6 += 1003333333.330000;
		reg7 += 2083333.333330;
		reg9 += 2000000.000000;
		reg10 += 400000000.000000;
		reg11 += -3333333.333330;
	}
	if ((gray >> 4) & 1LL)
	{
		reg0 += -2000000.000000;
		reg4 += 100000000.000000;
		reg6 += 400000000.000000;
		reg8 += 2083333.333330;
		reg9 += 2000000.000000;
		reg10 += 1003333333.330000;
		reg12 += -2083333.333330;
		reg13 += -3333333.333330;
	}
	if ((gray >> 5) & 1LL)
	{
		reg1 += -2500000.000000;
		reg2 += 500000000.000000;
		reg3 += 2500000.000000;
		reg4 += 1504166666.670000;
		reg8 += -416666.666667;
		reg10 += 100000000.000000;
		reg12 += -2083333.333330;
		reg14 += -4166666.666670;
	}
	if ((gray >> 6) & 1LL)
	{
		reg0 += 1635447.530860;
		reg1 += -1597916.666670;
		reg6 += -2000000.000000;
		reg9 += -6666.666667;
		reg10 += -2000000.000000;
		reg15 += 5555555.555550;
		reg16 += -30864.197531;
		reg17 += 5555555.555550;
	}
	if ((gray >> 7) & 1LL)
	{
		reg0 += -30864.197531;
		reg11 += -2000000.000000;
		reg13 += -2000000.000000;
		reg15 += -5555555.555550;
		reg16 += 1635447.530860;
		reg17 += -5555555.555550;
		reg18 += -6666.666667;
		reg19 += -1597916.666670;
	}
	if ((gray >> 8) & 1LL)
	{
		reg0 += -6666.666667;
		reg3 += -1597916.666670;
		reg6 += 2000000.000000;
		reg9 += 1635447.530860;
		reg10 += 2000000.000000;
		reg18 += -30864.197531;
		x[totalThreadCount * 0 + globalThreadID] += 5555555.555550;
		x[totalThreadCount * 1 + globalThreadID] += 5555555.555550;
	}
	if ((gray >> 9) & 1LL)
	{
		reg2 += -2083333.333330;
		reg5 += 1724367.283950;
		reg6 += -2083333.333330;
		reg7 += -28935.185185;
		reg12 += -1680000.000000;
		x[totalThreadCount * 2 + globalThreadID] += -2777777.777780;
		x[totalThreadCount * 3 + globalThreadID] += -15432.098765;
		x[totalThreadCount * 4 + globalThreadID] += -2777777.777780;
	}
	if ((gray >> 10) & 1LL)
	{
		reg6 += -3333333.333330;
		reg11 += 1003333333.330000;
		reg13 += 400000000.000000;
		reg16 += -2000000.000000;
		reg18 += 2000000.000000;
		x[totalThreadCount * 3 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 5 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 6 + globalThreadID] += 100000000.000000;
	}
	if ((gray >> 11) & 1LL)
	{
		reg5 += -15432.098765;
		reg11 += -2083333.333330;
		x[totalThreadCount * 2 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 3 + globalThreadID] += 1724367.283950;
		x[totalThreadCount * 4 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 5 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 6 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 7 + globalThreadID] += -1680000.000000;
	}
	if ((gray >> 12) & 1LL)
	{
		reg9 += -30864.197531;
		reg11 += 2000000.000000;
		reg13 += 4298570.589020;
		reg16 += -6666.666667;
		reg18 += 1767410.744460;
		reg19 += -131963.213599;
		x[totalThreadCount * 0 + globalThreadID] += -5555555.555550;
		x[totalThreadCount * 1 + globalThreadID] += -5555555.555550;
		x[totalThreadCount * 5 + globalThreadID] += -517922.131816;
		x[totalThreadCount * 6 + globalThreadID] += 2298570.589020;
		x[totalThreadCount * 7 + globalThreadID] += 517922.131816;
		x[totalThreadCount * 8 + globalThreadID] += -1597916.666670;
	}
	if ((gray >> 13) & 1LL)
	{
		reg13 += -2298570.589020;
		reg14 += -2500000.000000;
		reg16 += -1597916.666670;
		reg18 += -131963.213599;
		reg19 += 3504879.880270;
		x[totalThreadCount * 5 + globalThreadID] += 517922.131816;
		x[totalThreadCount * 6 + globalThreadID] += -4798570.589020;
		x[totalThreadCount * 7 + globalThreadID] += -517922.131816;
		x[totalThreadCount * 8 + globalThreadID] += -8333.333333;
	}
	if ((gray >> 14) & 1LL)
	{
		reg11 += 100000000.000000;
		reg13 += 486193650.990000;
		reg14 += 500000000.000000;
		reg18 += 2298570.589020;
		reg19 += -4798570.589020;
		x[totalThreadCount * 3 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 5 + globalThreadID] += 134990.274700;
		x[totalThreadCount * 6 + globalThreadID] += 2472387301.980000;
		x[totalThreadCount * 7 + globalThreadID] += -551656.941367;
		x[totalThreadCount * 8 + globalThreadID] += 2500000.000000;
	}
	if ((gray >> 15) & 1LL)
	{
		reg10 += -3333333.333330;
		reg11 += 400000000.000000;
		reg13 += 1975720635.310000;
		reg14 += 100000000.000000;
		reg16 += -2000000.000000;
		reg18 += 4298570.589020;
		reg19 += -2298570.589020;
		x[totalThreadCount * 5 + globalThreadID] += 551656.941366;
		x[totalThreadCount * 6 + globalThreadID] += 486193650.990000;
		x[totalThreadCount * 7 + globalThreadID] += -2634990.274700;
		x[totalThreadCount * 9 + globalThreadID] += 2083333.333330;
	}
	if ((gray >> 16) & 1LL)
	{
		reg4 += -4166666.666670;
		reg13 += 100000000.000000;
		reg14 += 1504166666.670000;
		reg19 += -2500000.000000;
		x[totalThreadCount * 6 + globalThreadID] += 500000000.000000;
		x[totalThreadCount * 7 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 8 + globalThreadID] += 2500000.000000;
		x[totalThreadCount * 9 + globalThreadID] += -416666.666667;
	}
	if ((gray >> 17) & 1LL)
	{
		reg11 += 2083333.333330;
		reg13 += 551656.941366;
		reg18 += -517922.131816;
		reg19 += 517922.131816;
		x[totalThreadCount * 3 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 5 + globalThreadID] += 4577383.747490;
		x[totalThreadCount * 6 + globalThreadID] += 134990.274700;
		x[totalThreadCount * 7 + globalThreadID] += -2165670.784530;
		x[totalThreadCount * 9 + globalThreadID] += -2355000.000000;
	}
	if ((gray >> 18) & 1LL)
	{
		reg4 += -2083333.333330;
		reg5 += -1680000.000000;
		reg8 += -28935.185185;
		reg10 += -2083333.333330;
		reg12 += 1724367.283950;
		x[totalThreadCount * 7 + globalThreadID] += -15432.098765;
		x[totalThreadCount * 10 + globalThreadID] += -2777777.777780;
		x[totalThreadCount * 11 + globalThreadID] += -2777777.777780;
	}
	if ((gray >> 19) & 1LL)
	{
		reg12 += -15432.098765;
		reg13 += -2634990.274700;
		reg14 += -2083333.333330;
		reg18 += 517922.131816;
		reg19 += -517922.131816;
		x[totalThreadCount * 3 + globalThreadID] += -1680000.000000;
		x[totalThreadCount * 5 + globalThreadID] += -2165670.784530;
		x[totalThreadCount * 6 + globalThreadID] += -551656.941367;
		x[totalThreadCount * 7 + globalThreadID] += 3890038.068480;
		x[totalThreadCount * 9 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 10 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 11 + globalThreadID] += 2777777.777780;
	}
	if ((gray >> 20) & 1LL)
	{
		reg1 += -8333.333333;
		reg2 += 2500000.000000;
		reg3 += 3411496.913580;
		reg4 += 2500000.000000;
		reg9 += -1597916.666670;
		x[totalThreadCount * 8 + globalThreadID] += -38580.246914;
		x[totalThreadCount * 12 + globalThreadID] += 6944444.444440;
		x[totalThreadCount * 13 + globalThreadID] += 6944444.444450;
	}
	if ((gray >> 21) & 1LL)
	{
		reg3 += -38580.246914;
		reg14 += 2500000.000000;
		reg18 += -1597916.666670;
		reg19 += -8333.333333;
		x[totalThreadCount * 6 + globalThreadID] += 2500000.000000;
		x[totalThreadCount * 8 + globalThreadID] += 3411496.913580;
		x[totalThreadCount * 12 + globalThreadID] += -6944444.444440;
		x[totalThreadCount * 13 + globalThreadID] += -6944444.444450;
	}
	if ((gray >> 22) & 1LL)
	{
		reg9 += 5555555.555550;
		reg15 += -2000000.000000;
		reg18 += -5555555.555550;
		x[totalThreadCount * 0 + globalThreadID] += 1535333333.330000;
		x[totalThreadCount * 1 + globalThreadID] += 666666666.667000;
		x[totalThreadCount * 12 + globalThreadID] += 100000000.000000;
		x[totalThreadCount * 14 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 15 + globalThreadID] += -2083333.333330;
	}
	if ((gray >> 23) & 1LL)
	{
		reg3 += 6944444.444440;
		x[totalThreadCount * 0 + globalThreadID] += 100000000.000000;
		x[totalThreadCount * 8 + globalThreadID] += -6944444.444440;
		x[totalThreadCount * 12 + globalThreadID] += 2169166666.670000;
		x[totalThreadCount * 13 + globalThreadID] += 833333333.333000;
		x[totalThreadCount * 14 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 15 + globalThreadID] += 416666.666667;
		x[totalThreadCount * 16 + globalThreadID] += -2500000.000000;
	}
	if ((gray >> 24) & 1LL)
	{
		reg5 += -2777777.777780;
		x[totalThreadCount * 2 + globalThreadID] += 1067500000.000000;
		x[totalThreadCount * 3 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 4 + globalThreadID] += 333333333.333000;
		x[totalThreadCount * 10 + globalThreadID] += 200000000.000000;
		x[totalThreadCount * 14 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 18 + globalThreadID] += -833333.333333;
	}
	if ((gray >> 25) & 1LL)
	{
		reg0 += 5555555.555550;
		reg15 += 1535333333.330000;
		reg16 += -5555555.555550;
		reg17 += 666666666.667000;
		x[totalThreadCount * 0 + globalThreadID] += -2000000.000000;
		x[totalThreadCount * 16 + globalThreadID] += 100000000.000000;
		x[totalThreadCount * 17 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 19 + globalThreadID] += -2083333.333330;
	}
	if ((gray >> 26) & 1LL)
	{
		x[totalThreadCount * 2 + globalThreadID] += -833333.333333;
		x[totalThreadCount * 15 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 18 + globalThreadID] += 501833333.333000;
		x[totalThreadCount * 19 + globalThreadID] += 1250000.000000;
		x[totalThreadCount * 20 + globalThreadID] += 250000000.000000;
	}
	if ((gray >> 27) & 1LL)
	{
		reg12 += -2777777.777780;
		x[totalThreadCount * 2 + globalThreadID] += 200000000.000000;
		x[totalThreadCount * 7 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 10 + globalThreadID] += 1067500000.000000;
		x[totalThreadCount * 11 + globalThreadID] += 333333333.333000;
		x[totalThreadCount * 14 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 17 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 20 + globalThreadID] += -833333.333333;
	}
	if ((gray >> 28) & 1LL)
	{
		reg15 += -2083333.333330;
		x[totalThreadCount * 15 + globalThreadID] += -4166.666667;
		x[totalThreadCount * 16 + globalThreadID] += 416666.666667;
		x[totalThreadCount * 17 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 18 + globalThreadID] += 1250000.000000;
		x[totalThreadCount * 19 + globalThreadID] += 60879.629630;
		x[totalThreadCount * 20 + globalThreadID] += 1250000.000000;
	}
	if ((gray >> 29) & 1LL)
	{
		reg15 += 100000000.000000;
		x[totalThreadCount * 12 + globalThreadID] += -2500000.000000;
		x[totalThreadCount * 16 + globalThreadID] += 502500000.000000;
		x[totalThreadCount * 17 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 19 + globalThreadID] += 416666.666667;
	}
	if ((gray >> 30) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 12 + globalThreadID] += 416666.666667;
		x[totalThreadCount * 14 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 15 + globalThreadID] += 3985879.629630;
		x[totalThreadCount * 18 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 19 + globalThreadID] += -4166.666667;
		x[totalThreadCount * 20 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 21 + globalThreadID] += -3925000.000000;
	}
	if ((gray >> 31) & 1LL)
	{
		reg4 += -416666.666667;
		reg7 += -2355000.000000;
		reg8 += 2431003.086420;
		reg10 += 2083333.333330;
		reg12 += -28935.185185;
		x[totalThreadCount * 9 + globalThreadID] += -19290.123457;
		x[totalThreadCount * 20 + globalThreadID] += -3472222.222220;
		x[totalThreadCount * 22 + globalThreadID] += -3472222.222220;
	}
	if ((gray >> 32) & 1LL)
	{
		reg8 += -3472222.222220;
		x[totalThreadCount * 9 + globalThreadID] += 3472222.222220;
		x[totalThreadCount * 10 + globalThreadID] += -833333.333333;
		x[totalThreadCount * 15 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 18 + globalThreadID] += 250000000.000000;
		x[totalThreadCount * 19 + globalThreadID] += 1250000.000000;
		x[totalThreadCount * 20 + globalThreadID] += 1335166666.670000;
		x[totalThreadCount * 22 + globalThreadID] += 416666666.667000;
	}
	if ((gray >> 33) & 1LL)
	{
		reg8 += -19290.123457;
		reg13 += 2083333.333330;
		reg14 += -416666.666667;
		x[totalThreadCount * 5 + globalThreadID] += -2355000.000000;
		x[totalThreadCount * 7 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 9 + globalThreadID] += 2431003.086420;
		x[totalThreadCount * 20 + globalThreadID] += 3472222.222220;
		x[totalThreadCount * 22 + globalThreadID] += 3472222.222220;
	}
	if ((gray >> 34) & 1LL)
	{
		reg15 += 2083333.333330;
		x[totalThreadCount * 2 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 10 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 14 + globalThreadID] += -3333.333333;
		x[totalThreadCount * 16 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 17 + globalThreadID] += 2832268.518520;
		x[totalThreadCount * 19 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 23 + globalThreadID] += -2800000.000000;
	}
	if ((gray >> 35) & 1LL)
	{
		x[totalThreadCount * 0 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 2 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 10 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 12 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 14 + globalThreadID] += 2832268.518520;
		x[totalThreadCount * 15 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 17 + globalThreadID] += -3333.333333;
		x[totalThreadCount * 24 + globalThreadID] += -2800000.000000;
	}
	if ((gray >> 36) & 1LL)
	{
		reg5 += -2777777.777780;
		x[totalThreadCount * 2 + globalThreadID] += 333333333.333000;
		x[totalThreadCount * 3 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 4 + globalThreadID] += 1067500000.000000;
		x[totalThreadCount * 11 + globalThreadID] += 200000000.000000;
		x[totalThreadCount * 23 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 24 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 25 + globalThreadID] += -833333.333333;
	}
	if ((gray >> 37) & 1LL)
	{
		reg8 += -3472222.222220;
		x[totalThreadCount * 9 + globalThreadID] += 3472222.222220;
		x[totalThreadCount * 11 + globalThreadID] += -833333.333333;
		x[totalThreadCount * 20 + globalThreadID] += 416666666.667000;
		x[totalThreadCount * 21 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 22 + globalThreadID] += 1335166666.670000;
		x[totalThreadCount * 25 + globalThreadID] += 250000000.000000;
		x[totalThreadCount * 26 + globalThreadID] += 1250000.000000;
	}
	if ((gray >> 38) & 1LL)
	{
		reg0 += 5555555.555550;
		reg15 += 666666666.667000;
		reg16 += -5555555.555550;
		reg17 += 1535333333.330000;
		x[totalThreadCount * 1 + globalThreadID] += -2000000.000000;
		x[totalThreadCount * 23 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 26 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 27 + globalThreadID] += 100000000.000000;
	}
	if ((gray >> 39) & 1LL)
	{
		x[totalThreadCount * 1 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 13 + globalThreadID] += 416666.666667;
		x[totalThreadCount * 15 + globalThreadID] += -3925000.000000;
		x[totalThreadCount * 21 + globalThreadID] += 3985879.629630;
		x[totalThreadCount * 22 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 24 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 25 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 26 + globalThreadID] += -4166.666667;
	}
	if ((gray >> 40) & 1LL)
	{
		reg3 += 6944444.444450;
		x[totalThreadCount * 1 + globalThreadID] += 100000000.000000;
		x[totalThreadCount * 8 + globalThreadID] += -6944444.444450;
		x[totalThreadCount * 12 + globalThreadID] += 833333333.333000;
		x[totalThreadCount * 13 + globalThreadID] += 2169166666.670000;
		x[totalThreadCount * 21 + globalThreadID] += 416666.666667;
		x[totalThreadCount * 24 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 27 + globalThreadID] += -2500000.000000;
	}
	if ((gray >> 41) & 1LL)
	{
		x[totalThreadCount * 1 + globalThreadID] += 2359161.804020;
		x[totalThreadCount * 4 + globalThreadID] += -1000000.000000;
		x[totalThreadCount * 11 + globalThreadID] += -2149285.294510;
		x[totalThreadCount * 13 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 14 + globalThreadID] += -2800000.000000;
		x[totalThreadCount * 21 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 23 + globalThreadID] += -3333.333333;
		x[totalThreadCount * 24 + globalThreadID] += 2836099.469500;
		x[totalThreadCount * 25 + globalThreadID] += -1149285.294510;
		x[totalThreadCount * 26 + globalThreadID] += -3830.950982;
		x[totalThreadCount * 27 + globalThreadID] += 275828.470683;
	}
	if ((gray >> 42) & 1LL)
	{
		reg12 += -2777777.777780;
		x[totalThreadCount * 1 + globalThreadID] += -109779731.332000;
		x[totalThreadCount * 4 + globalThreadID] += 200000000.000000;
		x[totalThreadCount * 7 + globalThreadID] += 2777777.777780;
		x[totalThreadCount * 10 + globalThreadID] += 333333333.333000;
		x[totalThreadCount * 11 + globalThreadID] += 1527346515.470000;
		x[totalThreadCount * 22 + globalThreadID] += -833333.333333;
		x[totalThreadCount * 23 + globalThreadID] += 1000000.000000;
		x[totalThreadCount * 24 + globalThreadID] += -2149285.294510;
		x[totalThreadCount * 25 + globalThreadID] += 229724661.236000;
		x[totalThreadCount * 26 + globalThreadID] += 1149285.294510;
		x[totalThreadCount * 27 + globalThreadID] += -55717351.077900;
	}
	if ((gray >> 43) & 1LL)
	{
		reg9 += 5555555.555550;
		reg17 += -2000000.000000;
		reg18 += -5555555.555550;
		x[totalThreadCount * 0 + globalThreadID] += 666666666.667000;
		x[totalThreadCount * 1 + globalThreadID] += 1564111437.110000;
		x[totalThreadCount * 11 + globalThreadID] += -109779731.332000;
		x[totalThreadCount * 13 + globalThreadID] += 100000000.000000;
		x[totalThreadCount * 21 + globalThreadID] += -2083333.333330;
		x[totalThreadCount * 24 + globalThreadID] += 2359161.804020;
		x[totalThreadCount * 25 + globalThreadID] += -55717351.077900;
		x[totalThreadCount * 26 + globalThreadID] += -275828.470683;
		x[totalThreadCount * 27 + globalThreadID] += 10941196.003800;
	}
	if ((gray >> 44) & 1LL)
	{
		reg17 += -2083333.333330;
		x[totalThreadCount * 1 + globalThreadID] += -275828.470683;
		x[totalThreadCount * 11 + globalThreadID] += 1149285.294510;
		x[totalThreadCount * 21 + globalThreadID] += -4166.666667;
		x[totalThreadCount * 22 + globalThreadID] += 1250000.000000;
		x[totalThreadCount * 23 + globalThreadID] += -28935.185185;
		x[totalThreadCount * 24 + globalThreadID] += -3830.950982;
		x[totalThreadCount * 25 + globalThreadID] += 2399285.294510;
		x[totalThreadCount * 26 + globalThreadID] += 64710.580611;
		x[totalThreadCount * 27 + globalThreadID] += 140838.195984;
	}
	if ((gray >> 45) & 1LL)
	{
		x[totalThreadCount * 1 + globalThreadID] += -55717351.077900;
		x[totalThreadCount * 4 + globalThreadID] += -833333.333333;
		x[totalThreadCount * 11 + globalThreadID] += 229724661.236000;
		x[totalThreadCount * 21 + globalThreadID] += -1250000.000000;
		x[totalThreadCount * 22 + globalThreadID] += 250000000.000000;
		x[totalThreadCount * 24 + globalThreadID] += -1149285.294510;
		x[totalThreadCount * 25 + globalThreadID] += 961679848.804000;
		x[totalThreadCount * 26 + globalThreadID] += 2399285.294510;
		x[totalThreadCount * 27 + globalThreadID] += -109779731.332000;
	}
	if ((gray >> 46) & 1LL)
	{
		reg17 += 100000000.000000;
		x[totalThreadCount * 1 + globalThreadID] += 10941196.003800;
		x[totalThreadCount * 11 + globalThreadID] += -55717351.077900;
		x[totalThreadCount * 13 + globalThreadID] += -2500000.000000;
		x[totalThreadCount * 23 + globalThreadID] += 2083333.333330;
		x[totalThreadCount * 24 + globalThreadID] += 275828.470683;
		x[totalThreadCount * 25 + globalThreadID] += -109779731.332000;
		x[totalThreadCount * 26 + globalThreadID] += 140838.195984;
		x[totalThreadCount * 27 + globalThreadID] += 531278103.775000;
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
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 1:
					c1included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 2:
					c2included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 3:
					c3included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 4:
					c4included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 5:
					c5included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 6:
					c6included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 45:
					c45included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 46:
					c46included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 47:
					c47included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 1:
					c1excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 2:
					c2excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 3:
					c3excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 4:
					c4excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 5:
					c5excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
					break;
				case 6:
					c6excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19);
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 45:
					c45excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 46:
					c46excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
								totalThreadCount,
								globalThreadID,
								x);
					break;
				case 47:
					c47excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
								reg11,
								reg12,
								reg13,
								reg14,
								reg15,
								reg16,
								reg17,
								reg18,
								reg19,
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
