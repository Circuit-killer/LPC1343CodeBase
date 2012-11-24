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
	.file	"pmu.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pmu.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip pmu.o -Os -Wall -ffunction-sections
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

	.section	.text.WAKEUP_IRQHandler,"ax",%progbits
	.align	1
	.global	WAKEUP_IRQHandler
	.thumb
	.thumb_func
	.ascii	"WAKEUP_IRQHandler\000"
	.align	2
	.word	4278190100
	.type	WAKEUP_IRQHandler, %function
WAKEUP_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #5	@,
	bl	cpuPllSetup	@
	ldr	r3, .L3	@ tmp139,
	movs	r2, #0	@ tmp140,
	str	r2, [r3, #0]	@ tmp140, MEM[(volatile long unsigned int *)1073823804B]
	ldr	r3, .L3+4	@ tmp141,
	mov	r1, #-1	@ tmp142,
	str	r1, [r3, #0]	@ tmp142, MEM[(volatile long unsigned int *)1074037256B]
	ldr	r1, .L3+8	@ tmp143,
	ldr	r0, [r1, #0]	@ D.4756, MEM[(volatile long unsigned int *)3758157072B]
	bic	r0, r0, #4	@ D.4757, D.4756,
	str	r0, [r1, #0]	@ D.4757, MEM[(volatile long unsigned int *)3758157072B]
	ldr	r1, .L3+12	@ tmp145,
	str	r2, [r1, #0]	@ tmp140, MEM[(volatile long unsigned int *)1073823748B]
	ldr	r2, .L3+16	@ tmp147,
	ldr	r2, [r2, #0]	@ regVal, MEM[(volatile long unsigned int *)1074037260B]
	cbz	r2, .L2	@ regVal,
	str	r2, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1074037256B]
.L2:
	ldr	r0, .L3+20	@ tmp149,
	mov	r2, #7200	@ tmp152,
	ldr	r1, [r0, #0]	@ D.4763, MEM[(volatile long unsigned int *)1074036856B]
	movs	r0, #0	@,
	udiv	r1, r2, r1	@, tmp152, D.4763
	bl	timer32Init	@
	movs	r0, #0	@,
	bl	timer32Enable	@
@ 101 "core/pmu/pmu.c" 1
	NOP
@ 0 "" 2
	.thumb
	pop	{r3, pc}	@
.L4:
	.align	2
.L3:
	.word	1073823804
	.word	1074037256
	.word	-536810224
	.word	1073823748
	.word	1074037260
	.word	1074036856
	.size	WAKEUP_IRQHandler, .-WAKEUP_IRQHandler
	.section	.text.pmuInit,"ax",%progbits
	.align	1
	.global	pmuInit
	.thumb
	.thumb_func
	.ascii	"pmuInit\000"
	.align	2
	.word	4278190088
	.type	pmuInit, %function
pmuInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6	@ tmp136,
	ldr	r0, [r3, #0]	@ D.4750, MEM[(volatile long unsigned int *)1074037304B]
	bic	r2, r0, #112	@ D.4751, D.4750,
	str	r2, [r3, #0]	@ D.4751, MEM[(volatile long unsigned int *)1074037304B]
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	1074037304
	.size	pmuInit, .-pmuInit
	.section	.text.pmuSleep,"ax",%progbits
	.align	1
	.global	pmuSleep
	.thumb
	.thumb_func
	.ascii	"pmuSleep\000"
	.align	2
	.word	4278190092
	.type	pmuSleep, %function
pmuSleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9	@ tmp135,
	ldr	r2, [r3, #0]	@ D.4747, MEM[(volatile long unsigned int *)1074037304B]
	str	r2, [r3, #-4]	@ D.4747, MEM[(volatile long unsigned int *)1074037300B]
@ 169 "core/pmu/pmu.c" 1
	WFI
@ 0 "" 2
	.thumb
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	1074037304
	.size	pmuSleep, .-pmuSleep
	.section	.text.pmuDeepSleep,"ax",%progbits
	.align	1
	.global	pmuDeepSleep
	.thumb
	.thumb_func
	.ascii	"pmuDeepSleep\000"
	.align	2
	.word	4278190096
	.type	pmuDeepSleep, %function
pmuDeepSleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r5, .L15	@ tmp163,
	ldr	r3, .L15+4	@ tmp164,
	ldr	r2, [r5, #0]	@ D.4693, MEM[(volatile long unsigned int *)1074037304B]
	orr	r0, r0, #2560	@ sleepCtrl, sleepCtrl,
	str	r2, [r3, #0]	@ D.4693, MEM[(volatile long unsigned int *)1074037300B]
	ldr	r2, .L15+8	@ tmp166,
	str	r0, [r3, #-4]	@ sleepCtrl, MEM[(volatile long unsigned int *)1074037296B]
	ldr	r6, [r2, #0]	@ D.4696, MEM[(volatile long unsigned int *)3758157072B]
	subs	r3, r3, #4	@ tmp165, tmp165,
	orr	r0, r6, #4	@ D.4697, D.4696,
	str	r0, [r2, #0]	@ D.4697, MEM[(volatile long unsigned int *)3758157072B]
	mov	r6, r1	@ wakeupSeconds, wakeupSeconds
	cmp	r1, #0	@ wakeupSeconds
	beq	.L12	@
	ldr	r1, [r3, #0]	@ D.4700, MEM[(volatile long unsigned int *)1074037296B]
	ldr	r0, .L15+12	@ tmp170,
	bic	r4, r1, #64	@ D.4701, D.4700,
	str	r4, [r3, #0]	@ D.4701, MEM[(volatile long unsigned int *)1074037296B]
	movs	r4, #0	@ tmp171,
	str	r4, [r0, #0]	@ tmp171, MEM[(volatile long unsigned int *)1073823748B]
	mov	r1, r4	@, tmp171
	ldr	r0, .L15+16	@,
	bl	gpioSetPullup	@
	ldr	r3, .L15+20	@ tmp172,
	ldr	r2, [r3, #0]	@ D.4704, MEM[(volatile long unsigned int *)1074036864B]
	orr	r1, r2, #512	@ D.4705, D.4704,
	str	r1, [r3, #0]	@ D.4705, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r1, .L15+16	@ tmp174,
	ldr	r0, [r1, #0]	@ D.4707, MEM[(volatile long unsigned int *)1074020368B]
	bic	r3, r0, #7	@ D.4708, D.4707,
	str	r3, [r1, #0]	@ D.4708, MEM[(volatile long unsigned int *)1074020368B]
	movw	r3, #7812	@ tmp178,
	muls	r6, r3, r6	@ D.4712, tmp178
	ldr	r2, [r1, #0]	@ D.4709, MEM[(volatile long unsigned int *)1074020368B]
	ldr	r3, .L15+24	@ tmp179,
	orr	r0, r2, #2	@ D.4710, D.4709,
	str	r0, [r1, #0]	@ D.4710, MEM[(volatile long unsigned int *)1074020368B]
	str	r6, [r3, #0]	@ D.4712, MEM[(volatile long unsigned int *)1073823768B]
	ldr	r2, [r3, #-4]	@ D.4714, MEM[(volatile long unsigned int *)1073823764B]
	orr	r1, r2, #3	@ D.4715, D.4714,
	str	r1, [r3, #-4]	@ D.4715, MEM[(volatile long unsigned int *)1073823764B]
	ldr	r0, [r3, #36]	@ D.4717, MEM[(volatile long unsigned int *)1073823804B]
	bic	r2, r0, #4080	@ D.4718, D.4717,
	str	r2, [r3, #36]	@ D.4718, MEM[(volatile long unsigned int *)1073823804B]
	ldr	r1, [r3, #36]	@ D.4719, MEM[(volatile long unsigned int *)1073823804B]
	ldr	r2, .L15+28	@ tmp186,
	orr	r0, r1, #512	@ D.4720, D.4719,
	str	r0, [r3, #36]	@ D.4720, MEM[(volatile long unsigned int *)1073823804B]
	movs	r3, #2	@ tmp187,
	str	r3, [r2, #0]	@ tmp187, MEM[(struct NVIC_Type *)3758153984B].ISER
	ldr	r2, .L15+32	@ tmp188,
	ldr	r1, [r2, #0]	@ D.4722, MEM[(volatile long unsigned int *)1074037248B]
	orr	r0, r1, r3	@ D.4723, D.4722,
	mov	r1, #-1	@ tmp191,
	str	r0, [r2, #0]	@ D.4723, MEM[(volatile long unsigned int *)1074037248B]
	str	r1, [r2, #8]	@ tmp191, MEM[(volatile long unsigned int *)1074037256B]
	ldr	r0, [r2, #4]	@ D.4726, MEM[(volatile long unsigned int *)1074037252B]
	orr	r1, r0, r3	@ D.4727, D.4726,
	str	r1, [r2, #4]	@ D.4727, MEM[(volatile long unsigned int *)1074037252B]
	ldr	r0, [r5, #0]	@ D.4803, MEM[(volatile long unsigned int *)1074037304B]
	movs	r2, #63	@ tmp197,
	bic	r1, r0, #64	@ D.4802, D.4803,
	ldr	r0, .L15+36	@ tmp196,
	str	r1, [r5, #0]	@ D.4802, MEM[(volatile long unsigned int *)1074037304B]
	str	r2, [r0, #0]	@ tmp197, MEM[(volatile long unsigned int *)1074036772B]
	str	r3, [r0, #76]	@ tmp187, MEM[(volatile long unsigned int *)1074036848B]
	ldr	r3, .L15+40	@ tmp200,
	movs	r1, #1	@ tmp201,
	str	r1, [r3, #0]	@ tmp201, MEM[(volatile long unsigned int *)1074036852B]
	str	r4, [r3, #0]	@ tmp171, MEM[(volatile long unsigned int *)1074036852B]
	str	r1, [r3, #0]	@ tmp201, MEM[(volatile long unsigned int *)1074036852B]
.L13:
	ldr	r2, .L15+40	@ tmp206,
	ldr	r3, [r2, #0]	@ D.4801, MEM[(volatile long unsigned int *)1074036852B]
	lsls	r3, r3, #31	@, D.4801,
	bpl	.L13	@,
	ldr	r1, .L15+12	@ tmp208,
	movs	r0, #1	@ tmp209,
	str	r0, [r1, #0]	@ tmp209, MEM[(volatile long unsigned int *)1073823748B]
.L12:
@ 316 "core/pmu/pmu.c" 1
	WFI
@ 0 "" 2
	.thumb
	pop	{r4, r5, r6, pc}	@
.L16:
	.align	2
.L15:
	.word	1074037304
	.word	1074037300
	.word	-536810224
	.word	1073823748
	.word	1074020368
	.word	1074036864
	.word	1073823768
	.word	-536813312
	.word	1074037248
	.word	1074036772
	.word	1074036852
	.size	pmuDeepSleep, .-pmuDeepSleep
	.section	.text.pmuPowerDown,"ax",%progbits
	.align	1
	.global	pmuPowerDown
	.thumb
	.thumb_func
	.ascii	"pmuPowerDown\000"
	.align	2
	.word	4278190096
	.type	pmuPowerDown, %function
pmuPowerDown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22	@ tmp144,
	ldr	r2, [r3, #0]	@ D.4669, MEM[(volatile long unsigned int *)1073971200B]
	tst	r2, #2304	@ D.4669,
	ldr	r2, .L22+4	@ tmp168,
	beq	.L18	@,
	ldr	r0, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073971200B]
	orr	r1, r0, #2304	@ regVal, regVal,
	str	r1, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073971200B]
	ldr	r0, [r2, #0]	@ D.4676, MEM[(volatile long unsigned int *)1073971204B]
	ldr	r3, .L22+8	@ tmp149,
	cmp	r0, r3	@ D.4676, tmp149
	bne	.L19	@,
	ldr	r1, .L22+12	@ tmp150,
	ldr	r3, .L22+16	@ tmp151,
	ldr	r2, [r1, #0]	@ D.4679, MEM[(volatile long unsigned int *)1073971208B]
	cmp	r2, r3	@ D.4679, tmp151
	bne	.L19	@,
	ldr	r3, .L22+20	@ tmp152,
	ldr	r2, .L22+24	@ tmp153,
	ldr	r0, [r3, #0]	@ D.4682, MEM[(volatile long unsigned int *)1073971212B]
	cmp	r0, r2	@ D.4682, tmp153
	bne	.L19	@,
	ldr	r2, .L22+28	@ tmp154,
	ldr	r0, .L22+32	@ tmp155,
	ldr	r1, [r2, #0]	@ D.4685, MEM[(volatile long unsigned int *)1073971216B]
	cmp	r1, r0	@ D.4685, tmp155
	beq	.L17	@,
.L19:
.L21:
	b	.L21	@
.L18:
	ldr	r1, .L22+8	@ tmp157,
	ldr	r0, .L22+16	@ tmp159,
	str	r1, [r2, #0]	@ tmp157, MEM[(volatile long unsigned int *)1073971204B]
	ldr	r2, .L22+12	@ tmp158,
	ldr	r1, .L22+24	@ tmp161,
	str	r0, [r2, #0]	@ tmp159, MEM[(volatile long unsigned int *)1073971208B]
	ldr	r0, .L22+32	@ tmp163,
	str	r1, [r2, #4]	@ tmp161, MEM[(volatile long unsigned int *)1073971212B]
	str	r0, [r2, #8]	@ tmp163, MEM[(volatile long unsigned int *)1073971216B]
	ldr	r2, .L22+36	@ tmp164,
	ldr	r1, [r2, #0]	@ D.4688, MEM[(volatile long unsigned int *)3758157072B]
	orr	r0, r1, #4	@ D.4689, D.4688,
	movs	r1, #2	@ tmp167,
	str	r0, [r2, #0]	@ D.4689, MEM[(volatile long unsigned int *)3758157072B]
	str	r1, [r3, #0]	@ tmp167, MEM[(volatile long unsigned int *)1073971200B]
@ 389 "core/pmu/pmu.c" 1
	WFI
@ 0 "" 2
	.thumb
.L17:
	bx	lr	@
.L23:
	.align	2
.L22:
	.word	1073971200
	.word	1073971204
	.word	305419896
	.word	1073971208
	.word	-2023406815
	.word	1073971212
	.word	1450709556
	.word	1073971216
	.word	1126270821
	.word	-536810224
	.size	pmuPowerDown, .-pmuPowerDown
	.section	.text.pmuSetupHW,"ax",%progbits
	.align	1
	.global	pmuSetupHW
	.thumb
	.thumb_func
	.ascii	"pmuSetupHW\000"
	.align	2
	.word	4278190092
	.type	pmuSetupHW, %function
pmuSetupHW:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	pmuSetupHW, .-pmuSetupHW
	.section	.text.pmuRestoreHW,"ax",%progbits
	.align	1
	.global	pmuRestoreHW
	.thumb
	.thumb_func
	.ascii	"pmuRestoreHW\000"
	.align	2
	.word	4278190096
	.type	pmuRestoreHW, %function
pmuRestoreHW:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	pmuRestoreHW, .-pmuRestoreHW
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
