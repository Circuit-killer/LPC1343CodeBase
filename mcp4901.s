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
	.file	"mcp4901.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed mcp4901.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip mcp4901.o -Os -Wall
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

	.section	.text.mcpWriteData,"ax",%progbits
	.align	1
	.global	mcpWriteData
	.thumb
	.thumb_func
	.ascii	"mcpWriteData\000"
	.align	2
	.word	4278190096
	.type	mcpWriteData, %function
mcpWriteData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #8	@ ivtmp.8,
.L4:
	ldr	r3, .L6	@ tmp169,
	tst	r0, #128	@ data,
	ldr	r1, [r3, #0]	@ D.4666,
	bic	r1, r1, #256	@ D.4667, D.4666,
	str	r1, [r3, #0]	@ D.4667,
	beq	.L3	@,
	ldr	r1, [r3, #0]	@ D.4668, MEM[(volatile long unsigned int *)1342324732B]
	orr	r1, r1, #256	@ D.4669, D.4668,
	str	r1, [r3, #0]	@ D.4669, MEM[(volatile long unsigned int *)1342324732B]
.L3:
	ldr	r3, .L6	@ tmp162,
	subs	r2, r2, #1	@ tmp168, ivtmp.8,
	ldr	r1, [r3, #0]	@ D.4673, MEM[(volatile long unsigned int *)1342324732B]
	lsls	r0, r0, #1	@ tmp161, data,
	bic	r1, r1, #128	@ D.4674, D.4673,
	str	r1, [r3, #0]	@ D.4674, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r1, [r3, #0]	@ D.4675, MEM[(volatile long unsigned int *)1342324732B]
	uxtb	r2, r2	@ ivtmp.8, tmp168
	bic	r1, r1, #128	@ D.4676, D.4675,
	str	r1, [r3, #0]	@ D.4676, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r1, [r3, #0]	@ D.4677, MEM[(volatile long unsigned int *)1342324732B]
	uxtb	r0, r0	@ data, tmp161
	orr	r1, r1, #128	@ D.4678, D.4677,
	str	r1, [r3, #0]	@ D.4678, MEM[(volatile long unsigned int *)1342324732B]
	cmp	r2, #0	@ ivtmp.8
	bne	.L4	@
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	1342324732
	.size	mcpWriteData, .-mcpWriteData
	.section	.text.mcpWriteData16,"ax",%progbits
	.align	1
	.global	mcpWriteData16
	.thumb
	.thumb_func
	.ascii	"mcpWriteData16\000"
	.align	2
	.word	4278190096
	.type	mcpWriteData16, %function
mcpWriteData16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ data, data
	lsrs	r0, r0, #8	@, data,
	bl	mcpWriteData	@
	uxtb	r0, r4	@, data
	pop	{r4, lr}	@
	b	mcpWriteData	@
	.size	mcpWriteData16, .-mcpWriteData16
	.section	.text.mcp4901Init,"ax",%progbits
	.align	1
	.global	mcp4901Init
	.thumb
	.thumb_func
	.ascii	"mcp4901Init\000"
	.align	2
	.word	4278190092
	.type	mcp4901Init, %function
mcp4901Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r3, .L10	@ tmp134,
	mov	r2, #12288	@ movhi	@,
	strh	r2, [r3, #0]	@ movhi	@, settings
	movs	r0, #2	@,
	movs	r1, #0	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #6	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #7	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #8	@,
	movs	r2, #1	@,
	pop	{r3, lr}	@
	b	gpioSetDir	@
.L11:
	.align	2
.L10:
	.word	settings
	.size	mcp4901Init, .-mcp4901Init
	.section	.text.mcp4901ChangeSettings,"ax",%progbits
	.align	1
	.global	mcp4901ChangeSettings
	.thumb
	.thumb_func
	.ascii	"mcp4901ChangeSettings\000"
	.align	2
	.word	4278190104
	.type	mcp4901ChangeSettings, %function
mcp4901ChangeSettings:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #2	@ tmp152, BUFFER,
	orr	ip, r3, r1, lsl #1	@, tmp155, tmp152, GAIN,
	eor	r2, r2, #1	@ tmp157, SHUTDOWN,
	orr	r0, ip, r2	@ tmp160, tmp155, tmp157
	ldr	r3, .L13	@ tmp150,
	lsls	r1, r0, #12	@ tmp162, tmp160,
	strh	r1, [r3, #0]	@ movhi	@ tmp162, settings
	bx	lr	@
.L14:
	.align	2
.L13:
	.word	settings
	.size	mcp4901ChangeSettings, .-mcp4901ChangeSettings
	.section	.text.mcp4901LDAC,"ax",%progbits
	.align	1
	.global	mcp4901LDAC
	.thumb
	.thumb_func
	.ascii	"mcp4901LDAC\000"
	.align	2
	.word	4278190092
	.type	mcp4901LDAC, %function
mcp4901LDAC:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16	@ tmp134,
	movs	r0, #0	@ tmp135,
	movw	r2, #4095	@ tmp137,
	str	r0, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342308356B]
	str	r2, [r3, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342308356B]
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	1342308356
	.size	mcp4901LDAC, .-mcp4901LDAC
	.section	.text.mcp4901SetVoltage,"ax",%progbits
	.align	1
	.global	mcp4901SetVoltage
	.thumb
	.thumb_func
	.ascii	"mcp4901SetVoltage\000"
	.align	2
	.word	4278190100
	.type	mcp4901SetVoltage, %function
mcp4901SetVoltage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L19	@ tmp149,
	ldrh	ip, [r4, #0]	@ tmp152, settings
	ldr	r4, .L19+4	@ tmp153,
	orr	r0, ip, r0, lsl #4	@,, tmp152, output,
	ldr	r1, [r4, #0]	@ D.4628, MEM[(volatile long unsigned int *)1342324732B]
	bic	r3, r1, #64	@ D.4629, D.4628,
	str	r3, [r4, #0]	@ D.4629, MEM[(volatile long unsigned int *)1342324732B]
	bl	mcpWriteData16	@
	ldr	r2, [r4, #0]	@ D.4630, MEM[(volatile long unsigned int *)1342324732B]
	bic	r1, r2, #64	@ D.4631, D.4630,
	str	r1, [r4, #0]	@ D.4631, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r0, [r4, #0]	@ D.4632, MEM[(volatile long unsigned int *)1342324732B]
	orr	r3, r0, #64	@ D.4633, D.4632,
	str	r3, [r4, #0]	@ D.4633, MEM[(volatile long unsigned int *)1342324732B]
	pop	{r4, pc}	@
.L20:
	.align	2
.L19:
	.word	settings
	.word	1342324732
	.size	mcp4901SetVoltage, .-mcp4901SetVoltage
	.comm	settings,2,2
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
