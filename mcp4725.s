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
	.file	"mcp4725.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed mcp4725.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip mcp4725.o -Os -Wall
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

	.section	.text.mcp4725Init,"ax",%progbits
	.align	1
	.global	mcp4725Init
	.thumb
	.thumb_func
	.ascii	"mcp4725Init\000"
	.align	2
	.word	4278190092
	.type	mcp4725Init, %function
mcp4725Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	cbz	r0, .L3	@,
	ldr	r3, .L4	@ tmp137,
	movs	r2, #1	@ tmp138,
	strb	r2, [r3, #0]	@ tmp138, _mcp4725Initialised
	movs	r0, #0	@ D.4590,
	pop	{r3, pc}	@
.L3:
	mov	r0, #-1	@ D.4590,
	pop	{r3, pc}	@
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.size	mcp4725Init, .-mcp4725Init
	.section	.text.mcp4725SetVoltage,"ax",%progbits
	.align	1
	.global	mcp4725SetVoltage
	.thumb
	.thumb_func
	.ascii	"mcp4725SetVoltage\000"
	.align	2
	.word	4278190100
	.type	mcp4725SetVoltage, %function
mcp4725SetVoltage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r0	@ output, output
	ldr	r0, .L12	@ tmp145,
	mov	r5, r1	@ writeEEPROM, writeEEPROM
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp4725Initialised, _mcp4725Initialised
	cbnz	r3, .L7	@ _mcp4725Initialised,
	bl	mcp4725Init	@
.L7:
	movs	r2, #0	@ i,
.L8:
	ldr	r3, .L12+4	@ tmp147,
	movs	r1, #0	@ tmp148,
	strb	r1, [r3, r2]	@ tmp148, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L8	@,
	ldr	r0, .L12+8	@ tmp150,
	movs	r6, #4	@ tmp151,
	str	r6, [r0, #0]	@ tmp151, I2CWriteLength
	ldr	r0, .L12+12	@ tmp152,
	str	r1, [r0, #0]	@ tmp148, I2CReadLength
	movs	r1, #196	@ tmp155,
	strb	r1, [r3, #0]	@ tmp155, I2CMasterBuffer
	cbz	r5, .L9	@ writeEEPROM,
	movs	r2, #96	@ tmp158,
.L9:
	strb	r2, [r3, #1]	@ i, I2CMasterBuffer
	lsrs	r2, r4, #4	@ tmp163, output,
	lsls	r4, r4, #4	@ tmp167, output,
	strb	r2, [r3, #2]	@ tmp163, I2CMasterBuffer
	strb	r4, [r3, #3]	@ D.4586, I2CMasterBuffer
	pop	{r4, r5, r6, lr}	@
	b	i2cEngine	@
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	mcp4725SetVoltage, .-mcp4725SetVoltage
	.section	.text.mcp4725ReadConfig,"ax",%progbits
	.align	1
	.global	mcp4725ReadConfig
	.thumb
	.thumb_func
	.ascii	"mcp4725ReadConfig\000"
	.align	2
	.word	4278190100
	.type	mcp4725ReadConfig, %function
mcp4725ReadConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ status, status
	ldr	r0, .L18	@ tmp148,
	mov	r5, r1	@ value, value
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp4725Initialised, _mcp4725Initialised
	cbnz	r3, .L15	@ _mcp4725Initialised,
	bl	mcp4725Init	@
.L15:
	movs	r3, #0	@ i,
.L16:
	ldr	r2, .L18+4	@ tmp150,
	movs	r1, #0	@ tmp151,
	strb	r1, [r2, r3]	@ tmp151, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L16	@,
	ldr	r1, .L18+8	@ tmp153,
	ldr	r3, .L18+12	@ tmp155,
	movs	r0, #1	@ tmp154,
	str	r0, [r1, #0]	@ tmp154, I2CWriteLength
	movs	r1, #3	@ tmp156,
	movs	r0, #197	@ tmp158,
	str	r1, [r3, #0]	@ tmp156, I2CReadLength
	strb	r0, [r2, #0]	@ tmp158, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r3, .L18+16	@ tmp160,
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	ip, [r4, #0]	@ I2CSlaveBuffer, *status_7(D)
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	lsrs	r3, r1, #4	@ tmp173, I2CSlaveBuffer,
	orr	r2, r3, r0, lsl #4	@, tmp175, tmp173, I2CSlaveBuffer,
	strh	r2, [r5, #0]	@ movhi	@ tmp175, *value_17(D)
	pop	{r3, r4, r5, pc}	@
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	mcp4725ReadConfig, .-mcp4725ReadConfig
	.section	.bss._mcp4725Initialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_mcp4725Initialised, %object
	.size	_mcp4725Initialised, 1
_mcp4725Initialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
