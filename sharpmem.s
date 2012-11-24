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
	.file	"sharpmem.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed sharpmem.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip sharpmem.o -Os -Wall
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

	.section	.text.sharpmemSwap,"ax",%progbits
	.align	1
	.global	sharpmemSwap
	.thumb
	.thumb_func
	.ascii	"sharpmemSwap\000"
	.align	2
	.word	4278190096
	.type	sharpmemSwap, %function
sharpmemSwap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ data, data
	cbz	r0, .L10	@ data,
	ands	r0, r0, #1	@ tmp146, data,
	it	ne	@
	movne	r0, #128	@, out,
	lsls	r1, r3, #30	@, data,
	it	mi
	orrmi	r0, r0, #64	@ out, out,
	lsls	r2, r3, #29	@, data,
	it	mi
	orrmi	r0, r0, #32	@ out, out,
	lsls	r1, r3, #28	@, data,
	it	mi
	orrmi	r0, r0, #16	@ out, out,
	lsls	r2, r3, #27	@, data,
	it	mi
	orrmi	r0, r0, #8	@ out, out,
	lsls	r1, r3, #26	@, data,
	it	mi
	orrmi	r0, r0, #4	@ out, out,
	lsls	r2, r3, #25	@, data,
	it	mi
	orrmi	r0, r0, #2	@ out, out,
	lsls	r3, r3, #24	@, data,
	bpl	.L2	@,
	orr	r0, r0, #1	@ out, out,
	bx	lr	@
.L10:
.L2:
	bx	lr	@
	.size	sharpmemSwap, .-sharpmemSwap
	.section	.text.sharpmemSendByte,"ax",%progbits
	.align	1
	.global	sharpmemSendByte
	.thumb
	.thumb_func
	.ascii	"sharpmemSendByte\000"
	.align	2
	.word	4278190100
	.type	sharpmemSendByte, %function
sharpmemSendByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17	@ tmp155,
	ldr	r1, [r3, #0]	@ D.5030, MEM[(volatile long unsigned int *)1342324732B]
	bic	r2, r1, #2	@ D.5031, D.5030,
	str	r2, [r3, #0]	@ D.5031, MEM[(volatile long unsigned int *)1342324732B]
	movs	r2, #8	@ ivtmp.16,
.L15:
	ldr	r3, .L17	@ tmp173,
	tst	r0, #128	@ data,
	ldr	r1, [r3, #0]	@ D.5035,
	bic	r1, r1, #4	@ D.5036, D.5035,
	str	r1, [r3, #0]	@ D.5036,
	beq	.L14	@,
	ldr	r1, [r3, #0]	@ D.5037, MEM[(volatile long unsigned int *)1342324732B]
	orr	r1, r1, #4	@ D.5038, D.5037,
	str	r1, [r3, #0]	@ D.5038, MEM[(volatile long unsigned int *)1342324732B]
.L14:
	ldr	r3, .L17	@ tmp164,
	lsls	r0, r0, #1	@ tmp169, data,
	ldr	r1, [r3, #0]	@ D.5042, MEM[(volatile long unsigned int *)1342324732B]
	uxtb	r0, r0	@ data, tmp169
	bic	r1, r1, #2	@ D.5043, D.5042,
	str	r1, [r3, #0]	@ D.5043, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r1, [r3, #0]	@ D.5044, MEM[(volatile long unsigned int *)1342324732B]
	orr	r1, r1, #2	@ D.5045, D.5044,
	str	r1, [r3, #0]	@ D.5045, MEM[(volatile long unsigned int *)1342324732B]
@ 136 "drivers/displays/bitmap/sharpmem/sharpmem.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r1, [r3, #0]	@ D.5046, MEM[(volatile long unsigned int *)1342324732B]
	subs	r2, r2, #1	@ tmp172, ivtmp.16,
	bic	r1, r1, #2	@ D.5047, D.5046,
	uxtb	r2, r2	@ ivtmp.16, tmp172
	str	r1, [r3, #0]	@ D.5047, MEM[(volatile long unsigned int *)1342324732B]
	cmp	r2, #0	@ ivtmp.16
	bne	.L15	@
	bx	lr	@
.L18:
	.align	2
.L17:
	.word	1342324732
	.size	sharpmemSendByte, .-sharpmemSendByte
	.section	.text.sharpmemEnable,"ax",%progbits
	.align	1
	.global	sharpmemEnable
	.thumb
	.thumb_func
	.ascii	"sharpmemEnable\000"
	.align	2
	.word	4278190096
	.type	sharpmemEnable, %function
sharpmemEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22	@ tmp147,
	ldr	r1, [r3, #0]	@ D.5013,
	bic	r2, r1, #16	@ D.5014, D.5013,
	str	r2, [r3, #0]	@ D.5014,
	cbz	r0, .L20	@ enable,
	ldr	r2, [r3, #0]	@ D.5015, MEM[(volatile long unsigned int *)1342324732B]
	orr	r0, r2, #16	@ D.5016, D.5015,
	str	r0, [r3, #0]	@ D.5016, MEM[(volatile long unsigned int *)1342324732B]
	bx	lr	@
.L20:
	bx	lr	@
.L23:
	.align	2
.L22:
	.word	1342324732
	.size	sharpmemEnable, .-sharpmemEnable
	.section	.text.sharpmemDrawPixel,"ax",%progbits
	.align	1
	.global	sharpmemDrawPixel
	.thumb
	.thumb_func
	.ascii	"sharpmemDrawPixel\000"
	.align	2
	.word	4278190100
	.type	sharpmemDrawPixel, %function
sharpmemDrawPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #95	@ x,
	bhi	.L24	@,
	cmp	r1, #95	@ y,
	bhi	.L24	@,
	movs	r3, #96	@ tmp149,
	mla	r1, r3, r1, r0	@ tmp150, tmp149, y, x
	movs	r2, #1	@ tmp155,
	and	r0, r0, #7	@ tmp153, x,
	lsl	ip, r2, r0	@ tmp154, tmp155, tmp153
	ldr	r3, .L26	@ tmp151,
	asrs	r1, r1, #3	@ D.5001, tmp150,
	ldrb	r2, [r3, r1]	@ zero_extendqisi2	@ tmp157, _sharpmembuffer
	orr	r0, r2, ip	@ tmp159, tmp157, tmp154
	strb	r0, [r3, r1]	@ tmp159, _sharpmembuffer
.L24:
	bx	lr	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	sharpmemDrawPixel, .-sharpmemDrawPixel
	.section	.text.sharpmemDrawChar,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"sharpmemDrawChar\000"
	.align	2
	.word	4278190100
	.type	sharpmemDrawChar, %function
sharpmemDrawChar:
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	uxtb	r6, r3	@ font$u8Width,
	add	r7, sp, #0	@,,
	mov	r4, r0	@ x, x
	mov	r5, r1	@ y, y
	lsrs	r0, r3, #16	@ tmp293,,
	add	r1, r6, #14	@ tmp259, font$u8Width,
	str	r3, [r7, #36]	@, font
	and	r3, r1, #504	@ tmp261, tmp259,
	uxtb	r1, r0	@ font.u8FirstChar, tmp293
	sub	sp, sp, r3	@,, tmp261
	cmp	r1, r2	@ font.u8FirstChar, c
	mov	sl, sp	@ column.0,
	bhi	.L39	@,
	ldrb	r0, [r7, #39]	@ zero_extendqisi2	@ font.u8LastChar, font.u8LastChar
	cmp	r0, r2	@ font.u8LastChar, c
	bcc	.L39	@,
	subs	r2, r2, #32	@ tmp268, c,
	ldr	r1, [r7, #40]	@ D.4896, font.au8FontTable
	muls	r2, r6, r2	@ D.4901, font$u8Width
	movs	r3, #0	@ ivtmp.40,
	b	.L30	@
.L31:
	add	ip, r1, r2	@ tmp269, D.4896, D.4901
	ldrb	r8, [ip, r3]	@ zero_extendqisi2	@ MEM[base: D.5141_79, index: ivtmp.40_36, offset: 0B], MEM[base: D.5141_79, index: ivtmp.40_36, offset: 0B]
	strb	r8, [sl, r3]	@ MEM[base: D.5141_79, index: ivtmp.40_36, offset: 0B], MEM[base: column.0_16, index: ivtmp.40_36, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.40, ivtmp.40,
.L30:
	uxtb	r0, r3	@ ivtmp.40, ivtmp.40
	cmp	r0, r6	@ ivtmp.40, font$u8Width
	bcc	.L31	@,
.L34:
	mov	r8, #0	@ xoffset,
	b	.L32	@
.L33:
	movs	r1, #255	@ tmp273,
	adds	r2, r3, #1	@ tmp275, col,
	strb	r1, [sl, r3]	@ tmp273, *column.0_16
	uxtb	r3, r2	@ col, tmp275
	b	.L41	@
.L39:
	movs	r3, #0	@ col,
.L41:
	cmp	r3, r6	@ col, font$u8Width
	bne	.L33	@,
	b	.L34	@
.L36:
	ldrb	ip, [sl, r8]	@ zero_extendqisi2	@ tmp276, *column.0_16
	mvn	r1, r9	@ tmp277, yoffset
	adds	r1, r1, #8	@ tmp278, tmp277,
	lsl	r0, ip, r1	@ tmp279, tmp276, tmp278
	uxtb	r3, r0	@ bit, tmp279
	lsrs	r3, r3, #7	@, bit,
	beq	.L35	@,
	add	r3, r8, r4	@ tmp283, xoffset, x
	add	r2, r9, r5	@ tmp285, yoffset, y
	uxth	r0, r3	@, tmp283
	uxth	r1, r2	@, tmp285
	bl	sharpmemDrawPixel	@
.L35:
	add	r0, r9, #1	@ tmp287, yoffset,
	uxth	r9, r0	@ yoffset, tmp287
	b	.L37	@
.L40:
	mov	r9, #0	@ yoffset,
.L37:
	ldrb	r1, [r7, #37]	@ zero_extendqisi2	@ font.u8Height, font.u8Height
	cmp	r1, r9	@ font.u8Height, yoffset
	bge	.L36	@,
	add	r2, r8, #1	@ tmp289, xoffset,
	uxth	r8, r2	@ xoffset, tmp289
.L32:
	cmp	r8, r6	@ xoffset, font$u8Width
	bcc	.L40	@,
	mov	sp, r7
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	sharpmemDrawChar, .-sharpmemDrawChar
	.section	.text.sharpmemClearPixel,"ax",%progbits
	.align	1
	.global	sharpmemClearPixel
	.thumb
	.thumb_func
	.ascii	"sharpmemClearPixel\000"
	.align	2
	.word	4278190100
	.type	sharpmemClearPixel, %function
sharpmemClearPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #95	@ x,
	bhi	.L42	@,
	cmp	r1, #95	@ y,
	bhi	.L42	@,
	movs	r3, #96	@ tmp150,
	mla	r1, r3, r1, r0	@ tmp151, tmp150, y, x
	movs	r2, #1	@ tmp156,
	and	r0, r0, #7	@ tmp154, x,
	lsl	ip, r2, r0	@ tmp155, tmp156, tmp154
	ldr	r3, .L44	@ tmp152,
	asrs	r1, r1, #3	@ D.4984, tmp151,
	ldrb	r2, [r3, r1]	@ zero_extendqisi2	@ tmp160, _sharpmembuffer
	bic	r0, r2, ip	@ tmp162, tmp160, tmp155
	strb	r0, [r3, r1]	@ tmp162, _sharpmembuffer
.L42:
	bx	lr	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.size	sharpmemClearPixel, .-sharpmemClearPixel
	.section	.text.sharpmemGetPixel,"ax",%progbits
	.align	1
	.global	sharpmemGetPixel
	.thumb
	.thumb_func
	.ascii	"sharpmemGetPixel\000"
	.align	2
	.word	4278190100
	.type	sharpmemGetPixel, %function
sharpmemGetPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #95	@ x,
	bhi	.L48	@,
	cmp	r1, #95	@ y,
	bhi	.L49	@,
	movs	r2, #96	@ tmp150,
	mla	r3, r2, r1, r0	@ tmp151, tmp150, y, x
	ldr	r2, .L50	@ tmp148,
	asrs	r1, r3, #3	@ tmp152, tmp151,
	ldrb	r3, [r2, r1]	@ zero_extendqisi2	@ tmp153, _sharpmembuffer
	and	r1, r0, #7	@ tmp154, x,
	asr	r0, r3, r1	@ tmp155, tmp153, tmp154
	and	r0, r0, #1	@ D.4965, tmp155,
	bx	lr	@
.L48:
	movs	r0, #0	@ D.4965,
	bx	lr	@
.L49:
	movs	r0, #0	@ D.4965,
	bx	lr	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.size	sharpmemGetPixel, .-sharpmemGetPixel
	.section	.text.sharpmemClearScreen,"ax",%progbits
	.align	1
	.global	sharpmemClearScreen
	.thumb
	.thumb_func
	.ascii	"sharpmemClearScreen\000"
	.align	2
	.word	4278190100
	.type	sharpmemClearScreen, %function
sharpmemClearScreen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r4, .L55	@ tmp145,
	movs	r1, #0	@,
	mov	r2, #1152	@,
	ldr	r0, .L55+4	@,
	bl	memset	@
	ldr	r2, [r4, #0]	@ D.4949, MEM[(volatile long unsigned int *)1342324732B]
	bic	r1, r2, #8	@ D.4950, D.4949,
	str	r1, [r4, #0]	@ D.4950, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r0, [r4, #0]	@ D.4951, MEM[(volatile long unsigned int *)1342324732B]
	orr	r5, r0, #8	@ D.4952, D.4951,
	str	r5, [r4, #0]	@ D.4952, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r5, .L55+8	@ tmp149,
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ _sharpmem_vcom, _sharpmem_vcom
	orr	r0, r3, #32	@, _sharpmem_vcom,
	bl	sharpmemSendByte	@
	movs	r0, #0	@,
	bl	sharpmemSendByte	@
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ _sharpmem_vcom, _sharpmem_vcom
	cmp	r2, #0	@ _sharpmem_vcom,
	ite	eq	@
	moveq	r1, #64	@, iftmp.6,
	movne	r1, #0	@, iftmp.6,
	strb	r1, [r5, #0]	@ iftmp.6, _sharpmem_vcom
	ldr	r0, [r4, #0]	@ D.4960, MEM[(volatile long unsigned int *)1342324732B]
	bic	r3, r0, #8	@ D.4961, D.4960,
	str	r3, [r4, #0]	@ D.4961, MEM[(volatile long unsigned int *)1342324732B]
	pop	{r3, r4, r5, pc}	@
.L56:
	.align	2
.L55:
	.word	1342324732
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	sharpmemClearScreen, .-sharpmemClearScreen
	.section	.text.sharpmemInit,"ax",%progbits
	.align	1
	.global	sharpmemInit
	.thumb
	.thumb_func
	.ascii	"sharpmemInit\000"
	.align	2
	.word	4278190096
	.type	sharpmemInit, %function
sharpmemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #1	@,
	push	{r3, lr}	@
	movs	r0, #2	@,
	mov	r2, r1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	mov	r1, r0	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #3	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #4	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r1, .L58	@ tmp142,
	ldr	r2, [r1, #0]	@ D.5021, MEM[(volatile long unsigned int *)1342324732B]
	bic	r0, r2, #2	@ D.5022, D.5021,
	str	r0, [r1, #0]	@ D.5022, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r3, [r1, #0]	@ D.5023, MEM[(volatile long unsigned int *)1342324732B]
	bic	r2, r3, #4	@ D.5024, D.5023,
	str	r2, [r1, #0]	@ D.5024, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r0, [r1, #0]	@ D.5025, MEM[(volatile long unsigned int *)1342324732B]
	bic	r3, r0, #8	@ D.5026, D.5025,
	str	r3, [r1, #0]	@ D.5026, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r2, [r1, #0]	@ D.5027, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r3, .L58+4	@ tmp150,
	bic	r0, r2, #16	@ D.5028, D.5027,
	movs	r2, #64	@ tmp151,
	str	r0, [r1, #0]	@ D.5028, MEM[(volatile long unsigned int *)1342324732B]
	strb	r2, [r3, #0]	@ tmp151, _sharpmem_vcom
	bl	sharpmemClearScreen	@
	movs	r0, #0	@,
	pop	{r3, lr}	@
	b	sharpmemEnable	@
.L59:
	.align	2
.L58:
	.word	1342324732
	.word	.LANCHOR1
	.size	sharpmemInit, .-sharpmemInit
	.section	.text.sharpmemRefresh,"ax",%progbits
	.align	1
	.global	sharpmemRefresh
	.thumb
	.thumb_func
	.ascii	"sharpmemRefresh\000"
	.align	2
	.word	4278190096
	.type	sharpmemRefresh, %function
sharpmemRefresh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r5, .L67	@ tmp212,
	ldr	r4, .L67+4	@ tmp216,
	ldr	r3, [r5, #0]	@ D.4922, MEM[(volatile long unsigned int *)1342324732B]
	bic	r7, r3, #8	@ D.4923, D.4922,
	str	r7, [r5, #0]	@ D.4923, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r6, [r5, #0]	@ D.4924, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r7, .L67+8	@ ivtmp.90,
	orr	r2, r6, #8	@ D.4925, D.4924,
	str	r2, [r5, #0]	@ D.4925, MEM[(volatile long unsigned int *)1342324732B]
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ _sharpmem_vcom, _sharpmem_vcom
	orr	r0, r1, #128	@, _sharpmem_vcom,
	bl	sharpmemSendByte	@
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ _sharpmem_vcom, _sharpmem_vcom
	cmp	r0, #0	@ _sharpmem_vcom,
	ite	eq	@
	moveq	r3, #64	@, iftmp.3,
	movne	r3, #0	@, iftmp.3,
	strb	r3, [r4, #0]	@ iftmp.3, _sharpmem_vcom
	movs	r0, #1	@,
	bl	sharpmemSwap	@
	bl	sharpmemSendByte	@
	movs	r4, #1	@ ivtmp.97,
	mov	r6, r4	@ oldline, ivtmp.97
.L63:
	ldrb	r0, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: D.5179_65, offset: 0B]
	bl	sharpmemSwap	@
	bl	sharpmemSendByte	@
	movs	r2, #12	@ tmp232,
	sdiv	r1, r4, r2	@ tmp231, ivtmp.97, tmp232
	adds	r0, r1, #1	@ tmp234, tmp231,
	uxth	r5, r0	@ currentline, tmp234
	cmp	r5, r6	@ currentline, oldline
	beq	.L62	@,
	movs	r0, #0	@,
	bl	sharpmemSendByte	@
	cmp	r5, #96	@ currentline,
	bhi	.L65	@,
	uxtb	r0, r5	@, currentline
	bl	sharpmemSwap	@
	bl	sharpmemSendByte	@
.L65:
	mov	r6, r5	@ oldline, currentline
.L62:
	adds	r4, r4, #1	@ ivtmp.97, ivtmp.97,
	movw	ip, #1153	@ tmp237,
	cmp	r4, ip	@ ivtmp.97, tmp237
	bne	.L63	@,
	movs	r0, #0	@,
	bl	sharpmemSendByte	@
	ldr	r3, .L67	@ tmp238,
	ldr	r1, [r3, #0]	@ D.4946, MEM[(volatile long unsigned int *)1342324732B]
	bic	r0, r1, #8	@ D.4947, D.4946,
	str	r0, [r3, #0]	@ D.4947, MEM[(volatile long unsigned int *)1342324732B]
	pop	{r3, r4, r5, r6, r7, pc}	@
.L68:
	.align	2
.L67:
	.word	1342324732
	.word	.LANCHOR1
	.word	.LANCHOR0-1
	.size	sharpmemRefresh, .-sharpmemRefresh
	.section	.text.sharpmemDrawString,"ax",%progbits
	.align	1
	.global	sharpmemDrawString
	.thumb
	.thumb_func
	.ascii	"sharpmemDrawString\000"
	.align	2
	.word	4278190100
	.type	sharpmemDrawString, %function
sharpmemDrawString:
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r6, r0	@ x, x
	mov	r7, r1	@ y, y
	mov	r5, r2	@ text, text
	str	r3, [sp, #36]	@, font
	movs	r4, #0	@ l,
	b	.L70	@
.L71:
	ldrb	r2, [sp, #36]	@ zero_extendqisi2	@ font.u8Width, font.u8Width
	ldr	r3, [sp, #40]	@ font, font
	adds	r1, r2, #1	@ tmp150, font.u8Width,
	mla	r0, r1, r4, r6	@ tmp154, tmp150, l, x
	ldrb	r2, [r5, r4]	@ zero_extendqisi2	@ *D.4878_15, *D.4878_15
	str	r3, [sp, #0]	@ font,
	uxth	r0, r0	@, tmp154
	ldr	r3, [sp, #36]	@, font
	mov	r1, r7	@, y
	bl	sharpmemDrawChar	@
	adds	r4, r4, #1	@ tmp158, l,
	uxtb	r4, r4	@ l, tmp158
.L70:
	mov	r0, r5	@, text
	bl	strlen	@
	cmp	r4, r0	@ l,
	bcc	.L71	@,
	pop	{r1, r2, r3, r4, r5, r6, r7, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	sharpmemDrawString, .-sharpmemDrawString
	.section	.bss._sharpmembuffer,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_sharpmembuffer, %object
	.size	_sharpmembuffer, 1152
_sharpmembuffer:
	.space	1152
	.section	.data._sharpmem_vcom,"aw",%progbits
	.set	.LANCHOR1,. + 0
	.type	_sharpmem_vcom, %object
	.size	_sharpmem_vcom, 1
_sharpmem_vcom:
	.byte	64
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
