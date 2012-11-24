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
	.file	"isl12022m.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed isl12022m.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip isl12022m.o -Os -Wall
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

	.section	.text.isl12022mDecToBCD,"ax",%progbits
	.align	1
	.global	isl12022mDecToBCD
	.thumb
	.thumb_func
	.ascii	"isl12022mDecToBCD\000"
	.align	2
	.word	4278190100
	.type	isl12022mDecToBCD, %function
isl12022mDecToBCD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #10	@ tmp143,
	udiv	r3, r0, r2	@ tmp142, val, tmp143
	mls	r1, r2, r3, r0	@ tmp153, tmp143, tmp142, val
	add	r0, r1, r3, lsl #4	@, tmp156, tmp153, tmp142,
	uxtb	r0, r0	@, tmp156
	bx	lr	@
	.size	isl12022mDecToBCD, .-isl12022mDecToBCD
	.section	.text.isl12022mBCDToDec,"ax",%progbits
	.align	1
	.global	isl12022mBCDToDec
	.thumb
	.thumb_func
	.ascii	"isl12022mBCDToDec\000"
	.align	2
	.word	4278190100
	.type	isl12022mBCDToDec, %function
isl12022mBCDToDec:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #4	@ tmp141, val,
	and	r3, r0, #15	@ tmp145, val,
	movs	r1, #10	@ tmp144,
	mla	r0, r1, r2, r3	@ tmp148, tmp144, tmp141, tmp145
	uxtb	r0, r0	@, tmp148
	bx	lr	@
	.size	isl12022mBCDToDec, .-isl12022mBCDToDec
	.section	.text.isl12022mWrite8,"ax",%progbits
	.align	1
	.global	isl12022mWrite8
	.thumb
	.thumb_func
	.ascii	"isl12022mWrite8\000"
	.align	2
	.word	4278190096
	.type	isl12022mWrite8, %function
isl12022mWrite8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	movs	r5, #0	@ i,
.L4:
	ldr	r3, .L6	@ tmp142,
	movs	r4, #0	@ tmp143,
	strb	r4, [r3, r5]	@ tmp143, I2CMasterBuffer
	adds	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L4	@,
	ldr	r5, .L6+4	@ tmp145,
	movs	r6, #3	@ tmp146,
	str	r6, [r5, #0]	@ tmp146, I2CWriteLength
	ldr	r5, .L6+8	@ tmp147,
	str	r4, [r5, #0]	@ tmp143, I2CReadLength
	strb	r0, [r3, #0]	@ address, I2CMasterBuffer
	strb	r1, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r2, [r3, #2]	@ D.4796, I2CMasterBuffer
	bl	i2cEngine	@
	mov	r0, r4	@, tmp143
	pop	{r4, r5, r6, pc}	@
.L7:
	.align	2
.L6:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	isl12022mWrite8, .-isl12022mWrite8
	.section	.text.isl12022mReadBuffer,"ax",%progbits
	.align	1
	.global	isl12022mReadBuffer
	.thumb
	.thumb_func
	.ascii	"isl12022mReadBuffer\000"
	.align	2
	.word	4278190100
	.type	isl12022mReadBuffer, %function
isl12022mReadBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #64	@ len,
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r2	@ buffer, buffer
	mov	r5, r3	@ len, len
	bhi	.L13	@,
	movs	r2, #0	@ i,
.L10:
	ldr	r3, .L15	@ tmp168,
	movs	r6, #0	@ tmp169,
	strb	r6, [r3, r2]	@ tmp169, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L10	@,
	ldr	r2, .L15+4	@ tmp171,
	movs	r7, #2	@ tmp172,
	str	r7, [r2, #0]	@ tmp172, I2CWriteLength
	ldr	r2, .L15+8	@ tmp173,
	str	r5, [r2, #0]	@ len, I2CReadLength
	strb	r0, [r3, #0]	@ address, I2CMasterBuffer
	orr	r0, r0, #1	@ D.4792, address,
	strb	r1, [r3, #1]	@ reg, I2CMasterBuffer
	strb	r0, [r3, #2]	@ D.4792, I2CMasterBuffer
	bl	i2cEngine	@
	b	.L11	@
.L12:
	ldr	r1, .L15+12	@ tmp181,
	ldrb	r3, [r1, r6]	@ zero_extendqisi2	@ tmp183, I2CSlaveBuffer
	strb	r3, [r4, r6]	@ tmp183, MEM[base: buffer_12(D), index: i_2, offset: 0B]
	adds	r6, r6, #1	@ i, i,
.L11:
	cmp	r6, r5	@ i, len
	bne	.L12	@,
	movs	r0, #0	@ D.4791,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L13:
	movs	r0, #3	@ D.4791,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L16:
	.align	2
.L15:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	isl12022mReadBuffer, .-isl12022mReadBuffer
	.section	.text.isl12022mInit,"ax",%progbits
	.align	1
	.global	isl12022mInit
	.thumb
	.thumb_func
	.ascii	"isl12022mInit\000"
	.align	2
	.word	4278190096
	.type	isl12022mInit, %function
isl12022mInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	cbz	r0, .L20	@,
	movs	r0, #222	@,
	movs	r1, #8	@,
	add	r2, sp, #4	@,,
	movs	r3, #1	@,
	bl	isl12022mReadBuffer	@
	cbnz	r0, .L18	@ error,
	ldrb	r2, [sp, #4]	@ zero_extendqisi2	@ D.4781, buffer
	lsls	r3, r2, #25	@, D.4781,
	bmi	.L19	@,
	movs	r0, #222	@,
	movs	r1, #8	@,
	orr	r2, r2, #64	@, D.4781,
	bl	isl12022mWrite8	@
.L19:
	ldr	r3, .L21	@ tmp148,
	movs	r2, #1	@ tmp149,
	strb	r2, [r3, #0]	@ tmp149, _isl12022mInitialised
	b	.L18	@
.L20:
	movs	r0, #1	@ error,
.L18:
	pop	{r1, r2, r3, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.size	isl12022mInit, .-isl12022mInit
	.section	.text.isl12022mGetTime,"ax",%progbits
	.align	1
	.global	isl12022mGetTime
	.thumb
	.thumb_func
	.ascii	"isl12022mGetTime\000"
	.align	2
	.word	4278190100
	.type	isl12022mGetTime, %function
isl12022mGetTime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, lr}	@
	mov	r4, r0	@ time, time
	ldr	r0, .L27	@ tmp155,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _isl12022mInitialised, _isl12022mInitialised
	cbnz	r3, .L24	@ _isl12022mInitialised,
	bl	isl12022mInit	@
	mov	r5, r0	@ error,
	cbnz	r0, .L25	@ error,
.L24:
	movs	r0, #222	@,
	movs	r1, #0	@,
	add	r2, sp, #4	@,,
	movs	r3, #9	@,
	bl	isl12022mReadBuffer	@
	mov	r5, r0	@ error,
	cbnz	r0, .L25	@ error,
	ldrb	r6, [sp, #11]	@ zero_extendqisi2	@ D.4755, buffer
	ldrb	r0, [sp, #4]	@ zero_extendqisi2	@, buffer
	tst	r6, #6	@ D.4755,
	it	ne	@
	movne	r5, #4	@, error,
	bl	isl12022mBCDToDec	@
	strb	r0, [r4, #8]	@, time_16(D)->second
	ldrb	r0, [sp, #5]	@ zero_extendqisi2	@, buffer
	bl	isl12022mBCDToDec	@
	ldrb	ip, [sp, #7]	@ zero_extendqisi2	@ buffer, buffer
	strb	r0, [r4, #7]	@, time_16(D)->minute
	ldrb	r0, [sp, #6]	@ zero_extendqisi2	@ buffer, buffer
	ldrb	r1, [sp, #8]	@ zero_extendqisi2	@ buffer, buffer
	and	r3, r0, #31	@ tmp169, buffer,
	and	r2, ip, #63	@ tmp173, buffer,
	ldrb	ip, [sp, #10]	@ zero_extendqisi2	@ buffer, buffer
	and	r0, r1, #31	@ tmp177, buffer,
	strb	r3, [r4, #6]	@ tmp169, time_16(D)->hour
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ buffer, buffer
	ldrb	r3, [sp, #9]	@ zero_extendqisi2	@ buffer, buffer
	strb	r2, [r4, #5]	@ tmp173, time_16(D)->day
	and	r2, ip, #7	@ tmp183, buffer,
	strb	r0, [r4, #4]	@ tmp177, time_16(D)->month
	strb	r3, [r4, #3]	@ buffer, time_16(D)->year
	strb	r2, [r4, #2]	@ tmp183, time_16(D)->dayofweek
	strb	r6, [r4, #1]	@ D.4755, time_16(D)->status
	strb	r1, [r4, #0]	@ buffer, time_16(D)->interrupt
.L25:
	mov	r0, r5	@, error
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, pc}
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.size	isl12022mGetTime, .-isl12022mGetTime
	.section	.text.isl12022mSetTime,"ax",%progbits
	.align	1
	.global	isl12022mSetTime
	.thumb
	.thumb_func
	.ascii	"isl12022mSetTime\000"
	.align	2
	.word	4278190100
	.type	isl12022mSetTime, %function
isl12022mSetTime:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L32	@ tmp151,
	push	{r3, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _isl12022mInitialised, _isl12022mInitialised
	cbnz	r3, .L30	@ _isl12022mInitialised,
	bl	isl12022mInit	@
	cbnz	r0, .L31	@ error,
.L30:
	ldrb	r0, [sp, #16]	@ zero_extendqisi2	@, second
	bl	isl12022mDecToBCD	@
	movs	r1, #0	@,
	mov	r2, r0	@ tmp154,
	movs	r0, #222	@,
	bl	isl12022mWrite8	@
	cbnz	r0, .L31	@ error,
	ldrb	r0, [sp, #12]	@ zero_extendqisi2	@, minute
	bl	isl12022mDecToBCD	@
	movs	r1, #1	@,
	mov	r2, r0	@ tmp156,
	movs	r0, #222	@,
	bl	isl12022mWrite8	@
	cbnz	r0, .L31	@ error,
	ldrb	r2, [sp, #8]	@ zero_extendqisi2	@ hour, hour
	movs	r1, #2	@,
	movs	r0, #222	@,
	and	r2, r2, #63	@, hour,
	bl	isl12022mWrite8	@
	orn	r1, r0, #127	@ tmp160,,
	uxtb	r0, r1	@ error, tmp160
.L31:
	pop	{r3, pc}	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	isl12022mSetTime, .-isl12022mSetTime
	.section	.text.isl12022mGetTemp,"ax",%progbits
	.align	1
	.global	isl12022mGetTemp
	.thumb
	.thumb_func
	.ascii	"isl12022mGetTemp\000"
	.align	2
	.word	4278190100
	.type	isl12022mGetTemp, %function
isl12022mGetTemp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	mov	r4, r0	@ celsius, celsius
	ldr	r0, .L38	@ tmp153,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _isl12022mInitialised, _isl12022mInitialised
	cbnz	r3, .L35	@ _isl12022mInitialised,
	bl	isl12022mInit	@
	cbnz	r0, .L36	@ error,
.L35:
	movs	r0, #222	@,
	movs	r1, #13	@,
	add	r2, sp, #4	@,,
	movs	r3, #1	@,
	bl	isl12022mReadBuffer	@
	cbnz	r0, .L37	@,
	ldrb	r2, [sp, #4]	@ zero_extendqisi2	@ D.4691, buffer
	lsls	r1, r2, #24	@, D.4691,
	bmi	.L37	@,
	movs	r0, #222	@,
	movs	r1, #13	@,
	orr	r2, r2, #128	@, D.4691,
	bl	isl12022mWrite8	@
	cbnz	r0, .L36	@ error,
.L37:
	movs	r0, #100	@,
	bl	systickDelay	@
	movs	r0, #222	@,
	movs	r1, #40	@,
	add	r2, sp, #4	@,,
	movs	r3, #2	@,
	bl	isl12022mReadBuffer	@
	cbnz	r0, .L36	@ error,
	ldrb	lr, [sp, #5]	@ zero_extendqisi2	@ buffer, buffer
	ldrb	ip, [sp, #4]	@ zero_extendqisi2	@ buffer, buffer
	orr	r1, ip, lr, lsl #8	@, tmp170, buffer, buffer,
	asrs	r3, r1, #1	@ tmp171, tmp170,
	sub	r2, r3, #272	@ tmp172, tmp171,
	subs	r1, r2, #1	@ tmp172, tmp172,
	strb	r1, [r4, #0]	@ tmp172, *celsius_27(D)
.L36:
	pop	{r2, r3, r4, pc}
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.size	isl12022mGetTemp, .-isl12022mGetTemp
	.section	.bss._isl12022mInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_isl12022mInitialised, %object
	.size	_isl12022mInitialised, 1
_isl12022mInitialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
