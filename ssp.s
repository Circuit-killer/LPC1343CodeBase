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
	.file	"ssp.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ssp.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ssp.o -Os -Wall -ffunction-sections
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

	.section	.text.sspInit,"ax",%progbits
	.align	1
	.global	sspInit
	.thumb
	.thumb_func
	.ascii	"sspInit\000"
	.align	2
	.word	4278190088
	.type	sspInit, %function
sspInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r5, r0	@ portNum, portNum
	mov	r7, r1	@ polarity, polarity
	mov	r6, r2	@ phase, phase
	bl	gpioInit	@
	cmp	r5, #0	@ portNum
	bne	.L1	@
	ldr	r0, .L6	@ tmp163,
	ldr	r3, [r0, #0]	@ D.4674, MEM[(volatile long unsigned int *)1074036740B]
	bic	r2, r3, #1	@ D.4675, D.4674,
	str	r2, [r0, #0]	@ D.4675, MEM[(volatile long unsigned int *)1074036740B]
	ldr	r1, [r0, #0]	@ D.4676, MEM[(volatile long unsigned int *)1074036740B]
	orr	r4, r1, #1	@ D.4677, D.4676,
	str	r4, [r0, #0]	@ D.4677, MEM[(volatile long unsigned int *)1074036740B]
	ldr	r3, [r0, #124]	@ D.4679, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r3, #2048	@ D.4680, D.4679,
	str	r2, [r0, #124]	@ D.4680, MEM[(volatile long unsigned int *)1074036864B]
	movs	r2, #1	@ tmp170,
	str	r2, [r0, #144]	@ tmp170, MEM[(volatile long unsigned int *)1074036884B]
	ldr	r0, .L6+4	@ tmp171,
	ldr	r1, [r0, #0]	@ D.4683, MEM[(volatile long unsigned int *)1074020448B]
	bic	r4, r1, #7	@ D.4684, D.4683,
	str	r4, [r0, #0]	@ D.4684, MEM[(volatile long unsigned int *)1074020448B]
	ldr	r3, [r0, #0]	@ D.4685, MEM[(volatile long unsigned int *)1074020448B]
	orr	r1, r3, r2	@ D.4686, D.4685,
	str	r1, [r0, #0]	@ D.4686, MEM[(volatile long unsigned int *)1074020448B]
	ldr	r4, [r0, #4]	@ D.4688, MEM[(volatile long unsigned int *)1074020452B]
	bic	r3, r4, #7	@ D.4689, D.4688,
	str	r3, [r0, #4]	@ D.4689, MEM[(volatile long unsigned int *)1074020452B]
	ldr	r1, [r0, #4]	@ D.4690, MEM[(volatile long unsigned int *)1074020452B]
	orr	r4, r1, r2	@ D.4691, D.4690,
	str	r4, [r0, #4]	@ D.4691, MEM[(volatile long unsigned int *)1074020452B]
	ldr	r4, .L6+8	@ tmp179,
	ldr	r3, [r4, #0]	@ D.4693, MEM[(volatile long unsigned int *)1074020380B]
	bic	r1, r3, #7	@ D.4694, D.4693,
	str	r1, [r4, #0]	@ D.4694, MEM[(volatile long unsigned int *)1074020380B]
	ldr	r0, [r4, #0]	@ D.4695, MEM[(volatile long unsigned int *)1074020380B]
	movs	r1, #2	@,
	str	r0, [r4, #0]	@ D.4695, MEM[(volatile long unsigned int *)1074020380B]
	mov	r0, r5	@, portNum
	bl	gpioSetDir	@
	ldr	r3, .L6+12	@ tmp183,
	movw	r1, #4095	@ tmp184,
	str	r1, [r3, #0]	@ tmp184, MEM[(volatile long unsigned int *)1342177296B]
	mov	r0, r4	@, tmp179
	mov	r1, r5	@, portNum
	bl	gpioSetPullup	@
	movw	r2, #2119	@ tmp203,
	movw	ip, #2055	@ tmp202,
	ldr	r0, .L6+16	@ tmp185,
	cmp	r7, #1	@ polarity,
	ite	ne	@
	movne	r7, ip	@, configReg, tmp202
	moveq	r7, r2	@, configReg, tmp203
	cmp	r6, #1	@ phase,
	it	eq
	orreq	r7, r7, #128	@ configReg, configReg,
	movs	r2, #2	@ tmp187,
	str	r7, [r0, #0]	@ configReg, MEM[(volatile long unsigned int *)1074003968B]
	str	r2, [r0, #16]	@ tmp187, MEM[(volatile long unsigned int *)1074003984B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r1, [r0, #8]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	adds	r0, r0, #8	@ tmp188, tmp186,
	ldr	r3, [r0, #0]	@ D.4705, MEM[(volatile long unsigned int *)1074003976B]
	ldr	r3, .L6+20	@ tmp196,
	mov	r0, #8192	@ tmp197,
	str	r0, [r3, #4]	@ tmp197, MEM[(struct NVIC_Type *)3758153984B].ISER
	ldr	r3, .L6+24	@ tmp198,
	movs	r1, #3	@ tmp199,
	str	r1, [r3, #0]	@ tmp199, MEM[(volatile long unsigned int *)1074003988B]
	str	r2, [r3, #-16]	@ tmp187, MEM[(volatile long unsigned int *)1074003972B]
.L1:
	pop	{r3, r4, r5, r6, r7, pc}	@
.L7:
	.align	2
.L6:
	.word	1074036740
	.word	1074020448
	.word	1074020380
	.word	1342177296
	.word	1074003968
	.word	-536813312
	.word	1074003988
	.size	sspInit, .-sspInit
	.section	.text.sspSend,"ax",%progbits
	.align	1
	.global	sspSend
	.thumb
	.thumb_func
	.ascii	"sspSend\000"
	.align	2
	.word	4278190088
	.type	sspSend, %function
sspSend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cbz	r0, .L9	@ portNum,
	pop	{r4, pc}	@
.L14:
	ldr	r3, .L17	@ tmp171,
	ldr	r4, [r3, #0]	@ D.4662, MEM[(volatile long unsigned int *)1074003980B]
	and	r3, r4, #18	@ tmp172, D.4662,
	cmp	r3, #2	@ tmp172,
	bne	.L14	@,
	ldrb	r4, [r1, r0]	@ zero_extendqisi2	@ D.4666, MEM[base: buf_7(D), index: i_2, offset: 0B]
	ldr	r3, .L17+4	@ tmp173,
	str	r4, [r3, #0]	@ D.4666, MEM[(volatile long unsigned int *)1074003976B]
.L12:
	ldr	r3, .L17	@ tmp174,
	ldr	r3, [r3, #0]	@ D.4667, MEM[(volatile long unsigned int *)1074003980B]
	and	ip, r3, #20	@ tmp175, D.4667,
	cmp	ip, #4	@ tmp175,
	bne	.L12	@,
	ldr	r3, .L17+4	@ tmp176,
	adds	r0, r0, #1	@ i, i,
	ldr	r3, [r3, #0]	@ D.4669, MEM[(volatile long unsigned int *)1074003976B]
.L9:
	cmp	r0, r2	@ i, length
	bne	.L14	@,
	pop	{r4, pc}	@
.L18:
	.align	2
.L17:
	.word	1074003980
	.word	1074003976
	.size	sspSend, .-sspSend
	.section	.text.sspReceive,"ax",%progbits
	.align	1
	.global	sspReceive
	.thumb
	.thumb_func
	.ascii	"sspReceive\000"
	.align	2
	.word	4278190092
	.type	sspReceive, %function
sspReceive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cbz	r0, .L20	@ portNum,
	pop	{r4, pc}	@
.L23:
	ldr	r3, .L26	@ tmp142,
	movs	r4, #255	@ tmp143,
	str	r4, [r3, #0]	@ tmp143, MEM[(volatile long unsigned int *)1074003976B]
.L22:
	ldr	r3, .L26+4	@ tmp144,
	ldr	r3, [r3, #0]	@ D.4654, MEM[(volatile long unsigned int *)1074003980B]
	and	ip, r3, #20	@ tmp145, D.4654,
	cmp	ip, #4	@ tmp145,
	bne	.L22	@,
	ldr	r3, .L26	@ tmp146,
	ldr	r3, [r3, #0]	@ D.4656, MEM[(volatile long unsigned int *)1074003976B]
	strb	r3, [r1, r0]	@ D.4656, MEM[base: buf_5(D), index: i_2, offset: 0B]
	adds	r0, r0, #1	@ i, i,
.L20:
	cmp	r0, r2	@ i, length
	bne	.L23	@,
	pop	{r4, pc}	@
.L27:
	.align	2
.L26:
	.word	1074003976
	.word	1074003980
	.size	sspReceive, .-sspReceive
	.global	interruptRxTimeoutStat
	.global	interruptOverRunStat
	.global	interruptRxStat
	.section	.bss.interruptRxTimeoutStat,"aw",%nobits
	.align	2
	.type	interruptRxTimeoutStat, %object
	.size	interruptRxTimeoutStat, 4
interruptRxTimeoutStat:
	.space	4
	.section	.bss.interruptRxStat,"aw",%nobits
	.align	2
	.type	interruptRxStat, %object
	.size	interruptRxStat, 4
interruptRxStat:
	.space	4
	.section	.bss.interruptOverRunStat,"aw",%nobits
	.align	2
	.type	interruptOverRunStat, %object
	.size	interruptOverRunStat, 4
interruptOverRunStat:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
