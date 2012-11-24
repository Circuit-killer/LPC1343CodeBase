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
	.file	"timer32.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed timer32.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip timer32.o -Os -Wall
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
	lsrs	r2, r0, #5	@ D.4631, IRQn,
	and	r1, r0, #31	@ tmp143, IRQn,
	movs	r0, #1	@ tmp144,
	lsl	r0, r0, r1	@ D.4636, tmp144, tmp143
	ldr	r3, .L2	@ tmp145,
	str	r0, [r3, r2, lsl #2]	@ D.4636, MEM[(struct NVIC_Type *)3758153984B].ISER
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	-536813312
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.timer32Delay,"ax",%progbits
	.align	1
	.global	timer32Delay
	.thumb
	.thumb_func
	.ascii	"timer32Delay\000"
	.align	2
	.word	4278190096
	.type	timer32Delay, %function
timer32Delay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cbnz	r0, .L5	@ timerNum,
	ldr	r2, .L23	@ tmp152,
	mvns	r0, r1	@ tmp153, delay
	ldr	r3, [r2, #0]	@ curTicks, timer32_0_counter
	cmp	r3, r0	@ curTicks, tmp153
	bhi	.L21	@,
	b	.L14	@
.L13:
	adds	r0, r3, #1	@ tmp155, curTicks,
	ldr	r4, [r2, #0]	@ timer32_0_counter.6, timer32_0_counter
	add	ip, r0, r1	@ tmp156, tmp155, delay
	cmp	r4, ip	@ timer32_0_counter.6, tmp156
	bcc	.L13	@,
.L21:
	ldr	r0, [r2, #0]	@ timer32_0_counter.7, timer32_0_counter
	cmp	r0, r3	@ timer32_0_counter.7, curTicks
	bcs	.L13	@,
	pop	{r4, pc}	@
.L14:
	ldr	r0, [r2, #0]	@ timer32_0_counter.8, timer32_0_counter
	rsb	ip, r3, r0	@ tmp159, curTicks, timer32_0_counter.8
	cmp	ip, r1	@ tmp159, delay
	bcc	.L14	@,
	pop	{r4, pc}	@
.L5:
	cmp	r0, #1	@ timerNum,
	bne	.L4	@,
	ldr	r2, .L23+4	@ tmp160,
	mvns	r0, r1	@ tmp161, delay
	ldr	r3, [r2, #0]	@ curTicks, timer32_1_counter
	cmp	r3, r0	@ curTicks, tmp161
	bhi	.L22	@,
	b	.L16	@
.L15:
	adds	r0, r3, #1	@ tmp163, curTicks,
	ldr	r4, [r2, #0]	@ timer32_1_counter.9, timer32_1_counter
	add	ip, r0, r1	@ tmp164, tmp163, delay
	cmp	r4, ip	@ timer32_1_counter.9, tmp164
	bcc	.L15	@,
.L22:
	ldr	r0, [r2, #0]	@ timer32_1_counter.10, timer32_1_counter
	cmp	r0, r3	@ timer32_1_counter.10, curTicks
	bcs	.L15	@,
	pop	{r4, pc}	@
.L16:
	ldr	r0, [r2, #0]	@ timer32_1_counter.11, timer32_1_counter
	rsb	ip, r3, r0	@ tmp167, curTicks, timer32_1_counter.11
	cmp	ip, r1	@ tmp167, delay
	bcc	.L16	@,
.L4:
	pop	{r4, pc}	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	timer32Delay, .-timer32Delay
	.section	.text.TIMER32_0_IRQHandler,"ax",%progbits
	.align	1
	.global	TIMER32_0_IRQHandler
	.thumb
	.thumb_func
	.ascii	"TIMER32_0_IRQHandler\000"
	.align	2
	.word	4278190104
	.type	TIMER32_0_IRQHandler, %function
TIMER32_0_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r3, .L27	@ tmp137,
	ldr	r3, [r3, #0]	@ interruptHandler0.3, interruptHandler0
	cbz	r3, .L26	@ interruptHandler0.3,
	blx	r3	@ interruptHandler0.3
.L26:
	ldr	r3, .L27+4	@ tmp138,
	movs	r2, #1	@ tmp139,
	ldr	r0, .L27+8	@ tmp140,
	str	r2, [r3, #0]	@ tmp139, MEM[(volatile long unsigned int *)1073823744B]
	ldr	r1, [r0, #0]	@ timer32_0_counter.4, timer32_0_counter
	adds	r2, r1, #1	@ timer32_0_counter.5, timer32_0_counter.4,
	str	r2, [r0, #0]	@ timer32_0_counter.5, timer32_0_counter
	pop	{r3, pc}	@
.L28:
	.align	2
.L27:
	.word	.LANCHOR2
	.word	1073823744
	.word	.LANCHOR0
	.size	TIMER32_0_IRQHandler, .-TIMER32_0_IRQHandler
	.section	.text.TIMER32_1_IRQHandler,"ax",%progbits
	.align	1
	.global	TIMER32_1_IRQHandler
	.thumb
	.thumb_func
	.ascii	"TIMER32_1_IRQHandler\000"
	.align	2
	.word	4278190104
	.type	TIMER32_1_IRQHandler, %function
TIMER32_1_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L30	@ tmp136,
	ldr	r3, .L30+4	@ tmp138,
	movs	r1, #1	@ tmp137,
	str	r1, [r2, #0]	@ tmp137, MEM[(volatile long unsigned int *)1073840128B]
	ldr	r0, [r3, #0]	@ timer32_1_counter.1, timer32_1_counter
	adds	r2, r0, #1	@ timer32_1_counter.2, timer32_1_counter.1,
	str	r2, [r3, #0]	@ timer32_1_counter.2, timer32_1_counter
	bx	lr	@
.L31:
	.align	2
.L30:
	.word	1073840128
	.word	.LANCHOR1
	.size	TIMER32_1_IRQHandler, .-TIMER32_1_IRQHandler
	.section	.text.timer32Enable,"ax",%progbits
	.align	1
	.global	timer32Enable
	.thumb
	.thumb_func
	.ascii	"timer32Enable\000"
	.align	2
	.word	4278190096
	.type	timer32Enable, %function
timer32Enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L33	@ timerNum,
	ldr	r3, .L35	@ tmp135,
	movs	r2, #1	@ tmp136,
	str	r2, [r3, #0]	@ tmp136, MEM[(volatile long unsigned int *)1073823748B]
	bx	lr	@
.L33:
	cmp	r0, #1	@ timerNum,
	itt	eq
	ldreq	r3, .L35+4	@ tmp137,
	streq	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073840132B]
	bx	lr	@
.L36:
	.align	2
.L35:
	.word	1073823748
	.word	1073840132
	.size	timer32Enable, .-timer32Enable
	.section	.text.timer32Disable,"ax",%progbits
	.align	1
	.global	timer32Disable
	.thumb
	.thumb_func
	.ascii	"timer32Disable\000"
	.align	2
	.word	4278190096
	.type	timer32Disable, %function
timer32Disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L38	@ timerNum,
	ldr	r3, .L40	@ tmp135,
	str	r0, [r3, #0]	@ timerNum, MEM[(volatile long unsigned int *)1073823748B]
	bx	lr	@
.L38:
	cmp	r0, #1	@ timerNum,
	bne	.L37	@,
	ldr	r0, .L40+4	@ tmp137,
	movs	r2, #0	@ tmp138,
	str	r2, [r0, #0]	@ tmp138, MEM[(volatile long unsigned int *)1073840132B]
.L37:
	bx	lr	@
.L41:
	.align	2
.L40:
	.word	1073823748
	.word	1073840132
	.size	timer32Disable, .-timer32Disable
	.section	.text.timer32Reset,"ax",%progbits
	.align	1
	.global	timer32Reset
	.thumb
	.thumb_func
	.ascii	"timer32Reset\000"
	.align	2
	.word	4278190096
	.type	timer32Reset, %function
timer32Reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L43	@ timerNum,
	ldr	r3, .L45	@ tmp139,
	ldr	r0, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073823748B]
	orr	r2, r0, #2	@ regVal, regVal,
	str	r2, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073823748B]
	bx	lr	@
.L43:
	cmp	r0, #1	@ timerNum,
	bne	.L42	@,
	ldr	r3, .L45+4	@ tmp141,
	ldr	r2, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073840132B]
	orr	r1, r2, #2	@ regVal, regVal,
	str	r1, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073840132B]
.L42:
	bx	lr	@
.L46:
	.align	2
.L45:
	.word	1073823748
	.word	1073840132
	.size	timer32Reset, .-timer32Reset
	.section	.text.timer32Init,"ax",%progbits
	.align	1
	.global	timer32Init
	.thumb
	.thumb_func
	.ascii	"timer32Init\000"
	.align	2
	.word	4278190092
	.type	timer32Init, %function
timer32Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L48	@ timerInterval,
	ldr	r2, .L52	@ tmp141,
	mov	r1, #7200	@ tmp142,
	ldr	r3, [r2, #0]	@ D.4613, MEM[(volatile long unsigned int *)1074036856B]
	udiv	r1, r1, r3	@ timerInterval, tmp142, D.4613
.L48:
	cbnz	r0, .L49	@ timerNum,
	ldr	r3, .L52+4	@ tmp143,
	ldr	r2, [r3, #0]	@ D.4617, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r2, #512	@ D.4618, D.4617,
	str	r2, [r3, #0]	@ D.4618, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r2, .L52+8	@ tmp145,
	ldr	r3, .L52+12	@ tmp147,
	str	r0, [r2, #0]	@ timerNum, timer32_0_counter
	movs	r0, #3	@ tmp149,
	str	r1, [r3, #0]	@ timerInterval, MEM[(volatile long unsigned int *)1073823768B]
	str	r0, [r3, #-4]	@ tmp149, MEM[(volatile long unsigned int *)1073823764B]
	movs	r0, #43	@,
	b	.L51	@
.L49:
	cmp	r0, #1	@ timerNum,
	bne	.L47	@,
	ldr	r3, .L52+4	@ tmp150,
	ldr	r2, [r3, #0]	@ D.4624, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r2, #1024	@ D.4625, D.4624,
	str	r0, [r3, #0]	@ D.4625, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r0, .L52+16	@ tmp154,
	ldr	r3, .L52+20	@ tmp152,
	movs	r2, #0	@ tmp153,
	str	r2, [r3, #0]	@ tmp153, timer32_1_counter
	str	r1, [r0, #0]	@ timerInterval, MEM[(volatile long unsigned int *)1073840152B]
	movs	r1, #3	@ tmp156,
	str	r1, [r0, #-4]	@ tmp156, MEM[(volatile long unsigned int *)1073840148B]
	movs	r0, #44	@,
.L51:
	b	NVIC_EnableIRQ	@
.L47:
	bx	lr	@
.L53:
	.align	2
.L52:
	.word	1074036856
	.word	1074036864
	.word	.LANCHOR0
	.word	1073823768
	.word	1073840152
	.word	.LANCHOR1
	.size	timer32Init, .-timer32Init
	.section	.text.timer32SetIntHandler,"ax",%progbits
	.align	1
	.global	timer32SetIntHandler
	.thumb
	.thumb_func
	.ascii	"timer32SetIntHandler\000"
	.align	2
	.word	4278190104
	.type	timer32SetIntHandler, %function
timer32SetIntHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L55	@ tmp135,
	str	r0, [r3, #0]	@ handler, interruptHandler0
	bx	lr	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR2
	.size	timer32SetIntHandler, .-timer32SetIntHandler
	.section	.text.timer32GetCount,"ax",%progbits
	.align	1
	.global	timer32GetCount
	.thumb
	.thumb_func
	.ascii	"timer32GetCount\000"
	.align	2
	.word	4278190096
	.type	timer32GetCount, %function
timer32GetCount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L58	@ timerNum,
	ldr	r3, .L60	@ tmp137,
	ldr	r0, [r3, #0]	@ D.4608, timer32_0_counter
	bx	lr	@
.L58:
	ldr	r0, .L60+4	@ tmp138,
	ldr	r0, [r0, #0]	@ D.4608, timer32_1_counter
	bx	lr	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	timer32GetCount, .-timer32GetCount
	.section	.text.timer32ResetCounter,"ax",%progbits
	.align	1
	.global	timer32ResetCounter
	.thumb
	.thumb_func
	.ascii	"timer32ResetCounter\000"
	.align	2
	.word	4278190100
	.type	timer32ResetCounter, %function
timer32ResetCounter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L63	@ timerNum,
	ldr	r3, .L65	@ tmp135,
	str	r0, [r3, #0]	@ timerNum, timer32_0_counter
	bx	lr	@
.L63:
	cmp	r0, #1	@ timerNum,
	bne	.L62	@,
	ldr	r0, .L65+4	@ tmp137,
	movs	r2, #0	@ tmp138,
	str	r2, [r0, #0]	@ tmp138, timer32_1_counter
.L62:
	bx	lr	@
.L66:
	.align	2
.L65:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	timer32ResetCounter, .-timer32ResetCounter
	.global	interruptHandler0
	.global	timer32_1_counter
	.global	timer32_0_counter
	.section	.bss.timer32_0_counter,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	timer32_0_counter, %object
	.size	timer32_0_counter, 4
timer32_0_counter:
	.space	4
	.section	.bss.interruptHandler0,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	interruptHandler0, %object
	.size	interruptHandler0, 4
interruptHandler0:
	.space	4
	.section	.bss.timer32_1_counter,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	timer32_1_counter, %object
	.size	timer32_1_counter, 4
timer32_1_counter:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
