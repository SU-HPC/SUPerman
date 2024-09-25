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
									const C& reg19,
									const C& reg20)
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
	product *= reg20;
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
									const C& reg20)
{
	reg0 += 62.010900;
	reg1 += 48.700600;
	reg2 += 21.527000;
	reg3 += 84.199900;

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
					reg19,
					reg20);
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
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 += 84.116500;
	reg10 += 91.304600;
	reg12 += 29.925000;
	reg18 += 5.403740;
	reg19 += 40.977800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 27.423600;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 40.492300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 65.058500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 88.751100;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c16included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 51.180700;
	reg5 += 97.533300;
	reg8 += 4.885110;
	reg10 += 85.820200;
	reg11 += 4.099130;
	reg19 += 94.257000;
	reg20 += 10.119500;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 96.871100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 48.922200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 25.365600;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 60.310600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 6.653870;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c1included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
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
									const C& reg19,
									const C& reg20)
{
	reg1 += 62.140500;
	reg4 += 81.099100;
	reg5 += 26.315200;
	reg6 += 43.578300;
	reg7 += 11.323100;

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
					reg19,
					reg20);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 47.024800;
	reg13 += 53.230900;
	reg15 += 37.299000;
	reg17 += 54.563700;
	reg20 += 26.464400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 83.660400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 1.755690;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 34.807100;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 82.560700;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c37included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 62.934700;
	reg4 += 92.078300;
	reg6 += 49.775500;
	reg15 += 44.034800;
	reg18 += 53.833400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 87.805800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 15.923200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 20.730100;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 71.762800;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c31included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 11.949900;
	reg2 += 26.343700;
	reg10 += 14.532200;
	reg15 += 28.039300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 84.713000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 27.737300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 56.550500;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 36.986300;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg7,
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
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg7 += 79.618100;
	reg13 += 1.662640;
	reg14 += 70.099700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 78.133000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 1.837010;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 86.331300;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 64.529800;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c14included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 60.675200;
	reg3 += 82.480100;
	reg8 += 34.473200;
	reg9 += 33.492300;
	reg13 += 5.222560;
	reg17 += 90.152000;
	reg18 += 81.007500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 75.310800;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 78.151000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 39.601400;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 44.096700;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 47.415600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c5included(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
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
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg0 += 37.665800;
	reg2 += 77.435900;
	reg13 += 0.172372;
	reg15 += 94.270500;
	reg16 += 39.763800;
	reg17 += 94.487500;
	reg18 += 91.011300;

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
					reg19,
					reg20);
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
									const C& reg5,
									C& reg6,
									C& reg7,
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
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 42.801100;
	reg6 += 78.941200;
	reg7 += 77.244900;
	reg11 += 59.270800;
	reg13 += 23.211200;
	reg20 += 78.831600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 88.104600;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 11.594500;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c13included(
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
									C& reg9,
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 61.561300;
	reg9 += 87.198400;
	reg12 += 43.709100;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 93.140800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 41.984100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 89.659100;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c22included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
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
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 44.141200;
	reg1 += 45.726000;
	reg16 += 9.340740;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 93.364100;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 17.889800;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 94.980400;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 1.264330;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 79.953200;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c15included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 14.847400;
	reg5 += 36.048200;
	reg9 += 59.977600;
	reg11 += 0.035340;
	reg16 += 57.500900;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 17.461600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 81.593400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 15.627800;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 74.224200;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c24included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 35.100600;
	reg4 += 80.541800;
	reg6 += 89.815700;
	reg16 += 17.487500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 23.194600;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 40.114200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 51.477700;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 84.636500;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 44.714800;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg10 += 46.101600;
	reg13 += 42.406000;
	reg15 += 28.572000;
	reg16 += 27.387300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 69.894100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 27.885900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 4.690660;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 44.264300;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 60.735400;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c8included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 78.121400;
	reg4 += 1.115380;
	reg10 += 15.899400;
	reg11 += 5.868840;
	reg12 += 28.689500;
	reg14 += 64.192400;
	reg15 += 11.625100;
	reg17 += 98.173100;
	reg19 += 66.397500;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 66.840800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 81.012400;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c36included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 44.268400;
	reg3 += 70.496600;
	reg15 += 18.022800;
	reg20 += 77.565800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 7.343160;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 79.748000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 50.860200;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 25.171100;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 54.580400;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 58.173700;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 68.010600;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c21included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
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
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 64.044600;
	reg12 += 55.927200;
	reg15 += 15.735600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 71.165100;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 77.283500;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 46.609100;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 89.288800;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 79.243000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c38included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 10.146000;
	reg6 += 8.431070;
	reg11 += 49.571500;
	reg12 += 41.755700;
	reg13 += 5.216960;
	reg18 += 65.703000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 11.716900;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 33.714600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 15.351700;
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
	x[totalThreadCount * 16 + globalThreadID] += 10.418300;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 94.276000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c25included(
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 90.176400;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 18.901300;
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
	x[totalThreadCount * 15 + globalThreadID] += 84.831400;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 71.431500;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 += 18.741500;
	reg8 += 14.988500;
	reg13 += 62.083400;
	reg18 += 69.183700;
	reg19 += 78.450300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 75.984600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 72.508900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 86.394400;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 47.716000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 23.615300;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c9included(
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
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 31.317700;
	reg13 += 79.993700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 19.408400;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 58.188600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 97.938000;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c33included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
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
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 80.740700;
	reg4 += 67.840200;
	reg9 += 10.485100;
	reg17 += 41.443300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 52.899100;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 46.360200;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 53.571900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 1.283140;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 56.836000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 39.608800;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c3included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg3 += 13.115400;
	reg4 += 46.093700;
	reg6 += 71.339200;
	reg8 += 63.454600;
	reg11 += 95.154400;
	reg12 += 31.305300;
	reg13 += 4.147130;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c23included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 65.264700;
	reg11 += 39.046400;
	reg14 += 6.142600;
	reg17 += 84.254600;
	reg19 += 68.813200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 27.852900;
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
	x[totalThreadCount * 13 + globalThreadID] += 18.162000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] += 20.770400;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 36.615100;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 += 37.087900;
	reg12 += 19.597900;
	reg20 += 93.859600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 63.169300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 37.722600;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c29included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 13.386700;
	reg2 += 6.628540;
	reg5 += 22.326100;
	reg6 += 50.571600;
	reg8 += 28.290200;
	reg16 += 49.382800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 27.578000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 82.319300;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 96.393500;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c19included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 += 61.874300;
	reg6 += 38.264100;
	reg8 += 19.020200;
	reg19 += 10.038600;

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
	x[totalThreadCount * 12 + globalThreadID] += 78.236800;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 38.934600;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 34.947900;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg13 += 50.430000;
	reg14 += 5.266760;
	reg15 += 45.332700;
	reg18 += 39.755100;
	reg19 += 48.036200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 56.038400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 92.908200;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 96.643500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 86.282600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 7.234550;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 23.041600;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c20included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 68.438400;
	reg2 += 68.622300;
	reg5 += 70.171200;
	reg11 += 10.304600;
	reg12 += 23.817600;
	reg15 += 81.653600;
	reg18 += 50.303800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 68.315400;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 82.507500;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 65.398600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 47.782900;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 14.680100;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 += 5.382990;
	reg10 += 86.694500;
	reg11 += 61.527500;
	reg15 += 78.893200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 81.601900;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 91.835900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 55.897400;
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
	x[totalThreadCount * 15 + globalThreadID] += 30.981600;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 94.551700;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg7 += 83.170100;
	reg8 += 33.202100;
	reg18 += 0.895781;
	reg19 += 88.610600;

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
	x[totalThreadCount * 11 + globalThreadID] += 66.264100;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 24.094100;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 46.947000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 8.708650;
	reg9 += 54.105200;
	reg20 += 18.884700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 87.633700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 56.608800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 6.494480;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 58.315600;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] += 46.857800;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] += 36.360900;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c6included(
									C& product,
									const C& globalProduct,
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
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20)
{
	reg4 += 13.590900;
	reg7 += 95.790400;
	reg8 += 84.579900;
	reg15 += 98.920800;
	reg17 += 1.931080;
	reg19 += 74.153500;
	reg20 += 46.572600;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c4included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg7 += 61.044500;
	reg11 += 41.117000;
	reg14 += 54.656000;
	reg15 += 0.825991;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg3 += 56.287000;
	reg4 += 55.111800;
	reg6 += 41.803800;
	reg7 += 92.618600;
	reg8 += 28.461500;
	reg9 += 72.698000;
	reg10 += 16.608400;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c35included(
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
									C& reg9,
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 89.830100;
	reg9 += 64.136000;
	reg12 += 80.707400;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 86.870800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 8.160530;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 89.911300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 90.644600;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 27.142600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 9.896420;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] += 74.863200;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 88.256600;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] += 32.630600;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c18included(
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
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 += 2.093590;
	reg13 += 14.287600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 57.592000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] += 84.493700;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] += 41.981700;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] += 62.106000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c10included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 64.465500;
	reg4 += 20.345300;
	reg7 += 56.660600;
	reg8 += 99.372000;
	reg10 += 86.072200;
	reg11 += 79.890200;
	reg13 += 50.662900;
	reg17 += 82.325300;
	reg18 += 81.661500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 19.820700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 78.881900;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c5excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
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
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg0 -= 37.665800;
	reg2 -= 77.435900;
	reg13 -= 0.172372;
	reg15 -= 94.270500;
	reg16 -= 39.763800;
	reg17 -= 94.487500;
	reg18 -= 91.011300;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c0excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
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
									const C& reg20)
{
	reg0 -= 62.010900;
	reg1 -= 48.700600;
	reg2 -= 21.527000;
	reg3 -= 84.199900;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c6excluded(
									C& product,
									const C& globalProduct,
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
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20)
{
	reg4 -= 13.590900;
	reg7 -= 95.790400;
	reg8 -= 84.579900;
	reg15 -= 98.920800;
	reg17 -= 1.931080;
	reg19 -= 74.153500;
	reg20 -= 46.572600;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c25excluded(
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 90.176400;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 18.901300;
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
	x[totalThreadCount * 15 + globalThreadID] -= 84.831400;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 71.431500;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c18excluded(
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
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg11 -= 2.093590;
	reg13 -= 14.287600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 57.592000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 84.493700;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 41.981700;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 62.106000;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c35excluded(
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
									C& reg9,
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 89.830100;
	reg9 -= 64.136000;
	reg12 -= 80.707400;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 86.870800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 8.160530;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 89.911300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 90.644600;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 27.142600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 9.896420;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 74.863200;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 88.256600;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 32.630600;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c36excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 44.268400;
	reg3 -= 70.496600;
	reg15 -= 18.022800;
	reg20 -= 77.565800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 7.343160;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 79.748000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 50.860200;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 25.171100;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 54.580400;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 58.173700;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 68.010600;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c21excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
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
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 64.044600;
	reg12 -= 55.927200;
	reg15 -= 15.735600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 71.165100;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 77.283500;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 46.609100;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 89.288800;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 79.243000;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c16excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 51.180700;
	reg5 -= 97.533300;
	reg8 -= 4.885110;
	reg10 -= 85.820200;
	reg11 -= 4.099130;
	reg19 -= 94.257000;
	reg20 -= 10.119500;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 96.871100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 48.922200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 25.365600;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 60.310600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	x[totalThreadCount * 11 + globalThreadID] -= 6.653870;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c10excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 64.465500;
	reg4 -= 20.345300;
	reg7 -= 56.660600;
	reg8 -= 99.372000;
	reg10 -= 86.072200;
	reg11 -= 79.890200;
	reg13 -= 50.662900;
	reg17 -= 82.325300;
	reg18 -= 81.661500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 19.820700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 78.881900;
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
					reg19,
					reg20);
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
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 47.024800;
	reg13 -= 53.230900;
	reg15 -= 37.299000;
	reg17 -= 54.563700;
	reg20 -= 26.464400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 83.660400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 1.755690;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 34.807100;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 82.560700;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c20excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 68.438400;
	reg2 -= 68.622300;
	reg5 -= 70.171200;
	reg11 -= 10.304600;
	reg12 -= 23.817600;
	reg15 -= 81.653600;
	reg18 -= 50.303800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 68.315400;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 82.507500;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 65.398600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 47.782900;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 14.680100;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c24excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 35.100600;
	reg4 -= 80.541800;
	reg6 -= 89.815700;
	reg16 -= 17.487500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 23.194600;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 40.114200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 51.477700;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 84.636500;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 44.714800;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg8 -= 84.116500;
	reg10 -= 91.304600;
	reg12 -= 29.925000;
	reg18 -= 5.403740;
	reg19 -= 40.977800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 27.423600;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 40.492300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 65.058500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 88.751100;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c33excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
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
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 80.740700;
	reg4 -= 67.840200;
	reg9 -= 10.485100;
	reg17 -= 41.443300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 52.899100;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 46.360200;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 53.571900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 1.283140;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 56.836000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 39.608800;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg3 -= 56.287000;
	reg4 -= 55.111800;
	reg6 -= 41.803800;
	reg7 -= 92.618600;
	reg8 -= 28.461500;
	reg9 -= 72.698000;
	reg10 -= 16.608400;

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
					reg19,
					reg20);
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
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 -= 18.741500;
	reg8 -= 14.988500;
	reg13 -= 62.083400;
	reg18 -= 69.183700;
	reg19 -= 78.450300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 75.984600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 72.508900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 86.394400;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 47.716000;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 23.615300;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c3excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg3 -= 13.115400;
	reg4 -= 46.093700;
	reg6 -= 71.339200;
	reg8 -= 63.454600;
	reg11 -= 95.154400;
	reg12 -= 31.305300;
	reg13 -= 4.147130;

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
					reg19,
					reg20);
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
									C& reg7,
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
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg7 -= 79.618100;
	reg13 -= 1.662640;
	reg14 -= 70.099700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 78.133000;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 1.837010;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 86.331300;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 64.529800;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c14excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 60.675200;
	reg3 -= 82.480100;
	reg8 -= 34.473200;
	reg9 -= 33.492300;
	reg13 -= 5.222560;
	reg17 -= 90.152000;
	reg18 -= 81.007500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 75.310800;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 78.151000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 39.601400;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 44.096700;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 47.415600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 -= 37.087900;
	reg12 -= 19.597900;
	reg20 -= 93.859600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 63.169300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 37.722600;
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
					reg19,
					reg20);
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
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg7 -= 83.170100;
	reg8 -= 33.202100;
	reg18 -= 0.895781;
	reg19 -= 88.610600;

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
	x[totalThreadCount * 11 + globalThreadID] -= 66.264100;
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 24.094100;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 46.947000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c37excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 62.934700;
	reg4 -= 92.078300;
	reg6 -= 49.775500;
	reg15 -= 44.034800;
	reg18 -= 53.833400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 87.805800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 15.923200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 20.730100;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 71.762800;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c1excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
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
									const C& reg19,
									const C& reg20)
{
	reg1 -= 62.140500;
	reg4 -= 81.099100;
	reg5 -= 26.315200;
	reg6 -= 43.578300;
	reg7 -= 11.323100;

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
					reg19,
					reg20);
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
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg10 -= 46.101600;
	reg13 -= 42.406000;
	reg15 -= 28.572000;
	reg16 -= 27.387300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 69.894100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 27.885900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 4.690660;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 44.264300;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 60.735400;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c13excluded(
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
									C& reg9,
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
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 61.561300;
	reg9 -= 87.198400;
	reg12 -= 43.709100;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 93.140800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 41.984100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 89.659100;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c38excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 10.146000;
	reg6 -= 8.431070;
	reg11 -= 49.571500;
	reg12 -= 41.755700;
	reg13 -= 5.216960;
	reg18 -= 65.703000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 11.716900;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 33.714600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 15.351700;
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
	x[totalThreadCount * 16 + globalThreadID] -= 10.418300;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 94.276000;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c19excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 61.874300;
	reg6 -= 38.264100;
	reg8 -= 19.020200;
	reg19 -= 10.038600;

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
	x[totalThreadCount * 12 + globalThreadID] -= 78.236800;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 38.934600;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 34.947900;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									const C& reg5,
									C& reg6,
									C& reg7,
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
									const C& reg18,
									const C& reg19,
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 42.801100;
	reg6 -= 78.941200;
	reg7 -= 77.244900;
	reg11 -= 59.270800;
	reg13 -= 23.211200;
	reg20 -= 78.831600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 88.104600;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 11.594500;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c23excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
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
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 65.264700;
	reg11 -= 39.046400;
	reg14 -= 6.142600;
	reg17 -= 84.254600;
	reg19 -= 68.813200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 27.852900;
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
	x[totalThreadCount * 13 + globalThreadID] -= 18.162000;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 20.770400;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 36.615100;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 8.708650;
	reg9 -= 54.105200;
	reg20 -= 18.884700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 87.633700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 56.608800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 6.494480;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 58.315600;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 46.857800;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	x[totalThreadCount * 18 + globalThreadID] -= 36.360900;
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c9excluded(
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
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg4 -= 31.317700;
	reg13 -= 79.993700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 19.408400;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 58.188600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 97.938000;
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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c8excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 78.121400;
	reg4 -= 1.115380;
	reg10 -= 15.899400;
	reg11 -= 5.868840;
	reg12 -= 28.689500;
	reg14 -= 64.192400;
	reg15 -= 11.625100;
	reg17 -= 98.173100;
	reg19 -= 66.397500;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 66.840800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 81.012400;
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
					reg19,
					reg20);
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
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg13 -= 50.430000;
	reg14 -= 5.266760;
	reg15 -= 45.332700;
	reg18 -= 39.755100;
	reg19 -= 48.036200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 56.038400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 92.908200;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 96.643500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 86.282600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 7.234550;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 23.041600;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c31excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 11.949900;
	reg2 -= 26.343700;
	reg10 -= 14.532200;
	reg15 -= 28.039300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 84.713000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 27.737300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 56.550500;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 36.986300;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 -= 5.382990;
	reg10 -= 86.694500;
	reg11 -= 61.527500;
	reg15 -= 78.893200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 81.601900;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 91.835900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 55.897400;
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
	x[totalThreadCount * 15 + globalThreadID] -= 30.981600;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	x[totalThreadCount * 17 + globalThreadID] -= 94.551700;
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c4excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20)
{
	reg7 -= 61.044500;
	reg11 -= 41.117000;
	reg14 -= 54.656000;
	reg15 -= 0.825991;

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c22excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
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
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 44.141200;
	reg1 -= 45.726000;
	reg16 -= 9.340740;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 93.364100;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	x[totalThreadCount * 13 + globalThreadID] -= 17.889800;
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	x[totalThreadCount * 14 + globalThreadID] -= 94.980400;
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 1.264330;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	x[totalThreadCount * 16 + globalThreadID] -= 79.953200;
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c29excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 13.386700;
	reg2 -= 6.628540;
	reg5 -= 22.326100;
	reg6 -= 50.571600;
	reg8 -= 28.290200;
	reg16 -= 49.382800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 27.578000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	x[totalThreadCount * 12 + globalThreadID] -= 82.319300;
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	x[totalThreadCount * 15 + globalThreadID] -= 96.393500;
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
}

template <class C>
__device__ __inline__ void c15excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 14.847400;
	reg5 -= 36.048200;
	reg9 -= 59.977600;
	reg11 -= 0.035340;
	reg16 -= 57.500900;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 17.461600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 81.593400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 15.627800;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 74.224200;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];
	globalProduct *= x[totalThreadCount * 11 + globalThreadID];
	globalProduct *= x[totalThreadCount * 12 + globalThreadID];
	globalProduct *= x[totalThreadCount * 13 + globalThreadID];
	globalProduct *= x[totalThreadCount * 14 + globalThreadID];
	globalProduct *= x[totalThreadCount * 15 + globalThreadID];
	globalProduct *= x[totalThreadCount * 16 + globalThreadID];
	globalProduct *= x[totalThreadCount * 17 + globalThreadID];
	globalProduct *= x[totalThreadCount * 18 + globalThreadID];

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
					reg19,
					reg20);
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

	C reg0 = -127.153275;
	C reg1 = -298.815500;
	C reg2 = -260.066670;
	C reg3 = -184.070150;
	C reg4 = -296.904790;
	C reg5 = -144.740950;
	C reg6 = -229.580980;
	C reg7 = -278.735150;
	C reg8 = -232.433405;
	C reg9 = -191.046300;
	C reg10 = -221.516550;
	C reg11 = -223.989650;
	C reg12 = -177.717350;
	C reg13 = -134.280281;
	C reg14 = -100.178730;
	C reg15 = -291.612695;
	C reg16 = -100.431520;
	C reg17 = -273.665290;
	C reg18 = -200.195711;
	C reg19 = -206.417050;
	C reg20 = -176.149100;

	x[totalThreadCount * 0 + globalThreadID] = -223.524930;
	x[totalThreadCount * 1 + globalThreadID] = -106.328065;
	x[totalThreadCount * 2 + globalThreadID] = -131.970950;
	x[totalThreadCount * 3 + globalThreadID] = -265.822250;
	x[totalThreadCount * 4 + globalThreadID] = -248.595695;
	x[totalThreadCount * 5 + globalThreadID] = -274.698000;
	x[totalThreadCount * 6 + globalThreadID] = -241.064200;
	x[totalThreadCount * 7 + globalThreadID] = -234.676135;
	x[totalThreadCount * 8 + globalThreadID] = -119.538220;
	x[totalThreadCount * 9 + globalThreadID] = -73.521700;
	x[totalThreadCount * 10 + globalThreadID] = -178.891650;
	x[totalThreadCount * 11 + globalThreadID] = -78.705835;
	x[totalThreadCount * 12 + globalThreadID] = -186.849300;
	x[totalThreadCount * 13 + globalThreadID] = -228.755775;
	x[totalThreadCount * 14 + globalThreadID] = -228.840950;
	x[totalThreadCount * 15 + globalThreadID] = -270.465465;
	x[totalThreadCount * 16 + globalThreadID] = -124.279300;
	x[totalThreadCount * 17 + globalThreadID] = -180.412700;
	x[totalThreadCount * 18 + globalThreadID] = -143.036250;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 62.010900;
		reg1 += 48.700600;
		reg2 += 21.527000;
		reg3 += 84.199900;
	}
	if ((gray >> 1) & 1LL)
	{
		reg1 += 62.140500;
		reg4 += 81.099100;
		reg5 += 26.315200;
		reg6 += 43.578300;
		reg7 += 11.323100;
	}
	if ((gray >> 2) & 1LL)
	{
		reg3 += 56.287000;
		reg4 += 55.111800;
		reg6 += 41.803800;
		reg7 += 92.618600;
		reg8 += 28.461500;
		reg9 += 72.698000;
		reg10 += 16.608400;
	}
	if ((gray >> 3) & 1LL)
	{
		reg3 += 13.115400;
		reg4 += 46.093700;
		reg6 += 71.339200;
		reg8 += 63.454600;
		reg11 += 95.154400;
		reg12 += 31.305300;
		reg13 += 4.147130;
	}
	if ((gray >> 4) & 1LL)
	{
		reg7 += 61.044500;
		reg11 += 41.117000;
		reg14 += 54.656000;
		reg15 += 0.825991;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 37.665800;
		reg2 += 77.435900;
		reg13 += 0.172372;
		reg15 += 94.270500;
		reg16 += 39.763800;
		reg17 += 94.487500;
		reg18 += 91.011300;
	}
	if ((gray >> 6) & 1LL)
	{
		reg4 += 13.590900;
		reg7 += 95.790400;
		reg8 += 84.579900;
		reg15 += 98.920800;
		reg17 += 1.931080;
		reg19 += 74.153500;
		reg20 += 46.572600;
	}
	if ((gray >> 7) & 1LL)
	{
		reg4 += 42.801100;
		reg6 += 78.941200;
		reg7 += 77.244900;
		reg11 += 59.270800;
		reg13 += 23.211200;
		reg20 += 78.831600;
		x[totalThreadCount * 0 + globalThreadID] += 88.104600;
		x[totalThreadCount * 1 + globalThreadID] += 11.594500;
	}
	if ((gray >> 8) & 1LL)
	{
		reg1 += 78.121400;
		reg4 += 1.115380;
		reg10 += 15.899400;
		reg11 += 5.868840;
		reg12 += 28.689500;
		reg14 += 64.192400;
		reg15 += 11.625100;
		reg17 += 98.173100;
		reg19 += 66.397500;
		x[totalThreadCount * 0 + globalThreadID] += 66.840800;
		x[totalThreadCount * 2 + globalThreadID] += 81.012400;
	}
	if ((gray >> 9) & 1LL)
	{
		reg4 += 31.317700;
		reg13 += 79.993700;
		x[totalThreadCount * 0 + globalThreadID] += 19.408400;
		x[totalThreadCount * 3 + globalThreadID] += 58.188600;
		x[totalThreadCount * 4 + globalThreadID] += 97.938000;
	}
	if ((gray >> 10) & 1LL)
	{
		reg1 += 64.465500;
		reg4 += 20.345300;
		reg7 += 56.660600;
		reg8 += 99.372000;
		reg10 += 86.072200;
		reg11 += 79.890200;
		reg13 += 50.662900;
		reg17 += 82.325300;
		reg18 += 81.661500;
		x[totalThreadCount * 3 + globalThreadID] += 19.820700;
		x[totalThreadCount * 5 + globalThreadID] += 78.881900;
	}
	if ((gray >> 11) & 1LL)
	{
		reg5 += 37.087900;
		reg12 += 19.597900;
		reg20 += 93.859600;
		x[totalThreadCount * 5 + globalThreadID] += 63.169300;
		x[totalThreadCount * 6 + globalThreadID] += 37.722600;
	}
	if ((gray >> 12) & 1LL)
	{
		reg1 += 47.024800;
		reg13 += 53.230900;
		reg15 += 37.299000;
		reg17 += 54.563700;
		reg20 += 26.464400;
		x[totalThreadCount * 3 + globalThreadID] += 83.660400;
		x[totalThreadCount * 4 + globalThreadID] += 1.755690;
		x[totalThreadCount * 6 + globalThreadID] += 34.807100;
		x[totalThreadCount * 7 + globalThreadID] += 82.560700;
	}
	if ((gray >> 13) & 1LL)
	{
		reg3 += 61.561300;
		reg9 += 87.198400;
		reg12 += 43.709100;
		x[totalThreadCount * 7 + globalThreadID] += 93.140800;
		x[totalThreadCount * 8 + globalThreadID] += 41.984100;
		x[totalThreadCount * 9 + globalThreadID] += 89.659100;
	}
	if ((gray >> 14) & 1LL)
	{
		reg2 += 60.675200;
		reg3 += 82.480100;
		reg8 += 34.473200;
		reg9 += 33.492300;
		reg13 += 5.222560;
		reg17 += 90.152000;
		reg18 += 81.007500;
		x[totalThreadCount * 4 + globalThreadID] += 75.310800;
		x[totalThreadCount * 5 + globalThreadID] += 78.151000;
		x[totalThreadCount * 7 + globalThreadID] += 39.601400;
		x[totalThreadCount * 8 + globalThreadID] += 44.096700;
		x[totalThreadCount * 10 + globalThreadID] += 47.415600;
	}
	if ((gray >> 15) & 1LL)
	{
		reg1 += 14.847400;
		reg5 += 36.048200;
		reg9 += 59.977600;
		reg11 += 0.035340;
		reg16 += 57.500900;
		x[totalThreadCount * 1 + globalThreadID] += 17.461600;
		x[totalThreadCount * 5 + globalThreadID] += 81.593400;
		x[totalThreadCount * 9 + globalThreadID] += 15.627800;
		x[totalThreadCount * 10 + globalThreadID] += 74.224200;
	}
	if ((gray >> 16) & 1LL)
	{
		reg2 += 51.180700;
		reg5 += 97.533300;
		reg8 += 4.885110;
		reg10 += 85.820200;
		reg11 += 4.099130;
		reg19 += 94.257000;
		reg20 += 10.119500;
		x[totalThreadCount * 0 + globalThreadID] += 96.871100;
		x[totalThreadCount * 8 + globalThreadID] += 48.922200;
		x[totalThreadCount * 9 + globalThreadID] += 25.365600;
		x[totalThreadCount * 10 + globalThreadID] += 60.310600;
		x[totalThreadCount * 11 + globalThreadID] += 6.653870;
	}
	if ((gray >> 17) & 1LL)
	{
		reg7 += 83.170100;
		reg8 += 33.202100;
		reg18 += 0.895781;
		reg19 += 88.610600;
		x[totalThreadCount * 11 + globalThreadID] += 66.264100;
		x[totalThreadCount * 12 + globalThreadID] += 24.094100;
		x[totalThreadCount * 13 + globalThreadID] += 46.947000;
	}
	if ((gray >> 18) & 1LL)
	{
		reg11 += 2.093590;
		reg13 += 14.287600;
		x[totalThreadCount * 7 + globalThreadID] += 57.592000;
		x[totalThreadCount * 11 + globalThreadID] += 84.493700;
		x[totalThreadCount * 12 + globalThreadID] += 41.981700;
		x[totalThreadCount * 14 + globalThreadID] += 62.106000;
	}
	if ((gray >> 19) & 1LL)
	{
		reg4 += 61.874300;
		reg6 += 38.264100;
		reg8 += 19.020200;
		reg19 += 10.038600;
		x[totalThreadCount * 12 + globalThreadID] += 78.236800;
		x[totalThreadCount * 14 + globalThreadID] += 38.934600;
		x[totalThreadCount * 15 + globalThreadID] += 34.947900;
	}
	if ((gray >> 20) & 1LL)
	{
		reg1 += 68.438400;
		reg2 += 68.622300;
		reg5 += 70.171200;
		reg11 += 10.304600;
		reg12 += 23.817600;
		reg15 += 81.653600;
		reg18 += 50.303800;
		x[totalThreadCount * 4 + globalThreadID] += 68.315400;
		x[totalThreadCount * 6 + globalThreadID] += 82.507500;
		x[totalThreadCount * 8 + globalThreadID] += 65.398600;
		x[totalThreadCount * 13 + globalThreadID] += 47.782900;
		x[totalThreadCount * 14 + globalThreadID] += 14.680100;
	}
	if ((gray >> 21) & 1LL)
	{
		reg2 += 64.044600;
		reg12 += 55.927200;
		reg15 += 15.735600;
		x[totalThreadCount * 5 + globalThreadID] += 71.165100;
		x[totalThreadCount * 7 + globalThreadID] += 77.283500;
		x[totalThreadCount * 13 + globalThreadID] += 46.609100;
		x[totalThreadCount * 14 + globalThreadID] += 89.288800;
		x[totalThreadCount * 16 + globalThreadID] += 79.243000;
	}
	if ((gray >> 22) & 1LL)
	{
		reg0 += 44.141200;
		reg1 += 45.726000;
		reg16 += 9.340740;
		x[totalThreadCount * 6 + globalThreadID] += 93.364100;
		x[totalThreadCount * 13 + globalThreadID] += 17.889800;
		x[totalThreadCount * 14 + globalThreadID] += 94.980400;
		x[totalThreadCount * 15 + globalThreadID] += 1.264330;
		x[totalThreadCount * 16 + globalThreadID] += 79.953200;
	}
	if ((gray >> 23) & 1LL)
	{
		reg1 += 65.264700;
		reg11 += 39.046400;
		reg14 += 6.142600;
		reg17 += 84.254600;
		reg19 += 68.813200;
		x[totalThreadCount * 3 + globalThreadID] += 27.852900;
		x[totalThreadCount * 13 + globalThreadID] += 18.162000;
		x[totalThreadCount * 16 + globalThreadID] += 20.770400;
		x[totalThreadCount * 17 + globalThreadID] += 36.615100;
	}
	if ((gray >> 24) & 1LL)
	{
		reg1 += 35.100600;
		reg4 += 80.541800;
		reg6 += 89.815700;
		reg16 += 17.487500;
		x[totalThreadCount * 2 + globalThreadID] += 23.194600;
		x[totalThreadCount * 7 + globalThreadID] += 40.114200;
		x[totalThreadCount * 10 + globalThreadID] += 51.477700;
		x[totalThreadCount * 13 + globalThreadID] += 84.636500;
		x[totalThreadCount * 15 + globalThreadID] += 44.714800;
	}
	if ((gray >> 25) & 1LL)
	{
		x[totalThreadCount * 4 + globalThreadID] += 90.176400;
		x[totalThreadCount * 5 + globalThreadID] += 18.901300;
		x[totalThreadCount * 15 + globalThreadID] += 84.831400;
		x[totalThreadCount * 18 + globalThreadID] += 71.431500;
	}
	if ((gray >> 26) & 1LL)
	{
		reg7 += 79.618100;
		reg13 += 1.662640;
		reg14 += 70.099700;
		x[totalThreadCount * 2 + globalThreadID] += 78.133000;
		x[totalThreadCount * 7 + globalThreadID] += 1.837010;
		x[totalThreadCount * 15 + globalThreadID] += 86.331300;
		x[totalThreadCount * 17 + globalThreadID] += 64.529800;
	}
	if ((gray >> 27) & 1LL)
	{
		reg0 += 8.708650;
		reg9 += 54.105200;
		reg20 += 18.884700;
		x[totalThreadCount * 1 + globalThreadID] += 87.633700;
		x[totalThreadCount * 7 + globalThreadID] += 56.608800;
		x[totalThreadCount * 9 + globalThreadID] += 6.494480;
		x[totalThreadCount * 12 + globalThreadID] += 58.315600;
		x[totalThreadCount * 15 + globalThreadID] += 46.857800;
		x[totalThreadCount * 18 + globalThreadID] += 36.360900;
	}
	if ((gray >> 28) & 1LL)
	{
		reg13 += 50.430000;
		reg14 += 5.266760;
		reg15 += 45.332700;
		reg18 += 39.755100;
		reg19 += 48.036200;
		x[totalThreadCount * 3 + globalThreadID] += 56.038400;
		x[totalThreadCount * 5 + globalThreadID] += 92.908200;
		x[totalThreadCount * 8 + globalThreadID] += 96.643500;
		x[totalThreadCount * 10 + globalThreadID] += 86.282600;
		x[totalThreadCount * 13 + globalThreadID] += 7.234550;
		x[totalThreadCount * 15 + globalThreadID] += 23.041600;
	}
	if ((gray >> 29) & 1LL)
	{
		reg1 += 13.386700;
		reg2 += 6.628540;
		reg5 += 22.326100;
		reg6 += 50.571600;
		reg8 += 28.290200;
		reg16 += 49.382800;
		x[totalThreadCount * 6 + globalThreadID] += 27.578000;
		x[totalThreadCount * 12 + globalThreadID] += 82.319300;
		x[totalThreadCount * 15 + globalThreadID] += 96.393500;
	}
	if ((gray >> 30) & 1LL)
	{
		reg10 += 46.101600;
		reg13 += 42.406000;
		reg15 += 28.572000;
		reg16 += 27.387300;
		x[totalThreadCount * 0 + globalThreadID] += 69.894100;
		x[totalThreadCount * 3 + globalThreadID] += 27.885900;
		x[totalThreadCount * 7 + globalThreadID] += 4.690660;
		x[totalThreadCount * 14 + globalThreadID] += 44.264300;
		x[totalThreadCount * 17 + globalThreadID] += 60.735400;
	}
	if ((gray >> 31) & 1LL)
	{
		reg0 += 11.949900;
		reg2 += 26.343700;
		reg10 += 14.532200;
		reg15 += 28.039300;
		x[totalThreadCount * 5 + globalThreadID] += 84.713000;
		x[totalThreadCount * 6 + globalThreadID] += 27.737300;
		x[totalThreadCount * 13 + globalThreadID] += 56.550500;
		x[totalThreadCount * 15 + globalThreadID] += 36.986300;
	}
	if ((gray >> 32) & 1LL)
	{
		reg6 += 5.382990;
		reg10 += 86.694500;
		reg11 += 61.527500;
		reg15 += 78.893200;
		x[totalThreadCount * 2 + globalThreadID] += 81.601900;
		x[totalThreadCount * 3 + globalThreadID] += 91.835900;
		x[totalThreadCount * 5 + globalThreadID] += 55.897400;
		x[totalThreadCount * 15 + globalThreadID] += 30.981600;
		x[totalThreadCount * 17 + globalThreadID] += 94.551700;
	}
	if ((gray >> 33) & 1LL)
	{
		reg2 += 80.740700;
		reg4 += 67.840200;
		reg9 += 10.485100;
		reg17 += 41.443300;
		x[totalThreadCount * 3 + globalThreadID] += 52.899100;
		x[totalThreadCount * 4 + globalThreadID] += 46.360200;
		x[totalThreadCount * 6 + globalThreadID] += 53.571900;
		x[totalThreadCount * 8 + globalThreadID] += 1.283140;
		x[totalThreadCount * 13 + globalThreadID] += 56.836000;
		x[totalThreadCount * 18 + globalThreadID] += 39.608800;
	}
	if ((gray >> 34) & 1LL)
	{
		reg8 += 84.116500;
		reg10 += 91.304600;
		reg12 += 29.925000;
		reg18 += 5.403740;
		reg19 += 40.977800;
		x[totalThreadCount * 4 + globalThreadID] += 27.423600;
		x[totalThreadCount * 6 + globalThreadID] += 40.492300;
		x[totalThreadCount * 10 + globalThreadID] += 65.058500;
		x[totalThreadCount * 12 + globalThreadID] += 88.751100;
	}
	if ((gray >> 35) & 1LL)
	{
		reg0 += 89.830100;
		reg9 += 64.136000;
		reg12 += 80.707400;
		x[totalThreadCount * 0 + globalThreadID] += 86.870800;
		x[totalThreadCount * 1 + globalThreadID] += 8.160530;
		x[totalThreadCount * 4 + globalThreadID] += 89.911300;
		x[totalThreadCount * 6 + globalThreadID] += 90.644600;
		x[totalThreadCount * 8 + globalThreadID] += 27.142600;
		x[totalThreadCount * 9 + globalThreadID] += 9.896420;
		x[totalThreadCount * 13 + globalThreadID] += 74.863200;
		x[totalThreadCount * 14 + globalThreadID] += 88.256600;
		x[totalThreadCount * 17 + globalThreadID] += 32.630600;
	}
	if ((gray >> 36) & 1LL)
	{
		reg1 += 44.268400;
		reg3 += 70.496600;
		reg15 += 18.022800;
		reg20 += 77.565800;
		x[totalThreadCount * 0 + globalThreadID] += 7.343160;
		x[totalThreadCount * 3 + globalThreadID] += 79.748000;
		x[totalThreadCount * 6 + globalThreadID] += 50.860200;
		x[totalThreadCount * 14 + globalThreadID] += 25.171100;
		x[totalThreadCount * 15 + globalThreadID] += 54.580400;
		x[totalThreadCount * 16 + globalThreadID] += 58.173700;
		x[totalThreadCount * 18 + globalThreadID] += 68.010600;
	}
	if ((gray >> 37) & 1LL)
	{
		reg2 += 62.934700;
		reg4 += 92.078300;
		reg6 += 49.775500;
		reg15 += 44.034800;
		reg18 += 53.833400;
		x[totalThreadCount * 1 + globalThreadID] += 87.805800;
		x[totalThreadCount * 7 + globalThreadID] += 15.923200;
		x[totalThreadCount * 10 + globalThreadID] += 20.730100;
		x[totalThreadCount * 17 + globalThreadID] += 71.762800;
	}
	if ((gray >> 38) & 1LL)
	{
		reg1 += 10.146000;
		reg6 += 8.431070;
		reg11 += 49.571500;
		reg12 += 41.755700;
		reg13 += 5.216960;
		reg18 += 65.703000;
		x[totalThreadCount * 0 + globalThreadID] += 11.716900;
		x[totalThreadCount * 3 + globalThreadID] += 33.714600;
		x[totalThreadCount * 6 + globalThreadID] += 15.351700;
		x[totalThreadCount * 16 + globalThreadID] += 10.418300;
		x[totalThreadCount * 18 + globalThreadID] += 94.276000;
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20);
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
								reg19,
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
								reg20,
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
