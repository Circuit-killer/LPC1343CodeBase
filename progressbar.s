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
	.file	"progressbar.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed progressbar.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip progressbar.o -Os -Wall
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

	.section	.text.progressbarRender,"ax",%progbits
	.align	1
	.global	progressbarRender
	.thumb
	.thumb_func
	.ascii	"progressbarRender\000"
	.align	2
	.word	4278190100
	.type	progressbarRender, %function
progressbarRender:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	sub	sp, sp, #24	@,,
	ldrb	ip, [sp, #56]	@ zero_extendqisi2	@ progress, progress
	subs	r5, r2, #2	@ tmp170, width,
	mul	r8, ip, r5	@ tmp171, progress, tmp170
	mov	r6, r1	@ y, y
	movs	r1, #100	@ tmp174,
	sdiv	r7, r8, r1	@ tmp173, tmp171, tmp174
	adds	r5, r0, r7	@ tmp176, x, tmp173
	uxth	r5, r5	@ progressEnd, tmp176
	adds	r1, r0, #1	@ tmp177, x,
	cmp	r1, r5	@ tmp177, progressEnd
	mov	r4, r0	@ x, x
	ldrh	r9, [sp, #60]	@ color, color
	ldrh	sl, [sp, #74]	@ theme$colorFill, MEM[(struct theme_s *)&theme].colorFill
	blt	.L2	@,
	adds	r0, r0, #2	@ tmp178, x,
	uxth	r5, r0	@ progressEnd, tmp178
.L2:
	add	lr, r3, r6	@ tmp180, height, y
	adds	r7, r2, r4	@ tmp179, width, x
	ldrh	r1, [sp, #68]	@ theme.colorBorderDarker, theme.colorBorderDarker
	uxth	r8, r7	@ D.4944, tmp179
	uxth	r7, lr	@ D.4945, tmp180
	str	r1, [sp, #0]	@ theme.colorBorderDarker,
	mov	r0, r4	@, x
	mov	r1, r6	@, y
	mov	r2, r8	@, D.4944
	mov	r3, r7	@, D.4945
	str	ip, [sp, #12]	@,
	bl	drawRectangle	@
	add	ip, r8, #-1	@ tmp186, D.4944,
	adds	r2, r6, #1	@ tmp184, y,
	adds	r0, r4, #1	@ tmp182, x,
	subs	r3, r7, #1	@ tmp188, D.4945,
	uxth	r1, r2	@, tmp184
	uxth	r0, r0	@, tmp182
	uxth	r2, ip	@, tmp186
	uxth	r3, r3	@, tmp188
	str	sl, [sp, #0]	@ theme$colorFill,
	bl	drawRectangle	@
	adds	r3, r6, #2	@ tmp190, y,
	subs	r2, r7, #2	@ tmp191, D.4945,
	uxth	r1, r3	@, tmp190
	uxth	r0, r2	@, tmp191
	ldrh	r3, [sp, #66]	@ theme.colorBorder, theme.colorBorder
	str	r1, [sp, #16]	@, %sfp
	str	r0, [sp, #20]	@, %sfp
	adds	r1, r5, #1	@ tmp192, progressEnd,
	sub	r2, r8, #2	@ tmp194, D.4944,
	str	r3, [sp, #4]	@ theme.colorBorder,
	uxth	r0, r1	@, tmp192
	uxth	r2, r2	@, tmp194
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r3, [sp, #20]	@, %sfp
	str	sl, [sp, #0]	@ theme$colorFill,
	bl	drawGradient	@
	ldr	ip, [sp, #12]	@,
	cmp	ip, #0	@ progress
	beq	.L1	@
	mov	r1, r9	@, color
	movs	r2, #50	@,
	movw	r0, #65535	@,
	bl	colorsAlphaBlend	@
	mov	r1, r9	@, color
	mov	r8, r0	@ tmp197,
	movs	r2, #35	@,
	movs	r0, #0	@,
	bl	colorsAlphaBlend	@
	adds	r3, r4, #2	@ tmp199, x,
	str	r0, [sp, #0]	@,
	ldr	r1, [sp, #16]	@, %sfp
	uxth	r0, r3	@, tmp199
	mov	r2, r5	@, progressEnd
	ldr	r3, [sp, #20]	@, %sfp
	bl	drawRectangle	@
	adds	r0, r4, #3	@ tmp201, x,
	adds	r1, r6, #3	@ tmp203, y,
	subs	r2, r5, #1	@ tmp205, progressEnd,
	subs	r3, r7, #3	@ tmp207, D.4945,
	uxth	r0, r0	@, tmp201
	uxth	r1, r1	@, tmp203
	uxth	r2, r2	@, tmp205
	uxth	r3, r3	@, tmp207
	str	r8, [sp, #56]	@ tmp197,
	str	r9, [sp, #60]	@ color,
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawGradient	@
.L1:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	progressbarRender, .-progressbarRender
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
