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
	.file	"string.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed string.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip string.o -Os -Wall
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

	.section	.text.memcpy,"ax",%progbits
	.align	1
	.global	memcpy
	.thumb
	.thumb_func
	.ascii	"memcpy\000"
	.align	2
	.word	4278190088
	.type	memcpy, %function
memcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	lsls	r4, r0, #30	@, pDestination,
	bne	.L8	@,
	lsls	r3, r1, #30	@, pSource,
	mov	r5, r1	@ ivtmp.41, pSource
	beq	.L3	@,
.L8:
	mov	r4, r0	@ pByteDestination, pDestination
.L2:
	movs	r3, #0	@ ivtmp.7,
	b	.L4	@
.L3:
	cmp	r2, #3	@ num,
	bls	.L8	@,
	mov	r4, r0	@ pAlignedDestination, pDestination
	mov	r3, r2	@ num, num
.L5:
	ldr	r6, [r5], #4	@ D.4065, MEM[base: D.4136_29, offset: 0B]
	subs	r3, r3, #4	@ num, num,
	cmp	r3, #3	@ num,
	str	r6, [r4], #4	@ D.4065, MEM[base: pAlignedDestination_47, offset: 0B]
	bhi	.L5	@,
	subs	r4, r2, #4	@ tmp214, num,
	bic	r3, r4, #3	@ tmp216, tmp214,
	adds	r4, r3, #4	@ D.4089, tmp216,
	adds	r1, r1, r4	@ pByteSource, pSource, D.4089
	and	r2, r2, #3	@ num, num,
	adds	r4, r0, r4	@ pByteDestination, pDestination, D.4089
	b	.L2	@
.L6:
	ldrb	r5, [r1, r3]	@ zero_extendqisi2	@ D.4066, MEM[base: pByteSource_7, index: ivtmp.7_49, offset: 0B]
	strb	r5, [r4, r3]	@ D.4066, MEM[base: pByteDestination_9, index: ivtmp.7_49, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.7, ivtmp.7,
.L4:
	cmp	r3, r2	@ ivtmp.7, num
	bne	.L6	@,
	pop	{r4, r5, r6, pc}	@
	.size	memcpy, .-memcpy
	.section	.text.memset,"ax",%progbits
	.align	1
	.global	memset
	.thumb
	.thumb_func
	.ascii	"memset\000"
	.align	2
	.word	4278190088
	.type	memset, %function
memset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	lsls	r5, r1, #16	@ tmp159, value,
	orr	r3, r5, r1, lsl #24	@, tmp160, tmp159, value,
	orr	r5, r3, r1	@ tmp161, tmp160, value
	lsls	r3, r0, #30	@, pBuffer,
	orr	r5, r5, r1, lsl #8	@, alignedValue, tmp161, value,
	bne	.L16	@,
	cmp	r2, #3	@ num,
	bhi	.L12	@,
.L16:
	mov	r3, r0	@ pByteDestination, pBuffer
	b	.L18	@
.L12:
	mov	r4, r0	@ pAlignedDestination, pBuffer
	mov	r3, r2	@ num, num
.L14:
	subs	r3, r3, #4	@ num, num,
	cmp	r3, #3	@ num,
	str	r5, [r4], #4	@ alignedValue, MEM[base: pAlignedDestination_40, offset: 0B]
	bhi	.L14	@,
	subs	r3, r2, #4	@ tmp164, num,
	bic	r3, r3, #3	@ tmp166, tmp164,
	adds	r3, r3, #4	@ tmp167, tmp166,
	and	r2, r2, #3	@ num, num,
	adds	r3, r0, r3	@ pByteDestination, pBuffer, tmp167
	b	.L18	@
.L15:
	strb	r1, [r3], #1	@ value, MEM[base: pByteDestination_4, offset: 0B]
.L18:
	adds	r2, r2, #-1	@ num, num,
	bcs	.L15	@,
	pop	{r4, r5, pc}	@
	.size	memset, .-memset
	.section	.text.memmove,"ax",%progbits
	.align	1
	.global	memmove
	.thumb
	.thumb_func
	.ascii	"memmove\000"
	.align	2
	.word	4278190088
	.type	memmove, %function
memmove:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, r1	@ s1, s2
	push	{r4, lr}	@
	bls	.L20	@,
	subs	r3, r2, #1	@ D.4032, n,
	adds	r4, r0, r3	@ d, s1, D.4032
	adds	r1, r1, r3	@ ivtmp.99, s2, D.4032
	b	.L21	@
.L22:
	ldrb	ip, [r1], #-1	@ zero_extendqisi2	@ D.4033, MEM[base: D.4199_31, offset: 0B]
	subs	r2, r2, #1	@ n, n,
	strb	ip, [r4], #-1	@ D.4033, MEM[base: d_5, offset: 0B]
.L21:
	cmp	r2, #0	@ n
	bne	.L22	@
	pop	{r4, pc}	@
.L20:
	bcc	.L26	@,
	pop	{r4, pc}	@
.L25:
	ldrb	r4, [r1, r3]	@ zero_extendqisi2	@ D.4033, MEM[base: s2_7(D), index: ivtmp.107_3, offset: 0B]
	strb	r4, [r0, r3]	@ D.4033, MEM[base: s1_9(D), index: ivtmp.107_3, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.107, ivtmp.107,
	b	.L24	@
.L26:
	movs	r3, #0	@ ivtmp.107,
.L24:
	cmp	r3, r2	@ ivtmp.107, n
	bne	.L25	@,
	pop	{r4, pc}	@
	.size	memmove, .-memmove
	.section	.text.memcmp,"ax",%progbits
	.align	1
	.global	memcmp
	.thumb
	.thumb_func
	.ascii	"memcmp\000"
	.align	2
	.word	4278190088
	.type	memcmp, %function
memcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r3, #0	@ i,
	b	.L28	@
.L31:
	ldrb	r5, [r0, r3]	@ zero_extendqisi2	@ D.4021, MEM[base: av_3(D), index: i_1, offset: 0B]
	ldrb	r4, [r1, r3]	@ zero_extendqisi2	@ D.4023, MEM[base: bv_5(D), index: i_1, offset: 0B]
	cmp	r5, r4	@ D.4021, D.4023
	beq	.L29	@,
	subs	r0, r5, r4	@ D.4026, D.4021, D.4023
	pop	{r4, r5, pc}	@
.L29:
	adds	r3, r3, #1	@ i, i,
.L28:
	cmp	r3, r2	@ i, len
	bne	.L31	@,
	movs	r0, #0	@ D.4026,
	pop	{r4, r5, pc}	@
	.size	memcmp, .-memcmp
	.section	.text.strchr,"ax",%progbits
	.align	1
	.global	strchr
	.thumb
	.thumb_func
	.ascii	"strchr\000"
	.align	2
	.word	4278190088
	.type	strchr, %function
strchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1	@ c, character
	b	.L33	@
.L35:
	cbz	r2, .L36	@ D.4015,
.L33:
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ D.4015, MEM[base: p_1, offset: 0B]
	mov	r3, r0	@ p, ivtmp.157
	adds	r0, r0, #1	@ ivtmp.157, p,
	cmp	r2, r1	@ D.4015, c
	bne	.L35	@,
	b	.L34	@
.L36:
	mov	r3, r2	@ p, D.4015
.L34:
	mov	r0, r3	@, p
	bx	lr	@
	.size	strchr, .-strchr
	.section	.text.strlen,"ax",%progbits
	.align	1
	.global	strlen
	.thumb
	.thumb_func
	.ascii	"strlen\000"
	.align	2
	.word	4278190088
	.type	strlen, %function
strlen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0	@ length,
	b	.L38	@
.L39:
	adds	r3, r3, #1	@ length, length,
.L38:
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ MEM[base: pString_4(D), index: length_2, offset: 0B], MEM[base: pString_4(D), index: length_2, offset: 0B]
	cmp	r2, #0	@ MEM[base: pString_4(D), index: length_2, offset: 0B]
	bne	.L39	@
	mov	r0, r3	@, length
	bx	lr	@
	.size	strlen, .-strlen
	.section	.text.strrchr,"ax",%progbits
	.align	1
	.global	strrchr
	.thumb
	.thumb_func
	.ascii	"strrchr\000"
	.align	2
	.word	4278190088
	.type	strrchr, %function
strrchr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0	@ p,
	b	.L45	@
.L43:
	cmp	r2, r1	@ D.4004, character
	it	eq	@
	moveq	r3, r0	@, p, ivtmp.180
.L45:
	ldrb	r2, [r0], #1	@ zero_extendqisi2	@ D.4004, MEM[base: D.4278_16, offset: 0B]
	cmp	r2, #0	@ D.4004
	bne	.L43	@
	mov	r0, r3	@, p
	bx	lr	@
	.size	strrchr, .-strrchr
	.section	.text.strcpy,"ax",%progbits
	.align	1
	.global	strcpy
	.thumb
	.thumb_func
	.ascii	"strcpy\000"
	.align	2
	.word	4278190088
	.type	strcpy, %function
strcpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ ivtmp.200, pDestination
.L47:
	ldrb	r2, [r1], #1	@ zero_extendqisi2	@ D.4000, MEM[base: D.4299_19, offset: 0B]
	strb	r2, [r3], #1	@ D.4000, MEM[base: D.4300_20, offset: 0B]
	cmp	r2, #0	@ D.4000
	bne	.L47	@
	bx	lr	@
	.size	strcpy, .-strcpy
	.section	.text.strncmp,"ax",%progbits
	.align	1
	.global	strncmp
	.thumb
	.thumb_func
	.ascii	"strncmp\000"
	.align	2
	.word	4278190088
	.type	strncmp, %function
strncmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	mov	r3, r0	@ pString1, pString1
	movs	r4, #0	@ ivtmp.205,
	b	.L50	@
.L52:
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ D.3991, MEM[base: pString1_5(D), index: ivtmp.205_23, offset: 0B]
	ldrb	r0, [r1, r4]	@ zero_extendqisi2	@ MEM[base: pString2_6(D), index: ivtmp.205_23, offset: 0B], MEM[base: pString2_6(D), index: ivtmp.205_23, offset: 0B]
	subs	r0, r5, r0	@ r, D.3991, MEM[base: pString2_6(D), index: ivtmp.205_23, offset: 0B]
	bne	.L51	@,
	adds	r4, r4, #1	@ ivtmp.205, ivtmp.205,
	cbz	r5, .L51	@ D.3991,
.L50:
	cmp	r4, r2	@ ivtmp.205, count
	bne	.L52	@,
	movs	r0, #0	@ r,
.L51:
	pop	{r4, r5, pc}	@
	.size	strncmp, .-strncmp
	.section	.text.strncpy,"ax",%progbits
	.align	1
	.global	strncpy
	.thumb
	.thumb_func
	.ascii	"strncpy\000"
	.align	2
	.word	4278190088
	.type	strncpy, %function
strncpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r3, #0	@ ivtmp.231,
	b	.L54	@
.L56:
	ldrb	ip, [r1, r3]	@ zero_extendqisi2	@ D.3987, MEM[base: pSource_6(D), index: ivtmp.231_17, offset: 0B]
	strb	ip, [r0, r3]	@ D.3987, MEM[base: pDestination_4(D), index: ivtmp.231_17, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.231, ivtmp.231,
	adds	r4, r1, r3	@ tmp143, pSource, ivtmp.231
	ldrb	r4, [r4, #-1]	@ zero_extendqisi2	@ MEM[base: D.4357_19, offset: 4294967295B], MEM[base: D.4357_19, offset: 4294967295B]
	cbz	r4, .L55	@ MEM[base: D.4357_19, offset: 4294967295B],
.L54:
	cmp	r3, r2	@ ivtmp.231, count
	bne	.L56	@,
.L55:
	pop	{r4, pc}	@
	.size	strncpy, .-strncpy
	.section	.text.strcmp,"ax",%progbits
	.align	1
	.global	strcmp
	.thumb
	.thumb_func
	.ascii	"strcmp\000"
	.align	2
	.word	4278190088
	.type	strcmp, %function
strcmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	.L58	@
.L60:
	cbz	r3, .L61	@ D.3982,
.L58:
	ldrb	r3, [r0], #1	@ zero_extendqisi2	@ D.3982, MEM[base: D.4373_25, offset: 0B]
	ldrb	r2, [r1], #1	@ zero_extendqisi2	@ D.3984, MEM[base: s2_2, offset: 0B]
	cmp	r3, r2	@ D.3982, D.3984
	beq	.L60	@,
	subs	r0, r3, r2	@ D.3979, D.3982, D.3984
	bx	lr	@
.L61:
	mov	r0, r3	@ D.3979, D.3982
	bx	lr	@
	.size	strcmp, .-strcmp
	.section	.text.strtok_r,"ax",%progbits
	.align	1
	.global	strtok_r
	.thumb
	.thumb_func
	.ascii	"strtok_r\000"
	.align	2
	.word	4278190092
	.type	strtok_r, %function
strtok_r:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	cbnz	r0, .L63	@ s,
	ldr	r0, [r2, #0]	@ s, *last_8(D)
	cmp	r0, #0	@ s
	beq	.L64	@
.L63:
	mov	r3, r0	@ ivtmp.302, s
.L66:
	mov	r5, r3	@ s, ivtmp.302
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ c, MEM[base: s_1, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.302, ivtmp.302,
	mov	r4, r1	@ spanp, delim
	b	.L65	@
.L67:
	cmp	r0, r6	@ c, sc
	beq	.L66	@,
.L65:
	ldrb	r6, [r4], #1	@ zero_extendqisi2	@ sc, MEM[base: spanp_4, offset: 0B]
	cmp	r6, #0	@ sc
	bne	.L67	@
	cbnz	r0, .L72	@ c,
	str	r0, [r2, #0]	@ c, *last_8(D)
	pop	{r4, r5, r6, r7, pc}	@
.L72:
	mov	r6, r3	@ s, ivtmp.288
	ldrb	r4, [r6, #0]	@ zero_extendqisi2	@ c, MEM[base: s_2, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.288, ivtmp.288,
	mov	r0, r3	@ s, ivtmp.288
	mov	r7, r1	@ spanp, delim
.L71:
	ldrb	ip, [r7], #1	@ zero_extendqisi2	@ sc, MEM[base: spanp_5, offset: 0B]
	cmp	ip, r4	@ sc, c
	bne	.L69	@,
	cbz	r4, .L74	@ c,
	movs	r3, #0	@ tmp164,
	strb	r3, [r6, #0]	@ tmp164, *s_50
	b	.L70	@
.L74:
	mov	r0, r4	@ s, c
.L70:
	str	r0, [r2, #0]	@ s, *last_8(D)
	mov	r0, r5	@ tok, s
	pop	{r4, r5, r6, r7, pc}	@
.L69:
	cmp	ip, #0	@ sc
	bne	.L71	@
	b	.L72	@
.L64:
	pop	{r4, r5, r6, r7, pc}	@
	.size	strtok_r, .-strtok_r
	.section	.text.strtok,"ax",%progbits
	.align	1
	.global	strtok
	.thumb
	.thumb_func
	.ascii	"strtok\000"
	.align	2
	.word	4278190088
	.type	strtok, %function
strtok:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L78	@,
	b	strtok_r	@
.L79:
	.align	2
.L78:
	.word	.LANCHOR0
	.size	strtok, .-strtok
	.section	.bss.last.3934,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	last.3934, %object
	.size	last.3934, 4
last.3934:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
