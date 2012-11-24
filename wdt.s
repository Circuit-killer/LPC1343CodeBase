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
	.file	"wdt.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed wdt.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip wdt.o -Os -Wall -ffunction-sections
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

	.section	.text.WDT_IRQHandler,"ax",%progbits
	.align	1
	.global	WDT_IRQHandler
	.thumb
	.thumb_func
	.ascii	"WDT_IRQHandler\000"
	.align	2
	.word	4278190096
	.type	WDT_IRQHandler, %function
WDT_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1073758208	@ tmp138,
	ldr	r2, [r3, #0]	@ D.4565, MEM[(volatile long unsigned int *)1073758208B]
	bic	r1, r2, #4	@ D.4566, D.4565,
	str	r1, [r3, #0]	@ D.4566, MEM[(volatile long unsigned int *)1073758208B]
	ldr	r3, .L2	@ tmp140,
	ldr	r0, [r3, #0]	@ wdt_counter.1, wdt_counter
	adds	r2, r0, #1	@ wdt_counter.2, wdt_counter.1,
	str	r2, [r3, #0]	@ wdt_counter.2, wdt_counter
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	wdt_counter
	.size	WDT_IRQHandler, .-WDT_IRQHandler
	.section	.text.wdtInit,"ax",%progbits
	.align	1
	.global	wdtInit
	.thumb
	.thumb_func
	.ascii	"wdtInit\000"
	.align	2
	.word	4278190088
	.type	wdtInit, %function
wdtInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7	@ tmp141,
	movs	r2, #32	@ tmp142,
	str	r2, [r3, #0]	@ tmp142, MEM[(volatile long unsigned int *)1074036772B]
	movs	r0, #2	@ tmp144,
	movs	r2, #1	@ tmp146,
	movs	r1, #0	@ tmp148,
	str	r0, [r3, #172]	@ tmp144, MEM[(volatile long unsigned int *)1074036944B]
	str	r2, [r3, #176]	@ tmp146, MEM[(volatile long unsigned int *)1074036948B]
	str	r1, [r3, #176]	@ tmp148, MEM[(volatile long unsigned int *)1074036948B]
	str	r2, [r3, #176]	@ tmp146, MEM[(volatile long unsigned int *)1074036948B]
.L5:
	ldr	r1, .L7+4	@ tmp151,
	ldr	r3, [r1, #0]	@ D.4592, MEM[(volatile long unsigned int *)1074036948B]
	lsls	r3, r3, #31	@, D.4592,
	bpl	.L5	@,
	ldr	r0, .L7+8	@ tmp153,
	ldr	r3, .L7+12	@ tmp155,
	movs	r2, #1	@ tmp154,
	str	r2, [r0, #0]	@ tmp154, MEM[(volatile long unsigned int *)1074036952B]
	ldr	r1, [r3, #0]	@ D.4590, MEM[(volatile long unsigned int *)1074037304B]
	bic	r0, r1, #64	@ D.4589, D.4590,
	ldr	r1, .L7+16	@ tmp157,
	str	r0, [r3, #0]	@ D.4589, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r2, [r1, #0]	@ D.4543, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r3, .L7+20	@ tmp159,
	orr	r0, r2, #32768	@ D.4544, D.4543,
	str	r0, [r1, #0]	@ D.4544, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r2, .L7+24	@ tmp161,
	movs	r1, #0	@ tmp160,
	str	r1, [r3, #0]	@ tmp160, wdt_counter
	mov	r0, #262144	@ tmp162,
	ldr	r1, .L7+28	@ tmp164,
	ldr	r3, .L7+32	@ tmp163,
	str	r0, [r2, #4]	@ tmp162, MEM[(struct NVIC_Type *)3758153984B].ISER
	movs	r0, #2	@ tmp166,
	mov	r2, #1073758208	@ tmp165,
	str	r1, [r3, #0]	@ tmp164, MEM[(volatile long unsigned int *)1073758212B]
	str	r0, [r2, #0]	@ tmp166, MEM[(volatile long unsigned int *)1073758208B]
	bx	lr	@
.L8:
	.align	2
.L7:
	.word	1074036772
	.word	1074036948
	.word	1074036952
	.word	1074037304
	.word	1074036864
	.word	wdt_counter
	.word	-536813312
	.word	4194303
	.word	1073758212
	.size	wdtInit, .-wdtInit
	.section	.text.wdtFeed,"ax",%progbits
	.align	1
	.global	wdtFeed
	.thumb
	.thumb_func
	.ascii	"wdtFeed\000"
	.align	2
	.word	4278190088
	.type	wdtFeed, %function
wdtFeed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 1939 "./lpc134x.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	ldr	r3, .L10	@ tmp134,
	movs	r0, #170	@ tmp135,
	movs	r2, #85	@ tmp137,
	str	r0, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1073758216B]
	str	r2, [r3, #0]	@ tmp137, MEM[(volatile long unsigned int *)1073758216B]
@ 1938 "./lpc134x.h" 1
	cpsie i
@ 0 "" 2
	.thumb
	bx	lr	@
.L11:
	.align	2
.L10:
	.word	1073758216
	.size	wdtFeed, .-wdtFeed
	.comm	wdt_counter,4,4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
