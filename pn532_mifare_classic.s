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
	.file	"pn532_mifare_classic.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pn532_mifare_classic.i -mthumb
@ -mcpu=cortex-m3 -mpoke-function-name
@ -auxbase-strip pn532_mifare_classic.o -Os -Wall -ffunction-sections
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

	.section	.text.is_first_block,"ax",%progbits
	.align	1
	.global	is_first_block
	.thumb
	.thumb_func
	.ascii	"is_first_block\000"
	.align	2
	.word	4278190096
	.type	is_first_block, %function
is_first_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127	@ uiBlock,
	bhi	.L2	@,
	and	r0, r0, #3	@ tmp139, uiBlock,
	rsbs	r0, r0, #1	@ D.4941, tmp139,
	it	cc
	movcc	r0, #0	@ D.4941,
	bx	lr	@
.L2:
	and	r1, r0, #15	@ tmp142, uiBlock,
	rsbs	r0, r1, #1	@ D.4941, tmp142,
	it	cc
	movcc	r0, #0	@ D.4941,
	bx	lr	@
	.size	is_first_block, .-is_first_block
	.section	.text.is_trailer_block,"ax",%progbits
	.align	1
	.global	is_trailer_block
	.thumb
	.thumb_func
	.ascii	"is_trailer_block\000"
	.align	2
	.word	4278190100
	.type	is_trailer_block, %function
is_trailer_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #127	@ uiBlock,
	add	r0, r0, #1	@ tmp150, uiBlock,
	bhi	.L5	@,
	and	r0, r0, #3	@ tmp142, tmp150,
	rsbs	r0, r0, #1	@ D.4934, tmp142,
	it	cc
	movcc	r0, #0	@ D.4934,
	bx	lr	@
.L5:
	and	r1, r0, #15	@ tmp146, tmp150,
	rsbs	r0, r1, #1	@ D.4934, tmp146,
	it	cc
	movcc	r0, #0	@ D.4934,
	bx	lr	@
	.size	is_trailer_block, .-is_trailer_block
	.section	.text.pn532_mifareclassic_WaitForPassiveTarget,"ax",%progbits
	.align	1
	.global	pn532_mifareclassic_WaitForPassiveTarget
	.thumb
	.thumb_func
	.ascii	"pn532_mifareclassic_WaitForPassiveTarget\000"
	.align	2
	.word	4278190124
	.type	pn532_mifareclassic_WaitForPassiveTarget, %function
pn532_mifareclassic_WaitForPassiveTarget:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	mov	r5, r0	@ pbtCUID, pbtCUID
	ldr	r0, .L16	@ tmp151,
	sub	sp, sp, #76	@,,
	ldrh	r2, [r0, #0]	@ unaligned	@ tmp154,
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ tmp156,
	mov	r4, r1	@ szCUIDLen, szCUIDLen
	add	r0, sp, #68	@,,
	movs	r1, #3	@,
	strh	r2, [sp, #68]	@ unaligned	@ tmp154, abtCommand
	strb	r3, [sp, #70]	@ tmp156, abtCommand
	bl	pn532Write	@
	cbnz	r0, .L8	@ error,
.L14:
	movs	r0, #25	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	add	r1, sp, #64	@,,
	bl	pn532Read	@
	cmp	r0, #9	@ tmp162,
	beq	.L14	@,
	cbnz	r0, .L8	@ tmp162,
	ldrb	r1, [sp, #10]	@ zero_extendqisi2	@ abtResponse, abtResponse
	cmp	r1, #8	@ abtResponse,
	bhi	.L13	@,
	ldrsb	ip, [sp, #10]	@ abtResponse, abtResponse
	mov	r3, #679477248	@ tmp171,
	lsls	r1, r3, ip	@, tmp171, abtResponse
	bpl	.L13	@,
	ldrb	r2, [sp, #12]	@ zero_extendqisi2	@ abtResponse, abtResponse
	str	r2, [r4, #0]	@ abtResponse, *szCUIDLen_13(D)
	b	.L11	@
.L12:
	add	lr, sp, #72	@,,
	add	r3, lr, r0	@ tmp173,, i
	ldrb	r1, [r3, #-59]	@ zero_extendqisi2	@ tmp174, abtResponse
	strb	r1, [r5, r0]	@ tmp174, *D.4925_19
	adds	r0, r0, #1	@ tmp176, i,
	uxtb	r0, r0	@ i, tmp176
.L11:
	ldr	r2, [r4, #0]	@ *szCUIDLen_13(D), *szCUIDLen_13(D)
	cmp	r0, r2	@ i, *szCUIDLen_13(D)
	bcc	.L12	@,
	movs	r0, #0	@ error,
	b	.L8	@
.L13:
	movs	r0, #13	@ error,
.L8:
	add	sp, sp, #76	@,,
	pop	{r4, r5, pc}
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	pn532_mifareclassic_WaitForPassiveTarget, .-pn532_mifareclassic_WaitForPassiveTarget
	.section	.text.pn532_mifareclassic_AuthenticateBlock,"ax",%progbits
	.align	1
	.global	pn532_mifareclassic_AuthenticateBlock
	.thumb
	.thumb_func
	.ascii	"pn532_mifareclassic_AuthenticateBlock\000"
	.align	2
	.word	4278190120
	.type	pn532_mifareclassic_AuthenticateBlock, %function
pn532_mifareclassic_AuthenticateBlock:
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	mov	r5, r0	@ pbtCUID, pbtCUID
	sub	sp, sp, #92	@,,
	movs	r0, #64	@ tmp150,
	mov	r4, r1	@ szCUIDLen, szCUIDLen
	movs	r1, #1	@ tmp152,
	cmp	r3, #0	@ uiKeyType,
	ite	eq	@
	moveq	r3, #97	@, iftmp.1,
	movne	r3, #96	@, iftmp.1,
	strb	r0, [sp, #64]	@ tmp150, abtCommand
	strb	r1, [sp, #65]	@ tmp152, abtCommand
	strb	r2, [sp, #67]	@ uiBlockNumber, abtCommand
	add	r0, sp, #68	@,,
	ldr	r1, [sp, #104]	@, pbtKeys
	movs	r2, #6	@,
	strb	r3, [sp, #66]	@ iftmp.1, abtCommand
	bl	memcpy	@
	movs	r3, #0	@ i,
	b	.L20	@
.L21:
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ *D.4900_17, *D.4900_17
	add	lr, sp, #88	@,,
	add	r1, lr, r3	@ tmp158,, i
	adds	r2, r3, #1	@ tmp161, i,
	strb	ip, [r1, #-14]	@ *D.4900_17, abtCommand
	uxtb	r3, r2	@ i, tmp161
.L20:
	cmp	r3, r4	@ i, szCUIDLen
	bcc	.L21	@,
	add	r1, r4, #10	@, szCUIDLen,
	add	r0, sp, #64	@,,
	bl	pn532Write	@
	mov	r1, r0	@ tmp164,
	cbnz	r0, .L22	@ tmp164,
	mov	r0, sp	@,
	movs	r2, #64	@,
	bl	memset	@
.L23:
	movs	r0, #25	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	add	r1, sp, #84	@,,
	bl	pn532Read	@
	cmp	r0, #9	@ error,
	beq	.L23	@,
.L22:
	add	sp, sp, #92	@,,
	pop	{r4, r5, pc}
	.size	pn532_mifareclassic_AuthenticateBlock, .-pn532_mifareclassic_AuthenticateBlock
	.section	.text.pn532_mifareclassic_ReadDataBlock,"ax",%progbits
	.align	1
	.global	pn532_mifareclassic_ReadDataBlock
	.thumb
	.thumb_func
	.ascii	"pn532_mifareclassic_ReadDataBlock\000"
	.align	2
	.word	4278190116
	.type	pn532_mifareclassic_ReadDataBlock, %function
pn532_mifareclassic_ReadDataBlock:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	movs	r6, #64	@ tmp140,
	sub	sp, sp, #72	@,,
	mov	r5, r1	@ pbtData, pbtData
	movs	r1, #1	@ tmp142,
	strb	r1, [sp, #65]	@ tmp142, abtCommand
	movs	r3, #48	@ tmp144,
	strb	r0, [sp, #67]	@ uiBlockNumber, abtCommand
	movs	r1, #4	@,
	add	r0, sp, r6	@,,
	strb	r6, [sp, #64]	@ tmp140, abtCommand
	strb	r3, [sp, #66]	@ tmp144, abtCommand
	bl	pn532Write	@
	mov	r1, r0	@ tmp148,
	mov	r4, r0	@ error, tmp148
	cbnz	r0, .L27	@ tmp148,
	mov	r0, sp	@,
	mov	r2, r6	@, tmp140
	bl	memset	@
.L28:
	movs	r0, #50	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	add	r1, sp, #68	@,,
	bl	pn532Read	@
	cmp	r0, #9	@ error,
	mov	r4, r0	@ error,
	beq	.L28	@,
	cbnz	r0, .L27	@ error,
	ldr	r0, [sp, #68]	@ szLen, szLen
	cmp	r0, #26	@ szLen,
	bne	.L29	@,
	mov	r0, r5	@, pbtData
	add	r1, sp, #8	@,,
	movs	r2, #16	@,
	bl	memcpy	@
	b	.L27	@
.L29:
	movs	r4, #12	@ error,
.L27:
	mov	r0, r4	@, error
	add	sp, sp, #72	@,,
	pop	{r4, r5, r6, pc}
	.size	pn532_mifareclassic_ReadDataBlock, .-pn532_mifareclassic_ReadDataBlock
	.section	.rodata
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	74
	.byte	1
	.byte	0
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
