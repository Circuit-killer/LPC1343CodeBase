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
	.file	"commands.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed commands.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip commands.o -Os -Wall
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

	.section	.text.getNumber,"ax",%progbits
	.align	1
	.global	getNumber
	.thumb
	.thumb_func
	.ascii	"getNumber\000"
	.align	2
	.word	4278190092
	.type	getNumber, %function
getNumber:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	ldr	r3, .L19	@ tmp205,
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ s, s
	mov	r5, r1	@ result, result
	mov	r2, sp	@ tmp206,
	add	r7, r3, #16	@ tmp207, tmp205,
.L2:
	ldr	r0, [r3, #0]	@ unaligned	@,
	ldr	r1, [r3, #4]	@ unaligned	@,
	mov	r6, r2	@ tmp208, tmp206
	stmia	r6!, {r0, r1}	@ tmp208,,
	adds	r3, r3, #8	@ tmp205, tmp205,
	cmp	r3, r7	@ tmp205, tmp207
	mov	r2, r6	@ tmp206, tmp208
	bne	.L2	@,
	ldr	r0, [r3, #0]	@ unaligned	@,
	str	r0, [r6, #0]	@ unaligned	@,
	ldrh	r1, [r3, #4]	@ unaligned	@ tmp212,
	ldrb	r3, [r3, #6]	@ zero_extendqisi2	@ tmp214,
	mov	r0, r4	@ D.4752, s
	strh	r1, [r6, #4]	@ unaligned	@ tmp212,
	strb	r3, [r6, #6]	@ tmp214,
	cmp	r4, #0	@ s
	beq	.L3	@
	bl	strlen	@
	cmp	r0, #2	@,
	bls	.L4	@,
	mov	r0, r4	@, s
	ldr	r1, .L19+4	@,
	movs	r2, #2	@,
	bl	strncmp	@
	cbz	r0, .L5	@,
	mov	r0, r4	@, s
	ldr	r1, .L19+8	@,
	movs	r2, #2	@,
	bl	strncmp	@
	cbnz	r0, .L4	@,
.L5:
	movs	r1, #1	@ mustBeHex,
	adds	r4, r4, #2	@ s, s,
	mov	r0, r1	@ sgn, mustBeHex
	b	.L6	@
.L4:
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ *s_13(D), *s_13(D)
	cmp	r2, #45	@ *s_13(D),
	bne	.L16	@,
	adds	r4, r4, #1	@ s, s,
	movs	r1, #0	@ mustBeHex,
	mov	r0, #-1	@ sgn,
	b	.L6	@
.L16:
	movs	r1, #0	@ mustBeHex,
	movs	r0, #1	@ sgn,
.L6:
	ldr	r7, .L19+12	@ tmp217,
	movs	r3, #0	@ value,
	ldr	r7, [r7, #0]	@ __ctype_ptr__.0, __ctype_ptr__
	b	.L18	@
.L13:
	cbz	r1, .L8	@ mustBeHex,
	adds	r6, r7, r2	@ tmp218, __ctype_ptr__.0, D.4763
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ D.4776, *D.4774_30
	tst	r6, #68	@ D.4776,
	beq	.L8	@,
	and	lr, r6, #3	@ tmp220, D.4776,
	lsls	r3, r3, #4	@ D.4779, value,
	cmp	lr, #2	@ tmp220,
	it	eq
	subeq	r2, r2, #32	@ D.4742, D.4763,
	add	r6, sp, #24	@,,
	adds	r2, r6, r2	@ tmp221,, D.4742
	ldrb	ip, [r2, #-72]	@ zero_extendqisi2	@ tmp222, hexToDec
	orr	r3, ip, r3	@ value, tmp222, D.4779
	b	.L18	@
.L8:
	adds	r6, r7, r2	@ tmp223, __ctype_ptr__.0, D.4763
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ *D.4774_55, *D.4774_55
	ands	r6, r6, #4	@ tmp225, *D.4774_55,
	beq	.L12	@,
	subs	r2, r2, #48	@ tmp227, D.4763,
	movs	r6, #10	@ tmp226,
	mla	r3, r6, r3, r2	@ value, tmp226, value, tmp227
	b	.L18	@
.L12:
	ldr	r0, .L19+16	@,
	ldr	r1, .L19+20	@,
	bl	printf	@
	mov	r0, r6	@ D.4752, tmp225
	b	.L3	@
.L18:
	ldrb	r2, [r4], #1	@ zero_extendqisi2	@ D.4763, MEM[base: D.4822_39, offset: 0B]
	cmp	r2, #0	@ D.4763
	bne	.L13	@
	cbnz	r1, .L14	@ mustBeHex,
	muls	r3, r0, r3	@ value, sgn
.L14:
	str	r3, [r5, #0]	@ value, *result_69(D)
	movs	r0, #1	@ D.4752,
.L3:
	add	sp, sp, #28	@,,
	pop	{r4, r5, r6, r7, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC2
	.word	__ctype_ptr__
	.word	.LC3
	.word	.LC4
	.size	getNumber, .-getNumber
	.section	.rodata
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC1:
	.ascii	"0x\000"
.LC2:
	.ascii	"0X\000"
.LC3:
	.ascii	"Malformed number. Must be decimal number, or hex va"
	.ascii	"lue preceeded by '0x'%s\000"
.LC4:
	.ascii	"\015\012\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
