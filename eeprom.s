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
	.file	"eeprom.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed eeprom.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip eeprom.o -Os -Wall
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

	.section	.text.eepromCheckAddress,"ax",%progbits
	.align	1
	.global	eepromCheckAddress
	.thumb
	.thumb_func
	.ascii	"eepromCheckAddress\000"
	.align	2
	.word	4278190100
	.type	eepromCheckAddress, %function
eepromCheckAddress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #4096	@ addr,
	ite	cc
	movcc	r0, #0	@,
	movcs	r0, #1	@,
	bx	lr	@
	.size	eepromCheckAddress, .-eepromCheckAddress
	.section	.text.eepromReadU8,"ax",%progbits
	.align	1
	.global	eepromReadU8
	.thumb
	.thumb_func
	.ascii	"eepromReadU8\000"
	.align	2
	.word	4278190096
	.type	eepromReadU8, %function
eepromReadU8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L3	@ tmp137,
	movs	r2, #1	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@, buf
	pop	{r4, pc}	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	eepromReadU8, .-eepromReadU8
	.section	.text.eepromReadS8,"ax",%progbits
	.align	1
	.global	eepromReadS8
	.thumb
	.thumb_func
	.ascii	"eepromReadS8\000"
	.align	2
	.word	4278190096
	.type	eepromReadS8, %function
eepromReadS8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L6	@ tmp137,
	movs	r2, #1	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	add	r0, sp, #7	@,,
	mov	r1, r4	@, tmp137
	movs	r2, #1	@,
	bl	memcpy	@
	ldrsb	r0, [sp, #7]	@, results
	pop	{r2, r3, r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	eepromReadS8, .-eepromReadS8
	.section	.text.eepromReadU16,"ax",%progbits
	.align	1
	.global	eepromReadU16
	.thumb
	.thumb_func
	.ascii	"eepromReadU16\000"
	.align	2
	.word	4278190096
	.type	eepromReadU16, %function
eepromReadU16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L9	@ tmp137,
	movs	r2, #2	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	add	r0, sp, #6	@,,
	mov	r1, r4	@, tmp137
	movs	r2, #2	@,
	bl	memcpy	@
	ldrh	r0, [sp, #6]	@, results
	pop	{r2, r3, r4, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.size	eepromReadU16, .-eepromReadU16
	.section	.text.eepromReadS16,"ax",%progbits
	.align	1
	.global	eepromReadS16
	.thumb
	.thumb_func
	.ascii	"eepromReadS16\000"
	.align	2
	.word	4278190096
	.type	eepromReadS16, %function
eepromReadS16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L12	@ tmp137,
	movs	r2, #2	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	add	r0, sp, #6	@,,
	mov	r1, r4	@, tmp137
	movs	r2, #2	@,
	bl	memcpy	@
	ldrsh	r0, [sp, #6]	@, results
	pop	{r2, r3, r4, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	eepromReadS16, .-eepromReadS16
	.section	.text.eepromReadU32,"ax",%progbits
	.align	1
	.global	eepromReadU32
	.thumb
	.thumb_func
	.ascii	"eepromReadU32\000"
	.align	2
	.word	4278190096
	.type	eepromReadU32, %function
eepromReadU32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L15	@ tmp137,
	movs	r2, #4	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	add	r0, sp, #4	@,,
	mov	r1, r4	@, tmp137
	movs	r2, #4	@,
	bl	memcpy	@
	ldr	r0, [sp, #4]	@, results
	pop	{r2, r3, r4, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	eepromReadU32, .-eepromReadU32
	.section	.text.eepromReadS32,"ax",%progbits
	.align	1
	.global	eepromReadS32
	.thumb
	.thumb_func
	.ascii	"eepromReadS32\000"
	.align	2
	.word	4278190096
	.type	eepromReadS32, %function
eepromReadS32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L18	@ tmp137,
	movs	r2, #4	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	add	r0, sp, #4	@,,
	mov	r1, r4	@, tmp137
	movs	r2, #4	@,
	bl	memcpy	@
	ldr	r0, [sp, #4]	@, results
	pop	{r2, r3, r4, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	eepromReadS32, .-eepromReadS32
	.section	.text.eepromReadU64,"ax",%progbits
	.align	1
	.global	eepromReadU64
	.thumb
	.thumb_func
	.ascii	"eepromReadU64\000"
	.align	2
	.word	4278190096
	.type	eepromReadU64, %function
eepromReadU64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L21	@ tmp137,
	movs	r2, #8	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	mov	r1, r4	@, tmp137
	mov	r0, sp	@,
	movs	r2, #8	@,
	bl	memcpy	@
	ldmia	sp, {r0, r1}	@,,
	pop	{r2, r3, r4, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.size	eepromReadU64, .-eepromReadU64
	.section	.text.eepromReadS64,"ax",%progbits
	.align	1
	.global	eepromReadS64
	.thumb
	.thumb_func
	.ascii	"eepromReadS64\000"
	.align	2
	.word	4278190096
	.type	eepromReadS64, %function
eepromReadS64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L24	@ tmp137,
	movs	r2, #8	@,
	mov	r1, r4	@, tmp137
	bl	mcp24aaReadBuffer	@
	mov	r1, r4	@, tmp137
	mov	r0, sp	@,
	movs	r2, #8	@,
	bl	memcpy	@
	ldmia	sp, {r0, r1}	@,,
	pop	{r2, r3, r4, pc}
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.size	eepromReadS64, .-eepromReadS64
	.section	.text.eepromReadBuffer,"ax",%progbits
	.align	1
	.global	eepromReadBuffer
	.thumb
	.thumb_func
	.ascii	"eepromReadBuffer\000"
	.align	2
	.word	4278190100
	.type	eepromReadBuffer, %function
eepromReadBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	mcp24aaReadBuffer	@
	.size	eepromReadBuffer, .-eepromReadBuffer
	.section	.text.eepromWriteU8,"ax",%progbits
	.align	1
	.global	eepromWriteU8
	.thumb
	.thumb_func
	.ascii	"eepromWriteU8\000"
	.align	2
	.word	4278190096
	.type	eepromWriteU8, %function
eepromWriteU8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp137,,
	strb	r1, [r3, #-1]!	@ value, value
	mov	r1, r3	@, tmp137
	movs	r2, #1	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteU8, .-eepromWriteU8
	.section	.text.eepromWriteS8,"ax",%progbits
	.align	1
	.global	eepromWriteS8
	.thumb
	.thumb_func
	.ascii	"eepromWriteS8\000"
	.align	2
	.word	4278190096
	.type	eepromWriteS8, %function
eepromWriteS8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp137,,
	strb	r1, [r3, #-1]!	@ value, value
	mov	r1, r3	@, tmp137
	movs	r2, #1	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteS8, .-eepromWriteS8
	.section	.text.eepromWriteU16,"ax",%progbits
	.align	1
	.global	eepromWriteU16
	.thumb
	.thumb_func
	.ascii	"eepromWriteU16\000"
	.align	2
	.word	4278190096
	.type	eepromWriteU16, %function
eepromWriteU16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp137,,
	strh	r1, [r3, #-2]!	@ movhi	@ value, value
	mov	r1, r3	@, tmp137
	movs	r2, #2	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteU16, .-eepromWriteU16
	.section	.text.eepromWriteS16,"ax",%progbits
	.align	1
	.global	eepromWriteS16
	.thumb
	.thumb_func
	.ascii	"eepromWriteS16\000"
	.align	2
	.word	4278190096
	.type	eepromWriteS16, %function
eepromWriteS16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp137,,
	strh	r1, [r3, #-2]!	@ movhi	@ value, value
	mov	r1, r3	@, tmp137
	movs	r2, #2	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteS16, .-eepromWriteS16
	.section	.text.eepromWriteU32,"ax",%progbits
	.align	1
	.global	eepromWriteU32
	.thumb
	.thumb_func
	.ascii	"eepromWriteU32\000"
	.align	2
	.word	4278190096
	.type	eepromWriteU32, %function
eepromWriteU32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp135,,
	str	r1, [r3, #-4]!	@ value, value
	mov	r1, r3	@, tmp135
	movs	r2, #4	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteU32, .-eepromWriteU32
	.section	.text.eepromWriteS32,"ax",%progbits
	.align	1
	.global	eepromWriteS32
	.thumb
	.thumb_func
	.ascii	"eepromWriteS32\000"
	.align	2
	.word	4278190096
	.type	eepromWriteS32, %function
eepromWriteS32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r3, sp, #8	@ tmp135,,
	str	r1, [r3, #-4]!	@ value, value
	mov	r1, r3	@, tmp135
	movs	r2, #4	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteS32, .-eepromWriteS32
	.section	.text.eepromWriteU64,"ax",%progbits
	.align	1
	.global	eepromWriteU64
	.thumb
	.thumb_func
	.ascii	"eepromWriteU64\000"
	.align	2
	.word	4278190096
	.type	eepromWriteU64, %function
eepromWriteU64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r1, sp, #8	@ tmp135,,
	strd	r2, [r1, #-8]!	@ value, value
	mov	r1, sp	@,
	movs	r2, #8	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteU64, .-eepromWriteU64
	.section	.text.eepromWriteS64,"ax",%progbits
	.align	1
	.global	eepromWriteS64
	.thumb
	.thumb_func
	.ascii	"eepromWriteS64\000"
	.align	2
	.word	4278190096
	.type	eepromWriteS64, %function
eepromWriteS64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r1, sp, #8	@ tmp135,,
	strd	r2, [r1, #-8]!	@ value, value
	mov	r1, sp	@,
	movs	r2, #8	@,
	bl	mcp24aaWriteBuffer	@
	pop	{r1, r2, r3, pc}
	.size	eepromWriteS64, .-eepromWriteS64
	.section	.bss.buf,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	buf, %object
	.size	buf, 32
buf:
	.space	32
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
