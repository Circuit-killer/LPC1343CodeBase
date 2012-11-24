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
	.file	"hsbchart.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed hsbchart.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip hsbchart.o -Os -Wall
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

	.section	.text.hsbchartRender,"ax",%progbits
	.align	1
	.global	hsbchartRender
	.thumb
	.thumb_func
	.ascii	"hsbchartRender\000"
	.align	2
	.word	4278190096
	.type	hsbchartRender, %function
hsbchartRender:
	@ args = 16, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r4, r2	@ size, size
	sub	sp, sp, #24	@,,
	str	r3, [sp, #20]	@ baseColor, %sfp
	adds	r2, r2, r0	@ tmp191, size, x
	adds	r3, r4, r1	@ tmp193, size, y
	ldrh	r5, [sp, #60]	@ theme.colorBorderDarker, theme.colorBorderDarker
	uxth	r2, r2	@, tmp191
	uxth	r3, r3	@, tmp193
	str	r0, [sp, #12]	@ x, %sfp
	str	r1, [sp, #16]	@ y, %sfp
	str	r5, [sp, #0]	@ theme.colorBorderDarker,
	bl	drawRectangle	@
	cmp	r4, #2	@ size,
	bls	.L1	@,
	subs	r1, r4, #2	@ tmp196, size,
	movw	r0, #10000	@ tmp197,
	sdiv	sl, r0, r1	@ delta, tmp197, tmp196
	movs	r7, #0	@ ivtmp.18,
	movs	r5, #1	@ ivtmp.14,
	b	.L3	@
.L5:
	movs	r2, #100	@ tmp200,
	udiv	r3, r7, r2	@ tmp199, ivtmp.18, tmp200
	rsb	r6, r3, #100	@ tmp202, tmp199,
	uxtb	r2, r6	@, tmp202
	movw	r0, #65535	@,
	ldr	r1, [sp, #20]	@, %sfp
	bl	colorsAlphaBlend	@
	mov	r8, #0	@ ivtmp.8,
	mov	ip, r7	@ ivtmp.18, ivtmp.18
	movs	r6, #1	@ s,
	mov	r7, r4	@ size, size
	mov	r4, r0	@ colorS, colorS
	b	.L4	@
.L6:
	mov	r6, r2	@ s, s
.L4:
	movs	r0, #100	@ tmp207,
	udiv	r2, r8, r0	@ tmp206, ivtmp.8, tmp207
	rsb	lr, r2, #100	@ tmp209, tmp206,
	movs	r1, #0	@,
	uxtb	r2, lr	@, tmp209
	mov	r0, r4	@, colorS
	str	ip, [sp, #8]	@,
	bl	colorsAlphaBlend	@
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r3, [sp, #12]	@, %sfp
	mov	r2, r0	@ tmp211,
	add	ip, r1, r6	@ tmp216,, s
	adds	r0, r3, r5	@ tmp213,, ivtmp.14
	uxth	r1, ip	@, tmp216
	uxth	r0, r0	@, tmp213
	bl	drawPixel	@
	adds	r2, r6, #1	@ s, s,
	cmp	r6, r9	@ s, D.4960
	add	r8, r8, sl	@ ivtmp.8, ivtmp.8, delta
	ldr	ip, [sp, #8]	@,
	bcc	.L6	@,
	mov	r4, r7	@ size, size
	adds	r5, r5, #1	@ ivtmp.14, ivtmp.14,
	add	r7, ip, sl	@ ivtmp.18, ivtmp.18, delta
.L3:
	add	r9, r4, #-1	@ D.4960, size,
	subs	r1, r5, #1	@ tmp218, ivtmp.14,
	cmp	r1, r9	@ tmp218, D.4960
	bcc	.L5	@,
.L1:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	hsbchartRender, .-hsbchartRender
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
