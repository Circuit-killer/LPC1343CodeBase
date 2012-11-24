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
	.file	"rsa.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed rsa.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip rsa.o -Os -Wall -ffunction-sections
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

	.section	.text.modexp,"ax",%progbits
	.align	1
	.global	modexp
	.thumb
	.thumb_func
	.ascii	"modexp\000"
	.align	2
	.word	4278190088
	.type	modexp, %function
modexp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ a, a
	push	{r4, lr}	@
	movs	r0, #1	@ y,
	b	.L2	@
.L4:
	lsls	r4, r1, #31	@, b,
	bpl	.L3	@,
	muls	r0, r3, r0	@ D.4590, a
	udiv	r4, r0, r2	@ tmp146, D.4590, n
	mls	r0, r2, r4, r0	@ y, n, tmp146, D.4590
.L3:
	muls	r3, r3, r3	@ D.4591, a
	udiv	r4, r3, r2	@ tmp150, D.4591, n
	mls	r3, r2, r4, r3	@ a, n, tmp150, D.4591
	lsrs	r1, r1, #1	@ b, b,
.L2:
	cmp	r1, #0	@ b
	bne	.L4	@
	pop	{r4, pc}	@
	.size	modexp, .-modexp
	.section	.text.rsaEncrypt,"ax",%progbits
	.align	1
	.global	rsaEncrypt
	.thumb
	.thumb_func
	.ascii	"rsaEncrypt\000"
	.align	2
	.word	4278190092
	.type	rsaEncrypt, %function
rsaEncrypt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	mov	r4, r1	@ ciphertext, ciphertext
	add	r1, sp, #8	@,,
	stmdb	r1, {r2, r3}	@,,
	ldmia	sp, {r1, r2}	@,,
	bl	modexp	@
	str	r0, [r4, #0]	@, *ciphertext_5(D)
	pop	{r2, r3, r4, pc}
	.size	rsaEncrypt, .-rsaEncrypt
	.section	.text.rsaDecrypt,"ax",%progbits
	.align	1
	.global	rsaDecrypt
	.thumb
	.thumb_func
	.ascii	"rsaDecrypt\000"
	.align	2
	.word	4278190092
	.type	rsaDecrypt, %function
rsaDecrypt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	mov	r4, r1	@ plaintext, plaintext
	add	r1, sp, #8	@,,
	stmdb	r1, {r2, r3}	@,,
	ldmia	sp, {r1, r2}	@,,
	bl	modexp	@
	str	r0, [r4, #0]	@, *plaintext_5(D)
	pop	{r2, r3, r4, pc}
	.size	rsaDecrypt, .-rsaDecrypt
	.section	.text.rsaTest,"ax",%progbits
	.align	1
	.global	rsaTest
	.thumb
	.thumb_func
	.ascii	"rsaTest\000"
	.align	2
	.word	4278190088
	.type	rsaTest, %function
rsaTest:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	ldr	r1, .L13	@,
	sub	sp, sp, #36	@,,
	ldr	r0, .L13+4	@,
	ldr	r5, .L13	@ tmp143,
	bl	printf	@
	movs	r3, #209	@ tmp142,
	ldr	r0, .L13+8	@,
	movs	r1, #53	@,
	movs	r2, #17	@,
	str	r3, [sp, #20]	@ tmp142, privateKey.n
	str	r5, [sp, #0]	@ tmp143,
	bl	printf	@
	movs	r4, #0	@ i,
.L10:
	movs	r3, #17	@ tmp144,
	movs	r1, #209	@ tmp145,
	str	r1, [sp, #12]	@ tmp145, publicKey.n
	str	r3, [sp, #8]	@ tmp144, publicKey.e
	add	r2, sp, #8	@ tmp147,,
	ldmia	r2, {r2, r3}	@ tmp147,,
	mov	r0, r4	@, i
	add	r1, sp, #28	@,,
	bl	rsaEncrypt	@
	movs	r0, #53	@ tmp148,
	str	r0, [sp, #16]	@ tmp148, privateKey.d
	add	r3, sp, #16	@ tmp150,,
	ldmia	r3, {r2, r3}	@ tmp150,,
	ldr	r0, [sp, #28]	@, rsaEncrypted
	add	r1, sp, #24	@,,
	bl	rsaDecrypt	@
	ldr	r3, [sp, #24]	@ rsaDecrypted.1, rsaDecrypted
	str	r5, [sp, #0]	@ tmp153,
	cmp	r4, r3	@ i, rsaDecrypted.1
	bne	.L8	@,
	ldr	r0, .L13+12	@,
	mov	r1, r4	@, i
	ldr	r2, [sp, #28]	@, rsaEncrypted
	mov	r3, r4	@, i
	b	.L12	@
.L8:
	ldr	r0, .L13+16	@,
	ldr	r2, [sp, #28]	@, rsaEncrypted
	mov	r1, r4	@, i
.L12:
	adds	r4, r4, #1	@ i, i,
	bl	printf	@
	cmp	r4, #128	@ i,
	bne	.L10	@,
	add	sp, sp, #36	@,,
	pop	{r4, r5, pc}
.L14:
	.align	2
.L13:
	.word	.LC1
	.word	.LC0
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	rsaTest, .-rsaTest
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Encrypting with RSA %s\000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"d=%u, e=%u, n=%u %s\000"
.LC3:
	.ascii	"In=%5u, Encrypted=%5u, Out=%5u (OK) %s\000"
.LC4:
	.ascii	"In=%5u, Encrypted=%5u, Out=%5u (ERROR) %s\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
