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
	.file	"adc.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed adc.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip adc.o -Os -Wall -ffunction-sections
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

	.section	.text.adcInit,"ax",%progbits
	.align	1
	.global	adcInit
	.thumb
	.thumb_func
	.ascii	"adcInit\000"
	.align	2
	.word	4278190088
	.type	adcInit, %function
adcInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L2	@ tmp155,
	ldr	r3, [r0, #0]	@ D.4572, MEM[(volatile long unsigned int *)1074037304B]
	bic	r1, r3, #16	@ D.4573, D.4572,
	ldr	r3, .L2+4	@ tmp157,
	str	r1, [r0, #0]	@ D.4573, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r2, [r3, #0]	@ D.4575, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r2, #8192	@ D.4576, D.4575,
	str	r0, [r3, #0]	@ D.4576, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r0, .L2+8	@ tmp159,
	ldr	r1, [r0, #0]	@ D.4578, MEM[(volatile long unsigned int *)1074020468B]
	bic	r3, r1, #159	@ D.4579, D.4578,
	str	r3, [r0, #0]	@ D.4579, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r2, [r0, #0]	@ D.4580, MEM[(volatile long unsigned int *)1074020468B]
	str	r2, [r0, #0]	@ D.4580, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r1, [r0, #4]	@ D.4582, MEM[(volatile long unsigned int *)1074020472B]
	bic	r3, r1, #159	@ D.4583, D.4582,
	str	r3, [r0, #4]	@ D.4583, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r2, [r0, #4]	@ D.4584, MEM[(volatile long unsigned int *)1074020472B]
	str	r2, [r0, #4]	@ D.4584, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r1, [r0, #8]	@ D.4586, MEM[(volatile long unsigned int *)1074020476B]
	bic	r3, r1, #159	@ D.4587, D.4586,
	str	r3, [r0, #8]	@ D.4587, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r2, [r0, #8]	@ D.4588, MEM[(volatile long unsigned int *)1074020476B]
	str	r2, [r0, #8]	@ D.4588, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r1, [r0, #12]	@ D.4590, MEM[(volatile long unsigned int *)1074020480B]
	bic	r3, r1, #159	@ D.4591, D.4590,
	str	r3, [r0, #12]	@ D.4591, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r2, [r0, #12]	@ D.4592, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r1, .L2+12	@ tmp175,
	str	r2, [r0, #12]	@ D.4592, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r3, [r1, #0]	@ D.4595, MEM[(volatile long unsigned int *)1074036856B]
	movs	r0, #72	@ tmp178,
	udiv	r2, r0, r3	@ tmp177, tmp178, D.4595
	subs	r1, r2, #1	@ tmp179, tmp177,
	lsls	r0, r1, #8	@ tmp180, tmp179,
	ldr	r3, .L2+16	@ tmp181,
	orr	r2, r0, #1	@ D.4599, tmp180,
	str	r2, [r3, #0]	@ D.4599, MEM[(volatile long unsigned int *)1073856512B]
	ldr	r1, .L2+20	@ tmp182,
	ldr	r3, .L2+24	@ tmp185,
	movs	r0, #1	@ tmp183,
	movs	r2, #0	@ tmp186,
	strb	r0, [r1, #0]	@ tmp183, _adcInitialised
	strb	r2, [r3, #0]	@ tmp186, _adcLastChannel
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	1074037304
	.word	1074036864
	.word	1074020468
	.word	1074036856
	.word	1073856512
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	adcInit, .-adcInit
	.section	.text.adcReadSingle,"ax",%progbits
	.align	1
	.global	adcReadSingle
	.thumb
	.thumb_func
	.ascii	"adcReadSingle\000"
	.align	2
	.word	4278190096
	.type	adcReadSingle, %function
adcReadSingle:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ channelNum, channelNum
	ldr	r0, .L23	@ tmp154,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _adcInitialised, _adcInitialised
	cbnz	r3, .L5	@ _adcInitialised,
	bl	adcInit	@
.L5:
	ldr	r3, .L23+4	@ tmp156,
	cmp	r4, #7	@ channelNum,
	ite	ls	@
	movls	r0, r4	@, channelNum, channelNum
	movhi	r0, #0	@, channelNum,
	ldr	r1, [r3, #0]	@ D.4623, MEM[(volatile long unsigned int *)1073856512B]
	bic	r2, r1, #255	@ D.4624, D.4623,
	str	r2, [r3, #0]	@ D.4624, MEM[(volatile long unsigned int *)1073856512B]
	movs	r2, #1	@ tmp161,
	lsl	ip, r2, r0	@ tmp160, tmp161, channelNum
	ldr	r1, [r3, #0]	@ D.4625, MEM[(volatile long unsigned int *)1073856512B]
	orr	r1, r1, #16777216	@ tmp159, D.4625,
	orr	r2, r1, ip	@ D.4630, tmp159, tmp160
	str	r2, [r3, #0]	@ D.4630, MEM[(volatile long unsigned int *)1073856512B]
.L17:
	subs	r3, r0, #1	@ tmp163, channelNum,
	cmp	r3, #6	@ tmp163,
	bhi	.L7	@
	tbb	[pc, r3]	@ tmp163
.L15:
	.byte	(.L8-.L15)/2
	.byte	(.L9-.L15)/2
	.byte	(.L10-.L15)/2
	.byte	(.L11-.L15)/2
	.byte	(.L12-.L15)/2
	.byte	(.L13-.L15)/2
	.byte	(.L14-.L15)/2
	.align	1
.L7:
	ldr	r3, .L23+8	@ tmp164,
	b	.L22	@
.L8:
	ldr	r3, .L23+12	@ tmp165,
	b	.L22	@
.L9:
	ldr	r3, .L23+16	@ tmp166,
	b	.L22	@
.L10:
	ldr	r3, .L23+20	@ tmp167,
	b	.L22	@
.L11:
	ldr	r3, .L23+24	@ tmp168,
	b	.L22	@
.L12:
	ldr	r3, .L23+28	@ tmp169,
	b	.L22	@
.L13:
	ldr	r3, .L23+32	@ tmp170,
	b	.L22	@
.L14:
	ldr	r3, .L23+36	@ tmp171,
.L22:
	ldr	r3, [r3, #0]	@ regVal,
	cmp	r3, #0	@ regVal,
	bge	.L17	@,
	ldr	r2, .L23+4	@ tmp172,
	ldr	r1, [r2, #0]	@ D.4641, MEM[(volatile long unsigned int *)1073856512B]
	bic	r0, r1, #117440512	@ D.4642, D.4641,
	str	r0, [r2, #0]	@ D.4642, MEM[(volatile long unsigned int *)1073856512B]
	lsls	r2, r3, #1	@, regVal,
	bmi	.L20	@,
	lsrs	r0, r3, #6	@ tmp175, regVal,
	lsls	r3, r0, #22	@ adcData, tmp175,
	lsrs	r0, r3, #22	@ adcData, adcData,
	pop	{r4, pc}	@
.L20:
	movs	r0, #0	@ adcData,
	pop	{r4, pc}	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	1073856512
	.word	1073856528
	.word	1073856532
	.word	1073856536
	.word	1073856540
	.word	1073856544
	.word	1073856548
	.word	1073856552
	.word	1073856556
	.size	adcReadSingle, .-adcReadSingle
	.section	.text.adcReadOversampled,"ax",%progbits
	.align	1
	.global	adcReadOversampled
	.thumb
	.thumb_func
	.ascii	"adcReadOversampled\000"
	.align	2
	.word	4278190100
	.type	adcReadOversampled, %function
adcReadOversampled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	lsls	r3, r1, #1	@ tmp150, D.4608,
	mov	r4, r0	@ channelNum, channelNum
	movs	r5, #0	@ adcOversampled,
	movs	r0, #1	@ tmp151,
	mov	r7, r1	@ D.4608, extraBits
	lsl	r8, r0, r3	@ sampleCount, tmp151, tmp150
	mov	r6, r5	@ i, adcOversampled
	b	.L26	@
.L27:
	mov	r0, r4	@, channelNum
	bl	adcReadSingle	@
	adds	r6, r6, #1	@ tmp153, i,
	uxth	r1, r0	@ D.4611,
	adds	r5, r5, r1	@ adcOversampled, adcOversampled, D.4611
	uxth	r6, r6	@ i, tmp153
.L26:
	cmp	r6, r8	@ i, sampleCount
	bcc	.L27	@,
	lsr	r0, r5, r7	@, adcOversampled, D.4608
	pop	{r4, r5, r6, r7, r8, pc}	@
	.size	adcReadOversampled, .-adcReadOversampled
	.section	.text.adcRead,"ax",%progbits
	.align	1
	.global	adcRead
	.thumb
	.thumb_func
	.ascii	"adcRead\000"
	.align	2
	.word	4278190088
	.type	adcRead, %function
adcRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r0	@ channelNum, channelNum
	ldr	r0, .L32	@ tmp141,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _adcInitialised, _adcInitialised
	cbnz	r3, .L29	@ _adcInitialised,
	bl	adcInit	@
.L29:
	movs	r5, #5	@ ivtmp.19,
	movs	r4, #0	@ adcTotal,
.L30:
	mov	r0, r6	@, channelNum
	bl	adcReadSingle	@
	subs	r5, r5, #1	@ ivtmp.19, ivtmp.19,
	add	r4, r4, r0	@ adcTotal, adcTotal,
	bne	.L30	@,
	movs	r1, #5	@ tmp144,
	udiv	r0, r4, r1	@, adcTotal, tmp144
	pop	{r4, r5, r6, pc}	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	adcRead, .-adcRead
	.section	.bss._adcInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_adcInitialised, %object
	.size	_adcInitialised, 1
_adcInitialised:
	.space	1
	.section	.bss._adcLastChannel,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	_adcLastChannel, %object
	.size	_adcLastChannel, 1
_adcLastChannel:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
