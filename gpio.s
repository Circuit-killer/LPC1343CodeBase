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
	.file	"gpio.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed gpio.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip gpio.o -Os -Wall -ffunction-sections
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
	lsrs	r2, r0, #5	@ D.4835, IRQn,
	and	r1, r0, #31	@ tmp143, IRQn,
	movs	r0, #1	@ tmp144,
	lsl	r0, r0, r1	@ D.4840, tmp144, tmp143
	ldr	r3, .L2	@ tmp145,
	str	r0, [r3, r2, lsl #2]	@ D.4840, MEM[(struct NVIC_Type *)3758153984B].ISER
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	-536813312
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.gpioInit,"ax",%progbits
	.align	1
	.global	gpioInit
	.thumb
	.thumb_func
	.ascii	"gpioInit\000"
	.align	2
	.word	4278190092
	.type	gpioInit, %function
gpioInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L5	@ tmp136,
	push	{r3, lr}	@
	ldr	r2, [r1, #0]	@ D.4830, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r2, #64	@ D.4831, D.4830,
	str	r0, [r1, #0]	@ D.4831, MEM[(volatile long unsigned int *)1074036864B]
	movs	r0, #56	@,
	bl	NVIC_EnableIRQ	@
	movs	r0, #55	@,
	bl	NVIC_EnableIRQ	@
	movs	r0, #54	@,
	bl	NVIC_EnableIRQ	@
	movs	r0, #53	@,
	bl	NVIC_EnableIRQ	@
	ldr	r3, .L5+4	@ tmp138,
	movs	r2, #1	@ tmp139,
	strb	r2, [r3, #0]	@ tmp139, _gpioInitialised
	pop	{r3, pc}	@
.L6:
	.align	2
.L5:
	.word	1074036864
	.word	.LANCHOR0
	.size	gpioInit, .-gpioInit
	.section	.text.gpioSetDir,"ax",%progbits
	.align	1
	.global	gpioSetDir
	.thumb
	.thumb_func
	.ascii	"gpioSetDir\000"
	.align	2
	.word	4278190092
	.type	gpioSetDir, %function
gpioSetDir:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14	@ tmp151,
	push	{r4, r5, r6, lr}	@
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	mov	r4, r0	@ portNum, portNum
	mov	r5, r1	@ bitPos, bitPos
	mov	r6, r2	@ dir, dir
	cbnz	r3, .L8	@ _gpioInitialised,
	bl	gpioInit	@
.L8:
	subs	r4, r4, #1	@ csui.17, portNum,
	cmp	r4, #2	@ csui.17,
	itet	ls
	ldrls	r3, .L14+4	@ tmp153,
	ldrhi	r3, .L14+8	@ gpiodir,
	ldrls	r3, [r3, r4, lsl #2]	@ gpiodir, CSWTCH.18
	cmp	r6, #1	@ dir,
	ldr	r2, [r3, #0]	@ D.4817,* gpiodir
	bne	.L10	@,
	lsl	r5, r6, r5	@ tmp154, dir, bitPos
	orrs	r5, r5, r2	@, D.4822, tmp154, D.4817
	b	.L13	@
.L10:
	movs	r1, #1	@ tmp157,
	lsl	r0, r1, r5	@ tmp156, tmp157, bitPos
	bic	r5, r2, r0	@ D.4828, D.4824, tmp156
.L13:
	str	r5, [r3, #0]	@ D.4828,* gpiodir
	pop	{r4, r5, r6, pc}	@
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1342210048
	.size	gpioSetDir, .-gpioSetDir
	.section	.text.gpioSetInterrupt,"ax",%progbits
	.align	1
	.global	gpioSetInterrupt
	.thumb
	.thumb_func
	.ascii	"gpioSetInterrupt\000"
	.align	2
	.word	4278190100
	.type	gpioSetInterrupt, %function
gpioSetInterrupt:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r4, r0	@ portNum, portNum
	ldr	r0, .L26	@ tmp171,
	mov	r8, r3	@ edge, edge
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	mov	r5, r1	@ bitPos, bitPos
	mov	r6, r2	@ sense, sense
	ldrb	r7, [sp, #24]	@ zero_extendqisi2	@ event, event
	cbnz	r3, .L17	@ _gpioInitialised,
	bl	gpioInit	@
.L17:
	subs	r4, r4, #1	@ csui.19, portNum,
	cmp	r4, #2	@ csui.19,
	bhi	.L24	@,
	ldr	r1, .L26+4	@ tmp173,
	ldr	r3, .L26+8	@ tmp174,
	ldr	r2, .L26+12	@ tmp175,
	ldr	r1, [r1, r4, lsl #2]	@ gpiois, CSWTCH.20
	ldr	r0, [r3, r4, lsl #2]	@ gpioibe, CSWTCH.21
	ldr	r2, [r2, r4, lsl #2]	@ gpioiev, CSWTCH.22
	b	.L18	@
.L24:
	ldr	r2, .L26+16	@ gpioiev,
	ldr	r0, .L26+20	@ gpioibe,
	ldr	r1, .L26+24	@ gpiois,
.L18:
	movs	r4, #1	@ tmp184,
	cbnz	r6, .L19	@ sense,
	lsl	r4, r4, r5	@ D.4780, tmp184, bitPos
	ldr	r6, [r1, #0]	@ D.4778, *gpiois_1
	mvns	r3, r4	@ D.4782, D.4780
	ands	r6, r6, r3	@, D.4783, D.4778, D.4782
	str	r6, [r1, #0]	@ D.4783, *gpiois_1
	cmp	r8, #0	@ edge
	bne	.L20	@
	ldr	r1, [r0, #0]	@ D.4787, *gpioibe_2
	ands	r3, r3, r1	@, D.4789, D.4782, D.4787
	str	r3, [r0, #0]	@ D.4789, *gpioibe_2
	b	.L21	@
.L20:
	ldr	r3, [r0, #0]	@ D.4791, *gpioibe_2
	orrs	r4, r4, r3	@, D.4794, D.4780, D.4791
	str	r4, [r0, #0]	@ D.4794, *gpioibe_2
	b	.L21	@
.L19:
	lsl	r4, r4, r5	@ tmp177, tmp184, bitPos
	ldr	r0, [r1, #0]	@ D.4796, *gpiois_1
	orrs	r4, r4, r0	@, D.4797, tmp177, D.4796
	str	r4, [r1, #0]	@ D.4797, *gpiois_1
.L21:
	cmp	r7, #1	@ event,
	ldr	r3, [r2, #0]	@ D.4801,* gpioiev
	bne	.L22	@,
	lsl	r5, r7, r5	@ tmp179, event, bitPos
	bic	r5, r3, r5	@ D.4803, D.4801, tmp179
	b	.L25	@
.L22:
	movs	r0, #1	@ tmp183,
	lsl	r1, r0, r5	@ tmp182, tmp183, bitPos
	orr	r5, r3, r1	@ D.4807, D.4805, tmp182
.L25:
	str	r5, [r2, #0]	@ D.4807,* gpioiev
	pop	{r4, r5, r6, r7, r8, pc}	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	1342210060
	.word	1342210056
	.word	1342210052
	.size	gpioSetInterrupt, .-gpioSetInterrupt
	.section	.text.gpioIntEnable,"ax",%progbits
	.align	1
	.global	gpioIntEnable
	.thumb
	.thumb_func
	.ascii	"gpioIntEnable\000"
	.align	2
	.word	4278190096
	.type	gpioIntEnable, %function
gpioIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ portNum, portNum
	ldr	r0, .L37	@ tmp157,
	mov	r5, r1	@ bitPos, bitPos
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	cbnz	r3, .L29	@ _gpioInitialised,
	bl	gpioInit	@
.L29:
	cmp	r4, #3	@ portNum,
	bhi	.L28	@
	tbb	[pc, r4]	@ portNum
.L35:
	.byte	(.L31-.L35)/2
	.byte	(.L32-.L35)/2
	.byte	(.L33-.L35)/2
	.byte	(.L34-.L35)/2
	.align	1
.L31:
	ldr	r3, .L37+4	@ tmp159,
	b	.L36	@
.L32:
	ldr	r3, .L37+8	@ tmp163,
	b	.L36	@
.L33:
	ldr	r3, .L37+12	@ tmp167,
.L36:
	movs	r1, #1	@ tmp169,
	lsl	r5, r1, r5	@ tmp168, tmp169, bitPos
	ldr	r2, [r3, #0]	@ D.4763,
	orrs	r5, r5, r2	@, D.4764, tmp168, D.4763
	str	r5, [r3, #0]	@ D.4764,
	pop	{r3, r4, r5, pc}	@
.L34:
	movs	r1, #1	@ tmp173,
	lsl	r0, r1, r5	@ tmp172, tmp173, bitPos
	ldr	r3, .L37+16	@ tmp171,
	ldr	r2, [r3, #0]	@ D.4766, MEM[(volatile long unsigned int *)1342406672B]
	orr	r5, r0, r2	@ D.4767, tmp172, D.4766
	str	r5, [r3, #0]	@ D.4767, MEM[(volatile long unsigned int *)1342406672B]
.L28:
	pop	{r3, r4, r5, pc}	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	1342210064
	.word	1342275600
	.word	1342341136
	.word	1342406672
	.size	gpioIntEnable, .-gpioIntEnable
	.section	.text.gpioIntDisable,"ax",%progbits
	.align	1
	.global	gpioIntDisable
	.thumb
	.thumb_func
	.ascii	"gpioIntDisable\000"
	.align	2
	.word	4278190096
	.type	gpioIntDisable, %function
gpioIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ portNum, portNum
	ldr	r0, .L48	@ tmp161,
	mov	r5, r1	@ bitPos, bitPos
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	cbnz	r3, .L40	@ _gpioInitialised,
	bl	gpioInit	@
.L40:
	cmp	r4, #3	@ portNum,
	bhi	.L39	@
	tbb	[pc, r4]	@ portNum
.L46:
	.byte	(.L42-.L46)/2
	.byte	(.L43-.L46)/2
	.byte	(.L44-.L46)/2
	.byte	(.L45-.L46)/2
	.align	1
.L42:
	ldr	r3, .L48+4	@ tmp163,
	b	.L47	@
.L43:
	ldr	r3, .L48+8	@ tmp168,
	b	.L47	@
.L44:
	ldr	r3, .L48+12	@ tmp173,
.L47:
	movs	r1, #1	@ tmp175,
	lsl	r5, r1, r5	@ tmp174, tmp175, bitPos
	ldr	r2, [r3, #0]	@ D.4741,
	bic	r5, r2, r5	@ D.4742, D.4741, tmp174
	str	r5, [r3, #0]	@ D.4742,
	pop	{r3, r4, r5, pc}	@
.L45:
	movs	r1, #1	@ tmp180,
	lsl	r0, r1, r5	@ tmp179, tmp180, bitPos
	ldr	r3, .L48+16	@ tmp178,
	ldr	r2, [r3, #0]	@ D.4744, MEM[(volatile long unsigned int *)1342406672B]
	bic	r5, r2, r0	@ D.4745, D.4744, tmp179
	str	r5, [r3, #0]	@ D.4745, MEM[(volatile long unsigned int *)1342406672B]
.L39:
	pop	{r3, r4, r5, pc}	@
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.word	1342210064
	.word	1342275600
	.word	1342341136
	.word	1342406672
	.size	gpioIntDisable, .-gpioIntDisable
	.section	.text.gpioIntStatus,"ax",%progbits
	.align	1
	.global	gpioIntStatus
	.thumb
	.thumb_func
	.ascii	"gpioIntStatus\000"
	.align	2
	.word	4278190096
	.type	gpioIntStatus, %function
gpioIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ portNum, portNum
	ldr	r0, .L60	@ tmp159,
	mov	r5, r1	@ bitPos, bitPos
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	cbnz	r3, .L51	@ _gpioInitialised,
	bl	gpioInit	@
.L51:
	cmp	r4, #3	@ portNum,
	bhi	.L58	@
	tbb	[pc, r4]	@ portNum
.L57:
	.byte	(.L53-.L57)/2
	.byte	(.L54-.L57)/2
	.byte	(.L55-.L57)/2
	.byte	(.L56-.L57)/2
	.align	1
.L53:
	ldr	r3, .L60+4	@ tmp161,
	b	.L59	@
.L54:
	ldr	r3, .L60+8	@ tmp166,
	b	.L59	@
.L55:
	ldr	r3, .L60+12	@ tmp171,
	b	.L59	@
.L56:
	ldr	r3, .L60+16	@ tmp176,
.L59:
	movs	r2, #1	@ tmp178,
	lsl	r5, r2, r5	@ tmp177, tmp178, bitPos
	ldr	r1, [r3, #0]	@ D.4719,
	tst	r5, r1	@ tmp177, D.4719
	ite	eq	@
	moveq	r0, #0	@, regVal
	movne	r0, #1	@, regVal
	pop	{r3, r4, r5, pc}	@
.L58:
	movs	r0, #0	@ regVal,
	pop	{r3, r4, r5, pc}	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.word	1342210072
	.word	1342275608
	.word	1342341144
	.word	1342406680
	.size	gpioIntStatus, .-gpioIntStatus
	.section	.text.gpioIntClear,"ax",%progbits
	.align	1
	.global	gpioIntClear
	.thumb
	.thumb_func
	.ascii	"gpioIntClear\000"
	.align	2
	.word	4278190096
	.type	gpioIntClear, %function
gpioIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ portNum, portNum
	ldr	r0, .L71	@ tmp157,
	mov	r5, r1	@ bitPos, bitPos
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	cbnz	r3, .L63	@ _gpioInitialised,
	bl	gpioInit	@
.L63:
	cmp	r4, #3	@ portNum,
	bhi	.L62	@
	tbb	[pc, r4]	@ portNum
.L69:
	.byte	(.L65-.L69)/2
	.byte	(.L66-.L69)/2
	.byte	(.L67-.L69)/2
	.byte	(.L68-.L69)/2
	.align	1
.L65:
	ldr	r3, .L71+4	@ tmp159,
	b	.L70	@
.L66:
	ldr	r3, .L71+8	@ tmp163,
	b	.L70	@
.L67:
	ldr	r3, .L71+12	@ tmp167,
.L70:
	movs	r1, #1	@ tmp169,
	lsl	r5, r1, r5	@ tmp168, tmp169, bitPos
	ldr	r2, [r3, #0]	@ D.4688,
	orrs	r5, r5, r2	@, D.4689, tmp168, D.4688
	str	r5, [r3, #0]	@ D.4689,
	pop	{r3, r4, r5, pc}	@
.L68:
	movs	r1, #1	@ tmp173,
	lsl	r0, r1, r5	@ tmp172, tmp173, bitPos
	ldr	r3, .L71+16	@ tmp171,
	ldr	r2, [r3, #0]	@ D.4691, MEM[(volatile long unsigned int *)1342406684B]
	orr	r5, r0, r2	@ D.4692, tmp172, D.4691
	str	r5, [r3, #0]	@ D.4692, MEM[(volatile long unsigned int *)1342406684B]
.L62:
	pop	{r3, r4, r5, pc}	@
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.word	1342210076
	.word	1342275612
	.word	1342341148
	.word	1342406684
	.size	gpioIntClear, .-gpioIntClear
	.section	.text.PIOINT1_IRQHandler,"ax",%progbits
	.align	1
	.global	PIOINT1_IRQHandler
	.thumb
	.thumb_func
	.ascii	"PIOINT1_IRQHandler\000"
	.align	2
	.word	4278190100
	.type	PIOINT1_IRQHandler, %function
PIOINT1_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #1	@,
	push	{r3, lr}	@
	mov	r1, r0	@,
	bl	gpioIntStatus	@
	cbz	r0, .L73	@,
	movs	r0, #1	@,
	mov	r1, r0	@,
	pop	{r3, lr}	@
	b	gpioIntClear	@
.L73:
	pop	{r3, pc}	@
	.size	PIOINT1_IRQHandler, .-PIOINT1_IRQHandler
	.section	.text.gpioSetPullup,"ax",%progbits
	.align	1
	.global	gpioSetPullup
	.thumb
	.thumb_func
	.ascii	"gpioSetPullup\000"
	.align	2
	.word	4278190096
	.type	gpioSetPullup, %function
gpioSetPullup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ ioconReg, ioconReg
	ldr	r0, .L77	@ tmp142,
	mov	r5, r1	@ mode, mode
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _gpioInitialised, _gpioInitialised
	cbnz	r3, .L76	@ _gpioInitialised,
	bl	gpioInit	@
.L76:
	ldr	r0, [r4, #0]	@ D.4669, *ioconReg_3(D)
	bic	r3, r0, #24	@ D.4670, D.4669,
	str	r3, [r4, #0]	@ D.4670, *ioconReg_3(D)
	ldr	r2, [r4, #0]	@ D.4671, *ioconReg_3(D)
	orr	r1, r5, r2	@ D.4673, mode, D.4671
	str	r1, [r4, #0]	@ D.4673, *ioconReg_3(D)
	pop	{r3, r4, r5, pc}	@
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.size	gpioSetPullup, .-gpioSetPullup
	.section	.bss._gpioInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_gpioInitialised, %object
	.size	_gpioInitialised, 1
_gpioInitialised:
	.space	1
	.section	.rodata.CSWTCH.20,"a",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	CSWTCH.20, %object
	.size	CSWTCH.20, 12
CSWTCH.20:
	.word	1342275588
	.word	1342341124
	.word	1342406660
	.section	.rodata.CSWTCH.21,"a",%progbits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	CSWTCH.21, %object
	.size	CSWTCH.21, 12
CSWTCH.21:
	.word	1342275592
	.word	1342341128
	.word	1342406664
	.section	.rodata.CSWTCH.22,"a",%progbits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	CSWTCH.22, %object
	.size	CSWTCH.22, 12
CSWTCH.22:
	.word	1342275596
	.word	1342341132
	.word	1342406668
	.section	.rodata.CSWTCH.18,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.18, %object
	.size	CSWTCH.18, 12
CSWTCH.18:
	.word	1342275584
	.word	1342341120
	.word	1342406656
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
