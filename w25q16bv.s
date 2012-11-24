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
	.file	"w25q16bv.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed w25q16bv.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip w25q16bv.o -Os -Wall
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

	.section	.text.w25q16bv_TransferByte,"ax",%progbits
	.align	1
	.global	w25q16bv_TransferByte
	.thumb
	.thumb_func
	.ascii	"w25q16bv_TransferByte\000"
	.align	2
	.word	4278190104
	.type	w25q16bv_TransferByte, %function
w25q16bv_TransferByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	ldr	r2, .L6	@ tmp143,
	ldr	r1, [r2, #0]	@ D.4929, MEM[(volatile long unsigned int *)1074003980B]
	and	r3, r1, #18	@ tmp144, D.4929,
	cmp	r3, #2	@ tmp144,
	bne	.L2	@,
	ldr	r3, .L6+4	@ tmp145,
	str	r0, [r3, #0]	@ data, MEM[(volatile long unsigned int *)1074003976B]
.L3:
	ldr	r2, .L6	@ tmp146,
	ldr	r1, [r2, #0]	@ D.4933, MEM[(volatile long unsigned int *)1074003980B]
	and	r0, r1, #20	@ tmp147, D.4933,
	cmp	r0, #4	@ tmp147,
	bne	.L3	@,
	ldr	r0, .L6+4	@ tmp148,
	ldr	r3, [r0, #0]	@ D.4936, MEM[(volatile long unsigned int *)1074003976B]
	uxtb	r0, r3	@, D.4936
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	1074003980
	.word	1074003976
	.size	w25q16bv_TransferByte, .-w25q16bv_TransferByte
	.section	.text.w25q16bvGetStatus,"ax",%progbits
	.align	1
	.global	w25q16bvGetStatus
	.thumb
	.thumb_func
	.ascii	"w25q16bvGetStatus\000"
	.align	2
	.word	4278190100
	.type	w25q16bvGetStatus, %function
w25q16bvGetStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L9	@ tmp137,
	movs	r0, #0	@ tmp138,
	str	r0, [r4, #0]	@ tmp138, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #5	@,
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	movw	r3, #4095	@ tmp141,
	str	r3, [r4, #0]	@ tmp141, MEM[(volatile long unsigned int *)1342177296B]
	and	r0, r0, #3	@,,
	pop	{r4, pc}	@
.L10:
	.align	2
.L9:
	.word	1342177296
	.size	w25q16bvGetStatus, .-w25q16bvGetStatus
	.section	.text.w25q16bvWaitForReady,"ax",%progbits
	.align	1
	.global	w25q16bvWaitForReady
	.thumb
	.thumb_func
	.ascii	"w25q16bvWaitForReady\000"
	.align	2
	.word	4278190104
	.type	w25q16bvWaitForReady, %function
w25q16bvWaitForReady:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r4, #255	@ ivtmp.19,
.L13:
	bl	w25q16bvGetStatus	@
	ands	r0, r0, #1	@ tmp143,,
	beq	.L12	@,
	subs	r4, r4, #1	@ ivtmp.19, ivtmp.19,
	bne	.L13	@,
	movs	r0, #2	@ D.4924,
.L12:
	pop	{r4, pc}	@
	.size	w25q16bvWaitForReady, .-w25q16bvWaitForReady
	.section	.text.w25q16bvGetUniqueID,"ax",%progbits
	.align	1
	.global	w25q16bvGetUniqueID
	.thumb
	.thumb_func
	.ascii	"w25q16bvGetUniqueID\000"
	.align	2
	.word	4278190100
	.type	w25q16bvGetUniqueID, %function
w25q16bvGetUniqueID:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r3, .L19	@ tmp185,
	movs	r4, #0	@ tmp186,
	str	r4, [r3, #0]	@ tmp186, MEM[(volatile long unsigned int *)1342177296B]
	mov	r5, r0	@ buffer, buffer
	movs	r0, #75	@,
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
.L17:
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	strb	r0, [r5, r4]	@, MEM[base: buffer_4(D), index: ivtmp.30_8, offset: 0B]
	adds	r4, r4, #1	@ ivtmp.30, ivtmp.30,
	cmp	r4, #8	@ ivtmp.30,
	bne	.L17	@,
	ldr	r0, .L19	@ tmp189,
	movw	r2, #4095	@ tmp190,
	str	r2, [r0, #0]	@ tmp190, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r3, r4, r5, pc}	@
.L20:
	.align	2
.L19:
	.word	1342177296
	.size	w25q16bvGetUniqueID, .-w25q16bvGetUniqueID
	.section	.text.spiflashInit,"ax",%progbits
	.align	1
	.global	spiflashInit
	.thumb
	.thumb_func
	.ascii	"spiflashInit\000"
	.align	2
	.word	4278190096
	.type	spiflashInit, %function
spiflashInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #0	@,
	push	{r3, lr}	@
	mov	r2, r0	@,
	mov	r1, r0	@,
	bl	sspInit	@
	ldr	r3, .L22	@ tmp134,
	movs	r2, #1	@ tmp135,
	strb	r2, [r3, #0]	@ tmp135, _w25q16bvInitialised
	pop	{r3, pc}	@
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.size	spiflashInit, .-spiflashInit
	.section	.text.spiflashGetSizeInfo,"ax",%progbits
	.align	1
	.global	spiflashGetSizeInfo
	.thumb
	.thumb_func
	.ascii	"spiflashGetSizeInfo\000"
	.align	2
	.word	4278190100
	.type	spiflashGetSizeInfo, %function
spiflashGetSizeInfo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #256	@,
	mov	r2, #8192	@ tmp137,
	mov	ip, #4096	@,
	stmia	r0, {r1, r2, ip}	@ .result_ptr,,,
	mov	r2, #512	@ tmp138,
	str	r2, [r0, #12]	@ tmp138, <retval>.sectorCount
	bx	lr	@
	.size	spiflashGetSizeInfo, .-spiflashGetSizeInfo
	.section	.text.spiflashGetManufacturerInfo,"ax",%progbits
	.align	1
	.global	spiflashGetManufacturerInfo
	.thumb
	.thumb_func
	.ascii	"spiflashGetManufacturerInfo\000"
	.align	2
	.word	4278190108
	.type	spiflashGetManufacturerInfo, %function
spiflashGetManufacturerInfo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ manufID, manufID
	ldr	r0, .L27	@ tmp139,
	mov	r7, r1	@ deviceID, deviceID
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	cbnz	r3, .L26	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L26:
	ldr	r6, .L27+4	@ tmp141,
	movs	r5, #0	@ tmp142,
	str	r5, [r6, #0]	@ tmp142, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #144	@,
	bl	w25q16bv_TransferByte	@
	mov	r0, r5	@, tmp142
	bl	w25q16bv_TransferByte	@
	mov	r0, r5	@, tmp142
	bl	w25q16bv_TransferByte	@
	mov	r0, r5	@, tmp142
	bl	w25q16bv_TransferByte	@
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	strb	r0, [r4, #0]	@, *manufID_4(D)
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	movw	r1, #4095	@ tmp148,
	strb	r0, [r7, #0]	@, *deviceID_6(D)
	str	r1, [r6, #0]	@ tmp148, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r3, r4, r5, r6, r7, pc}	@
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	1342177296
	.size	spiflashGetManufacturerInfo, .-spiflashGetManufacturerInfo
	.section	.text.spiflashWriteEnable,"ax",%progbits
	.align	1
	.global	spiflashWriteEnable
	.thumb
	.thumb_func
	.ascii	"spiflashWriteEnable\000"
	.align	2
	.word	4278190100
	.type	spiflashWriteEnable, %function
spiflashWriteEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ enable, enable
	ldr	r0, .L33	@ tmp137,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	cbnz	r3, .L30	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L30:
	ldr	r4, .L33+4	@ tmp139,
	movs	r2, #0	@ tmp140,
	str	r2, [r4, #0]	@ tmp140, MEM[(volatile long unsigned int *)1342177296B]
	cmp	r5, r2	@ enable,
	ite	eq	@
	moveq	r0, #4	@,,
	movne	r0, #6	@,,
	bl	w25q16bv_TransferByte	@
	movw	r1, #4095	@ tmp142,
	str	r1, [r4, #0]	@ tmp142, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r3, r4, r5, pc}	@
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	1342177296
	.size	spiflashWriteEnable, .-spiflashWriteEnable
	.section	.text.spiflashReadBuffer,"ax",%progbits
	.align	1
	.global	spiflashReadBuffer
	.thumb
	.thumb_func
	.ascii	"spiflashReadBuffer\000"
	.align	2
	.word	4278190100
	.type	spiflashReadBuffer, %function
spiflashReadBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L43	@ tmp151,
	mov	r5, r1	@ buffer, buffer
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	mov	r7, r2	@ len, len
	cbnz	r3, .L36	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L36:
	ldr	r1, .L43+4	@ tmp153,
	cmp	r4, r1	@ address, tmp153
	bhi	.L40	@,
	bl	w25q16bvWaitForReady	@
	cbnz	r0, .L41	@ tmp154,
	ldr	r3, .L43+8	@ tmp155,
	lsrs	r6, r4, #16	@ tmp157, address,
	str	r0, [r3, #0]	@ tmp154, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #3	@,
	bl	w25q16bv_TransferByte	@
	uxtb	r0, r6	@, tmp157
	bl	w25q16bv_TransferByte	@
	lsrs	r2, r4, #8	@ tmp159, address,
	uxtb	r0, r2	@, tmp159
	bl	w25q16bv_TransferByte	@
	uxtb	r0, r4	@, address
	bl	w25q16bv_TransferByte	@
	mov	r6, r4	@ a, address
	b	.L38	@
.L39:
	cmp	r6, #2097152	@ a,
	beq	.L42	@,
	movs	r0, #255	@,
	bl	w25q16bv_TransferByte	@
	adds	r6, r6, #1	@ a, a,
	strb	r0, [r5], #1	@, MEM[base: D.5201_61, offset: 0B]
.L38:
	adds	r0, r7, r4	@ tmp164, len, address
	cmp	r6, r0	@ a, tmp164
	bcc	.L39	@,
	ldr	r2, .L43+8	@ tmp165,
	movw	r1, #4095	@ tmp166,
	str	r1, [r2, #0]	@ tmp166, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #0	@ D.4886,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L40:
	movs	r0, #1	@ D.4886,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L41:
	movs	r0, #2	@ D.4886,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L42:
	movs	r0, #5	@ D.4886,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.word	2097150
	.word	1342177296
	.size	spiflashReadBuffer, .-spiflashReadBuffer
	.section	.text.spiflashEraseSector,"ax",%progbits
	.align	1
	.global	spiflashEraseSector
	.thumb
	.thumb_func
	.ascii	"spiflashEraseSector\000"
	.align	2
	.word	4278190100
	.type	spiflashEraseSector, %function
spiflashEraseSector:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r0	@ sectorNumber, sectorNumber
	ldr	r0, .L53	@ tmp150,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	cbnz	r3, .L46	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L46:
	cmp	r6, #512	@ sectorNumber,
	bcs	.L49	@,
	bl	w25q16bvWaitForReady	@
	mov	r4, r0	@ tmp153,
	cbnz	r0, .L50	@ tmp153,
	movs	r0, #1	@,
	bl	spiflashWriteEnable	@
	bl	w25q16bvGetStatus	@
	lsls	r3, r0, #30	@,,
	bpl	.L51	@,
	ldr	r5, .L53+4	@ tmp156,
	lsls	r6, r6, #12	@ address, sectorNumber,
	str	r4, [r5, #0]	@ tmp153, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #32	@,
	bl	w25q16bv_TransferByte	@
	lsrs	r3, r6, #16	@ tmp158, address,
	uxtb	r0, r3	@, tmp158
	bl	w25q16bv_TransferByte	@
	lsrs	r2, r6, #8	@ tmp160, address,
	and	r0, r2, #240	@, tmp160,
	bl	w25q16bv_TransferByte	@
	mov	r0, r4	@, tmp153
	bl	w25q16bv_TransferByte	@
	movw	r1, #4095	@ tmp163,
	str	r1, [r5, #0]	@ tmp163, MEM[(volatile long unsigned int *)1342177296B]
.L48:
	bl	w25q16bvGetStatus	@
	ands	r0, r0, #1	@ tmp165,,
	bne	.L48	@,
	pop	{r4, r5, r6, pc}	@
.L49:
	movs	r0, #1	@ D.4862,
	pop	{r4, r5, r6, pc}	@
.L50:
	movs	r0, #2	@ D.4862,
	pop	{r4, r5, r6, pc}	@
.L51:
	movs	r0, #4	@ D.4862,
	pop	{r4, r5, r6, pc}	@
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.word	1342177296
	.size	spiflashEraseSector, .-spiflashEraseSector
	.section	.text.spiflashEraseChip,"ax",%progbits
	.align	1
	.global	spiflashEraseChip
	.thumb
	.thumb_func
	.ascii	"spiflashEraseChip\000"
	.align	2
	.word	4278190100
	.type	spiflashEraseChip, %function
spiflashEraseChip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L62	@ tmp144,
	push	{r3, r4, r5, lr}	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	cbnz	r3, .L56	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L56:
	bl	w25q16bvWaitForReady	@
	mov	r5, r0	@ tmp146,
	cbnz	r0, .L59	@ tmp146,
	movs	r0, #1	@,
	bl	spiflashWriteEnable	@
	bl	w25q16bvGetStatus	@
	lsls	r2, r0, #30	@,,
	bpl	.L60	@,
	ldr	r4, .L62+4	@ tmp149,
	movs	r0, #96	@,
	str	r5, [r4, #0]	@ tmp146, MEM[(volatile long unsigned int *)1342177296B]
	bl	w25q16bv_TransferByte	@
	movw	r1, #4095	@ tmp152,
	str	r1, [r4, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342177296B]
.L58:
	bl	w25q16bvGetStatus	@
	ands	r0, r0, #1	@ tmp154,,
	bne	.L58	@,
	pop	{r3, r4, r5, pc}	@
.L59:
	movs	r0, #2	@ D.4846,
	pop	{r3, r4, r5, pc}	@
.L60:
	movs	r0, #4	@ D.4846,
	pop	{r3, r4, r5, pc}	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.word	1342177296
	.size	spiflashEraseChip, .-spiflashEraseChip
	.section	.text.spiflashWritePage,"ax",%progbits
	.align	1
	.global	spiflashWritePage
	.thumb
	.thumb_func
	.ascii	"spiflashWritePage\000"
	.align	2
	.word	4278190100
	.type	spiflashWritePage, %function
spiflashWritePage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r4, r0	@ address, address
	ldr	r0, .L78	@ tmp155,
	mov	r5, r1	@ buffer, buffer
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _w25q16bvInitialised, _w25q16bvInitialised
	mov	r6, r2	@ len, len
	cbnz	r3, .L65	@ _w25q16bvInitialised,
	bl	spiflashInit	@
.L65:
	ldr	r1, .L78+4	@ tmp157,
	cmp	r4, r1	@ address, tmp157
	bhi	.L71	@,
	cmp	r6, #256	@ len,
	bhi	.L72	@,
	uxtb	r8, r4	@ address, address
	add	r2, r6, r8	@ tmp159, len, address
	cmp	r2, #256	@ tmp159,
	bhi	.L73	@,
	bl	w25q16bvWaitForReady	@
	mov	r7, r0	@ tmp160,
	cmp	r0, #0	@ tmp160
	bne	.L74	@
	movs	r0, #1	@,
	bl	spiflashWriteEnable	@
	bl	w25q16bvGetStatus	@
	lsls	r1, r0, #30	@,,
	bpl	.L75	@,
	ldr	r0, .L78+8	@ tmp163,
	str	r7, [r0, #0]	@ tmp160, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #2	@,
	bl	w25q16bv_TransferByte	@
	lsrs	r3, r4, #16	@ tmp165, address,
	uxtb	r0, r3	@, tmp165
	lsrs	r4, r4, #8	@ tmp167, address,
	bl	w25q16bv_TransferByte	@
	uxtb	r0, r4	@, tmp167
	bl	w25q16bv_TransferByte	@
	cmp	r6, #256	@ len,
	ite	eq
	moveq	r0, r7	@, tmp160
	movne	r0, r8	@, address
	bl	w25q16bv_TransferByte	@
	movs	r4, #0	@ i,
	b	.L69	@
.L70:
	ldrb	r0, [r5, r4]	@ zero_extendqisi2	@, MEM[base: buffer_24(D), index: i_1, offset: 0B]
	bl	w25q16bv_TransferByte	@
	adds	r4, r4, #1	@ i, i,
.L69:
	cmp	r4, r6	@ i, len
	bne	.L70	@,
	ldr	r2, .L78+8	@ tmp171,
	movw	r1, #4095	@ tmp172,
	str	r1, [r2, #0]	@ tmp172, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #3	@,
	bl	systickDelay	@
	bl	w25q16bvWaitForReady	@
	cmp	r0, #0	@,
	ite	ne	@
	movne	r0, #2	@, D.4799,
	moveq	r0, #0	@, D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L71:
	movs	r0, #1	@ D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L72:
	movs	r0, #9	@ D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L73:
	movs	r0, #10	@ D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L74:
	movs	r0, #2	@ D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L75:
	movs	r0, #4	@ D.4799,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L79:
	.align	2
.L78:
	.word	.LANCHOR0
	.word	2097150
	.word	1342177296
	.size	spiflashWritePage, .-spiflashWritePage
	.section	.text.spiflashWrite,"ax",%progbits
	.align	1
	.global	spiflashWrite
	.thumb
	.thumb_func
	.ascii	"spiflashWrite\000"
	.align	2
	.word	4278190096
	.type	spiflashWrite, %function
spiflashWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	uxtb	ip, r0	@ address, address
	add	r3, r2, ip	@ tmp147, len, address
	cmp	r3, #256	@ tmp147,
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r5, r0	@ address, address
	mov	r8, r1	@ buffer, buffer
	mov	r4, r2	@ len, len
	bhi	.L85	@,
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	spiflashWritePage	@
.L84:
	uxtb	r7, r5	@ address, address
	rsb	r7, r7, #256	@ bytestowrite, address,
	mov	r0, r5	@, address
	add	r1, r8, r6	@, buffer, bufferoffset
	mov	r2, r7	@, bytestowrite
	bl	spiflashWritePage	@
	cbnz	r0, .L82	@ error,
	subs	r4, r4, r7	@ len, len, bytestowrite
	cmp	r4, #256	@ len,
	add	r5, r5, r7	@ address, address, bytestowrite
	add	r6, r6, r7	@ bufferoffset, bufferoffset, bytestowrite
	bhi	.L86	@,
	mov	r2, r4	@, len
	mov	r0, r5	@, address
	add	r1, r8, r6	@, buffer, bufferoffset
	bl	spiflashWritePage	@
	mov	r4, r0	@ tmp153,
	cbz	r0, .L88	@ tmp153,
	b	.L82	@
.L85:
	movs	r6, #0	@ bufferoffset,
.L86:
	cmp	r4, #0	@ len
	bne	.L84	@
.L88:
	mov	r0, r4	@ error, len
.L82:
	pop	{r4, r5, r6, r7, r8, pc}	@
	.size	spiflashWrite, .-spiflashWrite
	.section	.bss._w25q16bvInitialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_w25q16bvInitialised, %object
	.size	_w25q16bvInitialised, 1
_w25q16bvInitialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
