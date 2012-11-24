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
	.file	"touchscreen.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed touchscreen.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip touchscreen.o -Os -Wall
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

	.section	.text.tsCalibCenterText,"ax",%progbits
	.align	1
	.global	tsCalibCenterText
	.thumb
	.thumb_func
	.ascii	"tsCalibCenterText\000"
	.align	2
	.word	4278190100
	.type	tsCalibCenterText, %function
tsCalibCenterText:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}	@
	sub	sp, sp, #44	@,,
	mov	r5, r1	@ y, y
	mov	r4, r2	@ color, color
	mov	r8, r0	@ text, text
	bl	lcdGetWidth	@
	add	r9, sp, #24	@ tmp140,,
	mov	r6, sp	@ tmp143,
	mov	r7, r0	@ tmp139,
	mov	r0, r9	@, tmp140
	bl	themeGetDefault	@
	str	r8, [r6], #4	@ text,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp140,,,,
	stmia	r6!, {r0, r1, r2}	@ tmp143,,,
	lsrs	r7, r7, #1	@ tmp141, tmp139,
	strh	r3, [r6, #0]	@ movhi	@,
	uxth	r0, r7	@, tmp141
	mov	r1, r5	@, y
	movw	r2, #65535	@,
	mov	r3, r4	@, color
	bl	labelcenteredRender	@
	add	sp, sp, #44	@,,
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	tsCalibCenterText, .-tsCalibCenterText
	.section	.text.setCalibrationMatrix,"ax",%progbits
	.align	1
	.global	setCalibrationMatrix
	.thumb
	.thumb_func
	.ascii	"setCalibrationMatrix\000"
	.align	2
	.word	4278190104
	.type	setCalibrationMatrix, %function
setCalibrationMatrix:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldr	r3, [r1, #16]	@ D.5179, MEM[(struct tsPoint_t *)screenPtr_3(D) + 16B].x
	ldr	r5, [r1, #0]	@ D.5177, screenPtr_3(D)->x
	sub	sp, sp, #24	@,,
	subs	r6, r5, r3	@, D.5177, D.5179
	mov	r4, r2	@ matrixPtr, matrixPtr
	str	r6, [sp, #4]	@, %sfp
	ldr	r2, [r1, #12]	@, MEM[(struct tsPoint_t *)screenPtr_3(D) + 8B].y
	ldr	r6, [r1, #20]	@ D.5183, MEM[(struct tsPoint_t *)screenPtr_3(D) + 16B].y
	str	r2, [sp, #8]	@, %sfp
	rsb	ip, r6, r2	@ D.5184, D.5183,
	ldr	r2, [r1, #8]	@ D.5186, MEM[(struct tsPoint_t *)screenPtr_3(D) + 8B].x
	ldr	r1, [r1, #4]	@, screenPtr_3(D)->y
	subs	r7, r2, r3	@ tmp210, D.5186, D.5179
	str	r1, [sp, #12]	@, %sfp
	subs	r1, r6, r1	@ D.5189, D.5183,
	mul	r8, r1, r7	@ tmp211, D.5189, tmp210
	ldr	r7, [sp, #4]	@, %sfp
	mla	r8, ip, r7, r8	@ D.5191, D.5184,, tmp211
	str	r8, [r4, #24]	@ D.5191, matrixPtr_25(D)->Divider
	cmp	r8, #0	@ D.5191
	beq	.L4	@
	ldr	lr, [r0, #16]	@ D.5198, MEM[(struct tsPoint_t *)displayPtr_28(D) + 16B].x
	ldr	r7, [r0, #0]	@, displayPtr_28(D)->x
	rsb	r9, lr, r7	@ D.5199, D.5198,
	ldr	r7, [r0, #8]	@, MEM[(struct tsPoint_t *)displayPtr_28(D) + 8B].x
	rsb	r8, lr, r7	@ D.5203, D.5198,
	mul	r7, r1, r8	@ tmp213, D.5189, D.5203
	mla	r7, ip, r9, r7	@, D.5184, D.5199, tmp213
	str	r7, [sp, #16]	@, %sfp
	str	r7, [r4, #0]	@, matrixPtr_25(D)->An
	subs	r7, r3, r2	@, D.5179, D.5186
	mul	sl, r7, r9	@ tmp215,, D.5199
	str	r7, [sp, #20]	@, %sfp
	ldr	r7, [sp, #4]	@, %sfp
	mla	r9, r8, r7, sl	@ tmp216, D.5203,, tmp215
	ldr	r7, [r0, #8]	@, MEM[(struct tsPoint_t *)displayPtr_28(D) + 8B].x
	str	r9, [r4, #4]	@ tmp216, matrixPtr_25(D)->Bn
	muls	r7, r3, r7	@ tmp217, D.5179
	mls	r9, lr, r2, r7	@ tmp219, D.5198, D.5186, tmp217
	mul	lr, lr, r5	@ tmp221, D.5198, D.5177
	ldr	r7, [r0, #0]	@, displayPtr_28(D)->x
	mls	r8, r7, r3, lr	@ tmp223,, D.5179, tmp221
	ldr	r7, [sp, #8]	@, %sfp
	mul	sl, r7, r8	@ tmp224,, tmp223
	ldr	r7, [sp, #12]	@, %sfp
	mla	r8, r7, r9, sl	@ tmp225,, tmp219, tmp224
	ldr	r7, [r0, #0]	@, displayPtr_28(D)->x
	mul	lr, r7, r2	@ tmp226,, D.5186
	ldr	r7, [r0, #8]	@, MEM[(struct tsPoint_t *)displayPtr_28(D) + 8B].x
	mls	r7, r7, r5, lr	@ tmp228,, D.5177, tmp226
	mla	sl, r6, r7, r8	@ tmp230, D.5183, tmp228, tmp225
	ldr	lr, [r0, #20]	@ D.5225, MEM[(struct tsPoint_t *)displayPtr_28(D) + 16B].y
	ldr	r8, [r0, #4]	@ D.5224, displayPtr_28(D)->y
	ldr	r0, [r0, #12]	@ D.5228, MEM[(struct tsPoint_t *)displayPtr_28(D) + 8B].y
	str	sl, [r4, #8]	@ tmp230, matrixPtr_25(D)->Cn
	rsb	sl, lr, r0	@ D.5229, D.5225, D.5228
	mul	r9, r1, sl	@ tmp232, D.5189, D.5229
	rsb	r7, lr, r8	@ D.5226, D.5225, D.5224
	mla	r1, ip, r7, r9	@ tmp233, D.5184, D.5226, tmp232
	str	r1, [r4, #12]	@ tmp233, matrixPtr_25(D)->Dn
	ldr	r1, [sp, #20]	@, %sfp
	mul	r9, r1, r7	@ tmp235,, D.5226
	ldr	r7, [sp, #4]	@, %sfp
	mla	r1, sl, r7, r9	@ tmp236, D.5229,, tmp235
	str	r1, [r4, #16]	@ tmp236, matrixPtr_25(D)->En
	mul	r1, lr, r5	@ tmp241, D.5225, D.5177
	mul	r7, r0, r3	@ tmp237, D.5228, D.5179
	mls	r3, r8, r3, r1	@ tmp243, D.5224, D.5179, tmp241
	mls	ip, lr, r2, r7	@ tmp239, D.5225, D.5186, tmp237
	ldr	r7, [sp, #8]	@, %sfp
	mul	r1, r8, r2	@ tmp246, D.5224, D.5186
	muls	r3, r7, r3	@ tmp244,
	ldr	r7, [sp, #12]	@, %sfp
	mls	r5, r0, r5, r1	@ tmp248, D.5228, D.5177, tmp246
	mla	r3, r7, ip, r3	@ tmp245,, tmp239, tmp244
	mla	r6, r6, r5, r3	@ tmp250, D.5183, tmp248, tmp245
	movs	r0, #49	@,
	ldr	r1, [sp, #16]	@, %sfp
	str	r6, [r4, #20]	@ tmp250, matrixPtr_25(D)->Fn
	bl	eepromWriteS32	@
	movs	r0, #53	@,
	ldr	r1, [r4, #4]	@, matrixPtr_25(D)->Bn
	bl	eepromWriteS32	@
	movs	r0, #57	@,
	ldr	r1, [r4, #8]	@, matrixPtr_25(D)->Cn
	bl	eepromWriteS32	@
	movs	r0, #61	@,
	ldr	r1, [r4, #12]	@, matrixPtr_25(D)->Dn
	bl	eepromWriteS32	@
	movs	r0, #65	@,
	ldr	r1, [r4, #16]	@, matrixPtr_25(D)->En
	bl	eepromWriteS32	@
	movs	r0, #69	@,
	ldr	r1, [r4, #20]	@, matrixPtr_25(D)->Fn
	bl	eepromWriteS32	@
	movs	r0, #73	@,
	ldr	r1, [r4, #24]	@, matrixPtr_25(D)->Divider
	bl	eepromWriteS32	@
	movs	r0, #48	@,
	movs	r1, #1	@,
	bl	eepromWriteU8	@
	movs	r0, #0	@ retValue,
	b	.L3	@
.L4:
	mov	r0, #-1	@ retValue,
.L3:
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
	.size	setCalibrationMatrix, .-setCalibrationMatrix
	.section	.text.getDisplayPoint,"ax",%progbits
	.align	1
	.global	getDisplayPoint
	.thumb
	.thumb_func
	.ascii	"getDisplayPoint\000"
	.align	2
	.word	4278190096
	.type	getDisplayPoint, %function
getDisplayPoint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r3, [r2, #24]	@ D.5144, matrixPtr_3(D)->Divider
	mov	r4, r0	@ displayPtr, displayPtr
	cbz	r3, .L7	@ D.5144,
	ldr	r0, [r1, #4]	@ D.5151, screenPtr_6(D)->y
	ldr	r6, [r2, #4]	@ matrixPtr_3(D)->Bn, matrixPtr_3(D)->Bn
	ldr	r7, [r2, #0]	@ matrixPtr_3(D)->An, matrixPtr_3(D)->An
	muls	r6, r0, r6	@ tmp170, D.5151
	ldr	r5, [r1, #0]	@ screenPtr_6(D)->x, screenPtr_6(D)->x
	mla	ip, r5, r7, r6	@ tmp172, screenPtr_6(D)->x, matrixPtr_3(D)->An, tmp170
	ldr	r5, [r2, #8]	@ matrixPtr_3(D)->Cn, matrixPtr_3(D)->Cn
	add	r6, ip, r5	@ tmp173, tmp172, matrixPtr_3(D)->Cn
	sdiv	r5, r6, r3	@ tmp175, tmp173, D.5144
	str	r5, [r4, #0]	@ tmp175, displayPtr_17(D)->x
	ldr	r6, [r1, #0]	@ screenPtr_6(D)->x, screenPtr_6(D)->x
	ldr	r1, [r2, #16]	@ matrixPtr_3(D)->En, matrixPtr_3(D)->En
	ldr	r5, [r2, #12]	@ matrixPtr_3(D)->Dn, matrixPtr_3(D)->Dn
	muls	r1, r0, r1	@ tmp179, D.5151
	mla	r1, r6, r5, r1	@ tmp181, screenPtr_6(D)->x, matrixPtr_3(D)->Dn, tmp179
	ldr	r2, [r2, #20]	@ matrixPtr_3(D)->Fn, matrixPtr_3(D)->Fn
	adds	r0, r1, r2	@ tmp182, tmp181, matrixPtr_3(D)->Fn
	sdiv	r3, r0, r3	@ tmp184, tmp182, D.5144
	str	r3, [r4, #4]	@ tmp184, displayPtr_17(D)->y
	bl	lcdGetOrientation	@
	cmp	r0, #1	@,
	bne	.L8	@,
	ldr	r2, [r4, #4]	@ displayPtr_17(D)->y, displayPtr_17(D)->y
	ldr	r5, [r4, #0]	@ oldx, displayPtr_17(D)->x
	str	r2, [r4, #0]	@ displayPtr_17(D)->y, displayPtr_17(D)->x
	bl	lcdGetHeight	@
	subs	r3, r0, r5	@ tmp188,, oldx
	str	r3, [r4, #4]	@ tmp188, displayPtr_17(D)->y
	movs	r0, #0	@ retValue,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L7:
	mov	r0, #-1	@ retValue,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L8:
	movs	r0, #0	@ retValue,
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	getDisplayPoint, .-getDisplayPoint
	.section	.text.tsSetThreshhold,"ax",%progbits
	.align	1
	.global	tsSetThreshhold
	.thumb
	.thumb_func
	.ascii	"tsSetThreshhold\000"
	.align	2
	.word	4278190096
	.type	tsSetThreshhold, %function
tsSetThreshhold:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #255	@ value,
	push	{r3, lr}	@
	mov	r1, r0	@ value, value
	beq	.L11	@,
	ldr	r3, .L12	@ tmp137,
	strb	r0, [r3, #0]	@ value, _tsThreshhold
	movs	r0, #77	@,
	bl	eepromWriteU8	@
	movs	r0, #0	@ D.5024,
	pop	{r3, pc}	@
.L11:
	mov	r0, #-1	@ D.5024,
	pop	{r3, pc}	@
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	tsSetThreshhold, .-tsSetThreshhold
	.section	.text.tsGetThreshhold,"ax",%progbits
	.align	1
	.global	tsGetThreshhold
	.thumb
	.thumb_func
	.ascii	"tsGetThreshhold\000"
	.align	2
	.word	4278190096
	.type	tsGetThreshhold, %function
tsGetThreshhold:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #77	@,
	bl	eepromReadU8	@
	ldr	r3, .L16	@ tmp137,
	cmp	r0, #255	@,
	it	eq	@
	moveq	r0, #50	@, thold,
	strb	r0, [r3, #0]	@ thold, _tsThreshhold
	pop	{r3, pc}	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	tsGetThreshhold, .-tsGetThreshhold
	.section	.text.tsInit,"ax",%progbits
	.align	1
	.global	tsInit
	.thumb
	.thumb_func
	.ascii	"tsInit\000"
	.align	2
	.word	4278190088
	.type	tsInit, %function
tsInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	bl	adcInit	@
	ldr	r0, .L20	@ tmp143,
	movs	r2, #1	@ tmp144,
	strb	r2, [r0, #0]	@ tmp144, _tsInitialised
	bl	tsGetThreshhold	@
	ldr	r3, .L20+4	@ tmp147,
	strb	r0, [r3, #0]	@, _tsThreshhold
	movs	r0, #48	@,
	bl	eepromReadU8	@
	cmp	r0, #1	@,
	bne	.L18	@,
	movs	r0, #49	@,
	bl	eepromReadS32	@
	ldr	r4, .L20+8	@ tmp150,
	str	r0, [r4, #0]	@, _tsMatrix.An
	movs	r0, #53	@,
	bl	eepromReadS32	@
	str	r0, [r4, #4]	@, _tsMatrix.Bn
	movs	r0, #57	@,
	bl	eepromReadS32	@
	str	r0, [r4, #8]	@, _tsMatrix.Cn
	movs	r0, #61	@,
	bl	eepromReadS32	@
	str	r0, [r4, #12]	@, _tsMatrix.Dn
	movs	r0, #65	@,
	bl	eepromReadS32	@
	str	r0, [r4, #16]	@, _tsMatrix.En
	movs	r0, #69	@,
	bl	eepromReadS32	@
	str	r0, [r4, #20]	@, _tsMatrix.Fn
	movs	r0, #73	@,
	bl	eepromReadS32	@
	str	r0, [r4, #24]	@, _tsMatrix.Divider
.L18:
	pop	{r4, pc}	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	_tsMatrix
	.size	tsInit, .-tsInit
	.section	.text.tsReadY,"ax",%progbits
	.align	1
	.global	tsReadY
	.thumb
	.thumb_func
	.ascii	"tsReadY\000"
	.align	2
	.word	4278190088
	.type	tsReadY, %function
tsReadY:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L24	@ tmp153,
	push	{r3, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsInitialised, _tsInitialised
	cbnz	r3, .L23	@ _tsInitialised,
	bl	tsInit	@
.L23:
	ldr	r3, .L24+4	@ tmp155,
	ldr	r2, [r3, #0]	@ D.5274, MEM[(volatile long unsigned int *)1074020468B]
	bic	r0, r2, #135	@ D.5275, D.5274,
	str	r0, [r3, #0]	@ D.5275, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r1, [r3, #0]	@ D.5276, MEM[(volatile long unsigned int *)1074020468B]
	orr	r2, r1, #1	@ D.5277, D.5276,
	str	r2, [r3, #0]	@ D.5277, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r0, [r3, #12]	@ D.5279, MEM[(volatile long unsigned int *)1074020480B]
	bic	r1, r0, #135	@ D.5280, D.5279,
	str	r1, [r3, #12]	@ D.5280, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r2, [r3, #12]	@ D.5281, MEM[(volatile long unsigned int *)1074020480B]
	orr	r0, r2, #1	@ D.5282, D.5281,
	str	r0, [r3, #12]	@ D.5282, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r1, [r3, #4]	@ D.5284, MEM[(volatile long unsigned int *)1074020472B]
	bic	r2, r1, #135	@ D.5285, D.5284,
	str	r2, [r3, #4]	@ D.5285, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r0, [r3, #4]	@ D.5286, MEM[(volatile long unsigned int *)1074020472B]
	movs	r2, #1	@,
	orr	r1, r0, #1	@ D.5287, D.5286,
	str	r1, [r3, #4]	@ D.5287, MEM[(volatile long unsigned int *)1074020472B]
	movs	r0, #0	@,
	movs	r1, #11	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #2	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r1, #0	@,
	movs	r0, #1	@,
	mov	r2, r1	@,
	bl	gpioSetDir	@
	ldr	r2, .L24+8	@ tmp167,
	ldr	r3, .L24+12	@ tmp169,
	movs	r1, #0	@ tmp170,
	movw	r0, #4095	@ tmp168,
	str	r0, [r2, #0]	@ tmp168, MEM[(volatile long unsigned int *)1342185472B]
	str	r1, [r3, #0]	@ tmp170, MEM[(volatile long unsigned int *)1342242832B]
	ldr	r1, .L24+16	@ tmp171,
	ldr	r2, [r1, #0]	@ D.5289, MEM[(volatile long unsigned int *)1074020476B]
	bic	r0, r2, #135	@ D.5290, D.5289,
	str	r0, [r1, #0]	@ D.5290, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r3, [r1, #0]	@ D.5291, MEM[(volatile long unsigned int *)1074020476B]
	movs	r0, #2	@,
	orr	r2, r3, #2	@ D.5292, D.5291,
	str	r2, [r1, #0]	@ D.5292, MEM[(volatile long unsigned int *)1074020476B]
	pop	{r3, lr}	@
	b	adcRead	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR1
	.word	1074020468
	.word	1342185472
	.word	1342242832
	.word	1074020476
	.size	tsReadY, .-tsReadY
	.section	.text.tsReadX,"ax",%progbits
	.align	1
	.global	tsReadX
	.thumb
	.thumb_func
	.ascii	"tsReadX\000"
	.align	2
	.word	4278190088
	.type	tsReadX, %function
tsReadX:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L28	@ tmp153,
	push	{r3, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsInitialised, _tsInitialised
	cbnz	r3, .L27	@ _tsInitialised,
	bl	tsInit	@
.L27:
	ldr	r3, .L28+4	@ tmp155,
	ldr	r0, [r3, #0]	@ D.5312, MEM[(volatile long unsigned int *)1074020472B]
	bic	r1, r0, #135	@ D.5313, D.5312,
	str	r1, [r3, #0]	@ D.5313, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r2, [r3, #0]	@ D.5314, MEM[(volatile long unsigned int *)1074020472B]
	orr	r0, r2, #1	@ D.5315, D.5314,
	str	r0, [r3, #0]	@ D.5315, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r1, [r3, #4]	@ D.5317, MEM[(volatile long unsigned int *)1074020476B]
	bic	r2, r1, #135	@ D.5318, D.5317,
	str	r2, [r3, #4]	@ D.5318, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r0, [r3, #4]	@ D.5319, MEM[(volatile long unsigned int *)1074020476B]
	orr	r1, r0, #1	@ D.5320, D.5319,
	str	r1, [r3, #4]	@ D.5320, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r2, [r3, #8]	@ D.5322, MEM[(volatile long unsigned int *)1074020480B]
	bic	r0, r2, #135	@ D.5323, D.5322,
	str	r0, [r3, #8]	@ D.5323, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r1, [r3, #8]	@ D.5324, MEM[(volatile long unsigned int *)1074020480B]
	movs	r0, #1	@,
	orr	r2, r1, #1	@ D.5325, D.5324,
	str	r2, [r3, #8]	@ D.5325, MEM[(volatile long unsigned int *)1074020480B]
	movs	r1, #0	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #2	@,
	movs	r2, #0	@,
	bl	gpioSetDir	@
	ldr	r1, .L28+8	@ tmp167,
	movw	r0, #4095	@ tmp168,
	str	r0, [r1, #0]	@ tmp168, MEM[(volatile long unsigned int *)1342242820B]
	movs	r0, #0	@ tmp170,
	str	r0, [r1, #4]	@ tmp170, MEM[(volatile long unsigned int *)1342242824B]
	ldr	r1, .L28+12	@ tmp171,
	ldr	r3, [r1, #0]	@ D.5327, MEM[(volatile long unsigned int *)1074020468B]
	bic	r2, r3, #135	@ D.5328, D.5327,
	str	r2, [r1, #0]	@ D.5328, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r3, [r1, #0]	@ D.5329, MEM[(volatile long unsigned int *)1074020468B]
	orr	r2, r3, #2	@ D.5330, D.5329,
	str	r2, [r1, #0]	@ D.5330, MEM[(volatile long unsigned int *)1074020468B]
	pop	{r3, lr}	@
	b	adcRead	@
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.word	1074020472
	.word	1342242820
	.word	1074020468
	.size	tsReadX, .-tsReadX
	.section	.text.tsReadZ,"ax",%progbits
	.align	1
	.global	tsReadZ
	.thumb
	.thumb_func
	.ascii	"tsReadZ\000"
	.align	2
	.word	4278190088
	.type	tsReadZ, %function
tsReadZ:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r6, r0	@ z1, z1
	ldr	r0, .L32	@ tmp163,
	mov	r5, r1	@ z2, z2
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsInitialised, _tsInitialised
	cbnz	r3, .L31	@ _tsInitialised,
	bl	tsInit	@
.L31:
	ldr	r3, .L32+4	@ tmp165,
	ldr	r8, .L32+20	@ tmp181,
	ldr	r0, [r3, #0]	@ D.5338, MEM[(volatile long unsigned int *)1074020476B]
	bic	r7, r0, #135	@ D.5339, D.5338,
	str	r7, [r3, #0]	@ D.5339, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r4, [r3, #0]	@ D.5340, MEM[(volatile long unsigned int *)1074020476B]
	orr	r2, r4, #1	@ D.5341, D.5340,
	str	r2, [r3, #0]	@ D.5341, MEM[(volatile long unsigned int *)1074020476B]
	ldr	r1, [r3, #-8]	@ D.5343, MEM[(volatile long unsigned int *)1074020468B]
	bic	r0, r1, #135	@ D.5344, D.5343,
	str	r0, [r3, #-8]	@ D.5344, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r7, [r3, #-8]	@ D.5345, MEM[(volatile long unsigned int *)1074020468B]
	orr	r4, r7, #1	@ D.5346, D.5345,
	str	r4, [r3, #-8]	@ D.5346, MEM[(volatile long unsigned int *)1074020468B]
	ldr	r4, .L32+8	@ tmp173,
	ldr	r2, [r4, #0]	@ D.5348, MEM[(volatile long unsigned int *)1074020480B]
	bic	r1, r2, #135	@ D.5349, D.5348,
	str	r1, [r4, #0]	@ D.5349, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r0, [r4, #0]	@ D.5350, MEM[(volatile long unsigned int *)1074020480B]
	orr	r7, r0, #1	@ D.5351, D.5350,
	movs	r0, #1	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	str	r7, [r4, #0]	@ D.5351, MEM[(volatile long unsigned int *)1074020480B]
	bl	gpioSetDir	@
	movs	r0, #0	@,
	movs	r1, #11	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #2	@,
	movs	r2, #0	@,
	bl	gpioSetDir	@
	ldr	r3, .L32+12	@ tmp177,
	ldr	r2, .L32+16	@ tmp179,
	movs	r7, #0	@ tmp178,
	movw	r1, #4095	@ tmp180,
	str	r7, [r3, #0]	@ tmp178, MEM[(volatile long unsigned int *)1342242824B]
	str	r1, [r2, #0]	@ tmp180, MEM[(volatile long unsigned int *)1342185472B]
	ldr	r0, [r8, #0]	@ D.5353, MEM[(volatile long unsigned int *)1074020472B]
	bic	r3, r0, #135	@ D.5354, D.5353,
	str	r3, [r8, #0]	@ D.5354, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r2, [r8, #0]	@ D.5355, MEM[(volatile long unsigned int *)1074020472B]
	movs	r0, #1	@,
	orr	r1, r2, #2	@ D.5356, D.5355,
	str	r1, [r8, #0]	@ D.5356, MEM[(volatile long unsigned int *)1074020472B]
	bl	adcRead	@
	str	r0, [r6, #0]	@, *z1_36(D)
	ldr	r0, [r8, #0]	@ D.5358, MEM[(volatile long unsigned int *)1074020472B]
	bic	r3, r0, #135	@ D.5359, D.5358,
	str	r3, [r8, #0]	@ D.5359, MEM[(volatile long unsigned int *)1074020472B]
	ldr	r2, [r8, #0]	@ D.5360, MEM[(volatile long unsigned int *)1074020472B]
	movs	r0, #1	@,
	orr	r1, r2, #1	@ D.5361, D.5360,
	str	r1, [r8, #0]	@ D.5361, MEM[(volatile long unsigned int *)1074020472B]
	mov	r2, r7	@, tmp178
	movs	r1, #2	@,
	bl	gpioSetDir	@
	ldr	r0, [r4, #0]	@ D.5362, MEM[(volatile long unsigned int *)1074020480B]
	bic	r3, r0, #135	@ D.5363, D.5362,
	str	r3, [r4, #0]	@ D.5363, MEM[(volatile long unsigned int *)1074020480B]
	ldr	r2, [r4, #0]	@ D.5364, MEM[(volatile long unsigned int *)1074020480B]
	movs	r0, #3	@,
	orr	r1, r2, #2	@ D.5365, D.5364,
	str	r1, [r4, #0]	@ D.5365, MEM[(volatile long unsigned int *)1074020480B]
	bl	adcRead	@
	str	r0, [r5, #0]	@, *z2_54(D)
	pop	{r4, r5, r6, r7, r8, pc}	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR1
	.word	1074020476
	.word	1074020480
	.word	1342242824
	.word	1342185472
	.word	1074020472
	.size	tsReadZ, .-tsReadZ
	.section	.text.tsRead,"ax",%progbits
	.align	1
	.global	tsRead
	.thumb
	.thumb_func
	.ascii	"tsRead\000"
	.align	2
	.word	4278190088
	.type	tsRead, %function
tsRead:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	sub	sp, sp, #24	@,,
	mov	r4, r0	@ data, data
	add	r1, sp, #20	@,,
	add	r0, sp, #16	@,,
	bl	tsReadZ	@
	ldr	r0, .L39	@ tmp161,
	ldr	r3, [sp, #16]	@ z1.1, z1
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ _tsThreshhold, _tsThreshhold
	ldr	r2, [sp, #20]	@ z2, z2
	movs	r5, #0	@ tmp155,
	cmp	r3, r1	@ z1.1, _tsThreshhold
	str	r3, [r4, #12]	@ z1.1, data_3(D)->z1
	str	r2, [r4, #16]	@ z2, data_3(D)->z2
	str	r5, [r4, #0]	@ tmp155, data_3(D)->xraw
	str	r5, [r4, #4]	@ tmp155, data_3(D)->yraw
	strh	r5, [r4, #8]	@ movhi	@ tmp155, data_3(D)->xlcd
	strh	r5, [r4, #10]	@ movhi	@ tmp155, data_3(D)->ylcd
	bcs	.L35	@,
	strb	r5, [r4, #20]	@ tmp157, data_3(D)->valid
	b	.L36	@
.L35:
	bl	tsReadX	@
	mov	r7, r0	@ x1,
	bl	tsReadX	@
	mov	r8, r0	@ x2,
	bl	tsReadY	@
	mov	r6, r0	@ y1,
	bl	tsReadY	@
	cmp	r7, r8	@ x1, x2
	bne	.L37	@,
	cmp	r6, r0	@ y1, y2
	beq	.L38	@,
.L37:
	movs	r5, #0	@ tmp165,
	strb	r5, [r4, #20]	@ tmp165, data_3(D)->valid
	str	r7, [r4, #0]	@ x1, data_3(D)->xraw
	str	r6, [r4, #4]	@ y1, data_3(D)->yraw
	movs	r5, #254	@ D.5121,
	b	.L36	@
.L38:
	add	r1, sp, #8	@,,
	str	r7, [r4, #0]	@ x1, data_3(D)->xraw
	str	r6, [r4, #4]	@ y1, data_3(D)->yraw
	mov	r0, sp	@,
	ldr	r2, .L39+4	@,
	str	r7, [sp, #8]	@ x1, touch.x
	str	r6, [sp, #12]	@ y1, touch.y
	bl	getDisplayPoint	@
	ldrh	r3, [sp, #0]	@, location.x
	ldrh	ip, [sp, #4]	@, location.y
	movs	r1, #1	@ tmp173,
	strh	r3, [r4, #8]	@ movhi	@, data_3(D)->xlcd
	strh	ip, [r4, #10]	@ movhi	@, data_3(D)->ylcd
	strb	r1, [r4, #20]	@ tmp173, data_3(D)->valid
.L36:
	sxtb	r0, r5	@, D.5121
	add	sp, sp, #24	@,,
	pop	{r4, r5, r6, r7, r8, pc}
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	_tsMatrix
	.size	tsRead, .-tsRead
	.section	.text.tsRenderCalibrationScreen,"ax",%progbits
	.align	1
	.global	tsRenderCalibrationScreen
	.thumb
	.thumb_func
	.ascii	"tsRenderCalibrationScreen\000"
	.align	2
	.word	4278190108
	.type	tsRenderCalibrationScreen, %function
tsRenderCalibrationScreen:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	mov	r7, r0	@ .result_ptr, .result_ptr
	sub	sp, sp, #28	@,,
	movw	r0, #65535	@,
	mov	r6, r3	@ radius, radius
	mov	r5, r1	@ x, x
	mov	r4, r2	@ y, y
	bl	drawFill	@
	ldr	r0, .L46	@,
	movs	r1, #50	@,
	movw	r2, #12678	@,
	bl	tsCalibCenterText	@
	ldr	r0, .L46+4	@,
	movs	r1, #65	@,
	movw	r2, #12678	@,
	bl	tsCalibCenterText	@
	ldr	r0, .L46+8	@,
	movs	r1, #80	@,
	movw	r2, #12678	@,
	bl	tsCalibCenterText	@
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	mov	r2, r6	@, radius
	mov	r3, #63488	@,
	bl	drawCircle	@
	adds	r2, r6, #2	@ tmp141, radius,
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	uxth	r2, r2	@, tmp141
	movw	r3, #33808	@,
	bl	drawCircle	@
.L45:
	mov	r0, sp	@,
	movs	r1, #1	@,
	bl	tsRead	@
	cmp	r0, #0	@
	bne	.L45	@
	ldrb	r3, [sp, #20]	@ zero_extendqisi2	@ data.valid, data.valid
	cmp	r3, #0	@ data.valid
	beq	.L45	@
	mov	r4, r7	@ .result_ptr, .result_ptr
	mov	r5, sp	@ tmp147,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp147,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ .result_ptr,,,,
	ldmia	r5, {r0, r1}	@ tmp147,,
	stmia	r4, {r0, r1}	@ .result_ptr,,
	mov	r0, r7	@, .result_ptr
	add	sp, sp, #28	@,,
	pop	{r4, r5, r6, r7, pc}
.L47:
	.align	2
.L46:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	tsRenderCalibrationScreen, .-tsRenderCalibrationScreen
	.section	.text.tsCalibrate,"ax",%progbits
	.align	1
	.global	tsCalibrate
	.thumb
	.thumb_func
	.ascii	"tsCalibrate\000"
	.align	2
	.word	4278190092
	.type	tsCalibrate, %function
tsCalibrate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}	@
	sub	sp, sp, #36	@,,
	bl	lcdGetWidth	@
	mov	r6, r0	@ tmp193,
	bl	lcdGetHeight	@
	lsrs	r3, r6, #1	@ tmp196, tmp193,
	lsrs	r5, r0, #1	@ tmp198,,
	uxth	r1, r3	@, tmp196
	uxth	r2, r5	@, tmp198
	movs	r3, #5	@,
	add	r0, sp, #8	@,,
	bl	tsRenderCalibrationScreen	@
	movs	r0, #250	@,
	bl	systickDelay	@
	bl	lcdGetWidth	@
	mov	r9, r0	@ tmp200,
	bl	lcdGetHeight	@
	movs	r5, #10	@ tmp205,
	udiv	r7, r9, r5	@ tmp204, tmp200, tmp205
	udiv	r4, r0, r5	@ tmp208,, tmp205
	movs	r3, #5	@,
	uxth	r1, r7	@, tmp204
	uxth	r2, r4	@, tmp208
	add	r0, sp, #8	@,,
	bl	tsRenderCalibrationScreen	@
	ldr	r7, [sp, #8]	@ data$xraw, MEM[(struct  *)&data].xraw
	ldr	r8, [sp, #12]	@ data$yraw, MEM[(struct  *)&data].yraw
	bl	lcdGetWidth	@
	ldr	r4, .L49	@ tmp212,
	udiv	r2, r0, r5	@ tmp214,, tmp205
	uxth	r1, r2	@ tmp216, tmp214
	str	r1, [r4, #0]	@ tmp216, _tsLCDPoints[0].x
	bl	lcdGetHeight	@
	udiv	r6, r0, r5	@ tmp219,, tmp205
	uxth	r2, r6	@ D.5068, tmp219
	ldr	r6, .L49+4	@ tmp222,
	str	r2, [r4, #4]	@ D.5068, _tsLCDPoints[0].y
	stmia	r6, {r7, r8}	@ tmp222,,
	str	r8, [sp, #0]	@ data$yraw,
	ldr	r1, [r4, #0]	@, _tsLCDPoints[0].x
	mov	r3, r7	@, data$xraw
	ldr	r0, .L49+8	@,
	bl	printf	@
	movs	r0, #250	@,
	bl	systickDelay	@
	bl	lcdGetWidth	@
	mov	r8, r0	@ tmp225,
	bl	lcdGetHeight	@
	mov	r9, r0	@ tmp226,
	bl	lcdGetHeight	@
	udiv	r0, r0, r5	@ tmp232,, tmp205
	rsb	r7, r0, r9	@ tmp235, tmp232, tmp226
	lsr	r3, r8, #1	@ tmp229, tmp225,
	uxth	r1, r3	@, tmp229
	uxth	r2, r7	@, tmp235
	movs	r3, #5	@,
	add	r0, sp, #8	@,,
	bl	tsRenderCalibrationScreen	@
	ldr	r7, [sp, #8]	@ data$xraw, MEM[(struct  *)&data].xraw
	ldr	r8, [sp, #12]	@ data$yraw, MEM[(struct  *)&data].yraw
	bl	lcdGetWidth	@
	lsrs	r2, r0, #1	@ tmp239,,
	uxth	r1, r2	@ tmp240, tmp239
	str	r1, [r4, #8]	@ tmp240, _tsLCDPoints[1].x
	bl	lcdGetHeight	@
	mov	r9, r0	@ tmp241,
	bl	lcdGetHeight	@
	udiv	r3, r0, r5	@ tmp244,, tmp205
	uxth	r0, r3	@ tmp246, tmp244
	rsb	r2, r0, r9	@ D.5091, tmp246, tmp241
	str	r2, [r4, #12]	@ D.5091, _tsLCDPoints[1].y
	str	r7, [r6, #8]	@ data$xraw, _tsTSPoints[1].x
	str	r8, [r6, #12]	@ data$yraw, _tsTSPoints[1].y
	str	r8, [sp, #0]	@ data$yraw,
	mov	r3, r7	@, data$xraw
	ldr	r1, [r4, #8]	@, _tsLCDPoints[1].x
	ldr	r0, .L49+12	@,
	bl	printf	@
	movs	r0, #250	@,
	bl	systickDelay	@
	bl	lcdGetWidth	@
	mov	r8, r0	@ tmp251,
	bl	lcdGetWidth	@
	udiv	r2, r0, r5	@ tmp254,, tmp205
	rsb	r1, r2, r8	@ tmp257, tmp254, tmp251
	uxth	r7, r1	@ D.5099, tmp257
	bl	lcdGetHeight	@
	lsrs	r3, r0, #1	@ tmp260,,
	mov	r1, r7	@, D.5099
	uxth	r2, r3	@, tmp260
	add	r0, sp, #8	@,,
	movs	r3, #5	@,
	bl	tsRenderCalibrationScreen	@
	ldr	r7, [sp, #8]	@ data$xraw, MEM[(struct  *)&data].xraw
	ldr	r8, [sp, #12]	@ data$yraw, MEM[(struct  *)&data].yraw
	bl	lcdGetWidth	@
	mov	r9, r0	@ tmp262,
	bl	lcdGetWidth	@
	udiv	r0, r0, r5	@ tmp266,, tmp205
	uxth	r5, r0	@ tmp268, tmp266
	rsb	r5, r5, r9	@ tmp269, tmp268, tmp262
	str	r5, [r4, #16]	@ tmp269, _tsLCDPoints[2].x
	bl	lcdGetHeight	@
	lsrs	r2, r0, #1	@ tmp271,,
	uxth	r2, r2	@ D.5110, tmp271
	str	r2, [r4, #20]	@ D.5110, _tsLCDPoints[2].y
	str	r7, [r6, #16]	@ data$xraw, _tsTSPoints[2].x
	str	r8, [r6, #20]	@ data$yraw, _tsTSPoints[2].y
	str	r8, [sp, #0]	@ data$yraw,
	ldr	r1, [r4, #16]	@, _tsLCDPoints[2].x
	mov	r3, r7	@, data$xraw
	ldr	r0, .L49+16	@,
	bl	printf	@
	movs	r0, #250	@,
	bl	systickDelay	@
	ldr	r2, .L49+20	@,
	mov	r0, r4	@, tmp212
	mov	r1, r6	@, tmp222
	add	sp, sp, #36	@,,
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	setCalibrationMatrix	@
.L50:
	.align	2
.L49:
	.word	_tsLCDPoints
	.word	_tsTSPoints
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	_tsMatrix
	.size	tsCalibrate, .-tsCalibrate
	.section	.text.tsWaitForEvent,"ax",%progbits
	.align	1
	.global	tsWaitForEvent
	.thumb
	.thumb_func
	.ascii	"tsWaitForEvent\000"
	.align	2
	.word	4278190096
	.type	tsWaitForEvent, %function
tsWaitForEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ data, data
	ldr	r0, .L68	@ tmp151,
	mov	r6, r1	@ timeoutMS, timeoutMS
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tsInitialised, _tsInitialised
	cbnz	r3, .L52	@ _tsInitialised,
	bl	tsInit	@
.L52:
	movs	r1, #0	@,
	mov	r0, r4	@, data
	bl	tsRead	@
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@ data_4(D)->valid, data_4(D)->valid
	cmp	r1, #0	@ data_4(D)->valid
	bne	.L61	@
	cbz	r6, .L64	@ timeoutMS,
	bl	systickGetTicks	@
	mvns	r2, r6	@ tmp154, timeoutMS
	cmp	r0, r2	@ startTick, tmp154
	mov	r5, r0	@ startTick,
	bhi	.L65	@,
	b	.L66	@
.L58:
	bl	systickGetTicks	@
	cmp	r0, r5	@, startTick
	bcs	.L57	@,
	bl	systickGetTicks	@
	adds	r3, r6, #1	@ tmp155, timeoutMS,
	add	ip, r3, r5	@ tmp156, tmp155, startTick
	cmp	r0, ip	@, tmp156
	bcs	.L63	@,
.L57:
	mov	r0, r4	@, data
	movs	r1, #0	@,
	bl	tsRead	@
.L65:
	ldrb	r0, [r4, #20]	@ zero_extendqisi2	@ data_4(D)->valid, data_4(D)->valid
	cmp	r0, #0	@ data_4(D)->valid
	beq	.L58	@
	b	.L61	@
.L59:
	bl	systickGetTicks	@
	subs	r1, r0, r5	@ tmp158,, startTick
	cmp	r1, r6	@ tmp158, timeoutMS
	bhi	.L63	@,
	mov	r0, r4	@, data
	mov	r1, r7	@, data_4(D)->valid
	bl	tsRead	@
.L66:
	ldrb	r7, [r4, #20]	@ zero_extendqisi2	@ data_4(D)->valid, data_4(D)->valid
	cmp	r7, #0	@ data_4(D)->valid
	beq	.L59	@
	b	.L61	@
.L60:
	mov	r0, r4	@, data
	bl	tsRead	@
.L64:
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@ data_4(D)->valid, data_4(D)->valid
	cmp	r1, #0	@ data_4(D)->valid
	beq	.L60	@
.L61:
	movs	r0, #0	@ D.5033,
	b	.L53	@
.L63:
	movs	r0, #255	@ D.5033,
.L53:
	sxtb	r0, r0	@, D.5033
	pop	{r3, r4, r5, r6, r7, pc}	@
.L69:
	.align	2
.L68:
	.word	.LANCHOR1
	.size	tsWaitForEvent, .-tsWaitForEvent
	.comm	_tsMatrix,28,4
	.comm	_tsTSPoints,24,4
	.comm	_tsLCDPoints,24,4
	.section	.data._tsThreshhold,"aw",%progbits
	.set	.LANCHOR0,. + 0
	.type	_tsThreshhold, %object
	.size	_tsThreshhold, 1
_tsThreshhold:
	.byte	50
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Touch the center of\000"
.LC1:
	.ascii	"the red circle using\000"
.LC2:
	.ascii	"a pen or stylus\000"
.LC3:
	.ascii	"Point 1 - LCD X:%04d Y:%04d TS X:%04d Y:%04d \015\012"
	.ascii	"\000"
.LC4:
	.ascii	"Point 2 - LCD X:%04d Y:%04d TS X:%04d Y:%04d \015\012"
	.ascii	"\000"
.LC5:
	.ascii	"Point 3 - LCD X:%04d Y:%04d TS X:%04d Y:%04d \015\012"
	.ascii	"\000"
	.section	.bss._tsInitialised,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	_tsInitialised, %object
	.size	_tsInitialised, 1
_tsInitialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
