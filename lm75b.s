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
	.file	"lm75b.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed lm75b.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip lm75b.o -Os -Wall -ffunction-sections
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

	.section	.text.lm75bWrite8,"ax",%progbits
	.align	1
	.global	lm75bWrite8
	.thumb
	.thumb_func
	.ascii	"lm75bWrite8\000"
	.align	2
	.word	4278190092
	.type	lm75bWrite8, %function
lm75bWrite8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
.L2:
	ldr	r3, .L4	@ tmp141,
	movs	r4, #0	@ tmp142,
	strb	r4, [r3, r2]	@ tmp142, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r2, .L4+4	@ tmp144,
	movs	r5, #3	@ tmp145,
	str	r5, [r2, #0]	@ tmp145, I2CWriteLength
	ldr	r2, .L4+8	@ tmp146,
	str	r4, [r2, #0]	@ tmp142, I2CReadLength
	movs	r2, #144	@ tmp149,
	strb	r2, [r3, #0]	@ tmp149, I2CMasterBuffer
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r1, [r3, #2]	@ D.4609, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp142
	pop	{r3, r4, r5, pc}	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	lm75bWrite8, .-lm75bWrite8
	.section	.text.lm75bRead16,"ax",%progbits
	.align	1
	.global	lm75bRead16
	.thumb
	.thumb_func
	.ascii	"lm75bRead16\000"
	.align	2
	.word	4278190092
	.type	lm75bRead16, %function
lm75bRead16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r2, #0	@ i,
	mov	r4, r1	@ value, value
.L7:
	ldr	r3, .L10	@ tmp150,
	movs	r1, #0	@ tmp151,
	strb	r1, [r3, r2]	@ tmp151, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L7	@,
	ldr	r1, .L10+4	@ tmp153,
	movs	r2, #2	@ tmp154,
	str	r2, [r1, #0]	@ tmp154, I2CWriteLength
	ldr	r1, .L10+8	@ tmp155,
	str	r2, [r1, #0]	@ tmp154, I2CReadLength
	movs	r2, #144	@ tmp158,
	movs	r1, #145	@ tmp163,
	strb	r2, [r3, #0]	@ tmp158, I2CMasterBuffer
	strb	r0, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r1, [r3, #2]	@ tmp163, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r0, .L10+12	@ tmp165,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	orr	r3, r2, ip, lsl #8	@, tmp172, I2CSlaveBuffer, I2CSlaveBuffer,
	asrs	r3, r3, #5	@ D.4598, tmp172,
	str	r3, [r4, #0]	@ D.4598, *value_12(D)
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	lsls	r2, r2, #24	@, I2CSlaveBuffer,
	bpl	.L8	@,
	mvn	lr, r3, lsl #22	@ tmp177, D.4598,
	mvn	r0, lr, lsr #22	@ tmp177, tmp177,
	str	r0, [r4, #0]	@ tmp177, *value_12(D)
.L8:
	movs	r0, #0	@,
	pop	{r4, pc}	@
.L11:
	.align	2
.L10:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	lm75bRead16, .-lm75bRead16
	.section	.text.lm75bInit,"ax",%progbits
	.align	1
	.global	lm75bInit
	.thumb
	.thumb_func
	.ascii	"lm75bInit\000"
	.align	2
	.word	4278190092
	.type	lm75bInit, %function
lm75bInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r3, #1	@ D.4590,
	cbz	r0, .L14	@,
	ldr	r2, .L15	@ tmp137,
	movs	r0, #0	@ D.4590,
	strb	r3, [r2, #0]	@ D.4590, _lm75bInitialised
	pop	{r3, pc}	@
.L14:
	mov	r0, r3	@ D.4590, D.4590
	pop	{r3, pc}	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	lm75bInit, .-lm75bInit
	.section	.text.lm75bConfigWrite,"ax",%progbits
	.align	1
	.global	lm75bConfigWrite
	.thumb
	.thumb_func
	.ascii	"lm75bConfigWrite\000"
	.align	2
	.word	4278190100
	.type	lm75bConfigWrite, %function
lm75bConfigWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ configValue, configValue
	ldr	r0, .L19	@ tmp139,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _lm75bInitialised, _lm75bInitialised
	cbnz	r3, .L18	@ _lm75bInitialised,
	bl	lm75bInit	@
.L18:
	movs	r0, #1	@,
	mov	r1, r4	@, configValue
	pop	{r4, lr}	@
	b	lm75bWrite8	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	lm75bConfigWrite, .-lm75bConfigWrite
	.section	.text.lm75bGetTemperature,"ax",%progbits
	.align	1
	.global	lm75bGetTemperature
	.thumb
	.thumb_func
	.ascii	"lm75bGetTemperature\000"
	.align	2
	.word	4278190100
	.type	lm75bGetTemperature, %function
lm75bGetTemperature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ temp, temp
	ldr	r0, .L23	@ tmp138,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _lm75bInitialised, _lm75bInitialised
	cbnz	r3, .L22	@ _lm75bInitialised,
	bl	lm75bInit	@
.L22:
	movs	r0, #0	@,
	bl	lm75bConfigWrite	@
	mov	r1, r4	@, temp
	movs	r0, #0	@,
	bl	lm75bRead16	@
	mov	r4, r0	@ tmp140,
	movs	r0, #1	@,
	bl	lm75bConfigWrite	@
	mov	r0, r4	@, tmp140
	pop	{r4, pc}	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.size	lm75bGetTemperature, .-lm75bGetTemperature
	.section	.bss._lm75bInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_lm75bInitialised, %object
	.size	_lm75bInitialised, 1
_lm75bInitialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
