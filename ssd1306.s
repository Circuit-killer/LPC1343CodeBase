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
	.file	"ssd1306.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ssd1306.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ssd1306.o -Os -Wall
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

	.section	.text.ssd1306SendCommand,"ax",%progbits
	.align	1
	.global	ssd1306SendCommand
	.thumb
	.thumb_func
	.ascii	"ssd1306SendCommand\000"
	.align	2
	.word	4278190100
	.type	ssd1306SendCommand, %function
ssd1306SendCommand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r2, #0	@ i,
.L2:
	ldr	r3, .L4	@ tmp138,
	movs	r1, #0	@ tmp139,
	strb	r1, [r3, r2]	@ tmp139, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r2, .L4+4	@ tmp141,
	movs	r4, #3	@ tmp142,
	str	r4, [r2, #0]	@ tmp142, I2CWriteLength
	ldr	r2, .L4+8	@ tmp143,
	str	r1, [r2, #0]	@ tmp139, I2CReadLength
	movs	r2, #122	@ tmp146,
	strb	r2, [r3, #0]	@ tmp146, I2CMasterBuffer
	strb	r1, [r3, #1]	@ tmp139, I2CMasterBuffer
	strb	r0, [r3, #2]	@ byte, I2CMasterBuffer
	pop	{r4, lr}	@
	b	i2cEngine	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	ssd1306SendCommand, .-ssd1306SendCommand
	.section	.text.ssd1306SendData,"ax",%progbits
	.align	1
	.global	ssd1306SendData
	.thumb
	.thumb_func
	.ascii	"ssd1306SendData\000"
	.align	2
	.word	4278190096
	.type	ssd1306SendData, %function
ssd1306SendData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r3, #0	@ i,
.L7:
	ldr	r2, .L9	@ tmp136,
	movs	r1, #0	@ tmp137,
	strb	r1, [r2, r3]	@ tmp137, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L7	@,
	ldr	r4, .L9+4	@ tmp139,
	movs	r5, #3	@ tmp140,
	str	r5, [r4, #0]	@ tmp140, I2CWriteLength
	ldr	r4, .L9+8	@ tmp141,
	str	r1, [r4, #0]	@ tmp137, I2CReadLength
	movs	r1, #122	@ tmp144,
	strb	r1, [r2, #0]	@ tmp144, I2CMasterBuffer
	strb	r3, [r2, #1]	@ i, I2CMasterBuffer
	strb	r0, [r2, #2]	@ data, I2CMasterBuffer
	pop	{r4, r5, lr}	@
	b	i2cEngine	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	ssd1306SendData, .-ssd1306SendData
	.section	.text.ssd1306Init,"ax",%progbits
	.align	1
	.global	ssd1306Init
	.thumb
	.thumb_func
	.ascii	"ssd1306Init\000"
	.align	2
	.word	4278190092
	.type	ssd1306Init, %function
ssd1306Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ vccstate, vccstate
	movs	r0, #174	@,
	bl	ssd1306SendCommand	@
	movs	r0, #213	@,
	bl	ssd1306SendCommand	@
	movs	r0, #128	@,
	bl	ssd1306SendCommand	@
	movs	r0, #168	@,
	bl	ssd1306SendCommand	@
	movs	r0, #63	@,
	bl	ssd1306SendCommand	@
	movs	r0, #211	@,
	bl	ssd1306SendCommand	@
	movs	r0, #0	@,
	bl	ssd1306SendCommand	@
	movs	r0, #64	@,
	bl	ssd1306SendCommand	@
	movs	r0, #141	@,
	bl	ssd1306SendCommand	@
	cmp	r4, #1	@ vccstate,
	bne	.L12	@,
	movs	r0, #16	@,
	b	.L18	@
.L12:
	movs	r0, #20	@,
.L18:
	bl	ssd1306SendCommand	@
	movs	r0, #32	@,
	bl	ssd1306SendCommand	@
	movs	r0, #0	@,
	bl	ssd1306SendCommand	@
	movs	r0, #161	@,
	bl	ssd1306SendCommand	@
	movs	r0, #200	@,
	bl	ssd1306SendCommand	@
	movs	r0, #218	@,
	bl	ssd1306SendCommand	@
	movs	r0, #18	@,
	bl	ssd1306SendCommand	@
	movs	r0, #129	@,
	bl	ssd1306SendCommand	@
	cmp	r4, #1	@ vccstate,
	bne	.L14	@,
	movs	r0, #159	@,
	b	.L19	@
.L14:
	movs	r0, #207	@,
.L19:
	bl	ssd1306SendCommand	@
	movs	r0, #217	@,
	bl	ssd1306SendCommand	@
	cmp	r4, #1	@ vccstate,
	bne	.L16	@,
	movs	r0, #34	@,
	b	.L20	@
.L16:
	movs	r0, #241	@,
.L20:
	bl	ssd1306SendCommand	@
	movs	r0, #219	@,
	bl	ssd1306SendCommand	@
	movs	r0, #64	@,
	bl	ssd1306SendCommand	@
	movs	r0, #164	@,
	bl	ssd1306SendCommand	@
	movs	r0, #166	@,
	bl	ssd1306SendCommand	@
	movs	r0, #175	@,
	pop	{r4, lr}	@
	b	ssd1306SendCommand	@
	.size	ssd1306Init, .-ssd1306Init
	.section	.text.ssd1306DrawPixel,"ax",%progbits
	.align	1
	.global	ssd1306DrawPixel
	.thumb
	.thumb_func
	.ascii	"ssd1306DrawPixel\000"
	.align	2
	.word	4278190100
	.type	ssd1306DrawPixel, %function
ssd1306DrawPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #24	@, x,
	bmi	.L21	@,
	cmp	r1, #63	@ y,
	bhi	.L21	@,
	lsrs	r2, r1, #3	@ tmp152, y,
	lsls	r3, r2, #7	@ tmp153, tmp152,
	and	r1, r1, #7	@ tmp156, y,
	movs	r2, #1	@ tmp158,
	lsl	ip, r2, r1	@ tmp157, tmp158, tmp156
	adds	r0, r0, r3	@ D.5024, x, tmp153
	ldr	r3, .L23	@ tmp154,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ tmp160, _ssd1306buffer
	orr	r1, r2, ip	@ tmp162, tmp160, tmp157
	strb	r1, [r3, r0]	@ tmp162, _ssd1306buffer
.L21:
	bx	lr	@
.L24:
	.align	2
.L23:
	.word	_ssd1306buffer
	.size	ssd1306DrawPixel, .-ssd1306DrawPixel
	.section	.text.ssd1306DrawChar,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ssd1306DrawChar\000"
	.align	2
	.word	4278190096
	.type	ssd1306DrawChar, %function
ssd1306DrawChar:
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	uxtb	r5, r3	@ font$u8Width,
	sub	sp, sp, #8	@,,
	add	r9, r5, #14	@ tmp288, font$u8Width,
	add	r7, sp, #0	@,,
	str	r3, [r7, #44]	@, font
	and	r3, r9, #504	@ tmp290, tmp288,
	mov	sl, sp	@ saved_stack.2,
	cmp	r0, #128	@ x,
	sub	sp, sp, r3	@,, tmp290
	mov	ip, r0	@ x, x
	mov	r4, r1	@ y, y
	mov	r9, sp	@ column.1,
	bhi	.L26	@,
	cmp	r1, #64	@ y,
	bhi	.L26	@,
	ldrb	r0, [r7, #46]	@ zero_extendqisi2	@ font.u8FirstChar, font.u8FirstChar
	cmp	r0, r2	@ font.u8FirstChar, c
	bhi	.L38	@,
	ldrb	r1, [r7, #47]	@ zero_extendqisi2	@ font.u8LastChar, font.u8LastChar
	cmp	r1, r2	@ font.u8LastChar, c
	bcc	.L38	@,
	subs	r2, r2, #32	@ tmp297, c,
	ldr	r1, [r7, #48]	@ D.4946, font.au8FontTable
	muls	r2, r5, r2	@ D.4951, font$u8Width
	movs	r3, #0	@ ivtmp.43,
	b	.L28	@
.L29:
	adds	r0, r1, r2	@ tmp298, D.4946, D.4951
	ldrb	r6, [r0, r3]	@ zero_extendqisi2	@ MEM[base: D.5125_87, index: ivtmp.43_59, offset: 0B], MEM[base: D.5125_87, index: ivtmp.43_59, offset: 0B]
	strb	r6, [r9, r3]	@ MEM[base: D.5125_87, index: ivtmp.43_59, offset: 0B], MEM[base: column.1_16, index: ivtmp.43_59, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.43, ivtmp.43,
.L28:
	uxtb	r6, r3	@ ivtmp.43, ivtmp.43
	cmp	r6, r5	@ ivtmp.43, font$u8Width
	bcc	.L29	@,
.L32:
	movs	r6, #0	@ xoffset,
	b	.L30	@
.L31:
	movs	r1, #255	@ tmp302,
	adds	r2, r3, #1	@ tmp304, col,
	strb	r1, [r9, r3]	@ tmp302, *column.1_16
	uxtb	r3, r2	@ col, tmp304
	b	.L40	@
.L38:
	movs	r3, #0	@ col,
.L40:
	cmp	r3, r5	@ col, font$u8Width
	bne	.L31	@,
	b	.L32	@
.L34:
	ldrb	r2, [r9, r6]	@ zero_extendqisi2	@ tmp305, *column.1_16
	mvn	r1, r8	@ tmp306, yoffset
	adds	r1, r1, #8	@ tmp307, tmp306,
	lsl	r0, r2, r1	@ tmp308, tmp305, tmp307
	uxtb	r3, r0	@ bit, tmp308
	lsrs	r3, r3, #7	@, bit,
	beq	.L33	@,
	add	lr, r6, ip	@ tmp314, xoffset, x
	add	r3, r8, r4	@ tmp318, yoffset, y
	uxtb	r0, lr	@, tmp314
	uxtb	r1, r3	@, tmp318
	str	ip, [r7, #4]	@,
	bl	ssd1306DrawPixel	@
	ldr	ip, [r7, #4]	@,
.L33:
	add	r0, r8, #1	@ tmp320, yoffset,
	uxth	r8, r0	@ yoffset, tmp320
	b	.L35	@
.L39:
	mov	r8, #0	@ yoffset,
.L35:
	ldrb	r1, [r7, #45]	@ zero_extendqisi2	@ font.u8Height, font.u8Height
	cmp	r1, r8	@ font.u8Height, yoffset
	bge	.L34	@,
	adds	r6, r6, #1	@ tmp322, xoffset,
	uxth	r6, r6	@ xoffset, tmp322
.L30:
	cmp	r6, r5	@ xoffset, font$u8Width
	bcc	.L39	@,
.L26:
	mov	sp, sl	@, saved_stack.2
	add	r7, r7, #8	@,,
	mov	sp, r7
	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	ssd1306DrawChar, .-ssd1306DrawChar
	.section	.text.ssd1306ClearPixel,"ax",%progbits
	.align	1
	.global	ssd1306ClearPixel
	.thumb
	.thumb_func
	.ascii	"ssd1306ClearPixel\000"
	.align	2
	.word	4278190100
	.type	ssd1306ClearPixel, %function
ssd1306ClearPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #24	@, x,
	bmi	.L41	@,
	cmp	r1, #63	@ y,
	bhi	.L41	@,
	lsrs	r2, r1, #3	@ tmp153, y,
	lsls	r3, r2, #7	@ tmp154, tmp153,
	and	r1, r1, #7	@ tmp157, y,
	movs	r2, #1	@ tmp159,
	lsl	ip, r2, r1	@ tmp158, tmp159, tmp157
	adds	r0, r0, r3	@ D.5005, x, tmp154
	ldr	r3, .L43	@ tmp155,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ tmp163, _ssd1306buffer
	bic	r1, r2, ip	@ tmp165, tmp163, tmp158
	strb	r1, [r3, r0]	@ tmp165, _ssd1306buffer
.L41:
	bx	lr	@
.L44:
	.align	2
.L43:
	.word	_ssd1306buffer
	.size	ssd1306ClearPixel, .-ssd1306ClearPixel
	.section	.text.ssd1306GetPixel,"ax",%progbits
	.align	1
	.global	ssd1306GetPixel
	.thumb
	.thumb_func
	.ascii	"ssd1306GetPixel\000"
	.align	2
	.word	4278190096
	.type	ssd1306GetPixel, %function
ssd1306GetPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #24	@, x,
	bmi	.L47	@,
	cmp	r1, #63	@ y,
	bhi	.L48	@,
	lsrs	r3, r1, #3	@ tmp153, y,
	lsls	r2, r3, #7	@ tmp154, tmp153,
	ldr	r3, .L49	@ tmp151,
	add	ip, r2, r0	@ tmp155, tmp154, x
	ldrb	r2, [r3, ip]	@ zero_extendqisi2	@ tmp157, _ssd1306buffer
	and	r1, r1, #7	@ tmp158, y,
	asr	r0, r2, r1	@ tmp159, tmp157, tmp158
	and	r0, r0, #1	@ D.4984, tmp159,
	bx	lr	@
.L47:
	movs	r0, #0	@ D.4984,
	bx	lr	@
.L48:
	movs	r0, #0	@ D.4984,
	bx	lr	@
.L50:
	.align	2
.L49:
	.word	_ssd1306buffer
	.size	ssd1306GetPixel, .-ssd1306GetPixel
	.section	.text.ssd1306ClearScreen,"ax",%progbits
	.align	1
	.global	ssd1306ClearScreen
	.thumb
	.thumb_func
	.ascii	"ssd1306ClearScreen\000"
	.align	2
	.word	4278190100
	.type	ssd1306ClearScreen, %function
ssd1306ClearScreen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L52	@,
	movs	r1, #0	@,
	mov	r2, #1024	@,
	b	memset	@
.L53:
	.align	2
.L52:
	.word	_ssd1306buffer
	.size	ssd1306ClearScreen, .-ssd1306ClearScreen
	.section	.text.ssd1306Refresh,"ax",%progbits
	.align	1
	.global	ssd1306Refresh
	.thumb
	.thumb_func
	.ascii	"ssd1306Refresh\000"
	.align	2
	.word	4278190096
	.type	ssd1306Refresh, %function
ssd1306Refresh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r0, #0	@,
	bl	ssd1306SendCommand	@
	movs	r0, #16	@,
	bl	ssd1306SendCommand	@
	movs	r0, #64	@,
	bl	ssd1306SendCommand	@
	movs	r4, #0	@ ivtmp.80,
.L55:
	ldr	r3, .L57	@ tmp181,
	ldrb	r0, [r3, r4]	@ zero_extendqisi2	@, MEM[symbol: _ssd1306buffer, index: ivtmp.80_6, offset: 0B]
	adds	r4, r4, #1	@ ivtmp.80, ivtmp.80,
	bl	ssd1306SendData	@
	cmp	r4, #1024	@ ivtmp.80,
	bne	.L55	@,
	pop	{r4, pc}	@
.L58:
	.align	2
.L57:
	.word	_ssd1306buffer
	.size	ssd1306Refresh, .-ssd1306Refresh
	.section	.text.ssd1306DrawString,"ax",%progbits
	.align	1
	.global	ssd1306DrawString
	.thumb
	.thumb_func
	.ascii	"ssd1306DrawString\000"
	.align	2
	.word	4278190100
	.type	ssd1306DrawString, %function
ssd1306DrawString:
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8	@,,
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r6, r0	@ x, x
	mov	r7, r1	@ y, y
	mov	r5, r2	@ text, text
	str	r3, [sp, #36]	@, font
	movs	r4, #0	@ l,
	b	.L60	@
.L61:
	ldrb	r2, [sp, #36]	@ zero_extendqisi2	@ font.u8Width, font.u8Width
	ldr	r3, [sp, #40]	@ font, font
	adds	r1, r2, #1	@ tmp150, font.u8Width,
	mla	r0, r1, r4, r6	@ tmp154, tmp150, l, x
	ldrb	r2, [r5, r4]	@ zero_extendqisi2	@ *D.4925_15, *D.4925_15
	str	r3, [sp, #0]	@ font,
	uxth	r0, r0	@, tmp154
	ldr	r3, [sp, #36]	@, font
	mov	r1, r7	@, y
	bl	ssd1306DrawChar	@
	adds	r4, r4, #1	@ tmp158, l,
	uxtb	r4, r4	@ l, tmp158
.L60:
	mov	r0, r5	@, text
	bl	strlen	@
	cmp	r4, r0	@ l,
	bcc	.L61	@,
	pop	{r1, r2, r3, r4, r5, r6, r7, lr}
	add	sp, sp, #8	@,,
	bx	lr
	.size	ssd1306DrawString, .-ssd1306DrawString
	.section	.text.ssd1306ShiftFrameBuffer,"ax",%progbits
	.align	1
	.global	ssd1306ShiftFrameBuffer
	.thumb
	.thumb_func
	.ascii	"ssd1306ShiftFrameBuffer\000"
	.align	2
	.word	4278190104
	.type	ssd1306ShiftFrameBuffer, %function
ssd1306ShiftFrameBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r6, r0	@ height, height
	cmp	r0, #0	@ height
	beq	.L62	@
	cmp	r0, #63	@ height,
	bls	.L69	@,
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	ssd1306ClearScreen	@
.L68:
	cmp	r7, r6	@ ivtmp.119, height
	ble	.L65	@,
	adds	r1, r4, r6	@ tmp172, y, height
	mov	r0, r5	@, x
	uxtb	r1, r1	@, tmp172
	bl	ssd1306GetPixel	@
	cbz	r0, .L65	@,
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	bl	ssd1306DrawPixel	@
	b	.L67	@
.L65:
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	bl	ssd1306ClearPixel	@
.L67:
	adds	r5, r5, #1	@ tmp175, x,
	uxtb	r5, r5	@ x, tmp175
	cmp	r5, #128	@ x,
	bne	.L68	@,
	adds	r4, r4, #1	@ tmp176, y,
	uxtb	r4, r4	@ y, tmp176
	subs	r7, r7, #1	@ ivtmp.119, ivtmp.119,
	cmp	r4, #64	@ y,
	bne	.L64	@,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L69:
	movs	r7, #63	@ ivtmp.119,
	movs	r4, #0	@ y,
.L64:
	movs	r5, #0	@ x,
	b	.L68	@
.L62:
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	ssd1306ShiftFrameBuffer, .-ssd1306ShiftFrameBuffer
	.comm	_ssd1306buffer,1024,1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
