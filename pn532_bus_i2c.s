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
	.file	"pn532_bus_i2c.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pn532_bus_i2c.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip pn532_bus_i2c.o -Os -Wall
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

	.section	.text.pn532_bus_i2c_WriteData,"ax",%progbits
	.align	1
	.global	pn532_bus_i2c_WriteData
	.thumb
	.thumb_func
	.ascii	"pn532_bus_i2c_WriteData\000"
	.align	2
	.word	4278190104
	.type	pn532_bus_i2c_WriteData, %function
pn532_bus_i2c_WriteData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	movs	r2, #0	@ i,
.L2:
	ldr	r4, .L8	@ tmp172,
	movs	r3, #0	@ tmp173,
	strb	r3, [r4, r2]	@ tmp173, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r2, .L8+4	@ tmp175,
	adds	r5, r1, #1	@ I2CWriteLength.4, szData,
	str	r5, [r2, #0]	@ I2CWriteLength.4, I2CWriteLength
	ldr	r2, .L8+8	@ tmp176,
	str	r3, [r2, #0]	@ tmp173, I2CReadLength
	movs	r2, #72	@ tmp179,
	strb	r2, [r4, #0]	@ tmp179, I2CMasterBuffer
	b	.L3	@
.L4:
	ldrb	ip, [r0], #1	@ zero_extendqisi2	@ D.5072, MEM[base: D.5140_31, offset: 0B]
	adds	r3, r3, #1	@ i, i,
	strb	ip, [r4, r3]	@ D.5072, I2CMasterBuffer
.L3:
	cmp	r3, r1	@ i, szData
	bne	.L4	@,
	bl	i2cEngine	@
	sub	r0, r0, #258	@ tmp183,,
	cmp	r0, #1	@ tmp183,
	ite	ls	@
	movls	r0, #15	@,,
	movhi	r0, #0	@,,
	pop	{r3, r4, r5, pc}	@
.L9:
	.align	2
.L8:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	pn532_bus_i2c_WriteData, .-pn532_bus_i2c_WriteData
	.section	.text.pn532_bus_i2c_WaitForReady,"ax",%progbits
	.align	1
	.global	pn532_bus_i2c_WaitForReady
	.thumb
	.thumb_func
	.ascii	"pn532_bus_i2c_WaitForReady\000"
	.align	2
	.word	4278190108
	.type	pn532_bus_i2c_WaitForReady, %function
pn532_bus_i2c_WaitForReady:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
.L11:
	ldr	r3, .L13	@ tmp137,
	movs	r0, #1	@,
	ldr	r4, [r3, #0]	@ D.5087, MEM[(volatile long unsigned int *)1342373904B]
	bl	systickDelay	@
	lsls	r3, r4, #29	@, D.5087,
	bmi	.L11	@,
	movs	r0, #1	@,
	pop	{r4, pc}	@
.L14:
	.align	2
.L13:
	.word	1342373904
	.size	pn532_bus_i2c_WaitForReady, .-pn532_bus_i2c_WaitForReady
	.section	.text.pn532_bus_i2c_BuildFrame,"ax",%progbits
	.align	1
	.global	pn532_bus_i2c_BuildFrame
	.thumb
	.thumb_func
	.ascii	"pn532_bus_i2c_BuildFrame\000"
	.align	2
	.word	4278190108
	.type	pn532_bus_i2c_BuildFrame, %function
pn532_bus_i2c_BuildFrame:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #254	@ szData,
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ pbtFrame, pbtFrame
	mov	r6, r1	@ pszFrame, pszFrame
	mov	r5, r2	@ pbtData, pbtData
	mov	r7, r3	@ szData, szData
	bhi	.L19	@,
	uxtb	r3, r3	@ D.5039, szData
	adds	r2, r3, #1	@ tmp152, D.5039,
	mvns	r1, r3	@ tmp154, D.5039
	movs	r3, #212	@ tmp156,
	strb	r2, [r0, #3]	@ tmp152, MEM[(byte_t *)pbtFrame_6(D) + 3B]
	strb	r1, [r0, #4]	@ tmp154, MEM[(byte_t *)pbtFrame_6(D) + 4B]
	strb	r3, [r0, #5]	@ tmp156, MEM[(byte_t *)pbtFrame_6(D) + 5B]
	mov	r2, r7	@, szData
	adds	r0, r0, #6	@, pbtFrame,
	mov	r1, r5	@, pbtData
	bl	memcpy	@
	movs	r3, #0	@ szPos,
	movs	r2, #44	@ btDCS,
	b	.L17	@
.L18:
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ MEM[base: pbtData_15(D), index: szPos_2, offset: 0B], MEM[base: pbtData_15(D), index: szPos_2, offset: 0B]
	adds	r3, r3, #1	@ szPos, szPos,
	rsb	r0, ip, r2	@ tmp161, MEM[base: pbtData_15(D), index: szPos_2, offset: 0B], btDCS
	uxtb	r2, r0	@ btDCS, tmp161
.L17:
	cmp	r3, r7	@ szPos, szData
	bne	.L18	@,
	adds	r4, r4, r3	@ tmp162, pbtFrame, szPos
	movs	r0, #0	@ tmp165,
	adds	r3, r3, #8	@ tmp167, szPos,
	strb	r2, [r4, #6]	@ btDCS, *D.5048_23
	strb	r0, [r4, #7]	@ tmp165, *D.5050_25
	str	r3, [r6, #0]	@ tmp167, *pszFrame_27(D)
	pop	{r3, r4, r5, r6, r7, pc}	@
.L19:
	movs	r0, #7	@ D.5037,
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	pn532_bus_i2c_BuildFrame, .-pn532_bus_i2c_BuildFrame
	.section	.text.pn532_bus_HWInit,"ax",%progbits
	.align	1
	.global	pn532_bus_HWInit
	.thumb
	.thumb_func
	.ascii	"pn532_bus_HWInit\000"
	.align	2
	.word	4278190100
	.type	pn532_bus_HWInit, %function
pn532_bus_HWInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	movs	r0, #3	@,
	movs	r1, #2	@,
	movs	r2, #0	@,
	bl	gpioSetDir	@
	movs	r1, #1	@,
	movs	r0, #3	@,
	mov	r2, r1	@,
	ldr	r4, .L21	@ tmp134,
	bl	gpioSetDir	@
	movs	r0, #0	@ tmp135,
	str	r0, [r4, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342373896B]
	mov	r0, #400	@,
	bl	systickDelay	@
	movw	r3, #4095	@ tmp137,
	movs	r0, #100	@,
	str	r3, [r4, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342373896B]
	pop	{r4, lr}	@
	b	systickDelay	@
.L22:
	.align	2
.L21:
	.word	1342373896
	.size	pn532_bus_HWInit, .-pn532_bus_HWInit
	.section	.text.pn532_bus_SendCommand,"ax",%progbits
	.align	1
	.global	pn532_bus_SendCommand
	.thumb
	.thumb_func
	.ascii	"pn532_bus_SendCommand\000"
	.align	2
	.word	4278190104
	.type	pn532_bus_SendCommand, %function
pn532_bus_SendCommand:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	sub	sp, sp, #300	@,,
	mov	r6, r0	@ pbtData, pbtData
	mov	r7, r1	@ szData, szData
	bl	pn532GetPCB	@
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ pn532_5->state, pn532_5->state
	mov	r4, r0	@ pn532,
	cmp	r3, #2	@ pn532_5->state,
	beq	.L30	@,
	movs	r2, #2	@ tmp152,
	strb	r2, [r0, #1]	@ tmp152, pn532_5->state
	movs	r1, #0	@,
	movw	r2, #275	@,
	mov	r0, sp	@,
	bl	memset	@
	movs	r1, #255	@ tmp161,
	strb	r1, [sp, #2]	@ tmp161, abtFrame
	movs	r5, #0	@ tmp163,
	add	r1, sp, #296	@ tmp165,,
	str	r5, [r1, #-4]!	@ tmp163, szFrame
	mov	r2, r6	@, pbtData
	mov	r3, r7	@, szData
	mov	r0, sp	@,
	bl	pn532_bus_i2c_BuildFrame	@
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ *pbtData_8(D), *pbtData_8(D)
	ldr	r1, [sp, #292]	@, szFrame
	str	r0, [r4, #4]	@ *pbtData_8(D), pn532_5->lastCommand
	mov	r0, sp	@,
	bl	pn532_bus_i2c_WriteData	@
	cmp	r0, #15	@ error,
	bne	.L25	@,
	movs	r3, #1	@ tmp169,
	strb	r3, [r4, #1]	@ tmp169, pn532_5->state
	b	.L24	@
.L25:
	bl	pn532_bus_i2c_WaitForReady	@
	cbnz	r0, .L26	@,
	movs	r0, #1	@ tmp172,
	strb	r0, [r4, #1]	@ tmp172, pn532_5->state
	b	.L34	@
.L26:
	ldr	r3, .L35	@ tmp174,
	movs	r6, #0	@ tmp175,
	strb	r6, [r3, r5]	@ tmp175, I2CMasterBuffer
	adds	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L26	@,
	ldr	r2, .L35+4	@ tmp177,
	ldr	r1, .L35+8	@ tmp179,
	movs	r5, #7	@ tmp180,
	movs	r0, #73	@ tmp182,
	str	r6, [r2, #0]	@ tmp175, I2CWriteLength
	str	r5, [r1, #0]	@ tmp180, I2CReadLength
	strb	r0, [r3, #0]	@ tmp182, I2CMasterBuffer
	bl	i2cEngine	@
	ldr	r2, .L35+12	@ tmp184,
	add	r5, sp, #280	@ ivtmp.50,,
	ldr	r3, [r2, #0]	@ unaligned	@,
	str	r3, [sp, #276]	@ unaligned	@, abtAck
	ldrh	r1, [r2, #4]	@ unaligned	@ tmp187,
	adds	r3, r5, #3	@ ivtmp.50, ivtmp.50,
	strh	r1, [sp, #280]	@ unaligned	@ tmp187, abtAck
	mov	r2, r6	@ i, tmp175
.L27:
	ldr	r5, .L35+16	@ tmp189,
	adds	r2, r2, #1	@ i, i,
	ldrb	r0, [r5, r2]	@ zero_extendqisi2	@ tmp191, I2CSlaveBuffer
	cmp	r2, #6	@ i,
	strb	r0, [r3, #1]!	@ tmp191, MEM[base: D.5179_28, offset: 0B]
	bne	.L27	@,
	add	r0, sp, #284	@,,
	add	r1, sp, #276	@,,
	bl	memcmp	@
	mov	r5, r0	@ D.5016,
	cbz	r0, .L28	@ D.5016,
	movs	r3, #1	@ tmp195,
	strb	r3, [r4, #1]	@ tmp195, pn532_5->state
	movs	r0, #5	@ error,
	b	.L24	@
.L28:
	bl	pn532_bus_i2c_WaitForReady	@
	movs	r1, #1	@ tmp203,
	strb	r1, [r4, #1]	@ tmp203, pn532_5->state
	cbnz	r0, .L29	@,
.L34:
	movs	r0, #10	@ error,
	b	.L24	@
.L29:
	mov	r0, r5	@ error, D.5016
	b	.L24	@
.L30:
	movs	r0, #3	@ error,
.L24:
	add	sp, sp, #300	@,,
	pop	{r4, r5, r6, r7, pc}
.L36:
	.align	2
.L35:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	.LANCHOR0
	.word	I2CSlaveBuffer
	.size	pn532_bus_SendCommand, .-pn532_bus_SendCommand
	.section	.text.pn532_bus_ReadResponse,"ax",%progbits
	.align	1
	.global	pn532_bus_ReadResponse
	.thumb
	.thumb_func
	.ascii	"pn532_bus_ReadResponse\000"
	.align	2
	.word	4278190104
	.type	pn532_bus_ReadResponse, %function
pn532_bus_ReadResponse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ pbtResponse, pbtResponse
	mov	r7, r1	@ pszRxLen, pszRxLen
	bl	pn532GetPCB	@
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ pn532_4->state, pn532_4->state
	mov	r5, r0	@ pn532,
	cmp	r3, #2	@ pn532_4->state,
	beq	.L44	@,
	movs	r1, #2	@ tmp157,
	movs	r3, #0	@ tmp159,
	strb	r1, [r0, #1]	@ tmp157, pn532_4->state
	str	r3, [r0, #8]	@ tmp159, pn532_4->appError
.L39:
	ldr	r2, .L47	@ tmp160,
	movs	r6, #0	@ tmp161,
	strb	r6, [r2, r3]	@ tmp161, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L39	@,
	ldr	r0, .L47+4	@ tmp163,
	ldr	r1, .L47+8	@ tmp165,
	str	r6, [r0, #0]	@ tmp161, I2CWriteLength
	str	r3, [r1, #0]	@ i, I2CReadLength
	movs	r3, #73	@ tmp168,
	strb	r3, [r2, #0]	@ tmp168, I2CMasterBuffer
	bl	i2cEngine	@
	movs	r0, #63	@ tmp170,
	str	r0, [r7, #0]	@ tmp170, *pszRxLen_9(D)
	mov	r3, r4	@ ivtmp.73, pbtResponse
.L40:
	ldr	r1, .L47+12	@ tmp171,
	adds	r6, r6, #1	@ i, i,
	ldrb	r2, [r1, r6]	@ zero_extendqisi2	@ tmp173, I2CSlaveBuffer
	cmp	r6, #63	@ i,
	strb	r2, [r3], #1	@ tmp173, MEM[base: D.5202_43, offset: 0B]
	bne	.L40	@,
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ D.4982, MEM[(byte_t *)pbtResponse_11(D) + 3B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ MEM[(byte_t *)pbtResponse_11(D) + 4B], MEM[(byte_t *)pbtResponse_11(D) + 4B]
	cmp	r3, #1	@ D.4982,
	bne	.L41	@,
	cmp	r2, #255	@ MEM[(byte_t *)pbtResponse_11(D) + 4B],
	bne	.L42	@,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ MEM[(byte_t *)pbtResponse_11(D) + 5B], MEM[(byte_t *)pbtResponse_11(D) + 5B]
	strb	r3, [r5, #1]	@ D.4982, pn532_4->state
	str	r0, [r5, #8]	@ MEM[(byte_t *)pbtResponse_11(D) + 5B], pn532_4->appError
	movs	r0, #2	@ D.4976,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L41:
	cmp	r3, #255	@ D.4982,
	bne	.L42	@,
	cmp	r2, #255	@ MEM[(byte_t *)pbtResponse_11(D) + 4B],
	bne	.L42	@,
	movs	r3, #1	@ tmp180,
	strb	r3, [r5, #1]	@ tmp180, pn532_4->state
	movs	r0, #7	@ D.4976,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L42:
	ldrb	lr, [r4, #4]	@ zero_extendqisi2	@ MEM[(byte_t *)pbtResponse_11(D) + 4B], MEM[(byte_t *)pbtResponse_11(D) + 4B]
	movs	r2, #1	@ tmp191,
	add	ip, r3, lr	@ tmp183, D.4982, MEM[(byte_t *)pbtResponse_11(D) + 4B]
	cmp	ip, #256	@ tmp183,
	beq	.L43	@,
	strb	r2, [r5, #1]	@ tmp191, pn532_4->state
	movs	r0, #8	@ D.4976,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L43:
	adds	r1, r3, #7	@ tmp186, D.4982,
	str	r1, [r7, #0]	@ tmp186, *pszRxLen_9(D)
	movs	r0, #0	@ D.4976,
	strb	r2, [r5, #1]	@ tmp191, pn532_4->state
	pop	{r3, r4, r5, r6, r7, pc}	@
.L44:
	movs	r0, #3	@ D.4976,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L48:
	.align	2
.L47:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.word	I2CSlaveBuffer
	.size	pn532_bus_ReadResponse, .-pn532_bus_ReadResponse
	.section	.text.pn532_bus_Wakeup,"ax",%progbits
	.align	1
	.global	pn532_bus_Wakeup
	.thumb
	.thumb_func
	.ascii	"pn532_bus_Wakeup\000"
	.align	2
	.word	4278190100
	.type	pn532_bus_Wakeup, %function
pn532_bus_Wakeup:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	ldr	r3, .L58	@ tmp141,
	sub	sp, sp, #28	@,,
	mov	r4, sp	@ tmp142,
	add	r5, r3, #24	@ tmp143, tmp141,
.L50:
	ldr	r0, [r3, #0]	@ unaligned	@,
	ldr	r1, [r3, #4]	@ unaligned	@,
	mov	r2, r4	@ tmp144, tmp142
	stmia	r2!, {r0, r1}	@ tmp144,,
	adds	r3, r3, #8	@ tmp141, tmp141,
	cmp	r3, r5	@ tmp141, tmp143
	mov	r4, r2	@ tmp142, tmp144
	bne	.L50	@,
	bl	pn532GetPCB	@
	movs	r1, #24	@,
	mov	r4, r0	@ pn532,
	mov	r0, sp	@,
	bl	pn532_bus_i2c_WriteData	@
	mov	r5, r0	@ error,
	movs	r0, #100	@,
	bl	systickDelay	@
	bl	pn532_bus_i2c_WaitForReady	@
	movs	r3, #0	@ i,
	cmp	r0, #0	@,
	it	eq	@
	moveq	r5, #10	@, error,
.L52:
	ldr	r2, .L58+4	@ tmp149,
	movs	r1, #0	@ tmp150,
	strb	r1, [r2, r3]	@ tmp150, I2CMasterBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L52	@,
	ldr	r0, .L58+8	@ tmp152,
	ldr	r3, .L58+12	@ tmp154,
	str	r1, [r0, #0]	@ tmp150, I2CWriteLength
	movs	r1, #7	@ tmp155,
	movs	r0, #73	@ tmp157,
	str	r1, [r3, #0]	@ tmp155, I2CReadLength
	strb	r0, [r2, #0]	@ tmp157, I2CMasterBuffer
	bl	i2cEngine	@
	movs	r0, #1	@,
	bl	systickDelay	@
	bl	pn532_bus_i2c_WaitForReady	@
	movs	r3, #1	@ tmp160,
	strb	r3, [r4, #1]	@ tmp160, pn532_5->state
	cmp	r0, #0	@,
	ite	ne	@
	movne	r0, r5	@,, error
	moveq	r0, #10	@,,
	add	sp, sp, #28	@,,
	pop	{r4, r5, pc}
.L59:
	.align	2
.L58:
	.word	.LANCHOR0+6
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	pn532_bus_Wakeup, .-pn532_bus_Wakeup
	.section	.rodata
	.set	.LANCHOR0,. + 0
.LC1:
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-1
	.byte	0
.LC0:
	.byte	85
	.byte	85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	-3
	.byte	-44
	.byte	20
	.byte	1
	.byte	23
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	-3
	.byte	-44
	.byte	20
	.byte	1
	.byte	23
	.byte	0
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
