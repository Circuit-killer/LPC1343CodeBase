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
	.file	"timer16.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed timer16.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip timer16.o -Os -Wall
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
	lsrs	r2, r0, #5	@ D.4596, IRQn,
	and	r1, r0, #31	@ tmp143, IRQn,
	movs	r0, #1	@ tmp144,
	lsl	r0, r0, r1	@ D.4601, tmp144, tmp143
	ldr	r3, .L2	@ tmp145,
	str	r0, [r3, r2, lsl #2]	@ D.4601, MEM[(struct NVIC_Type *)3758153984B].ISER
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	-536813312
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.timer16DelayTicks,"ax",%progbits
	.align	1
	.global	timer16DelayTicks
	.thumb
	.thumb_func
	.ascii	"timer16DelayTicks\000"
	.align	2
	.word	4278190100
	.type	timer16DelayTicks, %function
timer16DelayTicks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cbnz	r0, .L5	@ timerNum,
	ldr	r3, .L11	@ tmp144,
	movs	r2, #2	@ tmp145,
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1073790980B]
	ldr	r2, .L11+4	@ tmp146,
	str	r0, [r2, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073790988B]
	str	r1, [r2, #12]	@ delayInTicks, MEM[(volatile long unsigned int *)1073791000B]
	movs	r0, #31	@ tmp150,
	movs	r1, #4	@ tmp152,
	str	r0, [r2, #-12]	@ tmp150, MEM[(volatile long unsigned int *)1073790976B]
	str	r1, [r2, #8]	@ tmp152, MEM[(volatile long unsigned int *)1073790996B]
	movs	r2, #1	@ tmp154,
	str	r2, [r3, #0]	@ tmp154, MEM[(volatile long unsigned int *)1073790980B]
.L6:
	ldr	r1, .L11	@ tmp155,
	ldr	r3, [r1, #0]	@ D.4666, MEM[(volatile long unsigned int *)1073790980B]
	lsls	r2, r3, #31	@, D.4666,
	bmi	.L6	@,
	pop	{r4, pc}	@
.L5:
	cmp	r0, #1	@ timerNum,
	bne	.L4	@,
	ldr	r3, .L11+8	@ tmp157,
	ldr	r2, .L11+12	@ tmp159,
	movs	r4, #2	@ tmp158,
	str	r4, [r3, #0]	@ tmp158, MEM[(volatile long unsigned int *)1073807364B]
	movs	r4, #0	@ tmp160,
	str	r4, [r2, #0]	@ tmp160, MEM[(volatile long unsigned int *)1073807372B]
	str	r1, [r2, #12]	@ delayInTicks, MEM[(volatile long unsigned int *)1073807384B]
	movs	r1, #31	@ tmp163,
	str	r1, [r2, #-12]	@ tmp163, MEM[(volatile long unsigned int *)1073807360B]
	movs	r1, #4	@ tmp165,
	str	r1, [r2, #8]	@ tmp165, MEM[(volatile long unsigned int *)1073807380B]
	str	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073807364B]
.L8:
	ldr	r3, .L11+8	@ tmp168,
	ldr	r0, [r3, #0]	@ D.4678, MEM[(volatile long unsigned int *)1073807364B]
	lsls	r3, r0, #31	@, D.4678,
	bmi	.L8	@,
.L4:
	pop	{r4, pc}	@
.L12:
	.align	2
.L11:
	.word	1073790980
	.word	1073790988
	.word	1073807364
	.word	1073807372
	.size	timer16DelayTicks, .-timer16DelayTicks
	.section	.text.timer16DelayUS,"ax",%progbits
	.align	1
	.global	timer16DelayUS
	.thumb
	.thumb_func
	.ascii	"timer16DelayUS\000"
	.align	2
	.word	4278190096
	.type	timer16DelayUS, %function
timer16DelayUS:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cbnz	r0, .L14	@ timerNum,
	ldr	r3, .L20	@ tmp150,
	movs	r2, #2	@ tmp151,
	str	r2, [r3, #0]	@ tmp151, MEM[(volatile long unsigned int *)1073790980B]
	ldr	r2, .L20+4	@ tmp152,
	str	r0, [r2, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073790988B]
	ldr	r2, .L20+8	@ tmp154,
	movs	r0, #72	@ tmp157,
	ldr	r2, [r2, #0]	@ D.4633, MEM[(volatile long unsigned int *)1074036856B]
	udiv	r0, r0, r2	@ tmp156, tmp157, D.4633
	muls	r1, r0, r1	@ D.4635, tmp156
	ldr	r0, .L20+12	@ tmp158,
	movs	r2, #31	@ tmp160,
	str	r1, [r0, #0]	@ D.4635, MEM[(volatile long unsigned int *)1073791000B]
	str	r2, [r0, #-24]	@ tmp160, MEM[(volatile long unsigned int *)1073790976B]
	movs	r1, #4	@ tmp162,
	movs	r2, #1	@ tmp164,
	str	r1, [r0, #-4]	@ tmp162, MEM[(volatile long unsigned int *)1073790996B]
	str	r2, [r3, #0]	@ tmp164, MEM[(volatile long unsigned int *)1073790980B]
.L15:
	ldr	r1, .L20	@ tmp165,
	ldr	r3, [r1, #0]	@ D.4638, MEM[(volatile long unsigned int *)1073790980B]
	lsls	r0, r3, #31	@, D.4638,
	bmi	.L15	@,
	pop	{r4, pc}	@
.L14:
	cmp	r0, #1	@ timerNum,
	bne	.L13	@,
	ldr	r3, .L20+16	@ tmp167,
	movs	r2, #2	@ tmp168,
	str	r2, [r3, #0]	@ tmp168, MEM[(volatile long unsigned int *)1073807364B]
	ldr	r2, .L20+20	@ tmp169,
	movs	r4, #0	@ tmp170,
	str	r4, [r2, #0]	@ tmp170, MEM[(volatile long unsigned int *)1073807372B]
	ldr	r4, .L20+8	@ tmp171,
	ldr	r2, [r4, #0]	@ D.4648, MEM[(volatile long unsigned int *)1074036856B]
	movs	r4, #72	@ tmp174,
	udiv	r2, r4, r2	@ tmp173, tmp174, D.4648
	muls	r1, r2, r1	@ D.4650, tmp173
	ldr	r2, .L20+24	@ tmp175,
	str	r1, [r2, #0]	@ D.4650, MEM[(volatile long unsigned int *)1073807384B]
	movs	r1, #31	@ tmp177,
	str	r1, [r2, #-24]	@ tmp177, MEM[(volatile long unsigned int *)1073807360B]
	movs	r1, #4	@ tmp179,
	str	r1, [r2, #-4]	@ tmp179, MEM[(volatile long unsigned int *)1073807380B]
	str	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073807364B]
.L17:
	ldr	r3, .L20+16	@ tmp182,
	ldr	r0, [r3, #0]	@ D.4653, MEM[(volatile long unsigned int *)1073807364B]
	lsls	r1, r0, #31	@, D.4653,
	bmi	.L17	@,
.L13:
	pop	{r4, pc}	@
.L21:
	.align	2
.L20:
	.word	1073790980
	.word	1073790988
	.word	1074036856
	.word	1073791000
	.word	1073807364
	.word	1073807372
	.word	1073807384
	.size	timer16DelayUS, .-timer16DelayUS
	.section	.text.timer16Enable,"ax",%progbits
	.align	1
	.global	timer16Enable
	.thumb
	.thumb_func
	.ascii	"timer16Enable\000"
	.align	2
	.word	4278190096
	.type	timer16Enable, %function
timer16Enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L23	@ timerNum,
	ldr	r3, .L25	@ tmp135,
	movs	r2, #1	@ tmp136,
	str	r2, [r3, #0]	@ tmp136, MEM[(volatile long unsigned int *)1073790980B]
	bx	lr	@
.L23:
	cmp	r0, #1	@ timerNum,
	itt	eq
	ldreq	r3, .L25+4	@ tmp137,
	streq	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073807364B]
	bx	lr	@
.L26:
	.align	2
.L25:
	.word	1073790980
	.word	1073807364
	.size	timer16Enable, .-timer16Enable
	.section	.text.timer16Disable,"ax",%progbits
	.align	1
	.global	timer16Disable
	.thumb
	.thumb_func
	.ascii	"timer16Disable\000"
	.align	2
	.word	4278190096
	.type	timer16Disable, %function
timer16Disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L28	@ timerNum,
	ldr	r3, .L30	@ tmp135,
	str	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073790980B]
	bx	lr	@
.L28:
	cmp	r0, #1	@ timerNum,
	bne	.L27	@,
	ldr	r0, .L30+4	@ tmp137,
	movs	r2, #0	@ tmp138,
	str	r2, [r0, #0]	@ tmp138, MEM[(volatile long unsigned int *)1073807364B]
.L27:
	bx	lr	@
.L31:
	.align	2
.L30:
	.word	1073790980
	.word	1073807364
	.size	timer16Disable, .-timer16Disable
	.section	.text.timer16Reset,"ax",%progbits
	.align	1
	.global	timer16Reset
	.thumb
	.thumb_func
	.ascii	"timer16Reset\000"
	.align	2
	.word	4278190096
	.type	timer16Reset, %function
timer16Reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L33	@ timerNum,
	ldr	r3, .L35	@ tmp139,
	ldr	r0, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073790980B]
	orr	r2, r0, #2	@ regVal, regVal,
	str	r2, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073790980B]
	bx	lr	@
.L33:
	cmp	r0, #1	@ timerNum,
	bne	.L32	@,
	ldr	r3, .L35+4	@ tmp141,
	ldr	r2, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073807364B]
	orr	r1, r2, #2	@ regVal, regVal,
	str	r1, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073807364B]
.L32:
	bx	lr	@
.L36:
	.align	2
.L35:
	.word	1073790980
	.word	1073807364
	.size	timer16Reset, .-timer16Reset
	.section	.text.timer16Init,"ax",%progbits
	.align	1
	.global	timer16Init
	.thumb
	.thumb_func
	.ascii	"timer16Init\000"
	.align	2
	.word	4278190092
	.type	timer16Init, %function
timer16Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #65535	@ tmp156,
	cmp	r1, #0	@ timerInterval,
	it	eq	@
	moveq	r1, r3	@, timerInterval, tmp156
	cbnz	r0, .L39	@ timerNum,
	ldr	r3, .L43	@ tmp142,
	ldr	r2, [r3, #0]	@ D.4581, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r2, #128	@ D.4582, D.4581,
	str	r2, [r3, #0]	@ D.4582, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r3, .L43+4	@ tmp144,
	movs	r2, #3	@ tmp148,
	str	r0, [r3, #0]	@ timerNum, timer16_0_counter
	ldr	r0, .L43+8	@ tmp146,
	str	r1, [r0, #0]	@ timerInterval, MEM[(volatile long unsigned int *)1073791000B]
	str	r2, [r0, #-4]	@ tmp148, MEM[(volatile long unsigned int *)1073790996B]
	movs	r0, #41	@,
	b	.L42	@
.L39:
	cmp	r0, #1	@ timerNum,
	bne	.L37	@,
	ldr	r3, .L43	@ tmp149,
	ldr	r2, [r3, #0]	@ D.4589, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r2, #256	@ D.4590, D.4589,
	str	r0, [r3, #0]	@ D.4590, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r0, .L43+12	@ tmp153,
	ldr	r3, .L43+16	@ tmp151,
	movs	r2, #0	@ tmp152,
	str	r2, [r3, #0]	@ tmp152, timer16_1_counter
	str	r1, [r0, #0]	@ timerInterval, MEM[(volatile long unsigned int *)1073807384B]
	movs	r1, #3	@ tmp155,
	str	r1, [r0, #-4]	@ tmp155, MEM[(volatile long unsigned int *)1073807380B]
	movs	r0, #42	@,
.L42:
	b	NVIC_EnableIRQ	@
.L37:
	bx	lr	@
.L44:
	.align	2
.L43:
	.word	1074036864
	.word	.LANCHOR0
	.word	1073791000
	.word	1073807384
	.word	.LANCHOR1
	.size	timer16Init, .-timer16Init
	.global	timer16_1_counter
	.global	timer16_0_counter
	.section	.bss.timer16_0_counter,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timer16_0_counter, %object
	.size	timer16_0_counter, 4
timer16_0_counter:
	.space	4
	.section	.bss.timer16_1_counter,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	timer16_1_counter, %object
	.size	timer16_1_counter, 4
timer16_1_counter:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
