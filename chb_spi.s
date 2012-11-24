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
	.file	"chb_spi.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed chb_spi.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip chb_spi.o -Os -Wall
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

	.section	.text.chb_spi_init,"ax",%progbits
	.align	1
	.global	chb_spi_init
	.thumb
	.thumb_func
	.ascii	"chb_spi_init\000"
	.align	2
	.word	4278190096
	.type	chb_spi_init, %function
chb_spi_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #1	@,
	push	{r3, lr}	@
	mov	r2, r1	@,
	movs	r0, #0	@,
	bl	sspInit	@
	ldr	r3, .L2	@ tmp134,
	movw	r2, #4095	@ tmp135,
	str	r2, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r3, pc}	@
.L3:
	.align	2
.L2:
	.word	1342177296
	.size	chb_spi_init, .-chb_spi_init
	.section	.text.chb_xfer_byte,"ax",%progbits
	.align	1
	.global	chb_xfer_byte
	.thumb
	.thumb_func
	.ascii	"chb_xfer_byte\000"
	.align	2
	.word	4278190096
	.type	chb_xfer_byte, %function
chb_xfer_byte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L5:
	ldr	r2, .L9	@ tmp143,
	ldr	r1, [r2, #0]	@ D.4665, MEM[(volatile long unsigned int *)1074003980B]
	and	r3, r1, #18	@ tmp144, D.4665,
	cmp	r3, #2	@ tmp144,
	bne	.L5	@,
	ldr	r3, .L9+4	@ tmp145,
	str	r0, [r3, #0]	@ data, MEM[(volatile long unsigned int *)1074003976B]
.L6:
	ldr	r2, .L9	@ tmp146,
	ldr	r1, [r2, #0]	@ D.4669, MEM[(volatile long unsigned int *)1074003980B]
	and	r0, r1, #20	@ tmp147, D.4669,
	cmp	r0, #4	@ tmp147,
	bne	.L6	@,
	ldr	r0, .L9+4	@ tmp148,
	ldr	r3, [r0, #0]	@ D.4672, MEM[(volatile long unsigned int *)1074003976B]
	uxtb	r0, r3	@, D.4672
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	1074003980
	.word	1074003976
	.size	chb_xfer_byte, .-chb_xfer_byte
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
