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
	.file	"tcs3414.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed tcs3414.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip tcs3414.o -Os -Wall
@ -ffunction-sections -fdata-sections -fmessage-length=0 -fno-builtin
@ -fverbose-asm
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

	.section	.text.tcs3414WriteCmd,"ax",%progbits
	.align	1
	.global	tcs3414WriteCmd
	.thumb
	.thumb_func
	.ascii	"tcs3414WriteCmd\000"
	.align	2
	.word	4278190096
	.type	tcs3414WriteCmd, %function
tcs3414WriteCmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r3, #0	@ i,
.L2:
	ldr	r2, .L4	@ tmp139,
	movs	r4, #0	@ tmp140,
	strb	r4, [r2, r3]	@ tmp140, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L2	@,
	ldr	r3, .L4+4	@ tmp142,
	movs	r1, #2	@ tmp143,
	str	r1, [r3, #0]	@ tmp143, I2CWriteLength
	ldr	r1, .L4+8	@ tmp144,
	movs	r3, #114	@ tmp147,
	str	r4, [r1, #0]	@ tmp140, I2CReadLength
	strb	r3, [r2, #0]	@ tmp147, I2CMasterBuffer
	strb	r0, [r2, #1]	@ cmd, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp140
	pop	{r4, pc}	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	tcs3414WriteCmd, .-tcs3414WriteCmd
	.section	.text.tcs3414Write8,"ax",%progbits
	.align	1
	.global	tcs3414Write8
	.thumb
	.thumb_func
	.ascii	"tcs3414Write8\000"
	.align	2
	.word	4278190096
	.type	tcs3414Write8, %function
tcs3414Write8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
.L7:
	ldr	r3, .L9	@ tmp139,
	movs	r4, #0	@ tmp140,
	strb	r4, [r3, r2]	@ tmp140, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L7	@,
	ldr	r2, .L9+4	@ tmp142,
	movs	r5, #3	@ tmp143,
	str	r5, [r2, #0]	@ tmp143, I2CWriteLength
	ldr	r2, .L9+8	@ tmp144,
	str	r4, [r2, #0]	@ tmp140, I2CReadLength
	movs	r2, #114	@ tmp147,
	strb	r2, [r3, #0]	@ tmp147, I2CMasterBuffer
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r1, [r3, #2]	@ D.4774, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp140
	pop	{r3, r4, r5, pc}	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	tcs3414Write8, .-tcs3414Write8
	.section	.text.tcs3414Read16,"ax",%progbits
	.align	1
	.global	tcs3414Read16
	.thumb
	.thumb_func
	.ascii	"tcs3414Read16\000"
	.align	2
	.word	4278190096
	.type	tcs3414Read16, %function
tcs3414Read16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
	mov	r5, r1	@ value, value
.L12:
	ldr	r3, .L14	@ tmp146,
	movs	r4, #0	@ tmp147,
	strb	r4, [r3, r2]	@ tmp147, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L12	@,
	ldr	r1, .L14+4	@ tmp149,
	movs	r2, #2	@ tmp150,
	str	r2, [r1, #0]	@ tmp150, I2CWriteLength
	ldr	r1, .L14+8	@ tmp151,
	str	r2, [r1, #0]	@ tmp150, I2CReadLength
	movs	r2, #114	@ tmp154,
	strb	r2, [r3, #0]	@ tmp154, I2CMasterBuffer
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	movs	r0, #115	@ tmp159,
	strb	r0, [r3, #2]	@ tmp159, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r1, .L14+12	@ tmp161,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r3, r2, r0, lsl #8	@, tmp170, I2CSlaveBuffer, I2CSlaveBuffer,
	strh	r3, [r5, #0]	@ movhi	@ tmp170, *value_13(D)
	mov	r0, r4	@, tmp147
	pop	{r3, r4, r5, pc}	@
.L15:
	.align	2
.L14:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	tcs3414Read16, .-tcs3414Read16
	.section	.text.tcs3414Init,"ax",%progbits
	.align	1
	.global	tcs3414Init
	.thumb
	.thumb_func
	.ascii	"tcs3414Init\000"
	.align	2
	.word	4278190092
	.type	tcs3414Init, %function
tcs3414Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r3, #1	@ D.4762,
	cbz	r0, .L18	@,
	ldr	r2, .L19	@ tmp137,
	movs	r0, #0	@ D.4762,
	strb	r3, [r2, #0]	@ D.4762, _tcs3414Initialised
	pop	{r3, pc}	@
.L18:
	mov	r0, r3	@ D.4762, D.4762
	pop	{r3, pc}	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	tcs3414Init, .-tcs3414Init
	.section	.text.tcs3414SetSensitivity,"ax",%progbits
	.align	1
	.global	tcs3414SetSensitivity
	.thumb
	.thumb_func
	.ascii	"tcs3414SetSensitivity\000"
	.align	2
	.word	4278190104
	.type	tcs3414SetSensitivity, %function
tcs3414SetSensitivity:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ gain, gain
	ldr	r0, .L24	@ tmp141,
	mov	r5, r1	@ prescalar, prescalar
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tcs3414Initialised, _tcs3414Initialised
	cbnz	r3, .L22	@ _tcs3414Initialised,
	bl	tcs3414Init	@
.L22:
	movs	r0, #128	@,
	movs	r1, #3	@,
	bl	tcs3414Write8	@
	cbnz	r0, .L23	@ error,
	orr	r1, r5, r4	@, prescalar, gain
	movs	r0, #135	@,
	bl	tcs3414Write8	@
	mov	r1, r0	@ tmp146,
	cbnz	r0, .L23	@ tmp146,
	movs	r0, #128	@,
	pop	{r3, r4, r5, lr}	@
	b	tcs3414Write8	@
.L23:
	pop	{r3, r4, r5, pc}	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.size	tcs3414SetSensitivity, .-tcs3414SetSensitivity
	.section	.text.tcs3414GetRGBL,"ax",%progbits
	.align	1
	.global	tcs3414GetRGBL
	.thumb
	.thumb_func
	.ascii	"tcs3414GetRGBL\000"
	.align	2
	.word	4278190096
	.type	tcs3414GetRGBL, %function
tcs3414GetRGBL:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r5, r0	@ red, red
	ldr	r0, .L29	@ tmp141,
	mov	r7, r3	@ clear, clear
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tcs3414Initialised, _tcs3414Initialised
	mov	r4, r1	@ green, green
	mov	r6, r2	@ blue, blue
	cbnz	r3, .L27	@ _tcs3414Initialised,
	bl	tcs3414Init	@
.L27:
	movs	r0, #128	@,
	movs	r1, #3	@,
	bl	tcs3414Write8	@
	cbnz	r0, .L28	@ error,
	movs	r0, #13	@,
	bl	systickDelay	@
	movs	r0, #178	@,
	mov	r1, r5	@, red
	bl	tcs3414Read16	@
	cbnz	r0, .L28	@ error,
	movs	r0, #176	@,
	mov	r1, r4	@, green
	bl	tcs3414Read16	@
	cbnz	r0, .L28	@ error,
	movs	r0, #180	@,
	mov	r1, r6	@, blue
	bl	tcs3414Read16	@
	cbnz	r0, .L28	@ error,
	mov	r1, r7	@, clear
	movs	r0, #182	@,
	bl	tcs3414Read16	@
	mov	r1, r0	@ tmp147,
	cbnz	r0, .L28	@ tmp147,
	movs	r0, #128	@,
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	tcs3414Write8	@
.L28:
	pop	{r3, r4, r5, r6, r7, pc}	@
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.size	tcs3414GetRGBL, .-tcs3414GetRGBL
	.global	__aeabi_ui2f
	.global	__aeabi_fmul
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.global	__aeabi_fadd
	.global	__aeabi_fdiv
	.global	__aeabi_dsub
	.global	__aeabi_ddiv
	.global	__aeabi_f2uiz
	.section	.text.tcs3414CalculateCCT,"ax",%progbits
	.align	1
	.global	tcs3414CalculateCCT
	.thumb
	.thumb_func
	.ascii	"tcs3414CalculateCCT\000"
	.align	2
	.word	4278190100
	.type	tcs3414CalculateCCT, %function
tcs3414CalculateCCT:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	sub	sp, sp, #44	@,,
	mov	r5, r2	@ blue, blue
	mov	r4, r1	@ green, green
	bl	__aeabi_ui2f	@
	mov	r1, #931135488	@,
	bl	__aeabi_fmul	@
	ldr	r1, .L32+104	@,
	bl	__aeabi_fmul	@
	str	r0, [sp, #0]	@ float	@ tmp232, R
	mov	r0, r4	@, green
	bl	__aeabi_ui2f	@
	mov	r1, #931135488	@,
	bl	__aeabi_fmul	@
	ldr	r1, .L32+104	@,
	bl	__aeabi_fmul	@
	str	r0, [sp, #4]	@ float	@ tmp235, G
	mov	r0, r5	@, blue
	bl	__aeabi_ui2f	@
	mov	r1, #931135488	@,
	bl	__aeabi_fmul	@
	ldr	r1, .L32+104	@,
	bl	__aeabi_fmul	@
	str	r0, [sp, #8]	@ float	@ tmp238, B
	ldr	r0, [sp, #0]	@ float	@ R.3, R
	bl	__aeabi_f2d	@
	adr	r3, .L32	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	ldr	r4, [sp, #4]	@ float	@ G.4, G
	mov	r6, r0	@ tmp240,
	mov	r0, r4	@, G.4
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+8	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp242,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp240
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	ldr	r5, [sp, #8]	@ float	@ B.5, B
	mov	r6, r0	@ tmp243,
	mov	r0, r5	@, B.5
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+16	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp245,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp243
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #12]	@ float	@ X.6, X
	ldr	r0, [sp, #0]	@ float	@ R.7, R
	bl	__aeabi_f2d	@
	adr	r3, .L32+24	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	ldr	r4, [sp, #4]	@ float	@ G.8, G
	mov	r6, r0	@ tmp248,
	mov	r0, r4	@, G.8
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+32	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp250,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp248
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	ldr	r5, [sp, #8]	@ float	@ B.9, B
	mov	r6, r0	@ tmp251,
	mov	r0, r5	@, B.9
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+40	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp253,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp251
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #16]	@ float	@ Y.10, Y
	ldr	r0, [sp, #0]	@ float	@ R.11, R
	bl	__aeabi_f2d	@
	adr	r3, .L32+48	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	ldr	r4, [sp, #4]	@ float	@ G.12, G
	mov	r6, r0	@ tmp256,
	mov	r0, r4	@, G.12
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+56	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp258,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp256
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	ldr	r5, [sp, #8]	@ float	@ B.13, B
	mov	r6, r0	@ tmp259,
	mov	r0, r5	@, B.13
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+64	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp261,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp259
	mov	r1, r7	@,
	bl	__aeabi_dadd	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #20]	@ float	@ Z.14, Z
	ldr	r4, [sp, #12]	@ float	@ X.15, X
	ldr	r0, [sp, #12]	@ float	@ X.16, X
	ldr	r1, [sp, #16]	@ float	@ Y.17, Y
	ldr	r5, [sp, #20]	@ float	@ Z.18, Z
	bl	__aeabi_fadd	@
	mov	r1, r5	@, Z.18
	bl	__aeabi_fadd	@
	mov	r1, r0	@ tmp264,
	mov	r0, r4	@, X.15
	bl	__aeabi_fdiv	@
	str	r0, [sp, #24]	@ float	@ tmp265, x
	ldr	r4, [sp, #16]	@ float	@ Y.20, Y
	ldr	r0, [sp, #12]	@ float	@ X.21, X
	ldr	r1, [sp, #16]	@ float	@ Y.22, Y
	ldr	r5, [sp, #20]	@ float	@ Z.23, Z
	bl	__aeabi_fadd	@
	mov	r1, r5	@, Z.23
	bl	__aeabi_fadd	@
	mov	r1, r0	@ tmp267,
	mov	r0, r4	@, Y.20
	bl	__aeabi_fdiv	@
	str	r0, [sp, #28]	@ float	@ tmp268, y
	ldr	r0, [sp, #24]	@ float	@ x.25, x
	bl	__aeabi_f2d	@
	adr	r3, .L32+72	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dsub	@
	ldr	r4, [sp, #28]	@ float	@ y.26, y
	mov	r6, r0	@ tmp270,
	mov	r0, r4	@, y.26
	mov	r7, r1	@,
	bl	__aeabi_f2d	@
	mov	r2, r0	@ tmp271,
	mov	r3, r1	@,
	adr	r1, .L32+80	@,
	ldrd	r0, [r1]	@,
	bl	__aeabi_dsub	@
	mov	r2, r0	@ tmp272,
	mov	r3, r1	@,
	mov	r0, r6	@, tmp270
	mov	r1, r7	@,
	bl	__aeabi_ddiv	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #32]	@ float	@ n.27, n
	ldr	r0, [sp, #32]	@ float	@ n.28, n
	ldr	r5, [sp, #32]	@ float	@ n.29, n
	ldr	r1, .L32+108	@,
	ldr	r4, [sp, #32]	@ float	@ n.30, n
	bl	__aeabi_fmul	@
	mov	r1, r5	@, n.29
	bl	__aeabi_fmul	@
	mov	r1, r4	@, n.30
	bl	__aeabi_fmul	@
	str	r0, [sp, #36]	@ float	@ tmp276, CCT
	ldr	r4, [sp, #36]	@ float	@ CCT.32, CCT
	ldr	r0, [sp, #32]	@ float	@ n.33, n
	ldr	r5, [sp, #32]	@ float	@ n.34, n
	ldr	r1, .L32+112	@,
	bl	__aeabi_fmul	@
	mov	r1, r5	@, n.34
	bl	__aeabi_fmul	@
	mov	r1, r0	@ tmp278,
	mov	r0, r4	@, CCT.32
	bl	__aeabi_fadd	@
	str	r0, [sp, #36]	@ float	@ tmp279, CCT
	ldr	r0, [sp, #36]	@ float	@ CCT.36, CCT
	bl	__aeabi_f2d	@
	ldr	r6, [sp, #32]	@ float	@ n.37, n
	mov	r4, r0	@ tmp280,
	mov	r0, r6	@, n.37
	mov	r5, r1	@,
	bl	__aeabi_f2d	@
	adr	r3, .L32+88	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dmul	@
	mov	r2, r0	@ tmp282,
	mov	r3, r1	@,
	mov	r0, r4	@, tmp280
	mov	r1, r5	@,
	bl	__aeabi_dadd	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #36]	@ float	@ CCT.38, CCT
	ldr	r0, [sp, #36]	@ float	@ CCT.39, CCT
	bl	__aeabi_f2d	@
	adr	r3, .L32+96	@,
	ldrd	r2, [r3]	@,
	bl	__aeabi_dadd	@
	bl	__aeabi_d2f	@
	str	r0, [sp, #36]	@ float	@ CCT.40, CCT
	ldr	r0, [sp, #36]	@ float	@ CCT.41, CCT
	bl	__aeabi_f2uiz	@
	add	sp, sp, #44	@,,
	pop	{r4, r5, r6, r7, pc}
.L33:
	.align	3
.L32:
	.word	-23364622
	.word	-1077786644
	.word	-505775349
	.word	1073269167
	.word	619849680
	.word	-1074881815
	.word	-1131122587
	.word	-1076574406
	.word	-424686366
	.word	1073299712
	.word	-2060209913
	.word	-1075352626
	.word	-1687750349
	.word	-1075457253
	.word	-167675523
	.word	1072212433
	.word	-1440360232
	.word	1071777463
	.word	-309237645
	.word	1070940028
	.word	1573676017
	.word	1070057547
	.word	-858993459
	.word	1085974348
	.word	2061584302
	.word	1085640788
	.word	1120403456
	.word	1138786304
	.word	1163677696
	.size	tcs3414CalculateCCT, .-tcs3414CalculateCCT
	.section	.bss._tcs3414Initialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_tcs3414Initialised, %object
	.size	_tcs3414Initialised, 1
_tcs3414Initialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
