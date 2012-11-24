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
	.file	"cdc_buf.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cdc_buf.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cdc_buf.o -Os -Wall
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

	.section	.text.cdcGetBuffer,"ax",%progbits
	.align	1
	.global	cdcGetBuffer
	.thumb
	.thumb_func
	.ascii	"cdcGetBuffer\000"
	.align	2
	.word	4278190096
	.type	cdcGetBuffer, %function
cdcGetBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L2	@,
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	cdcGetBuffer, .-cdcGetBuffer
	.section	.text.cdcBufferInit,"ax",%progbits
	.align	1
	.global	cdcBufferInit
	.thumb
	.thumb_func
	.ascii	"cdcBufferInit\000"
	.align	2
	.word	4278190096
	.type	cdcBufferInit, %function
cdcBufferInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5	@ tmp134,
	movs	r2, #0	@ tmp135,
	strb	r2, [r3, #0]	@ tmp135, cdcfifo.len
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	cdcBufferInit, .-cdcBufferInit
	.section	.text.cdcBufferRead,"ax",%progbits
	.align	1
	.global	cdcBufferRead
	.thumb
	.thumb_func
	.ascii	"cdcBufferRead\000"
	.align	2
	.word	4278190096
	.type	cdcBufferRead, %function
cdcBufferRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8	@ tmp145,
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ cdcfifo.rd_ptr, cdcfifo.rd_ptr
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ cdcfifo.rd_ptr, cdcfifo.rd_ptr
	add	r0, r3, ip	@ tmp149, tmp145, cdcfifo.rd_ptr
	adds	r2, r1, #1	@ tmp153, cdcfifo.rd_ptr,
	strb	r2, [r3, #2]	@ D.4589, cdcfifo.rd_ptr
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ cdcfifo.len, cdcfifo.len
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ data, cdcfifo.buf
	subs	r2, r1, #1	@ tmp160, cdcfifo.len,
	strb	r2, [r3, #0]	@ D.4591, cdcfifo.len
	bx	lr	@
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	cdcBufferRead, .-cdcBufferRead
	.section	.text.cdcBufferReadLen,"ax",%progbits
	.align	1
	.global	cdcBufferReadLen
	.thumb
	.thumb_func
	.ascii	"cdcBufferReadLen\000"
	.align	2
	.word	4278190100
	.type	cdcBufferReadLen, %function
cdcBufferReadLen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r0	@ buf, buf
	mov	r6, r1	@ len, len
	movs	r5, #0	@ counter,
	b	.L11	@
.L13:
	ldr	r0, .L15	@ tmp167,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ cdcfifo.len, cdcfifo.len
	cbz	r3, .L12	@ cdcfifo.len,
	bl	cdcBufferRead	@
	strb	r0, [r4, r5]	@, MEM[base: buf_8(D), index: counter_1, offset: 0B]
	adds	r5, r5, #1	@ counter, counter,
.L11:
	cmp	r5, r6	@ counter, len
	bne	.L13	@,
.L12:
	mov	r0, r5	@, counter
	pop	{r4, r5, r6, pc}	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	cdcBufferReadLen, .-cdcBufferReadLen
	.section	.text.cdcBufferWrite,"ax",%progbits
	.align	1
	.global	cdcBufferWrite
	.thumb
	.thumb_func
	.ascii	"cdcBufferWrite\000"
	.align	2
	.word	4278190096
	.type	cdcBufferWrite, %function
cdcBufferWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L18	@ tmp144,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ cdcfifo.wr_ptr, cdcfifo.wr_ptr
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ cdcfifo.wr_ptr, cdcfifo.wr_ptr
	add	r1, r3, ip	@ tmp148, tmp144, cdcfifo.wr_ptr
	strb	r0, [r1, #3]	@ data, cdcfifo.buf
	adds	r1, r2, #1	@ tmp153, cdcfifo.wr_ptr,
	strb	r1, [r3, #1]	@ D.4572, cdcfifo.wr_ptr
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ cdcfifo.len, cdcfifo.len
	adds	r2, r0, #1	@ tmp160, cdcfifo.len,
	strb	r2, [r3, #0]	@ D.4574, cdcfifo.len
	bx	lr	@
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	cdcBufferWrite, .-cdcBufferWrite
	.section	.text.cdcBufferClearFIFO,"ax",%progbits
	.align	1
	.global	cdcBufferClearFIFO
	.thumb
	.thumb_func
	.ascii	"cdcBufferClearFIFO\000"
	.align	2
	.word	4278190100
	.type	cdcBufferClearFIFO, %function
cdcBufferClearFIFO:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21	@ tmp134,
	movs	r2, #0	@ tmp135,
	strb	r2, [r3, #2]	@ tmp135, cdcfifo.rd_ptr
	strb	r2, [r3, #1]	@ tmp135, cdcfifo.wr_ptr
	strb	r2, [r3, #0]	@ tmp135, cdcfifo.len
	bx	lr	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.size	cdcBufferClearFIFO, .-cdcBufferClearFIFO
	.section	.text.cdcBufferDataPending,"ax",%progbits
	.align	1
	.global	cdcBufferDataPending
	.thumb
	.thumb_func
	.ascii	"cdcBufferDataPending\000"
	.align	2
	.word	4278190104
	.type	cdcBufferDataPending, %function
cdcBufferDataPending:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24	@ tmp137,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ cdcfifo.len, cdcfifo.len
	adds	r0, r0, #0	@, cdcfifo.len,
	it	ne
	movne	r0, #1	@,
	bx	lr	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.size	cdcBufferDataPending, .-cdcBufferDataPending
	.section	.bss.cdcfifo,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	cdcfifo, %object
	.size	cdcfifo, 259
cdcfifo:
	.space	259
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
