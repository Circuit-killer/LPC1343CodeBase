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
	.file	"button.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed button.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip button.o -Os -Wall
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

	.section	.text.buttonRender,"ax",%progbits
	.align	1
	.global	buttonRender
	.thumb
	.thumb_func
	.ascii	"buttonRender\000"
	.align	2
	.word	4278190096
	.type	buttonRender, %function
buttonRender:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #32	@,,
	str	r2, [sp, #20]	@ width, %sfp
	str	r3, [sp, #24]	@ height, %sfp
	ldrh	r7, [sp, #64]	@, fontColor
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r3, [sp, #24]	@, %sfp
	adds	r6, r2, r0	@ tmp165,, x
	str	r7, [sp, #28]	@, %sfp
	adds	r7, r3, r1	@ tmp166,, y
	uxth	r6, r6	@ D.4935, tmp165
	uxth	r7, r7	@ D.4937, tmp166
	ldrh	r9, [sp, #82]	@ theme$colorFill, MEM[(struct theme_s *)&theme].colorFill
	mov	r5, r0	@ x, x
	mov	r4, r1	@ y, y
	ldrh	lr, [sp, #74]	@ theme.colorBorder, theme.colorBorder
	adds	r0, r0, #2	@ tmp167, x,
	adds	r1, r1, #2	@ tmp169, y,
	subs	r2, r6, #2	@ tmp171, D.4935,
	subs	r3, r7, #2	@ tmp173, D.4937,
	uxth	r0, r0	@, tmp167
	uxth	r1, r1	@, tmp169
	uxth	r2, r2	@, tmp171
	uxth	r3, r3	@, tmp173
	ldr	r8, [sp, #68]	@ text, text
	stmia	sp, {r9, lr}	@,,
	bl	drawGradient	@
	adds	r0, r5, #1	@ tmp176, x,
	adds	r1, r4, #1	@ tmp178, y,
	subs	r2, r6, #1	@ tmp180, D.4935,
	subs	r3, r7, #1	@ tmp182, D.4937,
	str	r9, [sp, #0]	@ theme$colorFill,
	mov	sl, #15	@ tmp185,
	mov	r9, #5	@ tmp184,
	uxth	r0, r0	@, tmp176
	uxth	r1, r1	@, tmp178
	uxth	r2, r2	@, tmp180
	uxth	r3, r3	@, tmp182
	str	r9, [sp, #4]	@ tmp184,
	str	sl, [sp, #8]	@ tmp185,
	bl	drawRoundedRectangle	@
	ldrh	r3, [sp, #76]	@ theme.colorBorderDarker, theme.colorBorderDarker
	mov	r0, r5	@, x
	stmia	sp, {r3, r9, sl}	@,,,
	mov	r1, r4	@, y
	mov	r2, r6	@, D.4935
	mov	r3, r7	@, D.4937
	bl	drawRoundedRectangle	@
	cmp	r8, #0	@ text
	beq	.L1	@
	mov	r1, r8	@, text
	ldr	r0, .L3	@,
	bl	fontsGetStringWidth	@
	ldr	r3, [sp, #20]	@, %sfp
	str	r8, [sp, #64]	@ text,
	add	r5, r5, r3, lsr #1	@, tmp192, x,,
	ldr	r3, .L3	@ tmp198,
	sub	r0, r5, r0, lsr #1	@ tmp196, tmp192,,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ dejaVuSans9ptFontInfo.height, dejaVuSans9ptFontInfo.height
	uxth	r0, r0	@, tmp196
	sub	r1, r4, r2, lsr #1	@ tmp203, y, dejaVuSans9ptFontInfo.height,
	ldr	r2, [sp, #24]	@, %sfp
	adds	r1, r1, #1	@ tmp205, tmp203,
	add	ip, r1, r2, lsr #1	@, tmp209, tmp205,,
	ldr	r2, [sp, #28]	@, %sfp
	uxth	r1, ip	@, tmp209
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	fontsDrawString	@
.L1:
	add	sp, sp, #32	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
.L4:
	.align	2
.L3:
	.word	dejaVuSans9ptFontInfo
	.size	buttonRender, .-buttonRender
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
