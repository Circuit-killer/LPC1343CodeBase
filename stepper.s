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
	.file	"stepper.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed stepper.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip stepper.o -Os -Wall
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

	.section	.text.stepMotor,"ax",%progbits
	.align	1
	.global	stepMotor
	.thumb
	.thumb_func
	.ascii	"stepMotor\000"
	.align	2
	.word	4278190092
	.type	stepMotor, %function
stepMotor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ thisStep,
	bhi	.L1	@
	tbb	[pc, r0]	@ thisStep
.L7:
	.byte	(.L3-.L7)/2
	.byte	(.L4-.L7)/2
	.byte	(.L5-.L7)/2
	.byte	(.L6-.L7)/2
	.align	1
.L3:
	ldr	r3, .L10	@ tmp135,
	movw	r2, #4095	@ tmp136,
	str	r2, [r3, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342373892B]
	movs	r3, #0	@ tmp138,
	b	.L9	@
.L4:
	ldr	r2, .L10	@ tmp143,
	movs	r3, #0	@ tmp144,
	ldr	r1, .L10+4	@ tmp145,
	str	r3, [r2, #0]	@ tmp144, MEM[(volatile long unsigned int *)1342373892B]
	movw	r2, #4095	@ tmp146,
	str	r2, [r1, #0]	@ tmp146, MEM[(volatile long unsigned int *)1342373896B]
	b	.L8	@
.L5:
	ldr	r0, .L10	@ tmp151,
	movs	r2, #0	@ tmp152,
	str	r2, [r0, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342373892B]
	movw	r3, #4095	@ tmp154,
.L9:
	ldr	r1, .L10+4	@ tmp153,
	str	r3, [r1, #0]	@ tmp154, MEM[(volatile long unsigned int *)1342373896B]
.L8:
	str	r2, [r1, #8]	@ tmp152, MEM[(volatile long unsigned int *)1342373904B]
	ldr	r1, .L10+8	@ tmp157,
	str	r3, [r1, #0]	@ tmp154, MEM[(volatile long unsigned int *)1342373920B]
	bx	lr	@
.L6:
	ldr	r2, .L10	@ tmp159,
	movw	r3, #4095	@ tmp160,
	str	r3, [r2, #0]	@ tmp160, MEM[(volatile long unsigned int *)1342373892B]
	ldr	r0, .L10+4	@ tmp161,
	ldr	r2, .L10+8	@ tmp165,
	movs	r1, #0	@ tmp162,
	str	r1, [r0, #0]	@ tmp162, MEM[(volatile long unsigned int *)1342373896B]
	str	r1, [r0, #8]	@ tmp162, MEM[(volatile long unsigned int *)1342373904B]
	str	r3, [r2, #0]	@ tmp160, MEM[(volatile long unsigned int *)1342373920B]
.L1:
	bx	lr	@
.L11:
	.align	2
.L10:
	.word	1342373892
	.word	1342373896
	.word	1342373920
	.size	stepMotor, .-stepMotor
	.section	.text.stepperGetPosition,"ax",%progbits
	.align	1
	.global	stepperGetPosition
	.thumb
	.thumb_func
	.ascii	"stepperGetPosition\000"
	.align	2
	.word	4278190100
	.type	stepperGetPosition, %function
stepperGetPosition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L13	@ tmp137,
	ldmia	r3, {r0, r1}	@ tmp137,,
	bx	lr	@
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	stepperGetPosition, .-stepperGetPosition
	.section	.text.stepperGetRotation,"ax",%progbits
	.align	1
	.global	stepperGetRotation
	.thumb
	.thumb_func
	.ascii	"stepperGetRotation\000"
	.align	2
	.word	4278190100
	.type	stepperGetRotation, %function
stepperGetRotation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16	@ tmp137,
	ldr	r0, [r3, #0]	@, stepperStepNumber
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR1
	.size	stepperGetRotation, .-stepperGetRotation
	.section	.text.stepperSetHome,"ax",%progbits
	.align	1
	.global	stepperSetHome
	.thumb
	.thumb_func
	.ascii	"stepperSetHome\000"
	.align	2
	.word	4278190096
	.type	stepperSetHome, %function
stepperSetHome:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L19	@ tmp134,
	movs	r2, #0	@ tmp135,
	movs	r3, #0	@,
	strd	r2, [r1]	@ tmp135, stepperPosition
	bx	lr	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	stepperSetHome, .-stepperSetHome
	.section	.text.stepperSetZero,"ax",%progbits
	.align	1
	.global	stepperSetZero
	.thumb
	.thumb_func
	.ascii	"stepperSetZero\000"
	.align	2
	.word	4278190096
	.type	stepperSetZero, %function
stepperSetZero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22	@ tmp134,
	movs	r2, #0	@ tmp135,
	str	r2, [r3, #0]	@ tmp135, stepperStepNumber
	bx	lr	@
.L23:
	.align	2
.L22:
	.word	.LANCHOR1
	.size	stepperSetZero, .-stepperSetZero
	.section	.text.stepperSetSpeed,"ax",%progbits
	.align	1
	.global	stepperSetSpeed
	.thumb
	.thumb_func
	.ascii	"stepperSetSpeed\000"
	.align	2
	.word	4278190096
	.type	stepperSetSpeed, %function
stepperSetSpeed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L25	@ tmp141,
	push	{r3, lr}	@
	ldr	r2, .L25+4	@ tmp144,
	ldr	r3, [r1, #0]	@ D.5081, MEM[(volatile long unsigned int *)1074036856B]
	ldr	r1, .L25+8	@ tmp145,
	udiv	ip, r2, r3	@ tmp143, tmp144, D.5081
	ldr	r3, [r1, #0]	@ stepperStepsPerRotation, stepperStepsPerRotation
	movs	r2, #60	@ tmp150,
	udiv	r1, ip, r3	@ tmp147, tmp143, stepperStepsPerRotation
	muls	r1, r2, r1	@ tmp149, tmp150
	ldr	r3, .L25+12	@ tmp151,
	udiv	r1, r1, r0	@ stepperStepDelay.8, tmp149, rpm
	str	r1, [r3, #0]	@ stepperStepDelay.8, stepperStepDelay
	movs	r0, #0	@,
	bl	timer32Init	@
	movs	r0, #0	@,
	pop	{r3, lr}	@
	b	timer32Enable	@
.L26:
	.align	2
.L25:
	.word	1074036856
	.word	72000000
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	stepperSetSpeed, .-stepperSetSpeed
	.section	.text.stepperInit,"ax",%progbits
	.align	1
	.global	stepperInit
	.thumb
	.thumb_func
	.ascii	"stepperInit\000"
	.align	2
	.word	4278190092
	.type	stepperInit, %function
stepperInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r1, #0	@,
	mov	r4, r0	@ steps, steps
	movs	r2, #1	@,
	movs	r0, #3	@,
	bl	gpioSetDir	@
	movs	r1, #1	@,
	movs	r0, #3	@,
	mov	r2, r1	@,
	bl	gpioSetDir	@
	movs	r0, #3	@,
	movs	r1, #2	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #3	@,
	mov	r1, r0	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r2, .L28	@ tmp135,
	movs	r0, #0	@ tmp136,
	ldr	r3, .L28+4	@ tmp143,
	str	r0, [r2, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342373892B]
	str	r0, [r2, #4]	@ tmp136, MEM[(volatile long unsigned int *)1342373896B]
	str	r0, [r2, #12]	@ tmp136, MEM[(volatile long unsigned int *)1342373904B]
	str	r0, [r2, #28]	@ tmp136, MEM[(volatile long unsigned int *)1342373920B]
	movs	r0, #120	@,
	str	r4, [r3, #0]	@ steps, stepperStepsPerRotation
	pop	{r4, lr}	@
	b	stepperSetSpeed	@
.L29:
	.align	2
.L28:
	.word	1342373892
	.word	.LANCHOR2
	.size	stepperInit, .-stepperInit
	.section	.text.stepperStep,"ax",%progbits
	.align	1
	.global	stepperStep
	.thumb
	.thumb_func
	.ascii	"stepperStep\000"
	.align	2
	.word	4278190092
	.type	stepperStep, %function
stepperStep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r7, r0	@ steps, steps
	bl	abs	@
	mov	r6, r0	@ stepsLeft,
	b	.L31	@
.L35:
	movs	r0, #0	@,
	movs	r1, #1	@,
	ldr	r4, .L37	@ tmp182,
	bl	timer32Delay	@
	ldrd	r2, [r4]	@ tmp157, stepperPosition
	cmp	r7, #0	@ steps,
	ldr	r5, .L37+4	@ tmp183,
	ble	.L32	@,
	movs	r0, #1	@ tmp156,
	movs	r1, #0	@,
	adds	r2, r2, r0	@ tmp157, tmp157, tmp156
	adc	r3, r3, r1	@,,
	strd	r2, [r4]	@ tmp157, stepperPosition
	ldr	r2, .L37+8	@ tmp161,
	ldr	r3, [r5, #0]	@ stepperStepNumber, stepperStepNumber
	ldr	r2, [r2, #0]	@ stepperStepsPerRotation, stepperStepsPerRotation
	adds	r3, r3, #1	@ stepperStepNumber.3, stepperStepNumber,
	cmp	r3, r2	@ stepperStepNumber.3, stepperStepsPerRotation
	str	r3, [r5, #0]	@ stepperStepNumber.3, stepperStepNumber
	bne	.L33	@,
	movs	r3, #0	@ tmp164,
	b	.L36	@
.L32:
	mov	r0, #-1	@ tmp168,
	adds	r2, r2, r0	@ tmp169, tmp169, tmp168
	mov	r1, #-1	@,
	adc	r3, r3, r1	@,,
	strd	r2, [r4]	@ tmp169, stepperPosition
	ldr	r3, [r5, #0]	@ stepperStepNumber, stepperStepNumber
	cbnz	r3, .L34	@ stepperStepNumber,
	ldr	r0, .L37+8	@ tmp173,
	ldr	r3, [r0, #0]	@ stepperStepsPerRotation, stepperStepsPerRotation
	str	r3, [r5, #0]	@ stepperStepsPerRotation, stepperStepNumber
.L34:
	ldr	r1, [r5, #0]	@ stepperStepNumber, stepperStepNumber
	subs	r3, r1, #1	@ tmp178, stepperStepNumber,
.L36:
	str	r3, [r5, #0]	@ tmp178, stepperStepNumber
.L33:
	ldr	r2, [r5, #0]	@ stepperStepNumber, stepperStepNumber
	subs	r6, r6, #1	@ stepsLeft, stepsLeft,
	and	r0, r2, #3	@, stepperStepNumber,
	bl	stepMotor	@
.L31:
	cmp	r6, #0	@ stepsLeft
	bne	.L35	@
	pop	{r3, r4, r5, r6, r7, pc}	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	stepperStep, .-stepperStep
	.section	.text.stepperMoveZero,"ax",%progbits
	.align	1
	.global	stepperMoveZero
	.thumb
	.thumb_func
	.ascii	"stepperMoveZero\000"
	.align	2
	.word	4278190096
	.type	stepperMoveZero, %function
stepperMoveZero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L41	@ tmp137,
	ldr	r3, [r0, #0]	@ stepperStepNumber, stepperStepNumber
	cbnz	r3, .L39	@ stepperStepNumber,
	ldr	r1, .L41+4	@ tmp139,
	ldr	r0, [r1, #0]	@, stepperStepsPerRotation
	b	stepperStep	@
.L39:
	bx	lr	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	stepperMoveZero, .-stepperMoveZero
	.section	.text.stepperMoveHome,"ax",%progbits
	.align	1
	.global	stepperMoveHome
	.thumb
	.thumb_func
	.ascii	"stepperMoveHome\000"
	.align	2
	.word	4278190096
	.type	stepperMoveHome, %function
stepperMoveHome:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L44	@ tmp138,
	ldr	r0, [r3, #0]	@ stepperPosition, stepperPosition
	negs	r0, r0	@, stepperPosition
	b	stepperStep	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.size	stepperMoveHome, .-stepperMoveHome
	.section	.bss.stepperPosition,"aw",%nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	stepperPosition, %object
	.size	stepperPosition, 8
stepperPosition:
	.space	8
	.section	.bss.stepperStepsPerRotation,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	stepperStepsPerRotation, %object
	.size	stepperStepsPerRotation, 4
stepperStepsPerRotation:
	.space	4
	.section	.bss.stepperStepNumber,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	stepperStepNumber, %object
	.size	stepperStepNumber, 4
stepperStepNumber:
	.space	4
	.section	.bss.stepperStepDelay,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	stepperStepDelay, %object
	.size	stepperStepDelay, 4
stepperStepDelay:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
