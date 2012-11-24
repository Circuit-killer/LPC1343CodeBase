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
	.file	"colors.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed colors.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip colors.o -Os -Wall
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

	.section	.text.colorsRGB24toRGB565,"ax",%progbits
	.align	1
	.global	colorsRGB24toRGB565
	.thumb
	.thumb_func
	.ascii	"colorsRGB24toRGB565\000"
	.align	2
	.word	4278190100
	.type	colorsRGB24toRGB565, %function
colorsRGB24toRGB565:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r0, #3	@ tmp156, r,
	lsls	r0, r3, #11	@ tmp157, tmp156,
	orr	r2, r0, r2, lsr #3	@, tmp159, tmp157, b,
	lsrs	r1, r1, #2	@ tmp161, g,
	orr	r0, r2, r1, lsl #5	@,, tmp159, tmp161,
	bx	lr	@
	.size	colorsRGB24toRGB565, .-colorsRGB24toRGB565
	.section	.text.colorsRGB565toBGRA32,"ax",%progbits
	.align	1
	.global	colorsRGB565toBGRA32
	.thumb
	.thumb_func
	.ascii	"colorsRGB565toBGRA32\000"
	.align	2
	.word	4278190104
	.type	colorsRGB565toBGRA32, %function
colorsRGB565toBGRA32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r0, #2016	@ tmp149, color,
	and	r2, r0, #63488	@ tmp147, color,
	lsls	r3, r1, #5	@ tmp150, tmp149,
	orr	r1, r3, r2, lsl #8	@, tmp151, tmp150, tmp147,
	orr	r3, r1, #-16777216	@ tmp152, tmp151,
	and	r0, r0, #31	@ tmp153, color,
	orr	r0, r3, r0, lsl #3	@,, tmp152, tmp153,
	bx	lr	@
	.size	colorsRGB565toBGRA32, .-colorsRGB565toBGRA32
	.section	.text.colorsBGR2RGB,"ax",%progbits
	.align	1
	.global	colorsBGR2RGB
	.thumb
	.thumb_func
	.ascii	"colorsBGR2RGB\000"
	.align	2
	.word	4278190096
	.type	colorsBGR2RGB, %function
colorsBGR2RGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r0, #31	@ tmp145, color,
	lsls	r2, r1, #11	@ tmp147, tmp145,
	add	r3, r2, r0, lsr #11	@, tmp151, tmp147, color,
	and	r1, r0, #2016	@ tmp156, color,
	adds	r0, r3, r1	@ tmp159, tmp151, tmp156
	uxth	r0, r0	@, tmp159
	bx	lr	@
	.size	colorsBGR2RGB, .-colorsBGR2RGB
	.section	.text.colorsDim,"ax",%progbits
	.align	1
	.global	colorsDim
	.thumb
	.thumb_func
	.ascii	"colorsDim\000"
	.align	2
	.word	4278190092
	.type	colorsDim, %function
colorsDim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsrs	r2, r0, #11	@ tmp171, color,
	muls	r2, r1, r2	@ tmp172, intensity
	movs	r3, #100	@ tmp175,
	push	{r4, lr}	@
	sdiv	r4, r2, r3	@ tmp174, tmp172, tmp175
	lsrs	r2, r0, #5	@ tmp181, color,
	and	r2, r2, #63	@ tmp182, tmp181,
	muls	r2, r1, r2	@ tmp183, intensity
	and	r0, r0, #31	@ tmp194, color,
	muls	r1, r0, r1	@ tmp195, tmp194
	sdiv	ip, r2, r3	@ tmp185, tmp183, tmp175
	and	r2, ip, #63	@ tmp189, tmp185,
	sdiv	r0, r1, r3	@ tmp197, tmp195, tmp175
	and	r4, r4, #31	@ tmp178, tmp174,
	lsls	r2, r2, #6	@ tmp190, tmp189,
	orr	r2, r2, r4, lsl #11	@, tmp193, tmp190, tmp178,
	and	r3, r0, #31	@ tmp200, tmp197,
	orr	r0, r2, r3	@, tmp193, tmp200
	pop	{r4, pc}	@
	.size	colorsDim, .-colorsDim
	.section	.text.colorsAlphaBlend,"ax",%progbits
	.align	1
	.global	colorsAlphaBlend
	.thumb
	.thumb_func
	.ascii	"colorsAlphaBlend\000"
	.align	2
	.word	4278190100
	.type	colorsAlphaBlend, %function
colorsAlphaBlend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #100	@ fadePercent,
	push	{r4, r5, r6, r7, lr}	@
	bhi	.L6	@,
	beq	.L6	@,
	rsb	r3, r2, #100	@ D.4746, fadePercent,
	lsrs	r4, r1, #11	@ tmp182, foreColor,
	muls	r4, r3, r4	@ tmp183, D.4746
	lsrs	r7, r0, #11	@ tmp179, bgColor,
	mla	r5, r7, r2, r4	@ tmp184, tmp179, fadePercent, tmp183
	movs	r4, #100	@ tmp187,
	sdiv	r6, r5, r4	@ tmp186, tmp184, tmp187
	lsrs	r5, r1, #5	@ tmp195, foreColor,
	and	r5, r5, #63	@ tmp198, tmp195,
	muls	r5, r3, r5	@ tmp199, D.4746
	lsrs	r7, r0, #5	@ tmp190, bgColor,
	and	r7, r7, #63	@ tmp193, tmp190,
	mla	r5, r7, r2, r5	@ tmp200, tmp193, fadePercent, tmp199
	and	r1, r1, #31	@ tmp213, foreColor,
	muls	r3, r1, r3	@ tmp214, tmp213
	movs	r7, #200	@ tmp203,
	sdiv	ip, r5, r7	@ tmp202, tmp200, tmp203
	uxth	r5, ip	@ tmp204, tmp202
	and	ip, r0, #31	@ tmp210, bgColor,
	mla	r2, ip, r2, r3	@ tmp215, tmp210, fadePercent, tmp214
	uxth	r6, r6	@ tmp188, tmp186
	lsls	r5, r5, #6	@ tmp205, tmp204,
	orr	r5, r5, r6, lsl #11	@, tmp208, tmp205, tmp188,
	sdiv	r4, r2, r4	@ tmp217, tmp215, tmp187
	orr	r0, r5, r4	@ tmp221, tmp208, tmp217
	uxth	r0, r0	@ bgColor, tmp221
.L6:
	pop	{r4, r5, r6, r7, pc}	@
	.size	colorsAlphaBlend, .-colorsAlphaBlend
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
