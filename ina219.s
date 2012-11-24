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
	.file	"ina219.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ina219.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ina219.o -Os -Wall
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

	.section	.text.ina219Read16,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ina219Read16\000"
	.align	2
	.word	4278190096
	.type	ina219Read16, %function
ina219Read16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r2, #0	@ i,
	mov	r4, r1	@ value, value
.L2:
	ldr	r3, .L4	@ tmp147,
	movs	r1, #0	@ tmp148,
	strb	r1, [r3, r2]	@ tmp148, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r1, .L4+4	@ tmp150,
	movs	r2, #2	@ tmp151,
	str	r2, [r1, #0]	@ tmp151, I2CWriteLength
	ldr	r1, .L4+8	@ tmp152,
	str	r2, [r1, #0]	@ tmp151, I2CReadLength
	movs	r2, #128	@ tmp155,
	strb	r2, [r3, #0]	@ tmp155, I2CMasterBuffer
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	movs	r0, #129	@ tmp160,
	strb	r0, [r3, #2]	@ tmp160, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r1, .L4+12	@ tmp162,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r3, r0, r2, lsl #8	@, tmp171, I2CSlaveBuffer, I2CSlaveBuffer,
	strh	r3, [r4, #0]	@ movhi	@ tmp171, *value_13(D)
	pop	{r4, pc}	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	ina219Read16, .-ina219Read16
	.section	.text.ina219WriteRegister,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ina219WriteRegister\000"
	.align	2
	.word	4278190100
	.type	ina219WriteRegister, %function
ina219WriteRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r2, #0	@ i,
.L7:
	ldr	r3, .L9	@ tmp140,
	movs	r4, #0	@ tmp141,
	strb	r4, [r3, r2]	@ tmp141, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L7	@,
	ldr	r2, .L9+4	@ tmp143,
	movs	r5, #4	@ tmp144,
	str	r5, [r2, #0]	@ tmp144, I2CWriteLength
	ldr	r2, .L9+8	@ tmp145,
	str	r4, [r2, #0]	@ tmp141, I2CReadLength
	movs	r2, #128	@ tmp148,
	strb	r2, [r3, #0]	@ tmp148, I2CMasterBuffer
	lsrs	r2, r1, #8	@ tmp152, value,
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r2, [r3, #2]	@ tmp152, I2CMasterBuffer
	strb	r1, [r3, #3]	@ D.4654, I2CMasterBuffer
	pop	{r4, r5, lr}	@
	b	i2cEngine	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	ina219WriteRegister, .-ina219WriteRegister
	.section	.text.ina219SetCalibration_32V_2A,"ax",%progbits
	.align	1
	.global	ina219SetCalibration_32V_2A
	.thumb
	.thumb_func
	.ascii	"ina219SetCalibration_32V_2A\000"
	.align	2
	.word	4278190108
	.type	ina219SetCalibration_32V_2A, %function
ina219SetCalibration_32V_2A:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r1, .L12	@ tmp134,
	ldr	r3, .L12+4	@ tmp136,
	movs	r0, #10	@ tmp135,
	movs	r2, #2	@ tmp137,
	str	r0, [r1, #0]	@ tmp135, ina219_currentDivider_mA
	str	r2, [r3, #0]	@ tmp137, ina219_powerDivider_mW
	movs	r0, #5	@,
	mov	r1, #4096	@,
	bl	ina219WriteRegister	@
	movs	r0, #0	@,
	movw	r1, #23583	@,
	pop	{r3, lr}	@
	b	ina219WriteRegister	@
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	ina219SetCalibration_32V_2A, .-ina219SetCalibration_32V_2A
	.section	.text.ina219SetCalibration_32V_1A,"ax",%progbits
	.align	1
	.global	ina219SetCalibration_32V_1A
	.thumb
	.thumb_func
	.ascii	"ina219SetCalibration_32V_1A\000"
	.align	2
	.word	4278190108
	.type	ina219SetCalibration_32V_1A, %function
ina219SetCalibration_32V_1A:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r1, .L15	@ tmp134,
	ldr	r3, .L15+4	@ tmp136,
	movs	r0, #25	@ tmp135,
	movs	r2, #1	@ tmp137,
	str	r0, [r1, #0]	@ tmp135, ina219_currentDivider_mA
	str	r2, [r3, #0]	@ tmp137, ina219_powerDivider_mW
	movs	r0, #5	@,
	mov	r1, #10240	@,
	bl	ina219WriteRegister	@
	movs	r0, #0	@,
	movw	r1, #23583	@,
	pop	{r3, lr}	@
	b	ina219WriteRegister	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	ina219SetCalibration_32V_1A, .-ina219SetCalibration_32V_1A
	.section	.text.ina219SetCalibration_16V_500mA,"ax",%progbits
	.align	1
	.global	ina219SetCalibration_16V_500mA
	.thumb
	.thumb_func
	.ascii	"ina219SetCalibration_16V_500mA\000"
	.align	2
	.word	4278190112
	.type	ina219SetCalibration_16V_500mA, %function
ina219SetCalibration_16V_500mA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r1, .L18	@ tmp134,
	ldr	r3, .L18+4	@ tmp136,
	movs	r0, #40	@ tmp135,
	movs	r2, #1	@ tmp137,
	str	r0, [r1, #0]	@ tmp135, ina219_currentDivider_mA
	str	r2, [r3, #0]	@ tmp137, ina219_powerDivider_mW
	movs	r0, #5	@,
	mov	r1, #16384	@,
	bl	ina219WriteRegister	@
	movs	r0, #0	@,
	movw	r1, #3103	@,
	pop	{r3, lr}	@
	b	ina219WriteRegister	@
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	ina219SetCalibration_16V_500mA, .-ina219SetCalibration_16V_500mA
	.section	.text.ina219SetCalibration_16V_200mA,"ax",%progbits
	.align	1
	.global	ina219SetCalibration_16V_200mA
	.thumb
	.thumb_func
	.ascii	"ina219SetCalibration_16V_200mA\000"
	.align	2
	.word	4278190112
	.type	ina219SetCalibration_16V_200mA, %function
ina219SetCalibration_16V_200mA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r1, .L21	@ tmp134,
	ldr	r3, .L21+4	@ tmp136,
	movs	r0, #100	@ tmp135,
	movs	r2, #1	@ tmp137,
	str	r0, [r1, #0]	@ tmp135, ina219_currentDivider_mA
	str	r2, [r3, #0]	@ tmp137, ina219_powerDivider_mW
	movs	r0, #5	@,
	mov	r1, #40960	@,
	bl	ina219WriteRegister	@
	movs	r0, #0	@,
	movw	r1, #1055	@,
	pop	{r3, lr}	@
	b	ina219WriteRegister	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	ina219SetCalibration_16V_200mA, .-ina219SetCalibration_16V_200mA
	.section	.text.ina219Init,"ax",%progbits
	.align	1
	.global	ina219Init
	.thumb
	.thumb_func
	.ascii	"ina219Init\000"
	.align	2
	.word	4278190092
	.type	ina219Init, %function
ina219Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #0	@,
	mov	r1, #32768	@,
	bl	ina219WriteRegister	@
	pop	{r3, lr}	@
	b	ina219SetCalibration_32V_2A	@
	.size	ina219Init, .-ina219Init
	.section	.text.ina219GetShuntVoltage,"ax",%progbits
	.align	1
	.global	ina219GetShuntVoltage
	.thumb
	.thumb_func
	.ascii	"ina219GetShuntVoltage\000"
	.align	2
	.word	4278190104
	.type	ina219GetShuntVoltage, %function
ina219GetShuntVoltage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #1	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldrsh	r0, [sp, #6]	@, value
	pop	{r1, r2, r3, pc}
	.size	ina219GetShuntVoltage, .-ina219GetShuntVoltage
	.section	.text.ina219GetBusVoltage,"ax",%progbits
	.align	1
	.global	ina219GetBusVoltage
	.thumb
	.thumb_func
	.ascii	"ina219GetBusVoltage\000"
	.align	2
	.word	4278190100
	.type	ina219GetBusVoltage, %function
ina219GetBusVoltage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #2	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldrh	r1, [sp, #6]	@ value, value
	lsrs	r0, r1, #3	@ tmp142, value,
	lsls	r0, r0, #2	@, tmp142,
	pop	{r1, r2, r3, pc}
	.size	ina219GetBusVoltage, .-ina219GetBusVoltage
	.section	.text.ina219GetPower,"ax",%progbits
	.align	1
	.global	ina219GetPower
	.thumb
	.thumb_func
	.ascii	"ina219GetPower\000"
	.align	2
	.word	4278190096
	.type	ina219GetPower, %function
ina219GetPower:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #3	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldrsh	r0, [sp, #6]	@, value
	pop	{r1, r2, r3, pc}
	.size	ina219GetPower, .-ina219GetPower
	.section	.text.ina219GetPower_mW,"ax",%progbits
	.align	1
	.global	ina219GetPower_mW
	.thumb
	.thumb_func
	.ascii	"ina219GetPower_mW\000"
	.align	2
	.word	4278190100
	.type	ina219GetPower_mW, %function
ina219GetPower_mW:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #3	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldr	r2, .L28	@ tmp143,
	ldrh	r1, [sp, #6]	@ value, value
	ldr	r3, [r2, #0]	@ ina219_powerDivider_mW, ina219_powerDivider_mW
	udiv	r0, r1, r3	@ tmp141, value, ina219_powerDivider_mW
	sxth	r0, r0	@, tmp141
	pop	{r1, r2, r3, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.size	ina219GetPower_mW, .-ina219GetPower_mW
	.section	.text.ina219GetCurrent,"ax",%progbits
	.align	1
	.global	ina219GetCurrent
	.thumb
	.thumb_func
	.ascii	"ina219GetCurrent\000"
	.align	2
	.word	4278190100
	.type	ina219GetCurrent, %function
ina219GetCurrent:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #4	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldrsh	r0, [sp, #6]	@, value
	pop	{r1, r2, r3, pc}
	.size	ina219GetCurrent, .-ina219GetCurrent
	.section	.text.ina219GetCurrent_mA,"ax",%progbits
	.align	1
	.global	ina219GetCurrent_mA
	.thumb
	.thumb_func
	.ascii	"ina219GetCurrent_mA\000"
	.align	2
	.word	4278190100
	.type	ina219GetCurrent_mA, %function
ina219GetCurrent_mA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #4	@,
	add	r1, sp, #6	@,,
	bl	ina219Read16	@
	ldr	r2, .L32	@ tmp143,
	ldrh	r1, [sp, #6]	@ value, value
	ldr	r3, [r2, #0]	@ ina219_currentDivider_mA, ina219_currentDivider_mA
	udiv	r0, r1, r3	@ tmp141, value, ina219_currentDivider_mA
	sxth	r0, r0	@, tmp141
	pop	{r1, r2, r3, pc}
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	ina219GetCurrent_mA, .-ina219GetCurrent_mA
	.global	ina219_powerDivider_mW
	.global	ina219_currentDivider_mA
	.section	.bss.ina219_powerDivider_mW,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ina219_powerDivider_mW, %object
	.size	ina219_powerDivider_mW, 4
ina219_powerDivider_mW:
	.space	4
	.section	.bss.ina219_currentDivider_mA,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ina219_currentDivider_mA, %object
	.size	ina219_currentDivider_mA, 4
ina219_currentDivider_mA:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
