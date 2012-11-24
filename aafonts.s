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
	.file	"aafonts.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed aafonts.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip aafonts.o -Os -Wall
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

	.section	.text.aafontsDrawCharAA2,"ax",%progbits
	.align	1
	.global	aafontsDrawCharAA2
	.thumb
	.thumb_func
	.ascii	"aafontsDrawCharAA2\000"
	.align	2
	.word	4278190100
	.type	aafontsDrawCharAA2, %function
aafontsDrawCharAA2:
	@ args = 16, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r4, r0	@ x, x
	mov	r9, r1	@ y, y
	mov	sl, r2	@ height, height
	str	r3, [sp, #36]	@, character
	movs	r7, #0	@ ivtmp.7,
	b	.L2	@
.L11:
	ldrb	r1, [sp, #37]	@ zero_extendqisi2	@ character.bytesPerRow, character.bytesPerRow
	ldr	r0, [sp, #40]	@ character.charData, character.charData
	lsrs	r3, r5, #2	@ tmp174, w,
	mla	r2, r1, r8, r0	@ tmp176, character.bytesPerRow, h, character.charData
	ldrb	r3, [r2, r3]	@ zero_extendqisi2	@ color, *D.4974_21
	cmp	r6, #3	@ pos,
	bhi	.L3	@
	tbb	[pc, r6]	@ pos
.L8:
	.byte	(.L4-.L8)/2
	.byte	(.L5-.L8)/2
	.byte	(.L6-.L8)/2
	.byte	(.L7-.L8)/2
	.align	1
.L4:
	lsrs	r3, r3, #6	@ color, color,
	b	.L3	@
.L5:
	lsrs	r3, r3, #4	@ D.4976, color,
	b	.L7	@
.L6:
	lsrs	r3, r3, #2	@ D.4977, color,
.L7:
	and	r3, r3, #3	@ color, color,
.L3:
	cbz	r3, .L9	@ color,
	and	ip, r3, #15	@ tmp188, color,
	ldr	r3, [sp, #44]	@, colorTable
	add	r2, r8, r9	@ tmp186, h, y
	add	lr, r5, r4	@ tmp184, w, x
	uxth	r1, r2	@, tmp186
	uxth	r0, lr	@, tmp184
	ldrh	r2, [r3, ip, lsl #1]	@, *D.4986_38
	bl	lcdDrawPixel	@
.L9:
	adds	r6, r6, #1	@ tmp190, pos,
	uxth	r6, r6	@ pos, tmp190
	adds	r5, r5, #1	@ tmp191, w,
	cmp	r6, #4	@ pos,
	it	eq	@
	moveq	r6, #0	@, pos,
	uxth	r5, r5	@ w, tmp191
	b	.L12	@
.L14:
	movs	r6, #0	@ pos,
	mov	r5, r6	@ w, pos
.L12:
	ldrb	r0, [sp, #36]	@ zero_extendqisi2	@ character.width, character.width
	cmp	r0, r5	@ character.width, w
	bhi	.L11	@,
	adds	r7, r7, #1	@ ivtmp.7, ivtmp.7,
.L2:
	uxth	r8, r7	@ h, ivtmp.7
	cmp	r8, sl	@ h, height
	bcc	.L14	@,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	aafontsDrawCharAA2, .-aafontsDrawCharAA2
	.section	.text.aafontsDrawCharAA4,"ax",%progbits
	.align	1
	.global	aafontsDrawCharAA4
	.thumb
	.thumb_func
	.ascii	"aafontsDrawCharAA4\000"
	.align	2
	.word	4278190100
	.type	aafontsDrawCharAA4, %function
aafontsDrawCharAA4:
	@ args = 16, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldr	sl, [sp, #44]	@ colorTable, colorTable
	mov	r5, r0	@ x, x
	mov	r4, r1	@ y, y
	mov	r9, r2	@ height, height
	str	r3, [sp, #36]	@, character
	movs	r7, #0	@ ivtmp.17,
	b	.L16	@
.L19:
	ldrb	r1, [sp, #37]	@ zero_extendqisi2	@ character.bytesPerRow, character.bytesPerRow
	ldr	r0, [sp, #40]	@ character.charData, character.charData
	lsrs	r3, r6, #1	@ tmp169, w,
	mla	r2, r1, r8, r0	@ tmp171, character.bytesPerRow, h, character.charData
	ldrb	r3, [r2, r3]	@ zero_extendqisi2	@ color, *D.4950_18
	lsls	r2, r6, #31	@, w,
	it	pl
	lsrpl	r3, r3, #4	@ color, color,
	cbz	r3, .L18	@ color,
	add	r2, r8, r4	@ tmp179, h, y
	add	lr, r6, r5	@ tmp177, w, x
	and	ip, r3, #15	@ tmp181, color,
	uxth	r1, r2	@, tmp179
	uxth	r0, lr	@, tmp177
	ldrh	r2, [sl, ip, lsl #1]	@, *D.4961_30
	bl	lcdDrawPixel	@
.L18:
	adds	r6, r6, #1	@ tmp183, w,
	uxth	r6, r6	@ w, tmp183
	b	.L20	@
.L21:
	movs	r6, #0	@ w,
.L20:
	ldrb	r3, [sp, #36]	@ zero_extendqisi2	@ character.width, character.width
	cmp	r3, r6	@ character.width, w
	bhi	.L19	@,
	adds	r7, r7, #1	@ ivtmp.17, ivtmp.17,
.L16:
	uxth	r8, r7	@ h, ivtmp.17
	cmp	r8, r9	@ h, height
	bcc	.L21	@,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	aafontsDrawCharAA4, .-aafontsDrawCharAA4
	.section	.text.aafontsDrawString,"ax",%progbits
	.align	1
	.global	aafontsDrawString
	.thumb
	.thumb_func
	.ascii	"aafontsDrawString\000"
	.align	2
	.word	4278190100
	.type	aafontsDrawString, %function
aafontsDrawString:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}	@
	ldr	r9, [sp, #40]	@ ivtmp.27, str
	mov	r7, r1	@ y, y
	mov	r8, r2	@ colorTable, colorTable
	mov	r4, r3	@ font, font
	mov	r5, r0	@ currentX, x
	b	.L23	@
.L29:
	ldrh	r2, [r4, #14]	@ font_10(D)->lastChar, font_10(D)->lastChar
	cmp	r2, r3	@ font_10(D)->lastChar, D.4924
	bcc	.L24	@,
	ldrh	r2, [r4, #12]	@ D.4929, font_10(D)->firstChar
	cmp	r3, r2	@ D.4924, D.4929
	bcs	.L25	@,
.L24:
	ldrh	r6, [r4, #4]	@ charWidth, font_10(D)->unknownCharWidth
	b	.L26	@
.L25:
	subs	r3, r3, r2	@ tmp183, D.4924, D.4929
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ font_10(D)->fontType, font_10(D)->fontType
	ldr	r1, [r4, #16]	@ font_10(D)->charTable, font_10(D)->charTable
	cmp	r2, #2	@ font_10(D)->fontType,
	add	r0, r1, r3, lsl #3	@, charInfo, font_10(D)->charTable, tmp183,
	ldrb	r6, [r1, r3, lsl #3]	@ zero_extendqisi2	@ charWidth, charInfo_20->width
	beq	.L27	@,
	cmp	r2, #4	@ font_10(D)->fontType,
	bne	.L26	@,
	b	.L30	@
.L27:
	str	r8, [sp, #4]	@ colorTable,
	ldr	r0, [r0, #4]	@ *charInfo_20, *charInfo_20
	ldrh	r2, [r4, #2]	@ font_10(D)->fontHeight, font_10(D)->fontHeight
	str	r0, [sp, #0]	@ *charInfo_20,
	ldr	r3, [r1, r3, lsl #3]	@, *charInfo_20
	mov	r0, r5	@, currentX
	mov	r1, r7	@, y
	bl	aafontsDrawCharAA2	@
	b	.L26	@
.L30:
	str	r8, [sp, #4]	@ colorTable,
	ldr	r0, [r0, #4]	@ *charInfo_20, *charInfo_20
	ldrh	r2, [r4, #2]	@ font_10(D)->fontHeight, font_10(D)->fontHeight
	str	r0, [sp, #0]	@ *charInfo_20,
	ldr	r3, [r1, r3, lsl #3]	@, *charInfo_20
	mov	r0, r5	@, currentX
	mov	r1, r7	@, y
	bl	aafontsDrawCharAA4	@
.L26:
	adds	r5, r6, r5	@ tmp193, charWidth, currentX
	uxth	r5, r5	@ currentX, tmp193
.L23:
	ldrb	r3, [r9], #1	@ zero_extendqisi2	@ D.4924, MEM[base: D.5034_43, offset: 0B]
	cmp	r3, #0	@ D.4924
	bne	.L29	@
	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
	.size	aafontsDrawString, .-aafontsDrawString
	.section	.text.aafontsGetStringWidth,"ax",%progbits
	.align	1
	.global	aafontsGetStringWidth
	.thumb
	.thumb_func
	.ascii	"aafontsGetStringWidth\000"
	.align	2
	.word	4278190104
	.type	aafontsGetStringWidth, %function
aafontsGetStringWidth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ font, font
	push	{r4, r5, lr}	@
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ currChar, *str_6(D)
	movs	r0, #0	@ width,
	b	.L32	@
.L36:
	ldrh	r4, [r3, #14]	@ font_9(D)->lastChar, font_9(D)->lastChar
	cmp	r2, r4	@ currChar, font_9(D)->lastChar
	bhi	.L33	@,
	ldrh	r4, [r3, #12]	@ D.4911, font_9(D)->firstChar
	cmp	r2, r4	@ currChar, D.4911
	bcs	.L34	@,
.L33:
	ldrh	r2, [r3, #4]	@, font_9(D)->unknownCharWidth
	b	.L37	@
.L34:
	ldr	r5, [r3, #16]	@ font_9(D)->charTable, font_9(D)->charTable
	subs	r2, r2, r4	@ tmp157, currChar, D.4911
	ldrb	r2, [r5, r2, lsl #3]	@ zero_extendqisi2	@ charInfo_19->width, charInfo_19->width
.L37:
	adds	r0, r0, r2	@ tmp161, width, charInfo_19->width
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2	@ currChar, MEM[base: D.5047_35, offset: 1B]
	uxth	r0, r0	@ width, tmp161
.L32:
	cmp	r2, #0	@ currChar
	bne	.L36	@
	pop	{r4, r5, pc}	@
	.size	aafontsGetStringWidth, .-aafontsGetStringWidth
	.section	.text.aafontsCenterString,"ax",%progbits
	.align	1
	.global	aafontsCenterString
	.thumb
	.thumb_func
	.ascii	"aafontsCenterString\000"
	.align	2
	.word	4278190100
	.type	aafontsCenterString, %function
aafontsCenterString:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	ldr	r8, [sp, #24]	@ str, str
	mov	r5, r0	@ x, x
	mov	r4, r1	@ y, y
	mov	r0, r3	@, font
	mov	r1, r8	@, str
	mov	r7, r2	@ colorTable, colorTable
	mov	r6, r3	@ font, font
	bl	aafontsGetStringWidth	@
	sub	r0, r5, r0, lsr #1	@ tmp147, x,,
	uxth	r0, r0	@, tmp147
	mov	r1, r4	@, y
	mov	r2, r7	@, colorTable
	mov	r3, r6	@, font
	str	r8, [sp, #24]	@ str,
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	aafontsDrawString	@
	.size	aafontsCenterString, .-aafontsCenterString
	.section	.text.aafontsCalculateColorTable,"ax",%progbits
	.align	1
	.global	aafontsCalculateColorTable
	.thumb
	.thumb_func
	.ascii	"aafontsCalculateColorTable\000"
	.align	2
	.word	4278190108
	.type	aafontsCalculateColorTable, %function
aafontsCalculateColorTable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #4	@ tableSize,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r9, r0	@ bgColor, bgColor
	mov	sl, r1	@ foreColor, foreColor
	mov	r4, r2	@ colorTable, colorTable
	beq	.L40	@,
	cmp	r3, #16	@ tableSize,
	bne	.L39	@,
.L40:
	subs	r7, r3, #1	@ tmp158, tableSize,
	movs	r0, #100	@ tmp160,
	udiv	r8, r0, r7	@ D.4892, tmp160, tmp158
	rsb	r6, r8, #100	@ tmp163, D.5067,
	strh	r9, [r4, #0]	@ movhi	@ bgColor, *colorTable_3(D)
	uxtb	r6, r6	@ ivtmp.53, tmp163
	strh	sl, [r4, r7, lsl #1]	@ movhi	@ foreColor, *D.4890_7
	movs	r5, #1	@ i,
	b	.L42	@
.L43:
	mov	r1, sl	@, foreColor
	mov	r2, r6	@, ivtmp.53
	mov	r0, r9	@, bgColor
	bl	colorsAlphaBlend	@
	rsb	r1, r8, r6	@ tmp168, D.5067, ivtmp.53
	strh	r0, [r4, r5, lsl #1]	@ movhi	@, *D.4895_17
	adds	r5, r5, #1	@ tmp167, i,
	uxth	r5, r5	@ i, tmp167
	uxtb	r6, r1	@ ivtmp.53, tmp168
.L42:
	cmp	r5, r7	@ i, tmp158
	bcc	.L43	@,
.L39:
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}	@
	.size	aafontsCalculateColorTable, .-aafontsCalculateColorTable
	.global	COLORTABLE_AA4_BLACKONWHITE
	.global	COLORTABLE_AA4_WHITEONBLACK
	.global	COLORTABLE_AA2_BLACKONWHITE
	.global	COLORTABLE_AA2_WHITEONBLACK
	.section	.rodata.COLORTABLE_AA4_BLACKONWHITE,"a",%progbits
	.align	1
	.type	COLORTABLE_AA4_BLACKONWHITE, %object
	.size	COLORTABLE_AA4_BLACKONWHITE, 32
COLORTABLE_AA4_BLACKONWHITE:
	.short	-1
	.short	-6372
	.short	-10598
	.short	-14824
	.short	-19050
	.short	-23276
	.short	-27502
	.short	-31728
	.short	29582
	.short	25356
	.short	21130
	.short	16904
	.short	12678
	.short	8452
	.short	4226
	.short	0
	.section	.rodata.COLORTABLE_AA2_BLACKONWHITE,"a",%progbits
	.align	1
	.type	COLORTABLE_AA2_BLACKONWHITE, %object
	.size	COLORTABLE_AA2_BLACKONWHITE, 8
COLORTABLE_AA2_BLACKONWHITE:
	.short	-1
	.short	-21163
	.short	21162
	.short	0
	.section	.rodata.COLORTABLE_AA4_WHITEONBLACK,"a",%progbits
	.align	1
	.type	COLORTABLE_AA4_WHITEONBLACK, %object
	.size	COLORTABLE_AA4_WHITEONBLACK, 32
COLORTABLE_AA4_WHITEONBLACK:
	.short	0
	.short	4226
	.short	8452
	.short	12678
	.short	16904
	.short	21130
	.short	25356
	.short	29582
	.short	-31728
	.short	-27502
	.short	-23276
	.short	-19050
	.short	-14824
	.short	-10598
	.short	-6372
	.short	-1
	.section	.rodata.COLORTABLE_AA2_WHITEONBLACK,"a",%progbits
	.align	1
	.type	COLORTABLE_AA2_WHITEONBLACK, %object
	.size	COLORTABLE_AA2_WHITEONBLACK, 8
COLORTABLE_AA2_WHITEONBLACK:
	.short	0
	.short	21162
	.short	-21163
	.short	-1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
