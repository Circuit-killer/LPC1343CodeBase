	.syntax unified
	.cpu cortex-m3
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"i2c.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed i2c.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip i2c.o -Os -Wall -ffunction-sections
@ -fdata-sections -fmessage-length=0 -fno-builtin -fverbose-asm
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdata-sections -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
@ -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
@ -fextension-elimination -fforward-propagate -ffunction-cse
@ -ffunction-sections -fgcse -fgcse-lm -fguess-branch-probability -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-sra -fira-share-save-slots -fira-share-spill-slots
@ -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
@ -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
@ -fregmove -frename-registers -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
@ -fsection-anchors -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller
@ -fsplit-wide-types -fstrict-aliasing -fstrict-overflow
@ -fstrict-volatile-bitfields -fthread-jumps -ftoplevel-reorder
@ -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
@ -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-if-to-switch-conversion -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
@ -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
@ -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
@ -funroll-loops -fverbose-asm -fweb -fzero-initialized-in-bss -mapcs-frame
@ -mfix-cortex-m3-ldrd -mlittle-endian -mpoke-function-name -msched-prolog
@ -mthumb -munaligned-access

@ Compiler executable checksum: 2014a540ab214d377ae7a67b6a369ce1

	.section	.text.I2C_IRQHandler,"ax",%progbits
	.align	1
	.global	I2C_IRQHandler
	.thumb
	.thumb_func
	.ascii	"I2C_IRQHandler\000"
	.align	2
	.word	4278190096
	.type	I2C_IRQHandler, %function
I2C_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L36	@ tmp167,
	ldr	r3, [r0, #0]	@ D.4636, MEM[(volatile long unsigned int *)1073741828B]
	uxtb	r3, r3	@ D.4636, D.4636
	cmp	r3, #48	@ D.4636,
	beq	.L8	@,
	bhi	.L14	@,
	cmp	r3, #24	@ D.4636,
	beq	.L5	@,
	bhi	.L15	@,
	cmp	r3, #8	@ D.4636,
	beq	.L3	@,
	cmp	r3, #16	@ D.4636,
	bne	.L2	@,
	b	.L32	@
.L15:
	cmp	r3, #32	@ D.4636,
	beq	.L11	@,
	cmp	r3, #40	@ D.4636,
	bne	.L2	@,
	b	.L33	@
.L14:
	cmp	r3, #72	@ D.4636,
	beq	.L11	@,
	bhi	.L16	@,
	cmp	r3, #56	@ D.4636,
	beq	.L9	@,
	cmp	r3, #64	@ D.4636,
	bne	.L2	@,
	b	.L34	@
.L16:
	cmp	r3, #80	@ D.4636,
	beq	.L12	@,
	cmp	r3, #88	@ D.4636,
	bne	.L2	@,
	b	.L35	@
.L3:
	ldr	r3, .L36+4	@ tmp169,
	movs	r2, #0	@ tmp170,
	str	r2, [r3, #0]	@ tmp170, WrIndex
	ldr	r2, [r3, #0]	@ WrIndex.5, WrIndex
	ldr	r0, .L36+8	@ tmp172,
	ldr	r1, .L36+12	@ tmp175,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ tmp174, I2CMasterBuffer
	str	r0, [r1, #0]	@ D.4641, MEM[(volatile long unsigned int *)1073741832B]
	ldr	r1, .L36+16	@ tmp177,
	adds	r0, r2, #1	@ WrIndex.6, WrIndex.5,
	movs	r2, #40	@ tmp178,
	str	r0, [r3, #0]	@ WrIndex.6, WrIndex
	str	r2, [r1, #0]	@ tmp178, MEM[(volatile long unsigned int *)1073741848B]
	movs	r2, #1	@ tmp180,
	b	.L27	@
.L32:
	ldr	r3, .L36+20	@ tmp181,
	movs	r2, #0	@ tmp182,
	str	r2, [r3, #0]	@ tmp182, RdIndex
	ldr	r3, .L36+4	@ tmp183,
	ldr	r0, .L36+8	@ tmp184,
	ldr	r2, [r3, #0]	@ WrIndex.7, WrIndex
	ldr	r1, .L36+12	@ tmp187,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ tmp186, I2CMasterBuffer
	str	r0, [r1, #0]	@ D.4646, MEM[(volatile long unsigned int *)1073741832B]
	adds	r1, r2, #1	@ WrIndex.8, WrIndex.7,
	str	r1, [r3, #0]	@ WrIndex.8, WrIndex
	movs	r2, #40	@ tmp190,
	b	.L28	@
.L5:
	ldr	r3, .L36+4	@ tmp191,
	b	.L31	@
.L33:
	ldr	r3, .L36+4	@ tmp205,
	ldr	r2, .L36+24	@ tmp206,
	ldr	r1, [r3, #0]	@ WrIndex.11, WrIndex
	ldr	r0, [r2, #0]	@ I2CWriteLength.12, I2CWriteLength
	cmp	r1, r0	@ WrIndex.11, I2CWriteLength.12
	bcs	.L18	@,
.L31:
	ldr	r2, [r3, #0]	@ WrIndex.13, WrIndex
	ldr	r0, .L36+8	@ tmp208,
	ldr	r1, .L36+12	@ tmp211,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ tmp210, I2CMasterBuffer
	adds	r2, r2, #1	@ WrIndex.14, WrIndex.13,
	str	r0, [r1, #0]	@ D.4659,
	b	.L30	@
.L18:
	ldr	r3, .L36+28	@ tmp213,
	ldr	r2, [r3, #0]	@ I2CReadLength.15, I2CReadLength
	mov	r3, #1073741824	@ tmp276,
	cbz	r2, .L20	@ I2CReadLength.15,
	movs	r2, #32	@ tmp215,
	b	.L30	@
.L20:
	ldr	r0, .L36+32	@ tmp216,
	movw	r1, #257	@ tmp217,
	str	r1, [r0, #0]	@ tmp217, I2CMasterState
	movs	r2, #16	@ tmp219,
	b	.L30	@
.L8:
	mov	r3, #1073741824	@ tmp222,
	movs	r2, #8	@ tmp225,
	movs	r1, #16	@ tmp223,
	str	r1, [r3, #0]	@ tmp223, MEM[(volatile long unsigned int *)1073741824B]
	str	r2, [r3, #24]	@ tmp225, MEM[(volatile long unsigned int *)1073741848B]
	mov	r2, #258	@ tmp227,
	b	.L27	@
.L9:
	ldr	r3, .L36+32	@ tmp228,
	mov	r2, #260	@ tmp229,
.L30:
	str	r2, [r3, #0]	@ tmp229,
	b	.L2	@
.L34:
	ldr	r2, .L36+28	@ tmp232,
	ldr	r3, .L36+16	@ tmp274,
	ldr	r0, [r2, #0]	@ I2CReadLength.16, I2CReadLength
	movs	r2, #4	@ tmp275,
	cmp	r0, #1	@ I2CReadLength.16,
	bne	.L29	@,
	b	.L23	@
.L11:
	mov	r3, #1073741824	@ tmp239,
	movs	r0, #16	@ tmp240,
	movs	r1, #8	@ tmp242,
	str	r0, [r3, #0]	@ tmp240,
	movw	r2, #259	@ tmp244,
	str	r1, [r3, #24]	@ tmp242,
.L27:
	ldr	r3, .L36+32	@ tmp243,
	b	.L26	@
.L12:
	ldr	r3, .L36+20	@ tmp245,
	ldr	r0, .L36+12	@ tmp246,
	ldr	r2, [r3, #0]	@ RdIndex.17, RdIndex
	ldr	r1, .L36+36	@ tmp247,
	ldr	r0, [r0, #0]	@ D.4672, MEM[(volatile long unsigned int *)1073741832B]
	strb	r0, [r1, r2]	@ D.4673, I2CSlaveBuffer
	adds	r2, r2, #1	@ RdIndex.18, RdIndex.17,
	ldr	r0, .L36+28	@ tmp251,
	str	r2, [r3, #0]	@ RdIndex.18, RdIndex
	ldr	r2, [r3, #0]	@ RdIndex.19, RdIndex
	ldr	r3, [r0, #0]	@ I2CReadLength.20, I2CReadLength
	subs	r1, r3, #1	@ tmp252, I2CReadLength.20,
	cmp	r2, r1	@ RdIndex.19, tmp252
	ldr	r3, .L36+16	@ tmp272,
	mov	r2, #4	@ tmp273,
	bcs	.L23	@,
.L29:
	mov	r1, #1073741824	@ tmp253,
	str	r2, [r1, #0]	@ tmp273,
	b	.L24	@
.L23:
	str	r2, [r3, #0]	@ tmp273,
.L24:
	movs	r2, #8	@ tmp258,
	b	.L26	@
.L35:
	ldr	r3, .L36+20	@ tmp259,
	ldr	r0, .L36+12	@ tmp260,
	ldr	r2, [r3, #0]	@ RdIndex.21, RdIndex
	ldr	r1, .L36+36	@ tmp261,
	ldr	r0, [r0, #0]	@ D.4682, MEM[(volatile long unsigned int *)1073741832B]
	strb	r0, [r1, r2]	@ D.4683, I2CSlaveBuffer
	adds	r0, r2, #1	@ RdIndex.22, RdIndex.21,
	ldr	r2, .L36+32	@ tmp264,
	movw	r1, #257	@ tmp265,
	str	r0, [r3, #0]	@ RdIndex.22, RdIndex
	str	r1, [r2, #0]	@ tmp265, I2CMasterState
	mov	r3, #1073741824	@ tmp266,
	movs	r0, #16	@ tmp267,
	movs	r2, #8	@ tmp269,
	str	r0, [r3, #0]	@ tmp267, MEM[(volatile long unsigned int *)1073741824B]
	str	r2, [r3, #24]	@ tmp269, MEM[(volatile long unsigned int *)1073741848B]
	bx	lr	@
.L2:
	movs	r2, #8	@ tmp271,
.L28:
	ldr	r3, .L36+16	@ tmp270,
.L26:
	str	r2, [r3, #0]	@ tmp271,
	bx	lr	@
.L37:
	.align	2
.L36:
	.word	1073741828
	.word	WrIndex
	.word	I2CMasterBuffer
	.word	1073741832
	.word	1073741848
	.word	RdIndex
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	.LANCHOR0
	.word	I2CSlaveBuffer
	.size	I2C_IRQHandler, .-I2C_IRQHandler
	.section	.text.i2cInit,"ax",%progbits
	.align	1
	.global	i2cInit
	.thumb
	.thumb_func
	.ascii	"i2cInit\000"
	.align	2
	.word	4278190088
	.type	i2cInit, %function
i2cInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L41	@ tmp150,
	ldr	r3, .L41+4	@ tmp151,
	str	r0, [r2, #0]	@ I2cMode, _I2cMode
	ldr	r1, [r3, #0]	@ D.4599, MEM[(volatile long unsigned int *)1074036740B]
	orr	r0, r1, #2	@ D.4600, D.4599,
	str	r0, [r3, #0]	@ D.4600, MEM[(volatile long unsigned int *)1074036740B]
	ldr	r1, [r3, #124]	@ D.4602, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r1, #32	@ D.4603, D.4602,
	str	r0, [r3, #124]	@ D.4603, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r3, .L41+8	@ tmp155,
	ldr	r1, [r3, #0]	@ D.4605, MEM[(volatile long unsigned int *)1074020400B]
	bic	ip, r1, #768	@ D.4606, D.4605,
	bic	r0, ip, #7	@ D.4606, D.4606,
	str	r0, [r3, #0]	@ D.4606, MEM[(volatile long unsigned int *)1074020400B]
	ldr	r1, [r3, #0]	@ D.4607, MEM[(volatile long unsigned int *)1074020400B]
	orr	r0, r1, #1	@ D.4608, D.4607,
	str	r0, [r3, #0]	@ D.4608, MEM[(volatile long unsigned int *)1074020400B]
	ldr	r1, [r3, #4]	@ D.4610, MEM[(volatile long unsigned int *)1074020404B]
	bic	ip, r1, #768	@ D.4611, D.4610,
	bic	r0, ip, #7	@ D.4611, D.4611,
	str	r0, [r3, #4]	@ D.4611, MEM[(volatile long unsigned int *)1074020404B]
	ldr	r1, [r3, #4]	@ D.4612, MEM[(volatile long unsigned int *)1074020404B]
	orr	r0, r1, #1	@ D.4613, D.4612,
	str	r0, [r3, #4]	@ D.4613, MEM[(volatile long unsigned int *)1074020404B]
	ldr	r3, .L41+12	@ tmp165,
	movs	r1, #108	@ tmp166,
	str	r1, [r3, #0]	@ tmp166, MEM[(volatile long unsigned int *)1073741848B]
	ldr	r1, .L41+16	@ tmp167,
	movs	r0, #90	@ tmp168,
	str	r0, [r1, #0]	@ tmp168, MEM[(volatile long unsigned int *)1073741844B]
	str	r0, [r1, #-4]	@ tmp168, MEM[(volatile long unsigned int *)1073741840B]
	ldr	r3, [r2, #0]	@ _I2cMode.2, _I2cMode
	cmp	r3, #2	@ _I2cMode.2,
	bne	.L39	@,
	ldr	r0, .L41+20	@ tmp172,
	movs	r1, #160	@ tmp173,
	ldr	r3, .L41+24	@ tmp174,
	str	r1, [r0, #0]	@ tmp173, MEM[(volatile long unsigned int *)1073741836B]
	movs	r0, #0	@ tmp175,
	str	r0, [r3, #0]	@ tmp175, I2CSlaveState
.L39:
	ldr	r3, .L41+28	@ tmp176,
	mov	r1, #256	@ tmp177,
	str	r1, [r3, #4]	@ tmp177, MEM[(struct NVIC_Type *)3758153984B].ISER
	ldr	r2, [r2, #0]	@ _I2cMode.3, _I2cMode
	cmp	r2, #1	@ _I2cMode.3,
	bne	.L40	@,
	movs	r0, #64	@ tmp180,
	mov	r2, #1073741824	@ tmp179,
	str	r0, [r2, #0]	@ tmp180, MEM[(volatile long unsigned int *)1073741824B]
.L40:
	movs	r0, #1	@,
	bx	lr	@
.L42:
	.align	2
.L41:
	.word	_I2cMode
	.word	1074036740
	.word	1074020400
	.word	1073741848
	.word	1073741844
	.word	1073741836
	.word	.LANCHOR1
	.word	-536813312
	.size	i2cInit, .-i2cInit
	.section	.text.i2cEngine,"ax",%progbits
	.align	1
	.global	i2cEngine
	.thumb
	.thumb_func
	.ascii	"i2cEngine\000"
	.align	2
	.word	4278190092
	.type	i2cEngine, %function
i2cEngine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L55	@ tmp146,
	ldr	r0, .L55+4	@ tmp148,
	ldr	r1, .L55+8	@ tmp144,
	movs	r3, #0	@ tmp145,
	str	r3, [r1, #0]	@ tmp145, I2CMasterState
	str	r3, [r2, #0]	@ tmp145, RdIndex
	str	r3, [r0, #0]	@ tmp145, WrIndex
	mov	r2, #1073741824	@ tmp150,
	movs	r0, #32	@ tmp151,
	str	r0, [r2, #0]	@ tmp151, MEM[(volatile long unsigned int *)1073741824B]
	b	.L44	@
.L46:
	adds	r3, r3, #1	@ timeout, timeout,
.L44:
	ldr	r0, [r1, #0]	@ I2CMasterState.1, I2CMasterState
	mvn	r2, #-16777216	@ tmp165,
	cmp	r0, #1	@ I2CMasterState.1,
	beq	.L45	@,
	cmp	r3, r2	@ timeout, tmp165
	bne	.L46	@,
	b	.L47	@
.L45:
	cmp	r3, r2	@ timeout, tmp165
	bne	.L52	@,
.L47:
	mov	r3, #1073741824	@ tmp155,
	movs	r2, #16	@ tmp156,
	movs	r1, #8	@ tmp158,
	str	r2, [r3, #0]	@ tmp156, MEM[(volatile long unsigned int *)1073741824B]
	str	r1, [r3, #24]	@ tmp158, MEM[(volatile long unsigned int *)1073741848B]
	mov	r3, #16777216	@ ivtmp.29,
.L50:
	mov	r1, #1073741824	@ tmp159,
	ldr	r0, [r1, #0]	@ D.4725, MEM[(volatile long unsigned int *)1073741824B]
	ands	r0, r0, #16	@ tmp160, D.4725,
	beq	.L49	@,
	subs	r3, r3, #1	@ ivtmp.29, ivtmp.29,
	bne	.L50	@,
	mov	r0, r3	@ D.4583, ivtmp.29
	bx	lr	@
.L52:
	ldr	r3, [r1, #0]	@ I2CMasterState.0, I2CMasterState
	cmp	r3, #255	@ I2CMasterState.0,
	bls	.L52	@,
	ldr	r2, .L55+8	@ tmp161,
	ldr	r0, [r2, #0]	@ D.4583, I2CMasterState
.L49:
	bx	lr	@
.L56:
	.align	2
.L55:
	.word	RdIndex
	.word	WrIndex
	.word	.LANCHOR0
	.size	i2cEngine, .-i2cEngine
	.comm	_I2cMode,4,4
	.comm	WrIndex,4,4
	.comm	RdIndex,4,4
	.comm	I2CWriteLength,4,4
	.comm	I2CReadLength,4,4
	.comm	I2CSlaveBuffer,64,1
	.comm	I2CMasterBuffer,64,1
	.global	I2CSlaveState
	.global	I2CMasterState
	.section	.bss.I2CMasterState,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	I2CMasterState, %object
	.size	I2CMasterState, 4
I2CMasterState:
	.space	4
	.section	.bss.I2CSlaveState,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	I2CSlaveState, %object
	.size	I2CSlaveState, 4
I2CSlaveState:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
