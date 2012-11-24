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
	.file	"uart_buf.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed uart_buf.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip uart_buf.o -Os -Wall
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

	.section	.text.uartRxBufferInit,"ax",%progbits
	.align	1
	.global	uartRxBufferInit
	.thumb
	.thumb_func
	.ascii	"uartRxBufferInit\000"
	.align	2
	.word	4278190100
	.type	uartRxBufferInit, %function
uartRxBufferInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	uartGetPCB	@
	movs	r3, #0	@ tmp135,
	strb	r3, [r0, #17]	@ tmp135, pcb_1->rxfifo.len
	pop	{r3, pc}	@
	.size	uartRxBufferInit, .-uartRxBufferInit
	.section	.text.uartRxBufferRead,"ax",%progbits
	.align	1
	.global	uartRxBufferRead
	.thumb
	.thumb_func
	.ascii	"uartRxBufferRead\000"
	.align	2
	.word	4278190100
	.type	uartRxBufferRead, %function
uartRxBufferRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	uartGetPCB	@
	mov	r3, r0	@ pcb,
	ldrb	ip, [r0, #19]	@ zero_extendqisi2	@ pcb_1->rxfifo.rd_ptr, pcb_1->rxfifo.rd_ptr
	ldrb	r1, [r3, #19]	@ zero_extendqisi2	@ pcb_1->rxfifo.rd_ptr, pcb_1->rxfifo.rd_ptr
	add	r0, r0, ip	@ tmp147, pcb, pcb_1->rxfifo.rd_ptr
	adds	r2, r1, #1	@ tmp150, pcb_1->rxfifo.rd_ptr,
	strb	r2, [r3, #19]	@ D.4605, pcb_1->rxfifo.rd_ptr
	ldrb	r1, [r3, #17]	@ zero_extendqisi2	@ pcb_1->rxfifo.len, pcb_1->rxfifo.len
	ldrb	r0, [r0, #20]	@ zero_extendqisi2	@ data, pcb_1->rxfifo.buf
	subs	r2, r1, #1	@ tmp154, pcb_1->rxfifo.len,
	strb	r2, [r3, #17]	@ D.4607, pcb_1->rxfifo.len
	pop	{r3, pc}	@
	.size	uartRxBufferRead, .-uartRxBufferRead
	.section	.text.uartRxBufferReadArray,"ax",%progbits
	.align	1
	.global	uartRxBufferReadArray
	.thumb
	.thumb_func
	.ascii	"uartRxBufferReadArray\000"
	.align	2
	.word	4278190104
	.type	uartRxBufferReadArray, %function
uartRxBufferReadArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r0	@ rx, rx
	mov	r5, r1	@ len, len
	bl	uartGetPCB	@
	movs	r3, #0	@ tmp169,
	mov	r6, r0	@ pcb,
	b	.L6	@
.L5:
	bl	uartRxBufferRead	@
	strb	r0, [r4], #1	@, MEM[base: rx_1, offset: 0B]
	ldr	r3, [r5, #0]	@ *len_3(D), *len_3(D)
	adds	r3, r3, #1	@ tmp173, *len_3(D),
.L6:
	str	r3, [r5, #0]	@ tmp173, *len_3(D)
	ldrb	r0, [r6, #17]	@ zero_extendqisi2	@ pcb_2->rxfifo.len, pcb_2->rxfifo.len
	cmp	r0, #0	@ pcb_2->rxfifo.len
	bne	.L5	@
	ldr	r1, [r5, #0]	@ *len_3(D), *len_3(D)
	adds	r0, r1, #0	@, *len_3(D),
	it	ne
	movne	r0, #1	@,
	pop	{r4, r5, r6, pc}	@
	.size	uartRxBufferReadArray, .-uartRxBufferReadArray
	.section	.text.uartRxBufferWrite,"ax",%progbits
	.align	1
	.global	uartRxBufferWrite
	.thumb
	.thumb_func
	.ascii	"uartRxBufferWrite\000"
	.align	2
	.word	4278190100
	.type	uartRxBufferWrite, %function
uartRxBufferWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ data, data
	bl	uartGetPCB	@
	ldrb	r2, [r0, #18]	@ zero_extendqisi2	@ pcb_1->rxfifo.wr_ptr, pcb_1->rxfifo.wr_ptr
	ldrb	r3, [r0, #18]	@ zero_extendqisi2	@ pcb_1->rxfifo.wr_ptr, pcb_1->rxfifo.wr_ptr
	adds	r1, r0, r2	@ tmp146, pcb, pcb_1->rxfifo.wr_ptr
	adds	r2, r3, #1	@ tmp150, pcb_1->rxfifo.wr_ptr,
	strb	r2, [r0, #18]	@ D.4590, pcb_1->rxfifo.wr_ptr
	strb	r4, [r1, #20]	@ data, pcb_1->rxfifo.buf
	ldrb	r1, [r0, #17]	@ zero_extendqisi2	@ pcb_1->rxfifo.len, pcb_1->rxfifo.len
	adds	r3, r1, #1	@ tmp154, pcb_1->rxfifo.len,
	strb	r3, [r0, #17]	@ D.4592, pcb_1->rxfifo.len
	pop	{r4, pc}	@
	.size	uartRxBufferWrite, .-uartRxBufferWrite
	.section	.text.uartRxBufferClearFIFO,"ax",%progbits
	.align	1
	.global	uartRxBufferClearFIFO
	.thumb
	.thumb_func
	.ascii	"uartRxBufferClearFIFO\000"
	.align	2
	.word	4278190104
	.type	uartRxBufferClearFIFO, %function
uartRxBufferClearFIFO:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	uartGetPCB	@
	movs	r3, #0	@ tmp135,
	strb	r3, [r0, #19]	@ tmp135, pcb_1->rxfifo.rd_ptr
	strb	r3, [r0, #18]	@ tmp135, pcb_1->rxfifo.wr_ptr
	strb	r3, [r0, #17]	@ tmp135, pcb_1->rxfifo.len
	pop	{r3, pc}	@
	.size	uartRxBufferClearFIFO, .-uartRxBufferClearFIFO
	.section	.text.uartRxBufferDataPending,"ax",%progbits
	.align	1
	.global	uartRxBufferDataPending
	.thumb
	.thumb_func
	.ascii	"uartRxBufferDataPending\000"
	.align	2
	.word	4278190104
	.type	uartRxBufferDataPending, %function
uartRxBufferDataPending:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	uartGetPCB	@
	ldrb	r0, [r0, #17]	@ zero_extendqisi2	@ pcb_2->rxfifo.len, pcb_2->rxfifo.len
	adds	r0, r0, #0	@, pcb_2->rxfifo.len,
	it	ne
	movne	r0, #1	@,
	pop	{r3, pc}	@
	.size	uartRxBufferDataPending, .-uartRxBufferDataPending
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
