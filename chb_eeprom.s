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
	.file	"chb_eeprom.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed chb_eeprom.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip chb_eeprom.o -Os -Wall
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

	.section	.text.chb_eeprom_write,"ax",%progbits
	.align	1
	.global	chb_eeprom_write
	.thumb
	.thumb_func
	.ascii	"chb_eeprom_write\000"
	.align	2
	.word	4278190100
	.type	chb_eeprom_write, %function
chb_eeprom_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ addr, addr
	mov	r5, r1	@ buf, buf
	mov	r7, r2	@ size, size
	movs	r6, #0	@ ivtmp.3,
	b	.L2	@
.L3:
	mov	r0, r4	@, addr
	ldrb	r1, [r5, r6]	@ zero_extendqisi2	@, MEM[base: buf_7(D), index: ivtmp.3_14, offset: 0B]
	bl	eepromWriteU8	@
	adds	r4, r4, #1	@ tmp222, addr,
	adds	r6, r6, #1	@ ivtmp.3, ivtmp.3,
	uxth	r4, r4	@ addr, tmp222
.L2:
	uxth	r3, r6	@ ivtmp.3, ivtmp.3
	cmp	r3, r7	@ ivtmp.3, size
	bcc	.L3	@,
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	chb_eeprom_write, .-chb_eeprom_write
	.section	.text.chb_eeprom_read,"ax",%progbits
	.align	1
	.global	chb_eeprom_read
	.thumb
	.thumb_func
	.ascii	"chb_eeprom_read\000"
	.align	2
	.word	4278190096
	.type	chb_eeprom_read, %function
chb_eeprom_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	eepromReadBuffer	@
	.size	chb_eeprom_read, .-chb_eeprom_read
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
