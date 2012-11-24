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
	.file	"chb.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed chb.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip chb.o -Os -Wall -ffunction-sections
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

	.section	.text.chb_init,"ax",%progbits
	.align	1
	.global	chb_init
	.thumb
	.thumb_func
	.ascii	"chb_init\000"
	.align	2
	.word	4278190092
	.type	chb_init, %function
chb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L2	@ tmp135,
	movs	r1, #0	@,
	movs	r2, #22	@,
	mov	r0, r4	@, tmp135
	bl	memset	@
	bl	chb_get_short_addr	@
	strh	r0, [r4, #0]	@ movhi	@, pcb.src_addr
	pop	{r4, lr}	@
	b	chb_drvr_init	@
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	chb_init, .-chb_init
	.section	.text.chb_get_pcb,"ax",%progbits
	.align	1
	.global	chb_get_pcb
	.thumb
	.thumb_func
	.ascii	"chb_get_pcb\000"
	.align	2
	.word	4278190092
	.type	chb_get_pcb, %function
chb_get_pcb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L5	@,
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	chb_get_pcb, .-chb_get_pcb
	.section	.text.chb_write,"ax",%progbits
	.align	1
	.global	chb_write
	.thumb
	.thumb_func
	.ascii	"chb_write\000"
	.align	2
	.word	4278190092
	.type	chb_write, %function
chb_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}	@
	mov	r7, r0	@ addr, addr
	mov	r8, r1	@ data, data
	mov	r5, r2	@ len, len
	b	.L8	@
.L16:
	movs	r4, #152	@ tmp158,
	strb	r4, [sp, #6]	@ tmp158, hdr
	ldr	r4, .L20	@ tmp160,
	cmp	r5, #100	@ len,
	ite	cc
	movcc	r6, r5	@ frm_len, len
	movcs	r6, #100	@ frm_len,
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ D.5138, pcb.seq
	add	r3, r6, #11	@ tmp154, frm_len,
	adds	r1, r2, #1	@ tmp163, D.5138,
	strb	r3, [sp, #4]	@ tmp154, hdr
	movw	lr, #65535	@ tmp156,
	ldrh	r3, [r4, #0]	@, pcb.src_addr
	movw	r0, 4660	@ movhi	@,
	cmp	r7, lr	@ addr, tmp156
	ite	eq	@
	moveq	ip, #65	@, iftmp.4,
	movne	ip, #97	@, iftmp.4,
	strb	r2, [sp, #7]	@ D.5138, hdr
	strb	r1, [r4, #2]	@ tmp163, pcb.seq
	strh	r0, [sp, #8]	@ movhi	@, MEM[(U16 *)&hdr + 4B]
	mov	r1, r8	@, data
	add	r0, sp, #4	@,,
	mov	r2, r6	@, frm_len
	strh	r3, [sp, #12]	@ movhi	@, MEM[(U16 *)&hdr + 8B]
	strb	ip, [sp, #5]	@ iftmp.4, hdr
	strh	r7, [sp, #10]	@ movhi	@ addr, MEM[(U16 *)&hdr + 6B]
	bl	chb_tx	@
	mov	r3, r4	@ tmp189, tmp160
	cbz	r0, .L10	@ status,
	cmp	r0, #3	@ status,
	beq	.L13	@,
	bhi	.L15	@,
	cmp	r0, #1	@ status,
	b	.L19	@
.L15:
	cmp	r0, #5	@ status,
	beq	.L14	@,
	cmp	r0, #64	@ status,
.L19:
	bne	.L11	@,
	ldrh	r2, [r3, #8]	@, pcb.txd_success
	adds	r1, r2, #1	@ tmp175, pcb.txd_success,
	strh	r1, [r3, #8]	@ movhi	@ tmp175, pcb.txd_success
	b	.L11	@
.L14:
	ldrh	r1, [r4, #10]	@, pcb.txd_noack
	adds	r3, r1, #1	@ tmp180, pcb.txd_noack,
	strh	r3, [r4, #10]	@ movhi	@ tmp180, pcb.txd_noack
	b	.L11	@
.L13:
	ldrh	r3, [r4, #12]	@, pcb.txd_channel_fail
	adds	r2, r3, #1	@ tmp185, pcb.txd_channel_fail,
	strh	r2, [r4, #12]	@ movhi	@ tmp185, pcb.txd_channel_fail
	b	.L11	@
.L10:
	subs	r5, r5, r6	@ tmp187, len, frm_len
	uxtb	r5, r5	@ len, tmp187
.L8:
	cmp	r5, #0	@ len
	bne	.L16	@
	mov	r0, r5	@ status, len
.L11:
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, r7, r8, pc}
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.size	chb_write, .-chb_write
	.section	.text.chb_read,"ax",%progbits
	.align	1
	.global	chb_read
	.thumb
	.thumb_func
	.ascii	"chb_read\000"
	.align	2
	.word	4278190092
	.type	chb_read, %function
chb_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r5, r0	@ rx, rx
	bl	chb_buf_read	@
	lsls	r3, r0, #24	@, len,
	mov	r4, r0	@ len,
	bmi	.L28	@,
	strb	r0, [r5, #6]	@ len, MEM[(U8 *)rx_4(D) + 6B]
	adds	r7, r5, #7	@ data_ptr, rx,
	movs	r6, #0	@ ivtmp.16,
	b	.L24	@
.L25:
	bl	chb_buf_read	@
	strb	r0, [r7, r6]	@, MEM[base: data_ptr_9, index: ivtmp.16_49, offset: 0B]
	adds	r6, r6, #1	@ ivtmp.16, ivtmp.16,
.L24:
	uxtb	r3, r6	@ ivtmp.16, ivtmp.16
	cmp	r3, r4	@ ivtmp.16, len
	bcc	.L25	@,
	ldrh	r2, [r5, #12]	@, MEM[(U16 *)rx_4(D) + 12B]
	ldrh	r0, [r5, #14]	@, MEM[(U16 *)rx_4(D) + 14B]
	strh	r2, [r5, #4]	@ movhi	@, rx_4(D)->dest_addr
	strh	r0, [r5, #2]	@ movhi	@, rx_4(D)->src_addr
	ldrb	r6, [r5, #9]	@ zero_extendqisi2	@ seq, MEM[(U8 *)rx_4(D) + 9B]
	bl	chb_buf_get_len	@
	cbnz	r0, .L26	@ D.5075,
	ldr	r1, .L30	@ tmp222,
	strb	r0, [r1, #3]	@ D.5075, pcb.data_rcv
.L26:
	ldr	r3, .L30+4	@ tmp225,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ prev_seq, prev_seq
	mov	r2, r3	@ tmp240, tmp225
	cmp	r0, r6	@ prev_seq, seq
	ldr	r3, .L30+8	@ tmp241,
	bne	.L27	@,
	ldrh	ip, [r5, #2]	@ rx_4(D)->src_addr, rx_4(D)->src_addr
	ldrh	lr, [r3, #0]	@ prev_src_addr, prev_src_addr
	cmp	ip, lr	@ rx_4(D)->src_addr, prev_src_addr
	beq	.L29	@,
.L27:
	strb	r6, [r2, #0]	@ seq, prev_seq
	ldrh	r2, [r5, #2]	@, rx_4(D)->src_addr
	adds	r0, r5, #6	@, rx,
	strh	r2, [r3, #0]	@ movhi	@, prev_src_addr
	add	r1, r5, #16	@, rx,
	sub	r2, r4, #9	@, len,
	subs	r4, r4, #11	@ tmp237, len,
	bl	memmove	@
	uxtb	r0, r4	@ D.5072, tmp237
	pop	{r3, r4, r5, r6, r7, pc}	@
.L28:
	movs	r0, #0	@ D.5072,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L29:
	movs	r0, #0	@ D.5072,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	chb_read, .-chb_read
	.section	.bss.pcb,"aw",%nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	pcb, %object
	.size	pcb, 22
pcb:
	.space	22
	.section	.data.prev_src_addr,"aw",%progbits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	prev_src_addr, %object
	.size	prev_src_addr, 2
prev_src_addr:
	.short	-2
	.section	.data.prev_seq,"aw",%progbits
	.set	.LANCHOR1,. + 0
	.type	prev_seq, %object
	.size	prev_seq, 1
prev_seq:
	.byte	-1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
