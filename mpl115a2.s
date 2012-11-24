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
	.file	"mpl115a2.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed mpl115a2.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip mpl115a2.o -Os -Wall
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

	.section	.text.mpl115a2ReadPressureTemp,"ax",%progbits
	.align	1
	.global	mpl115a2ReadPressureTemp
	.thumb
	.thumb_func
	.ascii	"mpl115a2ReadPressureTemp\000"
	.align	2
	.word	4278190108
	.type	mpl115a2ReadPressureTemp, %function
mpl115a2ReadPressureTemp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}	@
	movs	r3, #0	@ i,
	mov	r4, r0	@ pressure, pressure
.L2:
	ldr	r5, .L4	@ tmp156,
	ldr	r7, .L4+4	@ tmp159,
	movs	r6, #0	@ tmp157,
	strb	r6, [r5, r3]	@ tmp157, I2CMasterBuffer
	strb	r6, [r7, r3]	@ tmp157, I2CSlaveBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L2	@,
	ldr	sl, .L4+8	@ tmp162,
	ldr	r9, .L4+12	@ tmp164,
	movs	r3, #1	@ tmp165,
	movs	r2, #18	@ tmp170,
	movs	r0, #3	@ tmp163,
	mov	r8, #192	@ tmp167,
	str	r0, [sl, #0]	@ tmp163, I2CWriteLength
	str	r1, [sp, #4]	@,
	str	r3, [r9, #0]	@ tmp165, I2CReadLength
	strb	r8, [r5, #0]	@ tmp167, I2CMasterBuffer
	strb	r2, [r5, #1]	@ tmp170, I2CMasterBuffer
	strb	r6, [r5, #2]	@ tmp157, I2CMasterBuffer
	bl	i2cEngine	@
	movs	r0, #5	@,
	bl	systickDelay	@
	movs	r3, #4	@ tmp178,
	movs	r2, #193	@ tmp186,
	movs	r0, #2	@ tmp176,
	str	r0, [sl, #0]	@ tmp176, I2CWriteLength
	str	r3, [r9, #0]	@ tmp178, I2CReadLength
	strb	r8, [r5, #0]	@ tmp167, I2CMasterBuffer
	strb	r6, [r5, #1]	@ tmp157, I2CMasterBuffer
	strb	r2, [r5, #2]	@ tmp186, I2CMasterBuffer
	bl	i2cEngine	@
	ldrb	ip, [r7, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r0, r1, ip, lsl #8	@, tmp195, I2CSlaveBuffer, I2CSlaveBuffer,
	asrs	r3, r0, #6	@ tmp196, tmp195,
	strh	r3, [r4, #0]	@ movhi	@ tmp196, *pressure_12(D)
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r1, [r7, #3]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r0, r1, r2, lsl #8	@, tmp205, I2CSlaveBuffer, I2CSlaveBuffer,
	ldr	r1, [sp, #4]	@,
	asrs	r3, r0, #6	@ tmp206, tmp205,
	strh	r3, [r1, #0]	@ movhi	@ tmp206, *temp_21(D)
	mov	r0, r6	@, tmp157
	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CSlaveBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	mpl115a2ReadPressureTemp, .-mpl115a2ReadPressureTemp
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.section	.text.mpl115a2ReadCoefficients,"ax",%progbits
	.align	1
	.global	mpl115a2ReadCoefficients
	.thumb
	.thumb_func
	.ascii	"mpl115a2ReadCoefficients\000"
	.align	2
	.word	4278190108
	.type	mpl115a2ReadCoefficients, %function
mpl115a2ReadCoefficients:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	movs	r3, #0	@ i,
.L7:
	ldr	r2, .L9	@ tmp173,
	ldr	r5, .L9+4	@ tmp176,
	movs	r4, #0	@ tmp174,
	strb	r4, [r2, r3]	@ tmp174, I2CMasterBuffer
	strb	r4, [r5, r3]	@ tmp174, I2CSlaveBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L7	@,
	ldr	r7, .L9+8	@ tmp179,
	movs	r6, #2	@ tmp180,
	ldr	r1, .L9+12	@ tmp181,
	str	r6, [r7, #0]	@ tmp180, I2CWriteLength
	movs	r3, #192	@ tmp184,
	movs	r0, #8	@ tmp182,
	movs	r7, #4	@ tmp187,
	movs	r6, #193	@ tmp190,
	str	r0, [r1, #0]	@ tmp182, I2CReadLength
	strb	r3, [r2, #0]	@ tmp184, I2CMasterBuffer
	strb	r7, [r2, #1]	@ tmp187, I2CMasterBuffer
	strb	r6, [r2, #2]	@ tmp190, I2CMasterBuffer
	bl	i2cEngine	@
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	sl, [r5, #2]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r0, r2, r1, lsl #8	@, tmp220, I2CSlaveBuffer, I2CSlaveBuffer,
	sxth	r0, r0	@, tmp220
	bl	__aeabi_i2f	@
	mov	r1, #1040187392	@,
	bl	__aeabi_fmul	@
	ldrb	r9, [r5, #3]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldr	r3, .L9+16	@ tmp216,
	orr	r9, r9, sl, lsl #8	@, tmp228, D.4644, D.4640,
	str	r0, [r3, #0]	@ float	@, _mpl115a2_a0
	sxth	r0, r9	@, tmp228
	bl	__aeabi_i2f	@
	mov	r1, #956301312	@,
	bl	__aeabi_fmul	@
	ldrb	r8, [r5, #4]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r7, [r5, #5]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldr	r2, .L9+20	@ tmp224,
	orr	r7, r7, r8, lsl #8	@, tmp236, D.4650, D.4646,
	str	r0, [r2, #0]	@ float	@, _mpl115a2_b1
	sxth	r0, r7	@, tmp236
	bl	__aeabi_i2f	@
	mov	r1, #947912704	@,
	bl	__aeabi_fmul	@
	ldrb	r6, [r5, #6]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r5, [r5, #7]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldr	r1, .L9+24	@ tmp232,
	orr	r5, r5, r6, lsl #8	@, tmp242, D.4655, D.4652,
	str	r0, [r1, #0]	@ float	@, _mpl115a2_b2
	lsrs	r0, r5, #2	@, tmp242,
	bl	__aeabi_i2f	@
	mov	r1, #880803840	@,
	bl	__aeabi_fmul	@
	ldr	r3, .L9+28	@ tmp240,
	str	r0, [r3, #0]	@ float	@, _mpl115a2_c12
	mov	r0, r4	@, tmp174
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CSlaveBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	mpl115a2ReadCoefficients, .-mpl115a2ReadCoefficients
	.section	.text.mpl115a2Init,"ax",%progbits
	.align	1
	.global	mpl115a2Init
	.thumb
	.thumb_func
	.ascii	"mpl115a2Init\000"
	.align	2
	.word	4278190096
	.type	mpl115a2Init, %function
mpl115a2Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r4, #1	@ error,
	cbz	r0, .L13	@,
	bl	mpl115a2ReadCoefficients	@
	ldr	r3, .L14	@ tmp137,
	movs	r0, #0	@ error,
	strb	r4, [r3, #0]	@ error, _mpl115a2Initialised
	pop	{r4, pc}	@
.L13:
	mov	r0, r4	@ error, error
	pop	{r4, pc}	@
.L15:
	.align	2
.L14:
	.word	.LANCHOR4
	.size	mpl115a2Init, .-mpl115a2Init
	.global	__aeabi_fadd
	.section	.text.mpl115a2GetPressure,"ax",%progbits
	.align	1
	.global	mpl115a2GetPressure
	.thumb
	.thumb_func
	.ascii	"mpl115a2GetPressure\000"
	.align	2
	.word	4278190100
	.type	mpl115a2GetPressure, %function
mpl115a2GetPressure:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r5, r0	@ pressure, pressure
	ldr	r0, .L19	@ tmp156,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mpl115a2Initialised, _mpl115a2Initialised
	cbnz	r3, .L17	@ _mpl115a2Initialised,
	bl	mpl115a2Init	@
.L17:
	add	r0, sp, #4	@,,
	add	r1, sp, #6	@,,
	bl	mpl115a2ReadPressureTemp	@
	mov	r4, r0	@ error,
	cbnz	r0, .L18	@ error,
	ldrh	r0, [sp, #6]	@, Tadc
	bl	__aeabi_i2f	@
	ldr	r1, .L19+4	@ tmp164,
	mov	r7, r0	@ D.4616,
	ldr	r1, [r1, #0]	@ float	@, _mpl115a2_c12
	bl	__aeabi_fmul	@
	ldr	r3, .L19+8	@ tmp163,
	ldr	r1, [r3, #0]	@ float	@, _mpl115a2_b1
	bl	__aeabi_fadd	@
	mov	r6, r0	@ tmp166,
	ldrh	r0, [sp, #4]	@, Padc
	bl	__aeabi_i2f	@
	mov	r1, r0	@ tmp168,
	mov	r0, r6	@, tmp166
	bl	__aeabi_fmul	@
	ldr	r2, .L19+12	@ tmp162,
	ldr	r1, [r2, #0]	@ float	@, _mpl115a2_a0
	bl	__aeabi_fadd	@
	ldr	r1, .L19+16	@ tmp171,
	mov	r6, r0	@ tmp170,
	ldr	r1, [r1, #0]	@ float	@, _mpl115a2_b2
	mov	r0, r7	@, D.4616
	bl	__aeabi_fmul	@
	mov	r1, r0	@ tmp172,
	mov	r0, r6	@, tmp170
	bl	__aeabi_fadd	@
	ldr	r1, .L19+20	@,
	bl	__aeabi_fmul	@
	ldr	r1, .L19+24	@,
	bl	__aeabi_fadd	@
	str	r0, [r5, #0]	@ float	@, *pressure_28(D)
.L18:
	mov	r0, r4	@, error
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR4
	.word	.LANCHOR3
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	1031938184
	.word	1112014848
	.size	mpl115a2GetPressure, .-mpl115a2GetPressure
	.section	.bss._mpl115a2_b2,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_mpl115a2_b2, %object
	.size	_mpl115a2_b2, 4
_mpl115a2_b2:
	.space	4
	.section	.bss._mpl115a2_c12,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	_mpl115a2_c12, %object
	.size	_mpl115a2_c12, 4
_mpl115a2_c12:
	.space	4
	.section	.bss._mpl115a2Initialised,"aw",%nobits
	.set	.LANCHOR4,. + 0
	.type	_mpl115a2Initialised, %object
	.size	_mpl115a2Initialised, 1
_mpl115a2Initialised:
	.space	1
	.section	.bss._mpl115a2_a0,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_mpl115a2_a0, %object
	.size	_mpl115a2_a0, 4
_mpl115a2_a0:
	.space	4
	.section	.bss._mpl115a2_b1,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_mpl115a2_b1, %object
	.size	_mpl115a2_b1, 4
_mpl115a2_b1:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
