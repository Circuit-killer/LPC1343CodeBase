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
	.file	"chb_buf.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed chb_buf.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip chb_buf.o -Os -Wall
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

	.section	.text.chb_buf_init,"ax",%progbits
	.align	1
	.global	chb_buf_init
	.thumb
	.thumb_func
	.ascii	"chb_buf_init\000"
	.align	2
	.word	4278190096
	.type	chb_buf_init, %function
chb_buf_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L2	@ tmp134,
	ldr	r0, .L2+4	@ tmp136,
	ldr	r2, .L2+8	@ tmp138,
	movs	r3, #0	@ tmp135,
	str	r3, [r1, #0]	@ tmp135, rd_ptr
	str	r3, [r0, #0]	@ tmp135, wr_ptr
	str	r3, [r2, #0]	@ tmp135, len
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	chb_buf_init, .-chb_buf_init
	.section	.text.chb_buf_write,"ax",%progbits
	.align	1
	.global	chb_buf_write
	.thumb
	.thumb_func
	.ascii	"chb_buf_write\000"
	.align	2
	.word	4278190096
	.type	chb_buf_write, %function
chb_buf_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5	@ tmp141,
	ldr	r1, .L5+4	@ tmp142,
	ldr	r2, [r3, #0]	@ wr_ptr.5, wr_ptr
	strb	r0, [r1, r2]	@ data, chb_buf
	ldr	r0, [r3, #0]	@ wr_ptr.6, wr_ptr
	adds	r2, r0, #1	@ tmp145, wr_ptr.6,
	and	r1, r2, #127	@ wr_ptr.7, tmp145,
	str	r1, [r3, #0]	@ wr_ptr.7, wr_ptr
	ldr	r3, .L5+8	@ tmp147,
	ldr	r0, [r3, #0]	@ len.8, len
	adds	r2, r0, #1	@ len.9, len.8,
	str	r2, [r3, #0]	@ len.9, len
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	.LANCHOR1
	.word	.LANCHOR3
	.word	.LANCHOR2
	.size	chb_buf_write, .-chb_buf_write
	.section	.text.chb_buf_read,"ax",%progbits
	.align	1
	.global	chb_buf_read
	.thumb
	.thumb_func
	.ascii	"chb_buf_read\000"
	.align	2
	.word	4278190096
	.type	chb_buf_read, %function
chb_buf_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8	@ tmp142,
	ldr	r0, .L8+4	@ tmp143,
	ldr	r1, [r3, #0]	@ rd_ptr.0, rd_ptr
	ldr	r2, [r3, #0]	@ rd_ptr.1, rd_ptr
	ldrb	r0, [r0, r1]	@ zero_extendqisi2	@ data, chb_buf
	adds	r1, r2, #1	@ tmp145, rd_ptr.1,
	and	r2, r1, #127	@ rd_ptr.2, tmp145,
	str	r2, [r3, #0]	@ rd_ptr.2, rd_ptr
	ldr	r3, .L8+8	@ tmp147,
	ldr	r1, [r3, #0]	@ len.3, len
	subs	r2, r1, #1	@ len.4, len.3,
	str	r2, [r3, #0]	@ len.4, len
	bx	lr	@
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	.LANCHOR2
	.size	chb_buf_read, .-chb_buf_read
	.section	.text.chb_buf_get_len,"ax",%progbits
	.align	1
	.global	chb_buf_get_len
	.thumb
	.thumb_func
	.ascii	"chb_buf_get_len\000"
	.align	2
	.word	4278190096
	.type	chb_buf_get_len, %function
chb_buf_get_len:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11	@ tmp136,
	ldr	r0, [r3, #0]	@ D.4547, len
	bx	lr	@
.L12:
	.align	2
.L11:
	.word	.LANCHOR2
	.size	chb_buf_get_len, .-chb_buf_get_len
	.section	.bss.rd_ptr,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rd_ptr, %object
	.size	rd_ptr, 4
rd_ptr:
	.space	4
	.section	.bss.wr_ptr,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	wr_ptr, %object
	.size	wr_ptr, 4
wr_ptr:
	.space	4
	.section	.bss.len,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	len, %object
	.size	len, 4
len:
	.space	4
	.section	.bss.chb_buf,"aw",%nobits
	.set	.LANCHOR3,. + 0
	.type	chb_buf, %object
	.size	chb_buf, 128
chb_buf:
	.space	128
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
