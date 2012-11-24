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
	.file	"cmd_dmx.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cmd_dmx.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cmd_dmx.o -Os -Wall
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

	.section	.text.cmd_dmx,"ax",%progbits
	.align	1
	.global	cmd_dmx
	.thumb
	.thumb_func
	.ascii	"cmd_dmx\000"
	.align	2
	.word	4278190088
	.type	cmd_dmx, %function
cmd_dmx:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	movs	r0, #0	@ tmp146,
	str	r0, [sp, #0]	@ tmp146, channel
	str	r0, [sp, #4]	@ tmp146, value
	mov	r4, r1	@ argv, argv
	ldr	r0, [r1, #0]	@, *argv_1(D)
	mov	r1, sp	@,
	bl	getNumber	@
	ldr	r3, [sp, #0]	@ channel, channel
	cmp	r3, #8	@ channel,
	bls	.L2	@,
	movs	r1, #8	@,
	ldr	r2, .L5	@,
	ldr	r0, .L5+4	@,
	bl	printf	@
	b	.L1	@
.L2:
	ldr	r0, [r4, #4]	@, MEM[(char * *)argv_1(D) + 4B]
	add	r1, sp, #4	@,,
	bl	getNumber	@
	ldr	r2, [sp, #4]	@ value.2, value
	cmp	r2, #255	@ value.2,
	bls	.L4	@,
	ldr	r1, .L5	@,
	ldr	r0, .L5+8	@,
	bl	printf	@
	b	.L1	@
.L4:
	ldr	r1, [sp, #0]	@, channel
	ldr	r3, .L5	@,
	ldr	r0, .L5+12	@,
	bl	printf	@
	ldrb	r1, [sp, #4]	@ zero_extendqisi2	@ D.4560, value
	ldr	r2, .L5+16	@ tmp152,
	ldr	r3, [sp, #0]	@ channel.0, channel
	strb	r1, [r2, r3]	@ D.4560, dmxChannels
.L1:
	pop	{r2, r3, r4, pc}
.L6:
	.align	2
.L5:
	.word	.LC1
	.word	.LC0
	.word	.LC2
	.word	.LC3
	.word	dmxChannels
	.size	cmd_dmx, .-cmd_dmx
	.global	pwmStarted
	.comm	dmxChannels,8,1
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Invalid channel, must be [0..%d]%s\000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"Invalid value, must be [0..255]%s\000"
.LC3:
	.ascii	"Setting dmx channel %d to %d%s\000"
	.section	.bss.pwmStarted,"aw",%nobits
	.type	pwmStarted, %object
	.size	pwmStarted, 1
pwmStarted:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
