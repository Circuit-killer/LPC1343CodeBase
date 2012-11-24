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
	.file	"pn532_mifare_ultralight.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed pn532_mifare_ultralight.i -mthumb
@ -mcpu=cortex-m3 -mpoke-function-name
@ -auxbase-strip pn532_mifare_ultralight.o -Os -Wall -ffunction-sections
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

	.section	.text.pn532_mifareultralight_WaitForPassiveTarget,"ax",%progbits
	.align	1
	.global	pn532_mifareultralight_WaitForPassiveTarget
	.thumb
	.thumb_func
	.ascii	"pn532_mifareultralight_WaitForPassiveTarget\000"
	.align	2
	.word	4278190124
	.type	pn532_mifareultralight_WaitForPassiveTarget, %function
pn532_mifareultralight_WaitForPassiveTarget:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	mov	r5, r0	@ pbtCUID, pbtCUID
	ldr	r0, .L9	@ tmp151,
	sub	sp, sp, #76	@,,
	ldrh	r2, [r0, #0]	@ unaligned	@ tmp154,
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ tmp156,
	mov	r4, r1	@ szCUIDLen, szCUIDLen
	add	r0, sp, #68	@,,
	movs	r1, #3	@,
	strh	r2, [sp, #68]	@ unaligned	@ tmp154, abtCommand
	strb	r3, [sp, #70]	@ tmp156, abtCommand
	bl	pn532Write	@
	cbnz	r0, .L2	@ error,
.L7:
	movs	r0, #25	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	add	r1, sp, #64	@,,
	bl	pn532Read	@
	cmp	r0, #9	@ error,
	beq	.L7	@,
	cbnz	r0, .L2	@ error,
	ldrb	r1, [sp, #10]	@ zero_extendqisi2	@ abtResponse, abtResponse
	cmp	r1, #68	@ abtResponse,
	bne	.L6	@,
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ abtResponse, abtResponse
	str	r3, [r4, #0]	@ abtResponse, *szCUIDLen_10(D)
	b	.L4	@
.L5:
	add	ip, sp, #72	@,,
	add	r3, ip, r0	@ tmp165,, i
	ldrb	r1, [r3, #-59]	@ zero_extendqisi2	@ tmp166, abtResponse
	adds	r2, r0, #1	@ tmp168, i,
	strb	r1, [r5, r0]	@ tmp166, *D.4877_16
	uxtb	r0, r2	@ i, tmp168
.L4:
	ldr	r2, [r4, #0]	@ *szCUIDLen_10(D), *szCUIDLen_10(D)
	cmp	r0, r2	@ i, *szCUIDLen_10(D)
	bcc	.L5	@,
	movs	r0, #0	@ error,
	b	.L2	@
.L6:
	movs	r0, #13	@ error,
.L2:
	add	sp, sp, #76	@,,
	pop	{r4, r5, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.size	pn532_mifareultralight_WaitForPassiveTarget, .-pn532_mifareultralight_WaitForPassiveTarget
	.section	.text.pn532_mifareultralight_ReadPage,"ax",%progbits
	.align	1
	.global	pn532_mifareultralight_ReadPage
	.thumb
	.thumb_func
	.ascii	"pn532_mifareultralight_ReadPage\000"
	.align	2
	.word	4278190112
	.type	pn532_mifareultralight_ReadPage, %function
pn532_mifareultralight_ReadPage:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	cmp	r0, #63	@ page,
	sub	sp, sp, #72	@,,
	mov	r5, r1	@ pbtBuffer, pbtBuffer
	bhi	.L14	@,
	movs	r6, #64	@ tmp140,
	movs	r1, #1	@ tmp142,
	strb	r1, [sp, #65]	@ tmp142, abtCommand
	movs	r3, #48	@ tmp144,
	strb	r0, [sp, #67]	@ page, abtCommand
	movs	r1, #4	@,
	add	r0, sp, r6	@,,
	strb	r6, [sp, #64]	@ tmp140, abtCommand
	strb	r3, [sp, #66]	@ tmp144, abtCommand
	bl	pn532Write	@
	mov	r1, r0	@ tmp148,
	mov	r4, r0	@ error, tmp148
	cbnz	r0, .L12	@ tmp148,
	mov	r0, sp	@,
	mov	r2, r6	@, tmp140
	bl	memset	@
.L13:
	movs	r0, #50	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	add	r1, sp, #68	@,,
	bl	pn532Read	@
	cmp	r0, #9	@ error,
	mov	r4, r0	@ error,
	beq	.L13	@,
	cbnz	r0, .L12	@ error,
	ldr	r0, [sp, #68]	@ szLen, szLen
	cmp	r0, #26	@ szLen,
	bne	.L15	@,
	mov	r0, r5	@, pbtBuffer
	add	r1, sp, #8	@,,
	movs	r2, #4	@,
	bl	memcpy	@
	b	.L12	@
.L14:
	movs	r4, #14	@ error,
	b	.L12	@
.L15:
	movs	r4, #12	@ error,
.L12:
	mov	r0, r4	@, error
	add	sp, sp, #72	@,,
	pop	{r4, r5, r6, pc}
	.size	pn532_mifareultralight_ReadPage, .-pn532_mifareultralight_ReadPage
	.section	.rodata
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	74
	.byte	1
	.byte	0
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
