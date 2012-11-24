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
	.file	"systick.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed systick.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip systick.o -Os -Wall
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

	.section	.text.SysTick_Handler,"ax",%progbits
	.align	1
	.global	SysTick_Handler
	.thumb
	.thumb_func
	.ascii	"SysTick_Handler\000"
	.align	2
	.word	4278190096
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L3	@ tmp139,
	ldr	r1, [r0, #0]	@ systickTicks.3, systickTicks
	adds	r2, r1, #1	@ systickTicks.4, systickTicks.3,
	str	r2, [r0, #0]	@ systickTicks.4, systickTicks
	ldr	r3, [r0, #0]	@ systickTicks.5, systickTicks
	adds	r3, r3, #1	@ systickTicks.5, systickTicks.5,
	bne	.L1	@,
	ldr	r3, .L3+4	@ tmp142,
	ldr	r2, [r3, #0]	@ systickRollovers.6, systickRollovers
	adds	r0, r2, #1	@ systickRollovers.7, systickRollovers.6,
	str	r0, [r3, #0]	@ systickRollovers.7, systickRollovers
.L1:
	bx	lr	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.text.systickInit,"ax",%progbits
	.align	1
	.global	systickInit
	.thumb
	.thumb_func
	.ascii	"systickInit\000"
	.align	2
	.word	4278190092
	.type	systickInit, %function
systickInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7	@ tmp137,
	muls	r3, r0, r3	@ D.4615, delayMs
	cmp	r3, #16777216	@ D.4615,
	bcs	.L5	@,
	ldr	r1, .L7+4	@ tmp139,
	movs	r0, #0	@ tmp140,
	str	r0, [r1, #0]	@ tmp140, systickTicks
	ldr	r1, .L7+8	@ tmp141,
	subs	r2, r3, #1	@ D.4614, D.4615,
	ldr	r3, .L7+12	@ tmp142,
	str	r2, [r1, #0]	@ D.4614, MEM[(volatile long unsigned int *)3758153748B]
	movs	r2, #7	@ tmp145,
	str	r0, [r3, #0]	@ tmp140, MEM[(volatile long unsigned int *)3758153752B]
	str	r2, [r3, #-8]	@ tmp145, MEM[(volatile long unsigned int *)3758153744B]
.L5:
	bx	lr	@
.L8:
	.align	2
.L7:
	.word	72000
	.word	.LANCHOR0
	.word	-536813548
	.word	-536813544
	.size	systickInit, .-systickInit
	.section	.text.systickDelay,"ax",%progbits
	.align	1
	.global	systickDelay
	.thumb
	.thumb_func
	.ascii	"systickDelay\000"
	.align	2
	.word	4278190096
	.type	systickDelay, %function
systickDelay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L21	@ tmp143,
	cmp	r0, #0	@ delayTicks,
	it	eq	@
	moveq	r0, #1	@, delayTicks,
	ldr	r3, [r2, #0]	@ curTicks, systickTicks
	mvns	r1, r0	@ tmp144, delayTicks
	cmp	r3, r1	@ curTicks, tmp144
	push	{r4, lr}	@
	bhi	.L20	@,
	b	.L17	@
.L16:
	adds	r1, r3, #1	@ tmp146, curTicks,
	ldr	r4, [r2, #0]	@ systickTicks.0, systickTicks
	add	ip, r1, r0	@ tmp147, tmp146, delayTicks
	cmp	r4, ip	@ systickTicks.0, tmp147
	bcc	.L16	@,
.L20:
	ldr	r1, [r2, #0]	@ systickTicks.1, systickTicks
	cmp	r1, r3	@ systickTicks.1, curTicks
	bcs	.L16	@,
	pop	{r4, pc}	@
.L17:
	ldr	r1, [r2, #0]	@ systickTicks.2, systickTicks
	rsb	ip, r3, r1	@ tmp150, curTicks, systickTicks.2
	cmp	ip, r0	@ tmp150, delayTicks
	bcc	.L17	@,
	pop	{r4, pc}	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.size	systickDelay, .-systickDelay
	.section	.text.systickGetTicks,"ax",%progbits
	.align	1
	.global	systickGetTicks
	.thumb
	.thumb_func
	.ascii	"systickGetTicks\000"
	.align	2
	.word	4278190096
	.type	systickGetTicks, %function
systickGetTicks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24	@ tmp136,
	ldr	r0, [r3, #0]	@ D.4572, systickTicks
	bx	lr	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.size	systickGetTicks, .-systickGetTicks
	.section	.text.systickGetRollovers,"ax",%progbits
	.align	1
	.global	systickGetRollovers
	.thumb
	.thumb_func
	.ascii	"systickGetRollovers\000"
	.align	2
	.word	4278190100
	.type	systickGetRollovers, %function
systickGetRollovers:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27	@ tmp136,
	ldr	r0, [r3, #0]	@ D.4570, systickRollovers
	bx	lr	@
.L28:
	.align	2
.L27:
	.word	.LANCHOR1
	.size	systickGetRollovers, .-systickGetRollovers
	.section	.text.systickGetSecondsActive,"ax",%progbits
	.align	1
	.global	systickGetSecondsActive
	.thumb
	.thumb_func
	.ascii	"systickGetSecondsActive\000"
	.align	2
	.word	4278190104
	.type	systickGetSecondsActive, %function
systickGetSecondsActive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L30	@ tmp140,
	ldr	r2, .L30+4	@ tmp141,
	ldr	r1, [r3, #0]	@ currentTick, systickTicks
	mov	r0, #1000	@ tmp142,
	udiv	r3, r1, r0	@ secsActive, currentTick, tmp142
	ldr	r2, [r2, #0]	@ rollovers, systickRollovers
	ldr	r0, .L30+8	@ tmp145,
	mla	r0, r0, r2, r3	@, tmp145, rollovers, secsActive
	bx	lr	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	4294967
	.size	systickGetSecondsActive, .-systickGetSecondsActive
	.global	systickRollovers
	.global	systickTicks
	.section	.bss.systickRollovers,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	systickRollovers, %object
	.size	systickRollovers, 4
systickRollovers:
	.space	4
	.section	.bss.systickTicks,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	systickTicks, %object
	.size	systickTicks, 4
systickTicks:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
