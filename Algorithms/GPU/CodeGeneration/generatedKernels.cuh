#ifndef SUPERMAN_GENERATEDKERNELS_CUH
#define SUPERMAN_GENERATEDKERNELS_CUH

#include "GPUHelpers.cuh"
#include "PrecisionHelpers.cuh"


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
									const C& reg33,
									const C& reg34,
									const C& reg35,
									const C& reg36,
									const C& reg37,
									const C& reg38,
									const C& reg39,
									const C& reg40,
									const C& reg41,
									const C& reg42,
									const C& reg43,
									const C& reg44,
									const C& reg45,
									const C& reg46,
									const C& reg47,
									const C& reg48,
									const C& reg49,
									const C& reg50,
									const C& reg51,
									const C& reg52,
									const C& reg53,
									const C& reg54,
									const C& reg55,
									const C& reg56,
									const C& reg57,
									const C& reg58,
									const C& reg59)
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
	product *= reg34;
	product *= reg35;
	product *= reg36;
	product *= reg37;
	product *= reg38;
	product *= reg39;
	product *= reg40;
	product *= reg41;
	product *= reg42;
	product *= reg43;
	product *= reg44;
	product *= reg45;
	product *= reg46;
	product *= reg47;
	product *= reg48;
	product *= reg49;
	product *= reg50;
	product *= reg51;
	product *= reg52;
	product *= reg53;
	product *= reg54;
	product *= reg55;
	product *= reg56;
	product *= reg57;
	product *= reg58;
	product *= reg59;
	product *= globalProduct;
}

template <class C>
__device__ __inline__ void c24included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c36included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c20included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c32included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c4included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c25included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c8included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c51included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c37included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c57included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c5included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c44included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c1included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c9included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c28included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c38included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c48included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c12included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c26included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c2included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c6included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c21included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c52included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c10included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c45included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c39included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c27included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c7included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c49included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c3included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c58included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c13included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c16included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c11included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c54included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c33included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c53included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c22included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c50included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c40included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c46included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c59included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c17included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c14included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c29included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c55included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c34included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c23included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c56included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c35included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c41included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c15included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c30included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c18included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c47included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c42included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c31included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c19included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c43included(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 += 0.910000;
	reg1 += 0.910000;
	reg2 += 0.910000;
	reg3 += 0.910000;
	reg4 += 0.910000;
	reg5 += 0.910000;
	reg6 += 0.910000;
	reg7 += 0.910000;
	reg8 += 0.910000;
	reg9 += 0.910000;
	reg10 += 0.910000;
	reg11 += 0.910000;
	reg12 += 0.910000;
	reg13 += 0.910000;
	reg14 += 0.910000;
	reg15 += 0.910000;
	reg16 += 0.910000;
	reg17 += 0.910000;
	reg18 += 0.910000;
	reg19 += 0.910000;
	reg20 += 0.910000;
	reg21 += 0.910000;
	reg22 += 0.910000;
	reg23 += 0.910000;
	reg24 += 0.910000;
	reg25 += 0.910000;
	reg26 += 0.910000;
	reg27 += 0.910000;
	reg28 += 0.910000;
	reg29 += 0.910000;
	reg30 += 0.910000;
	reg31 += 0.910000;
	reg32 += 0.910000;
	reg33 += 0.910000;
	reg34 += 0.910000;
	reg35 += 0.910000;
	reg36 += 0.910000;
	reg37 += 0.910000;
	reg38 += 0.910000;
	reg39 += 0.910000;
	reg40 += 0.910000;
	reg41 += 0.910000;
	reg42 += 0.910000;
	reg43 += 0.910000;
	reg44 += 0.910000;
	reg45 += 0.910000;
	reg46 += 0.910000;
	reg47 += 0.910000;
	reg48 += 0.910000;
	reg49 += 0.910000;
	reg50 += 0.910000;
	reg51 += 0.910000;
	reg52 += 0.910000;
	reg53 += 0.910000;
	reg54 += 0.910000;
	reg55 += 0.910000;
	reg56 += 0.910000;
	reg57 += 0.910000;
	reg58 += 0.910000;
	reg59 += 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c16excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c54excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c8excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c57excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c1excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c32excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c4excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c40excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c12excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c48excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c51excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c24excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c44excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c20excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c28excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c2excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c9excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c58excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c5excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c33excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c41excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c17excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c55excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c3excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c25excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c45excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c13excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c49excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c36excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c52excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c29excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c59excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c34excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c10excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c6excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c21excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c42excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c7excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c56excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c35excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c50excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c26excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c46excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c22excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c14excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c37excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c11excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c18excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c53excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c43excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c30excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c27excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c47excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c23excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c15excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c38excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c19excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c31excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
}

template <class C>
__device__ __inline__ void c39excluded(
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
									C& reg12,
									C& reg13,
									C& reg14,
									C& reg15,
									C& reg16,
									C& reg17,
									C& reg18,
									C& reg19,
									C& reg20,
									C& reg21,
									C& reg22,
									C& reg23,
									C& reg24,
									C& reg25,
									C& reg26,
									C& reg27,
									C& reg28,
									C& reg29,
									C& reg30,
									C& reg31,
									C& reg32,
									C& reg33,
									C& reg34,
									C& reg35,
									C& reg36,
									C& reg37,
									C& reg38,
									C& reg39,
									C& reg40,
									C& reg41,
									C& reg42,
									C& reg43,
									C& reg44,
									C& reg45,
									C& reg46,
									C& reg47,
									C& reg48,
									C& reg49,
									C& reg50,
									C& reg51,
									C& reg52,
									C& reg53,
									C& reg54,
									C& reg55,
									C& reg56,
									C& reg57,
									C& reg58,
									C& reg59)
{
	reg0 -= 0.910000;
	reg1 -= 0.910000;
	reg2 -= 0.910000;
	reg3 -= 0.910000;
	reg4 -= 0.910000;
	reg5 -= 0.910000;
	reg6 -= 0.910000;
	reg7 -= 0.910000;
	reg8 -= 0.910000;
	reg9 -= 0.910000;
	reg10 -= 0.910000;
	reg11 -= 0.910000;
	reg12 -= 0.910000;
	reg13 -= 0.910000;
	reg14 -= 0.910000;
	reg15 -= 0.910000;
	reg16 -= 0.910000;
	reg17 -= 0.910000;
	reg18 -= 0.910000;
	reg19 -= 0.910000;
	reg20 -= 0.910000;
	reg21 -= 0.910000;
	reg22 -= 0.910000;
	reg23 -= 0.910000;
	reg24 -= 0.910000;
	reg25 -= 0.910000;
	reg26 -= 0.910000;
	reg27 -= 0.910000;
	reg28 -= 0.910000;
	reg29 -= 0.910000;
	reg30 -= 0.910000;
	reg31 -= 0.910000;
	reg32 -= 0.910000;
	reg33 -= 0.910000;
	reg34 -= 0.910000;
	reg35 -= 0.910000;
	reg36 -= 0.910000;
	reg37 -= 0.910000;
	reg38 -= 0.910000;
	reg39 -= 0.910000;
	reg40 -= 0.910000;
	reg41 -= 0.910000;
	reg42 -= 0.910000;
	reg43 -= 0.910000;
	reg44 -= 0.910000;
	reg45 -= 0.910000;
	reg46 -= 0.910000;
	reg47 -= 0.910000;
	reg48 -= 0.910000;
	reg49 -= 0.910000;
	reg50 -= 0.910000;
	reg51 -= 0.910000;
	reg52 -= 0.910000;
	reg53 -= 0.910000;
	reg54 -= 0.910000;
	reg55 -= 0.910000;
	reg56 -= 0.910000;
	reg57 -= 0.910000;
	reg58 -= 0.910000;
	reg59 -= 0.910000;

	prodReduce<C>(
					product,
					globalProduct,
					reg0,
					reg1,
					reg2,
					reg3,
					reg4,
					reg5,
					reg6,
					reg7,
					reg8,
					reg9,
					reg10,
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
					reg34,
					reg35,
					reg36,
					reg37,
					reg38,
					reg39,
					reg40,
					reg41,
					reg42,
					reg43,
					reg44,
					reg45,
					reg46,
					reg47,
					reg48,
					reg49,
					reg50,
					reg51,
					reg52,
					reg53,
					reg54,
					reg55,
					reg56,
					reg57,
					reg58,
					reg59);
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
    C myError = 0;

	C reg0 = -26.390000;
	C reg1 = -26.390000;
	C reg2 = -26.390000;
	C reg3 = -26.390000;
	C reg4 = -26.390000;
	C reg5 = -26.390000;
	C reg6 = -26.390000;
	C reg7 = -26.390000;
	C reg8 = -26.390000;
	C reg9 = -26.390000;
	C reg10 = -26.390000;
	C reg11 = -26.390000;
	C reg12 = -26.390000;
	C reg13 = -26.390000;
	C reg14 = -26.390000;
	C reg15 = -26.390000;
	C reg16 = -26.390000;
	C reg17 = -26.390000;
	C reg18 = -26.390000;
	C reg19 = -26.390000;
	C reg20 = -26.390000;
	C reg21 = -26.390000;
	C reg22 = -26.390000;
	C reg23 = -26.390000;
	C reg24 = -26.390000;
	C reg25 = -26.390000;
	C reg26 = -26.390000;
	C reg27 = -26.390000;
	C reg28 = -26.390000;
	C reg29 = -26.390000;
	C reg30 = -26.390000;
	C reg31 = -26.390000;
	C reg32 = -26.390000;
	C reg33 = -26.390000;
	C reg34 = -26.390000;
	C reg35 = -26.390000;
	C reg36 = -26.390000;
	C reg37 = -26.390000;
	C reg38 = -26.390000;
	C reg39 = -26.390000;
	C reg40 = -26.390000;
	C reg41 = -26.390000;
	C reg42 = -26.390000;
	C reg43 = -26.390000;
	C reg44 = -26.390000;
	C reg45 = -26.390000;
	C reg46 = -26.390000;
	C reg47 = -26.390000;
	C reg48 = -26.390000;
	C reg49 = -26.390000;
	C reg50 = -26.390000;
	C reg51 = -26.390000;
	C reg52 = -26.390000;
	C reg53 = -26.390000;
	C reg54 = -26.390000;
	C reg55 = -26.390000;
	C reg56 = -26.390000;
	C reg57 = -26.390000;
	C reg58 = -26.390000;
	C reg59 = -26.390000;


    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (globalThreadID * chunkSize);
    long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
	if ((gray >> 0) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 1) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 2) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 3) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 4) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 5) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 6) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 7) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 8) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 9) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 10) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 11) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 12) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 13) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 14) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 15) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 16) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 17) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 18) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 19) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 20) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 21) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 22) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 23) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 24) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 25) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 26) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 27) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 28) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 29) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 30) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 31) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 32) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 33) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 34) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 35) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 36) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 37) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 38) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 39) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 40) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 41) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 42) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 43) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 44) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 45) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 46) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 47) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 48) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 49) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 50) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 51) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 52) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 53) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 54) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 55) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 56) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 57) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}
	if ((gray >> 58) & 1LL)
	{
		reg0 += 0.910000;
		reg1 += 0.910000;
		reg2 += 0.910000;
		reg3 += 0.910000;
		reg4 += 0.910000;
		reg5 += 0.910000;
		reg6 += 0.910000;
		reg7 += 0.910000;
		reg8 += 0.910000;
		reg9 += 0.910000;
		reg10 += 0.910000;
		reg11 += 0.910000;
		reg12 += 0.910000;
		reg13 += 0.910000;
		reg14 += 0.910000;
		reg15 += 0.910000;
		reg16 += 0.910000;
		reg17 += 0.910000;
		reg18 += 0.910000;
		reg19 += 0.910000;
		reg20 += 0.910000;
		reg21 += 0.910000;
		reg22 += 0.910000;
		reg23 += 0.910000;
		reg24 += 0.910000;
		reg25 += 0.910000;
		reg26 += 0.910000;
		reg27 += 0.910000;
		reg28 += 0.910000;
		reg29 += 0.910000;
		reg30 += 0.910000;
		reg31 += 0.910000;
		reg32 += 0.910000;
		reg33 += 0.910000;
		reg34 += 0.910000;
		reg35 += 0.910000;
		reg36 += 0.910000;
		reg37 += 0.910000;
		reg38 += 0.910000;
		reg39 += 0.910000;
		reg40 += 0.910000;
		reg41 += 0.910000;
		reg42 += 0.910000;
		reg43 += 0.910000;
		reg44 += 0.910000;
		reg45 += 0.910000;
		reg46 += 0.910000;
		reg47 += 0.910000;
		reg48 += 0.910000;
		reg49 += 0.910000;
		reg50 += 0.910000;
		reg51 += 0.910000;
		reg52 += 0.910000;
		reg53 += 0.910000;
		reg54 += 0.910000;
		reg55 += 0.910000;
		reg56 += 0.910000;
		reg57 += 0.910000;
		reg58 += 0.910000;
		reg59 += 0.910000;
	}

	C globalProduct = 1;

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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 48:
					c48included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 49:
					c49included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 50:
					c50included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 51:
					c51included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 52:
					c52included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 53:
					c53included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 54:
					c54included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 55:
					c55included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 56:
					c56included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 57:
					c57included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 58:
					c58included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 59:
					c59included<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg33,
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 48:
					c48excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 49:
					c49excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 50:
					c50excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 51:
					c51excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 52:
					c52excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 53:
					c53excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 54:
					c54excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 55:
					c55excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 56:
					c56excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 57:
					c57excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 58:
					c58excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				case 59:
					c59excluded<C>(
								product,
								globalProduct,
								reg0,
								reg1,
								reg2,
								reg3,
								reg4,
								reg5,
								reg6,
								reg7,
								reg8,
								reg9,
								reg10,
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
								reg34,
								reg35,
								reg36,
								reg37,
								reg38,
								reg39,
								reg40,
								reg41,
								reg42,
								reg43,
								reg44,
								reg45,
								reg46,
								reg47,
								reg48,
								reg49,
								reg50,
								reg51,
								reg52,
								reg53,
								reg54,
								reg55,
								reg56,
								reg57,
								reg58,
								reg59);
					break;
				default:
					break;
			}
		}

        kahanAdd<C>(myResult, myError, productSign * product);
        productSign *= -1;
    }

    p[globalThreadID] += myResult;
}


#endif //SUPERMAN_GENERATEDKERNELS_CUH
