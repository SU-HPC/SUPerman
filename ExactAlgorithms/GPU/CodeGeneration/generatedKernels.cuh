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
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
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
	product *= reg21;
	product *= reg22;
	product *= reg23;
	product *= reg24;
	product *= reg25;
	product *= reg26;
	product *= reg27;
	product *= reg28;
	product *= reg29;
	product *= reg30;
	product *= reg31;
	product *= reg32;
	product *= reg33;
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
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
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
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg0 += 78.898100;
	reg1 += 18.802200;
	reg2 += 11.331800;
	reg3 += 24.254000;
	reg4 += 36.457800;
	reg5 += 32.350900;
	reg6 += 13.399400;
	reg7 += 83.938400;
	reg8 += 6.689480;
	reg9 += 54.013500;
	reg10 += 39.203500;
	reg11 += 66.768200;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c36included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 63.206100;
	reg2 += 43.407000;
	reg4 += 49.226700;
	reg8 += 46.979100;
	reg9 += 55.719700;
	reg11 += 50.883100;
	reg13 += 7.841390;
	reg16 += 61.184000;
	reg19 += 68.098300;
	reg23 += 81.678800;
	reg25 += 43.043200;
	reg31 += 8.542850;
	reg32 += 82.071500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 69.065800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 44.893400;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 79.943000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 82.435600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 63.866500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c15included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
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
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 76.000700;
	reg1 += 11.525200;
	reg2 += 58.157900;
	reg3 += 30.183200;
	reg6 += 85.277300;
	reg9 += 13.652000;
	reg11 += 16.588400;
	reg19 += 3.036180;
	reg20 += 61.845000;
	reg22 += 29.912900;
	reg27 += 31.007600;
	reg30 += 43.537700;
	reg33 += 64.712000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 68.652400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 89.157100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c13included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
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
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 12.570700;
	reg1 += 72.449100;
	reg7 += 72.984400;
	reg9 += 46.018300;
	reg10 += 99.206400;
	reg19 += 47.837800;
	reg25 += 35.770800;
	reg26 += 21.200700;
	reg27 += 69.166600;
	reg33 += 34.399100;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 85.613600;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 53.445300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 23.231700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 49.003300;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c12included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 85.680500;
	reg5 += 39.552200;
	reg6 += 65.832700;
	reg10 += 13.698400;
	reg13 += 57.699400;
	reg14 += 4.570600;
	reg16 += 36.894800;
	reg19 += 76.334400;
	reg20 += 67.269500;
	reg21 += 99.870400;
	reg25 += 67.738000;
	reg33 += 46.131200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 56.686100;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 55.135300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 63.084000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 88.549200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c14included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 35.398400;
	reg2 += 14.583600;
	reg4 += 5.756730;
	reg5 += 54.532900;
	reg6 += 81.834600;
	reg7 += 39.955700;
	reg8 += 67.627300;
	reg11 += 18.907200;
	reg13 += 80.601800;
	reg14 += 49.890400;
	reg15 += 87.479100;
	reg18 += 33.765500;
	reg20 += 41.841500;
	reg24 += 57.419300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 30.849200;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 96.269300;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 26.774000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 18.060200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									const C& reg5,
									C& reg6,
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
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 += 55.031500;
	reg8 += 81.327500;
	reg13 += 79.308400;
	reg14 += 37.636500;
	reg17 += 18.917400;
	reg21 += 11.799900;
	reg24 += 47.637000;
	reg25 += 77.397000;
	reg26 += 65.289800;
	reg27 += 48.842600;
	reg29 += 70.917600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 0.104331;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 44.676600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 7.300830;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 += 40.448400;
	reg5 += 11.675400;
	reg6 += 87.869100;
	reg7 += 57.777000;
	reg10 += 10.728100;
	reg12 += 85.866000;
	reg14 += 35.638000;
	reg17 += 58.929200;
	reg28 += 83.251500;
	reg29 += 53.999600;
	reg32 += 10.769100;
	reg33 += 29.713300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 22.258700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 92.433200;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 60.138400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 87.415900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c29included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
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
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 15.486400;
	reg3 += 97.505700;
	reg5 += 69.577600;
	reg11 += 95.567300;
	reg12 += 9.809400;
	reg15 += 46.530300;
	reg19 += 46.284100;
	reg22 += 16.945800;
	reg23 += 64.351200;
	reg26 += 73.167500;
	reg27 += 77.374400;
	reg28 += 78.424600;
	reg30 += 14.166300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 50.522200;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 83.849500;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 16.610300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 88.538800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 48.919500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c11included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 55.169100;
	reg2 += 78.666800;
	reg3 += 38.622600;
	reg5 += 83.011600;
	reg6 += 27.311900;
	reg7 += 87.624500;
	reg13 += 28.050800;
	reg15 += 42.928300;
	reg18 += 16.614500;
	reg21 += 11.059300;
	reg25 += 53.234800;
	reg28 += 69.403500;
	reg29 += 95.353400;
	reg33 += 88.900400;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 93.532300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 63.591100;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 15.968400;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 19.036800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 45.701500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 25.256800;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 54.609500;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 += 13.523200;
	reg6 += 97.830700;
	reg10 += 31.302300;
	reg12 += 40.641700;
	reg13 += 37.223100;
	reg20 += 60.132600;
	reg21 += 42.235700;
	reg23 += 75.892200;
	reg26 += 56.929400;
	reg33 += 57.800600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 15.129300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 72.932700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 55.833400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 42.666200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 14.717500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 14.206700;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 39.076900;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c26included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 50.058100;
	reg1 += 33.477200;
	reg2 += 21.018000;
	reg4 += 3.067870;
	reg8 += 48.874100;
	reg9 += 96.290600;
	reg11 += 9.185260;
	reg12 += 65.627300;
	reg21 += 38.464100;
	reg23 += 7.095630;
	reg24 += 21.662600;
	reg25 += 98.594100;
	reg26 += 37.931200;
	reg27 += 33.882600;
	reg30 += 27.816600;
	reg31 += 53.661400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 54.741500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 95.765300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 2.965230;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 77.254000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 57.557400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 56.112400;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c32included(
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
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 23.943400;
	reg3 += 89.285700;
	reg10 += 44.369800;
	reg13 += 16.365600;
	reg14 += 31.896300;
	reg15 += 81.116800;
	reg16 += 88.474600;
	reg21 += 6.494680;
	reg23 += 63.476900;
	reg27 += 2.343620;
	reg29 += 26.053300;
	reg30 += 11.260100;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 45.689100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 21.932700;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 49.988200;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 95.463500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c21included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 76.005500;
	reg1 += 98.067200;
	reg6 += 2.764330;
	reg7 += 8.009930;
	reg9 += 59.821900;
	reg10 += 62.140800;
	reg11 += 24.736500;
	reg12 += 48.568500;
	reg14 += 53.251600;
	reg18 += 7.631010;
	reg19 += 14.411600;
	reg20 += 39.025800;
	reg21 += 2.996840;
	reg24 += 92.224400;
	reg26 += 15.170500;
	reg27 += 97.358200;
	reg28 += 49.471400;
	reg29 += 74.988500;
	reg31 += 89.933100;
	reg32 += 50.059100;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 27.050800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 99.942800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 36.587900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 79.829700;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 40.447600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 40.045800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 41.901500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c39included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 49.045300;
	reg2 += 94.255800;
	reg3 += 42.425400;
	reg4 += 49.544900;
	reg5 += 40.682400;
	reg7 += 19.948800;
	reg9 += 15.055000;
	reg10 += 65.119500;
	reg13 += 24.623600;
	reg16 += 94.694000;
	reg20 += 38.655400;
	reg22 += 60.801100;
	reg23 += 54.094100;
	reg27 += 90.405200;
	reg30 += 26.249100;
	reg31 += 41.628600;
	reg32 += 27.681600;
	reg33 += 15.695000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 27.157500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 16.961000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 90.493900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 2.333680;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 79.511900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 85.845500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c30included(
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
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 56.280800;
	reg2 += 31.186900;
	reg5 += 15.049400;
	reg6 += 76.497000;
	reg11 += 68.822300;
	reg14 += 51.337100;
	reg20 += 67.592800;
	reg22 += 48.070100;
	reg23 += 46.017300;
	reg25 += 91.011500;
	reg29 += 25.410200;
	reg31 += 72.133600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 56.919000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 19.963900;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 95.544800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 32.929500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 19.146000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 69.513700;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 75.704400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c31included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
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
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 82.591500;
	reg7 += 9.639360;
	reg8 += 20.567900;
	reg9 += 58.525500;
	reg13 += 64.871400;
	reg14 += 47.629500;
	reg16 += 55.335200;
	reg18 += 47.259100;
	reg19 += 21.066300;
	reg22 += 87.768000;
	reg23 += 38.768200;
	reg25 += 2.941690;
	reg31 += 20.818800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 61.325200;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 63.491600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 52.684500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c34included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 69.335500;
	reg6 += 9.850570;
	reg10 += 63.842500;
	reg15 += 97.074700;
	reg16 += 21.779900;
	reg17 += 17.072500;
	reg18 += 76.107800;
	reg19 += 30.057200;
	reg25 += 24.722300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 38.971700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 1.447980;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 19.411800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 68.240500;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 79.563900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c37included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 76.210800;
	reg5 += 94.580100;
	reg6 += 45.253500;
	reg10 += 26.145700;
	reg11 += 70.378600;
	reg12 += 11.198600;
	reg13 += 74.490100;
	reg15 += 34.890400;
	reg19 += 75.368200;
	reg22 += 63.244800;
	reg23 += 67.688600;
	reg26 += 48.852700;
	reg28 += 31.861700;
	reg29 += 43.949100;
	reg31 += 18.358200;
	reg33 += 27.552600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 22.900800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 13.707700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 50.165200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 78.924500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 13.415600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c25included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 53.350100;
	reg3 += 65.532200;
	reg4 += 30.683300;
	reg5 += 85.987800;
	reg7 += 0.013368;
	reg10 += 0.780469;
	reg13 += 78.849400;
	reg14 += 21.945100;
	reg16 += 92.339200;
	reg17 += 87.778800;
	reg18 += 30.687500;
	reg19 += 69.870900;
	reg23 += 88.770900;
	reg24 += 68.297200;
	reg26 += 37.673600;
	reg27 += 81.803900;
	reg29 += 84.155400;
	reg31 += 73.704000;
	reg33 += 76.889700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 80.978900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 21.141700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 56.850100;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c28included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
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
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 64.462500;
	reg1 += 51.887400;
	reg3 += 66.493500;
	reg5 += 11.661400;
	reg6 += 62.894500;
	reg7 += 25.599600;
	reg10 += 94.332600;
	reg18 += 16.709300;
	reg23 += 82.294400;
	reg24 += 87.581200;
	reg25 += 6.025410;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 99.537800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 63.220700;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 31.225900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 29.330800;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 91.820200;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c10included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 82.503600;
	reg1 += 15.015400;
	reg7 += 79.555200;
	reg8 += 11.034100;
	reg9 += 52.499400;
	reg11 += 33.912500;
	reg14 += 9.791940;
	reg16 += 4.428550;
	reg17 += 57.147000;
	reg18 += 28.065700;
	reg20 += 46.698200;
	reg21 += 7.811430;
	reg22 += 60.747900;
	reg23 += 82.282300;
	reg26 += 7.964140;
	reg28 += 26.580700;
	reg29 += 49.727800;
	reg30 += 12.511700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 17.094700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 83.908300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 91.453700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 14.319500;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 12.807300;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c44included(
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
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 91.369400;
	reg14 += 65.268800;
	reg15 += 82.169600;
	reg19 += 88.316300;
	reg20 += 52.121100;
	reg21 += 38.644000;
	reg23 += 16.623000;
	reg24 += 79.924300;
	reg25 += 36.999400;
	reg28 += 19.583200;
	reg32 += 82.127700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 3.269030;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 10.374800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 81.574300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 5.315020;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 2.681090;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 95.631600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c42included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
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
									C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 25.154200;
	reg2 += 46.592500;
	reg5 += 85.809200;
	reg6 += 55.063100;
	reg10 += 68.140400;
	reg18 += 32.435200;
	reg20 += 4.336320;
	reg24 += 38.248200;
	reg25 += 34.580800;
	reg27 += 32.155400;
	reg29 += 93.451200;
	reg31 += 2.400710;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 7.589620;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 82.771400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 96.980400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 99.071600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c6included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 28.288000;
	reg2 += 62.207500;
	reg3 += 36.043600;
	reg5 += 30.413300;
	reg6 += 10.011600;
	reg9 += 70.493900;
	reg11 += 15.630600;
	reg13 += 19.553400;
	reg15 += 65.577800;
	reg16 += 80.768700;
	reg18 += 39.862300;
	reg19 += 19.936000;
	reg21 += 90.341800;
	reg23 += 21.459700;
	reg24 += 21.472400;
	reg26 += 75.445600;
	reg31 += 68.177200;
	reg33 += 35.528800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 46.915500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 78.049100;
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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c7included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
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
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 64.139300;
	reg1 += 38.377500;
	reg3 += 44.299700;
	reg4 += 85.308200;
	reg14 += 83.114500;
	reg16 += 23.034800;
	reg18 += 40.212500;
	reg19 += 70.364400;
	reg21 += 67.222800;
	reg23 += 63.040700;
	reg25 += 84.879200;
	reg28 += 11.613300;
	reg30 += 4.663550;
	reg33 += 27.494700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 38.384100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 6.253780;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 3.517550;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 1.199250;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c3included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg1 += 50.902900;
	reg2 += 58.173700;
	reg6 += 36.872000;
	reg8 += 99.571900;
	reg10 += 5.862970;
	reg12 += 38.419800;
	reg13 += 72.730400;
	reg14 += 5.718380;
	reg16 += 11.007700;
	reg18 += 31.276600;
	reg21 += 12.759600;
	reg22 += 5.660170;
	reg24 += 4.856870;
	reg25 += 99.795600;
	reg26 += 79.236900;
	reg27 += 45.701600;
	reg28 += 93.996300;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c4included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg2 += 59.966100;
	reg3 += 28.123300;
	reg4 += 51.611700;
	reg5 += 46.596100;
	reg6 += 57.926100;
	reg8 += 9.190050;
	reg12 += 57.365600;
	reg13 += 90.451900;
	reg20 += 45.750100;
	reg21 += 88.861900;
	reg25 += 8.275910;
	reg26 += 5.907540;
	reg27 += 97.759800;
	reg28 += 77.892700;
	reg29 += 91.106200;
	reg30 += 80.776500;
	reg31 += 81.392800;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 25.117100;
	reg5 += 6.851540;
	reg9 += 56.731700;
	reg10 += 92.638300;
	reg11 += 82.104900;
	reg13 += 3.875140;
	reg14 += 70.313400;
	reg21 += 96.042700;
	reg22 += 76.426400;
	reg23 += 51.017700;
	reg24 += 55.432800;
	reg25 += 91.661500;
	reg29 += 45.848800;
	reg30 += 80.987600;
	reg33 += 76.446600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 97.103600;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 12.784400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 35.890200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c2included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg1 += 7.015760;
	reg2 += 26.166900;
	reg4 += 26.083800;
	reg6 += 28.270300;
	reg7 += 86.293700;
	reg9 += 66.955900;
	reg11 += 50.111900;
	reg14 += 43.553000;
	reg15 += 70.286900;
	reg18 += 33.255400;
	reg20 += 26.694200;
	reg21 += 29.095100;
	reg22 += 22.731400;
	reg23 += 71.868000;
	reg24 += 88.016200;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c5included(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									C& reg33)
{
	reg0 += 34.769100;
	reg5 += 65.060900;
	reg8 += 60.452100;
	reg9 += 59.981000;
	reg12 += 89.439000;
	reg15 += 13.560200;
	reg16 += 65.175400;
	reg19 += 29.519100;
	reg23 += 0.091091;
	reg26 += 80.540400;
	reg29 += 45.415300;
	reg31 += 62.632100;
	reg32 += 28.710000;
	reg33 += 8.905560;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c23included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									const C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 7.677490;
	reg4 += 73.866900;
	reg6 += 26.599800;
	reg7 += 95.975700;
	reg8 += 74.671100;
	reg15 += 27.387200;
	reg17 += 42.768300;
	reg22 += 39.511400;
	reg25 += 28.865600;
	reg30 += 25.813000;
	reg33 += 94.448800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 78.477800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 47.326600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 40.252100;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 10.004000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 55.185400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 70.814400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 56.936700;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c9included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
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
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 79.429500;
	reg2 += 16.145700;
	reg3 += 46.868800;
	reg5 += 41.097600;
	reg6 += 22.247500;
	reg13 += 85.434200;
	reg14 += 39.369100;
	reg17 += 17.122800;
	reg18 += 64.921400;
	reg19 += 27.212500;
	reg22 += 7.720580;
	reg30 += 48.442400;
	reg33 += 7.792520;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 81.528300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 47.403600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 64.352300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg18,
									C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 62.356700;
	reg5 += 94.947500;
	reg18 += 88.048800;
	reg19 += 87.160900;
	reg20 += 50.795300;
	reg23 += 43.867100;
	reg29 += 65.306700;
	reg30 += 17.949000;
	reg33 += 71.066300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 72.538000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 85.442000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 78.691300;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 85.461500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 1.114420;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 5.733950;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 5.786660;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c8included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
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
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 46.498200;
	reg3 += 95.826900;
	reg5 += 11.009600;
	reg6 += 38.254300;
	reg7 += 50.947100;
	reg8 += 64.419100;
	reg14 += 72.036400;
	reg17 += 57.357700;
	reg20 += 45.155000;
	reg21 += 11.314600;
	reg22 += 22.795400;
	reg23 += 26.110100;
	reg25 += 54.115800;
	reg26 += 9.543780;
	reg30 += 86.589300;
	reg33 += 99.389700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 82.678200;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 31.500300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 6.730420;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c1included(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg2 += 62.250200;
	reg3 += 11.135300;
	reg5 += 36.937400;
	reg9 += 7.217850;
	reg10 += 68.596100;
	reg11 += 29.231200;
	reg12 += 36.229600;
	reg13 += 92.117800;
	reg14 += 86.510800;
	reg15 += 93.440400;
	reg16 += 98.718900;
	reg17 += 72.952500;
	reg18 += 39.298500;
	reg19 += 55.278500;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c20included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 58.752100;
	reg3 += 0.851248;
	reg5 += 87.753600;
	reg8 += 2.561700;
	reg9 += 94.339200;
	reg13 += 12.769900;
	reg14 += 41.792200;
	reg15 += 49.787100;
	reg17 += 97.401900;
	reg18 += 29.046200;
	reg20 += 47.301100;
	reg23 += 45.549500;
	reg27 += 7.938260;
	reg29 += 37.453800;
	reg31 += 98.330900;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 60.971000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 7.140690;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 28.680800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 81.402900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 49.903800;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 28.944400;
	reg1 += 56.639400;
	reg10 += 52.751900;
	reg12 += 16.953900;
	reg13 += 30.227600;
	reg14 += 24.702300;
	reg17 += 3.637350;
	reg20 += 83.733400;
	reg22 += 62.047400;
	reg23 += 72.378100;
	reg25 += 54.440700;
	reg27 += 7.975980;
	reg28 += 61.816700;
	reg30 += 79.688700;
	reg33 += 79.401600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 26.928300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 32.200900;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 8.920390;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 97.857900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 93.668500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c43included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 9.216540;
	reg2 += 93.270000;
	reg5 += 8.553950;
	reg7 += 88.281300;
	reg9 += 62.414100;
	reg10 += 12.385000;
	reg13 += 45.768900;
	reg17 += 17.052200;
	reg19 += 58.116300;
	reg20 += 64.613800;
	reg21 += 50.757500;
	reg23 += 5.551580;
	reg27 += 65.604100;
	reg28 += 6.888720;
	reg32 += 98.359100;
	reg33 += 59.154600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 37.205600;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 23.628500;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 45.055500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 50.620700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 38.410200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 36.350300;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c40included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 90.966600;
	reg1 += 28.500900;
	reg2 += 22.571900;
	reg5 += 10.708800;
	reg6 += 97.156800;
	reg9 += 22.602200;
	reg11 += 28.690500;
	reg13 += 29.145800;
	reg14 += 41.603900;
	reg15 += 0.389246;
	reg17 += 53.548800;
	reg18 += 30.285100;
	reg22 += 78.098600;
	reg23 += 93.482500;
	reg26 += 50.664600;
	reg27 += 47.754400;
	reg30 += 59.129100;
	reg33 += 68.860200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 15.197500;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 36.190900;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 68.363700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 87.983100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 39.573400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 51.195600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c33included(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
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
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 += 4.168570;
	reg2 += 41.055000;
	reg3 += 88.352600;
	reg5 += 70.659800;
	reg11 += 13.183900;
	reg14 += 2.899660;
	reg16 += 96.803200;
	reg17 += 14.335400;
	reg21 += 55.708400;
	reg24 += 38.357600;
	reg25 += 35.500000;
	reg26 += 5.252690;
	reg28 += 81.894300;
	reg30 += 70.433500;
	reg32 += 54.841200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 72.243400;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 4.262390;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] += 40.070700;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 1.539540;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 7.659480;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 71.791600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c18included(
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
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 39.885700;
	reg1 += 21.282000;
	reg9 += 28.458100;
	reg10 += 50.511200;
	reg11 += 6.794400;
	reg14 += 50.889100;
	reg15 += 15.596600;
	reg17 += 14.861700;
	reg20 += 23.288900;
	reg21 += 22.136300;
	reg23 += 40.142700;
	reg26 += 37.168700;
	reg27 += 91.279500;
	reg28 += 18.591000;
	reg29 += 1.997580;
	reg31 += 56.893200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 98.203800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 82.586800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 93.544700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 60.339300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 15.805900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c35included(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 24.816800;
	reg1 += 82.628700;
	reg2 += 65.370300;
	reg3 += 94.659000;
	reg4 += 61.191100;
	reg7 += 98.279400;
	reg10 += 88.852400;
	reg13 += 43.125900;
	reg14 += 18.883000;
	reg20 += 88.283700;
	reg21 += 77.045600;
	reg25 += 42.475800;
	reg27 += 92.278200;
	reg28 += 64.081100;
	reg30 += 20.509000;
	reg32 += 76.131700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 51.628200;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 52.386700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] += 55.247300;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 17.040500;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 32.300900;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 39.287300;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 60.053300;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c16included(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
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
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 += 59.339900;
	reg4 += 86.338400;
	reg7 += 71.182000;
	reg8 += 22.035500;
	reg15 += 86.642700;
	reg16 += 88.454800;
	reg18 += 99.020300;
	reg19 += 89.161300;
	reg21 += 94.259800;
	reg23 += 69.255200;
	reg24 += 10.176000;
	reg29 += 27.766400;
	reg30 += 73.130000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 15.496500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] += 61.759600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 27.663700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] += 79.495000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] += 56.038600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 21.462900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c41included(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 += 56.470700;
	reg4 += 96.138100;
	reg7 += 57.436600;
	reg9 += 40.360900;
	reg11 += 34.870700;
	reg14 += 67.064400;
	reg17 += 64.443400;
	reg18 += 70.697600;
	reg24 += 76.517400;
	reg25 += 29.736500;
	reg27 += 70.819600;
	reg28 += 61.563000;
	reg30 += 80.446800;
	reg32 += 80.757200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] += 22.808700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] += 5.808810;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] += 99.325400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] += 5.334650;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] += 95.697400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] += 44.767700;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c4excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg2 -= 59.966100;
	reg3 -= 28.123300;
	reg4 -= 51.611700;
	reg5 -= 46.596100;
	reg6 -= 57.926100;
	reg8 -= 9.190050;
	reg12 -= 57.365600;
	reg13 -= 90.451900;
	reg20 -= 45.750100;
	reg21 -= 88.861900;
	reg25 -= 8.275910;
	reg26 -= 5.907540;
	reg27 -= 97.759800;
	reg28 -= 77.892700;
	reg29 -= 91.106200;
	reg30 -= 80.776500;
	reg31 -= 81.392800;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c7excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
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
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 64.139300;
	reg1 -= 38.377500;
	reg3 -= 44.299700;
	reg4 -= 85.308200;
	reg14 -= 83.114500;
	reg16 -= 23.034800;
	reg18 -= 40.212500;
	reg19 -= 70.364400;
	reg21 -= 67.222800;
	reg23 -= 63.040700;
	reg25 -= 84.879200;
	reg28 -= 11.613300;
	reg30 -= 4.663550;
	reg33 -= 27.494700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 38.384100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 6.253780;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 3.517550;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 1.199250;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c5excluded(
									C& product,
									const C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									C& reg33)
{
	reg0 -= 34.769100;
	reg5 -= 65.060900;
	reg8 -= 60.452100;
	reg9 -= 59.981000;
	reg12 -= 89.439000;
	reg15 -= 13.560200;
	reg16 -= 65.175400;
	reg19 -= 29.519100;
	reg23 -= 0.091091;
	reg26 -= 80.540400;
	reg29 -= 45.415300;
	reg31 -= 62.632100;
	reg32 -= 28.710000;
	reg33 -= 8.905560;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c13excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
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
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 12.570700;
	reg1 -= 72.449100;
	reg7 -= 72.984400;
	reg9 -= 46.018300;
	reg10 -= 99.206400;
	reg19 -= 47.837800;
	reg25 -= 35.770800;
	reg26 -= 21.200700;
	reg27 -= 69.166600;
	reg33 -= 34.399100;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 85.613600;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 53.445300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 23.231700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 49.003300;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c2excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg1 -= 7.015760;
	reg2 -= 26.166900;
	reg4 -= 26.083800;
	reg6 -= 28.270300;
	reg7 -= 86.293700;
	reg9 -= 66.955900;
	reg11 -= 50.111900;
	reg14 -= 43.553000;
	reg15 -= 70.286900;
	reg18 -= 33.255400;
	reg20 -= 26.694200;
	reg21 -= 29.095100;
	reg22 -= 22.731400;
	reg23 -= 71.868000;
	reg24 -= 88.016200;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c32excluded(
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
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 23.943400;
	reg3 -= 89.285700;
	reg10 -= 44.369800;
	reg13 -= 16.365600;
	reg14 -= 31.896300;
	reg15 -= 81.116800;
	reg16 -= 88.474600;
	reg21 -= 6.494680;
	reg23 -= 63.476900;
	reg27 -= 2.343620;
	reg29 -= 26.053300;
	reg30 -= 11.260100;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 45.689100;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 21.932700;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 49.988200;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 95.463500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c16excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
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
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 59.339900;
	reg4 -= 86.338400;
	reg7 -= 71.182000;
	reg8 -= 22.035500;
	reg15 -= 86.642700;
	reg16 -= 88.454800;
	reg18 -= 99.020300;
	reg19 -= 89.161300;
	reg21 -= 94.259800;
	reg23 -= 69.255200;
	reg24 -= 10.176000;
	reg29 -= 27.766400;
	reg30 -= 73.130000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 15.496500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 61.759600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 27.663700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 79.495000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 56.038600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 21.462900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c20excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 58.752100;
	reg3 -= 0.851248;
	reg5 -= 87.753600;
	reg8 -= 2.561700;
	reg9 -= 94.339200;
	reg13 -= 12.769900;
	reg14 -= 41.792200;
	reg15 -= 49.787100;
	reg17 -= 97.401900;
	reg18 -= 29.046200;
	reg20 -= 47.301100;
	reg23 -= 45.549500;
	reg27 -= 7.938260;
	reg29 -= 37.453800;
	reg31 -= 98.330900;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 60.971000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 7.140690;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 28.680800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 81.402900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 49.903800;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c14excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 35.398400;
	reg2 -= 14.583600;
	reg4 -= 5.756730;
	reg5 -= 54.532900;
	reg6 -= 81.834600;
	reg7 -= 39.955700;
	reg8 -= 67.627300;
	reg11 -= 18.907200;
	reg13 -= 80.601800;
	reg14 -= 49.890400;
	reg15 -= 87.479100;
	reg18 -= 33.765500;
	reg20 -= 41.841500;
	reg24 -= 57.419300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 30.849200;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 96.269300;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 26.774000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 18.060200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 40.448400;
	reg5 -= 11.675400;
	reg6 -= 87.869100;
	reg7 -= 57.777000;
	reg10 -= 10.728100;
	reg12 -= 85.866000;
	reg14 -= 35.638000;
	reg17 -= 58.929200;
	reg28 -= 83.251500;
	reg29 -= 53.999600;
	reg32 -= 10.769100;
	reg33 -= 29.713300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 22.258700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 92.433200;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 60.138400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 87.415900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c9excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
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
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 79.429500;
	reg2 -= 16.145700;
	reg3 -= 46.868800;
	reg5 -= 41.097600;
	reg6 -= 22.247500;
	reg13 -= 85.434200;
	reg14 -= 39.369100;
	reg17 -= 17.122800;
	reg18 -= 64.921400;
	reg19 -= 27.212500;
	reg22 -= 7.720580;
	reg30 -= 48.442400;
	reg33 -= 7.792520;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 81.528300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 47.403600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 64.352300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c39excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 49.045300;
	reg2 -= 94.255800;
	reg3 -= 42.425400;
	reg4 -= 49.544900;
	reg5 -= 40.682400;
	reg7 -= 19.948800;
	reg9 -= 15.055000;
	reg10 -= 65.119500;
	reg13 -= 24.623600;
	reg16 -= 94.694000;
	reg20 -= 38.655400;
	reg22 -= 60.801100;
	reg23 -= 54.094100;
	reg27 -= 90.405200;
	reg30 -= 26.249100;
	reg31 -= 41.628600;
	reg32 -= 27.681600;
	reg33 -= 15.695000;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 27.157500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 16.961000;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 90.493900;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 2.333680;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 79.511900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 85.845500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c40excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 90.966600;
	reg1 -= 28.500900;
	reg2 -= 22.571900;
	reg5 -= 10.708800;
	reg6 -= 97.156800;
	reg9 -= 22.602200;
	reg11 -= 28.690500;
	reg13 -= 29.145800;
	reg14 -= 41.603900;
	reg15 -= 0.389246;
	reg17 -= 53.548800;
	reg18 -= 30.285100;
	reg22 -= 78.098600;
	reg23 -= 93.482500;
	reg26 -= 50.664600;
	reg27 -= 47.754400;
	reg30 -= 59.129100;
	reg33 -= 68.860200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 15.197500;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 36.190900;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 68.363700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 87.983100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 39.573400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 51.195600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c41excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 56.470700;
	reg4 -= 96.138100;
	reg7 -= 57.436600;
	reg9 -= 40.360900;
	reg11 -= 34.870700;
	reg14 -= 67.064400;
	reg17 -= 64.443400;
	reg18 -= 70.697600;
	reg24 -= 76.517400;
	reg25 -= 29.736500;
	reg27 -= 70.819600;
	reg28 -= 61.563000;
	reg30 -= 80.446800;
	reg32 -= 80.757200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 22.808700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 5.808810;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 99.325400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 5.334650;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 95.697400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 44.767700;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c12excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg3 -= 85.680500;
	reg5 -= 39.552200;
	reg6 -= 65.832700;
	reg10 -= 13.698400;
	reg13 -= 57.699400;
	reg14 -= 4.570600;
	reg16 -= 36.894800;
	reg19 -= 76.334400;
	reg20 -= 67.269500;
	reg21 -= 99.870400;
	reg25 -= 67.738000;
	reg33 -= 46.131200;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 56.686100;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 55.135300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 63.084000;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 88.549200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c11excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									const C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 55.169100;
	reg2 -= 78.666800;
	reg3 -= 38.622600;
	reg5 -= 83.011600;
	reg6 -= 27.311900;
	reg7 -= 87.624500;
	reg13 -= 28.050800;
	reg15 -= 42.928300;
	reg18 -= 16.614500;
	reg21 -= 11.059300;
	reg25 -= 53.234800;
	reg28 -= 69.403500;
	reg29 -= 95.353400;
	reg33 -= 88.900400;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 93.532300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 63.591100;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 15.968400;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 19.036800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 45.701500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 25.256800;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 54.609500;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c37excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 76.210800;
	reg5 -= 94.580100;
	reg6 -= 45.253500;
	reg10 -= 26.145700;
	reg11 -= 70.378600;
	reg12 -= 11.198600;
	reg13 -= 74.490100;
	reg15 -= 34.890400;
	reg19 -= 75.368200;
	reg22 -= 63.244800;
	reg23 -= 67.688600;
	reg26 -= 48.852700;
	reg28 -= 31.861700;
	reg29 -= 43.949100;
	reg31 -= 18.358200;
	reg33 -= 27.552600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 22.900800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 13.707700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 50.165200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 78.924500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 13.415600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c3excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg1 -= 50.902900;
	reg2 -= 58.173700;
	reg6 -= 36.872000;
	reg8 -= 99.571900;
	reg10 -= 5.862970;
	reg12 -= 38.419800;
	reg13 -= 72.730400;
	reg14 -= 5.718380;
	reg16 -= 11.007700;
	reg18 -= 31.276600;
	reg21 -= 12.759600;
	reg22 -= 5.660170;
	reg24 -= 4.856870;
	reg25 -= 99.795600;
	reg26 -= 79.236900;
	reg27 -= 45.701600;
	reg28 -= 93.996300;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									const C& reg5,
									C& reg6,
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
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg6 -= 55.031500;
	reg8 -= 81.327500;
	reg13 -= 79.308400;
	reg14 -= 37.636500;
	reg17 -= 18.917400;
	reg21 -= 11.799900;
	reg24 -= 47.637000;
	reg25 -= 77.397000;
	reg26 -= 65.289800;
	reg27 -= 48.842600;
	reg29 -= 70.917600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 0.104331;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 44.676600;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 7.300830;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c31excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
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
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 82.591500;
	reg7 -= 9.639360;
	reg8 -= 20.567900;
	reg9 -= 58.525500;
	reg13 -= 64.871400;
	reg14 -= 47.629500;
	reg16 -= 55.335200;
	reg18 -= 47.259100;
	reg19 -= 21.066300;
	reg22 -= 87.768000;
	reg23 -= 38.768200;
	reg25 -= 2.941690;
	reg31 -= 20.818800;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 61.325200;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 63.491600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 52.684500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c21excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 76.005500;
	reg1 -= 98.067200;
	reg6 -= 2.764330;
	reg7 -= 8.009930;
	reg9 -= 59.821900;
	reg10 -= 62.140800;
	reg11 -= 24.736500;
	reg12 -= 48.568500;
	reg14 -= 53.251600;
	reg18 -= 7.631010;
	reg19 -= 14.411600;
	reg20 -= 39.025800;
	reg21 -= 2.996840;
	reg24 -= 92.224400;
	reg26 -= 15.170500;
	reg27 -= 97.358200;
	reg28 -= 49.471400;
	reg29 -= 74.988500;
	reg31 -= 89.933100;
	reg32 -= 50.059100;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 27.050800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 99.942800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 36.587900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 79.829700;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 40.447600;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 40.045800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 41.901500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg5 -= 13.523200;
	reg6 -= 97.830700;
	reg10 -= 31.302300;
	reg12 -= 40.641700;
	reg13 -= 37.223100;
	reg20 -= 60.132600;
	reg21 -= 42.235700;
	reg23 -= 75.892200;
	reg26 -= 56.929400;
	reg33 -= 57.800600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 15.129300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 72.932700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 55.833400;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 42.666200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 14.717500;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 14.206700;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 39.076900;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c29excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									C& reg3,
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
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 15.486400;
	reg3 -= 97.505700;
	reg5 -= 69.577600;
	reg11 -= 95.567300;
	reg12 -= 9.809400;
	reg15 -= 46.530300;
	reg19 -= 46.284100;
	reg22 -= 16.945800;
	reg23 -= 64.351200;
	reg26 -= 73.167500;
	reg27 -= 77.374400;
	reg28 -= 78.424600;
	reg30 -= 14.166300;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 50.522200;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 83.849500;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 16.610300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 88.538800;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 48.919500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c8excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
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
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 46.498200;
	reg3 -= 95.826900;
	reg5 -= 11.009600;
	reg6 -= 38.254300;
	reg7 -= 50.947100;
	reg8 -= 64.419100;
	reg14 -= 72.036400;
	reg17 -= 57.357700;
	reg20 -= 45.155000;
	reg21 -= 11.314600;
	reg22 -= 22.795400;
	reg23 -= 26.110100;
	reg25 -= 54.115800;
	reg26 -= 9.543780;
	reg30 -= 86.589300;
	reg33 -= 99.389700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 82.678200;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 31.500300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 6.730420;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg18,
									C& reg19,
									C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 62.356700;
	reg5 -= 94.947500;
	reg18 -= 88.048800;
	reg19 -= 87.160900;
	reg20 -= 50.795300;
	reg23 -= 43.867100;
	reg29 -= 65.306700;
	reg30 -= 17.949000;
	reg33 -= 71.066300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 72.538000;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 85.442000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 78.691300;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 85.461500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 1.114420;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 5.733950;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 5.786660;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c6excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									const C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 28.288000;
	reg2 -= 62.207500;
	reg3 -= 36.043600;
	reg5 -= 30.413300;
	reg6 -= 10.011600;
	reg9 -= 70.493900;
	reg11 -= 15.630600;
	reg13 -= 19.553400;
	reg15 -= 65.577800;
	reg16 -= 80.768700;
	reg18 -= 39.862300;
	reg19 -= 19.936000;
	reg21 -= 90.341800;
	reg23 -= 21.459700;
	reg24 -= 21.472400;
	reg26 -= 75.445600;
	reg31 -= 68.177200;
	reg33 -= 35.528800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 46.915500;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 78.049100;
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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c36excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 63.206100;
	reg2 -= 43.407000;
	reg4 -= 49.226700;
	reg8 -= 46.979100;
	reg9 -= 55.719700;
	reg11 -= 50.883100;
	reg13 -= 7.841390;
	reg16 -= 61.184000;
	reg19 -= 68.098300;
	reg23 -= 81.678800;
	reg25 -= 43.043200;
	reg31 -= 8.542850;
	reg32 -= 82.071500;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 69.065800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 44.893400;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 79.943000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 82.435600;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 63.866500;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 25.117100;
	reg5 -= 6.851540;
	reg9 -= 56.731700;
	reg10 -= 92.638300;
	reg11 -= 82.104900;
	reg13 -= 3.875140;
	reg14 -= 70.313400;
	reg21 -= 96.042700;
	reg22 -= 76.426400;
	reg23 -= 51.017700;
	reg24 -= 55.432800;
	reg25 -= 91.661500;
	reg29 -= 45.848800;
	reg30 -= 80.987600;
	reg33 -= 76.446600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 97.103600;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 12.784400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 35.890200;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c44excluded(
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
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 91.369400;
	reg14 -= 65.268800;
	reg15 -= 82.169600;
	reg19 -= 88.316300;
	reg20 -= 52.121100;
	reg21 -= 38.644000;
	reg23 -= 16.623000;
	reg24 -= 79.924300;
	reg25 -= 36.999400;
	reg28 -= 19.583200;
	reg32 -= 82.127700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 3.269030;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 10.374800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 81.574300;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 5.315020;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 2.681090;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 95.631600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c10excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 82.503600;
	reg1 -= 15.015400;
	reg7 -= 79.555200;
	reg8 -= 11.034100;
	reg9 -= 52.499400;
	reg11 -= 33.912500;
	reg14 -= 9.791940;
	reg16 -= 4.428550;
	reg17 -= 57.147000;
	reg18 -= 28.065700;
	reg20 -= 46.698200;
	reg21 -= 7.811430;
	reg22 -= 60.747900;
	reg23 -= 82.282300;
	reg26 -= 7.964140;
	reg28 -= 26.580700;
	reg29 -= 49.727800;
	reg30 -= 12.511700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 17.094700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 83.908300;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 91.453700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 14.319500;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 12.807300;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c28excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
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
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 64.462500;
	reg1 -= 51.887400;
	reg3 -= 66.493500;
	reg5 -= 11.661400;
	reg6 -= 62.894500;
	reg7 -= 25.599600;
	reg10 -= 94.332600;
	reg18 -= 16.709300;
	reg23 -= 82.294400;
	reg24 -= 87.581200;
	reg25 -= 6.025410;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 99.537800;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 63.220700;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 31.225900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 29.330800;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 91.820200;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c33excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
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
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									const C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 4.168570;
	reg2 -= 41.055000;
	reg3 -= 88.352600;
	reg5 -= 70.659800;
	reg11 -= 13.183900;
	reg14 -= 2.899660;
	reg16 -= 96.803200;
	reg17 -= 14.335400;
	reg21 -= 55.708400;
	reg24 -= 38.357600;
	reg25 -= 35.500000;
	reg26 -= 5.252690;
	reg28 -= 81.894300;
	reg30 -= 70.433500;
	reg32 -= 54.841200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 72.243400;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 4.262390;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 40.070700;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 1.539540;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 7.659480;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 71.791600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c1excluded(
									C& product,
									const C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg2 -= 62.250200;
	reg3 -= 11.135300;
	reg5 -= 36.937400;
	reg9 -= 7.217850;
	reg10 -= 68.596100;
	reg11 -= 29.231200;
	reg12 -= 36.229600;
	reg13 -= 92.117800;
	reg14 -= 86.510800;
	reg15 -= 93.440400;
	reg16 -= 98.718900;
	reg17 -= 72.952500;
	reg18 -= 39.298500;
	reg19 -= 55.278500;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c18excluded(
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
									C& reg9,
									C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 39.885700;
	reg1 -= 21.282000;
	reg9 -= 28.458100;
	reg10 -= 50.511200;
	reg11 -= 6.794400;
	reg14 -= 50.889100;
	reg15 -= 15.596600;
	reg17 -= 14.861700;
	reg20 -= 23.288900;
	reg21 -= 22.136300;
	reg23 -= 40.142700;
	reg26 -= 37.168700;
	reg27 -= 91.279500;
	reg28 -= 18.591000;
	reg29 -= 1.997580;
	reg31 -= 56.893200;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 98.203800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 82.586800;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 93.544700;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 60.339300;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 15.805900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c43excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 9.216540;
	reg2 -= 93.270000;
	reg5 -= 8.553950;
	reg7 -= 88.281300;
	reg9 -= 62.414100;
	reg10 -= 12.385000;
	reg13 -= 45.768900;
	reg17 -= 17.052200;
	reg19 -= 58.116300;
	reg20 -= 64.613800;
	reg21 -= 50.757500;
	reg23 -= 5.551580;
	reg27 -= 65.604100;
	reg28 -= 6.888720;
	reg32 -= 98.359100;
	reg33 -= 59.154600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 37.205600;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 23.628500;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 45.055500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 50.620700;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 38.410200;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 36.350300;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c30excluded(
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
									const C& reg8,
									const C& reg9,
									const C& reg10,
									C& reg11,
									const C& reg12,
									const C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 56.280800;
	reg2 -= 31.186900;
	reg5 -= 15.049400;
	reg6 -= 76.497000;
	reg11 -= 68.822300;
	reg14 -= 51.337100;
	reg20 -= 67.592800;
	reg22 -= 48.070100;
	reg23 -= 46.017300;
	reg25 -= 91.011500;
	reg29 -= 25.410200;
	reg31 -= 72.133600;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 56.919000;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 19.963900;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 95.544800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 32.929500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 19.146000;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 69.513700;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 75.704400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c35excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 24.816800;
	reg1 -= 82.628700;
	reg2 -= 65.370300;
	reg3 -= 94.659000;
	reg4 -= 61.191100;
	reg7 -= 98.279400;
	reg10 -= 88.852400;
	reg13 -= 43.125900;
	reg14 -= 18.883000;
	reg20 -= 88.283700;
	reg21 -= 77.045600;
	reg25 -= 42.475800;
	reg27 -= 92.278200;
	reg28 -= 64.081100;
	reg30 -= 20.509000;
	reg32 -= 76.131700;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 51.628200;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 52.386700;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 55.247300;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 17.040500;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 32.300900;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 39.287300;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 60.053300;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c34excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									const C& reg13,
									const C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg2 -= 69.335500;
	reg6 -= 9.850570;
	reg10 -= 63.842500;
	reg15 -= 97.074700;
	reg16 -= 21.779900;
	reg17 -= 17.072500;
	reg18 -= 76.107800;
	reg19 -= 30.057200;
	reg25 -= 24.722300;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 38.971700;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 1.447980;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 19.411800;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 68.240500;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 79.563900;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c25excluded(
									C& product,
									C& globalProduct,
									const C& reg0,
									C& reg1,
									const C& reg2,
									C& reg3,
									C& reg4,
									C& reg5,
									const C& reg6,
									C& reg7,
									const C& reg8,
									const C& reg9,
									C& reg10,
									const C& reg11,
									const C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									const C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg1 -= 53.350100;
	reg3 -= 65.532200;
	reg4 -= 30.683300;
	reg5 -= 85.987800;
	reg7 -= 0.013368;
	reg10 -= 0.780469;
	reg13 -= 78.849400;
	reg14 -= 21.945100;
	reg16 -= 92.339200;
	reg17 -= 87.778800;
	reg18 -= 30.687500;
	reg19 -= 69.870900;
	reg23 -= 88.770900;
	reg24 -= 68.297200;
	reg26 -= 37.673600;
	reg27 -= 81.803900;
	reg29 -= 84.155400;
	reg31 -= 73.704000;
	reg33 -= 76.889700;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	x[totalThreadCount * 3 + globalThreadID] -= 80.978900;
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 21.141700;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 56.850100;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c26excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									const C& reg6,
									const C& reg7,
									C& reg8,
									C& reg9,
									const C& reg10,
									C& reg11,
									C& reg12,
									const C& reg13,
									const C& reg14,
									const C& reg15,
									const C& reg16,
									const C& reg17,
									const C& reg18,
									const C& reg19,
									const C& reg20,
									C& reg21,
									const C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 50.058100;
	reg1 -= 33.477200;
	reg2 -= 21.018000;
	reg4 -= 3.067870;
	reg8 -= 48.874100;
	reg9 -= 96.290600;
	reg11 -= 9.185260;
	reg12 -= 65.627300;
	reg21 -= 38.464100;
	reg23 -= 7.095630;
	reg24 -= 21.662600;
	reg25 -= 98.594100;
	reg26 -= 37.931200;
	reg27 -= 33.882600;
	reg30 -= 27.816600;
	reg31 -= 53.661400;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 54.741500;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 95.765300;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 2.965230;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 77.254000;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 57.557400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 56.112400;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c23excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									const C& reg2,
									const C& reg3,
									C& reg4,
									const C& reg5,
									C& reg6,
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
									const C& reg19,
									const C& reg20,
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 7.677490;
	reg4 -= 73.866900;
	reg6 -= 26.599800;
	reg7 -= 95.975700;
	reg8 -= 74.671100;
	reg15 -= 27.387200;
	reg17 -= 42.768300;
	reg22 -= 39.511400;
	reg25 -= 28.865600;
	reg30 -= 25.813000;
	reg33 -= 94.448800;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 78.477800;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	x[totalThreadCount * 1 + globalThreadID] -= 47.326600;
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 40.252100;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	x[totalThreadCount * 4 + globalThreadID] -= 10.004000;
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 55.185400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 70.814400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 56.936700;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c15excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									C& reg1,
									C& reg2,
									C& reg3,
									const C& reg4,
									const C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									C& reg9,
									const C& reg10,
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
									const C& reg21,
									C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 76.000700;
	reg1 -= 11.525200;
	reg2 -= 58.157900;
	reg3 -= 30.183200;
	reg6 -= 85.277300;
	reg9 -= 13.652000;
	reg11 -= 16.588400;
	reg19 -= 3.036180;
	reg20 -= 61.845000;
	reg22 -= 29.912900;
	reg27 -= 31.007600;
	reg30 -= 43.537700;
	reg33 -= 64.712000;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 68.652400;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 89.157100;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg5,
									C& reg6,
									C& reg7,
									C& reg8,
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
									const C& reg19,
									const C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									const C& reg24,
									const C& reg25,
									const C& reg26,
									const C& reg27,
									const C& reg28,
									const C& reg29,
									const C& reg30,
									const C& reg31,
									const C& reg32,
									const C& reg33)
{
	reg0 -= 78.898100;
	reg1 -= 18.802200;
	reg2 -= 11.331800;
	reg3 -= 24.254000;
	reg4 -= 36.457800;
	reg5 -= 32.350900;
	reg6 -= 13.399400;
	reg7 -= 83.938400;
	reg8 -= 6.689480;
	reg9 -= 54.013500;
	reg10 -= 39.203500;
	reg11 -= 66.768200;

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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
									C& reg10,
									const C& reg11,
									C& reg12,
									C& reg13,
									C& reg14,
									const C& reg15,
									const C& reg16,
									C& reg17,
									const C& reg18,
									const C& reg19,
									C& reg20,
									const C& reg21,
									C& reg22,
									C& reg23,
									const C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									C& reg28,
									const C& reg29,
									C& reg30,
									const C& reg31,
									const C& reg32,
									C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 28.944400;
	reg1 -= 56.639400;
	reg10 -= 52.751900;
	reg12 -= 16.953900;
	reg13 -= 30.227600;
	reg14 -= 24.702300;
	reg17 -= 3.637350;
	reg20 -= 83.733400;
	reg22 -= 62.047400;
	reg23 -= 72.378100;
	reg25 -= 54.440700;
	reg27 -= 7.975980;
	reg28 -= 61.816700;
	reg30 -= 79.688700;
	reg33 -= 79.401600;

	globalProduct = 1;
	x[totalThreadCount * 0 + globalThreadID] -= 26.928300;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	x[totalThreadCount * 5 + globalThreadID] -= 32.200900;
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	x[totalThreadCount * 7 + globalThreadID] -= 8.920390;
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	x[totalThreadCount * 8 + globalThreadID] -= 97.857900;
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 93.668500;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
}

template <class C>
__device__ __inline__ void c42excluded(
									C& product,
									C& globalProduct,
									C& reg0,
									const C& reg1,
									C& reg2,
									const C& reg3,
									const C& reg4,
									C& reg5,
									C& reg6,
									const C& reg7,
									const C& reg8,
									const C& reg9,
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
									C& reg20,
									const C& reg21,
									const C& reg22,
									const C& reg23,
									C& reg24,
									C& reg25,
									const C& reg26,
									C& reg27,
									const C& reg28,
									C& reg29,
									const C& reg30,
									C& reg31,
									const C& reg32,
									const C& reg33,
									const volatile unsigned& totalThreadCount,
									const volatile unsigned& globalThreadID,
									C* x)
{
	reg0 -= 25.154200;
	reg2 -= 46.592500;
	reg5 -= 85.809200;
	reg6 -= 55.063100;
	reg10 -= 68.140400;
	reg18 -= 32.435200;
	reg20 -= 4.336320;
	reg24 -= 38.248200;
	reg25 -= 34.580800;
	reg27 -= 32.155400;
	reg29 -= 93.451200;
	reg31 -= 2.400710;

	globalProduct = 1;
	globalProduct *= x[totalThreadCount * 0 + globalThreadID];
	globalProduct *= x[totalThreadCount * 1 + globalThreadID];
	x[totalThreadCount * 2 + globalThreadID] -= 7.589620;
	globalProduct *= x[totalThreadCount * 2 + globalThreadID];
	globalProduct *= x[totalThreadCount * 3 + globalThreadID];
	globalProduct *= x[totalThreadCount * 4 + globalThreadID];
	globalProduct *= x[totalThreadCount * 5 + globalThreadID];
	x[totalThreadCount * 6 + globalThreadID] -= 82.771400;
	globalProduct *= x[totalThreadCount * 6 + globalThreadID];
	globalProduct *= x[totalThreadCount * 7 + globalThreadID];
	globalProduct *= x[totalThreadCount * 8 + globalThreadID];
	x[totalThreadCount * 9 + globalThreadID] -= 96.980400;
	globalProduct *= x[totalThreadCount * 9 + globalThreadID];
	x[totalThreadCount * 10 + globalThreadID] -= 99.071600;
	globalProduct *= x[totalThreadCount * 10 + globalThreadID];

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
					reg20,
					reg21,
					reg22,
					reg23,
					reg24,
					reg25,
					reg26,
					reg27,
					reg28,
					reg29,
					reg30,
					reg31,
					reg32,
					reg33);
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

	C reg0 = -541.423745;
	C reg1 = -439.208285;
	C reg2 = -603.411250;
	C reg3 = -513.295824;
	C reg4 = -327.637750;
	C reg5 = -574.292095;
	C reg6 = -542.024300;
	C reg7 = -516.721029;
	C reg8 = -308.000465;
	C reg9 = -480.575375;
	C reg10 = -495.304169;
	C reg11 = -358.183730;
	C reg12 = -250.059700;
	C reg13 = -537.562965;
	C reg14 = -463.384190;
	C reg15 = -365.259073;
	C reg16 = -459.546875;
	C reg17 = -347.663475;
	C reg18 = -427.600155;
	C reg19 = -400.398840;
	C reg20 = -425.445760;
	C reg21 = -438.817225;
	C reg22 = -341.240975;
	C reg23 = -669.800750;
	C reg24 = -313.987435;
	C reg25 = -513.903405;
	C reg26 = -353.969875;
	C reg27 = -545.725780;
	C reg28 = -398.873660;
	C reg29 = -466.450440;
	C reg30 = -432.049975;
	C reg31 = -374.303730;
	C reg32 = -213.626400;
	C reg33 = -535.141640;

	x[totalThreadCount * 0 + globalThreadID] = -426.517735;
	x[totalThreadCount * 1 + globalThreadID] = -488.208435;
	x[totalThreadCount * 2 + globalThreadID] = -376.202591;
	x[totalThreadCount * 3 + globalThreadID] = -358.012130;
	x[totalThreadCount * 4 + globalThreadID] = -351.395210;
	x[totalThreadCount * 5 + globalThreadID] = -472.239950;
	x[totalThreadCount * 6 + globalThreadID] = -359.499080;
	x[totalThreadCount * 7 + globalThreadID] = -338.111125;
	x[totalThreadCount * 8 + globalThreadID] = -497.043140;
	x[totalThreadCount * 9 + globalThreadID] = -526.882230;
	x[totalThreadCount * 10 + globalThreadID] = -304.741730;

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 78.898100;
		reg1 += 18.802200;
		reg2 += 11.331800;
		reg3 += 24.254000;
		reg4 += 36.457800;
		reg5 += 32.350900;
		reg6 += 13.399400;
		reg7 += 83.938400;
		reg8 += 6.689480;
		reg9 += 54.013500;
		reg10 += 39.203500;
		reg11 += 66.768200;
	}
	if ((gray >> 1) & 1LL)
	{
		reg2 += 62.250200;
		reg3 += 11.135300;
		reg5 += 36.937400;
		reg9 += 7.217850;
		reg10 += 68.596100;
		reg11 += 29.231200;
		reg12 += 36.229600;
		reg13 += 92.117800;
		reg14 += 86.510800;
		reg15 += 93.440400;
		reg16 += 98.718900;
		reg17 += 72.952500;
		reg18 += 39.298500;
		reg19 += 55.278500;
	}
	if ((gray >> 2) & 1LL)
	{
		reg1 += 7.015760;
		reg2 += 26.166900;
		reg4 += 26.083800;
		reg6 += 28.270300;
		reg7 += 86.293700;
		reg9 += 66.955900;
		reg11 += 50.111900;
		reg14 += 43.553000;
		reg15 += 70.286900;
		reg18 += 33.255400;
		reg20 += 26.694200;
		reg21 += 29.095100;
		reg22 += 22.731400;
		reg23 += 71.868000;
		reg24 += 88.016200;
	}
	if ((gray >> 3) & 1LL)
	{
		reg1 += 50.902900;
		reg2 += 58.173700;
		reg6 += 36.872000;
		reg8 += 99.571900;
		reg10 += 5.862970;
		reg12 += 38.419800;
		reg13 += 72.730400;
		reg14 += 5.718380;
		reg16 += 11.007700;
		reg18 += 31.276600;
		reg21 += 12.759600;
		reg22 += 5.660170;
		reg24 += 4.856870;
		reg25 += 99.795600;
		reg26 += 79.236900;
		reg27 += 45.701600;
		reg28 += 93.996300;
	}
	if ((gray >> 4) & 1LL)
	{
		reg2 += 59.966100;
		reg3 += 28.123300;
		reg4 += 51.611700;
		reg5 += 46.596100;
		reg6 += 57.926100;
		reg8 += 9.190050;
		reg12 += 57.365600;
		reg13 += 90.451900;
		reg20 += 45.750100;
		reg21 += 88.861900;
		reg25 += 8.275910;
		reg26 += 5.907540;
		reg27 += 97.759800;
		reg28 += 77.892700;
		reg29 += 91.106200;
		reg30 += 80.776500;
		reg31 += 81.392800;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 34.769100;
		reg5 += 65.060900;
		reg8 += 60.452100;
		reg9 += 59.981000;
		reg12 += 89.439000;
		reg15 += 13.560200;
		reg16 += 65.175400;
		reg19 += 29.519100;
		reg23 += 0.091091;
		reg26 += 80.540400;
		reg29 += 45.415300;
		reg31 += 62.632100;
		reg32 += 28.710000;
		reg33 += 8.905560;
	}
	if ((gray >> 6) & 1LL)
	{
		reg1 += 28.288000;
		reg2 += 62.207500;
		reg3 += 36.043600;
		reg5 += 30.413300;
		reg6 += 10.011600;
		reg9 += 70.493900;
		reg11 += 15.630600;
		reg13 += 19.553400;
		reg15 += 65.577800;
		reg16 += 80.768700;
		reg18 += 39.862300;
		reg19 += 19.936000;
		reg21 += 90.341800;
		reg23 += 21.459700;
		reg24 += 21.472400;
		reg26 += 75.445600;
		reg31 += 68.177200;
		reg33 += 35.528800;
		x[totalThreadCount * 0 + globalThreadID] += 46.915500;
		x[totalThreadCount * 1 + globalThreadID] += 78.049100;
	}
	if ((gray >> 7) & 1LL)
	{
		reg0 += 64.139300;
		reg1 += 38.377500;
		reg3 += 44.299700;
		reg4 += 85.308200;
		reg14 += 83.114500;
		reg16 += 23.034800;
		reg18 += 40.212500;
		reg19 += 70.364400;
		reg21 += 67.222800;
		reg23 += 63.040700;
		reg25 += 84.879200;
		reg28 += 11.613300;
		reg30 += 4.663550;
		reg33 += 27.494700;
		x[totalThreadCount * 0 + globalThreadID] += 38.384100;
		x[totalThreadCount * 1 + globalThreadID] += 6.253780;
		x[totalThreadCount * 2 + globalThreadID] += 3.517550;
		x[totalThreadCount * 3 + globalThreadID] += 1.199250;
	}
	if ((gray >> 8) & 1LL)
	{
		reg2 += 46.498200;
		reg3 += 95.826900;
		reg5 += 11.009600;
		reg6 += 38.254300;
		reg7 += 50.947100;
		reg8 += 64.419100;
		reg14 += 72.036400;
		reg17 += 57.357700;
		reg20 += 45.155000;
		reg21 += 11.314600;
		reg22 += 22.795400;
		reg23 += 26.110100;
		reg25 += 54.115800;
		reg26 += 9.543780;
		reg30 += 86.589300;
		reg33 += 99.389700;
		x[totalThreadCount * 1 + globalThreadID] += 82.678200;
		x[totalThreadCount * 3 + globalThreadID] += 31.500300;
		x[totalThreadCount * 4 + globalThreadID] += 6.730420;
	}
	if ((gray >> 9) & 1LL)
	{
		reg0 += 79.429500;
		reg2 += 16.145700;
		reg3 += 46.868800;
		reg5 += 41.097600;
		reg6 += 22.247500;
		reg13 += 85.434200;
		reg14 += 39.369100;
		reg17 += 17.122800;
		reg18 += 64.921400;
		reg19 += 27.212500;
		reg22 += 7.720580;
		reg30 += 48.442400;
		reg33 += 7.792520;
		x[totalThreadCount * 3 + globalThreadID] += 81.528300;
		x[totalThreadCount * 5 + globalThreadID] += 47.403600;
		x[totalThreadCount * 6 + globalThreadID] += 64.352300;
	}
	if ((gray >> 10) & 1LL)
	{
		reg0 += 82.503600;
		reg1 += 15.015400;
		reg7 += 79.555200;
		reg8 += 11.034100;
		reg9 += 52.499400;
		reg11 += 33.912500;
		reg14 += 9.791940;
		reg16 += 4.428550;
		reg17 += 57.147000;
		reg18 += 28.065700;
		reg20 += 46.698200;
		reg21 += 7.811430;
		reg22 += 60.747900;
		reg23 += 82.282300;
		reg26 += 7.964140;
		reg28 += 26.580700;
		reg29 += 49.727800;
		reg30 += 12.511700;
		x[totalThreadCount * 0 + globalThreadID] += 17.094700;
		x[totalThreadCount * 4 + globalThreadID] += 83.908300;
		x[totalThreadCount * 5 + globalThreadID] += 91.453700;
		x[totalThreadCount * 6 + globalThreadID] += 14.319500;
		x[totalThreadCount * 7 + globalThreadID] += 12.807300;
	}
	if ((gray >> 11) & 1LL)
	{
		reg1 += 55.169100;
		reg2 += 78.666800;
		reg3 += 38.622600;
		reg5 += 83.011600;
		reg6 += 27.311900;
		reg7 += 87.624500;
		reg13 += 28.050800;
		reg15 += 42.928300;
		reg18 += 16.614500;
		reg21 += 11.059300;
		reg25 += 53.234800;
		reg28 += 69.403500;
		reg29 += 95.353400;
		reg33 += 88.900400;
		x[totalThreadCount * 0 + globalThreadID] += 93.532300;
		x[totalThreadCount * 1 + globalThreadID] += 63.591100;
		x[totalThreadCount * 2 + globalThreadID] += 15.968400;
		x[totalThreadCount * 3 + globalThreadID] += 19.036800;
		x[totalThreadCount * 4 + globalThreadID] += 45.701500;
		x[totalThreadCount * 6 + globalThreadID] += 25.256800;
		x[totalThreadCount * 7 + globalThreadID] += 54.609500;
	}
	if ((gray >> 12) & 1LL)
	{
		reg3 += 85.680500;
		reg5 += 39.552200;
		reg6 += 65.832700;
		reg10 += 13.698400;
		reg13 += 57.699400;
		reg14 += 4.570600;
		reg16 += 36.894800;
		reg19 += 76.334400;
		reg20 += 67.269500;
		reg21 += 99.870400;
		reg25 += 67.738000;
		reg33 += 46.131200;
		x[totalThreadCount * 2 + globalThreadID] += 56.686100;
		x[totalThreadCount * 5 + globalThreadID] += 55.135300;
		x[totalThreadCount * 6 + globalThreadID] += 63.084000;
		x[totalThreadCount * 7 + globalThreadID] += 88.549200;
	}
	if ((gray >> 13) & 1LL)
	{
		reg0 += 12.570700;
		reg1 += 72.449100;
		reg7 += 72.984400;
		reg9 += 46.018300;
		reg10 += 99.206400;
		reg19 += 47.837800;
		reg25 += 35.770800;
		reg26 += 21.200700;
		reg27 += 69.166600;
		reg33 += 34.399100;
		x[totalThreadCount * 4 + globalThreadID] += 85.613600;
		x[totalThreadCount * 5 + globalThreadID] += 53.445300;
		x[totalThreadCount * 7 + globalThreadID] += 23.231700;
		x[totalThreadCount * 8 + globalThreadID] += 49.003300;
	}
	if ((gray >> 14) & 1LL)
	{
		reg1 += 35.398400;
		reg2 += 14.583600;
		reg4 += 5.756730;
		reg5 += 54.532900;
		reg6 += 81.834600;
		reg7 += 39.955700;
		reg8 += 67.627300;
		reg11 += 18.907200;
		reg13 += 80.601800;
		reg14 += 49.890400;
		reg15 += 87.479100;
		reg18 += 33.765500;
		reg20 += 41.841500;
		reg24 += 57.419300;
		x[totalThreadCount * 0 + globalThreadID] += 30.849200;
		x[totalThreadCount * 1 + globalThreadID] += 96.269300;
		x[totalThreadCount * 6 + globalThreadID] += 26.774000;
		x[totalThreadCount * 8 + globalThreadID] += 18.060200;
	}
	if ((gray >> 15) & 1LL)
	{
		reg0 += 76.000700;
		reg1 += 11.525200;
		reg2 += 58.157900;
		reg3 += 30.183200;
		reg6 += 85.277300;
		reg9 += 13.652000;
		reg11 += 16.588400;
		reg19 += 3.036180;
		reg20 += 61.845000;
		reg22 += 29.912900;
		reg27 += 31.007600;
		reg30 += 43.537700;
		reg33 += 64.712000;
		x[totalThreadCount * 5 + globalThreadID] += 68.652400;
		x[totalThreadCount * 8 + globalThreadID] += 89.157100;
	}
	if ((gray >> 16) & 1LL)
	{
		reg2 += 59.339900;
		reg4 += 86.338400;
		reg7 += 71.182000;
		reg8 += 22.035500;
		reg15 += 86.642700;
		reg16 += 88.454800;
		reg18 += 99.020300;
		reg19 += 89.161300;
		reg21 += 94.259800;
		reg23 += 69.255200;
		reg24 += 10.176000;
		reg29 += 27.766400;
		reg30 += 73.130000;
		x[totalThreadCount * 0 + globalThreadID] += 15.496500;
		x[totalThreadCount * 1 + globalThreadID] += 61.759600;
		x[totalThreadCount * 3 + globalThreadID] += 27.663700;
		x[totalThreadCount * 6 + globalThreadID] += 79.495000;
		x[totalThreadCount * 8 + globalThreadID] += 56.038600;
		x[totalThreadCount * 9 + globalThreadID] += 21.462900;
	}
	if ((gray >> 17) & 1LL)
	{
		reg3 += 40.448400;
		reg5 += 11.675400;
		reg6 += 87.869100;
		reg7 += 57.777000;
		reg10 += 10.728100;
		reg12 += 85.866000;
		reg14 += 35.638000;
		reg17 += 58.929200;
		reg28 += 83.251500;
		reg29 += 53.999600;
		reg32 += 10.769100;
		reg33 += 29.713300;
		x[totalThreadCount * 3 + globalThreadID] += 22.258700;
		x[totalThreadCount * 5 + globalThreadID] += 92.433200;
		x[totalThreadCount * 6 + globalThreadID] += 60.138400;
		x[totalThreadCount * 8 + globalThreadID] += 87.415900;
	}
	if ((gray >> 18) & 1LL)
	{
		reg0 += 39.885700;
		reg1 += 21.282000;
		reg9 += 28.458100;
		reg10 += 50.511200;
		reg11 += 6.794400;
		reg14 += 50.889100;
		reg15 += 15.596600;
		reg17 += 14.861700;
		reg20 += 23.288900;
		reg21 += 22.136300;
		reg23 += 40.142700;
		reg26 += 37.168700;
		reg27 += 91.279500;
		reg28 += 18.591000;
		reg29 += 1.997580;
		reg31 += 56.893200;
		x[totalThreadCount * 0 + globalThreadID] += 98.203800;
		x[totalThreadCount * 2 + globalThreadID] += 82.586800;
		x[totalThreadCount * 3 + globalThreadID] += 93.544700;
		x[totalThreadCount * 6 + globalThreadID] += 60.339300;
		x[totalThreadCount * 8 + globalThreadID] += 15.805900;
	}
	if ((gray >> 19) & 1LL)
	{
		reg2 += 25.117100;
		reg5 += 6.851540;
		reg9 += 56.731700;
		reg10 += 92.638300;
		reg11 += 82.104900;
		reg13 += 3.875140;
		reg14 += 70.313400;
		reg21 += 96.042700;
		reg22 += 76.426400;
		reg23 += 51.017700;
		reg24 += 55.432800;
		reg25 += 91.661500;
		reg29 += 45.848800;
		reg30 += 80.987600;
		reg33 += 76.446600;
		x[totalThreadCount * 2 + globalThreadID] += 97.103600;
		x[totalThreadCount * 5 + globalThreadID] += 12.784400;
		x[totalThreadCount * 7 + globalThreadID] += 35.890200;
	}
	if ((gray >> 20) & 1LL)
	{
		reg1 += 58.752100;
		reg3 += 0.851248;
		reg5 += 87.753600;
		reg8 += 2.561700;
		reg9 += 94.339200;
		reg13 += 12.769900;
		reg14 += 41.792200;
		reg15 += 49.787100;
		reg17 += 97.401900;
		reg18 += 29.046200;
		reg20 += 47.301100;
		reg23 += 45.549500;
		reg27 += 7.938260;
		reg29 += 37.453800;
		reg31 += 98.330900;
		x[totalThreadCount * 5 + globalThreadID] += 60.971000;
		x[totalThreadCount * 6 + globalThreadID] += 7.140690;
		x[totalThreadCount * 7 + globalThreadID] += 28.680800;
		x[totalThreadCount * 8 + globalThreadID] += 81.402900;
		x[totalThreadCount * 9 + globalThreadID] += 49.903800;
	}
	if ((gray >> 21) & 1LL)
	{
		reg0 += 76.005500;
		reg1 += 98.067200;
		reg6 += 2.764330;
		reg7 += 8.009930;
		reg9 += 59.821900;
		reg10 += 62.140800;
		reg11 += 24.736500;
		reg12 += 48.568500;
		reg14 += 53.251600;
		reg18 += 7.631010;
		reg19 += 14.411600;
		reg20 += 39.025800;
		reg21 += 2.996840;
		reg24 += 92.224400;
		reg26 += 15.170500;
		reg27 += 97.358200;
		reg28 += 49.471400;
		reg29 += 74.988500;
		reg31 += 89.933100;
		reg32 += 50.059100;
		x[totalThreadCount * 0 + globalThreadID] += 27.050800;
		x[totalThreadCount * 1 + globalThreadID] += 99.942800;
		x[totalThreadCount * 3 + globalThreadID] += 36.587900;
		x[totalThreadCount * 4 + globalThreadID] += 79.829700;
		x[totalThreadCount * 5 + globalThreadID] += 40.447600;
		x[totalThreadCount * 7 + globalThreadID] += 40.045800;
		x[totalThreadCount * 8 + globalThreadID] += 41.901500;
	}
	if ((gray >> 22) & 1LL)
	{
		reg0 += 28.944400;
		reg1 += 56.639400;
		reg10 += 52.751900;
		reg12 += 16.953900;
		reg13 += 30.227600;
		reg14 += 24.702300;
		reg17 += 3.637350;
		reg20 += 83.733400;
		reg22 += 62.047400;
		reg23 += 72.378100;
		reg25 += 54.440700;
		reg27 += 7.975980;
		reg28 += 61.816700;
		reg30 += 79.688700;
		reg33 += 79.401600;
		x[totalThreadCount * 0 + globalThreadID] += 26.928300;
		x[totalThreadCount * 5 + globalThreadID] += 32.200900;
		x[totalThreadCount * 7 + globalThreadID] += 8.920390;
		x[totalThreadCount * 8 + globalThreadID] += 97.857900;
		x[totalThreadCount * 10 + globalThreadID] += 93.668500;
	}
	if ((gray >> 23) & 1LL)
	{
		reg0 += 7.677490;
		reg4 += 73.866900;
		reg6 += 26.599800;
		reg7 += 95.975700;
		reg8 += 74.671100;
		reg15 += 27.387200;
		reg17 += 42.768300;
		reg22 += 39.511400;
		reg25 += 28.865600;
		reg30 += 25.813000;
		reg33 += 94.448800;
		x[totalThreadCount * 0 + globalThreadID] += 78.477800;
		x[totalThreadCount * 1 + globalThreadID] += 47.326600;
		x[totalThreadCount * 2 + globalThreadID] += 40.252100;
		x[totalThreadCount * 4 + globalThreadID] += 10.004000;
		x[totalThreadCount * 5 + globalThreadID] += 55.185400;
		x[totalThreadCount * 6 + globalThreadID] += 70.814400;
		x[totalThreadCount * 8 + globalThreadID] += 56.936700;
	}
	if ((gray >> 24) & 1LL)
	{
		reg6 += 55.031500;
		reg8 += 81.327500;
		reg13 += 79.308400;
		reg14 += 37.636500;
		reg17 += 18.917400;
		reg21 += 11.799900;
		reg24 += 47.637000;
		reg25 += 77.397000;
		reg26 += 65.289800;
		reg27 += 48.842600;
		reg29 += 70.917600;
		x[totalThreadCount * 2 + globalThreadID] += 0.104331;
		x[totalThreadCount * 3 + globalThreadID] += 44.676600;
		x[totalThreadCount * 7 + globalThreadID] += 7.300830;
	}
	if ((gray >> 25) & 1LL)
	{
		reg1 += 53.350100;
		reg3 += 65.532200;
		reg4 += 30.683300;
		reg5 += 85.987800;
		reg7 += 0.013368;
		reg10 += 0.780469;
		reg13 += 78.849400;
		reg14 += 21.945100;
		reg16 += 92.339200;
		reg17 += 87.778800;
		reg18 += 30.687500;
		reg19 += 69.870900;
		reg23 += 88.770900;
		reg24 += 68.297200;
		reg26 += 37.673600;
		reg27 += 81.803900;
		reg29 += 84.155400;
		reg31 += 73.704000;
		reg33 += 76.889700;
		x[totalThreadCount * 3 + globalThreadID] += 80.978900;
		x[totalThreadCount * 5 + globalThreadID] += 21.141700;
		x[totalThreadCount * 9 + globalThreadID] += 56.850100;
	}
	if ((gray >> 26) & 1LL)
	{
		reg0 += 50.058100;
		reg1 += 33.477200;
		reg2 += 21.018000;
		reg4 += 3.067870;
		reg8 += 48.874100;
		reg9 += 96.290600;
		reg11 += 9.185260;
		reg12 += 65.627300;
		reg21 += 38.464100;
		reg23 += 7.095630;
		reg24 += 21.662600;
		reg25 += 98.594100;
		reg26 += 37.931200;
		reg27 += 33.882600;
		reg30 += 27.816600;
		reg31 += 53.661400;
		x[totalThreadCount * 4 + globalThreadID] += 54.741500;
		x[totalThreadCount * 5 + globalThreadID] += 95.765300;
		x[totalThreadCount * 6 + globalThreadID] += 2.965230;
		x[totalThreadCount * 7 + globalThreadID] += 77.254000;
		x[totalThreadCount * 9 + globalThreadID] += 57.557400;
		x[totalThreadCount * 10 + globalThreadID] += 56.112400;
	}
	if ((gray >> 27) & 1LL)
	{
		reg5 += 13.523200;
		reg6 += 97.830700;
		reg10 += 31.302300;
		reg12 += 40.641700;
		reg13 += 37.223100;
		reg20 += 60.132600;
		reg21 += 42.235700;
		reg23 += 75.892200;
		reg26 += 56.929400;
		reg33 += 57.800600;
		x[totalThreadCount * 0 + globalThreadID] += 15.129300;
		x[totalThreadCount * 1 + globalThreadID] += 72.932700;
		x[totalThreadCount * 3 + globalThreadID] += 55.833400;
		x[totalThreadCount * 7 + globalThreadID] += 42.666200;
		x[totalThreadCount * 8 + globalThreadID] += 14.717500;
		x[totalThreadCount * 9 + globalThreadID] += 14.206700;
		x[totalThreadCount * 10 + globalThreadID] += 39.076900;
	}
	if ((gray >> 28) & 1LL)
	{
		reg0 += 64.462500;
		reg1 += 51.887400;
		reg3 += 66.493500;
		reg5 += 11.661400;
		reg6 += 62.894500;
		reg7 += 25.599600;
		reg10 += 94.332600;
		reg18 += 16.709300;
		reg23 += 82.294400;
		reg24 += 87.581200;
		reg25 += 6.025410;
		x[totalThreadCount * 1 + globalThreadID] += 99.537800;
		x[totalThreadCount * 2 + globalThreadID] += 63.220700;
		x[totalThreadCount * 3 + globalThreadID] += 31.225900;
		x[totalThreadCount * 8 + globalThreadID] += 29.330800;
		x[totalThreadCount * 9 + globalThreadID] += 91.820200;
	}
	if ((gray >> 29) & 1LL)
	{
		reg0 += 15.486400;
		reg3 += 97.505700;
		reg5 += 69.577600;
		reg11 += 95.567300;
		reg12 += 9.809400;
		reg15 += 46.530300;
		reg19 += 46.284100;
		reg22 += 16.945800;
		reg23 += 64.351200;
		reg26 += 73.167500;
		reg27 += 77.374400;
		reg28 += 78.424600;
		reg30 += 14.166300;
		x[totalThreadCount * 2 + globalThreadID] += 50.522200;
		x[totalThreadCount * 3 + globalThreadID] += 83.849500;
		x[totalThreadCount * 4 + globalThreadID] += 16.610300;
		x[totalThreadCount * 7 + globalThreadID] += 88.538800;
		x[totalThreadCount * 10 + globalThreadID] += 48.919500;
	}
	if ((gray >> 30) & 1LL)
	{
		reg1 += 56.280800;
		reg2 += 31.186900;
		reg5 += 15.049400;
		reg6 += 76.497000;
		reg11 += 68.822300;
		reg14 += 51.337100;
		reg20 += 67.592800;
		reg22 += 48.070100;
		reg23 += 46.017300;
		reg25 += 91.011500;
		reg29 += 25.410200;
		reg31 += 72.133600;
		x[totalThreadCount * 1 + globalThreadID] += 56.919000;
		x[totalThreadCount * 2 + globalThreadID] += 19.963900;
		x[totalThreadCount * 3 + globalThreadID] += 95.544800;
		x[totalThreadCount * 4 + globalThreadID] += 32.929500;
		x[totalThreadCount * 5 + globalThreadID] += 19.146000;
		x[totalThreadCount * 6 + globalThreadID] += 69.513700;
		x[totalThreadCount * 9 + globalThreadID] += 75.704400;
	}
	if ((gray >> 31) & 1LL)
	{
		reg1 += 82.591500;
		reg7 += 9.639360;
		reg8 += 20.567900;
		reg9 += 58.525500;
		reg13 += 64.871400;
		reg14 += 47.629500;
		reg16 += 55.335200;
		reg18 += 47.259100;
		reg19 += 21.066300;
		reg22 += 87.768000;
		reg23 += 38.768200;
		reg25 += 2.941690;
		reg31 += 20.818800;
		x[totalThreadCount * 2 + globalThreadID] += 61.325200;
		x[totalThreadCount * 8 + globalThreadID] += 63.491600;
		x[totalThreadCount * 9 + globalThreadID] += 52.684500;
	}
	if ((gray >> 32) & 1LL)
	{
		reg2 += 23.943400;
		reg3 += 89.285700;
		reg10 += 44.369800;
		reg13 += 16.365600;
		reg14 += 31.896300;
		reg15 += 81.116800;
		reg16 += 88.474600;
		reg21 += 6.494680;
		reg23 += 63.476900;
		reg27 += 2.343620;
		reg29 += 26.053300;
		reg30 += 11.260100;
		x[totalThreadCount * 0 + globalThreadID] += 45.689100;
		x[totalThreadCount * 2 + globalThreadID] += 21.932700;
		x[totalThreadCount * 3 + globalThreadID] += 49.988200;
		x[totalThreadCount * 10 + globalThreadID] += 95.463500;
	}
	if ((gray >> 33) & 1LL)
	{
		reg1 += 4.168570;
		reg2 += 41.055000;
		reg3 += 88.352600;
		reg5 += 70.659800;
		reg11 += 13.183900;
		reg14 += 2.899660;
		reg16 += 96.803200;
		reg17 += 14.335400;
		reg21 += 55.708400;
		reg24 += 38.357600;
		reg25 += 35.500000;
		reg26 += 5.252690;
		reg28 += 81.894300;
		reg30 += 70.433500;
		reg32 += 54.841200;
		x[totalThreadCount * 0 + globalThreadID] += 72.243400;
		x[totalThreadCount * 1 + globalThreadID] += 4.262390;
		x[totalThreadCount * 4 + globalThreadID] += 40.070700;
		x[totalThreadCount * 6 + globalThreadID] += 1.539540;
		x[totalThreadCount * 7 + globalThreadID] += 7.659480;
		x[totalThreadCount * 10 + globalThreadID] += 71.791600;
	}
	if ((gray >> 34) & 1LL)
	{
		reg2 += 69.335500;
		reg6 += 9.850570;
		reg10 += 63.842500;
		reg15 += 97.074700;
		reg16 += 21.779900;
		reg17 += 17.072500;
		reg18 += 76.107800;
		reg19 += 30.057200;
		reg25 += 24.722300;
		x[totalThreadCount * 0 + globalThreadID] += 38.971700;
		x[totalThreadCount * 2 + globalThreadID] += 1.447980;
		x[totalThreadCount * 3 + globalThreadID] += 19.411800;
		x[totalThreadCount * 5 + globalThreadID] += 68.240500;
		x[totalThreadCount * 9 + globalThreadID] += 79.563900;
	}
	if ((gray >> 35) & 1LL)
	{
		reg0 += 24.816800;
		reg1 += 82.628700;
		reg2 += 65.370300;
		reg3 += 94.659000;
		reg4 += 61.191100;
		reg7 += 98.279400;
		reg10 += 88.852400;
		reg13 += 43.125900;
		reg14 += 18.883000;
		reg20 += 88.283700;
		reg21 += 77.045600;
		reg25 += 42.475800;
		reg27 += 92.278200;
		reg28 += 64.081100;
		reg30 += 20.509000;
		reg32 += 76.131700;
		x[totalThreadCount * 0 + globalThreadID] += 51.628200;
		x[totalThreadCount * 1 + globalThreadID] += 52.386700;
		x[totalThreadCount * 2 + globalThreadID] += 55.247300;
		x[totalThreadCount * 5 + globalThreadID] += 17.040500;
		x[totalThreadCount * 7 + globalThreadID] += 32.300900;
		x[totalThreadCount * 8 + globalThreadID] += 39.287300;
		x[totalThreadCount * 9 + globalThreadID] += 60.053300;
	}
	if ((gray >> 36) & 1LL)
	{
		reg0 += 63.206100;
		reg2 += 43.407000;
		reg4 += 49.226700;
		reg8 += 46.979100;
		reg9 += 55.719700;
		reg11 += 50.883100;
		reg13 += 7.841390;
		reg16 += 61.184000;
		reg19 += 68.098300;
		reg23 += 81.678800;
		reg25 += 43.043200;
		reg31 += 8.542850;
		reg32 += 82.071500;
		x[totalThreadCount * 1 + globalThreadID] += 69.065800;
		x[totalThreadCount * 2 + globalThreadID] += 44.893400;
		x[totalThreadCount * 4 + globalThreadID] += 79.943000;
		x[totalThreadCount * 8 + globalThreadID] += 82.435600;
		x[totalThreadCount * 9 + globalThreadID] += 63.866500;
	}
	if ((gray >> 37) & 1LL)
	{
		reg2 += 76.210800;
		reg5 += 94.580100;
		reg6 += 45.253500;
		reg10 += 26.145700;
		reg11 += 70.378600;
		reg12 += 11.198600;
		reg13 += 74.490100;
		reg15 += 34.890400;
		reg19 += 75.368200;
		reg22 += 63.244800;
		reg23 += 67.688600;
		reg26 += 48.852700;
		reg28 += 31.861700;
		reg29 += 43.949100;
		reg31 += 18.358200;
		reg33 += 27.552600;
		x[totalThreadCount * 2 + globalThreadID] += 22.900800;
		x[totalThreadCount * 5 + globalThreadID] += 13.707700;
		x[totalThreadCount * 8 + globalThreadID] += 50.165200;
		x[totalThreadCount * 9 + globalThreadID] += 78.924500;
		x[totalThreadCount * 10 + globalThreadID] += 13.415600;
	}
	if ((gray >> 38) & 1LL)
	{
		reg0 += 62.356700;
		reg5 += 94.947500;
		reg18 += 88.048800;
		reg19 += 87.160900;
		reg20 += 50.795300;
		reg23 += 43.867100;
		reg29 += 65.306700;
		reg30 += 17.949000;
		reg33 += 71.066300;
		x[totalThreadCount * 0 + globalThreadID] += 72.538000;
		x[totalThreadCount * 1 + globalThreadID] += 85.442000;
		x[totalThreadCount * 2 + globalThreadID] += 78.691300;
		x[totalThreadCount * 4 + globalThreadID] += 85.461500;
		x[totalThreadCount * 7 + globalThreadID] += 1.114420;
		x[totalThreadCount * 9 + globalThreadID] += 5.733950;
		x[totalThreadCount * 10 + globalThreadID] += 5.786660;
	}
	if ((gray >> 39) & 1LL)
	{
		reg0 += 49.045300;
		reg2 += 94.255800;
		reg3 += 42.425400;
		reg4 += 49.544900;
		reg5 += 40.682400;
		reg7 += 19.948800;
		reg9 += 15.055000;
		reg10 += 65.119500;
		reg13 += 24.623600;
		reg16 += 94.694000;
		reg20 += 38.655400;
		reg22 += 60.801100;
		reg23 += 54.094100;
		reg27 += 90.405200;
		reg30 += 26.249100;
		reg31 += 41.628600;
		reg32 += 27.681600;
		reg33 += 15.695000;
		x[totalThreadCount * 0 + globalThreadID] += 27.157500;
		x[totalThreadCount * 3 + globalThreadID] += 16.961000;
		x[totalThreadCount * 6 + globalThreadID] += 90.493900;
		x[totalThreadCount * 7 + globalThreadID] += 2.333680;
		x[totalThreadCount * 9 + globalThreadID] += 79.511900;
		x[totalThreadCount * 10 + globalThreadID] += 85.845500;
	}
	if ((gray >> 40) & 1LL)
	{
		reg0 += 90.966600;
		reg1 += 28.500900;
		reg2 += 22.571900;
		reg5 += 10.708800;
		reg6 += 97.156800;
		reg9 += 22.602200;
		reg11 += 28.690500;
		reg13 += 29.145800;
		reg14 += 41.603900;
		reg15 += 0.389246;
		reg17 += 53.548800;
		reg18 += 30.285100;
		reg22 += 78.098600;
		reg23 += 93.482500;
		reg26 += 50.664600;
		reg27 += 47.754400;
		reg30 += 59.129100;
		reg33 += 68.860200;
		x[totalThreadCount * 2 + globalThreadID] += 15.197500;
		x[totalThreadCount * 4 + globalThreadID] += 36.190900;
		x[totalThreadCount * 7 + globalThreadID] += 68.363700;
		x[totalThreadCount * 8 + globalThreadID] += 87.983100;
		x[totalThreadCount * 9 + globalThreadID] += 39.573400;
		x[totalThreadCount * 10 + globalThreadID] += 51.195600;
	}
	if ((gray >> 41) & 1LL)
	{
		reg0 += 56.470700;
		reg4 += 96.138100;
		reg7 += 57.436600;
		reg9 += 40.360900;
		reg11 += 34.870700;
		reg14 += 67.064400;
		reg17 += 64.443400;
		reg18 += 70.697600;
		reg24 += 76.517400;
		reg25 += 29.736500;
		reg27 += 70.819600;
		reg28 += 61.563000;
		reg30 += 80.446800;
		reg32 += 80.757200;
		x[totalThreadCount * 0 + globalThreadID] += 22.808700;
		x[totalThreadCount * 3 + globalThreadID] += 5.808810;
		x[totalThreadCount * 5 + globalThreadID] += 99.325400;
		x[totalThreadCount * 7 + globalThreadID] += 5.334650;
		x[totalThreadCount * 9 + globalThreadID] += 95.697400;
		x[totalThreadCount * 10 + globalThreadID] += 44.767700;
	}
	if ((gray >> 42) & 1LL)
	{
		reg0 += 25.154200;
		reg2 += 46.592500;
		reg5 += 85.809200;
		reg6 += 55.063100;
		reg10 += 68.140400;
		reg18 += 32.435200;
		reg20 += 4.336320;
		reg24 += 38.248200;
		reg25 += 34.580800;
		reg27 += 32.155400;
		reg29 += 93.451200;
		reg31 += 2.400710;
		x[totalThreadCount * 2 + globalThreadID] += 7.589620;
		x[totalThreadCount * 6 + globalThreadID] += 82.771400;
		x[totalThreadCount * 9 + globalThreadID] += 96.980400;
		x[totalThreadCount * 10 + globalThreadID] += 99.071600;
	}
	if ((gray >> 43) & 1LL)
	{
		reg1 += 9.216540;
		reg2 += 93.270000;
		reg5 += 8.553950;
		reg7 += 88.281300;
		reg9 += 62.414100;
		reg10 += 12.385000;
		reg13 += 45.768900;
		reg17 += 17.052200;
		reg19 += 58.116300;
		reg20 += 64.613800;
		reg21 += 50.757500;
		reg23 += 5.551580;
		reg27 += 65.604100;
		reg28 += 6.888720;
		reg32 += 98.359100;
		reg33 += 59.154600;
		x[totalThreadCount * 0 + globalThreadID] += 37.205600;
		x[totalThreadCount * 2 + globalThreadID] += 23.628500;
		x[totalThreadCount * 4 + globalThreadID] += 45.055500;
		x[totalThreadCount * 7 + globalThreadID] += 50.620700;
		x[totalThreadCount * 8 + globalThreadID] += 38.410200;
		x[totalThreadCount * 9 + globalThreadID] += 36.350300;
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
								totalThreadCount,
								globalThreadID,
								x);
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33);
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
								totalThreadCount,
								globalThreadID,
								x);
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
								reg20,
								reg21,
								reg22,
								reg23,
								reg24,
								reg25,
								reg26,
								reg27,
								reg28,
								reg29,
								reg30,
								reg31,
								reg32,
								reg33,
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
