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
	.file	"main.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed main.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip main.o -Os -Wall -ffunction-sections
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

	.section	.text.NVIC_EnableIRQ,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"NVIC_EnableIRQ\000"
	.align	2
	.word	4278190096
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #5	@ D.5383, IRQn,
	and	r1, r0, #31	@ tmp143, IRQn,
	movs	r0, #1	@ tmp144,
	lsl	r0, r0, r1	@ D.5388, tmp144, tmp143
	ldr	r3, .L2	@ tmp145,
	str	r0, [r3, r2, lsl #2]	@ D.5388, MEM[(struct NVIC_Type *)3758153984B].ISER
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	-536813312
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.TIMER16_0_IRQHandler,"ax",%progbits
	.align	1
	.global	TIMER16_0_IRQHandler
	.thumb
	.thumb_func
	.ascii	"TIMER16_0_IRQHandler\000"
	.align	2
	.word	4278190104
	.type	TIMER16_0_IRQHandler, %function
TIMER16_0_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r0, .L5	@ tmp147,
	movs	r2, #1	@ tmp148,
	str	r2, [r0, #0]	@ tmp148, MEM[(volatile long unsigned int *)1073790976B]
	movs	r1, #0	@ tmp150,
	ldr	r2, .L5+4	@ tmp153,
	str	r1, [r0, #8]	@ tmp150, MEM[(volatile long unsigned int *)1073790984B]
	str	r1, [r0, #16]	@ tmp150, MEM[(volatile long unsigned int *)1073790992B]
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ pwmCounter, pwmCounter
	ldr	r3, .L5+8	@ tmp156,
	ldr	r0, .L5+12	@ tmp158,
	ldr	r4, [r3, ip, lsl #2]	@ toSend.25, sendValues
	ldr	r3, .L5+16	@ tmp157,
	str	r4, [r3, #0]	@ toSend.25, toSend
	movw	r4, #4095	@ tmp159,
	str	r4, [r0, #0]	@ tmp159, MEM[(volatile long unsigned int *)1342177296B]
	str	r1, [r0, #0]	@ tmp150, MEM[(volatile long unsigned int *)1342177296B]
	ldr	r0, [r3, #0]	@ toSend.26, toSend
	mvns	r1, r0	@ tmp163, toSend.26
	lsrs	r0, r1, #16	@ D.5414, tmp163,
	ldr	r1, .L5+20	@ tmp164,
	str	r0, [r1, #0]	@ D.5414, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r0, [r3, #0]	@ toSend.27, toSend
	mvns	r0, r0	@ tmp166, toSend.27
	lsrs	r0, r0, #8	@ D.5417, tmp166,
	str	r0, [r1, #0]	@ D.5417, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r0, [r3, #0]	@ toSend.28, toSend
	mvns	r3, r0	@ D.5419, toSend.28
	str	r3, [r1, #0]	@ D.5419, MEM[(volatile long unsigned int *)1074003976B]
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ pwmCounter, pwmCounter
	adds	r3, r0, #1	@ tmp173, pwmCounter,
	strb	r3, [r2, #0]	@ pwmCounter.30, pwmCounter
	pop	{r4, pc}	@
.L6:
	.align	2
.L5:
	.word	1073790976
	.word	pwmCounter
	.word	sendValues
	.word	1342177296
	.word	toSend
	.word	1074003976
	.size	TIMER16_0_IRQHandler, .-TIMER16_0_IRQHandler
	.section	.text.calculateSendValues,"ax",%progbits
	.align	1
	.global	calculateSendValues
	.thumb
	.thumb_func
	.ascii	"calculateSendValues\000"
	.align	2
	.word	4278190100
	.type	calculateSendValues, %function
calculateSendValues:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r3, #0	@ j,
.L9:
	ldr	r1, .L12	@ tmp147,
	movs	r2, #0	@ tmp148,
	str	r2, [r1, r3, lsl #2]	@ tmp148, sendValues
.L8:
	ldr	r5, .L12+4	@ tmp150,
	ldr	r4, [r1, r3, lsl #2]	@ D.5396, sendValues
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ tmp152, dmxChannels
	ldr	r5, .L12+8	@ tmp153,
	ldrb	r0, [r5, ip]	@ zero_extendqisi2	@ tmp154, logValues
	cmp	r0, r3	@ tmp154, j
	ite	le
	movle	r0, #0	@ tmp156,
	movgt	r0, #1	@ tmp156,
	lsl	ip, r0, r2	@ tmp157, tmp156, i
	adds	r2, r2, #1	@ i, i,
	orr	r0, ip, r4	@ D.5404, tmp157, D.5396
	cmp	r2, #8	@ i,
	str	r0, [r1, r3, lsl #2]	@ D.5404, sendValues
	bne	.L8	@,
	adds	r3, r3, #1	@ j, j,
	cmp	r3, #256	@ j,
	bne	.L9	@,
	pop	{r4, r5, pc}	@
.L13:
	.align	2
.L12:
	.word	sendValues
	.word	dmxChannels
	.word	.LANCHOR0
	.size	calculateSendValues, .-calculateSendValues
	.section	.text.timerInit,"ax",%progbits
	.align	1
	.global	timerInit
	.thumb
	.thumb_func
	.ascii	"timerInit\000"
	.align	2
	.word	4278190092
	.type	timerInit, %function
timerInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r3, .L15	@ tmp136,
	ldr	r1, [r3, #0]	@ D.5390, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r1, #128	@ D.5391, D.5390,
	str	r0, [r3, #0]	@ D.5391, MEM[(volatile long unsigned int *)1074036864B]
	movs	r0, #41	@,
	bl	NVIC_EnableIRQ	@
	ldr	r1, .L15+4	@ tmp138,
	movs	r2, #0	@ tmp139,
	str	r2, [r1, #0]	@ tmp139, MEM[(volatile long unsigned int *)1073790988B]
	ldr	r2, .L15+8	@ tmp142,
	movs	r3, #1	@ tmp143,
	movs	r0, #102	@ tmp141,
	str	r0, [r1, #12]	@ tmp141, MEM[(volatile long unsigned int *)1073791000B]
	str	r3, [r2, #0]	@ tmp143, MEM[(volatile long unsigned int *)1073790996B]
	str	r3, [r2, #-16]	@ tmp143, MEM[(volatile long unsigned int *)1073790980B]
	pop	{r3, pc}	@
.L16:
	.align	2
.L15:
	.word	1074036864
	.word	1073790988
	.word	1073790996
	.size	timerInit, .-timerInit
	.section	.text.mockupTimerInit,"ax",%progbits
	.align	1
	.global	mockupTimerInit
	.thumb
	.thumb_func
	.ascii	"mockupTimerInit\000"
	.align	2
	.word	4278190096
	.type	mockupTimerInit, %function
mockupTimerInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r3, .L18	@ tmp136,
	ldr	r1, [r3, #0]	@ D.5375, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r1, #256	@ D.5376, D.5375,
	str	r0, [r3, #0]	@ D.5376, MEM[(volatile long unsigned int *)1074036864B]
	movs	r0, #42	@,
	bl	NVIC_EnableIRQ	@
	ldr	r1, .L18+4	@ tmp138,
	movs	r2, #0	@ tmp139,
	str	r2, [r1, #0]	@ tmp139, MEM[(volatile long unsigned int *)1073807372B]
	ldr	r2, .L18+8	@ tmp142,
	movs	r3, #1	@ tmp143,
	movw	r0, #65535	@ tmp141,
	str	r0, [r1, #12]	@ tmp141, MEM[(volatile long unsigned int *)1073807384B]
	str	r3, [r2, #0]	@ tmp143, MEM[(volatile long unsigned int *)1073807380B]
	str	r3, [r2, #-16]	@ tmp143, MEM[(volatile long unsigned int *)1073807364B]
	pop	{r3, pc}	@
.L19:
	.align	2
.L18:
	.word	1074036864
	.word	1073807372
	.word	1073807380
	.size	mockupTimerInit, .-mockupTimerInit
	.section	.text.fadeUpDown,"ax",%progbits
	.align	1
	.global	fadeUpDown
	.thumb
	.thumb_func
	.ascii	"fadeUpDown\000"
	.align	2
	.word	4278190092
	.type	fadeUpDown, %function
fadeUpDown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r1, .L26	@ tmp150,
	ldr	r3, .L26+4	@ tmp221,
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ fadeUp.8, fadeUp
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	cbz	r0, .L21	@ fadeUp.8,
	adds	r2, r2, #1	@ tmp154, counter,
	b	.L25	@
.L21:
	subs	r2, r2, #1	@ tmp160, counter,
.L25:
	strb	r2, [r3, #0]	@ counter.12, counter
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	ldr	r2, .L26+8	@ tmp166,
	strb	r4, [r2, #0]	@ counter, dmxChannels
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	ip, [r2, #1]	@ counter, dmxChannels
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	r4, [r2, #2]	@ counter, dmxChannels
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	ip, [r2, #3]	@ counter, dmxChannels
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	r4, [r2, #4]	@ counter, dmxChannels
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	ip, [r2, #5]	@ counter, dmxChannels
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	r4, [r2, #6]	@ counter, dmxChannels
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	strb	r4, [r2, #7]	@ counter, dmxChannels
	cbz	r0, .L23	@ fadeUp.8,
	ldr	r2, .L26+4	@ tmp163,
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ counter, counter
	cmp	r0, #255	@ counter,
	bne	.L23	@,
	movs	r0, #0	@ tmp207,
	strb	r0, [r1, #0]	@ tmp207, fadeUp
.L23:
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ fadeUp, fadeUp
	cbnz	r1, .L24	@ fadeUp,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ counter, counter
	cbnz	r3, .L24	@ counter,
	ldr	r0, .L26	@ tmp209,
	movs	r2, #1	@ tmp215,
	strb	r2, [r0, #0]	@ tmp215, fadeUp
.L24:
	ldr	r3, .L26+12	@ tmp217,
	movs	r1, #1	@ tmp218,
	strb	r1, [r3, #0]	@ tmp218, recalculateSendValues
	pop	{r4, pc}	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	dmxChannels
	.word	.LANCHOR3
	.size	fadeUpDown, .-fadeUpDown
	.section	.text.cylon,"ax",%progbits
	.align	1
	.global	cylon
	.thumb
	.thumb_func
	.ascii	"cylon\000"
	.align	2
	.word	4278190088
	.type	cylon, %function
cylon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r1, .L34	@ tmp146,
	ldr	r2, .L34+4	@ tmp147,
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ fadeInIndex.3, fadeInIndex
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp149, dmxChannels
	adds	r0, r4, #1	@ tmp150, tmp149,
	strb	r0, [r2, r3]	@ D.5328, dmxChannels
	ldr	r0, .L34+8	@ tmp153,
	ldrb	r4, [r0, #0]	@ zero_extendqisi2	@ D.5330, fadeOutIndex
	ldrb	r5, [r2, r4]	@ zero_extendqisi2	@ tmp156, dmxChannels
	subs	r5, r5, #1	@ tmp157, tmp156,
	strb	r5, [r2, r4]	@ D.5332, dmxChannels
	ldrb	r5, [r2, r3]	@ zero_extendqisi2	@ tmp162, dmxChannels
	cmp	r5, #255	@ tmp162,
	bne	.L29	@,
	ldr	r5, .L34+12	@ tmp163,
	ldrb	r6, [r5, #0]	@ zero_extendqisi2	@ cylonRight, cylonRight
	cbz	r6, .L30	@ cylonRight,
	cmp	r3, #7	@ fadeInIndex.3,
	bne	.L31	@,
	movs	r6, #0	@ tmp166,
	strb	r6, [r2, r4]	@ tmp166, dmxChannels
	movs	r2, #6	@ tmp169,
	strb	r2, [r1, #0]	@ tmp169, fadeInIndex
	strb	r3, [r0, #0]	@ fadeInIndex.3, fadeOutIndex
	strb	r6, [r5, #0]	@ tmp166, cylonRight
	b	.L29	@
.L31:
	strb	r3, [r0, #0]	@ fadeInIndex.3, fadeOutIndex
	adds	r3, r3, #1	@ tmp180, fadeInIndex.3,
	b	.L33	@
.L30:
	cbnz	r3, .L32	@ fadeInIndex.3,
	strb	r3, [r2, r4]	@ fadeInIndex.3, dmxChannels
	movs	r2, #1	@ tmp186,
	strb	r2, [r1, #0]	@ tmp186, fadeInIndex
	strb	r3, [r0, #0]	@ fadeInIndex.3, fadeOutIndex
	strb	r2, [r5, #0]	@ tmp186, cylonRight
	b	.L29	@
.L32:
	strb	r3, [r0, #0]	@ fadeInIndex.3, fadeOutIndex
	subs	r3, r3, #1	@ tmp197, fadeInIndex.3,
.L33:
	strb	r3, [r1, #0]	@ tmp197, fadeInIndex
.L29:
	ldr	r3, .L34+16	@ tmp199,
	movs	r1, #1	@ tmp200,
	strb	r1, [r3, #0]	@ tmp200, recalculateSendValues
	pop	{r4, r5, r6, pc}	@
.L35:
	.align	2
.L34:
	.word	.LANCHOR4
	.word	dmxChannels
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	.LANCHOR3
	.size	cylon, .-cylon
	.section	.text.TIMER16_1_IRQHandler,"ax",%progbits
	.align	1
	.global	TIMER16_1_IRQHandler
	.thumb
	.thumb_func
	.ascii	"TIMER16_1_IRQHandler\000"
	.align	2
	.word	4278190104
	.type	TIMER16_1_IRQHandler, %function
TIMER16_1_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L37	@ tmp136,
	ldr	r1, .L37+4	@ tmp134,
	movs	r3, #0	@ tmp137,
	movs	r0, #1	@ tmp135,
	str	r0, [r1, #0]	@ tmp135, MEM[(volatile long unsigned int *)1073807360B]
	str	r3, [r2, #0]	@ tmp137, MEM[(volatile long unsigned int *)1073807368B]
	str	r3, [r2, #8]	@ tmp137, MEM[(volatile long unsigned int *)1073807376B]
	b	cylon	@
.L38:
	.align	2
.L37:
	.word	1073807368
	.word	1073807360
	.size	TIMER16_1_IRQHandler, .-TIMER16_1_IRQHandler
	.section	.text.sspInit2,"ax",%progbits
	.align	1
	.global	sspInit2
	.thumb
	.thumb_func
	.ascii	"sspInit2\000"
	.align	2
	.word	4278190092
	.type	sspInit2, %function
sspInit2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r4, .L43	@ tmp163,
	mov	r6, r2	@ phase, phase
	ldr	r2, [r4, #0]	@ D.5287, MEM[(volatile long unsigned int *)1074036740B]
	mov	r7, r1	@ polarity, polarity
	bic	r0, r2, #1	@ D.5288, D.5287,
	str	r0, [r4, #0]	@ D.5288, MEM[(volatile long unsigned int *)1074036740B]
	ldr	r3, [r4, #0]	@ D.5289, MEM[(volatile long unsigned int *)1074036740B]
	orr	r1, r3, #1	@ D.5290, D.5289,
	str	r1, [r4, #0]	@ D.5290, MEM[(volatile long unsigned int *)1074036740B]
	ldr	r5, [r4, #124]	@ D.5292, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r5, #2048	@ D.5293, D.5292,
	str	r2, [r4, #124]	@ D.5293, MEM[(volatile long unsigned int *)1074036864B]
	movs	r2, #1	@ tmp170,
	str	r2, [r4, #144]	@ tmp170, MEM[(volatile long unsigned int *)1074036884B]
	ldr	r4, .L43+4	@ tmp171,
	ldr	r0, [r4, #0]	@ D.5296, MEM[(volatile long unsigned int *)1074020448B]
	bic	r3, r0, #7	@ D.5297, D.5296,
	str	r3, [r4, #0]	@ D.5297, MEM[(volatile long unsigned int *)1074020448B]
	ldr	r1, [r4, #0]	@ D.5298, MEM[(volatile long unsigned int *)1074020448B]
	orr	r5, r1, r2	@ D.5299, D.5298,
	str	r5, [r4, #0]	@ D.5299, MEM[(volatile long unsigned int *)1074020448B]
	ldr	r0, [r4, #4]	@ D.5301, MEM[(volatile long unsigned int *)1074020452B]
	bic	r3, r0, #7	@ D.5302, D.5301,
	str	r3, [r4, #4]	@ D.5302, MEM[(volatile long unsigned int *)1074020452B]
	ldr	r1, [r4, #4]	@ D.5303, MEM[(volatile long unsigned int *)1074020452B]
	orr	r5, r1, r2	@ D.5304, D.5303,
	str	r5, [r4, #4]	@ D.5304, MEM[(volatile long unsigned int *)1074020452B]
	movs	r1, #2	@ tmp182,
	movs	r5, #0	@ tmp180,
	str	r5, [r4, #80]	@ tmp180, MEM[(volatile long unsigned int *)1074020528B]
	str	r1, [r4, #8]	@ tmp182, MEM[(volatile long unsigned int *)1074020456B]
	ldr	r4, .L43+8	@ tmp183,
	ldr	r0, [r4, #0]	@ D.5308, MEM[(volatile long unsigned int *)1074020380B]
	bic	r3, r0, #7	@ D.5309, D.5308,
	str	r3, [r4, #0]	@ D.5309, MEM[(volatile long unsigned int *)1074020380B]
	ldr	r0, [r4, #0]	@ D.5310, MEM[(volatile long unsigned int *)1074020380B]
	str	r0, [r4, #0]	@ D.5310, MEM[(volatile long unsigned int *)1074020380B]
	mov	r0, r5	@, tmp180
	bl	gpioSetDir	@
	ldr	r3, .L43+12	@ tmp187,
	movw	r0, #4095	@ tmp188,
	str	r0, [r3, #0]	@ tmp188, MEM[(volatile long unsigned int *)1342177296B]
	mov	r1, r5	@, tmp180
	mov	r0, r4	@, tmp183
	bl	gpioSetPullup	@
	movw	r2, #327	@ tmp203,
	movw	r1, #263	@ tmp202,
	ldr	r0, .L43+16	@ tmp189,
	cmp	r7, #1	@ polarity,
	ite	ne	@
	movne	r7, r1	@, configReg, tmp202
	moveq	r7, r2	@, configReg, tmp203
	cmp	r6, #1	@ phase,
	it	eq
	orreq	r7, r7, #128	@ configReg, configReg,
	movs	r2, #2	@ tmp191,
	str	r7, [r0, #0]	@ configReg, MEM[(volatile long unsigned int *)1074003968B]
	str	r2, [r0, #16]	@ tmp191, MEM[(volatile long unsigned int *)1074003984B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	adds	r0, r0, #8	@ tmp192, tmp190,
	ldr	r3, [r0, #0]	@ D.5320, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r3, .L43+20	@ tmp200,
	str	r2, [r3, #0]	@ tmp191, MEM[(volatile long unsigned int *)1074003972B]
	pop	{r3, r4, r5, r6, r7, pc}	@
.L44:
	.align	2
.L43:
	.word	1074036740
	.word	1074020448
	.word	1074020380
	.word	1342177296
	.word	1074003968
	.word	1074003972
	.size	sspInit2, .-sspInit2
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.thumb
	.thumb_func
	.ascii	"main\000"
	.align	2
	.word	4278190088
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	systemInit	@
	ldr	r3, .L52	@ tmp143,
	ldr	r2, .L52+4	@ tmp140,
	ldr	r1, .L52+8	@ tmp144,
	movs	r4, #0	@ tmp141,
	str	r1, [r3, #0]	@ tmp144, p_sendValues
	strb	r4, [r2, #0]	@ tmp141, pwmCounter
	mov	r0, r4	@, tmp141
	mov	r1, r4	@, tmp141
	mov	r2, r4	@, tmp141
	bl	sspInit2	@
	ldr	r0, .L52+12	@ tmp145,
	movs	r2, #32	@ tmp146,
	strb	r2, [r0, #0]	@ tmp146, dmxChannels
	bl	calculateSendValues	@
	ldr	r3, .L52+16	@ tmp148,
	str	r4, [r3, #0]	@ tmp141, MEM[(volatile long unsigned int *)1074003976B]
.L46:
	ldr	r0, .L52+20	@ tmp150,
	ldr	r4, [r0, #0]	@ D.5265, MEM[(volatile long unsigned int *)1074003980B]
	ands	r2, r4, #16	@ tmp151, D.5265,
	bne	.L46	@,
	ldr	r4, .L52+24	@ tmp152,
	movw	r0, #4095	@ tmp153,
	str	r0, [r4, #0]	@ tmp153, MEM[(volatile long unsigned int *)1342177296B]
	str	r2, [r4, #0]	@ tmp151, MEM[(volatile long unsigned int *)1342177296B]
	str	r0, [r4, #0]	@ tmp153, MEM[(volatile long unsigned int *)1342177296B]
	str	r2, [r4, #0]	@ tmp151, MEM[(volatile long unsigned int *)1342177296B]
	mov	r0, #300	@,
	bl	systickDelay	@
	ldr	r3, .L52+16	@ tmp160,
	movs	r1, #255	@ tmp161,
	str	r1, [r3, #0]	@ tmp161, MEM[(volatile long unsigned int *)1074003976B]
.L47:
	ldr	r1, .L52+20	@ tmp162,
	ldr	r2, [r1, #0]	@ D.5267, MEM[(volatile long unsigned int *)1074003980B]
	ands	r2, r2, #16	@ tmp163, D.5267,
	bne	.L47	@,
	ldr	r3, .L52+24	@ tmp164,
	movw	r4, #4095	@ tmp165,
	str	r4, [r3, #0]	@ tmp165, MEM[(volatile long unsigned int *)1342177296B]
	mov	r0, #300	@,
	str	r2, [r3, #0]	@ tmp163, MEM[(volatile long unsigned int *)1342177296B]
	bl	systickDelay	@
	bl	timerInit	@
	bl	mockupTimerInit	@
.L49:
	ldr	r4, .L52+28	@ tmp168,
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ recalculateSendValues, recalculateSendValues
	cbz	r0, .L48	@ recalculateSendValues,
	bl	calculateSendValues	@
	movs	r2, #0	@ tmp171,
	strb	r2, [r4, #0]	@ tmp171, recalculateSendValues
.L48:
	bl	cmdPoll	@
	b	.L49	@
.L53:
	.align	2
.L52:
	.word	p_sendValues
	.word	pwmCounter
	.word	sendValues
	.word	dmxChannels
	.word	1074003976
	.word	1074003980
	.word	1342177296
	.word	.LANCHOR3
	.size	main, .-main
	.global	fadeOutIndex
	.global	fadeInIndex
	.global	cylonRight
	.global	recalculateSendValues
	.global	fadeUp
	.comm	p_sendValues,4,4
	.comm	sendValues,1020,4
	.comm	toSend,4,4
	.comm	pwmCounter,1,1
	.global	counter
	.comm	dmxChannels,8,1
	.global	logValues
	.section	.data.cylonRight,"aw",%progbits
	.set	.LANCHOR6,. + 0
	.type	cylonRight, %object
	.size	cylonRight, 1
cylonRight:
	.byte	1
	.section	.bss.recalculateSendValues,"aw",%nobits
	.set	.LANCHOR3,. + 0
	.type	recalculateSendValues, %object
	.size	recalculateSendValues, 1
recalculateSendValues:
	.space	1
	.section	.data.fadeInIndex,"aw",%progbits
	.set	.LANCHOR4,. + 0
	.type	fadeInIndex, %object
	.size	fadeInIndex, 1
fadeInIndex:
	.byte	1
	.section	.rodata.logValues,"a",%progbits
	.set	.LANCHOR0,. + 0
	.type	logValues, %object
	.size	logValues, 256
logValues:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	18
	.byte	18
	.byte	19
	.byte	19
	.byte	20
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.byte	23
	.byte	23
	.byte	24
	.byte	25
	.byte	25
	.byte	26
	.byte	27
	.byte	27
	.byte	28
	.byte	29
	.byte	29
	.byte	30
	.byte	31
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	87
	.byte	88
	.byte	89
	.byte	91
	.byte	92
	.byte	93
	.byte	95
	.byte	96
	.byte	98
	.byte	99
	.byte	100
	.byte	102
	.byte	103
	.byte	105
	.byte	106
	.byte	108
	.byte	109
	.byte	111
	.byte	112
	.byte	114
	.byte	115
	.byte	117
	.byte	119
	.byte	120
	.byte	122
	.byte	123
	.byte	125
	.byte	127
	.byte	-128
	.byte	-126
	.byte	-124
	.byte	-123
	.byte	-121
	.byte	-119
	.byte	-118
	.byte	-116
	.byte	-114
	.byte	-112
	.byte	-111
	.byte	-109
	.byte	-107
	.byte	-105
	.byte	-103
	.byte	-101
	.byte	-100
	.byte	-98
	.byte	-96
	.byte	-94
	.byte	-92
	.byte	-90
	.byte	-88
	.byte	-86
	.byte	-84
	.byte	-82
	.byte	-80
	.byte	-78
	.byte	-76
	.byte	-74
	.byte	-72
	.byte	-70
	.byte	-68
	.byte	-66
	.byte	-64
	.byte	-62
	.byte	-59
	.byte	-57
	.byte	-55
	.byte	-53
	.byte	-51
	.byte	-49
	.byte	-46
	.byte	-44
	.byte	-42
	.byte	-40
	.byte	-37
	.byte	-35
	.byte	-33
	.byte	-30
	.byte	-28
	.byte	-26
	.byte	-23
	.byte	-21
	.byte	-19
	.byte	-16
	.byte	-14
	.byte	-11
	.byte	-9
	.byte	-6
	.byte	-4
	.byte	-2
	.section	.bss.fadeOutIndex,"aw",%nobits
	.set	.LANCHOR5,. + 0
	.type	fadeOutIndex, %object
	.size	fadeOutIndex, 1
fadeOutIndex:
	.space	1
	.section	.data.fadeUp,"aw",%progbits
	.set	.LANCHOR1,. + 0
	.type	fadeUp, %object
	.size	fadeUp, 1
fadeUp:
	.byte	1
	.section	.bss.counter,"aw",%nobits
	.set	.LANCHOR2,. + 0
	.type	counter, %object
	.size	counter, 1
counter:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
