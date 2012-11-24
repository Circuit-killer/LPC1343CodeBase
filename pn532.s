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
	.file	"pn532.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pn532.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip pn532.o -Os -Wall -ffunction-sections
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

	.section	.text.pn532PrintHex,"ax",%progbits
	.align	1
	.global	pn532PrintHex
	.thumb
	.thumb_func
	.ascii	"pn532PrintHex\000"
	.align	2
	.word	4278190096
	.type	pn532PrintHex, %function
pn532PrintHex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r0	@ pbtData, pbtData
	mov	r5, r1	@ szBytes, szBytes
	movs	r4, #0	@ szPos,
	b	.L2	@
.L3:
	ldrb	r1, [r6, r4]	@ zero_extendqisi2	@, MEM[base: pbtData_4(D), index: szPos_1, offset: 0B]
	ldr	r0, .L4	@,
	bl	printf	@
	adds	r4, r4, #1	@ szPos, szPos,
.L2:
	cmp	r4, r5	@ szPos, szBytes
	bne	.L3	@,
	ldr	r0, .L4+4	@,
	pop	{r4, r5, r6, lr}	@
	b	printf	@
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.size	pn532PrintHex, .-pn532PrintHex
	.section	.text.pn532PrintHexChar,"ax",%progbits
	.align	1
	.global	pn532PrintHexChar
	.thumb
	.thumb_func
	.ascii	"pn532PrintHexChar\000"
	.align	2
	.word	4278190100
	.type	pn532PrintHexChar, %function
pn532PrintHexChar:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r5, r0	@ pbtData, pbtData
	mov	r6, r1	@ szBytes, szBytes
	movs	r4, #0	@ szPos,
	b	.L7	@
.L8:
	ldrb	r1, [r5, r4]	@ zero_extendqisi2	@, MEM[base: pbtData_6(D), index: szPos_1, offset: 0B]
	ldr	r0, .L13	@,
	bl	printf	@
	adds	r4, r4, #1	@ szPos, szPos,
.L7:
	cmp	r4, r6	@ szPos, szBytes
	bne	.L8	@,
	ldr	r0, .L13+4	@,
	bl	printf	@
	movs	r4, #0	@ szPos,
	b	.L9	@
.L11:
	ldrb	r1, [r5, r4]	@ zero_extendqisi2	@ D.4910, MEM[base: pbtData_6(D), index: szPos_2, offset: 0B]
	ldr	r0, .L13+8	@,
	cmp	r1, #31	@ D.4910,
	it	ls	@
	movls	r1, #46	@,,
	bl	printf	@
	adds	r4, r4, #1	@ szPos, szPos,
.L9:
	cmp	r4, r6	@ szPos, szBytes
	bne	.L11	@,
	ldr	r0, .L13+12	@,
	pop	{r4, r5, r6, lr}	@
	b	printf	@
.L14:
	.align	2
.L13:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC1
	.size	pn532PrintHexChar, .-pn532PrintHexChar
	.section	.text.pn532GetPCB,"ax",%progbits
	.align	1
	.global	pn532GetPCB
	.thumb
	.thumb_func
	.ascii	"pn532GetPCB\000"
	.align	2
	.word	4278190092
	.type	pn532GetPCB, %function
pn532GetPCB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L16	@,
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	pn532GetPCB, .-pn532GetPCB
	.section	.text.pn532Init,"ax",%progbits
	.align	1
	.global	pn532Init
	.thumb
	.thumb_func
	.ascii	"pn532Init\000"
	.align	2
	.word	4278190092
	.type	pn532Init, %function
pn532Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L19	@ tmp134,
	movs	r1, #0	@,
	movs	r2, #12	@,
	mov	r0, r4	@, tmp134
	bl	memset	@
	bl	pn532_bus_HWInit	@
	movs	r3, #1	@ tmp136,
	strb	r3, [r4, #0]	@ tmp136, pcb.initialised
	pop	{r4, pc}	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	pn532Init, .-pn532Init
	.section	.text.pn532Read,"ax",%progbits
	.align	1
	.global	pn532Read
	.thumb
	.thumb_func
	.ascii	"pn532Read\000"
	.align	2
	.word	4278190092
	.type	pn532Read, %function
pn532Read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r5, .L26	@ tmp141,
	mov	r4, r0	@ pbtResponse, pbtResponse
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ pcb.initialised, pcb.initialised
	mov	r6, r1	@ pszLen, pszLen
	cbnz	r3, .L22	@ pcb.initialised,
	bl	pn532Init	@
.L22:
	ldrb	r0, [r5, #1]	@ zero_extendqisi2	@ pcb.state, pcb.state
	cbnz	r0, .L23	@ pcb.state,
	bl	pn532_bus_Wakeup	@
	cbnz	r0, .L24	@ wakeupError,
.L23:
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ pcb.state, pcb.state
	cmp	r1, #1	@ pcb.state,
	bne	.L25	@,
	mov	r0, r4	@, pbtResponse
	mov	r1, r6	@, pszLen
	pop	{r4, r5, r6, lr}	@
	b	pn532_bus_ReadResponse	@
.L25:
	movs	r0, #1	@ wakeupError,
.L24:
	pop	{r4, r5, r6, pc}	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	pn532Read, .-pn532Read
	.section	.text.pn532Write,"ax",%progbits
	.align	1
	.global	pn532Write
	.thumb
	.thumb_func
	.ascii	"pn532Write\000"
	.align	2
	.word	4278190092
	.type	pn532Write, %function
pn532Write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r5, .L33	@ tmp141,
	mov	r4, r0	@ abtCommand, abtCommand
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ pcb.initialised, pcb.initialised
	mov	r6, r1	@ szLen, szLen
	cbnz	r3, .L29	@ pcb.initialised,
	bl	pn532Init	@
.L29:
	ldrb	r0, [r5, #1]	@ zero_extendqisi2	@ pcb.state, pcb.state
	cbnz	r0, .L30	@ pcb.state,
	bl	pn532_bus_Wakeup	@
	cbnz	r0, .L31	@ wakeupError,
.L30:
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ pcb.state, pcb.state
	cmp	r1, #1	@ pcb.state,
	bne	.L32	@,
	mov	r0, r4	@, abtCommand
	mov	r1, r6	@, szLen
	pop	{r4, r5, r6, lr}	@
	b	pn532_bus_SendCommand	@
.L32:
	movs	r0, #1	@ wakeupError,
.L31:
	pop	{r4, r5, r6, pc}	@
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	pn532Write, .-pn532Write
	.section	.bss.pcb,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pcb, %object
	.size	pcb, 12
pcb:
	.space	12
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"%02x \000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"%02x\000"
.LC3:
	.ascii	"  \000"
.LC4:
	.ascii	"%c\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
