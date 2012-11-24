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
	.file	"cdcuser.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cdcuser.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cdcuser.o -Os -Wall
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

	.section	.text.CDC_RdOutBuf,"ax",%progbits
	.align	1
	.global	CDC_RdOutBuf
	.thumb
	.thumb_func
	.ascii	"CDC_RdOutBuf\000"
	.align	2
	.word	4278190096
	.type	CDC_RdOutBuf, %function
CDC_RdOutBuf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ buffer, buffer
	ldr	r0, [r1, #0]	@ bytesToRead, *length_3(D)
	push	{r4, r5, lr}	@
	mov	r2, r0	@ bytesToRead, bytesToRead
	b	.L2	@
.L3:
	ldr	r1, .L4	@ tmp169,
	ldr	r4, [r1, #68]	@ D.4915, CDC_OutBuf.rdIdx
	and	r5, r4, #63	@ tmp171, D.4915,
	ldrb	r5, [r1, r5]	@ zero_extendqisi2	@ D.4918, CDC_OutBuf.data
	adds	r4, r4, #1	@ D.4916, D.4915,
	strb	r5, [r3], #1	@ D.4918, MEM[base: buffer_1, offset: 0B]
	str	r4, [r1, #68]	@ D.4916, CDC_OutBuf.rdIdx
.L2:
	adds	r2, r2, #-1	@ bytesToRead, bytesToRead,
	bcs	.L3	@,
	pop	{r4, r5, pc}	@
.L5:
	.align	2
.L4:
	.word	CDC_OutBuf
	.size	CDC_RdOutBuf, .-CDC_RdOutBuf
	.section	.text.CDC_WrOutBuf,"ax",%progbits
	.align	1
	.global	CDC_WrOutBuf
	.thumb
	.thumb_func
	.ascii	"CDC_WrOutBuf\000"
	.align	2
	.word	4278190096
	.type	CDC_WrOutBuf, %function
CDC_WrOutBuf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ buffer, buffer
	ldr	r0, [r1, #0]	@ bytesToWrite, *length_3(D)
	push	{r4, r5, r6, lr}	@
	mov	r2, r0	@ bytesToWrite, bytesToWrite
	b	.L7	@
.L8:
	ldr	r1, .L9	@ tmp143,
	ldrb	r6, [r3], #1	@ zero_extendqisi2	@ D.4911, MEM[base: buffer_1, offset: 0B]
	ldr	r4, [r1, #64]	@ D.4908, CDC_OutBuf.wrIdx
	subs	r2, r2, #1	@ bytesToWrite, bytesToWrite,
	and	r5, r4, #63	@ tmp145, D.4908,
	adds	r4, r4, #1	@ D.4909, D.4908,
	strb	r6, [r1, r5]	@ D.4911, CDC_OutBuf.data
	str	r4, [r1, #64]	@ D.4909, CDC_OutBuf.wrIdx
.L7:
	cmp	r2, #0	@ bytesToWrite
	bne	.L8	@
	pop	{r4, r5, r6, pc}	@
.L10:
	.align	2
.L9:
	.word	CDC_OutBuf
	.size	CDC_WrOutBuf, .-CDC_WrOutBuf
	.section	.text.CDC_OutBufAvailChar,"ax",%progbits
	.align	1
	.global	CDC_OutBufAvailChar
	.thumb
	.thumb_func
	.ascii	"CDC_OutBufAvailChar\000"
	.align	2
	.word	4278190100
	.type	CDC_OutBufAvailChar, %function
CDC_OutBufAvailChar:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L12	@ tmp141,
	ldr	r2, [r1, #64]	@ D.4901, CDC_OutBuf.wrIdx
	ldr	r3, [r1, #68]	@ D.4902, CDC_OutBuf.rdIdx
	subs	r1, r2, r3	@ tmp143, D.4901, D.4902
	and	r3, r1, #63	@ tmp144, tmp143,
	str	r3, [r0, #0]	@ tmp144, *availChar_6(D)
	movs	r0, #0	@,
	bx	lr	@
.L13:
	.align	2
.L12:
	.word	CDC_OutBuf
	.size	CDC_OutBufAvailChar, .-CDC_OutBufAvailChar
	.section	.text.CDC_SendEncapsulatedCommand,"ax",%progbits
	.align	1
	.global	CDC_SendEncapsulatedCommand
	.thumb
	.thumb_func
	.ascii	"CDC_SendEncapsulatedCommand\000"
	.align	2
	.word	4278190108
	.type	CDC_SendEncapsulatedCommand, %function
CDC_SendEncapsulatedCommand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_SendEncapsulatedCommand, .-CDC_SendEncapsulatedCommand
	.section	.text.CDC_GetEncapsulatedResponse,"ax",%progbits
	.align	1
	.global	CDC_GetEncapsulatedResponse
	.thumb
	.thumb_func
	.ascii	"CDC_GetEncapsulatedResponse\000"
	.align	2
	.word	4278190108
	.type	CDC_GetEncapsulatedResponse, %function
CDC_GetEncapsulatedResponse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_GetEncapsulatedResponse, .-CDC_GetEncapsulatedResponse
	.section	.text.CDC_SetCommFeature,"ax",%progbits
	.align	1
	.global	CDC_SetCommFeature
	.thumb
	.thumb_func
	.ascii	"CDC_SetCommFeature\000"
	.align	2
	.word	4278190100
	.type	CDC_SetCommFeature, %function
CDC_SetCommFeature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_SetCommFeature, .-CDC_SetCommFeature
	.section	.text.CDC_GetCommFeature,"ax",%progbits
	.align	1
	.global	CDC_GetCommFeature
	.thumb
	.thumb_func
	.ascii	"CDC_GetCommFeature\000"
	.align	2
	.word	4278190100
	.type	CDC_GetCommFeature, %function
CDC_GetCommFeature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_GetCommFeature, .-CDC_GetCommFeature
	.section	.text.CDC_ClearCommFeature,"ax",%progbits
	.align	1
	.global	CDC_ClearCommFeature
	.thumb
	.thumb_func
	.ascii	"CDC_ClearCommFeature\000"
	.align	2
	.word	4278190104
	.type	CDC_ClearCommFeature, %function
CDC_ClearCommFeature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_ClearCommFeature, .-CDC_ClearCommFeature
	.section	.text.CDC_SetLineCoding,"ax",%progbits
	.align	1
	.global	CDC_SetLineCoding
	.thumb
	.thumb_func
	.ascii	"CDC_SetLineCoding\000"
	.align	2
	.word	4278190100
	.type	CDC_SetLineCoding, %function
CDC_SetLineCoding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20	@ tmp154,
	ldr	r2, .L20+4	@ tmp153,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	lsls	r1, r1, #16	@ tmp159, EP0Buf,
	orr	r1, r1, r0, lsl #8	@, tmp160, tmp159, EP0Buf,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	orr	ip, r1, ip	@ tmp163, tmp160, EP0Buf
	orr	r1, ip, r0, lsl #24	@, tmp167, tmp163, EP0Buf,
	str	r1, [r2, #0]	@ unaligned	@ tmp167,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	ldrb	r3, [r3, #6]	@ zero_extendqisi2	@ EP0Buf, EP0Buf
	strb	r0, [r2, #4]	@ EP0Buf, CDC_LineCoding.bCharFormat
	strb	r1, [r2, #5]	@ EP0Buf, CDC_LineCoding.bParityType
	strb	r3, [r2, #6]	@ EP0Buf, CDC_LineCoding.bDataBits
	movs	r0, #1	@,
	bx	lr	@
.L21:
	.align	2
.L20:
	.word	EP0Buf
	.word	.LANCHOR0
	.size	CDC_SetLineCoding, .-CDC_SetLineCoding
	.section	.text.CDC_GetLineCoding,"ax",%progbits
	.align	1
	.global	CDC_GetLineCoding
	.thumb
	.thumb_func
	.ascii	"CDC_GetLineCoding\000"
	.align	2
	.word	4278190100
	.type	CDC_GetLineCoding, %function
CDC_GetLineCoding:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L23	@ tmp146,
	ldr	r3, .L23+4	@ tmp147,
	ldr	r1, [r2, #0]	@ unaligned	@ D.4856,
	lsrs	r0, r1, #8	@ tmp150, D.4856,
	strb	r1, [r3, #0]	@ D.4856, EP0Buf
	strb	r0, [r3, #1]	@ tmp150, EP0Buf
	lsrs	r0, r1, #16	@ tmp153, D.4856,
	lsrs	r1, r1, #24	@ tmp156, D.4856,
	strb	r0, [r3, #2]	@ tmp153, EP0Buf
	strb	r1, [r3, #3]	@ tmp156, EP0Buf
	ldrb	r0, [r2, #4]	@ zero_extendqisi2	@ CDC_LineCoding.bCharFormat, CDC_LineCoding.bCharFormat
	ldrb	r1, [r2, #5]	@ zero_extendqisi2	@ CDC_LineCoding.bParityType, CDC_LineCoding.bParityType
	ldrb	r2, [r2, #6]	@ zero_extendqisi2	@ CDC_LineCoding.bDataBits, CDC_LineCoding.bDataBits
	strb	r0, [r3, #4]	@ CDC_LineCoding.bCharFormat, EP0Buf
	strb	r1, [r3, #5]	@ CDC_LineCoding.bParityType, EP0Buf
	strb	r2, [r3, #6]	@ CDC_LineCoding.bDataBits, EP0Buf
	movs	r0, #1	@,
	bx	lr	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	EP0Buf
	.size	CDC_GetLineCoding, .-CDC_GetLineCoding
	.section	.text.CDC_SetControlLineState,"ax",%progbits
	.align	1
	.global	CDC_SetControlLineState
	.thumb
	.thumb_func
	.ascii	"CDC_SetControlLineState\000"
	.align	2
	.word	4278190104
	.type	CDC_SetControlLineState, %function
CDC_SetControlLineState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_SetControlLineState, .-CDC_SetControlLineState
	.section	.text.CDC_SendBreak,"ax",%progbits
	.align	1
	.global	CDC_SendBreak
	.thumb
	.thumb_func
	.ascii	"CDC_SendBreak\000"
	.align	2
	.word	4278190096
	.type	CDC_SendBreak, %function
CDC_SendBreak:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	CDC_SendBreak, .-CDC_SendBreak
	.section	.text.CDC_BulkIn,"ax",%progbits
	.align	1
	.global	CDC_BulkIn
	.thumb
	.thumb_func
	.ascii	"CDC_BulkIn\000"
	.align	2
	.word	4278190092
	.type	CDC_BulkIn, %function
CDC_BulkIn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	CDC_BulkIn, .-CDC_BulkIn
	.section	.text.CDC_BulkOut,"ax",%progbits
	.align	1
	.global	CDC_BulkOut
	.thumb
	.thumb_func
	.ascii	"CDC_BulkOut\000"
	.align	2
	.word	4278190092
	.type	CDC_BulkOut, %function
CDC_BulkOut:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #3	@,
	ldr	r1, .L29	@,
	bl	USB_ReadEP	@
	add	r1, sp, #8	@ tmp136,,
	str	r0, [r1, #-4]!	@, numBytesRead
	ldr	r0, .L29	@,
	bl	CDC_WrOutBuf	@
	pop	{r1, r2, r3, pc}
.L30:
	.align	2
.L29:
	.word	BulkBufOut
	.size	CDC_BulkOut, .-CDC_BulkOut
	.section	.text.CDC_GetSerialState,"ax",%progbits
	.align	1
	.global	CDC_GetSerialState
	.thumb
	.thumb_func
	.ascii	"CDC_GetSerialState\000"
	.align	2
	.word	4278190100
	.type	CDC_GetSerialState, %function
CDC_GetSerialState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32	@ tmp135,
	movs	r0, #0	@ tmp137,
	strh	r0, [r3, #0]	@ movhi	@ tmp137, CDC_SerialState
	bx	lr	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR1
	.size	CDC_GetSerialState, .-CDC_GetSerialState
	.section	.text.CDC_Init,"ax",%progbits
	.align	1
	.global	CDC_Init
	.thumb
	.thumb_func
	.ascii	"CDC_Init\000"
	.align	2
	.word	4278190092
	.type	CDC_Init, %function
CDC_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L35	@ tmp135,
	movs	r0, #1	@,
	push	{r3, lr}	@
	strh	r0, [r2, #0]	@ movhi	@, CDC_DepInEmpty
	bl	CDC_GetSerialState	@
	ldr	r3, .L35+4	@ tmp141,
	ldr	r1, .L35+8	@ tmp139,
	movs	r2, #0	@ tmp142,
	str	r2, [r3, #64]	@ tmp142, CDC_OutBuf.wrIdx
	strh	r0, [r1, #0]	@ movhi	@, CDC_SerialState
	str	r2, [r3, #68]	@ tmp142, CDC_OutBuf.rdIdx
	pop	{r3, lr}	@
	b	cdcBufferInit	@
.L36:
	.align	2
.L35:
	.word	.LANCHOR2
	.word	CDC_OutBuf
	.word	.LANCHOR1
	.size	CDC_Init, .-CDC_Init
	.section	.text.CDC_NotificationIn,"ax",%progbits
	.align	1
	.global	CDC_NotificationIn
	.thumb
	.thumb_func
	.ascii	"CDC_NotificationIn\000"
	.align	2
	.word	4278190100
	.type	CDC_NotificationIn, %function
CDC_NotificationIn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L38	@ tmp138,
	movs	r2, #32	@ tmp142,
	strb	r2, [r1, #1]	@ tmp142, NotificationBuf
	ldr	r2, .L38+4	@ tmp162,
	movs	r0, #2	@ tmp157,
	movs	r3, #161	@ tmp139,
	strb	r0, [r1, #6]	@ tmp157, NotificationBuf
	ldrh	r0, [r2, #0]	@ CDC_SerialState.0, CDC_SerialState
	strb	r3, [r1, #0]	@ tmp139, NotificationBuf
	movs	r3, #0	@ tmp145,
	strb	r3, [r1, #2]	@ tmp145, NotificationBuf
	strb	r3, [r1, #3]	@ tmp145, NotificationBuf
	strb	r3, [r1, #4]	@ tmp145, NotificationBuf
	strb	r3, [r1, #5]	@ tmp145, NotificationBuf
	strb	r3, [r1, #7]	@ tmp145, NotificationBuf
	strb	r0, [r1, #8]	@ CDC_SerialState.0, NotificationBuf
	lsrs	r3, r0, #8	@ tmp166, CDC_SerialState.0,
	movs	r2, #10	@,
	movs	r0, #129	@,
	strb	r3, [r1, #9]	@ tmp166, NotificationBuf
	b	USB_WriteEP	@
.L39:
	.align	2
.L38:
	.word	NotificationBuf
	.word	.LANCHOR1
	.size	CDC_NotificationIn, .-CDC_NotificationIn
	.comm	CDC_OutBuf,72,4
	.global	CDC_DepInEmpty
	.global	CDC_SerialState
	.global	CDC_LineCoding
	.comm	NotificationBuf,10,1
	.comm	BulkBufOut,64,1
	.comm	BulkBufIn,64,1
	.section	.data.CDC_DepInEmpty,"aw",%progbits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	CDC_DepInEmpty, %object
	.size	CDC_DepInEmpty, 2
CDC_DepInEmpty:
	.short	1
	.section	.bss.CDC_SerialState,"aw",%nobits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	CDC_SerialState, %object
	.size	CDC_SerialState, 2
CDC_SerialState:
	.space	2
	.section	.data.CDC_LineCoding,"aw",%progbits
	.set	.LANCHOR0,. + 0
	.type	CDC_LineCoding, %object
	.size	CDC_LineCoding, 7
CDC_LineCoding:
@ dwDTERate:
	.4byte	115200
@ bCharFormat:
	.byte	0
@ bParityType:
	.byte	0
@ bDataBits:
	.byte	8
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
