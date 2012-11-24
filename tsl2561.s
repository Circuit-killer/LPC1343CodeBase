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
	.file	"tsl2561.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed tsl2561.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip tsl2561.o -Os -Wall
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

	.section	.text.tsl2561WriteCmd,"ax",%progbits
	.align	1
	.global	tsl2561WriteCmd
	.thumb
	.thumb_func
	.ascii	"tsl2561WriteCmd\000"
	.align	2
	.word	4278190096
	.type	tsl2561WriteCmd, %function
tsl2561WriteCmd:
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
	.size	tsl2561WriteCmd, .-tsl2561WriteCmd
	.section	.text.tsl2561Write8,"ax",%progbits
	.align	1
	.global	tsl2561Write8
	.thumb
	.thumb_func
	.ascii	"tsl2561Write8\000"
	.align	2
	.word	4278190096
	.type	tsl2561Write8, %function
tsl2561Write8:
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
	strb	r1, [r3, #2]	@ D.4752, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp140
	pop	{r3, r4, r5, pc}	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	tsl2561Write8, .-tsl2561Write8
	.section	.text.tsl2561Read16,"ax",%progbits
	.align	1
	.global	tsl2561Read16
	.thumb
	.thumb_func
	.ascii	"tsl2561Read16\000"
	.align	2
	.word	4278190096
	.type	tsl2561Read16, %function
tsl2561Read16:
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
	.size	tsl2561Read16, .-tsl2561Read16
	.section	.text.tsl2561SetTiming,"ax",%progbits
	.align	1
	.global	tsl2561SetTiming
	.thumb
	.thumb_func
	.ascii	"tsl2561SetTiming\000"
	.align	2
	.word	4278190100
	.type	tsl2561SetTiming, %function
tsl2561SetTiming:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ integration, integration
	ldr	r0, .L19	@ tmp141,
	mov	r4, r1	@ gain, gain
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsl2561Initialised, _tsl2561Initialised
	cbnz	r3, .L17	@ _tsl2561Initialised,
	bl	tsl2561Init	@
.L17:
	bl	tsl2561Enable	@
	cbnz	r0, .L18	@ error,
	movs	r0, #129	@,
	orr	r1, r4, r5	@, gain, integration
	bl	tsl2561Write8	@
	cbnz	r0, .L18	@ error,
	ldr	r2, .L19+4	@ tmp147,
	ldr	r1, .L19+8	@ tmp149,
	strb	r5, [r2, #0]	@ integration, _tsl2561IntegrationTime
	strb	r4, [r1, #0]	@ gain, _tsl2561Gain
	pop	{r3, r4, r5, lr}	@
	b	tsl2561Disable	@
.L18:
	pop	{r3, r4, r5, pc}	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	tsl2561SetTiming, .-tsl2561SetTiming
	.section	.text.tsl2561Init,"ax",%progbits
	.align	1
	.global	tsl2561Init
	.thumb
	.thumb_func
	.ascii	"tsl2561Init\000"
	.align	2
	.word	4278190092
	.type	tsl2561Init, %function
tsl2561Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r3, #1	@ D.4726,
	cbz	r0, .L23	@,
	ldr	r2, .L24	@ tmp139,
	ldr	r0, .L24+4	@ tmp142,
	strb	r3, [r2, #0]	@ D.4726, _tsl2561Initialised
	ldr	r3, .L24+8	@ tmp144,
	ldrb	r0, [r0, #0]	@ zero_extendqisi2	@, _tsl2561IntegrationTime
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@, _tsl2561Gain
	bl	tsl2561SetTiming	@
	movs	r0, #0	@ D.4726,
	pop	{r3, pc}	@
.L23:
	mov	r0, r3	@ D.4726, D.4726
	pop	{r3, pc}	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	tsl2561Init, .-tsl2561Init
	.section	.text.tsl2561Disable,"ax",%progbits
	.align	1
	.global	tsl2561Disable
	.thumb
	.thumb_func
	.ascii	"tsl2561Disable\000"
	.align	2
	.word	4278190096
	.type	tsl2561Disable, %function
tsl2561Disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L28	@ tmp137,
	push	{r3, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsl2561Initialised, _tsl2561Initialised
	cbnz	r3, .L27	@ _tsl2561Initialised,
	bl	tsl2561Init	@
.L27:
	movs	r0, #128	@,
	movs	r1, #0	@,
	pop	{r3, lr}	@
	b	tsl2561Write8	@
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.size	tsl2561Disable, .-tsl2561Disable
	.section	.text.tsl2561Enable,"ax",%progbits
	.align	1
	.global	tsl2561Enable
	.thumb
	.thumb_func
	.ascii	"tsl2561Enable\000"
	.align	2
	.word	4278190096
	.type	tsl2561Enable, %function
tsl2561Enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L32	@ tmp137,
	push	{r3, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsl2561Initialised, _tsl2561Initialised
	cbnz	r3, .L31	@ _tsl2561Initialised,
	bl	tsl2561Init	@
.L31:
	movs	r0, #128	@,
	movs	r1, #3	@,
	pop	{r3, lr}	@
	b	tsl2561Write8	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	tsl2561Enable, .-tsl2561Enable
	.section	.text.tsl2561GetLuminosity,"ax",%progbits
	.align	1
	.global	tsl2561GetLuminosity
	.thumb
	.thumb_func
	.ascii	"tsl2561GetLuminosity\000"
	.align	2
	.word	4278190104
	.type	tsl2561GetLuminosity, %function
tsl2561GetLuminosity:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ broadband, broadband
	ldr	r0, .L44	@ tmp140,
	mov	r4, r1	@ ir, ir
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsl2561Initialised, _tsl2561Initialised
	cbnz	r3, .L35	@ _tsl2561Initialised,
	bl	tsl2561Init	@
.L35:
	bl	tsl2561Enable	@
	cbnz	r0, .L36	@ error,
	ldr	r1, .L44+4	@ tmp143,
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ _tsl2561IntegrationTime, _tsl2561IntegrationTime
	cbz	r3, .L38	@ _tsl2561IntegrationTime,
	cmp	r3, #1	@ _tsl2561IntegrationTime,
	bne	.L41	@,
	b	.L43	@
.L38:
	movs	r0, #14	@,
	b	.L42	@
.L43:
	movs	r0, #102	@,
	b	.L42	@
.L41:
	mov	r0, #400	@,
.L42:
	bl	systickDelay	@
	movs	r0, #172	@,
	mov	r1, r5	@, broadband
	bl	tsl2561Read16	@
	cbnz	r0, .L36	@ error,
	movs	r0, #174	@,
	mov	r1, r4	@, ir
	bl	tsl2561Read16	@
	cbnz	r0, .L36	@ error,
	pop	{r3, r4, r5, lr}	@
	b	tsl2561Disable	@
.L36:
	pop	{r3, r4, r5, pc}	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	tsl2561GetLuminosity, .-tsl2561GetLuminosity
	.section	.text.tsl2561CalculateLux,"ax",%progbits
	.align	1
	.global	tsl2561CalculateLux
	.thumb
	.thumb_func
	.ascii	"tsl2561CalculateLux\000"
	.align	2
	.word	4278190100
	.type	tsl2561CalculateLux, %function
tsl2561CalculateLux:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L60	@ tmp191,
	push	{r4, lr}	@
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ _tsl2561IntegrationTime.0, _tsl2561IntegrationTime
	ldr	r4, .L60+4	@ tmp193,
	cmp	ip, #1	@ _tsl2561IntegrationTime.0,
	it	ls
	ldrls	r3, .L60+8	@ tmp192,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ _tsl2561Gain, _tsl2561Gain
	ite	ls
	ldrhls	r3, [r3, ip, lsl #1]	@ chScale, CSWTCH.10
	movhi	r3, #1024	@ chScale,
	cbnz	r2, .L48	@ _tsl2561Gain,
	lsls	r3, r3, #4	@ chScale, chScale,
.L48:
	muls	r0, r3, r0	@ tmp195, chScale
	muls	r3, r1, r3	@ tmp196, ch1
	lsrs	r4, r3, #10	@ channel1, tmp196,
	lsrs	r0, r0, #10	@ channel0, tmp195,
	beq	.L52	@,
	lsls	r1, r4, #10	@ tmp197, channel1,
	udiv	r1, r1, r0	@ ratio1, tmp197, channel0
	b	.L49	@
.L52:
	mov	r1, r0	@ ratio1, channel0
.L49:
	adds	r3, r1, #1	@ tmp198, ratio1,
	lsrs	r1, r3, #1	@ ratio, tmp198,
	cmp	r1, #67	@ ratio,
	bls	.L53	@,
	cmp	r1, #133	@ ratio,
	bls	.L54	@,
	cmp	r1, #200	@ ratio,
	bls	.L55	@,
	cmp	r1, #266	@ ratio,
	bls	.L56	@,
	cmp	r1, #334	@ ratio,
	bcc	.L57	@,
	cmp	r1, #410	@ ratio,
	bls	.L58	@,
	movw	r2, #666	@ tmp200,
	cmp	r1, r2	@ ratio, tmp200
	ite	hi	@
	movhi	r3, #0	@, m,
	movls	r3, #43	@, m,
	ite	hi	@
	movhi	r2, #0	@, b,
	movls	r2, #55	@, b,
	b	.L50	@
.L53:
	movw	r3, #429	@ m,
	mov	r2, #516	@ b,
	b	.L50	@
.L54:
	movw	r3, #705	@ m,
	mov	r2, #552	@ b,
	b	.L50	@
.L55:
	movw	r3, #867	@ m,
	movw	r2, #595	@ b,
	b	.L50	@
.L56:
	movw	r3, #991	@ m,
	movw	r2, #642	@ b,
	b	.L50	@
.L57:
	movw	r3, #477	@ m,
	movw	r2, #375	@ b,
	b	.L50	@
.L58:
	movw	r3, #295	@ m,
	movw	r2, #257	@ b,
.L50:
	muls	r0, r2, r0	@ tmp201, b
	add	r1, r0, #8192	@ temp, tmp201,
	mls	r0, r4, r3, r1	@ tmp204, channel1, m, temp
	lsrs	r0, r0, #14	@, tmp204,
	pop	{r4, pc}	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	tsl2561CalculateLux, .-tsl2561CalculateLux
	.section	.data._tsl2561IntegrationTime,"aw",%progbits
	.set	.LANCHOR1,. + 0
	.type	_tsl2561IntegrationTime, %object
	.size	_tsl2561IntegrationTime, 1
_tsl2561IntegrationTime:
	.byte	2
	.section	.rodata.CSWTCH.10,"a",%progbits
	.align	1
	.set	.LANCHOR3,. + 0
	.type	CSWTCH.10, %object
	.size	CSWTCH.10, 4
CSWTCH.10:
	.short	29975
	.short	4071
	.section	.bss._tsl2561Initialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_tsl2561Initialised, %object
	.size	_tsl2561Initialised, 1
_tsl2561Initialised:
	.space	1
	.section	.bss._tsl2561Gain,"aw",%nobits
	.set	.LANCHOR2,. + 0
	.type	_tsl2561Gain, %object
	.size	_tsl2561Gain, 1
_tsl2561Gain:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
