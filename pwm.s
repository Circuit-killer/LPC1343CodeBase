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
	.file	"pwm.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pwm.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip pwm.o -Os -Wall -ffunction-sections
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

	.section	.text.pwmInit,"ax",%progbits
	.align	1
	.global	pwmInit
	.thumb
	.thumb_func
	.ascii	"pwmInit\000"
	.align	2
	.word	4278190088
	.type	pwmInit, %function
pwmInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2	@ tmp148,
	ldr	r0, [r3, #0]	@ D.4615, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r0, #256	@ D.4616, D.4615,
	str	r2, [r3, #0]	@ D.4616, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r3, .L2+4	@ tmp150,
	ldr	r1, [r3, #0]	@ D.4618, MEM[(volatile long unsigned int *)1074020408B]
	bic	r0, r1, #7	@ D.4619, D.4618,
	str	r0, [r3, #0]	@ D.4619, MEM[(volatile long unsigned int *)1074020408B]
	ldr	r2, [r3, #0]	@ D.4620, MEM[(volatile long unsigned int *)1074020408B]
	ldr	r0, .L2+8	@ tmp154,
	orr	r1, r2, #1	@ D.4621, D.4620,
	str	r1, [r3, #0]	@ D.4621, MEM[(volatile long unsigned int *)1074020408B]
	ldr	r0, [r0, #0]	@ pwmPulseWidth.8, pwmPulseWidth
	ldr	r2, .L2+12	@ tmp155,
	ldr	r1, .L2+16	@ tmp156,
	str	r0, [r2, #0]	@ pwmPulseWidth.8, MEM[(volatile long unsigned int *)1073807396B]
	ldr	r3, [r1, #0]	@ pwmDutyCycle, pwmDutyCycle
	movs	r1, #100	@ tmp162,
	rsb	r2, r3, #100	@ tmp157, pwmDutyCycle,
	muls	r0, r2, r0	@ tmp160, tmp157
	udiv	r3, r0, r1	@ D.4628, tmp160, tmp162
	ldr	r0, .L2+20	@ tmp163,
	movs	r2, #49	@ tmp167,
	str	r3, [r0, #0]	@ D.4628, MEM[(volatile long unsigned int *)1073807384B]
	mov	r3, #1024	@ tmp165,
	str	r3, [r0, #-4]	@ tmp165, MEM[(volatile long unsigned int *)1073807380B]
	str	r2, [r0, #36]	@ tmp167, MEM[(volatile long unsigned int *)1073807420B]
	ldr	r1, [r0, #-20]	@ D.4632, MEM[(volatile long unsigned int *)1073807364B]
	bic	r2, r1, #1	@ D.4633, D.4632,
	str	r2, [r0, #-20]	@ D.4633, MEM[(volatile long unsigned int *)1073807364B]
	ldr	r2, .L2+24	@ tmp172,
	movs	r1, #9	@ tmp171,
	str	r1, [r0, #92]	@ tmp171, MEM[(volatile long unsigned int *)1073807476B]
	str	r3, [r2, #4]	@ tmp165, MEM[(struct NVIC_Type *)3758153984B].ISER
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	1074036864
	.word	1074020408
	.word	.LANCHOR0
	.word	1073807396
	.word	.LANCHOR1
	.word	1073807384
	.word	-536813312
	.size	pwmInit, .-pwmInit
	.section	.text.pwmStart,"ax",%progbits
	.align	1
	.global	pwmStart
	.thumb
	.thumb_func
	.ascii	"pwmStart\000"
	.align	2
	.word	4278190092
	.type	pwmStart, %function
pwmStart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5	@ tmp136,
	movs	r2, #1	@ tmp139,
	ldr	r1, [r3, #0]	@ D.4611, MEM[(volatile long unsigned int *)1073807380B]
	bic	r0, r1, #512	@ D.4612, D.4611,
	str	r0, [r3, #0]	@ D.4612, MEM[(volatile long unsigned int *)1073807380B]
	str	r2, [r3, #-16]	@ tmp139, MEM[(volatile long unsigned int *)1073807364B]
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	1073807380
	.size	pwmStart, .-pwmStart
	.section	.text.pwmStop,"ax",%progbits
	.align	1
	.global	pwmStop
	.thumb
	.thumb_func
	.ascii	"pwmStop\000"
	.align	2
	.word	4278190088
	.type	pwmStop, %function
pwmStop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8	@ tmp136,
	ldr	r0, [r3, #0]	@ D.4608, MEM[(volatile long unsigned int *)1073807364B]
	bic	r2, r0, #1	@ D.4609, D.4608,
	str	r2, [r3, #0]	@ D.4609, MEM[(volatile long unsigned int *)1073807364B]
	bx	lr	@
.L9:
	.align	2
.L8:
	.word	1073807364
	.size	pwmStop, .-pwmStop
	.section	.text.pwmStartFixed,"ax",%progbits
	.align	1
	.global	pwmStartFixed
	.thumb
	.thumb_func
	.ascii	"pwmStartFixed\000"
	.align	2
	.word	4278190096
	.type	pwmStartFixed, %function
pwmStartFixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11	@ tmp137,
	ldr	r3, .L11+4	@ tmp138,
	str	r0, [r2, #0]	@ pulses, pwmMaxPulses
	ldr	r1, [r3, #0]	@ D.4604, MEM[(volatile long unsigned int *)1073807380B]
	movs	r2, #1	@ tmp141,
	orr	r0, r1, #512	@ D.4605, D.4604,
	str	r0, [r3, #0]	@ D.4605, MEM[(volatile long unsigned int *)1073807380B]
	str	r2, [r3, #-16]	@ tmp141, MEM[(volatile long unsigned int *)1073807364B]
	bx	lr	@
.L12:
	.align	2
.L11:
	.word	.LANCHOR2
	.word	1073807380
	.size	pwmStartFixed, .-pwmStartFixed
	.section	.text.pwmSetDutyCycle,"ax",%progbits
	.align	1
	.global	pwmSetDutyCycle
	.thumb
	.thumb_func
	.ascii	"pwmSetDutyCycle\000"
	.align	2
	.word	4278190096
	.type	pwmSetDutyCycle, %function
pwmSetDutyCycle:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #1	@ tmp142, percentage,
	cmp	r3, #99	@ tmp142,
	bhi	.L15	@,
	ldr	r3, .L16	@ tmp143,
	ldr	r2, .L16+4	@ tmp144,
	ldr	r1, [r3, #0]	@ pwmPulseWidth.6, pwmPulseWidth
	str	r0, [r2, #0]	@ percentage, pwmDutyCycle
	rsb	r2, r0, #100	@ tmp145, percentage,
	muls	r2, r1, r2	@ tmp146, pwmPulseWidth.6
	movs	r3, #100	@ tmp147,
	ldr	r1, .L16+8	@ tmp148,
	udiv	r0, r2, r3	@ D.4601, tmp146, tmp147
	str	r0, [r1, #0]	@ D.4601, MEM[(volatile long unsigned int *)1073807384B]
	movs	r0, #0	@ D.4595,
	bx	lr	@
.L15:
	mov	r0, #-1	@ D.4595,
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1073807384
	.size	pwmSetDutyCycle, .-pwmSetDutyCycle
	.section	.text.pwmSetFrequencyInTicks,"ax",%progbits
	.align	1
	.global	pwmSetFrequencyInTicks
	.thumb
	.thumb_func
	.ascii	"pwmSetFrequencyInTicks\000"
	.align	2
	.word	4278190104
	.type	pwmSetFrequencyInTicks, %function
pwmSetFrequencyInTicks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L20	@ ticks,
	subs	r1, r0, #1	@ pwmPulseWidth.3, ticks,
	ldr	r3, .L21	@ tmp145,
	ldr	r0, .L21+4	@ tmp146,
	ldr	r2, .L21+8	@ tmp147,
	str	r1, [r3, #0]	@ pwmPulseWidth.3, pwmPulseWidth
	str	r1, [r0, #0]	@ pwmPulseWidth.3, MEM[(volatile long unsigned int *)1073807396B]
	ldr	r3, [r2, #0]	@ pwmDutyCycle, pwmDutyCycle
	movs	r2, #100	@ tmp153,
	rsb	r0, r3, #100	@ tmp148, pwmDutyCycle,
	muls	r1, r0, r1	@ tmp151, tmp148
	ldr	r3, .L21+12	@ tmp154,
	udiv	r0, r1, r2	@ D.4590, tmp151, tmp153
	str	r0, [r3, #0]	@ D.4590, MEM[(volatile long unsigned int *)1073807384B]
	movs	r0, #0	@ D.4580,
	bx	lr	@
.L20:
	mov	r0, #-1	@ D.4580,
	bx	lr	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.word	1073807396
	.word	.LANCHOR1
	.word	1073807384
	.size	pwmSetFrequencyInTicks, .-pwmSetFrequencyInTicks
	.section	.text.pwmSetFrequencyInMicroseconds,"ax",%progbits
	.align	1
	.global	pwmSetFrequencyInMicroseconds
	.thumb
	.thumb_func
	.ascii	"pwmSetFrequencyInMicroseconds\000"
	.align	2
	.word	4278190112
	.type	pwmSetFrequencyInMicroseconds, %function
pwmSetFrequencyInMicroseconds:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L25	@ us,
	ldr	r3, .L27	@ tmp147,
	movs	r2, #72	@ tmp150,
	ldr	r1, [r3, #0]	@ D.4564, MEM[(volatile long unsigned int *)1074036856B]
	udiv	r3, r2, r1	@ tmp149, tmp150, D.4564
	muls	r0, r3, r0	@ ticks, tmp149
	cmp	r0, #65536	@ ticks,
	bcs	.L26	@,
	subs	r2, r0, #1	@ pwmPulseWidth.0, ticks,
	ldr	r1, .L27+4	@ tmp152,
	ldr	r0, .L27+8	@ tmp153,
	ldr	r3, .L27+12	@ tmp154,
	str	r2, [r1, #0]	@ pwmPulseWidth.0, pwmPulseWidth
	str	r2, [r0, #0]	@ pwmPulseWidth.0, MEM[(volatile long unsigned int *)1073807396B]
	ldr	r1, [r3, #0]	@ pwmDutyCycle, pwmDutyCycle
	movs	r3, #100	@ tmp160,
	rsb	r0, r1, #100	@ tmp155, pwmDutyCycle,
	muls	r2, r0, r2	@ tmp158, tmp155
	ldr	r1, .L27+16	@ tmp161,
	udiv	r0, r2, r3	@ D.4576, tmp158, tmp160
	str	r0, [r1, #0]	@ D.4576, MEM[(volatile long unsigned int *)1073807384B]
	movs	r0, #0	@ D.4562,
	bx	lr	@
.L25:
	mov	r0, #-1	@ D.4562,
	bx	lr	@
.L26:
	mov	r0, #-1	@ D.4562,
	bx	lr	@
.L28:
	.align	2
.L27:
	.word	1074036856
	.word	.LANCHOR0
	.word	1073807396
	.word	.LANCHOR1
	.word	1073807384
	.size	pwmSetFrequencyInMicroseconds, .-pwmSetFrequencyInMicroseconds
	.global	pwmMaxPulses
	.global	pwmDutyCycle
	.global	pwmPulseWidth
	.section	.bss.pwmMaxPulses,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	pwmMaxPulses, %object
	.size	pwmMaxPulses, 4
pwmMaxPulses:
	.space	4
	.section	.data.pwmDutyCycle,"aw",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pwmDutyCycle, %object
	.size	pwmDutyCycle, 4
pwmDutyCycle:
	.word	50
	.section	.data.pwmPulseWidth,"aw",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pwmPulseWidth, %object
	.size	pwmPulseWidth, 4
pwmPulseWidth:
	.word	72000
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
