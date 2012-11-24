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
	.file	"stdio.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed stdio.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip stdio.o -Os -Wall -ffunction-sections
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

	.section	.text.append_char,"ax",%progbits
	.align	1
	.global	append_char
	.thumb
	.thumb_func
	.ascii	"append_char\000"
	.align	2
	.word	4278190092
	.type	append_char, %function
append_char:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strb	r1, [r0, #0]	@ c, *pStr_1(D)
	movs	r0, #1	@,
	bx	lr	@
	.size	append_char, .-append_char
	.section	.text.PutString,"ax",%progbits
	.align	1
	.global	PutString
	.thumb
	.thumb_func
	.ascii	"PutString\000"
	.align	2
	.word	4278190092
	.type	PutString, %function
PutString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r4, #0	@ num,
	b	.L3	@
.L4:
	strb	r5, [r0], #1	@ D.4749, MEM[base: pStr_1, offset: 0B]
	adds	r4, r4, #1	@ num, num,
.L3:
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ D.4749, MEM[base: pSource_9(D), index: D.4812_6, offset: 0B]
	cmp	r5, #0	@ D.4749
	bne	.L4	@
	subs	r2, r2, r4	@ width, width, num
	mov	r3, r2	@ width, width
	b	.L5	@
.L6:
	strb	r1, [r0], #1	@ fill, MEM[base: pStr_2, offset: 0B]
	subs	r3, r3, #1	@ width, width,
.L5:
	cmp	r3, #0	@ width,
	bgt	.L6	@,
	cmp	r2, #0	@ width,
	ite	ge	@
	addge	r0, r4, r2	@,,, num, width
	addlt	r0, r4, #0	@,,, num,
	pop	{r4, r5, pc}	@
	.size	PutString, .-PutString
	.section	.text.PutUnsignedInt,"ax",%progbits
	.align	1
	.global	PutUnsignedInt
	.thumb
	.thumb_func
	.ascii	"PutUnsignedInt\000"
	.align	2
	.word	4278190096
	.type	PutUnsignedInt, %function
PutUnsignedInt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}	@
	mov	r7, r2	@ width, width
	subs	r2, r2, #1	@ width, width,
	cmp	r3, #9	@ value,
	mov	r5, r0	@ pStr, pStr
	mov	r6, r1	@ fill, fill
	mov	r4, r3	@ value, value
	bls	.L11	@,
	movs	r3, #10	@ tmp157,
	udiv	r3, r4, r3	@, value, tmp157
	bl	PutUnsignedInt	@
	mov	r9, r0	@ num,
	adds	r3, r5, r0	@ pStr, pStr, num
	b	.L9	@
.L10:
	mov	r1, r6	@, fill
	bl	append_char	@
	b	.L8	@
.L11:
	mov	r8, #0	@ ivtmp.52,
.L8:
	add	r0, r5, r8	@ D.4832, pStr, ivtmp.52
	mov	r9, r8	@ num, ivtmp.52
	add	r8, r8, #1	@ ivtmp.52, ivtmp.52,
	rsb	r2, r8, r7	@ D.4835, ivtmp.52, width
	cmp	r2, #0	@ D.4835,
	mov	r3, r0	@ pStr, D.4832
	bgt	.L10	@,
.L9:
	movs	r2, #10	@ tmp162,
	udiv	r0, r4, r2	@ tmp161, value, tmp162
	mls	r4, r2, r0, r4	@ tmp165, tmp162, tmp161, value
	add	r1, r4, #48	@ tmp167, tmp165,
	mov	r0, r3	@, pStr
	uxtb	r1, r1	@, tmp167
	bl	append_char	@
	add	r0, r9, r0	@, num,
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}	@
	.size	PutUnsignedInt, .-PutUnsignedInt
	.section	.text.PutSignedInt,"ax",%progbits
	.align	1
	.global	PutSignedInt
	.thumb
	.thumb_func
	.ascii	"PutSignedInt\000"
	.align	2
	.word	4278190096
	.type	PutSignedInt, %function
PutSignedInt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	eor	r4, r3, r3, asr #31	@ absolute, value
	sub	r4, r4, r3, asr #31	@ absolute, value
	cmp	r4, #9	@ absolute,
	mov	r5, r0	@ pStr, pStr
	mov	r6, r1	@ fill, fill
	mov	r7, r3	@ value, value
	add	r8, r2, #-1	@ width, width,
	bls	.L15	@,
	cmp	r3, #0	@ value,
	mov	r3, #10	@ tmp184,
	bge	.L16	@,
	udiv	r3, r4, r3	@ tmp166, absolute, tmp184
	mov	r2, r8	@, width
	negs	r3, r3	@, tmp166
	b	.L22	@
.L16:
	mov	r2, r8	@, width
	udiv	r3, r4, r3	@, absolute, tmp184
.L22:
	bl	PutSignedInt	@
	mov	r6, r0	@ num,
	adds	r5, r5, r0	@ pStr, pStr, num
	b	.L18	@
.L15:
	cmp	r3, #0	@ value,
	it	lt
	addlt	r8, r8, #-1	@ width, width,
	mov	sl, r8	@ width, width
	mov	r9, r0	@ pStr, pStr
	b	.L20	@
.L21:
	mov	r0, r9	@, pStr
	mov	r1, r6	@, fill
	bl	append_char	@
	add	r9, r9, #1	@ pStr, pStr,
	add	sl, sl, #-1	@ width, width,
.L20:
	cmp	sl, #0	@ width,
	bgt	.L21	@,
	bic	r6, r8, r8, asr #31	@ num, width
	cmp	r7, #0	@ value,
	add	r5, r5, r6	@ pStr, pStr, num
	bge	.L18	@,
	mov	r0, r5	@, pStr
	movs	r1, #45	@,
	bl	append_char	@
	adds	r5, r5, #1	@ pStr, pStr,
	adds	r6, r6, r0	@ num, num,
.L18:
	movs	r2, #10	@ tmp176,
	udiv	r0, r4, r2	@ tmp175, absolute, tmp176
	mls	r4, r2, r0, r4	@ tmp179, tmp176, tmp175, absolute
	add	r1, r4, #48	@ tmp181, tmp179,
	mov	r0, r5	@, pStr
	uxtb	r1, r1	@, tmp181
	bl	append_char	@
	adds	r0, r6, r0	@, num,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}	@
	.size	PutSignedInt, .-PutSignedInt
	.section	.text.PutHexa,"ax",%progbits
	.align	1
	.global	PutHexa
	.thumb
	.thumb_func
	.ascii	"PutHexa\000"
	.align	2
	.word	4278190088
	.type	PutHexa, %function
PutHexa:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldr	r4, [sp, #40]	@ value, value
	mov	r8, r2	@ width, width
	subs	r2, r2, #1	@ width, width,
	lsrs	r9, r4, #4	@ D.4692, value,
	mov	r5, r0	@ pStr, pStr
	mov	r6, r1	@ fill, fill
	mov	r7, r3	@ maj, maj
	beq	.L24	@,
	str	r9, [sp, #0]	@ D.4692,
	bl	PutHexa	@
	mov	sl, r0	@ num,
	adds	r0, r5, r0	@ pStr, pStr, num
	b	.L25	@
.L26:
	mov	r0, r3	@, D.4878
	mov	r1, r6	@, fill
	bl	append_char	@
.L24:
	add	r3, r5, r9	@ D.4878, pStr, ivtmp.91
	mov	sl, r9	@ num, ivtmp.91
	add	r9, r9, #1	@ ivtmp.91, ivtmp.91,
	rsb	r2, r9, r8	@ D.4881, ivtmp.91, width
	cmp	r2, #0	@ D.4881,
	mov	r0, r3	@ pStr, D.4878
	bgt	.L26	@,
.L25:
	and	r1, r4, #15	@ tmp162, value,
	cmp	r1, #9	@ tmp162,
	bhi	.L27	@,
	adds	r1, r1, #48	@, tmp162,
	b	.L31	@
.L27:
	cbz	r7, .L29	@ maj,
	adds	r1, r1, #55	@, tmp162,
	b	.L31	@
.L29:
	adds	r1, r1, #87	@, tmp162,
.L31:
	bl	append_char	@
	add	r0, sl, #1	@, num,
	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
	.size	PutHexa, .-PutHexa
	.section	.text.vsnprintf,"ax",%progbits
	.align	1
	.global	vsnprintf
	.thumb
	.thumb_func
	.ascii	"vsnprintf\000"
	.align	2
	.word	4278190092
	.type	vsnprintf, %function
vsnprintf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, lr}	@
	mov	r6, r1	@ length, length
	mov	r4, r0	@ pStr, pStr
	cbz	r0, .L33	@ pStr,
	movs	r1, #0	@ size,
	strb	r1, [r0, #0]	@ size, *pStr_14(D)
.L33:
	movs	r5, #0	@ size,
	b	.L58	@
.L54:
	cmp	r1, #37	@ D.4641,
	beq	.L35	@,
	strb	r1, [r4], #1	@ D.4641, *pStr_1
	adds	r2, r2, #1	@ pFormat, pFormat,
	b	.L60	@
.L35:
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.4646, MEM[(const char *)pFormat_4 + 1B]
	cmp	r1, #37	@ D.4646,
	bne	.L37	@,
	strb	r1, [r4], #1	@ D.4646, *pStr_1
	adds	r2, r2, #2	@ pFormat, pFormat,
.L60:
	adds	r5, r5, #1	@ size, size,
	b	.L58	@
.L37:
	cmp	r1, #48	@ D.4646,
	beq	.L38	@,
	adds	r2, r2, #1	@ pFormat, pFormat,
	movs	r1, #32	@ fill,
	b	.L39	@
.L38:
	adds	r2, r2, #2	@ pFormat, pFormat,
.L39:
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ *pFormat_2, *pFormat_2
	cmp	r0, #45	@ *pFormat_2,
	it	eq
	addeq	r2, r2, #1	@ pFormat, pFormat,
	mov	ip, r2	@ ivtmp.134, pFormat
	movs	r2, #0	@ width,
	b	.L41	@
.L42:
	movs	r7, #10	@ tmp207,
	mla	r2, r7, r2, r0	@ tmp209, tmp207, width, D.4641
	subs	r2, r2, #48	@ tmp210, tmp209,
	and	r2, r2, #255	@ width, tmp210,
.L41:
	mov	r7, ip	@ pFormat, ivtmp.134
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ D.4641, MEM[base: pFormat_3, offset: 0B]
	add	ip, ip, #1	@ ivtmp.134, pFormat,
	sub	r8, r0, #48	@ tmp211, D.4641,
	uxtb	r8, r8	@ tmp212, tmp211
	cmp	r8, #9	@ tmp212,
	bls	.L42	@,
	add	ip, r5, r2	@ tmp213, size, width
	cmp	ip, r6	@ tmp213, length
	itt	hi
	rsbhi	r2, r5, r6	@ tmp216, size, length
	uxtbhi	r2, r2	@ width, tmp216
	cmp	r0, #105	@ D.4641,
	beq	.L47	@,
	bhi	.L51	@,
	cmp	r0, #99	@ D.4641,
	beq	.L46	@,
	cmp	r0, #100	@ D.4641,
	beq	.L47	@,
	cmp	r0, #88	@ D.4641,
	bne	.L56	@,
	b	.L62	@
.L51:
	cmp	r0, #117	@ D.4641,
	beq	.L49	@,
	cmp	r0, #120	@ D.4641,
	beq	.L50	@,
	cmp	r0, #115	@ D.4641,
	bne	.L56	@,
	b	.L63	@
.L47:
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	mov	r0, r4	@, pStr
	ldr	r3, [r3, #0]	@, MEM[(int *)ap$__ap_103]
	bl	PutSignedInt	@
	b	.L59	@
.L49:
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	mov	r0, r4	@, pStr
	ldr	r3, [r3, #0]	@, MEM[(unsigned int *)ap$__ap_103]
	bl	PutUnsignedInt	@
	b	.L59	@
.L50:
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	ldr	r3, [r3, #0]	@ MEM[(unsigned int *)ap$__ap_103], MEM[(unsigned int *)ap$__ap_103]
	mov	r0, r4	@, pStr
	str	r3, [sp, #0]	@ MEM[(unsigned int *)ap$__ap_103],
	movs	r3, #0	@,
	b	.L61	@
.L62:
	ldr	r0, [r3, #0]	@ MEM[(unsigned int *)ap$__ap_103], MEM[(unsigned int *)ap$__ap_103]
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	str	r0, [sp, #0]	@ MEM[(unsigned int *)ap$__ap_103],
	movs	r3, #1	@,
	mov	r0, r4	@, pStr
.L61:
	bl	PutHexa	@
	b	.L59	@
.L63:
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	mov	r0, r4	@, pStr
	ldr	r3, [r3, #0]	@, MEM[(char * *)ap$__ap_103]
	bl	PutString	@
	b	.L59	@
.L46:
	mov	r0, r4	@, pStr
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@, MEM[(unsigned int *)ap$__ap_103]
	add	r8, r3, #4	@ ap$__ap, ap$__ap,
	bl	append_char	@
.L59:
	mov	r3, r8	@ ap$__ap, ap$__ap
	adds	r2, r7, #1	@ pFormat, pFormat,
	adds	r4, r4, r0	@ pStr, pStr, num
	adds	r5, r5, r0	@ size, size, num
.L58:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ D.4641, *pFormat_4
	cbz	r1, .L53	@ D.4641,
	cmp	r5, r6	@ size, length
	bcc	.L54	@,
.L53:
	cmp	r5, r6	@ size, length
	mov	r1, #0	@ tmp227,
	itee	cc
	strbcc	r1, [r4, #0]	@ tmp227, *pStr_115
	strbcs	r1, [r4, #-1]	@ tmp227, MEM[(char *)pStr_115 + 4294967295B]
	subcs	r5, r5, #1	@ size, size,
	b	.L44	@
.L56:
	mov	r5, #-1	@ size,
.L44:
	mov	r0, r5	@, size
	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
	.size	vsnprintf, .-vsnprintf
	.section	.text.snprintf,"ax",%progbits
	.align	1
	.global	snprintf
	.thumb
	.thumb_func
	.ascii	"snprintf\000"
	.align	2
	.word	4278190092
	.type	snprintf, %function
snprintf:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r2, r3}	@
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #16	@ tmp139,,
	ldr	r2, [r3], #4	@ pFormat, pFormat
	str	r3, [sp, #4]	@ tmp139, MEM[(struct  *)&ap].__ap
	bl	vsnprintf	@
	pop	{r1, r2, r3, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	snprintf, .-snprintf
	.section	.text.vsprintf,"ax",%progbits
	.align	1
	.global	vsprintf
	.thumb
	.thumb_func
	.ascii	"vsprintf\000"
	.align	2
	.word	4278190092
	.type	vsprintf, %function
vsprintf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r1	@ pFormat, pFormat
	mov	r3, r2	@ ap, ap
	movs	r1, #255	@,
	mov	r2, r4	@, pFormat
	pop	{r4, lr}	@
	b	vsnprintf	@
	.size	vsprintf, .-vsprintf
	.section	.text.vprintf,"ax",%progbits
	.align	1
	.global	vprintf
	.thumb
	.thumb_func
	.ascii	"vprintf\000"
	.align	2
	.word	4278190088
	.type	vprintf, %function
vprintf:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	ldr	r3, .L71	@ tmp140,
	sub	sp, sp, #308	@,,
	mov	r6, r0	@ pFormat, pFormat
	mov	r2, r1	@ ap, ap
	add	r4, sp, #256	@ tmp141,,
	add	r7, r3, #40	@ tmp142, tmp140,
.L67:
	ldr	r0, [r3, #0]	@ unaligned	@,
	ldr	r1, [r3, #4]	@ unaligned	@,
	mov	r5, r4	@ tmp143, tmp141
	stmia	r5!, {r0, r1}	@ tmp143,,
	adds	r3, r3, #8	@ tmp140, tmp140,
	cmp	r3, r7	@ tmp140, tmp142
	mov	r4, r5	@ tmp141, tmp143
	bne	.L67	@,
	ldr	r0, [r3, #0]	@ unaligned	@,
	ldrb	r3, [r3, #4]	@ zero_extendqisi2	@ tmp148,
	str	r0, [r5, #0]	@ unaligned	@,
	strb	r3, [r5, #4]	@ tmp148,
	mov	r0, sp	@,
	mov	r1, r6	@, pFormat
	bl	vsprintf	@
	cmp	r0, #254	@,
	ble	.L68	@,
	add	r0, sp, #256	@,,
	bl	puts	@
.L69:
	b	.L69	@
.L68:
	mov	r0, sp	@,
	bl	puts	@
	add	sp, sp, #308	@,,
	pop	{r4, r5, r6, r7, pc}
.L72:
	.align	2
.L71:
	.word	.LC0
	.size	vprintf, .-vprintf
	.section	.text.printf,"ax",%progbits
	.align	1
	.global	printf
	.thumb
	.thumb_func
	.ascii	"printf\000"
	.align	2
	.word	4278190088
	.type	printf, %function
printf:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}	@
	push	{r0, r1, r2, lr}	@
	add	r1, sp, #16	@ tmp137,,
	ldr	r0, [r1], #4	@ pFormat, pFormat
	str	r1, [sp, #4]	@ tmp137, MEM[(struct  *)&ap].__ap
	bl	vprintf	@
	pop	{r1, r2, r3, lr}
	add	sp, sp, #16	@,,
	bx	lr
	.size	printf, .-printf
	.section	.text.sprintf,"ax",%progbits
	.align	1
	.global	sprintf
	.thumb
	.thumb_func
	.ascii	"sprintf\000"
	.align	2
	.word	4278190088
	.type	sprintf, %function
sprintf:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r1, r2, r3}	@
	push	{r0, r1, lr}	@
	add	r2, sp, #12	@ tmp138,,
	ldr	r1, [r2], #4	@ pFormat, pFormat
	str	r2, [sp, #4]	@ tmp138, MEM[(struct  *)&ap].__ap
	bl	vsprintf	@
	pop	{r2, r3, lr}
	add	sp, sp, #12	@,,
	bx	lr
	.size	sprintf, .-sprintf
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"stdio.c: increase CFG_PRINTF_MAXSTRINGSIZE\015\012\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
