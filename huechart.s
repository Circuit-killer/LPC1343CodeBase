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
	.file	"huechart.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed huechart.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip huechart.o -Os -Wall
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

	.section	.text.huechartRender,"ax",%progbits
	.align	1
	.global	huechartRender
	.thumb
	.thumb_func
	.ascii	"huechartRender\000"
	.align	2
	.word	4278190096
	.type	huechartRender, %function
huechartRender:
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}	@
	add	lr, r3, r1	@ tmp168, height, y
	add	r8, r2, r0	@ tmp167, width, x
	subs	r7, r3, #2	@ tmp165, height,
	uxth	r2, lr	@, tmp168
	ldrh	r3, [sp, #52]	@ theme.colorBorderDarker, theme.colorBorderDarker
	movs	r5, #6	@ tmp166,
	str	r2, [sp, #12]	@, %sfp
	sdiv	r7, r7, r5	@ delta, tmp165, tmp166
	uxth	r5, r8	@ D.4930, tmp167
	mov	r4, r1	@ y, y
	str	r3, [sp, #0]	@ theme.colorBorderDarker,
	mov	r2, r5	@, D.4930
	ldr	r3, [sp, #12]	@, %sfp
	mov	r6, r0	@ x, x
	bl	drawRectangle	@
	adds	r2, r4, r7	@ tmp173, y, delta
	uxth	sl, r2	@ D.4937, tmp173
	adds	r6, r6, #1	@ tmp170, x,
	subs	r5, r5, #1	@ tmp171, D.4930,
	uxth	r6, r6	@ D.4933, tmp170
	uxth	r5, r5	@ D.4935, tmp171
	adds	r3, r4, #1	@ tmp174, y,
	uxth	r7, r7	@ D.4939, delta
	add	r9, sl, #-1	@ tmp176, D.4937,
	movw	r8, #63519	@ tmp179,
	mov	r2, #63488	@,
	stmia	sp, {r2, r8}	@,,
	mov	r0, r6	@, D.4933
	uxth	r1, r3	@, tmp174
	mov	r2, r5	@, D.4935
	uxth	r3, r9	@, tmp176
	lsl	r9, r7, #1	@ tmp181, D.4939,
	bl	drawGradient	@
	add	r1, r4, r9	@ tmp183, y, tmp181
	uxth	ip, r1	@ D.4941, tmp183
	add	r3, ip, #-1	@ tmp184, D.4941,
	str	r8, [sp, #0]	@ tmp179,
	mov	r0, r6	@, D.4933
	mov	r8, #31	@ tmp187,
	mov	r1, sl	@, D.4937
	mov	r2, r5	@, D.4935
	uxth	r3, r3	@, tmp184
	str	r8, [sp, #4]	@ tmp187,
	str	ip, [sp, #8]	@,
	bl	drawGradient	@
	add	r3, r9, r7	@ tmp191, tmp181, D.4939
	adds	r0, r4, r3	@ tmp193, y, tmp191
	uxth	r9, r0	@ D.4944, tmp193
	ldr	ip, [sp, #8]	@,
	add	sl, r9, #-1	@ tmp194, D.4944,
	str	r8, [sp, #0]	@ tmp187,
	mov	r0, r6	@, D.4933
	movw	r8, #2047	@ tmp197,
	mov	r1, ip	@, D.4941
	mov	r2, r5	@, D.4935
	uxth	r3, sl	@, tmp194
	str	r8, [sp, #4]	@ tmp197,
	bl	drawGradient	@
	add	r2, r4, r7, lsl #2	@, tmp203, y, D.4939,
	uxth	sl, r2	@ D.4947, tmp203
	add	ip, sl, #-1	@ tmp204, D.4947,
	uxth	r3, ip	@, tmp204
	str	r8, [sp, #0]	@ tmp197,
	mov	r0, r6	@, D.4933
	mov	r8, #2016	@ tmp207,
	mov	r1, r9	@, D.4944
	mov	r2, r5	@, D.4935
	str	r8, [sp, #4]	@ tmp207,
	bl	drawGradient	@
	movs	r1, #5	@ tmp209,
	mla	r7, r1, r7, r4	@ tmp211, tmp209, D.4939, y
	uxth	r7, r7	@ D.4950, tmp211
	subs	r3, r7, #1	@ tmp212, D.4950,
	movw	r4, #65504	@ tmp215,
	mov	r0, r6	@, D.4933
	mov	r1, sl	@, D.4947
	mov	r2, r5	@, D.4935
	uxth	r3, r3	@, tmp212
	str	r8, [sp, #0]	@ tmp207,
	str	r4, [sp, #4]	@ tmp215,
	bl	drawGradient	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r2, #63488	@,
	subs	r3, r0, #1	@ tmp216,,
	str	r2, [sp, #52]	@,
	mov	r0, r6	@, D.4933
	mov	r1, r7	@, D.4950
	mov	r2, r5	@, D.4935
	uxth	r3, r3	@, tmp216
	str	r4, [sp, #48]	@ tmp215,
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	b	drawGradient	@
	.size	huechartRender, .-huechartRender
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
