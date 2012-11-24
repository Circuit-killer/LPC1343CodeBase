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
	.file	"ds18b20.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ds18b20.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ds18b20.o -Os -Wall
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

	.section	.text.pullLineLow,"ax",%progbits
	.align	1
	.global	pullLineLow
	.thumb
	.thumb_func
	.ascii	"pullLineLow\000"
	.align	2
	.word	4278190092
	.type	pullLineLow, %function
pullLineLow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r5, .L2	@ tmp146,
	ldr	r4, .L2+4	@ tmp147,
	ldr	r0, [r5, #0]	@, portNum
	ldr	r1, [r4, #0]	@, bitPos
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r3, [r5, #0]	@ portNum, portNum
	ldr	r0, [r4, #0]	@ bitPos, bitPos
	lsls	r2, r3, #16	@ tmp149, portNum,
	movs	r1, #1	@ tmp154,
	add	r3, r2, #1342177280	@ tmp151, tmp149,
	lsl	r2, r1, r0	@ tmp153, tmp154, bitPos
	movs	r1, #0	@ tmp157,
	str	r1, [r3, r2, lsl #2]	@ tmp157, *D.4746_15
	pop	{r3, r4, r5, pc}	@
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	pullLineLow, .-pullLineLow
	.section	.text.releaseLine,"ax",%progbits
	.align	1
	.global	releaseLine
	.thumb
	.thumb_func
	.ascii	"releaseLine\000"
	.align	2
	.word	4278190092
	.type	releaseLine, %function
releaseLine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5	@ tmp137,
	ldr	r0, .L5+4	@ tmp136,
	ldr	r1, [r3, #0]	@, bitPos
	ldr	r0, [r0, #0]	@, portNum
	movs	r2, #0	@,
	b	gpioSetDir	@
.L6:
	.align	2
.L5:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	releaseLine, .-releaseLine
	.section	.text.delayUs,"ax",%progbits
	.align	1
	.global	delayUs
	.thumb
	.thumb_func
	.ascii	"delayUs\000"
	.align	2
	.word	4278190088
	.type	delayUs, %function
delayUs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0	@ us, us
	movs	r0, #1	@,
	b	timer16DelayUS	@
	.size	delayUs, .-delayUs
	.section	.text.readLineState,"ax",%progbits
	.align	1
	.global	readLineState
	.thumb
	.thumb_func
	.ascii	"readLineState\000"
	.align	2
	.word	4278190096
	.type	readLineState, %function
readLineState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L9	@ tmp149,
	movs	r1, #1	@ tmp150,
	ldr	r3, [r2, #0]	@ bitPos, bitPos
	ldr	r0, .L9+4	@ tmp152,
	lsl	r3, r1, r3	@ D.4768, tmp150, bitPos
	ldr	r2, [r0, #0]	@ portNum, portNum
	lsls	r1, r2, #16	@ tmp153, portNum,
	add	r0, r1, #1342177280	@ tmp155, tmp153,
	ldr	r2, [r0, r3, lsl #2]	@ D.4762, *D.4763_13
	tst	r2, r3	@ D.4762, D.4768
	ite	eq	@
	moveq	r0, #0	@,
	movne	r0, #1	@,
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	readLineState, .-readLineState
	.section	.text.writeBit,"ax",%progbits
	.align	1
	.global	writeBit
	.thumb
	.thumb_func
	.ascii	"writeBit\000"
	.align	2
	.word	4278190092
	.type	writeBit, %function
writeBit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ bit, bit
	bl	pullLineLow	@
	movs	r0, #1	@,
	bl	delayUs	@
	cbz	r4, .L12	@ bit,
	bl	releaseLine	@
.L12:
	movs	r0, #60	@,
	bl	delayUs	@
	pop	{r4, lr}	@
	b	releaseLine	@
	.size	writeBit, .-writeBit
	.section	.text.readBit,"ax",%progbits
	.align	1
	.global	readBit
	.thumb
	.thumb_func
	.ascii	"readBit\000"
	.align	2
	.word	4278190088
	.type	readBit, %function
readBit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	pullLineLow	@
	movs	r0, #1	@,
	bl	delayUs	@
	bl	releaseLine	@
	movs	r0, #14	@,
	bl	delayUs	@
	bl	readLineState	@
	mov	r4, r0	@ D.4699,
	movs	r0, #45	@,
	bl	delayUs	@
	adds	r0, r4, #0	@, D.4699,
	it	ne
	movne	r0, #1	@,
	pop	{r4, pc}	@
	.size	readBit, .-readBit
	.section	.text.readByte,"ax",%progbits
	.align	1
	.global	readByte
	.thumb
	.thumb_func
	.ascii	"readByte\000"
	.align	2
	.word	4278190092
	.type	readByte, %function
readByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r5, #9	@ ivtmp.26,
	movs	r4, #0	@ n,
	b	.L15	@
.L16:
	bl	readBit	@
	lsrs	r1, r4, #1	@ tmp152, n,
	orr	r4, r1, r0, lsl #7	@, tmp155, tmp152,,
	uxtb	r4, r4	@ n, tmp155
.L15:
	subs	r5, r5, #1	@ tmp156, ivtmp.26,
	uxtb	r5, r5	@ ivtmp.26, tmp156
	cmp	r5, #0	@ ivtmp.26
	bne	.L16	@
	mov	r0, r4	@, n
	pop	{r3, r4, r5, pc}	@
	.size	readByte, .-readByte
	.section	.text.writeByte,"ax",%progbits
	.align	1
	.global	writeByte
	.thumb
	.thumb_func
	.ascii	"writeByte\000"
	.align	2
	.word	4278190092
	.type	writeByte, %function
writeByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ b, b
	movs	r4, #9	@ ivtmp.40,
	b	.L18	@
.L19:
	and	r0, r5, #1	@, b,
	bl	writeBit	@
	lsrs	r5, r5, #1	@ b, b,
.L18:
	subs	r4, r4, #1	@ tmp144, ivtmp.40,
	uxtb	r4, r4	@ ivtmp.40, tmp144
	cmp	r4, #0	@ ivtmp.40
	bne	.L19	@
	pop	{r3, r4, r5, pc}	@
	.size	writeByte, .-writeByte
	.section	.text.reset,"ax",%progbits
	.align	1
	.global	reset
	.thumb
	.thumb_func
	.ascii	"reset\000"
	.align	2
	.word	4278190088
	.type	reset, %function
reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	pullLineLow	@
	mov	r0, #480	@,
	bl	delayUs	@
	bl	releaseLine	@
	movs	r0, #60	@,
	bl	delayUs	@
	bl	readLineState	@
	mov	r4, r0	@ i,
	mov	r0, #420	@,
	bl	delayUs	@
	mov	r0, r4	@, i
	pop	{r4, pc}	@
	.size	reset, .-reset
	.section	.text.ds18b20Init,"ax",%progbits
	.align	1
	.global	ds18b20Init
	.thumb
	.thumb_func
	.ascii	"ds18b20Init\000"
	.align	2
	.word	4278190092
	.type	ds18b20Init, %function
ds18b20Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r3, .L22	@ tmp138,
	mov	r4, r2	@ ioconReg, ioconReg
	ldr	r2, .L22+4	@ tmp137,
	str	r1, [r3, #0]	@ bitPosition, bitPos
	str	r0, [r2, #0]	@ portNumber, portNum
	movw	r1, #65535	@,
	movs	r0, #1	@,
	bl	timer16Init	@
	movs	r0, #1	@,
	bl	timer16Enable	@
	mov	r0, r4	@, ioconReg
	movs	r1, #0	@,
	pop	{r4, lr}	@
	b	gpioSetPullup	@
.L23:
	.align	2
.L22:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	ds18b20Init, .-ds18b20Init
	.section	.text.ds18b20GetTemperature,"ax",%progbits
	.align	1
	.global	ds18b20GetTemperature
	.thumb
	.thumb_func
	.ascii	"ds18b20GetTemperature\000"
	.align	2
	.word	4278190104
	.type	ds18b20GetTemperature, %function
ds18b20GetTemperature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	reset	@
	cbnz	r0, .L34	@,
.L25:
	movs	r0, #204	@,
	bl	writeByte	@
	movs	r0, #68	@,
	bl	writeByte	@
	movw	r4, #65535	@ timeout,
	b	.L27	@
.L29:
	subs	r4, r4, #1	@ tmp165, timeout,
	uxth	r4, r4	@ timeout, tmp165
.L27:
	bl	readBit	@
	cbnz	r0, .L28	@,
	cmp	r4, #0	@ timeout
	bne	.L29	@
	b	.L30	@
.L28:
	cbnz	r4, .L31	@ timeout,
.L30:
	ldr	r0, .L35	@,
.L33:
	ldr	r1, .L35+4	@,
	bl	printf	@
	movs	r0, #0	@ D.4663,
	pop	{r4, pc}	@
.L31:
	bl	reset	@
	cbz	r0, .L32	@,
.L34:
	ldr	r0, .L35+8	@,
	b	.L33	@
.L32:
	movs	r0, #204	@,
	bl	writeByte	@
	movs	r0, #190	@,
	bl	writeByte	@
	bl	readByte	@
	mov	r4, r0	@ tmp167,
	bl	readByte	@
	lsrs	r3, r4, #4	@ tmp169, tmp167,
	movw	r1, #625	@ tmp180,
	and	r4, r4, #15	@ decimal, tmp167,
	muls	r4, r1, r4	@ tmp181, tmp180
	uxtb	ip, r3	@ digit, tmp169
	and	r0, r0, #7	@ tmp171,,
	orr	r2, ip, r0, lsl #4	@, tmp175, digit, tmp171,
	sxtb	r3, r2	@ tmp176, tmp175
	movw	r0, #10000	@ tmp178,
	mla	r0, r0, r3, r4	@ D.4663, tmp178, tmp176, tmp181
	pop	{r4, pc}	@
.L36:
	.align	2
.L35:
	.word	.LC2
	.word	.LC1
	.word	.LC0
	.size	ds18b20GetTemperature, .-ds18b20GetTemperature
	.global	bitPos
	.global	portNum
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"DS18B20 is not responding%s\000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"BS18B20 temperature conversion has timed out%s\000"
	.section	.bss.portNum,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	portNum, %object
	.size	portNum, 4
portNum:
	.space	4
	.section	.bss.bitPos,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	bitPos, %object
	.size	bitPos, 4
bitPos:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
