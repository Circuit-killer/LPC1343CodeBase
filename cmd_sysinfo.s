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
	.file	"cmd_sysinfo.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cmd_sysinfo.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cmd_sysinfo.o -Os -Wall
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

	.section	.text.cmd_sysinfo,"ax",%progbits
	.align	1
	.global	cmd_sysinfo
	.thumb
	.thumb_func
	.ascii	"cmd_sysinfo\000"
	.align	2
	.word	4278190092
	.type	cmd_sysinfo, %function
cmd_sysinfo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	movs	r2, #1	@,
	ldr	r4, .L3	@ tmp143,
	sub	sp, sp, #44	@,,
	mov	r3, r2	@,
	movs	r5, #0	@ tmp142,
	ldr	r1, .L3+4	@,
	ldr	r0, .L3+8	@,
	str	r5, [sp, #0]	@ tmp142,
	str	r4, [sp, #4]	@ tmp143,
	bl	printf	@
	ldr	r1, .L3+12	@,
	movs	r2, #72	@,
	mov	r3, r5	@, tmp142
	ldr	r0, .L3+16	@,
	str	r4, [sp, #0]	@ tmp143,
	bl	printf	@
	bl	systickGetSecondsActive	@
	mov	r3, r4	@, tmp143
	mov	r2, r0	@ D.4562,
	ldr	r1, .L3+20	@,
	ldr	r0, .L3+24	@,
	bl	printf	@
	add	r0, sp, #20	@,,
	bl	iapReadSerialNumber	@
	ldr	r3, [sp, #20]	@ iap_return.ReturnCode, iap_return.ReturnCode
	cbnz	r3, .L1	@ iap_return.ReturnCode,
	ldr	r1, [sp, #32]	@ iap_return.Result, iap_return.Result
	ldr	r0, [sp, #36]	@ iap_return.Result, iap_return.Result
	str	r1, [sp, #0]	@ iap_return.Result,
	str	r0, [sp, #4]	@ iap_return.Result,
	ldr	r1, .L3+28	@,
	ldr	r0, .L3+32	@,
	ldr	r2, [sp, #24]	@, iap_return.Result
	ldr	r3, [sp, #28]	@, iap_return.Result
	str	r4, [sp, #8]	@ tmp143,
	bl	printf	@
.L1:
	add	sp, sp, #44	@,,
	pop	{r4, r5, pc}
.L4:
	.align	2
.L3:
	.word	.LC2
	.word	.LC1
	.word	.LC0
	.word	.LC4
	.word	.LC3
	.word	.LC6
	.word	.LC5
	.word	.LC8
	.word	.LC7
	.size	cmd_sysinfo, .-cmd_sysinfo
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"%-25s : %d.%d.%d %s\000"
.LC1:
	.ascii	"Firmware\000"
.LC2:
	.ascii	"\015\012\000"
.LC3:
	.ascii	"%-25s : %d.%d MHz %s\000"
.LC4:
	.ascii	"System Clock\000"
.LC5:
	.ascii	"%-25s : %u s %s\000"
.LC6:
	.ascii	"System Uptime\000"
.LC7:
	.ascii	"%-25s : %08X %08X %08X %08X %s\000"
.LC8:
	.ascii	"Serial Number\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
