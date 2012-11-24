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
	.file	"ads1015.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ads1015.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ads1015.o -Os -Wall
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

	.section	.text.ads1015WriteRegister,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ads1015WriteRegister\000"
	.align	2
	.word	4278190104
	.type	ads1015WriteRegister, %function
ads1015WriteRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
.L2:
	ldr	r3, .L4	@ tmp143,
	movs	r4, #0	@ tmp144,
	strb	r4, [r3, r2]	@ tmp144, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r2, .L4+4	@ tmp146,
	movs	r5, #4	@ tmp147,
	str	r5, [r2, #0]	@ tmp147, I2CWriteLength
	ldr	r2, .L4+8	@ tmp148,
	str	r4, [r2, #0]	@ tmp144, I2CReadLength
	movs	r2, #144	@ tmp151,
	strb	r2, [r3, #0]	@ tmp151, I2CMasterBuffer
	lsrs	r2, r1, #8	@ tmp155, value,
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r2, [r3, #2]	@ tmp155, I2CMasterBuffer
	strb	r1, [r3, #3]	@ D.4662, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp144
	pop	{r3, r4, r5, pc}	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	ads1015WriteRegister, .-ads1015WriteRegister
	.section	.text.ina219Read16.constprop.0,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ina219Read16.constprop.0\000"
	.align	2
	.word	4278190108
	.type	ina219Read16.constprop.0, %function
ina219Read16.constprop.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
	mov	r5, r0	@ value, value
.L7:
	ldr	r3, .L9	@ tmp145,
	movs	r4, #0	@ tmp146,
	strb	r4, [r3, r2]	@ tmp146, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L7	@,
	ldr	r1, .L9+4	@ tmp150,
	ldr	r2, .L9+8	@ tmp148,
	movs	r0, #2	@ tmp149,
	str	r0, [r2, #0]	@ tmp149, I2CWriteLength
	str	r0, [r1, #0]	@ tmp149, I2CReadLength
	movs	r2, #144	@ tmp153,
	movs	r0, #145	@ tmp159,
	strb	r2, [r3, #0]	@ tmp153, I2CMasterBuffer
	strb	r4, [r3, #1]	@ tmp146, I2CMasterBuffer
	strb	r0, [r3, #2]	@ tmp159, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r1, .L9+12	@ tmp161,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r3, r0, r2, lsl #8	@, tmp170, I2CSlaveBuffer, I2CSlaveBuffer,
	strh	r3, [r5, #0]	@ movhi	@ tmp170, *value_11(D)
	mov	r0, r4	@, tmp146
	pop	{r3, r4, r5, pc}	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CReadLength
	.word	I2CWriteLength
	.word	I2CSlaveBuffer
	.size	ina219Read16.constprop.0, .-ina219Read16.constprop.0
	.section	.text.ads1015Init,"ax",%progbits
	.align	1
	.global	ads1015Init
	.thumb
	.thumb_func
	.ascii	"ads1015Init\000"
	.align	2
	.word	4278190092
	.type	ads1015Init, %function
ads1015Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r3, #1	@ error,
	cbz	r0, .L13	@,
	ldr	r2, .L14	@ tmp137,
	movs	r0, #0	@ error,
	strb	r3, [r2, #0]	@ error, _ads1015Initialised
	pop	{r3, pc}	@
.L13:
	mov	r0, r3	@ error, error
	pop	{r3, pc}	@
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.size	ads1015Init, .-ads1015Init
	.section	.text.ads1015ReadADC_SingleEnded,"ax",%progbits
	.align	1
	.global	ads1015ReadADC_SingleEnded
	.thumb
	.thumb_func
	.ascii	"ads1015ReadADC_SingleEnded\000"
	.align	2
	.word	4278190108
	.type	ads1015ReadADC_SingleEnded, %function
ads1015ReadADC_SingleEnded:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ channel, channel
	ldr	r0, .L20	@ tmp143,
	mov	r4, r1	@ value, value
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _ads1015Initialised, _ads1015Initialised
	cbnz	r3, .L17	@ _ads1015Initialised,
	bl	ads1015Init	@
.L17:
	cmp	r5, #3	@ channel,
	bls	.L18	@,
	movs	r1, #0	@,
	strh	r1, [r4, #0]	@ movhi	@, *value_7(D)
	movs	r0, #3	@ error,
	pop	{r3, r4, r5, pc}	@
.L18:
	ldr	r3, .L20+4	@ tmp147,
	movs	r0, #1	@,
	ldrh	r2, [r3, r5, lsl #1]	@ config, CSWTCH.7
	orr	r1, r2, #32768	@, config,
	bl	ads1015WriteRegister	@
	cbnz	r0, .L19	@ error,
	movs	r0, #1	@,
	bl	systickDelay	@
	mov	r0, r4	@, value
	bl	ina219Read16.constprop.0	@
	cbnz	r0, .L19	@ error,
	ldrh	r2, [r4, #0]	@ *value_7(D), *value_7(D)
	lsrs	r1, r2, #4	@ tmp154, *value_7(D),
	strh	r1, [r4, #0]	@ movhi	@ tmp154, *value_7(D)
.L19:
	pop	{r3, r4, r5, pc}	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	ads1015ReadADC_SingleEnded, .-ads1015ReadADC_SingleEnded
	.section	.text.ads1015ReadADC_Differential_0_1,"ax",%progbits
	.align	1
	.global	ads1015ReadADC_Differential_0_1
	.thumb
	.thumb_func
	.ascii	"ads1015ReadADC_Differential_0_1\000"
	.align	2
	.word	4278190112
	.type	ads1015ReadADC_Differential_0_1, %function
ads1015ReadADC_Differential_0_1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ value, value
	ldr	r0, .L25	@ tmp140,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _ads1015Initialised, _ads1015Initialised
	cbnz	r3, .L23	@ _ads1015Initialised,
	bl	ads1015Init	@
.L23:
	movs	r0, #1	@,
	movw	r1, #33155	@,
	bl	ads1015WriteRegister	@
	cbnz	r0, .L24	@ error,
	movs	r0, #1	@,
	bl	systickDelay	@
	mov	r0, r4	@, value
	bl	ina219Read16.constprop.0	@
	cbnz	r0, .L24	@ error,
	ldrsh	r2, [r4, #0]	@ *value_11(D), *value_11(D)
	asrs	r1, r2, #4	@ tmp145, *value_11(D),
	strh	r1, [r4, #0]	@ movhi	@ tmp145, *value_11(D)
.L24:
	pop	{r4, pc}	@
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.size	ads1015ReadADC_Differential_0_1, .-ads1015ReadADC_Differential_0_1
	.section	.text.ads1015ReadADC_Differential_2_3,"ax",%progbits
	.align	1
	.global	ads1015ReadADC_Differential_2_3
	.thumb
	.thumb_func
	.ascii	"ads1015ReadADC_Differential_2_3\000"
	.align	2
	.word	4278190112
	.type	ads1015ReadADC_Differential_2_3, %function
ads1015ReadADC_Differential_2_3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ value, value
	ldr	r0, .L30	@ tmp140,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _ads1015Initialised, _ads1015Initialised
	cbnz	r3, .L28	@ _ads1015Initialised,
	bl	ads1015Init	@
.L28:
	movs	r0, #1	@,
	movw	r1, #45443	@,
	bl	ads1015WriteRegister	@
	cbnz	r0, .L29	@ error,
	movs	r0, #1	@,
	bl	systickDelay	@
	mov	r0, r4	@, value
	bl	ina219Read16.constprop.0	@
	cbnz	r0, .L29	@ error,
	ldrsh	r2, [r4, #0]	@ *value_11(D), *value_11(D)
	asrs	r1, r2, #4	@ tmp145, *value_11(D),
	strh	r1, [r4, #0]	@ movhi	@ tmp145, *value_11(D)
.L29:
	pop	{r4, pc}	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.size	ads1015ReadADC_Differential_2_3, .-ads1015ReadADC_Differential_2_3
	.section	.text.ads1015StartComparator_SingleEnded,"ax",%progbits
	.align	1
	.global	ads1015StartComparator_SingleEnded
	.thumb
	.thumb_func
	.ascii	"ads1015StartComparator_SingleEnded\000"
	.align	2
	.word	4278190116
	.type	ads1015StartComparator_SingleEnded, %function
ads1015StartComparator_SingleEnded:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r3, .L37	@ tmp142,
	mov	r4, r0	@ channel, channel
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ _ads1015Initialised, _ads1015Initialised
	mov	r5, r1	@ threshold, threshold
	cbnz	r3, .L33	@ _ads1015Initialised,
	bl	ads1015Init	@
.L33:
	cmp	r4, #3	@ channel,
	it	ls
	ldrls	r3, .L37+4	@ tmp144,
	movw	r1, #65520	@,
	ite	ls
	ldrhls	r4, [r3, r4, lsl #1]	@ config, CSWTCH.9
	movhi	r4, #132	@ config,
	lsls	r2, r5, #4	@ tmp146, threshold,
	movs	r0, #3	@,
	ands	r1, r1, r2	@,,, tmp146
	bl	ads1015WriteRegister	@
	cbnz	r0, .L32	@ error,
	movs	r0, #1	@,
	mov	r1, r4	@, config
	bl	ads1015WriteRegister	@
	cmp	r0, #0	@ error
	bne	.L32	@
.L32:
	pop	{r3, r4, r5, pc}	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.size	ads1015StartComparator_SingleEnded, .-ads1015StartComparator_SingleEnded
	.section	.text.ads1015GetLastConversionResults,"ax",%progbits
	.align	1
	.global	ads1015GetLastConversionResults
	.thumb
	.thumb_func
	.ascii	"ads1015GetLastConversionResults\000"
	.align	2
	.word	4278190112
	.type	ads1015GetLastConversionResults, %function
ads1015GetLastConversionResults:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ value, value
	ldr	r0, .L42	@ tmp140,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _ads1015Initialised, _ads1015Initialised
	cbnz	r3, .L40	@ _ads1015Initialised,
	bl	ads1015Init	@
.L40:
	movs	r0, #1	@,
	bl	systickDelay	@
	mov	r0, r4	@, value
	bl	ina219Read16.constprop.0	@
	cbnz	r0, .L41	@ error,
	ldrsh	r2, [r4, #0]	@ *value_5(D), *value_5(D)
	asrs	r1, r2, #4	@ tmp144, *value_5(D),
	strh	r1, [r4, #0]	@ movhi	@ tmp144, *value_5(D)
.L41:
	pop	{r4, pc}	@
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.size	ads1015GetLastConversionResults, .-ads1015GetLastConversionResults
	.section	.rodata.CSWTCH.7,"a",%progbits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.7, %object
	.size	CSWTCH.7, 8
CSWTCH.7:
	.short	16771
	.short	20867
	.short	24963
	.short	29059
	.section	.rodata.CSWTCH.9,"a",%progbits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	CSWTCH.9, %object
	.size	CSWTCH.9, 8
CSWTCH.9:
	.short	16516
	.short	20612
	.short	24708
	.short	28804
	.section	.bss._ads1015Initialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_ads1015Initialised, %object
	.size	_ads1015Initialised, 1
_ads1015Initialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
