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
	.file	"fonts.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed fonts.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip fonts.o -Os -Wall -ffunction-sections
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

	.section	.text.fontsDrawCharBitmap,"ax",%progbits
	.align	1
	.global	fontsDrawCharBitmap
	.thumb
	.thumb_func
	.ascii	"fontsDrawCharBitmap\000"
	.align	2
	.word	4278190100
	.type	fontsDrawCharBitmap, %function
fontsDrawCharBitmap:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #24	@,,
	str	r0, [sp, #12]	@ xPixel, %sfp
	ldrb	r0, [sp, #56]	@ zero_extendqisi2	@ cols, cols
	mov	r4, r2	@ color, color
	str	r3, [sp, #8]	@ glyph, %sfp
	ldrb	r2, [sp, #60]	@ zero_extendqisi2	@, rows
	lsrs	r3, r0, #3	@ tmp304, cols,
	tst	r0, #7	@ cols,
	it	ne
	addne	r3, r3, #1	@, tmp304,
	mov	sl, #0	@ ivtmp.41,
	str	r1, [sp, #16]	@ yPixel, %sfp
	str	r2, [sp, #20]	@, %sfp
	str	r3, [sp, #4]	@ tmp304, %sfp
	mov	r9, sl	@ _row, ivtmp.41
	b	.L4	@
.L14:
	cmp	r9, #0	@ _row
	beq	.L16	@
	add	r1, r8, sl	@ tmp269, _col, ivtmp.41
	uxth	r3, r1	@ indexIntoGlyph, tmp269
	b	.L5	@
.L16:
	mov	r3, r8	@ indexIntoGlyph, _col
.L5:
	ldr	r0, [sp, #8]	@, %sfp
	ldr	r7, [sp, #16]	@, %sfp
	ldrsb	ip, [r0, r3]	@ *D.4845_28, *D.4845_28
	add	r6, r9, r7	@ tmp270, _row,
	cmp	ip, #0	@ *D.4845_28,
	uxth	r6, r6	@ D.4925, tmp270
	add	r7, r0, r3	@ D.4845,, indexIntoGlyph
	bge	.L6	@,
	mov	r0, r5	@, ivtmp.28
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L6:
	ldrb	r3, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r1, r3, #25	@, *D.4845_28,
	bpl	.L7	@,
	adds	r2, r5, #1	@ tmp274, ivtmp.28,
	uxth	r0, r2	@, tmp274
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L7:
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r2, r1, #26	@, *D.4845_28,
	bpl	.L8	@,
	adds	r0, r5, #2	@ tmp278, ivtmp.28,
	uxth	r0, r0	@, tmp278
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L8:
	ldrb	ip, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r3, ip, #27	@, *D.4845_28,
	bpl	.L9	@,
	adds	r3, r5, #3	@ tmp282, ivtmp.28,
	uxth	r0, r3	@, tmp282
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L9:
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r0, r2, #28	@, *D.4845_28,
	bpl	.L10	@,
	adds	r1, r5, #4	@ tmp286, ivtmp.28,
	uxth	r0, r1	@, tmp286
	mov	r2, r4	@, color
	mov	r1, r6	@, D.4925
	bl	drawPixel	@
.L10:
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r1, r0, #29	@, *D.4845_28,
	bpl	.L11	@,
	adds	r3, r5, #5	@ tmp290, ivtmp.28,
	uxth	r0, r3	@, tmp290
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L11:
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r2, r2, #30	@, *D.4845_28,
	bpl	.L12	@,
	adds	r1, r5, #6	@ tmp294, ivtmp.28,
	uxth	r0, r1	@, tmp294
	mov	r2, r4	@, color
	mov	r1, r6	@, D.4925
	bl	drawPixel	@
.L12:
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ *D.4845_28, *D.4845_28
	lsls	r3, r0, #31	@, *D.4845_28,
	bpl	.L13	@,
	adds	r3, r5, #7	@ tmp298, ivtmp.28,
	uxth	r0, r3	@, tmp298
	mov	r1, r6	@, D.4925
	mov	r2, r4	@, color
	bl	drawPixel	@
.L13:
	add	r2, r8, #1	@ tmp300, _col,
	adds	r5, r5, #8	@ tmp301, ivtmp.28,
	uxth	r8, r2	@ _col, tmp300
	uxth	r5, r5	@ ivtmp.28, tmp301
	b	.L15	@
.L17:
	ldr	r5, [sp, #12]	@ ivtmp.28, %sfp
	mov	r8, #0	@ _col,
.L15:
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r8, r3	@ _col,
	bne	.L14	@,
	add	r0, r9, #1	@ tmp302, _row,
	add	r1, sl, r3	@ tmp303, ivtmp.41,
	uxth	r9, r0	@ _row, tmp302
	uxth	sl, r1	@ ivtmp.41, tmp303
.L4:
	ldr	r3, [sp, #20]	@, %sfp
	cmp	r9, r3	@ _row,
	bcc	.L17	@,
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	fontsDrawCharBitmap, .-fontsDrawCharBitmap
	.section	.text.fontsDrawString,"ax",%progbits
	.align	1
	.global	fontsDrawString
	.thumb
	.thumb_func
	.ascii	"fontsDrawString\000"
	.align	2
	.word	4278190096
	.type	fontsDrawString, %function
fontsDrawString:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}	@
	ldr	r7, [sp, #40]	@ ivtmp.50, str
	mov	r8, r1	@ y, y
	mov	r9, r2	@ color, color
	mov	r4, r3	@ fontInfo, fontInfo
	mov	r5, r0	@ currentX, x
	b	.L19	@
.L22:
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ fontInfo_11(D)->startChar, fontInfo_11(D)->startChar
	ldr	r2, [r4, #4]	@ charInfo, fontInfo_11(D)->charInfo
	subs	r3, r3, r1	@ tmp194, D.4815, fontInfo_11(D)->startChar
	cbz	r2, .L20	@ charInfo,
	add	r0, r2, r3, lsl #2	@, charInfo, charInfo, tmp194,
	ldrb	r6, [r2, r3, lsl #2]	@ zero_extendqisi2	@ charWidth, charInfo_19->widthBits
	ldrh	r3, [r0, #2]	@ charOffset, charInfo_19->offset
	b	.L21	@
.L20:
	movs	r6, #5	@ tmp202,
	muls	r3, r6, r3	@ tmp201, tmp202
	uxth	r3, r3	@ charOffset, tmp201
.L21:
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ fontInfo_11(D)->height, fontInfo_11(D)->height
	ldr	lr, [r4, #8]	@ fontInfo_11(D)->data, fontInfo_11(D)->data
	str	r2, [sp, #4]	@ fontInfo_11(D)->height,
	mov	r0, r5	@, currentX
	mov	r1, r8	@, y
	mov	r2, r9	@, color
	add	r3, lr, r3	@, fontInfo_11(D)->data, charOffset
	str	r6, [sp, #0]	@ charWidth,
	bl	fontsDrawCharBitmap	@
	adds	r6, r6, #1	@ tmp207, charWidth,
	adds	r5, r5, r6	@ tmp209, currentX, tmp207
	uxth	r5, r5	@ currentX, tmp209
.L19:
	ldrb	r3, [r7], #1	@ zero_extendqisi2	@ D.4815, MEM[base: D.4938_43, offset: 0B]
	cmp	r3, #0	@ D.4815
	bne	.L22	@
	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
	.size	fontsDrawString, .-fontsDrawString
	.section	.text.fontsGetStringWidth,"ax",%progbits
	.align	1
	.global	fontsGetStringWidth
	.thumb
	.thumb_func
	.ascii	"fontsGetStringWidth\000"
	.align	2
	.word	4278190100
	.type	fontsGetStringWidth, %function
fontsGetStringWidth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	mov	r3, r0	@ fontInfo, fontInfo
	ldrb	r5, [r0, #1]	@ zero_extendqisi2	@ startChar, fontInfo_7(D)->startChar
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ currChar, *str_10(D)
	movs	r0, #0	@ width,
	b	.L24	@
.L27:
	ldr	r4, [r3, #4]	@ D.4799, fontInfo_7(D)->charInfo
	cbz	r4, .L25	@ D.4799,
	rsb	ip, r5, r2	@ tmp152, startChar, currChar
	ldrb	r2, [r4, ip, lsl #2]	@ zero_extendqisi2	@ D.4804_17->widthBits, D.4804_17->widthBits
	adds	r2, r2, #1	@ tmp155, D.4804_17->widthBits,
	adds	r0, r0, r2	@ tmp157, width, tmp155
	b	.L29	@
.L25:
	adds	r0, r0, #6	@ tmp158, width,
.L29:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2	@ currChar, MEM[base: D.4950_34, offset: 1B]
	uxth	r0, r0	@ width, tmp158
.L24:
	cmp	r2, #0	@ currChar
	bne	.L27	@
	cbz	r0, .L28	@ width,
	subs	r0, r0, #1	@ tmp159, width,
	uxth	r0, r0	@ width, tmp159
.L28:
	pop	{r4, r5, pc}	@
	.size	fontsGetStringWidth, .-fontsGetStringWidth
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
