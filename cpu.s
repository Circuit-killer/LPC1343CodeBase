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
	.file	"cpu.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cpu.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cpu.o -Os -Wall -ffunction-sections
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

	.section	.text.cpuPllSetup,"ax",%progbits
	.align	1
	.global	cpuPllSetup
	.thumb
	.thumb_func
	.ascii	"cpuPllSetup\000"
	.align	2
	.word	4278190092
	.type	cpuPllSetup, %function
cpuPllSetup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19	@ tmp153,
	ldr	r2, [r3, #0]	@ D.4645, MEM[(volatile long unsigned int *)1074037304B]
	bic	r1, r2, #32	@ D.4646, D.4645,
	str	r1, [r3, #0]	@ D.4646, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r3, .L19+4	@ tmp155,
	movs	r2, #0	@ tmp156,
	str	r2, [r3, #0]	@ tmp156, MEM[(volatile long unsigned int *)1074036768B]
	movs	r3, #200	@ ivtmp.2,
.L2:
@ 90 "core/cpu/cpu.c" 1
	NOP
@ 0 "" 2
	.thumb
	subs	r3, r3, #1	@ ivtmp.2, ivtmp.2,
	bne	.L2	@,
	ldr	r2, .L19+8	@ tmp157,
	movs	r1, #1	@ tmp158,
	str	r1, [r2, #0]	@ tmp158, MEM[(volatile long unsigned int *)1074036800B]
	str	r1, [r2, #4]	@ tmp158, MEM[(volatile long unsigned int *)1074036804B]
	str	r3, [r2, #4]	@ ivtmp.2, MEM[(volatile long unsigned int *)1074036804B]
	str	r1, [r2, #4]	@ tmp158, MEM[(volatile long unsigned int *)1074036804B]
.L3:
	ldr	r1, .L19+12	@ tmp165,
	ldr	r3, [r1, #0]	@ D.4650, MEM[(volatile long unsigned int *)1074036804B]
	lsls	r1, r3, #31	@, D.4650,
	bpl	.L3	@,
	subs	r0, r0, #1	@ tmp167, multiplier,
	ldr	r3, .L19+16	@ tmp202,
	cmp	r0, #4	@ tmp167,
	bhi	.L4	@
	tbb	[pc, r0]	@ tmp167
.L10:
	.byte	(.L5-.L10)/2
	.byte	(.L6-.L10)/2
	.byte	(.L7-.L10)/2
	.byte	(.L8-.L10)/2
	.byte	(.L9-.L10)/2
	.align	1
.L5:
	movs	r2, #33	@ tmp169,
	b	.L18	@
.L6:
	movs	r2, #34	@ tmp171,
	b	.L18	@
.L7:
	movs	r2, #3	@ tmp173,
	b	.L18	@
.L8:
	movs	r2, #4	@ tmp175,
	b	.L18	@
.L9:
	movs	r2, #5	@ tmp177,
	b	.L18	@
.L4:
	movs	r2, #64	@ tmp179,
.L18:
	str	r2, [r3, #0]	@ tmp179,
	ldr	r3, .L19	@ tmp180,
	ldr	r1, [r3, #0]	@ D.4654, MEM[(volatile long unsigned int *)1074037304B]
	bic	r2, r1, #128	@ D.4655, D.4654,
	str	r2, [r3, #0]	@ D.4655, MEM[(volatile long unsigned int *)1074037304B]
.L12:
	ldr	r2, .L19+20	@ tmp182,
	ldr	r0, [r2, #0]	@ D.4657, MEM[(volatile long unsigned int *)1074036748B]
	lsls	r2, r0, #31	@, D.4657,
	bpl	.L12	@,
	ldr	r3, .L19+24	@ tmp184,
	movs	r0, #1	@ tmp187,
	movs	r2, #3	@ tmp185,
	movs	r1, #0	@ tmp189,
	str	r2, [r3, #0]	@ tmp185, MEM[(volatile long unsigned int *)1074036848B]
	str	r0, [r3, #4]	@ tmp187, MEM[(volatile long unsigned int *)1074036852B]
	str	r1, [r3, #4]	@ tmp189, MEM[(volatile long unsigned int *)1074036852B]
	str	r0, [r3, #4]	@ tmp187, MEM[(volatile long unsigned int *)1074036852B]
.L13:
	ldr	r3, .L19+28	@ tmp192,
	ldr	r0, [r3, #0]	@ D.4661, MEM[(volatile long unsigned int *)1074036852B]
	lsls	r3, r0, #31	@, D.4661,
	bpl	.L13	@,
	ldr	r0, .L19	@ tmp194,
	ldr	r1, [r0, #0]	@ D.4663, MEM[(volatile long unsigned int *)1074037304B]
	orr	r3, r1, #1024	@ D.4664, D.4663,
	str	r3, [r0, #0]	@ D.4664, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r2, [r0, #0]	@ D.4665, MEM[(volatile long unsigned int *)1074037304B]
	movs	r3, #1	@ tmp199,
	orr	r1, r2, #256	@ D.4666, D.4665,
	str	r1, [r0, #0]	@ D.4666, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r0, .L19+32	@ tmp198,
	str	r3, [r0, #0]	@ tmp199, MEM[(volatile long unsigned int *)1074036856B]
	ldr	r2, [r0, #8]	@ D.4669, MEM[(volatile long unsigned int *)1074036864B]
	orr	r1, r2, #65536	@ D.4670, D.4669,
	str	r1, [r0, #8]	@ D.4670, MEM[(volatile long unsigned int *)1074036864B]
	bx	lr	@
.L20:
	.align	2
.L19:
	.word	1074037304
	.word	1074036768
	.word	1074036800
	.word	1074036804
	.word	1074036744
	.word	1074036748
	.word	1074036848
	.word	1074036852
	.word	1074036856
	.size	cpuPllSetup, .-cpuPllSetup
	.section	.text.cpuInit,"ax",%progbits
	.align	1
	.global	cpuInit
	.thumb
	.thumb_func
	.ascii	"cpuInit\000"
	.align	2
	.word	4278190088
	.type	cpuInit, %function
cpuInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	gpioInit	@
	ldr	r2, .L22	@ tmp142,
	ldr	r1, [r2, #0]	@ D.4633, MEM[(volatile long unsigned int *)1342210048B]
	bic	r0, r1, #4064	@ D.4634, D.4633,
	bic	r3, r0, #31	@ D.4634, D.4634,
	str	r3, [r2, #0]	@ D.4634, MEM[(volatile long unsigned int *)1342210048B]
	ldr	r2, .L22+4	@ tmp145,
	ldr	r1, [r2, #0]	@ D.4636, MEM[(volatile long unsigned int *)1342275584B]
	bic	r0, r1, #4064	@ D.4637, D.4636,
	bic	r3, r0, #31	@ D.4637, D.4637,
	str	r3, [r2, #0]	@ D.4637, MEM[(volatile long unsigned int *)1342275584B]
	ldr	r2, .L22+8	@ tmp148,
	ldr	r1, [r2, #0]	@ D.4639, MEM[(volatile long unsigned int *)1342341120B]
	bic	r0, r1, #4064	@ D.4640, D.4639,
	bic	r3, r0, #31	@ D.4640, D.4640,
	str	r3, [r2, #0]	@ D.4640, MEM[(volatile long unsigned int *)1342341120B]
	ldr	r2, .L22+12	@ tmp151,
	ldr	r1, [r2, #0]	@ D.4642, MEM[(volatile long unsigned int *)1342406656B]
	bic	r0, r1, #4064	@ D.4643, D.4642,
	bic	r3, r0, #31	@ D.4643, D.4643,
	movs	r0, #5	@,
	str	r3, [r2, #0]	@ D.4643, MEM[(volatile long unsigned int *)1342406656B]
	pop	{r3, lr}	@
	b	cpuPllSetup	@
.L23:
	.align	2
.L22:
	.word	1342210048
	.word	1342275584
	.word	1342341120
	.word	1342406656
	.size	cpuInit, .-cpuInit
	.section	.text.cpuReset,"ax",%progbits
	.align	1
	.global	cpuReset
	.thumb
	.thumb_func
	.ascii	"cpuReset\000"
	.align	2
	.word	4278190092
	.type	cpuReset, %function
cpuReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L26	@ tmp135,
	ldr	r3, .L26+4	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)3758157068B]
@ 201 "core/cpu/cpu.c" 1
	DSB
@ 0 "" 2
	.thumb
.L25:
	b	.L25	@
.L27:
	.align	2
.L26:
	.word	100270084
	.word	-536810228
	.size	cpuReset, .-cpuReset
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
