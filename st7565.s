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
	.file	"st7565.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed st7565.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip st7565.o -Os -Wall
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

	.section	.text.sendByte,"ax",%progbits
	.align	1
	.global	sendByte
	.thumb
	.thumb_func
	.ascii	"sendByte\000"
	.align	2
	.word	4278190092
	.type	sendByte, %function
sendByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6	@ tmp155,
	movw	r2, #4095	@ tmp156,
	push	{r4, r5, lr}	@
	str	r2, [r3, #0]	@ tmp156, MEM[(volatile long unsigned int *)1342308480B]
	movs	r3, #7	@ ivtmp.24,
.L3:
	asr	r4, r0, r3	@ tmp159, byte, ivtmp.24
	ldr	r2, .L6	@ tmp157,
	movs	r5, #0	@ tmp158,
	str	r5, [r2, #0]	@ tmp158, MEM[(volatile long unsigned int *)1342308480B]
	movw	r1, #4095	@ tmp165,
	ands	r4, r4, #1	@ tmp160, tmp159,
	ldr	r5, .L6+4	@ tmp161,
	it	ne	@
	movne	r4, r1	@, iftmp.5, tmp165
	adds	r3, r3, #-1	@ ivtmp.24, ivtmp.24,
	str	r4, [r5, #0]	@ iftmp.5, MEM[(volatile long unsigned int *)1342308608B]
	str	r1, [r2, #0]	@ tmp165, MEM[(volatile long unsigned int *)1342308480B]
	bcs	.L3	@,
	pop	{r4, r5, pc}	@
.L7:
	.align	2
.L6:
	.word	1342308480
	.word	1342308608
	.size	sendByte, .-sendByte
	.section	.text.writeBuffer,"ax",%progbits
	.align	1
	.global	writeBuffer
	.thumb
	.thumb_func
	.ascii	"writeBuffer\000"
	.align	2
	.word	4278190092
	.type	writeBuffer, %function
writeBuffer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	ldr	r6, .L13	@ tmp205,
	sub	sp, sp, #36	@,,
	mov	r5, sp	@ tmp204,
	mov	r4, r0	@ buffer, buffer
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp204,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp204,,,,
	movs	r6, #0	@ ivtmp.56,
.L10:
	ldr	r1, [sp, r6]	@ MEM[symbol: pagemap, index: ivtmp.56_99, offset: 0B], MEM[symbol: pagemap, index: ivtmp.56_99, offset: 0B]
	ldr	r7, .L13+4	@ tmp206,
	orn	r0, r1, #79	@ tmp211, MEM[symbol: pagemap, index: ivtmp.56_99, offset: 0B],
	movs	r5, #0	@ tmp207,
	str	r5, [r7, #0]	@ tmp207, MEM[(volatile long unsigned int *)1342308360B]
	uxtb	r0, r0	@, tmp211
	bl	sendByte	@
	str	r5, [r7, #0]	@ tmp207, MEM[(volatile long unsigned int *)1342308360B]
	mov	r0, r5	@, tmp207
	bl	sendByte	@
	str	r5, [r7, #0]	@ tmp207, MEM[(volatile long unsigned int *)1342308360B]
	movs	r0, #16	@,
	bl	sendByte	@
	str	r5, [r7, #0]	@ tmp207, MEM[(volatile long unsigned int *)1342308360B]
	movs	r0, #224	@,
	bl	sendByte	@
	movw	r3, #4095	@ tmp220,
	str	r3, [r7, #0]	@ tmp220, MEM[(volatile long unsigned int *)1342308360B]
	movs	r0, #255	@,
	bl	sendByte	@
	lsls	r7, r6, #5	@ D.5513, ivtmp.56,
.L9:
	ldr	r3, .L13+4	@ tmp221,
	movw	r0, #4095	@ tmp222,
	add	ip, r4, r5	@ tmp223, buffer, c
	str	r0, [r3, #0]	@ tmp222, MEM[(volatile long unsigned int *)1342308360B]
	ldrb	r0, [ip, r7]	@ zero_extendqisi2	@, *D.5058_17
	bl	sendByte	@
	adds	r2, r5, #1	@ tmp226, c,
	uxtb	r5, r2	@ c, tmp226
	cmp	r5, #128	@ c,
	bne	.L9	@,
	adds	r6, r6, #4	@ ivtmp.56, ivtmp.56,
	cmp	r6, #32	@ ivtmp.56,
	bne	.L10	@,
	add	sp, sp, #36	@,,
	pop	{r4, r5, r6, r7, pc}
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	1342308360
	.size	writeBuffer, .-writeBuffer
	.section	.text.st7565Backlight,"ax",%progbits
	.align	1
	.global	st7565Backlight
	.thumb
	.thumb_func
	.ascii	"st7565Backlight\000"
	.align	2
	.word	4278190096
	.type	st7565Backlight, %function
st7565Backlight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #4095	@ tmp137,
	ldr	r2, .L18	@ tmp136,
	cmp	r0, #0	@ state,
	it	ne	@
	movne	r3, #0	@, iftmp.5,
	str	r3, [r2, #0]	@ iftmp.5, MEM[(volatile long unsigned int *)1342308416B]
	bx	lr	@
.L19:
	.align	2
.L18:
	.word	1342308416
	.size	st7565Backlight, .-st7565Backlight
	.section	.text.st7565SetBrightness,"ax",%progbits
	.align	1
	.global	st7565SetBrightness
	.thumb
	.thumb_func
	.ascii	"st7565SetBrightness\000"
	.align	2
	.word	4278190100
	.type	st7565SetBrightness, %function
st7565SetBrightness:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r4, .L21	@ tmp136,
	movs	r5, #0	@ tmp137,
	mov	r6, r0	@ val, val
	str	r5, [r4, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342308360B]
	movs	r0, #129	@,
	bl	sendByte	@
	and	r0, r6, #63	@, val,
	str	r5, [r4, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342308360B]
	pop	{r4, r5, r6, lr}	@
	b	sendByte	@
.L22:
	.align	2
.L21:
	.word	1342308360
	.size	st7565SetBrightness, .-st7565SetBrightness
	.section	.text.st7565Init,"ax",%progbits
	.align	1
	.global	st7565Init
	.thumb
	.thumb_func
	.ascii	"st7565Init\000"
	.align	2
	.word	4278190092
	.type	st7565Init, %function
st7565Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	movs	r0, #2	@,
	movs	r1, #5	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r2, .L24	@ tmp134,
	movw	r5, #4095	@ tmp135,
	str	r5, [r2, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308480B]
	movs	r0, #2	@,
	movs	r1, #6	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r1, .L24+4	@ tmp136,
	movs	r0, #2	@,
	str	r5, [r1, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308608B]
	movs	r2, #1	@,
	movs	r1, #4	@,
	bl	gpioSetDir	@
	ldr	r0, .L24+8	@ tmp138,
	movs	r1, #1	@,
	ldr	r4, .L24+12	@ tmp140,
	str	r5, [r0, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308416B]
	mov	r2, r1	@,
	movs	r0, #2	@,
	bl	gpioSetDir	@
	ldr	r6, .L24+16	@ tmp142,
	movs	r0, #2	@,
	mov	r1, r0	@,
	movs	r2, #1	@,
	str	r5, [r4, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308360B]
	bl	gpioSetDir	@
	movs	r1, #3	@,
	movs	r2, #1	@,
	movs	r0, #2	@,
	str	r5, [r6, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308368B]
	bl	gpioSetDir	@
	ldr	r3, .L24+20	@ tmp144,
	movs	r7, #0	@ tmp147,
	str	r5, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308384B]
	mov	r0, #500	@,
	str	r7, [r3, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308384B]
	str	r7, [r6, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308368B]
	bl	systickDelay	@
	str	r5, [r6, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308368B]
	movs	r0, #163	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #160	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #192	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #64	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	movs	r0, #44	@,
	bl	sendByte	@
	movs	r0, #50	@,
	bl	systickDelay	@
	movs	r0, #46	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #50	@,
	bl	systickDelay	@
	movs	r0, #47	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #10	@,
	bl	systickDelay	@
	movs	r0, #38	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #175	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #164	@,
	str	r7, [r4, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342308360B]
	bl	sendByte	@
	movs	r0, #24	@,
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	st7565SetBrightness	@
.L25:
	.align	2
.L24:
	.word	1342308480
	.word	1342308608
	.word	1342308416
	.word	1342308360
	.word	1342308368
	.word	1342308384
	.size	st7565Init, .-st7565Init
	.section	.text.st7565ClearScreen,"ax",%progbits
	.align	1
	.global	st7565ClearScreen
	.thumb
	.thumb_func
	.ascii	"st7565ClearScreen\000"
	.align	2
	.word	4278190100
	.type	st7565ClearScreen, %function
st7565ClearScreen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L27	@,
	movs	r1, #0	@,
	mov	r2, #1024	@,
	b	memset	@
.L28:
	.align	2
.L27:
	.word	_st7565buffer
	.size	st7565ClearScreen, .-st7565ClearScreen
	.section	.text.st7565Refresh,"ax",%progbits
	.align	1
	.global	st7565Refresh
	.thumb
	.thumb_func
	.ascii	"st7565Refresh\000"
	.align	2
	.word	4278190096
	.type	st7565Refresh, %function
st7565Refresh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L30	@,
	b	writeBuffer	@
.L31:
	.align	2
.L30:
	.word	_st7565buffer
	.size	st7565Refresh, .-st7565Refresh
	.section	.text.st7565DrawPixel,"ax",%progbits
	.align	1
	.global	st7565DrawPixel
	.thumb
	.thumb_func
	.ascii	"st7565DrawPixel\000"
	.align	2
	.word	4278190096
	.type	st7565DrawPixel, %function
st7565DrawPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #24	@, x,
	bmi	.L32	@,
	cmp	r1, #63	@ y,
	bhi	.L32	@,
	lsrs	r2, r1, #3	@ tmp153, y,
	mvns	r1, r1	@ tmp157, y
	lsls	r3, r2, #7	@ tmp154, tmp153,
	and	r1, r1, #7	@ tmp158, tmp157,
	movs	r2, #1	@ tmp160,
	lsl	ip, r2, r1	@ tmp159, tmp160, tmp158
	adds	r0, r0, r3	@ D.4972, x, tmp154
	ldr	r3, .L34	@ tmp155,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ tmp162, _st7565buffer
	orr	r1, r2, ip	@ tmp164, tmp162, tmp159
	strb	r1, [r3, r0]	@ tmp164, _st7565buffer
.L32:
	bx	lr	@
.L35:
	.align	2
.L34:
	.word	_st7565buffer
	.size	st7565DrawPixel, .-st7565DrawPixel
	.section	.text.drawChar,"ax",%progbits
	.align	1
	.global	drawChar
	.thumb
	.thumb_func
	.ascii	"drawChar\000"
	.align	2
	.word	4278190092
	.type	drawChar, %function
drawChar:
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	uxtb	r6, r3	@ font$u8Width,
	add	r7, sp, #0	@,,
	mov	r4, r0	@ x, x
	mov	r5, r1	@ y, y
	lsrs	r0, r3, #16	@ tmp324,,
	add	r1, r6, #14	@ tmp286, font$u8Width,
	str	r3, [r7, #36]	@, font
	and	r3, r1, #504	@ tmp288, tmp286,
	uxtb	r1, r0	@ font.u8FirstChar, tmp324
	sub	sp, sp, r3	@,, tmp288
	cmp	r1, r2	@ font.u8FirstChar, c
	mov	sl, sp	@ column.7,
	bhi	.L47	@,
	ldrb	r0, [r7, #39]	@ zero_extendqisi2	@ font.u8LastChar, font.u8LastChar
	cmp	r0, r2	@ font.u8LastChar, c
	bcc	.L47	@,
	subs	r2, r2, #32	@ tmp295, c,
	ldr	r1, [r7, #40]	@ D.5014, font.au8FontTable
	muls	r2, r6, r2	@ D.5019, font$u8Width
	movs	r3, #0	@ ivtmp.89,
	b	.L38	@
.L39:
	add	ip, r1, r2	@ tmp296, D.5014, D.5019
	ldrb	r8, [ip, r3]	@ zero_extendqisi2	@ MEM[base: D.5568_86, index: ivtmp.89_58, offset: 0B], MEM[base: D.5568_86, index: ivtmp.89_58, offset: 0B]
	strb	r8, [sl, r3]	@ MEM[base: D.5568_86, index: ivtmp.89_58, offset: 0B], MEM[base: column.7_16, index: ivtmp.89_58, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.89, ivtmp.89,
.L38:
	uxtb	r0, r3	@ ivtmp.89, ivtmp.89
	cmp	r0, r6	@ ivtmp.89, font$u8Width
	bcc	.L39	@,
.L42:
	mov	r8, #0	@ xoffset,
	b	.L40	@
.L41:
	movs	r1, #255	@ tmp300,
	adds	r2, r3, #1	@ tmp302, col,
	strb	r1, [sl, r3]	@ tmp300, *column.7_16
	uxtb	r3, r2	@ col, tmp302
	b	.L49	@
.L47:
	movs	r3, #0	@ col,
.L49:
	cmp	r3, r6	@ col, font$u8Width
	bne	.L41	@,
	b	.L42	@
.L44:
	ldrb	ip, [sl, r8]	@ zero_extendqisi2	@ tmp303, *column.7_16
	mvn	r1, r9	@ tmp304, yoffset
	adds	r1, r1, #8	@ tmp305, tmp304,
	lsl	r0, ip, r1	@ tmp306, tmp303, tmp305
	uxtb	r3, r0	@ bit, tmp306
	lsrs	r3, r3, #7	@, bit,
	beq	.L43	@,
	add	r3, r8, r4	@ tmp312, xoffset, x
	add	r2, r9, r5	@ tmp316, yoffset, y
	uxtb	r0, r3	@, tmp312
	uxtb	r1, r2	@, tmp316
	bl	st7565DrawPixel	@
.L43:
	add	r0, r9, #1	@ tmp318, yoffset,
	uxth	r9, r0	@ yoffset, tmp318
	b	.L45	@
.L48:
	mov	r9, #0	@ yoffset,
.L45:
	ldrb	r1, [r7, #37]	@ zero_extendqisi2	@ font.u8Height, font.u8Height
	cmp	r1, r9	@ font.u8Height, yoffset
	bge	.L44	@,
	add	r2, r8, #1	@ tmp320, xoffset,
	uxth	r8, r2	@ xoffset, tmp320
.L40:
	cmp	r8, r6	@ xoffset, font$u8Width
	bcc	.L48	@,
	mov	sp, r7
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	drawChar, .-drawChar
	.section	.text.st7565ClearPixel,"ax",%progbits
	.align	1
	.global	st7565ClearPixel
	.thumb
	.thumb_func
	.ascii	"st7565ClearPixel\000"
	.align	2
	.word	4278190100
	.type	st7565ClearPixel, %function
st7565ClearPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #24	@, x,
	bmi	.L50	@,
	cmp	r1, #63	@ y,
	bhi	.L50	@,
	lsrs	r2, r1, #3	@ tmp154, y,
	mvns	r1, r1	@ tmp157, y
	lsls	r3, r2, #7	@ tmp155, tmp154,
	and	r1, r1, #7	@ tmp158, tmp157,
	movs	r2, #1	@ tmp160,
	lsl	ip, r2, r1	@ tmp159, tmp160, tmp158
	adds	r0, r0, r3	@ D.4952, x, tmp155
	ldr	r3, .L52	@ tmp156,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ tmp166, _st7565buffer
	bic	r1, r2, ip	@ tmp167, tmp166, tmp159
	strb	r1, [r3, r0]	@ tmp167, _st7565buffer
.L50:
	bx	lr	@
.L53:
	.align	2
.L52:
	.word	_st7565buffer
	.size	st7565ClearPixel, .-st7565ClearPixel
	.section	.text.st7565GetPixel,"ax",%progbits
	.align	1
	.global	st7565GetPixel
	.thumb
	.thumb_func
	.ascii	"st7565GetPixel\000"
	.align	2
	.word	4278190096
	.type	st7565GetPixel, %function
st7565GetPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #24	@, x,
	bmi	.L56	@,
	cmp	r1, #63	@ y,
	bhi	.L57	@,
	lsrs	r3, r1, #3	@ tmp155, y,
	lsls	r2, r3, #7	@ tmp156, tmp155,
	mvns	r3, r1	@ tmp159, y
	adds	r2, r2, r0	@ tmp157, tmp156, x
	movs	r1, #1	@ tmp162,
	and	r0, r3, #7	@ tmp160, tmp159,
	lsl	r1, r1, r0	@ tmp161, tmp162, tmp160
	ldr	r3, .L58	@ tmp153,
	ldrb	r0, [r3, r2]	@ zero_extendqisi2	@ tmp164, _st7565buffer
	ands	r0, r0, r1	@, D.4929, tmp164, tmp161
	bx	lr	@
.L56:
	movs	r0, #0	@ D.4929,
	bx	lr	@
.L57:
	movs	r0, #0	@ D.4929,
	bx	lr	@
.L59:
	.align	2
.L58:
	.word	_st7565buffer
	.size	st7565GetPixel, .-st7565GetPixel
	.section	.text.st7565DrawString,"ax",%progbits
	.align	1
	.global	st7565DrawString
	.thumb
	.thumb_func
	.ascii	"st7565DrawString\000"
	.align	2
	.word	4278190100
	.type	st7565DrawString, %function
st7565DrawString:
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r6, r0	@ x, x
	mov	r7, r1	@ y, y
	mov	r5, r2	@ text, text
	str	r3, [sp, #36]	@, font
	movs	r4, #0	@ l,
	b	.L61	@
.L62:
	ldrb	r2, [sp, #36]	@ zero_extendqisi2	@ font.u8Width, font.u8Width
	ldr	r3, [sp, #40]	@ font, font
	adds	r1, r2, #1	@ tmp150, font.u8Width,
	mla	r0, r1, r4, r6	@ tmp154, tmp150, l, x
	ldrb	r2, [r5, r4]	@ zero_extendqisi2	@ *D.4921_15, *D.4921_15
	str	r3, [sp, #0]	@ font,
	uxth	r0, r0	@, tmp154
	ldr	r3, [sp, #36]	@, font
	mov	r1, r7	@, y
	bl	drawChar	@
	adds	r4, r4, #1	@ tmp158, l,
	uxtb	r4, r4	@ l, tmp158
.L61:
	mov	r0, r5	@, text
	bl	strlen	@
	cmp	r4, r0	@ l,
	bcc	.L62	@,
	pop	{r1, r2, r3, r4, r5, r6, r7, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	st7565DrawString, .-st7565DrawString
	.section	.text.st7565ShiftFrameBuffer,"ax",%progbits
	.align	1
	.global	st7565ShiftFrameBuffer
	.thumb
	.thumb_func
	.ascii	"st7565ShiftFrameBuffer\000"
	.align	2
	.word	4278190104
	.type	st7565ShiftFrameBuffer, %function
st7565ShiftFrameBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r6, r0	@ height, height
	cmp	r0, #0	@ height
	beq	.L63	@
	cmp	r0, #63	@ height,
	bls	.L70	@,
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	st7565ClearScreen	@
.L69:
	cmp	r7, r6	@ ivtmp.145, height
	ble	.L66	@,
	adds	r1, r4, r6	@ tmp172, y, height
	mov	r0, r5	@, x
	uxtb	r1, r1	@, tmp172
	bl	st7565GetPixel	@
	cbz	r0, .L66	@,
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	bl	st7565DrawPixel	@
	b	.L68	@
.L66:
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	bl	st7565ClearPixel	@
.L68:
	adds	r5, r5, #1	@ tmp175, x,
	uxtb	r5, r5	@ x, tmp175
	cmp	r5, #128	@ x,
	bne	.L69	@,
	adds	r4, r4, #1	@ tmp176, y,
	uxtb	r4, r4	@ y, tmp176
	subs	r7, r7, #1	@ ivtmp.145, ivtmp.145,
	cmp	r4, #64	@ y,
	bne	.L65	@,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L70:
	movs	r7, #63	@ ivtmp.145,
	movs	r4, #0	@ y,
.L65:
	movs	r5, #0	@ x,
	b	.L69	@
.L63:
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	st7565ShiftFrameBuffer, .-st7565ShiftFrameBuffer
	.comm	_st7565buffer,1024,1
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	3
	.word	2
	.word	1
	.word	0
	.word	7
	.word	6
	.word	5
	.word	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
