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
	.file	"drawing.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed drawing.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip drawing.o -Os -Wall
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

	.section	.text.drawSwap,"ax",%progbits
	.align	1
	.global	drawSwap
	.thumb
	.thumb_func
	.ascii	"drawSwap\000"
	.align	2
	.word	4278190092
	.type	drawSwap, %function
drawSwap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	drawSwap, .-drawSwap
	.section	.text.drawPixel,"ax",%progbits
	.align	1
	.global	drawPixel
	.thumb
	.thumb_func
	.ascii	"drawPixel\000"
	.align	2
	.word	4278190092
	.type	drawPixel, %function
drawPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r0	@ x, x
	mov	r5, r1	@ y, y
	mov	r6, r2	@ color, color
	bl	lcdGetWidth	@
	cmp	r4, r0	@ x,
	bcs	.L2	@,
	bl	lcdGetHeight	@
	cmp	r5, r0	@ y,
	bcs	.L2	@,
	mov	r0, r4	@, x
	mov	r1, r5	@, y
	mov	r2, r6	@, color
	pop	{r4, r5, r6, lr}	@
	b	lcdDrawPixel	@
.L2:
	pop	{r4, r5, r6, pc}	@
	.size	drawPixel, .-drawPixel
	.section	.text.drawFill,"ax",%progbits
	.align	1
	.global	drawFill
	.thumb
	.thumb_func
	.ascii	"drawFill\000"
	.align	2
	.word	4278190092
	.type	drawFill, %function
drawFill:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lcdFillRGB	@
	.size	drawFill, .-drawFill
	.section	.text.drawTestPattern,"ax",%progbits
	.align	1
	.global	drawTestPattern
	.thumb
	.thumb_func
	.ascii	"drawTestPattern\000"
	.align	2
	.word	4278190096
	.type	drawTestPattern, %function
drawTestPattern:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lcdTest	@
	.size	drawTestPattern, .-drawTestPattern
	.section	.text.drawLineDotted,"ax",%progbits
	.align	1
	.global	drawLineDotted
	.thumb
	.thumb_func
	.ascii	"drawLineDotted\000"
	.align	2
	.word	4278190096
	.type	drawLineDotted, %function
drawLineDotted:
	@ args = 12, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #40	@,,
	ldrh	r8, [sp, #76]	@ solid, solid
	mov	r4, r0	@ x0, x0
	add	r0, sp, #28	@,,
	mov	r5, r1	@ y0, y0
	str	r2, [sp, #0]	@ x1, %sfp
	mov	r9, r3	@ y1, y1
	ldrh	r7, [sp, #72]	@ empty, empty
	ldrh	r6, [sp, #80]	@ color, color
	bl	lcdGetProperties	@
	cmp	r8, #0	@ solid
	beq	.L6	@
	movw	r3, #65000	@ tmp171,
	cmp	r5, r3	@ y0, tmp171
	it	hi	@
	movhi	r5, #0	@, y0,
	cmp	r9, r3	@ y1, tmp171
	it	hi	@
	movhi	r9, #0	@, y1,
	cmp	r5, r9	@ y0, y1
	bne	.L10	@,
	cbnz	r7, .L10	@ empty,
	ldrb	r0, [sp, #35]	@ zero_extendqisi2	@ properties.fastHLine, properties.fastHLine
	cbz	r0, .L10	@ properties.fastHLine,
	ldr	r1, [sp, #0]	@, %sfp
	mov	r0, r4	@, x0
	mov	r2, r5	@, y0
	mov	r3, r6	@, color
	add	sp, sp, #40	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	lcdDrawHLine	@
.L10:
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r4, r1	@ x0,
	bne	.L11	@,
	cbnz	r7, .L11	@ empty,
	ldrb	r2, [sp, #36]	@ zero_extendqisi2	@ properties.fastVLine, properties.fastVLine
	cbz	r2, .L11	@ properties.fastVLine,
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r9	@, y1
	mov	r3, r6	@, color
	add	sp, sp, #40	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	lcdDrawVLine	@
.L11:
	ldr	r3, [sp, #0]	@, %sfp
	subs	r2, r9, r5	@ dy, y1, y0
	rsb	r3, r4, r3	@ dx, x0,
	bpl	.L29	@,
	negs	r2, r2	@ dy, dy
	mov	r1, #-1	@,
	b	.L33	@
.L29:
	movs	r1, #1	@,
.L33:
	cmp	r3, #0	@ dx,
	str	r1, [sp, #20]	@, %sfp
	bge	.L30	@,
	negs	r3, r3	@ dx, dx
	mov	r1, #-1	@,
	b	.L34	@
.L30:
	movs	r1, #1	@,
.L34:
	lsls	r0, r3, #1	@, dx,
	str	r1, [sp, #16]	@, %sfp
	lsls	r1, r2, #1	@, dy,
	str	r1, [sp, #4]	@, %sfp
	str	r0, [sp, #8]	@, %sfp
	mov	r1, r5	@, y0
	mov	r0, r4	@, x0
	mov	r2, r6	@, color
	bl	drawPixel	@
	ldr	r3, [sp, #8]	@, %sfp
	ldr	r1, [sp, #4]	@, %sfp
	add	r8, r8, #-1	@, solid,
	cmp	r3, r1	@,
	str	r8, [sp, #12]	@, %sfp
	ble	.L14	@,
	sub	r8, r1, r3, asr #1	@ fraction,,,
	b	.L35	@
.L21:
	cmp	r8, #0	@ fraction,
	blt	.L16	@,
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r2, [sp, #8]	@, %sfp
	adds	r5, r5, r3	@ tmp177, y0,
	uxth	r5, r5	@ y0, tmp177
	rsb	r8, r2, r8	@ fraction,, fraction
.L16:
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	adds	r4, r4, r1	@ tmp179, x0,
	uxth	r4, r4	@ x0, tmp179
	add	r8, r8, r0	@ fraction, fraction,
	cbnz	r7, .L17	@ empty,
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r6	@, color
	bl	drawPixel	@
	b	.L31	@
.L17:
	cmp	r9, #0	@ solidcount
	beq	.L19	@
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r6	@, color
	bl	drawPixel	@
	add	r9, r9, #-1	@ solidcount, solidcount,
	b	.L31	@
.L19:
	cmp	sl, #0	@ emptycount
	beq	.L20	@
	add	sl, sl, #-1	@ emptycount, emptycount,
	b	.L31	@
.L20:
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r6	@, color
	bl	drawPixel	@
.L35:
	ldr	r9, [sp, #12]	@ solidcount, %sfp
	mov	sl, r7	@ emptycount, empty
.L31:
	ldr	r2, [sp, #0]	@, %sfp
	cmp	r4, r2	@ x0,
	bne	.L21	@,
	b	.L6	@
.L14:
	ldr	r3, [sp, #8]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	mov	ip, r7	@ emptycount, empty
	str	r9, [sp, #0]	@ y1, %sfp
	sub	r8, r3, r0, asr #1	@ fraction,,,
	mov	r9, r7	@ empty, empty
	ldr	sl, [sp, #12]	@ solidcount, %sfp
	mov	r7, r6	@ color, color
	mov	r6, ip	@ emptycount, emptycount
	b	.L32	@
.L28:
	cmp	r8, #0	@ fraction,
	blt	.L23	@,
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r1, [sp, #4]	@, %sfp
	add	lr, r4, r2	@ tmp182, x0,
	uxth	r4, lr	@ x0, tmp182
	rsb	r8, r1, r8	@ fraction,, fraction
.L23:
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	adds	r5, r5, r3	@ tmp184, y0,
	uxth	r5, r5	@ y0, tmp184
	add	r8, r8, r0	@ fraction, fraction,
	cmp	r9, #0	@ empty
	bne	.L24	@
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r7	@, color
	bl	drawPixel	@
.L24:
	cmp	sl, #0	@ solidcount
	beq	.L25	@
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r7	@, color
	bl	drawPixel	@
	add	sl, sl, #-1	@ solidcount, solidcount,
	b	.L32	@
.L25:
	cbz	r6, .L27	@ emptycount,
	subs	r6, r6, #1	@ emptycount, emptycount,
	b	.L32	@
.L27:
	mov	r0, r4	@, x0
	mov	r1, r5	@, y0
	mov	r2, r7	@, color
	bl	drawPixel	@
	ldr	sl, [sp, #12]	@ solidcount, %sfp
	mov	r6, r9	@ emptycount, empty
.L32:
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r5, r1	@ y0,
	bne	.L28	@,
.L6:
	add	sp, sp, #40	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawLineDotted, .-drawLineDotted
	.section	.text.drawLine,"ax",%progbits
	.align	1
	.global	drawLine
	.thumb
	.thumb_func
	.ascii	"drawLine\000"
	.align	2
	.word	4278190092
	.type	drawLine, %function
drawLine:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}	@
	movs	r4, #0	@ tmp140,
	mov	lr, #1	@,
	stmia	sp, {r4, lr}	@,,
	ldrh	r4, [sp, #24]	@ color, color
	str	r4, [sp, #8]	@ color,
	bl	drawLineDotted	@
	pop	{r0, r1, r2, r3, r4, pc}
	.size	drawLine, .-drawLine
	.section	.text.drawCircleFilled,"ax",%progbits
	.align	1
	.global	drawCircleFilled
	.thumb
	.thumb_func
	.ascii	"drawCircleFilled\000"
	.align	2
	.word	4278190100
	.type	drawCircleFilled, %function
drawCircleFilled:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r7, r3	@ color, color
	mvn	r3, #1	@ tmp233,
	muls	r3, r2, r3	@ tmp232, radius
	mov	r5, r1	@ yCenter, yCenter
	rsb	r1, r2, #1	@ tmp231, radius,
	sub	sp, sp, #56	@,,
	mov	r4, r0	@ xCenter, xCenter
	uxth	r9, r1	@ f, tmp231
	uxth	r0, r3	@, tmp232
	uxth	r1, r2	@, radius
	mov	r6, r2	@ radius, radius
	str	r0, [sp, #32]	@, %sfp
	str	r1, [sp, #24]	@, %sfp
	bl	lcdGetWidth	@
	sxth	r3, r0	@ lcdWidth, lcdWidth
	cmp	r4, r3	@ xCenter, lcdWidth
	mov	r8, r0	@ movhi	@ lcdWidth,
	bge	.L38	@,
	subs	r0, r5, r6	@ tmp236, yCenter, radius
	bic	r2, r0, r0, asr #31	@ tmp292, tmp236
	adds	r6, r6, r5	@ tmp238, radius, yCenter
	uxth	r1, r2	@, tmp292
	mov	r0, r4	@, xCenter
	mov	r2, r4	@, xCenter
	uxth	r3, r6	@, tmp238
	str	r7, [sp, #0]	@ color,
	bl	drawLine	@
.L38:
	adds	r6, r4, #1	@ tmp241, xCenter,
	uxth	r1, r6	@, tmp241
	subs	r2, r4, #1	@ tmp240, xCenter,
	movs	r3, #0	@,
	uxth	sl, r2	@ ivtmp.70, tmp240
	str	r1, [sp, #16]	@, %sfp
	str	r3, [sp, #20]	@, %sfp
	mov	r6, r4	@ xCenter, xCenter
	b	.L39	@
.L45:
	tst	r9, #32768	@ f,
	bne	.L40	@,
	ldr	r1, [sp, #32]	@, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	adds	r3, r1, #2	@ tmp246,,
	subs	r4, r0, #1	@ tmp244,,
	uxth	ip, r3	@ D.5574, tmp246
	uxth	r2, r4	@, tmp244
	uxth	r0, ip	@, D.5574
	add	r4, ip, r9	@ tmp248, D.5574, f
	str	r2, [sp, #24]	@, %sfp
	str	r0, [sp, #32]	@, %sfp
	uxth	r9, r4	@ f, tmp248
.L40:
	ldr	r4, [sp, #20]	@, %sfp
	sxth	lr, r8	@ lcdWidth, lcdWidth
	adds	r0, r4, #1	@ tmp250,,
	ldr	r4, [sp, #24]	@, %sfp
	uxth	r2, r0	@, tmp250
	uxth	r1, r2	@,
	uxth	r4, r4	@ y.24,
	str	r1, [sp, #28]	@, %sfp
	adds	r0, r4, r6	@ tmp258, y.24, xCenter
	str	r2, [sp, #20]	@, %sfp
	uxth	r2, r0	@, tmp258
	ldr	r0, [sp, #28]	@, %sfp
	add	r9, r9, r1, lsl #1	@, tmp254, f,,
	add	r3, r9, #1	@ tmp257, tmp254,
	subs	r1, r6, r4	@ tmp259, xCenter, y.24
	str	r2, [sp, #36]	@, %sfp
	str	r2, [sp, #48]	@, %sfp
	subs	r2, r5, r0	@ tmp260, yCenter,
	uxth	r9, r3	@ f, tmp257
	uxth	r3, r1	@, tmp259
	uxth	r1, r2	@, tmp260
	str	r1, [sp, #44]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	str	r3, [sp, #40]	@, %sfp
	str	r3, [sp, #52]	@, %sfp
	subs	r3, r5, r4	@ tmp261, yCenter, y.24
	uxth	ip, r3	@ D.5587, tmp261
	sxth	r3, r1	@ xc_px,
	cmp	r3, lr	@ xc_px, lcdWidth
	bge	.L41	@,
	cmp	r3, #0	@ xc_px,
	blt	.L41	@,
	add	lr, ip, r4, lsl #1	@, tmp268, D.5587, y.24,
	mov	r0, r1	@,
	mov	r2, r0	@,
	mov	r1, ip	@, D.5587
	uxth	r3, lr	@, tmp268
	str	ip, [sp, #12]	@,
	str	r7, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	ip, [sp, #12]	@,
.L41:
	sxth	r3, sl	@ xc_mx, ivtmp.70
	sxth	r1, r8	@ lcdWidth, lcdWidth
	cmp	r3, r1	@ xc_mx, lcdWidth
	bge	.L42	@,
	cmp	r3, #0	@ xc_mx,
	blt	.L42	@,
	add	r3, ip, r4, lsl #1	@, tmp276, D.5587, y.24,
	mov	r0, sl	@, ivtmp.70
	mov	r1, ip	@, D.5587
	mov	r2, sl	@, ivtmp.70
	uxth	r3, r3	@, tmp276
	str	r7, [sp, #0]	@ color,
	bl	drawLine	@
.L42:
	ldr	r2, [sp, #48]	@, %sfp
	sxth	ip, r8	@ lcdWidth, lcdWidth
	sxth	r3, r2	@ xc_py,
	cmp	r3, ip	@ xc_py, lcdWidth
	bge	.L43	@,
	cmp	r3, #0	@ xc_py,
	blt	.L43	@,
	ldr	r0, [sp, #28]	@, %sfp
	ldr	r1, [sp, #44]	@, %sfp
	add	lr, r0, r5	@ tmp281,, yCenter
	ldr	r0, [sp, #36]	@, %sfp
	uxth	r3, lr	@, tmp281
	mov	r2, r0	@,
	str	r7, [sp, #0]	@ color,
	bl	drawLine	@
.L43:
	ldr	r3, [sp, #52]	@, %sfp
	sxth	r1, r8	@ lcdWidth, lcdWidth
	sxth	r3, r3	@ xc_my,
	cmp	r3, r1	@ xc_my, lcdWidth
	bge	.L44	@,
	cmp	r3, #0	@ xc_my,
	blt	.L44	@,
	ldr	r2, [sp, #28]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	add	ip, r2, r5	@ tmp286,, yCenter
	ldr	r1, [sp, #44]	@, %sfp
	mov	r2, r0	@,
	uxth	r3, ip	@, tmp286
	str	r7, [sp, #0]	@ color,
	bl	drawLine	@
.L44:
	ldr	r3, [sp, #16]	@, %sfp
	add	r2, sl, #-1	@ tmp288, ivtmp.70,
	adds	r1, r3, #1	@ tmp289,,
	uxth	r0, r1	@, tmp289
	uxth	sl, r2	@ ivtmp.70, tmp288
	str	r0, [sp, #16]	@, %sfp
.L39:
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r3, [sp, #24]	@, %sfp
	sxth	r0, r2	@ x,
	sxth	r1, r3	@ y,
	cmp	r0, r1	@ x, y
	blt	.L45	@,
	add	sp, sp, #56	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawCircleFilled, .-drawCircleFilled
	.section	.text.drawCorner,"ax",%progbits
	.align	1
	.global	drawCorner
	.thumb
	.thumb_func
	.ascii	"drawCorner\000"
	.align	2
	.word	4278190092
	.type	drawCorner, %function
drawCorner:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r5, r0	@ xCenter, xCenter
	mvn	r0, #1	@ tmp221,
	muls	r0, r2, r0	@ tmp220, r
	mov	r4, r1	@ yCenter, yCenter
	mov	sl, r3	@ corner, corner
	rsb	r1, r2, #1	@ tmp219, r,
	uxth	r3, r0	@, tmp220
	ldrh	r7, [sp, #40]	@ color, color
	uxth	r9, r1	@ f, tmp219
	str	r3, [sp, #4]	@, %sfp
	uxth	r8, r2	@ y, r
	movs	r6, #1	@ ivtmp.81,
	b	.L47	@
.L53:
	tst	r9, #32768	@ f,
	bne	.L48	@,
	ldr	r1, [sp, #4]	@, %sfp
	add	r2, r8, #-1	@ tmp224, y,
	adds	r0, r1, #2	@ tmp226,,
	uxth	ip, r0	@ D.5526, tmp226
	uxth	r8, r2	@ y, tmp224
	uxth	r3, ip	@, D.5526
	add	r2, ip, r9	@ tmp228, D.5526, f
	str	r3, [sp, #4]	@, %sfp
	uxth	r9, r2	@ f, tmp228
.L48:
	add	r9, r9, r6, lsl #1	@, tmp232, f, ivtmp.81,
	add	r3, r9, #1	@ tmp235, tmp232,
	tst	sl, #8	@ corner,
	uxth	r9, r3	@ f, tmp235
	beq	.L49	@,
	uxth	r3, r8	@ y.19, y
	adds	r2, r3, r4	@ tmp239, y.19, yCenter
	add	lr, r6, r5	@ tmp237, ivtmp.81, xCenter
	uxth	r1, r2	@, tmp239
	uxth	r0, lr	@, tmp237
	mov	r2, r7	@, color
	str	r3, [sp, #0]	@,
	bl	drawPixel	@
	ldr	r1, [sp, #0]	@,
	add	ip, r6, r4	@ tmp243, ivtmp.81, yCenter
	adds	r0, r1, r5	@ tmp241, y.19, xCenter
	uxth	r0, r0	@, tmp241
	uxth	r1, ip	@, tmp243
	mov	r2, r7	@, color
	bl	drawPixel	@
.L49:
	tst	sl, #2	@ corner,
	beq	.L50	@,
	uxth	r3, r8	@ y.19, y
	subs	r2, r4, r3	@ tmp248, yCenter, y.19
	add	lr, r6, r5	@ tmp246, ivtmp.81, xCenter
	uxth	r1, r2	@, tmp248
	uxth	r0, lr	@, tmp246
	mov	r2, r7	@, color
	str	r3, [sp, #0]	@,
	bl	drawPixel	@
	ldr	r1, [sp, #0]	@,
	rsb	ip, r6, r4	@ tmp252, ivtmp.81, yCenter
	adds	r0, r1, r5	@ tmp250, y.19, xCenter
	uxth	r0, r0	@, tmp250
	uxth	r1, ip	@, tmp252
	mov	r2, r7	@, color
	bl	drawPixel	@
.L50:
	tst	sl, #4	@ corner,
	beq	.L51	@,
	uxth	r3, r8	@ y.19, y
	subs	r1, r5, r3	@ tmp255, xCenter, y.19
	adds	r2, r6, r4	@ tmp257, ivtmp.81, yCenter
	uxth	r0, r1	@, tmp255
	uxth	r1, r2	@, tmp257
	mov	r2, r7	@, color
	str	r3, [sp, #0]	@,
	bl	drawPixel	@
	ldr	r0, [sp, #0]	@,
	rsb	ip, r6, r5	@ tmp259, ivtmp.81, xCenter
	adds	r1, r0, r4	@ tmp261, y.19, yCenter
	uxth	r1, r1	@, tmp261
	uxth	r0, ip	@, tmp259
	mov	r2, r7	@, color
	bl	drawPixel	@
.L51:
	tst	sl, #1	@ corner,
	beq	.L52	@,
	uxth	r3, r8	@ y.19, y
	subs	r1, r5, r3	@ tmp264, xCenter, y.19
	subs	r2, r4, r6	@ tmp266, yCenter, ivtmp.81
	uxth	r0, r1	@, tmp264
	uxth	r1, r2	@, tmp266
	mov	r2, r7	@, color
	str	r3, [sp, #0]	@,
	bl	drawPixel	@
	ldr	r3, [sp, #0]	@,
	subs	r0, r5, r6	@ tmp268, xCenter, ivtmp.81
	rsb	ip, r3, r4	@ tmp270, y.19, yCenter
	uxth	r0, r0	@, tmp268
	uxth	r1, ip	@, tmp270
	mov	r2, r7	@, color
	bl	drawPixel	@
.L52:
	adds	r6, r6, #1	@ tmp272, ivtmp.81,
	uxth	r6, r6	@ ivtmp.81, tmp272
.L47:
	subs	r3, r6, #1	@ tmp273, ivtmp.81,
	sxth	r0, r3	@ tmp274, tmp273
	sxth	ip, r8	@ y, y
	cmp	r0, ip	@ tmp274, y
	blt	.L53	@,
	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawCorner, .-drawCorner
	.section	.text.drawCircle,"ax",%progbits
	.align	1
	.global	drawCircle
	.thumb
	.thumb_func
	.ascii	"drawCircle\000"
	.align	2
	.word	4278190092
	.type	drawCircle, %function
drawCircle:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r2, r1	@ tmp142, radius, yCenter
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r5, r1	@ yCenter, yCenter
	mov	r4, r2	@ radius, radius
	uxth	r1, ip	@, tmp142
	mov	r2, r3	@, color
	mov	r7, r3	@ color, color
	mov	r6, r0	@ xCenter, xCenter
	bl	drawPixel	@
	subs	r2, r5, r4	@ tmp144, yCenter, radius
	mov	r0, r6	@, xCenter
	uxth	r1, r2	@, tmp144
	mov	r2, r7	@, color
	bl	drawPixel	@
	adds	r1, r4, r6	@ tmp146, radius, xCenter
	uxth	r0, r1	@, tmp146
	mov	r2, r7	@, color
	mov	r1, r5	@, yCenter
	bl	drawPixel	@
	subs	r0, r6, r4	@ tmp148, xCenter, radius
	mov	r1, r5	@, yCenter
	mov	r2, r7	@, color
	uxth	r0, r0	@, tmp148
	bl	drawPixel	@
	mov	r0, r6	@, xCenter
	mov	r1, r5	@, yCenter
	mov	r2, r4	@, radius
	movs	r3, #15	@,
	str	r7, [sp, #0]	@ color,
	bl	drawCorner	@
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
	.size	drawCircle, .-drawCircle
	.section	.text.drawCornerFilled,"ax",%progbits
	.align	1
	.global	drawCornerFilled
	.thumb
	.thumb_func
	.ascii	"drawCornerFilled\000"
	.align	2
	.word	4278190100
	.type	drawCornerFilled, %function
drawCornerFilled:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r7, r0	@ xCenter, xCenter
	mvn	r0, #1	@ tmp264,
	muls	r0, r2, r0	@ tmp263, radius
	sub	sp, sp, #56	@,,
	mov	r4, r1	@ yCenter, yCenter
	rsb	r1, r2, #1	@ tmp262, radius,
	uxth	r5, r1	@, tmp262
	str	r3, [sp, #8]	@ position, %sfp
	uxth	r1, r2	@, radius
	uxth	r3, r0	@, tmp263
	mov	r8, r2	@ radius, radius
	str	r5, [sp, #12]	@, %sfp
	str	r3, [sp, #40]	@, %sfp
	ldrh	r6, [sp, #88]	@ color, color
	str	r1, [sp, #20]	@, %sfp
	bl	lcdGetWidth	@
	ldr	r2, [sp, #8]	@, %sfp
	mov	r5, r0	@ movhi	@ lcdWidth,
	lsls	r3, r2, #30	@,,
	beq	.L56	@,
	sxth	r2, r0	@ lcdWidth, lcdWidth
	cmp	r7, r2	@ xCenter, lcdWidth
	bge	.L56	@,
	rsb	r0, r8, r4	@ tmp268, radius, yCenter
	bic	r3, r0, r0, asr #31	@ tmp343, tmp268
	uxth	r1, r3	@, tmp343
	mov	r0, r7	@, xCenter
	mov	r2, r7	@, xCenter
	mov	r3, r4	@, yCenter
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L56:
	ldr	r1, [sp, #8]	@, %sfp
	tst	r1, #12	@,
	beq	.L57	@,
	sxth	r2, r5	@ lcdWidth, lcdWidth
	cmp	r7, r2	@ xCenter, lcdWidth
	bge	.L57	@,
	rsb	r3, r8, r4	@ tmp272, radius, yCenter
	add	r8, r8, r4	@ tmp273, radius, yCenter
	bic	r1, r4, r3, asr #31	@, yCenter, tmp272
	mov	r0, r7	@, xCenter
	mov	r2, r7	@, xCenter
	uxth	r3, r8	@, tmp273
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L57:
	subs	r2, r7, #1	@ tmp275, xCenter,
	adds	r1, r7, #1	@ tmp276, xCenter,
	movs	r0, #0	@,
	uxth	r8, r2	@ ivtmp.108, tmp275
	uxth	r9, r1	@ ivtmp.110, tmp276
	str	r0, [sp, #16]	@, %sfp
	mov	sl, r7	@ xCenter, xCenter
	b	.L59	@
.L69:
	ldr	r7, [sp, #12]	@, %sfp
	lsls	r7, r7, #16	@,,
	bmi	.L60	@,
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r3, [sp, #40]	@, %sfp
	subs	r1, r2, #1	@ tmp279,,
	uxth	r0, r1	@, tmp279
	adds	r7, r3, #2	@ tmp281,,
	ldr	r1, [sp, #12]	@, %sfp
	uxth	ip, r7	@ D.5449, tmp281
	str	r0, [sp, #20]	@, %sfp
	add	r0, ip, r1	@ tmp283, D.5449,
	uxth	r2, ip	@, D.5449
	uxth	r3, r0	@, tmp283
	str	r2, [sp, #40]	@, %sfp
	str	r3, [sp, #12]	@, %sfp
.L60:
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r7, [sp, #12]	@, %sfp
	adds	r0, r1, #1	@ tmp285,,
	uxth	r3, r0	@, tmp285
	uxth	r2, r3	@,
	add	r1, r7, r2, lsl #1	@, tmp289,,,
	adds	r0, r1, #1	@ tmp292, tmp289,
	ldr	r7, [sp, #20]	@, %sfp
	str	r2, [sp, #36]	@, %sfp
	str	r3, [sp, #16]	@, %sfp
	uxth	r3, r0	@, tmp292
	uxth	r7, r7	@ y.6,
	str	r3, [sp, #12]	@, %sfp
	ldr	r3, [sp, #36]	@, %sfp
	rsb	r1, r7, sl	@ tmp294, y.6, xCenter
	uxth	r0, r1	@, tmp294
	rsb	lr, r3, r4	@ tmp295,, yCenter
	add	ip, r7, sl	@ tmp293, y.6, xCenter
	subs	r1, r4, r7	@ tmp296, yCenter, y.6
	ldr	r3, [sp, #8]	@, %sfp
	uxth	r2, ip	@, tmp293
	str	r0, [sp, #28]	@, %sfp
	str	r0, [sp, #48]	@, %sfp
	uxth	r0, r1	@, tmp296
	str	r2, [sp, #24]	@, %sfp
	str	r2, [sp, #44]	@, %sfp
	str	r0, [sp, #32]	@, %sfp
	uxth	r2, lr	@, tmp295
	lsls	r0, r3, #30	@,,
	str	r2, [sp, #52]	@, %sfp
	bpl	.L61	@,
	sxth	r3, r9	@ xc_px, ivtmp.110
	sxth	lr, r5	@ lcdWidth, lcdWidth
	cmp	r3, lr	@ xc_px, lcdWidth
	bge	.L62	@,
	cmp	r3, #0	@ xc_px,
	blt	.L62	@,
	mov	r0, r9	@, ivtmp.110
	ldr	r1, [sp, #32]	@, %sfp
	mov	r2, r9	@, ivtmp.110
	mov	r3, r4	@, yCenter
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L62:
	ldr	r2, [sp, #44]	@, %sfp
	sxth	ip, r5	@ lcdWidth, lcdWidth
	sxth	r3, r2	@ xc_py,
	cmp	r3, ip	@ xc_py, lcdWidth
	bge	.L61	@,
	cmp	r3, #0	@ xc_py,
	blt	.L61	@,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	mov	r2, r0	@,
	mov	r3, r4	@, yCenter
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L61:
	ldr	r3, [sp, #8]	@, %sfp
	lsls	r1, r3, #28	@,,
	bpl	.L63	@,
	sxth	r3, r9	@ xc_px, ivtmp.110
	sxth	r0, r5	@ lcdWidth, lcdWidth
	cmp	r3, r0	@ xc_px, lcdWidth
	bge	.L64	@,
	cmp	r3, #0	@ xc_px,
	blt	.L64	@,
	ldr	r1, [sp, #32]	@, %sfp
	mov	r0, r9	@, ivtmp.110
	add	lr, r1, r7, lsl #1	@, tmp311,, y.6,
	mov	r2, r9	@, ivtmp.110
	mov	r1, r4	@, yCenter
	uxth	r3, lr	@, tmp311
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L64:
	ldr	r2, [sp, #44]	@, %sfp
	sxth	ip, r5	@ lcdWidth, lcdWidth
	sxth	r3, r2	@ xc_py,
	cmp	r3, ip	@ xc_py, lcdWidth
	bge	.L63	@,
	cmp	r3, #0	@ xc_py,
	blt	.L63	@,
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r4	@, yCenter
	adds	r3, r0, r4	@ tmp316,, yCenter
	ldr	r0, [sp, #24]	@, %sfp
	uxth	r3, r3	@, tmp316
	mov	r2, r0	@,
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L63:
	ldr	r1, [sp, #8]	@, %sfp
	lsls	r2, r1, #31	@,,
	bpl	.L65	@,
	sxth	r3, r8	@ xc_mx, ivtmp.108
	sxth	lr, r5	@ lcdWidth, lcdWidth
	cmp	r3, lr	@ xc_mx, lcdWidth
	bge	.L66	@,
	cmp	r3, #0	@ xc_mx,
	blt	.L66	@,
	mov	r0, r8	@, ivtmp.108
	ldr	r1, [sp, #32]	@, %sfp
	mov	r2, r8	@, ivtmp.108
	mov	r3, r4	@, yCenter
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L66:
	ldr	r2, [sp, #48]	@, %sfp
	sxth	ip, r5	@ lcdWidth, lcdWidth
	sxth	r3, r2	@ xc_my,
	cmp	r3, ip	@ xc_my, lcdWidth
	bge	.L65	@,
	cmp	r3, #0	@ xc_my,
	blt	.L65	@,
	ldr	r0, [sp, #28]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	mov	r2, r0	@,
	mov	r3, r4	@, yCenter
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L65:
	ldr	r3, [sp, #8]	@, %sfp
	lsls	r3, r3, #29	@,,
	bpl	.L67	@,
	sxth	r3, r8	@ xc_mx, ivtmp.108
	sxth	r0, r5	@ lcdWidth, lcdWidth
	cmp	r3, r0	@ xc_mx, lcdWidth
	bge	.L68	@,
	cmp	r3, #0	@ xc_mx,
	blt	.L68	@,
	ldr	r1, [sp, #32]	@, %sfp
	mov	r0, r8	@, ivtmp.108
	add	r7, r1, r7, lsl #1	@, tmp332,, y.6,
	mov	r2, r8	@, ivtmp.108
	mov	r1, r4	@, yCenter
	uxth	r3, r7	@, tmp332
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L68:
	ldr	r2, [sp, #48]	@, %sfp
	sxth	lr, r5	@ lcdWidth, lcdWidth
	sxth	r3, r2	@ xc_my,
	cmp	r3, lr	@ xc_my, lcdWidth
	bge	.L67	@,
	cmp	r3, #0	@ xc_my,
	blt	.L67	@,
	ldr	r3, [sp, #36]	@, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	add	ip, r3, r4	@ tmp337,, yCenter
	mov	r1, r4	@, yCenter
	mov	r2, r0	@,
	uxth	r3, ip	@, tmp337
	str	r6, [sp, #0]	@ color,
	bl	drawLine	@
.L67:
	add	r1, r8, #-1	@ tmp339, ivtmp.108,
	add	r0, r9, #1	@ tmp340, ivtmp.110,
	uxth	r8, r1	@ ivtmp.108, tmp339
	uxth	r9, r0	@ ivtmp.110, tmp340
.L59:
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r3, [sp, #20]	@, %sfp
	sxth	lr, r0	@ x,
	sxth	r2, r3	@ y,
	cmp	lr, r2	@ x, y
	blt	.L69	@,
	add	sp, sp, #56	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawCornerFilled, .-drawCornerFilled
	.section	.text.drawArrow,"ax",%progbits
	.align	1
	.global	drawArrow
	.thumb
	.thumb_func
	.ascii	"drawArrow\000"
	.align	2
	.word	4278190092
	.type	drawArrow, %function
drawArrow:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}	@
	ldrh	r8, [sp, #40]	@ color, color
	mov	r9, r2	@ size, size
	mov	r2, r8	@, color
	mov	r4, r0	@ x, x
	mov	r5, r1	@ y, y
	mov	r6, r3	@ direction, direction
	bl	drawPixel	@
	cmp	r9, #1	@ size,
	beq	.L71	@,
	cmp	r6, #3	@ direction,
	bhi	.L71	@
	tbb	[pc, r6]	@ direction
.L77:
	.byte	(.L82-.L77)/2
	.byte	(.L83-.L77)/2
	.byte	(.L84-.L77)/2
	.byte	(.L85-.L77)/2
	.align	1
.L78:
	uxth	r1, r6	@ D.5868, i
	adds	r0, r1, r4	@ tmp427, D.5868, x
	uxth	r0, r0	@ D.5869, tmp427
	adds	r3, r1, r5	@ tmp428, D.5868, y
	mov	r2, r0	@,
	mov	r1, r7	@, y
	uxth	r3, r3	@, tmp428
	str	r8, [sp, #0]	@ color,
	adds	r6, r6, #1	@ i, i,
	bl	drawLine	@
	b	.L73	@
.L82:
	mov	r7, r5	@ y, y
	movs	r6, #1	@ i,
.L73:
	subs	r7, r7, #1	@ tmp430, y,
	cmp	r6, r9	@ i, size
	uxth	r7, r7	@ y, tmp430
	bcc	.L78	@,
	b	.L71	@
.L79:
	uxth	r3, r6	@ D.5896, i
	subs	r1, r4, r3	@ tmp431, x, D.5896
	uxth	r0, r1	@ D.5895, tmp431
	subs	r2, r5, r3	@ tmp432, y, D.5896
	uxth	r1, r2	@, tmp432
	mov	r3, r7	@, y
	mov	r2, r0	@,
	str	r8, [sp, #0]	@ color,
	adds	r6, r6, #1	@ i, i,
	bl	drawLine	@
	b	.L74	@
.L83:
	mov	r7, r5	@ y, y
	movs	r6, #1	@ i,
.L74:
	adds	r0, r7, #1	@ tmp434, y,
	cmp	r6, r9	@ i, size
	uxth	r7, r0	@ y, tmp434
	bcc	.L79	@,
	b	.L71	@
.L80:
	uxth	lr, r6	@ D.5922, i
	add	r2, lr, r5	@ tmp435, D.5922, y
	uxth	r1, r2	@ D.5921, tmp435
	add	ip, lr, r4	@ tmp436, D.5922, x
	mov	r0, r7	@, x
	uxth	r2, ip	@, tmp436
	mov	r3, r1	@,
	str	r8, [sp, #0]	@ color,
	adds	r6, r6, #1	@ i, i,
	bl	drawLine	@
	b	.L75	@
.L84:
	mov	r7, r4	@ x, x
	movs	r6, #1	@ i,
.L75:
	subs	r7, r7, #1	@ tmp438, x,
	cmp	r6, r9	@ i, size
	uxth	r7, r7	@ x, tmp438
	bcc	.L80	@,
	b	.L71	@
.L81:
	uxth	r0, r6	@ D.5946, i
	subs	r1, r5, r0	@ tmp439, y, D.5946
	uxth	r1, r1	@ D.5949, tmp439
	subs	r3, r4, r0	@ tmp440, x, D.5946
	uxth	r0, r3	@, tmp440
	mov	r2, r7	@, x
	mov	r3, r1	@,
	str	r8, [sp, #0]	@ color,
	adds	r6, r6, #1	@ i, i,
	bl	drawLine	@
	b	.L76	@
.L85:
	mov	r7, r4	@ x, x
	movs	r6, #1	@ i,
.L76:
	adds	r2, r7, #1	@ tmp442, x,
	cmp	r6, r9	@ i, size
	uxth	r7, r2	@ x, tmp442
	bcc	.L81	@,
.L71:
	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
	.size	drawArrow, .-drawArrow
	.section	.text.drawRectangle,"ax",%progbits
	.align	1
	.global	drawRectangle
	.thumb
	.thumb_func
	.ascii	"drawRectangle\000"
	.align	2
	.word	4278190096
	.type	drawRectangle, %function
drawRectangle:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, lr}	@
	cmp	r3, r1	@ y1, y0
	mov	r4, r1	@ y0, y0
	mov	r5, r3	@ y1, y1
	itt	cc
	movcc	r4, r3	@ y0, y1
	movcc	r5, r1	@ y1, y0
	cmp	r2, r0	@ x1, x0
	mov	r7, r0	@ x0, x0
	mov	r6, r2	@ x1, x1
	ldrh	r8, [sp, #32]	@ color, color
	bcs	.L88	@,
	mov	r7, r2	@ x0, x1
	mov	r6, r0	@ x1, x0
.L88:
	mov	r0, r7	@, x0
	mov	r1, r4	@, y0
	mov	r2, r6	@, x1
	mov	r3, r4	@, y0
	str	r8, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r6	@, x1
	mov	r1, r4	@, y0
	mov	r2, r6	@, x1
	mov	r3, r5	@, y1
	str	r8, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r6	@, x1
	mov	r1, r5	@, y1
	mov	r2, r7	@, x0
	mov	r3, r5	@, y1
	str	r8, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r7	@, x0
	mov	r1, r5	@, y1
	mov	r2, r7	@,
	mov	r3, r4	@, y0
	str	r8, [sp, #32]	@ color,
	add	sp, sp, #8	@,,
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawLine	@
	.size	drawRectangle, .-drawRectangle
	.section	.text.drawRectangleFilled,"ax",%progbits
	.align	1
	.global	drawRectangleFilled
	.thumb
	.thumb_func
	.ascii	"drawRectangleFilled\000"
	.align	2
	.word	4278190100
	.type	drawRectangleFilled, %function
drawRectangleFilled:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, lr}	@
	cmp	r3, r1	@ y1, y0
	mov	r4, r0	@ x0, x0
	mov	r5, r2	@ x1, x1
	mov	r6, r3	@ y1, y1
	ldrh	r8, [sp, #32]	@ color, color
	bcs	.L92	@,
	mov	r3, r1	@ y0, y0
	mov	r1, r6	@ y0, y1
	mov	r6, r3	@ y1, y0
.L92:
	cmp	r5, r4	@ x1, x0
	bcs	.L93	@,
	mov	r0, r4	@ x0, x0
	mov	r4, r5	@ x0, x1
	mov	r5, r0	@ x1, x0
.L93:
	mov	r7, r1	@ height, y0
	b	.L94	@
.L95:
	uxth	r1, r7	@ D.5402, height
	mov	r0, r4	@, x0
	mov	r2, r5	@, x1
	mov	r3, r1	@,
	str	r8, [sp, #0]	@ color,
	bl	drawLine	@
	adds	r7, r7, #1	@ height, height,
.L94:
	cmp	r7, r6	@ height, y1
	ble	.L95	@,
	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
	.size	drawRectangleFilled, .-drawRectangleFilled
	.section	.text.drawRoundedRectangle,"ax",%progbits
	.align	1
	.global	drawRoundedRectangle
	.thumb
	.thumb_func
	.ascii	"drawRoundedRectangle\000"
	.align	2
	.word	4278190104
	.type	drawRoundedRectangle, %function
drawRoundedRectangle:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #32	@,,
	ldrb	ip, [sp, #72]	@ zero_extendqisi2	@ corners, corners
	mov	r9, r0	@ x0, x0
	mov	r7, r1	@ y0, y0
	mov	sl, r2	@ x1, x1
	mov	r8, r3	@ y1, y1
	ldrh	r4, [sp, #64]	@ color, color
	ldrh	r5, [sp, #68]	@ radius, radius
	cmp	ip, #0	@ corners
	bne	.L99	@
	str	r4, [sp, #64]	@ color,
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawRectangle	@
.L99:
	cmp	r3, r1	@ y1, y0
	itt	cc
	movcc	r8, r1	@ y1, y0
	movcc	r7, r3	@ y0, y1
	rsb	r6, r7, r8	@ height, y0, y1
	add	r1, r6, r6, lsr #31	@, tmp178, height, height,
	asrs	r3, r1, #1	@ tmp179, tmp178,
	cmp	r5, r3	@ radius, tmp179
	it	gt
	uxthgt	r5, r3	@ radius, tmp179
	subs	r5, r5, #1	@ tmp180, radius,
	sub	r0, ip, #3	@ tmp181, corners,
	uxth	r5, r5	@ radius, tmp180
	cmp	r0, #12	@ tmp181,
	bhi	.L98	@
	tbh	[pc, r0, lsl #1]	@ tmp181
.L108:
	.2byte	(.L103-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L104-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L105-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L106-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L98-.L108)/2
	.2byte	(.L107-.L108)/2
.L107:
	add	r2, r5, r9	@ tmp182, radius, x0
	uxth	r1, r2	@, tmp182
	adds	r0, r5, r7	@ tmp183, radius, y0
	uxth	r3, r0	@, tmp183
	str	r1, [sp, #16]	@, %sfp
	mov	r2, r5	@, radius
	mov	r1, r3	@,
	str	r3, [sp, #20]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	movs	r3, #1	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	rsb	r2, r5, sl	@ tmp184, radius, x1
	uxth	r1, r2	@, tmp184
	mov	r0, r1	@,
	mov	r2, r5	@, radius
	movs	r3, #2	@,
	str	r1, [sp, #24]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	rsb	r0, r5, r8	@ tmp185, radius, y1
	uxth	r3, r0	@, tmp185
	mov	r1, r3	@,
	mov	r2, r5	@, radius
	str	r3, [sp, #28]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	movs	r3, #4	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	mov	r2, r5	@, radius
	movs	r3, #8	@,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r1, [sp, #28]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	lsls	r2, r5, #1	@ tmp186, radius,
	adds	r5, r2, #1	@ tmp187, tmp186,
	cmp	r5, r6	@ tmp187, height
	bge	.L109	@,
	mov	r0, r9	@, x0
	ldr	r1, [sp, #20]	@, %sfp
	mov	r2, r9	@,
	ldr	r3, [sp, #28]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, sl	@, x1
	ldr	r1, [sp, #20]	@, %sfp
	mov	r2, sl	@,
	ldr	r3, [sp, #28]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
.L109:
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r7	@, y0
	ldr	r2, [sp, #24]	@, %sfp
	mov	r3, r7	@, tmp1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	str	r4, [sp, #64]	@ color,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r8	@, y1
	ldr	r2, [sp, #24]	@, %sfp
	b	.L113	@
.L103:
	add	r1, r5, r9	@ tmp188, radius, x0
	adds	r0, r5, r7	@ tmp189, radius, y0
	uxth	lr, r1	@ D.5382, tmp188
	uxth	r3, r0	@, tmp189
	rsb	r6, r5, sl	@ tmp190, radius, x1
	mov	r0, lr	@, D.5382
	mov	r1, r3	@,
	str	r3, [sp, #16]	@, %sfp
	mov	r2, r5	@, radius
	movs	r3, #1	@,
	uxth	r6, r6	@ D.5384, tmp190
	str	lr, [sp, #12]	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	mov	r0, r6	@, D.5384
	ldr	r1, [sp, #16]	@, %sfp
	mov	r2, r5	@, radius
	movs	r3, #2	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	mov	r0, r9	@, x0
	ldr	r1, [sp, #16]	@, %sfp
	mov	r2, r9	@, x0
	mov	r3, r8	@, y1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r9	@, x0
	mov	r1, r8	@, y1
	mov	r2, sl	@, x1
	mov	r3, r8	@, y1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, sl	@, x1
	mov	r1, r8	@, y1
	mov	r2, sl	@,
	ldr	r3, [sp, #16]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	ip, [sp, #12]	@,
	str	r4, [sp, #64]	@ color,
	mov	r0, ip	@, D.5382
	mov	r1, r7	@, y0
	mov	r2, r6	@, D.5384
	b	.L115	@
.L106:
	add	r0, r5, r9	@ tmp191, radius, x0
	rsb	r3, r5, r8	@ tmp192, radius, y1
	uxth	lr, r0	@ D.5382, tmp191
	uxth	r6, r3	@, tmp192
	mov	r0, lr	@, D.5382
	mov	r1, r6	@,
	mov	r2, r5	@, radius
	movs	r3, #4	@,
	str	lr, [sp, #12]	@,
	str	r6, [sp, #16]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	rsb	r2, r5, sl	@ tmp193, radius, x1
	uxth	r6, r2	@ D.5384, tmp193
	mov	r0, r6	@, D.5384
	ldr	r1, [sp, #16]	@, %sfp
	mov	r2, r5	@, radius
	movs	r3, #8	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	mov	r0, r9	@, x0
	mov	r1, r7	@, y0
	mov	r2, sl	@, x1
	mov	r3, r7	@, y0
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, sl	@, x1
	mov	r1, r7	@, y0
	mov	r2, sl	@,
	ldr	r3, [sp, #16]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	ip, [sp, #12]	@,
	mov	r0, r6	@, D.5384
	mov	r1, r8	@, y1
	mov	r2, ip	@, D.5382
	mov	r3, r8	@, tmp1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	r1, [sp, #16]	@, %sfp
	str	r4, [sp, #64]	@ color,
	mov	r0, r9	@, x0
	mov	r2, r9	@,
.L115:
	mov	r3, r7	@, y0
	b	.L114	@
.L104:
	add	r1, r5, r9	@ tmp194, radius, x0
	adds	r0, r5, r7	@ tmp195, radius, y0
	uxth	ip, r0	@ D.5383, tmp195
	uxth	r3, r1	@, tmp194
	mov	r0, r3	@,
	mov	r1, ip	@, D.5383
	mov	r2, r5	@, radius
	str	r3, [sp, #16]	@, %sfp
	movs	r3, #1	@,
	str	ip, [sp, #12]	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	rsb	r2, r5, r8	@ tmp196, radius, y1
	uxth	r1, r2	@, tmp196
	mov	r2, r5	@, radius
	lsls	r5, r5, #1	@ tmp197, radius,
	movs	r3, #4	@,
	ldr	r0, [sp, #16]	@, %sfp
	adds	r5, r5, #1	@ tmp198, tmp197,
	str	r1, [sp, #20]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	cmp	r5, r6	@ tmp198, height
	ldr	ip, [sp, #12]	@,
	bge	.L110	@,
	mov	r0, r9	@, x0
	mov	r1, ip	@, D.5383
	mov	r2, r9	@,
	ldr	r3, [sp, #20]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
.L110:
	mov	r0, sl	@, x1
	mov	r1, r7	@, y0
	mov	r2, sl	@, x1
	mov	r3, r8	@, y1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r7	@, y0
	mov	r2, sl	@, x1
	mov	r3, r7	@, tmp1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	str	r4, [sp, #64]	@ color,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r8	@, y1
	mov	r2, sl	@, x1
	b	.L113	@
.L105:
	subs	r1, r2, r5	@ tmp199, x1, radius
	adds	r0, r5, r7	@ tmp200, radius, y0
	uxth	lr, r0	@ D.5383, tmp200
	uxth	r3, r1	@, tmp199
	mov	r0, r3	@,
	mov	r1, lr	@, D.5383
	mov	r2, r5	@, radius
	str	r3, [sp, #16]	@, %sfp
	movs	r3, #2	@,
	str	lr, [sp, #12]	@,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	rsb	ip, r5, r8	@ tmp201, radius, y1
	uxth	r2, ip	@, tmp201
	str	r2, [sp, #20]	@, %sfp
	mov	r1, r2	@,
	mov	r2, r5	@, radius
	lsls	r5, r5, #1	@ tmp202, radius,
	movs	r3, #8	@,
	ldr	r0, [sp, #16]	@, %sfp
	adds	r5, r5, #1	@ tmp203, tmp202,
	str	r4, [sp, #0]	@ color,
	bl	drawCorner	@
	cmp	r5, r6	@ tmp203, height
	ldr	ip, [sp, #12]	@,
	bge	.L111	@,
	mov	r0, sl	@, x1
	mov	r1, ip	@, D.5383
	mov	r2, sl	@,
	ldr	r3, [sp, #20]	@, %sfp
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
.L111:
	mov	r0, r9	@, x0
	mov	r1, r7	@, y0
	mov	r2, r9	@, x0
	mov	r3, r8	@, y1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r9	@, x0
	mov	r1, r7	@, y0
	ldr	r2, [sp, #16]	@, %sfp
	mov	r3, r7	@, tmp1
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	ldr	r2, [sp, #16]	@, %sfp
	str	r4, [sp, #64]	@ color,
	mov	r0, r9	@, x0
	mov	r1, r8	@, y1
.L113:
	mov	r3, r8	@, tmp1
.L114:
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawLine	@
.L98:
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawRoundedRectangle, .-drawRoundedRectangle
	.section	.text.drawRoundedRectangleFilled,"ax",%progbits
	.align	1
	.global	drawRoundedRectangleFilled
	.thumb
	.thumb_func
	.ascii	"drawRoundedRectangleFilled\000"
	.align	2
	.word	4278190108
	.type	drawRoundedRectangleFilled, %function
drawRoundedRectangleFilled:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #24	@,,
	ldrb	ip, [sp, #64]	@ zero_extendqisi2	@ corners, corners
	str	r0, [sp, #12]	@ x0, %sfp
	mov	r7, r1	@ y0, y0
	mov	sl, r2	@ x1, x1
	mov	r6, r3	@ y1, y1
	ldrh	r5, [sp, #56]	@ color, color
	ldrh	r4, [sp, #60]	@ radius, radius
	cmp	ip, #0	@ corners
	bne	.L117	@
	str	r5, [sp, #56]	@ color,
	b	.L130	@
.L117:
	cmp	r3, r1	@ y1, y0
	itt	cc
	movcc	r7, r3	@ y0, y1
	movcc	r6, r1	@ y1, y0
	subs	r2, r6, r7	@, y1, y0
	add	r1, r2, r2, lsr #31	@, tmp174,,,
	asrs	r0, r1, #1	@ tmp175, tmp174,
	cmp	r4, r0	@ radius, tmp175
	it	gt
	uxthgt	r4, r0	@ radius, tmp175
	ldr	r3, [sp, #12]	@, %sfp
	subs	r4, r4, #1	@ tmp176, radius,
	uxth	r4, r4	@ radius, tmp176
	str	r2, [sp, #16]	@, %sfp
	rsb	r1, r4, sl	@ tmp178, radius, x1
	adds	r2, r4, r3	@ tmp177, radius,
	uxth	r9, r2	@ D.5356, tmp177
	uxth	r8, r1	@ D.5357, tmp178
	mov	r0, r9	@, D.5356
	mov	r1, r7	@, y0
	mov	r2, r8	@, D.5357
	mov	r3, r6	@, y1
	str	ip, [sp, #8]	@,
	str	r5, [sp, #0]	@ color,
	bl	drawRectangleFilled	@
	ldr	ip, [sp, #8]	@,
	sub	r0, ip, #3	@ tmp179, corners,
	cmp	r0, #12	@ tmp179,
	bhi	.L116	@
	tbh	[pc, r0, lsl #1]	@ tmp179
.L126:
	.2byte	(.L121-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L122-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L123-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L124-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L116-.L126)/2
	.2byte	(.L125-.L126)/2
.L125:
	adds	r7, r4, r7	@ tmp180, radius, y0
	uxth	r7, r7	@ D.5359, tmp180
	mov	r2, r4	@, radius
	movs	r3, #1	@,
	mov	r0, r9	@, D.5356
	mov	r1, r7	@, D.5359
	subs	r6, r6, r4	@ tmp181, y1, radius
	uxth	r6, r6	@ D.5360, tmp181
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	mov	r2, r4	@, radius
	movs	r3, #2	@,
	mov	r0, r8	@, D.5357
	mov	r1, r7	@, D.5359
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	mov	r2, r4	@, radius
	movs	r3, #4	@,
	mov	r0, r9	@, D.5356
	mov	r1, r6	@, D.5360
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	movs	r3, #8	@,
	mov	r2, r4	@, radius
	mov	r0, r8	@, D.5357
	mov	r1, r6	@, D.5360
	lsls	r4, r4, #1	@ tmp182, radius,
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	ldr	r3, [sp, #16]	@, %sfp
	adds	r4, r4, #1	@ tmp183, tmp182,
	cmp	r4, r3	@ tmp183,
	bge	.L116	@,
	b	.L132	@
.L121:
	adds	r0, r4, r7	@ tmp184, radius, y0
	uxth	r7, r0	@ D.5359, tmp184
	mov	r1, r7	@, D.5359
	mov	r0, r9	@, D.5356
	mov	r2, r4	@, radius
	movs	r3, #1	@,
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	str	r5, [sp, #0]	@ color,
	mov	r0, r8	@, D.5357
	mov	r1, r7	@, D.5359
	mov	r2, r4	@, radius
	movs	r3, #2	@,
.L134:
	bl	drawCornerFilled	@
.L132:
	ldr	r0, [sp, #12]	@, %sfp
	str	r5, [sp, #0]	@ color,
	mov	r1, r7	@, D.5359
	mov	r2, r9	@, D.5356
	mov	r3, r6	@, y1
.L135:
	bl	drawRectangleFilled	@
.L133:
	str	r5, [sp, #56]	@ color,
	mov	r0, r8	@, D.5357
	mov	r1, r7	@, D.5359
	mov	r2, sl	@, x1
	b	.L131	@
.L124:
	subs	r1, r6, r4	@ tmp185, y1, radius
	uxth	r6, r1	@ D.5360, tmp185
	mov	r0, r9	@, D.5356
	mov	r1, r6	@, D.5360
	mov	r2, r4	@, radius
	movs	r3, #4	@,
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	str	r5, [sp, #0]	@ color,
	mov	r0, r8	@, D.5357
	mov	r1, r6	@, D.5360
	mov	r2, r4	@, radius
	movs	r3, #8	@,
	b	.L134	@
.L122:
	adds	r2, r4, r7	@ tmp186, radius, y0
	uxth	lr, r2	@ D.5359, tmp186
	mov	r1, lr	@, D.5359
	mov	r2, r4	@, radius
	movs	r3, #1	@,
	mov	r0, r9	@, D.5356
	str	lr, [sp, #8]	@,
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	subs	r0, r6, r4	@ tmp187, y1, radius
	uxth	r1, r0	@, tmp187
	mov	r2, r4	@, radius
	movs	r3, #4	@,
	mov	r0, r9	@, D.5356
	str	r1, [sp, #20]	@, %sfp
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	lsls	r3, r4, #1	@ tmp188, radius,
	ldr	r2, [sp, #16]	@, %sfp
	adds	r4, r3, #1	@ tmp189, tmp188,
	cmp	r4, r2	@ tmp189,
	ldr	ip, [sp, #8]	@,
	bge	.L133	@,
	str	r5, [sp, #0]	@ color,
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, ip	@, D.5359
	mov	r2, r9	@, D.5356
	ldr	r3, [sp, #20]	@, %sfp
	b	.L135	@
.L123:
	adds	r2, r4, r7	@ tmp190, radius, y0
	uxth	ip, r2	@ D.5359, tmp190
	mov	r1, ip	@, D.5359
	mov	r2, r4	@, radius
	movs	r3, #2	@,
	mov	r0, r8	@, D.5357
	str	ip, [sp, #8]	@,
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	subs	r0, r6, r4	@ tmp191, y1, radius
	uxth	r1, r0	@, tmp191
	movs	r3, #8	@,
	mov	r2, r4	@, radius
	mov	r0, r8	@, D.5357
	lsls	r4, r4, #1	@ tmp192, radius,
	str	r1, [sp, #20]	@, %sfp
	str	r5, [sp, #0]	@ color,
	bl	drawCornerFilled	@
	ldr	r3, [sp, #16]	@, %sfp
	adds	r4, r4, #1	@ tmp193, tmp192,
	cmp	r4, r3	@ tmp193,
	ldr	ip, [sp, #8]	@,
	bge	.L128	@,
	mov	r0, r8	@, D.5357
	mov	r1, ip	@, D.5359
	mov	r2, sl	@, x1
	ldr	r3, [sp, #20]	@, %sfp
	str	r5, [sp, #0]	@ color,
	bl	drawRectangleFilled	@
.L128:
	ldr	r0, [sp, #12]	@, %sfp
	str	r5, [sp, #56]	@ color,
	mov	r1, r7	@, y0
	mov	r2, r9	@, D.5356
.L131:
	mov	r3, r6	@, y1
.L130:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawRectangleFilled	@
.L116:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawRoundedRectangleFilled, .-drawRoundedRectangleFilled
	.section	.text.drawGradient,"ax",%progbits
	.align	1
	.global	drawGradient
	.thumb
	.thumb_func
	.ascii	"drawGradient\000"
	.align	2
	.word	4278190096
	.type	drawGradient, %function
drawGradient:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r4, r1	@ y0, y0
	sub	sp, sp, #32	@,,
	cmp	r3, r4	@ y1, y0
	mov	r8, r0	@ x0, x0
	mov	r7, r2	@ x1, x1
	mov	r6, r3	@ y1, y1
	ldrh	r9, [sp, #64]	@ startColor, startColor
	ldrh	r1, [sp, #68]	@ endColor, endColor
	bcs	.L137	@,
	mov	r3, r4	@ y0, y0
	mov	r4, r6	@ y0, y1
	mov	r6, r3	@ y1, y0
.L137:
	cmp	r7, r8	@ x1, x0
	bcs	.L138	@,
	mov	r0, r8	@ x0, x0
	mov	r8, r7	@ x0, x1
	mov	r7, r0	@ x1, x0
.L138:
	lsr	sl, r9, #11	@ D.5298, startColor,
	movs	r2, #100	@ tmp248,
	rsb	r0, sl, r1, lsr #11	@, tmp246, D.5298, endColor,
	muls	r0, r2, r0	@ tmp247, tmp248
	subs	r3, r6, r4	@ height, y1, y0
	sdiv	r5, r0, r3	@ D.5310, tmp247, height
	lsr	ip, r9, #5	@ D.5302, startColor,
	lsrs	r0, r1, #5	@ tmp249, endColor,
	str	r5, [sp, #20]	@ D.5310, %sfp
	and	r5, r0, #63	@ tmp251, tmp249,
	and	r0, ip, #63	@ tmp252, D.5302,
	subs	r0, r5, r0	@ tmp256, tmp251, tmp252
	muls	r0, r2, r0	@ tmp257, tmp248
	and	r1, r1, #31	@ tmp259, endColor,
	sdiv	r5, r0, r3	@ D.5313, tmp257, height
	and	r0, r9, #31	@ tmp260, startColor,
	str	r5, [sp, #24]	@ D.5313, %sfp
	subs	r5, r1, r0	@ tmp264, tmp259, tmp260
	muls	r5, r2, r5	@ tmp265, tmp248
	sdiv	r1, r5, r3	@ D.5316, tmp265, height
	str	r1, [sp, #28]	@ D.5316, %sfp
	mov	r5, r4	@ height, y0
	str	ip, [sp, #12]	@ D.5302, %sfp
	b	.L139	@
.L140:
	ldr	ip, [sp, #20]	@, %sfp
	subs	r2, r5, r4	@ D.5319, height, y0
	sxth	r3, ip	@ rDelta,
	mul	r0, r2, r3	@ tmp268, D.5319, rDelta
	movs	r3, #100	@ tmp271,
	sdiv	lr, r0, r3	@ tmp270, tmp268, tmp271
	ldr	ip, [sp, #28]	@, %sfp
	add	r0, lr, sl	@ tmp276, tmp270, D.5298
	uxtb	lr, r0	@ tmp277, tmp276
	sxth	r0, ip	@ bDelta,
	muls	r0, r2, r0	@ tmp280, D.5319
	sdiv	r0, r0, r3	@ tmp282, tmp280, tmp271
	add	ip, r9, r0	@ tmp288, startColor, tmp282
	and	r0, ip, #31	@ tmp291, tmp288,
	ldr	ip, [sp, #24]	@, %sfp
	orr	r0, r0, lr, lsl #11	@, tmp294, tmp291, tmp277,
	sxth	lr, ip	@ gDelta,
	mul	ip, r2, lr	@ tmp296, D.5319, gDelta
	ldr	lr, [sp, #12]	@, %sfp
	sdiv	r3, ip, r3	@ tmp298, tmp296, tmp271
	add	r2, lr, r3	@ tmp304,, tmp298
	and	ip, r2, #63	@ tmp306, tmp304,
	orr	lr, r0, ip, lsl #5	@, tmp310, tmp294, tmp306,
	uxth	r1, r5	@ D.5333, height
	uxth	r3, lr	@ tmp311, tmp310
	str	r3, [sp, #0]	@ tmp311,
	mov	r0, r8	@, x0
	mov	r2, r7	@, x1
	mov	r3, r1	@,
	bl	drawLine	@
	adds	r5, r5, #1	@ height, height,
.L139:
	cmp	r5, r6	@ height, y1
	ble	.L140	@,
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawGradient, .-drawGradient
	.section	.text.drawTriangle,"ax",%progbits
	.align	1
	.global	drawTriangle
	.thumb
	.thumb_func
	.ascii	"drawTriangle\000"
	.align	2
	.word	4278190096
	.type	drawTriangle, %function
drawTriangle:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldrh	r4, [sp, #48]	@ color, color
	ldrh	r6, [sp, #40]	@ x2, x2
	ldrh	r5, [sp, #44]	@ y2, y2
	mov	r7, r2	@ x1, x1
	mov	r8, r3	@ y1, y1
	mov	r9, r0	@ x0, x0
	mov	sl, r1	@ y0, y0
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r7	@, x1
	mov	r1, r8	@, y1
	mov	r2, r6	@, x2
	mov	r3, r5	@, y2
	str	r4, [sp, #0]	@ color,
	bl	drawLine	@
	mov	r0, r6	@, x2
	mov	r1, r5	@, y2
	mov	r2, r9	@, x0
	mov	r3, sl	@, y0
	str	r4, [sp, #40]	@ color,
	add	sp, sp, #8	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawLine	@
	.size	drawTriangle, .-drawTriangle
	.section	.text.drawTriangleFilled,"ax",%progbits
	.align	1
	.global	drawTriangleFilled
	.thumb
	.thumb_func
	.ascii	"drawTriangleFilled\000"
	.align	2
	.word	4278190100
	.type	drawTriangleFilled, %function
drawTriangleFilled:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #24	@,,
	ldrh	r5, [sp, #60]	@, y2
	mov	r9, r3	@ y1, y1
	str	r5, [sp, #12]	@, %sfp
	mov	r5, r3	@ sy, y1
	subs	r3, r3, r1	@ D.5260, y1, y0
	cmp	r3, #0	@ D.5260,
	it	gt
	rsbgt	sl, r0, r2	@ tmp309, x0, x1
	mov	r8, #1000	@ tmp308,
	it	gt
	mulgt	sl, r8, sl	@ tmp310, tmp308, tmp309
	mov	ip, r2	@ x1, x1
	ldr	r2, [sp, #12]	@, %sfp
	ldrh	r4, [sp, #64]	@, color
	mov	r6, r1	@ sy, y0
	rsb	r1, r1, r2	@ D.5268, y0,
	ite	gt
	sdivgt	sl, sl, r3	@ dx1, tmp310, D.5260
	movle	sl, #0	@ dx1,
	cmp	r1, #0	@ D.5268,
	str	r4, [sp, #16]	@, %sfp
	ldrh	r7, [sp, #56]	@ x2, x2
	mul	r4, r8, r0	@ sx2, tmp308, x0
	ble	.L159	@,
	subs	r3, r7, r0	@ tmp312, x2, x0
	mov	r2, #1000	@ tmp314,
	mul	r0, r2, r3	@ tmp313, tmp314, tmp312
	sdiv	r8, r0, r1	@ dx2, tmp313, D.5268
	b	.L146	@
.L159:
	mov	r8, #0	@ dx2,
.L146:
	ldr	r1, [sp, #12]	@, %sfp
	rsb	r3, r9, r1	@ D.5275, y1,
	cmp	r3, #0	@ D.5275,
	ble	.L160	@,
	rsb	r0, ip, r7	@ tmp315, x1, x2
	mov	r2, #1000	@ tmp317,
	muls	r0, r2, r0	@ tmp316, tmp317
	sdiv	r7, r0, r3	@, tmp316, D.5275
	str	r7, [sp, #20]	@, %sfp
	b	.L147	@
.L160:
	movs	r3, #0	@,
	str	r3, [sp, #20]	@, %sfp
.L147:
	cmp	sl, r8	@ dx1, dx2
	mov	r7, r4	@ sx1, sx2
	bgt	.L150	@,
	b	.L149	@
.L151:
	sdiv	lr, r4, r2	@ tmp323, sx2, tmp352
	sdiv	r0, r7, r2	@ tmp319, sx1, tmp352
	ldr	r2, [sp, #16]	@, %sfp
	uxth	r1, r6	@ D.5285, sy
	str	r2, [sp, #0]	@,
	uxth	r0, r0	@, tmp319
	uxth	r2, lr	@, tmp323
	mov	r3, r1	@,
	str	ip, [sp, #8]	@,
	bl	drawLine	@
	ldr	ip, [sp, #8]	@,
	adds	r6, r6, #1	@ sy, sy,
	add	r7, r7, r8	@ sx1, sx1, dx2
	add	r4, r4, sl	@ sx2, sx2, dx1
.L150:
	cmp	r6, r9	@ sy, y1
	mov	r2, #1000	@ tmp352,
	ble	.L151	@,
	mul	r4, r2, ip	@ sx2, tmp352, x1
	b	.L152	@
.L153:
	mov	r0, #1000	@ tmp329,
	ldr	r3, [sp, #16]	@, %sfp
	uxth	r1, r5	@ D.5285, sy
	sdiv	ip, r4, r0	@ tmp332, sx2, tmp329
	sdiv	lr, r7, r0	@ tmp328, sx1, tmp329
	str	r3, [sp, #0]	@,
	uxth	r0, lr	@, tmp328
	mov	r3, r1	@,
	uxth	r2, ip	@, tmp332
	bl	drawLine	@
	ldr	r1, [sp, #20]	@, %sfp
	adds	r5, r5, #1	@ sy, sy,
	add	r7, r7, r8	@ sx1, sx1, dx2
	adds	r4, r4, r1	@ sx2, sx2,
.L152:
	ldr	r2, [sp, #12]	@, %sfp
	cmp	r5, r2	@ sy,
	ble	.L153	@,
	b	.L144	@
.L155:
	ldr	r3, [sp, #16]	@, %sfp
	uxth	r1, r6	@ D.5285, sy
	sdiv	r0, r7, r2	@ tmp336, sx1, tmp353
	sdiv	lr, r4, r2	@ tmp340, sx2, tmp353
	str	r3, [sp, #0]	@,
	uxth	r0, r0	@, tmp336
	uxth	r2, lr	@, tmp340
	mov	r3, r1	@,
	str	ip, [sp, #8]	@,
	bl	drawLine	@
	ldr	ip, [sp, #8]	@,
	adds	r6, r6, #1	@ sy, sy,
	add	r7, r7, sl	@ sx1, sx1, dx1
	add	r4, r4, r8	@ sx2, sx2, dx2
.L149:
	cmp	r6, r9	@ sy, y1
	mov	r2, #1000	@ tmp353,
	ble	.L155	@,
	mul	r6, r2, ip	@ sx1, tmp353, x1
	b	.L156	@
.L157:
	mov	r0, #1000	@ tmp346,
	ldr	r2, [sp, #16]	@, %sfp
	uxth	r1, r5	@ D.5285, sy
	sdiv	ip, r4, r0	@ tmp349, sx2, tmp346
	sdiv	lr, r6, r0	@ tmp345, sx1, tmp346
	str	r2, [sp, #0]	@,
	mov	r3, r1	@,
	uxth	r0, lr	@, tmp345
	uxth	r2, ip	@, tmp349
	bl	drawLine	@
	ldr	r1, [sp, #20]	@, %sfp
	adds	r5, r5, #1	@ sy, sy,
	adds	r6, r6, r1	@ sx1, sx1,
	add	r4, r4, r8	@ sx2, sx2, dx2
.L156:
	ldr	r3, [sp, #12]	@, %sfp
	cmp	r5, r3	@ sy,
	ble	.L157	@,
.L144:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	drawTriangleFilled, .-drawTriangleFilled
	.section	.text.drawIcon16,"ax",%progbits
	.align	1
	.global	drawIcon16
	.thumb
	.thumb_func
	.ascii	"drawIcon16\000"
	.align	2
	.word	4278190092
	.type	drawIcon16, %function
drawIcon16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r6, r0	@ x, x
	mov	r4, r1	@ y, y
	mov	r5, r2	@ color, color
	mov	r8, r3	@ icon, icon
	movs	r7, #0	@ ivtmp.380,
.L178:
	ldrsh	r3, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	cmp	r3, #0	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bge	.L162	@,
	mov	r0, r6	@, x
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L162:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r0, r0, #17	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L163	@,
	adds	r1, r6, #1	@ tmp621, x,
	uxth	r0, r1	@, tmp621
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L163:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r1, r2, #18	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L164	@,
	adds	r3, r6, #2	@ tmp625, x,
	uxth	r0, r3	@, tmp625
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L164:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r2, r0, #19	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L165	@,
	adds	r1, r6, #3	@ tmp629, x,
	uxth	r0, r1	@, tmp629
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L165:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r3, r2, #20	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L166	@,
	adds	r3, r6, #4	@ tmp633, x,
	uxth	r0, r3	@, tmp633
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L166:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r0, r0, #21	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L167	@,
	adds	r1, r6, #5	@ tmp637, x,
	uxth	r0, r1	@, tmp637
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L167:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r1, r2, #22	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L168	@,
	adds	r3, r6, #6	@ tmp641, x,
	uxth	r0, r3	@, tmp641
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L168:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r2, r0, #23	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L169	@,
	adds	r1, r6, #7	@ tmp645, x,
	uxth	r0, r1	@, tmp645
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L169:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r3, r2, #24	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L170	@,
	add	r3, r6, #8	@ tmp649, x,
	uxth	r0, r3	@, tmp649
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L170:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r0, r0, #25	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L171	@,
	add	r1, r6, #9	@ tmp653, x,
	uxth	r0, r1	@, tmp653
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L171:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r1, r2, #26	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L172	@,
	add	r3, r6, #10	@ tmp657, x,
	uxth	r0, r3	@, tmp657
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L172:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r2, r0, #27	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L173	@,
	add	r1, r6, #11	@ tmp661, x,
	uxth	r0, r1	@, tmp661
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L173:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r3, r2, #28	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L174	@,
	add	r3, r6, #12	@ tmp665, x,
	uxth	r0, r3	@, tmp665
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L174:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r0, r0, #29	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L175	@,
	add	r1, r6, #13	@ tmp669, x,
	uxth	r0, r1	@, tmp669
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L175:
	ldrh	r2, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r1, r2, #30	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L176	@,
	add	r3, r6, #14	@ tmp673, x,
	uxth	r0, r3	@, tmp673
	mov	r1, r4	@, y
	mov	r2, r5	@, color
	bl	drawPixel	@
.L176:
	ldrh	r0, [r8, r7]	@ MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B], MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B]
	lsls	r2, r0, #31	@, MEM[base: icon_5(D), index: ivtmp.380_23, offset: 0B],
	bpl	.L177	@,
	add	r1, r6, #15	@ tmp677, x,
	uxth	r0, r1	@, tmp677
	mov	r2, r5	@, color
	mov	r1, r4	@, y
	bl	drawPixel	@
.L177:
	adds	r7, r7, #2	@ ivtmp.380, ivtmp.380,
	adds	r4, r4, #1	@ tmp679, y,
	cmp	r7, #32	@ ivtmp.380,
	uxth	r4, r4	@ y, tmp679
	bne	.L178	@,
	pop	{r4, r5, r6, r7, r8, pc}	@
	.size	drawIcon16, .-drawIcon16
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
