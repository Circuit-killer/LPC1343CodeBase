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
	.file	"cmd_uart.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cmd_uart.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cmd_uart.o -Os -Wall
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

	.section	.text.cmd_uart,"ax",%progbits
	.align	1
	.global	cmd_uart
	.thumb
	.thumb_func
	.ascii	"cmd_uart\000"
	.align	2
	.word	4278190092
	.type	cmd_uart, %function
cmd_uart:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	cbz	r0, .L2	@ argc,
	ldr	r0, [r1, #0]	@, *argv_2(D)
	add	r1, sp, #4	@,,
	bl	getNumber	@
	ldr	r1, [sp, #4]	@ speed.0, speed
	ldr	r3, .L7	@ tmp146,
	sub	r2, r1, #9600	@ tmp145, speed.0,
	cmp	r2, r3	@ tmp145, tmp146
	bls	.L3	@,
	ldr	r0, .L7+4	@,
	b	.L6	@
.L3:
	ldr	r2, .L7+8	@,
	ldr	r0, .L7+12	@,
	bl	printf	@
	movs	r0, #32	@,
	ldr	r1, [sp, #4]	@, speed
	bl	eepromWriteU32	@
	b	.L1	@
.L2:
	movs	r0, #32	@,
	bl	eepromReadU32	@
	ldr	r2, .L7	@ tmp148,
	mov	r1, r0	@ uartEEPROM,
	sub	r0, r0, #9600	@ tmp147, uartEEPROM,
	cmp	r0, r2	@ tmp147, tmp148
	bls	.L5	@,
	ldr	r0, .L7+16	@,
.L6:
	ldr	r1, .L7+8	@,
	bl	printf	@
	b	.L1	@
.L5:
	ldr	r0, .L7+20	@,
	ldr	r2, .L7+8	@,
	bl	printf	@
.L1:
	pop	{r1, r2, r3, pc}
.L8:
	.align	2
.L7:
	.word	105600
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	cmd_uart, .-cmd_uart
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Invalid baud rate: 9600-115200 required.%s\000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"Setting UART to: %d%s\000"
.LC3:
	.ascii	"UART not set in EEPROM%s\000"
.LC4:
	.ascii	"%u%s\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
