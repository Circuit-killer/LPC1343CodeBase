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
	.file	"uart.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed uart.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip uart.o -Os -Wall -ffunction-sections
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

	.section	.text.UART_IRQHandler,"ax",%progbits
	.align	1
	.global	UART_IRQHandler
	.thumb
	.thumb_func
	.ascii	"UART_IRQHandler\000"
	.align	2
	.word	4278190096
	.type	UART_IRQHandler, %function
UART_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L9	@ tmp154,
	ldr	r3, [r0, #0]	@ D.4816, MEM[(volatile long unsigned int *)1073774600B]
	and	r3, r3, #14	@ IIRValue, D.4816,
	cmp	r3, #6	@ IIRValue,
	bne	.L2	@,
	ldr	r2, .L9+4	@ tmp156,
	ldr	r1, [r2, #0]	@ D.4820, MEM[(volatile long unsigned int *)1073774612B]
	uxtb	r3, r1	@ LSRValue, D.4820
	tst	r3, #158	@ LSRValue,
	beq	.L3	@,
	ldr	r0, .L9+8	@ tmp158,
	str	r3, [r0, #8]	@ LSRValue, pcb.status
	ldr	r3, .L9+12	@ tmp159,
	ldr	r3, [r3, #0]	@ D.4827, MEM[(volatile long unsigned int *)1073774592B]
	bx	lr	@
.L3:
	lsls	r3, r3, #31	@, LSRValue,
	bpl	.L1	@,
	b	.L8	@
.L2:
	cmp	r3, #4	@ IIRValue,
	bne	.L5	@,
.L8:
	ldr	r2, .L9+12	@ tmp163,
	ldr	r1, [r2, #0]	@ D.4838,
	uxtb	r0, r1	@, D.4838
	b	uartRxBufferWrite	@
.L5:
	cmp	r3, #12	@ IIRValue,
	bne	.L6	@,
	ldr	r3, .L9+8	@ tmp165,
	ldr	r1, [r3, #8]	@ pcb.status, pcb.status
	orr	r0, r1, #256	@ tmp168, pcb.status,
	str	r0, [r3, #8]	@ tmp168, pcb.status
	bx	lr	@
.L6:
	cmp	r3, #2	@ IIRValue,
	bne	.L1	@,
	ldr	r0, .L9+4	@ tmp169,
	ldr	r3, .L9+8	@ tmp176,
	ldr	r2, [r0, #0]	@ D.4848, MEM[(volatile long unsigned int *)1073774612B]
	lsls	r2, r2, #26	@, D.4848,
	bpl	.L7	@,
	movs	r1, #0	@ tmp173,
	str	r1, [r3, #12]	@ tmp173, pcb.pending_tx_data
	bx	lr	@
.L7:
	movs	r2, #1	@ tmp175,
	str	r2, [r3, #12]	@ tmp175, pcb.pending_tx_data
.L1:
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	1073774600
	.word	1073774612
	.word	.LANCHOR0
	.word	1073774592
	.size	UART_IRQHandler, .-UART_IRQHandler
	.section	.text.uartGetPCB,"ax",%progbits
	.align	1
	.global	uartGetPCB
	.thumb
	.thumb_func
	.ascii	"uartGetPCB\000"
	.align	2
	.word	4278190092
	.type	uartGetPCB, %function
uartGetPCB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L12	@,
	bx	lr	@
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	uartGetPCB, .-uartGetPCB
	.section	.text.uartInit,"ax",%progbits
	.align	1
	.global	uartInit
	.thumb
	.thumb_func
	.ascii	"uartInit\000"
	.align	2
	.word	4278190092
	.type	uartInit, %function
uartInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L20	@ tmp160,
	push	{r3, r4, r5, lr}	@
	mov	r4, #16384	@ tmp161,
	str	r4, [r2, #132]	@ tmp161, MEM[(struct NVIC_Type *)3758153984B].ICER
	ldr	r4, .L20+4	@ tmp162,
	movs	r1, #0	@,
	mov	r2, #532	@,
	mov	r5, r0	@ baudrate, baudrate
	mov	r0, r4	@, tmp162
	bl	memset	@
	movs	r3, #0	@ tmp164,
	str	r3, [r4, #12]	@ tmp164, pcb.pending_tx_data
	bl	uartRxBufferInit	@
	ldr	r3, .L20+8	@ tmp165,
	ldr	r1, [r3, #0]	@ D.4765, MEM[(volatile long unsigned int *)1074020516B]
	bic	r0, r1, #7	@ D.4766, D.4765,
	str	r0, [r3, #0]	@ D.4766, MEM[(volatile long unsigned int *)1074020516B]
	ldr	r2, [r3, #0]	@ D.4767, MEM[(volatile long unsigned int *)1074020516B]
	orr	r1, r2, #1	@ D.4768, D.4767,
	str	r1, [r3, #0]	@ D.4768, MEM[(volatile long unsigned int *)1074020516B]
	ldr	r0, [r3, #4]	@ D.4770, MEM[(volatile long unsigned int *)1074020520B]
	bic	r2, r0, #7	@ D.4771, D.4770,
	str	r2, [r3, #4]	@ D.4771, MEM[(volatile long unsigned int *)1074020520B]
	ldr	r1, [r3, #4]	@ D.4772, MEM[(volatile long unsigned int *)1074020520B]
	orr	r0, r1, #1	@ D.4773, D.4772,
	ldr	r1, .L20+12	@ tmp173,
	str	r0, [r3, #4]	@ D.4773, MEM[(volatile long unsigned int *)1074020520B]
	ldr	r2, [r1, #0]	@ D.4775, MEM[(volatile long unsigned int *)1074036864B]
	movs	r3, #1	@ tmp176,
	orr	r0, r2, #4096	@ D.4776, D.4775,
	ldr	r2, .L20+16	@ tmp175,
	str	r0, [r1, #0]	@ D.4776, MEM[(volatile long unsigned int *)1074036864B]
	str	r3, [r2, #0]	@ tmp176, MEM[(volatile long unsigned int *)1074036888B]
	ldr	r3, .L20+20	@ tmp177,
	movs	r1, #131	@ tmp178,
	str	r1, [r3, #0]	@ tmp178, MEM[(volatile long unsigned int *)1073774604B]
	ldr	r1, [r2, #0]	@ regVal, MEM[(volatile long unsigned int *)1074036888B]
	subs	r2, r2, #32	@ tmp180, tmp180,
	ldr	r2, [r2, #0]	@ D.4780, MEM[(volatile long unsigned int *)1074036856B]
	ldr	r0, .L20+24	@ tmp182,
	muls	r2, r0, r2	@ tmp181, tmp182
	udiv	r2, r2, r1	@ tmp184, tmp181, regVal
	lsrs	r1, r2, #4	@ tmp185, tmp184,
	udiv	r2, r1, r5	@ fDiv, tmp185, baudrate
	ldr	r1, .L20+28	@ tmp186,
	lsrs	r0, r2, #8	@ D.4785, fDiv,
	uxtb	r2, r2	@ D.4787, fDiv
	str	r0, [r1, #0]	@ D.4785, MEM[(volatile long unsigned int *)1073774596B]
	str	r2, [r1, #-4]	@ D.4787, MEM[(volatile long unsigned int *)1073774592B]
	movs	r0, #3	@ tmp189,
	movs	r2, #7	@ tmp191,
	str	r0, [r3, #0]	@ tmp189, MEM[(volatile long unsigned int *)1073774604B]
	str	r2, [r3, #-4]	@ tmp191, MEM[(volatile long unsigned int *)1073774600B]
	adds	r3, r3, #8	@ tmp192, tmp190,
	ldr	r3, [r3, #0]	@ regVal, MEM[(volatile long unsigned int *)1073774612B]
.L15:
	ldr	r3, .L20+32	@ tmp193,
	ldr	r1, [r3, #0]	@ D.4790, MEM[(volatile long unsigned int *)1073774612B]
	and	r0, r1, #96	@ tmp194, D.4790,
	cmp	r0, #96	@ tmp194,
	bne	.L15	@,
	b	.L19	@
.L17:
	ldr	r2, .L20+36	@ tmp195,
	ldr	r3, [r2, #0]	@ regVal, MEM[(volatile long unsigned int *)1073774592B]
.L19:
	ldr	r1, .L20+32	@ tmp196,
	ldr	r0, [r1, #0]	@ D.4792, MEM[(volatile long unsigned int *)1073774612B]
	lsls	r1, r0, #31	@, D.4792,
	bmi	.L17	@,
	movs	r2, #1	@ tmp199,
	ldr	r1, .L20	@ tmp202,
	ldr	r3, .L20+28	@ tmp204,
	strb	r2, [r4, #0]	@ tmp199, pcb.initialised
	mov	r0, #16384	@ tmp203,
	movs	r2, #5	@ tmp205,
	str	r5, [r4, #4]	@ baudrate, pcb.baudrate
	str	r0, [r1, #4]	@ tmp203, MEM[(struct NVIC_Type *)3758153984B].ISER
	str	r2, [r3, #0]	@ tmp205, MEM[(volatile long unsigned int *)1073774596B]
	pop	{r3, r4, r5, pc}	@
.L21:
	.align	2
.L20:
	.word	-536813312
	.word	.LANCHOR0
	.word	1074020516
	.word	1074036864
	.word	1074036888
	.word	1073774604
	.word	72000000
	.word	1073774596
	.word	1073774612
	.word	1073774592
	.size	uartInit, .-uartInit
	.section	.text.uartSend,"ax",%progbits
	.align	1
	.global	uartSend
	.thumb
	.thumb_func
	.ascii	"uartSend\000"
	.align	2
	.word	4278190092
	.type	uartSend, %function
uartSend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	.L23	@
.L25:
	ldr	r2, .L27	@ tmp166,
	ldr	r3, [r2, #0]	@ D.4758, MEM[(volatile long unsigned int *)1073774612B]
	lsls	r3, r3, #26	@, D.4758,
	bpl	.L25	@,
	ldrb	r2, [r0], #1	@ zero_extendqisi2	@ D.4762, MEM[base: bufferPtr_1, offset: 0B]
	ldr	r3, .L27+4	@ tmp168,
	subs	r1, r1, #1	@ length, length,
	str	r2, [r3, #0]	@ D.4762, MEM[(volatile long unsigned int *)1073774592B]
.L23:
	cmp	r1, #0	@ length
	bne	.L25	@
	bx	lr	@
.L28:
	.align	2
.L27:
	.word	1073774612
	.word	1073774592
	.size	uartSend, .-uartSend
	.section	.text.uartSendByte,"ax",%progbits
	.align	1
	.global	uartSendByte
	.thumb
	.thumb_func
	.ascii	"uartSendByte\000"
	.align	2
	.word	4278190096
	.type	uartSendByte, %function
uartSendByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L30:
	ldr	r1, .L32	@ tmp138,
	ldr	r3, [r1, #0]	@ D.4752, MEM[(volatile long unsigned int *)1073774612B]
	lsls	r2, r3, #26	@, D.4752,
	bpl	.L30	@,
	ldr	r2, .L32+4	@ tmp140,
	str	r0, [r2, #0]	@ byte, MEM[(volatile long unsigned int *)1073774592B]
	bx	lr	@
.L33:
	.align	2
.L32:
	.word	1073774612
	.word	1073774592
	.size	uartSendByte, .-uartSendByte
	.section	.bss.pcb,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pcb, %object
	.size	pcb, 532
pcb:
	.space	532
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
