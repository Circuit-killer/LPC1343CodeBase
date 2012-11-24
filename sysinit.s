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
	.file	"sysinit.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed sysinit.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip sysinit.o -Os -Wall
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

	.section	.text.systemInit,"ax",%progbits
	.align	1
	.global	systemInit
	.thumb
	.thumb_func
	.ascii	"systemInit\000"
	.align	2
	.word	4278190092
	.type	systemInit, %function
systemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	cpuInit	@
	movs	r0, #1	@,
	bl	systickInit	@
	bl	gpioInit	@
	bl	pmuInit	@
	movs	r1, #10	@,
	movs	r0, #2	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r0, .L5	@ tmp138,
	movw	r2, #4095	@ tmp139,
	str	r2, [r0, #0]	@ tmp139, MEM[(volatile long unsigned int *)1342312448B]
	bl	mcp24aaInit	@
	bl	systickGetTicks	@
	ldr	r3, .L5+4	@ tmp140,
	mov	r4, #500	@ ivtmp.8,
	str	r0, [r3, #0]	@ lastTick.2, lastTick
	bl	CDC_Init	@
	bl	USB_Init	@
	movs	r0, #1	@,
	bl	USB_Connect	@
.L3:
	ldr	r3, .L5+8	@ tmp141,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cbnz	r1, .L2	@ USB_Configuration,
	movs	r0, #10	@,
	bl	systickDelay	@
	subs	r4, r4, #1	@ ivtmp.8, ivtmp.8,
	bne	.L3	@,
.L2:
	pop	{r4, lr}	@
	b	cmdInit	@
.L6:
	.align	2
.L5:
	.word	1342312448
	.word	lastTick
	.word	USB_Configuration
	.size	systemInit, .-systemInit
	.section	.text.__putchar,"ax",%progbits
	.align	1
	.global	__putchar
	.thumb
	.thumb_func
	.ascii	"__putchar\000"
	.align	2
	.word	4278190092
	.type	__putchar, %function
__putchar:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	__putchar, .-__putchar
	.section	.text.puts,"ax",%progbits
	.align	1
	.global	puts
	.thumb
	.thumb_func
	.ascii	"puts\000"
	.align	2
	.word	4278190088
	.type	puts, %function
puts:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	ldr	r1, .L15	@ tmp168,
	sub	sp, sp, #68	@,,
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cbz	r3, .L9	@ USB_Configuration,
	mov	r4, r0	@ ivtmp.26, str
	b	.L10	@
.L11:
	bl	cdcBufferWrite	@
.L10:
	ldrb	r0, [r4], #1	@ zero_extendqisi2	@ D.5513, MEM[base: D.5574_5, offset: 0B]
	cmp	r0, #0	@ D.5513
	bne	.L11	@
	bl	systickGetTicks	@
	ldr	r5, .L15+4	@ tmp171,
	mov	r4, r0	@ currentTick,
	ldr	r2, [r5, #0]	@ lastTick.1, lastTick
	cmp	r0, r2	@ currentTick, lastTick.1
	bne	.L14	@,
	b	.L9	@
.L13:
	movs	r1, #64	@,
	mov	r0, sp	@,
	bl	cdcBufferReadLen	@
	mov	r1, sp	@,
	mov	r2, r0	@ bytesRead,
	movs	r0, #131	@,
	bl	USB_WriteEP	@
	movs	r0, #1	@,
	bl	systickDelay	@
.L14:
	bl	cdcBufferDataPending	@
	cmp	r0, #0	@
	bne	.L13	@
	str	r4, [r5, #0]	@ currentTick, lastTick
.L9:
	movs	r0, #0	@,
	add	sp, sp, #68	@,,
	pop	{r4, r5, pc}
.L16:
	.align	2
.L15:
	.word	USB_Configuration
	.word	lastTick
	.size	puts, .-puts
	.comm	lastTick,4,4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
