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
	.file	"mcp24aa.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed mcp24aa.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip mcp24aa.o -Os -Wall
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

	.section	.text.mcp24aaInit,"ax",%progbits
	.align	1
	.global	mcp24aaInit
	.thumb
	.thumb_func
	.ascii	"mcp24aaInit\000"
	.align	2
	.word	4278190092
	.type	mcp24aaInit, %function
mcp24aaInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r3, #1	@ D.4652,
	cbz	r0, .L3	@,
	ldr	r2, .L4	@ tmp137,
	movs	r0, #0	@ D.4652,
	strb	r3, [r2, #0]	@ D.4652, _mcp24aaInitialised
	pop	{r3, pc}	@
.L3:
	mov	r0, r3	@ D.4652, D.4652
	pop	{r3, pc}	@
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.size	mcp24aaInit, .-mcp24aaInit
	.section	.text.mcp24aaReadBuffer,"ax",%progbits
	.align	1
	.global	mcp24aaReadBuffer
	.thumb
	.thumb_func
	.ascii	"mcp24aaReadBuffer\000"
	.align	2
	.word	4278190100
	.type	mcp24aaReadBuffer, %function
mcp24aaReadBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L15	@ tmp172,
	mov	r5, r1	@ buffer, buffer
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp24aaInitialised, _mcp24aaInitialised
	mov	r7, r2	@ bufferLength, bufferLength
	cbnz	r3, .L7	@ _mcp24aaInitialised,
	bl	mcp24aaInit	@
.L7:
	movw	r1, #4094	@ tmp174,
	cmp	r4, r1	@ address, tmp174
	bhi	.L12	@,
	cmp	r7, #8	@ bufferLength,
	bhi	.L13	@,
	movs	r2, #0	@ i,
.L9:
	ldr	r0, .L15+4	@ tmp178,
	ldr	r3, .L15+8	@ tmp175,
	movs	r6, #0	@ tmp176,
	strb	r6, [r3, r2]	@ tmp176, I2CMasterBuffer
	strb	r6, [r0, r2]	@ tmp176, I2CSlaveBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	mov	r8, r0	@ tmp201, tmp178
	bne	.L9	@,
	ldr	r0, .L15+12	@ tmp181,
	ldr	r2, .L15+16	@ tmp183,
	movs	r1, #3	@ tmp182,
	str	r1, [r0, #0]	@ tmp182, I2CWriteLength
	str	r7, [r2, #0]	@ bufferLength, I2CReadLength
	movs	r0, #160	@ tmp185,
	lsrs	r1, r4, #8	@ tmp187, address,
	movs	r2, #161	@ tmp194,
	strb	r0, [r3, #0]	@ tmp185, I2CMasterBuffer
	strb	r1, [r3, #1]	@ tmp187, I2CMasterBuffer
	strb	r4, [r3, #2]	@ D.4645, I2CMasterBuffer
	strb	r2, [r3, #3]	@ tmp194, I2CMasterBuffer
	bl	i2cEngine	@
	b	.L10	@
.L11:
	ldrb	ip, [r8, r6]	@ zero_extendqisi2	@ tmp198, I2CSlaveBuffer
	strb	ip, [r5, r6]	@ tmp198, MEM[base: buffer_16(D), index: i_2, offset: 0B]
	adds	r6, r6, #1	@ i, i,
.L10:
	cmp	r6, r7	@ i, bufferLength
	bne	.L11	@,
	movs	r0, #0	@ D.4640,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L12:
	movs	r0, #3	@ D.4640,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L13:
	movs	r0, #4	@ D.4640,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	I2CSlaveBuffer
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	mcp24aaReadBuffer, .-mcp24aaReadBuffer
	.section	.text.mcp24aaWriteBuffer,"ax",%progbits
	.align	1
	.global	mcp24aaWriteBuffer
	.thumb
	.thumb_func
	.ascii	"mcp24aaWriteBuffer\000"
	.align	2
	.word	4278190100
	.type	mcp24aaWriteBuffer, %function
mcp24aaWriteBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L26	@ tmp148,
	mov	r5, r1	@ buffer, buffer
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp24aaInitialised, _mcp24aaInitialised
	mov	r6, r2	@ bufferLength, bufferLength
	cbnz	r3, .L18	@ _mcp24aaInitialised,
	bl	mcp24aaInit	@
.L18:
	movw	r1, #4094	@ tmp150,
	cmp	r4, r1	@ address, tmp150
	bhi	.L23	@,
	cmp	r6, #8	@ bufferLength,
	bhi	.L24	@,
	movs	r1, #0	@ i,
.L20:
	ldr	r2, .L26+4	@ tmp151,
	movs	r3, #0	@ tmp152,
	strb	r3, [r2, r1]	@ tmp152, I2CMasterBuffer
	adds	r1, r1, #1	@ i, i,
	cmp	r1, #64	@ i,
	bne	.L20	@,
	ldr	r1, .L26+8	@ tmp154,
	adds	r0, r6, #3	@ I2CWriteLength.3, bufferLength,
	str	r0, [r1, #0]	@ I2CWriteLength.3, I2CWriteLength
	ldr	r0, .L26+12	@ tmp155,
	movs	r1, #160	@ tmp158,
	str	r3, [r0, #0]	@ tmp152, I2CReadLength
	lsrs	r0, r4, #8	@ tmp160, address,
	strb	r1, [r2, #0]	@ tmp158, I2CMasterBuffer
	strb	r0, [r2, #1]	@ tmp160, I2CMasterBuffer
	strb	r4, [r2, #2]	@ D.4629, I2CMasterBuffer
	b	.L21	@
.L22:
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ D.4632, MEM[base: buffer_18(D), index: i_2, offset: 0B]
	adds	r0, r3, #3	@ D.4695, i,
	strb	ip, [r2, r0]	@ D.4632, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
.L21:
	cmp	r3, r6	@ i, bufferLength
	bne	.L22	@,
	bl	i2cEngine	@
	movs	r0, #10	@,
	bl	systickDelay	@
	movs	r0, #0	@ D.4623,
	pop	{r4, r5, r6, pc}	@
.L23:
	movs	r0, #3	@ D.4623,
	pop	{r4, r5, r6, pc}	@
.L24:
	movs	r0, #4	@ D.4623,
	pop	{r4, r5, r6, pc}	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	mcp24aaWriteBuffer, .-mcp24aaWriteBuffer
	.section	.text.mcp24aaReadByte,"ax",%progbits
	.align	1
	.global	mcp24aaReadByte
	.thumb
	.thumb_func
	.ascii	"mcp24aaReadByte\000"
	.align	2
	.word	4278190096
	.type	mcp24aaReadByte, %function
mcp24aaReadByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L30	@ tmp139,
	mov	r5, r1	@ buffer, buffer
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp24aaInitialised, _mcp24aaInitialised
	cbnz	r3, .L29	@ _mcp24aaInitialised,
	bl	mcp24aaInit	@
.L29:
	mov	r0, r4	@, address
	mov	r1, r5	@, buffer
	movs	r2, #1	@,
	pop	{r3, r4, r5, lr}	@
	b	mcp24aaReadBuffer	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.size	mcp24aaReadByte, .-mcp24aaReadByte
	.section	.text.mcp24aaWriteByte,"ax",%progbits
	.align	1
	.global	mcp24aaWriteByte
	.thumb
	.thumb_func
	.ascii	"mcp24aaWriteByte\000"
	.align	2
	.word	4278190100
	.type	mcp24aaWriteByte, %function
mcp24aaWriteByte:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L34	@ tmp139,
	mov	r5, r1	@ value, value
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _mcp24aaInitialised, _mcp24aaInitialised
	cbnz	r3, .L33	@ _mcp24aaInitialised,
	bl	mcp24aaInit	@
.L33:
	add	r1, sp, #8	@ tmp142,,
	strb	r5, [r1, #-4]!	@ value, wBuffer
	mov	r0, r4	@, address
	movs	r2, #1	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, r4, r5, pc}
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
	.size	mcp24aaWriteByte, .-mcp24aaWriteByte
	.section	.bss._mcp24aaInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_mcp24aaInitialised, %object
	.size	_mcp24aaInitialised, 1
_mcp24aaInitialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
