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
	.file	"iap.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed iap.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip iap.o -Os -Wall -ffunction-sections
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

	.section	.text.iap_entry,"ax",%progbits
	.align	1
	.global	iap_entry
	.thumb
	.thumb_func
	.ascii	"iap_entry\000"
	.align	2
	.word	4278190092
	.type	iap_entry, %function
iap_entry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r3, .L2	@ tmp136,
	blx	r3	@ tmp136
	pop	{r3, pc}	@
.L3:
	.align	2
.L2:
	.word	536813553
	.size	iap_entry, .-iap_entry
	.section	.text.iapReadSerialNumber,"ax",%progbits
	.align	1
	.global	iapReadSerialNumber
	.thumb
	.thumb_func
	.ascii	"iapReadSerialNumber\000"
	.align	2
	.word	4278190100
	.type	iapReadSerialNumber, %function
iapReadSerialNumber:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r0	@ .result_ptr, .result_ptr
	ldr	r0, .L5	@ tmp135,
	movs	r1, #58	@ tmp136,
	ldr	r5, .L5+4	@ tmp139,
	str	r1, [r0, #0]	@ tmp136, param_table
	mov	r4, r6	@ .result_ptr, .result_ptr
	ldr	r1, .L5+4	@,
	bl	iap_entry	@
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp139,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ .result_ptr,,,,
	ldr	r3, [r5, #0]	@ iap_return, iap_return
	mov	r0, r6	@, .result_ptr
	str	r3, [r4, #0]	@ iap_return, <retval>
	pop	{r4, r5, r6, pc}	@
.L6:
	.align	2
.L5:
	.word	param_table
	.word	iap_return
	.size	iapReadSerialNumber, .-iapReadSerialNumber
	.comm	param_table,20,4
	.comm	iap_return,20,4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
