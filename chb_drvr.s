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
	.file	"chb_drvr.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed chb_drvr.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip chb_drvr.o -Os -Wall
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

	.section	.text.__enable_irq,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"__enable_irq\000"
	.align	2
	.word	4278190096
	.type	__enable_irq, %function
__enable_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 1938 "./lpc134x.h" 1
	cpsie i
@ 0 "" 2
	.thumb
	bx	lr	@
	.size	__enable_irq, .-__enable_irq
	.section	.text.__disable_irq,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"__disable_irq\000"
	.align	2
	.word	4278190096
	.type	__disable_irq, %function
__disable_irq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 1939 "./lpc134x.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	bx	lr	@
	.size	__disable_irq, .-__disable_irq
	.section	.text.chb_delay_us,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"chb_delay_us\000"
	.align	2
	.word	4278190096
	.type	chb_delay_us, %function
chb_delay_us:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #910	@ tmp158,
	push	{r4, lr}	@
	cmp	r0, r3	@ usec, tmp158
	mov	r4, r0	@ usec, usec
	b	.L14	@
.L7:
	movw	r0, #909	@ tmp159,
	cmp	r4, r0	@ usec, tmp159
.L14:
	mov	r0, #0	@,
	bls	.L11	@,
	movw	r1, #910	@,
	bl	timer16DelayUS	@
	sub	r1, r4, #904	@ tmp160, usec,
	subs	r4, r1, #6	@ tmp160, tmp160,
	uxth	r4, r4	@ usec, tmp160
	cmp	r4, #0	@ usec
	bne	.L7	@
	pop	{r4, pc}	@
.L11:
	mov	r1, r4	@, usec
	pop	{r4, lr}	@
	b	timer16DelayUS	@
	.size	chb_delay_us, .-chb_delay_us
	.section	.text.chb_reg_read,"ax",%progbits
	.align	1
	.global	chb_reg_read
	.thumb
	.thumb_func
	.ascii	"chb_reg_read\000"
	.align	2
	.word	4278190096
	.type	chb_reg_read, %function
chb_reg_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r4, .L16	@ tmp139,
	mov	r5, r0	@ addr, addr
	bl	__disable_irq	@
	movs	r0, #0	@ tmp140,
	str	r0, [r4, #0]	@ tmp140, MEM[(volatile long unsigned int *)1342177296B]
	orr	r0, r5, #128	@, addr,
	bl	chb_xfer_byte	@
	bl	chb_xfer_byte	@
	movw	r3, #4095	@ tmp146,
	mov	r5, r0	@ tmp144,
	str	r3, [r4, #0]	@ tmp146, MEM[(volatile long unsigned int *)1342177296B]
	bl	__enable_irq	@
	mov	r0, r5	@, tmp144
	pop	{r3, r4, r5, pc}	@
.L17:
	.align	2
.L16:
	.word	1342177296
	.size	chb_reg_read, .-chb_reg_read
	.section	.text.chb_get_state,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"chb_get_state\000"
	.align	2
	.word	4278190096
	.type	chb_get_state, %function
chb_get_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	chb_reg_read	@
	and	r0, r0, #31	@,,
	pop	{r3, pc}	@
	.size	chb_get_state, .-chb_get_state
	.section	.text.chb_reset,"ax",%progbits
	.align	1
	.global	chb_reset
	.thumb
	.thumb_func
	.ascii	"chb_reset\000"
	.align	2
	.word	4278190092
	.type	chb_reset, %function
chb_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r3, .L25	@ tmp138,
	ldr	r4, .L25+4	@ tmp136,
	movw	r5, #4095	@ tmp137,
	movs	r6, #0	@ tmp139,
	str	r5, [r4, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342244864B]
	mov	r0, #380	@,
	str	r6, [r3, #0]	@ tmp139, MEM[(volatile long unsigned int *)1342246912B]
	bl	chb_delay_us	@
	str	r6, [r4, #0]	@ tmp139, MEM[(volatile long unsigned int *)1342244864B]
	movs	r0, #1	@,
	bl	chb_delay_us	@
	str	r5, [r4, #0]	@ tmp137, MEM[(volatile long unsigned int *)1342244864B]
.L24:
	movs	r0, #29	@,
	bl	chb_reg_read	@
	cmp	r0, #1	@,
	bne	.L24	@,
	movs	r0, #28	@,
	bl	chb_reg_read	@
	cmp	r0, #7	@,
	bne	.L24	@,
	pop	{r4, r5, r6, pc}	@
.L26:
	.align	2
.L25:
	.word	1342246912
	.word	1342244864
	.size	chb_reset, .-chb_reset
	.section	.text.chb_reg_read16,"ax",%progbits
	.align	1
	.global	chb_reg_read16
	.thumb
	.thumb_func
	.ascii	"chb_reg_read16\000"
	.align	2
	.word	4278190096
	.type	chb_reg_read16, %function
chb_reg_read16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ addr, addr
	bl	chb_reg_read	@
	orr	r1, r0, r4	@ tmp146,, addr
	adds	r0, r1, #1	@ tmp148, tmp146,
	uxtb	r0, r0	@, tmp148
	bl	chb_reg_read	@
	movs	r0, #0	@,
	pop	{r4, pc}	@
	.size	chb_reg_read16, .-chb_reg_read16
	.section	.text.chb_reg_write,"ax",%progbits
	.align	1
	.global	chb_reg_write
	.thumb
	.thumb_func
	.ascii	"chb_reg_write\000"
	.align	2
	.word	4278190096
	.type	chb_reg_write, %function
chb_reg_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r4, .L29	@ tmp137,
	mov	r5, r1	@ val, val
	mov	r6, r0	@ addr, addr
	bl	__disable_irq	@
	movs	r0, #0	@ tmp138,
	str	r0, [r4, #0]	@ tmp138, MEM[(volatile long unsigned int *)1342177296B]
	orr	r0, r6, #192	@, addr,
	bl	chb_xfer_byte	@
	mov	r0, r5	@, val
	bl	chb_xfer_byte	@
	movw	r3, #4095	@ tmp142,
	str	r3, [r4, #0]	@ tmp142, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r4, r5, r6, lr}	@
	b	__enable_irq	@
.L30:
	.align	2
.L29:
	.word	1342177296
	.size	chb_reg_write, .-chb_reg_write
	.section	.text.chb_reg_write16,"ax",%progbits
	.align	1
	.global	chb_reg_write16
	.thumb
	.thumb_func
	.ascii	"chb_reg_write16\000"
	.align	2
	.word	4278190096
	.type	chb_reg_write16, %function
chb_reg_write16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r1	@ val, val
	uxtb	r1, r1	@, val
	mov	r5, r0	@ addr, addr
	bl	chb_reg_write	@
	adds	r0, r5, #1	@ tmp142, addr,
	uxtb	r0, r0	@, tmp142
	lsrs	r1, r4, #8	@, val,
	pop	{r3, r4, r5, lr}	@
	b	chb_reg_write	@
	.size	chb_reg_write16, .-chb_reg_write16
	.section	.text.chb_reg_write64,"ax",%progbits
	.align	1
	.global	chb_reg_write64
	.thumb
	.thumb_func
	.ascii	"chb_reg_write64\000"
	.align	2
	.word	4278190096
	.type	chb_reg_write64, %function
chb_reg_write64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r5, r0	@ addr, addr
	mov	r6, r1	@ val, val
	movs	r4, #0	@ ivtmp.40,
.L33:
	mov	r0, r5	@, addr
	ldrb	r1, [r6, r4]	@ zero_extendqisi2	@, MEM[base: val_6(D), index: ivtmp.40_18, offset: 0B]
	adds	r4, r4, #1	@ ivtmp.40, ivtmp.40,
	adds	r5, r5, #1	@ tmp213, addr,
	bl	chb_reg_write	@
	cmp	r4, #8	@ ivtmp.40,
	uxtb	r5, r5	@ addr, tmp213
	bne	.L33	@,
	pop	{r4, r5, r6, pc}	@
	.size	chb_reg_write64, .-chb_reg_write64
	.section	.text.chb_reg_read_mod_write,"ax",%progbits
	.align	1
	.global	chb_reg_read_mod_write
	.thumb
	.thumb_func
	.ascii	"chb_reg_read_mod_write\000"
	.align	2
	.word	4278190104
	.type	chb_reg_read_mod_write, %function
chb_reg_read_mod_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r2	@ mask, mask
	mov	r4, r0	@ addr, addr
	mov	r5, r1	@ val, val
	bl	chb_reg_read	@
	bic	r0, r0, r6	@ tmp150,, mask
	uxtb	r1, r0	@ tmp, tmp150
	ands	r5, r5, r6	@, tmp151, val, mask
	mov	r0, r4	@, addr
	orrs	r1, r1, r5	@,, tmp, tmp151
	pop	{r4, r5, r6, lr}	@
	b	chb_reg_write	@
	.size	chb_reg_read_mod_write, .-chb_reg_read_mod_write
	.section	.text.chb_frame_write,"ax",%progbits
	.align	1
	.global	chb_frame_write
	.thumb
	.thumb_func
	.ascii	"chb_frame_write\000"
	.align	2
	.word	4278190096
	.type	chb_frame_write, %function
chb_frame_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r8, r3	@ data_len, data_len
	adds	r3, r1, r3	@ tmp211, hdr_len, data_len
	cmp	r3, #127	@ tmp211,
	mov	r4, r0	@ hdr, hdr
	mov	r5, r1	@ hdr_len, hdr_len
	mov	r6, r2	@ data, data
	bgt	.L36	@,
	bl	__disable_irq	@
	ldr	r0, .L42	@ tmp212,
	movs	r7, #0	@ tmp213,
	str	r7, [r0, #0]	@ tmp213, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #96	@,
	bl	chb_xfer_byte	@
	b	.L38	@
.L39:
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@, MEM[base: hdr_11(D), index: ivtmp.71_4, offset: 0B]
	bl	chb_xfer_byte	@
	adds	r7, r7, #1	@ ivtmp.71, ivtmp.71,
.L38:
	uxtb	r1, r7	@ ivtmp.71, ivtmp.71
	cmp	r1, r5	@ ivtmp.71, hdr_len
	bcc	.L39	@,
	movs	r4, #0	@ ivtmp.57,
	b	.L40	@
.L41:
	ldrb	r0, [r6, r4]	@ zero_extendqisi2	@, MEM[base: data_16(D), index: ivtmp.57_50, offset: 0B]
	bl	chb_xfer_byte	@
	adds	r4, r4, #1	@ ivtmp.57, ivtmp.57,
.L40:
	uxtb	r2, r4	@ ivtmp.57, ivtmp.57
	cmp	r2, r8	@ ivtmp.57, data_len
	bcc	.L41	@,
	ldr	r3, .L42	@ tmp218,
	movw	r0, #4095	@ tmp219,
	str	r0, [r3, #0]	@ tmp219, MEM[(volatile long unsigned int *)1342177296B]
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	__enable_irq	@
.L36:
	pop	{r4, r5, r6, r7, r8, pc}	@
.L43:
	.align	2
.L42:
	.word	1342177296
	.size	chb_frame_write, .-chb_frame_write
	.section	.text.chb_set_mode,"ax",%progbits
	.align	1
	.global	chb_set_mode
	.thumb
	.thumb_func
	.ascii	"chb_set_mode\000"
	.align	2
	.word	4278190096
	.type	chb_set_mode, %function
chb_set_mode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	cmp	r0, #4	@ mode,
	bhi	.L44	@
	tbb	[pc, r0]	@ mode
.L51:
	.byte	(.L46-.L51)/2
	.byte	(.L47-.L51)/2
	.byte	(.L48-.L51)/2
	.byte	(.L50-.L51)/2
	.byte	(.L50-.L51)/2
	.align	1
.L46:
	movs	r0, #12	@,
	movs	r1, #8	@,
	b	.L53	@
.L47:
	movs	r0, #12	@,
	mov	r1, r0	@,
.L53:
	movs	r2, #63	@,
	bl	chb_reg_read_mod_write	@
	movs	r0, #22	@,
	movs	r1, #2	@,
	movs	r2, #3	@,
	b	.L52	@
.L48:
	movs	r0, #12	@,
	movs	r1, #28	@,
	b	.L53	@
.L50:
	movs	r0, #12	@,
	movs	r1, #0	@,
	movs	r2, #63	@,
	bl	chb_reg_read_mod_write	@
	movs	r1, #3	@,
	movs	r0, #22	@,
	mov	r2, r1	@,
.L52:
	pop	{r3, lr}	@
	b	chb_reg_read_mod_write	@
.L44:
	pop	{r3, pc}	@
	.size	chb_set_mode, .-chb_set_mode
	.section	.text.chb_set_channel,"ax",%progbits
	.align	1
	.global	chb_set_channel
	.thumb
	.thumb_func
	.ascii	"chb_set_channel\000"
	.align	2
	.word	4278190096
	.type	chb_set_channel, %function
chb_set_channel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ channel, channel
	movs	r2, #31	@,
	movs	r0, #8	@,
	mov	r1, r4	@, channel
	bl	chb_reg_read_mod_write	@
	bl	chb_get_state	@
	cmp	r0, #6	@ tmp142,
	beq	.L55	@,
	cmp	r0, #9	@ tmp142,
	bne	.L56	@,
.L55:
	movs	r0, #110	@,
	bl	chb_delay_us	@
.L56:
	movs	r0, #8	@,
	bl	chb_reg_read	@
	and	r0, r0, #31	@ tmp144,,
	cmp	r0, r4	@ tmp144, channel
	ite	ne	@
	movne	r0, #67	@,,
	moveq	r0, #64	@,,
	pop	{r4, pc}	@
	.size	chb_set_channel, .-chb_set_channel
	.section	.text.chb_set_pwr,"ax",%progbits
	.align	1
	.global	chb_set_pwr
	.thumb
	.thumb_func
	.ascii	"chb_set_pwr\000"
	.align	2
	.word	4278190092
	.type	chb_set_pwr, %function
chb_set_pwr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0	@ val, val
	movs	r0, #5	@,
	b	chb_reg_write	@
	.size	chb_set_pwr, .-chb_set_pwr
	.section	.text.chb_set_state,"ax",%progbits
	.align	1
	.global	chb_set_state
	.thumb
	.thumb_func
	.ascii	"chb_set_state\000"
	.align	2
	.word	4278190096
	.type	chb_set_state, %function
chb_set_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ state, state
	ldr	r0, .L79	@ tmp145,
	ldr	r3, [r0, #0]	@ D.5427, MEM[(volatile long unsigned int *)1342246912B]
	lsls	r3, r3, #21	@, D.5427,
	bmi	.L69	@,
	bl	chb_get_state	@
	sub	r2, r0, #17	@ tmp148, curr_state,
	uxtb	r1, r2	@ tmp149, tmp148
	cmp	r1, #1	@ tmp149,
	mov	r4, r0	@ curr_state,
	bls	.L72	@,
	cmp	r0, #1	@ curr_state,
	beq	.L72	@,
	cmp	r0, #2	@ curr_state,
.L74:
	bne	.L63	@,
.L72:
	bl	chb_get_state	@
	cmp	r0, r4	@, curr_state
	b	.L74	@
.L63:
	cmp	r5, #22	@ state,
	beq	.L66	@,
	cmp	r5, #25	@ state,
	beq	.L67	@,
	cmp	r5, #8	@ state,
	bne	.L64	@,
	ldr	r3, .L79	@ tmp151,
	movs	r0, #0	@ tmp152,
	str	r0, [r3, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342246912B]
	movs	r1, #3	@,
	movs	r0, #2	@,
	b	.L75	@
.L67:
	cmp	r4, #22	@ curr_state,
	b	.L78	@
.L66:
	cmp	r4, #25	@ curr_state,
.L78:
	bne	.L64	@,
	movs	r0, #2	@,
	movs	r1, #9	@,
.L75:
	movs	r2, #31	@,
	bl	chb_reg_read_mod_write	@
	movs	r0, #1	@,
	bl	chb_delay_us	@
.L64:
	mov	r1, r5	@, state
	movs	r2, #31	@,
	movs	r0, #2	@,
	bl	chb_reg_read_mod_write	@
	cmp	r4, #8	@ curr_state,
	ite	ne	@
	movne	r0, #1	@,,
	moveq	r0, #110	@,,
	bl	chb_delay_us	@
	bl	chb_get_state	@
	cmp	r0, r5	@, state
	ite	ne	@
	movne	r0, #67	@, D.5169,
	moveq	r0, #64	@, D.5169,
	pop	{r3, r4, r5, pc}	@
.L69:
	movs	r0, #68	@ D.5169,
	pop	{r3, r4, r5, pc}	@
.L80:
	.align	2
.L79:
	.word	1342246912
	.size	chb_set_state, .-chb_set_state
	.section	.text.chb_set_ieee_addr,"ax",%progbits
	.align	1
	.global	chb_set_ieee_addr
	.thumb
	.thumb_func
	.ascii	"chb_set_ieee_addr\000"
	.align	2
	.word	4278190100
	.type	chb_set_ieee_addr, %function
chb_set_ieee_addr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ addr, addr
	mov	r1, r4	@, addr
	movs	r0, #0	@,
	movs	r2, #8	@,
	bl	chb_eeprom_write	@
	movs	r0, #36	@,
	mov	r1, r4	@, addr
	pop	{r4, lr}	@
	b	chb_reg_write64	@
	.size	chb_set_ieee_addr, .-chb_set_ieee_addr
	.section	.text.chb_get_ieee_addr,"ax",%progbits
	.align	1
	.global	chb_get_ieee_addr
	.thumb
	.thumb_func
	.ascii	"chb_get_ieee_addr\000"
	.align	2
	.word	4278190100
	.type	chb_get_ieee_addr, %function
chb_get_ieee_addr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0	@ addr, addr
	movs	r2, #8	@,
	movs	r0, #0	@,
	b	chb_eeprom_read	@
	.size	chb_get_ieee_addr, .-chb_get_ieee_addr
	.section	.text.chb_set_short_addr,"ax",%progbits
	.align	1
	.global	chb_set_short_addr
	.thumb
	.thumb_func
	.ascii	"chb_set_short_addr\000"
	.align	2
	.word	4278190100
	.type	chb_set_short_addr, %function
chb_set_short_addr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}	@
	add	r5, sp, #8	@ tmp139,,
	strh	r0, [r5, #-2]!	@ movhi	@ addr, addr
	bl	chb_get_pcb	@
	mov	r1, r5	@, tmp139
	mov	r4, r0	@ pcb,
	movs	r2, #2	@,
	movs	r0, #9	@,
	bl	chb_eeprom_write	@
	movs	r0, #32	@,
	ldrh	r1, [sp, #6]	@, addr
	bl	chb_reg_write16	@
	ldrh	r3, [sp, #6]	@, addr
	strh	r3, [r4, #0]	@ movhi	@, pcb_2->src_addr
	pop	{r1, r2, r3, r4, r5, pc}
	.size	chb_set_short_addr, .-chb_set_short_addr
	.section	.text.chb_get_short_addr,"ax",%progbits
	.align	1
	.global	chb_get_short_addr
	.thumb
	.thumb_func
	.ascii	"chb_get_short_addr\000"
	.align	2
	.word	4278190100
	.type	chb_get_short_addr, %function
chb_get_short_addr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #9	@,
	add	r1, sp, #6	@,,
	movs	r2, #2	@,
	bl	chb_eeprom_read	@
	ldrh	r0, [sp, #6]	@, addr
	pop	{r1, r2, r3, pc}
	.size	chb_get_short_addr, .-chb_get_short_addr
	.section	.text.chb_tx,"ax",%progbits
	.align	1
	.global	chb_tx
	.thumb
	.thumb_func
	.ascii	"chb_tx\000"
	.align	2
	.word	4278190088
	.type	chb_tx, %function
chb_tx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r6, r1	@ data, data
	mov	r5, r2	@ len, len
	mov	r7, r0	@ hdr, hdr
	bl	chb_get_state	@
	mov	r8, r0	@ tmp143,
	bl	chb_get_pcb	@
	cmp	r8, #2	@ tmp143,
	mov	r4, r0	@ pcb,
	beq	.L88	@,
	cmp	r8, #18	@ tmp143,
	beq	.L89	@,
	movs	r0, #8	@,
	bl	chb_set_state	@
	movs	r0, #25	@,
	bl	chb_set_state	@
	mov	r0, r7	@, hdr
	movs	r1, #10	@,
	mov	r2, r6	@, data
	mov	r3, r5	@, len
	bl	chb_frame_write	@
	movs	r0, #2	@,
	mov	r1, r0	@,
	movs	r2, #31	@,
	bl	chb_reg_read_mod_write	@
.L87:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pcb_3->tx_end, pcb_3->tx_end
	cmp	r3, #0	@ pcb_3->tx_end
	beq	.L87	@
	movs	r1, #0	@ tmp146,
	strb	r1, [r4, #4]	@ tmp146, pcb_3->tx_end
	movs	r0, #2	@,
	bl	chb_reg_read	@
	lsrs	r0, r0, #5	@ tmp149,,
	uxtb	r0, r0	@ D.5624, tmp149
	pop	{r4, r5, r6, r7, r8, pc}	@
.L88:
	movs	r0, #68	@ D.5624,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L89:
	movs	r0, #68	@ D.5624,
	pop	{r4, r5, r6, r7, r8, pc}	@
	.size	chb_tx, .-chb_tx
	.section	.text.chb_drvr_init,"ax",%progbits
	.align	1
	.global	chb_drvr_init
	.thumb
	.thumb_func
	.ascii	"chb_drvr_init\000"
	.align	2
	.word	4278190096
	.type	chb_drvr_init, %function
chb_drvr_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	sub	sp, sp, #20	@,,
	bl	chb_spi_init	@
	movw	r1, #65535	@,
	movs	r0, #0	@,
	bl	timer16Init	@
	movs	r0, #0	@,
	bl	timer16Enable	@
	movs	r0, #1	@,
	mov	r2, r0	@,
	movs	r1, #10	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	mov	r2, r0	@,
	movs	r1, #9	@,
	bl	gpioSetDir	@
	ldr	r2, .L95	@ tmp141,
	ldr	r0, .L95+4	@ tmp139,
	movw	r3, #4095	@ tmp140,
	str	r3, [r0, #0]	@ tmp140, MEM[(volatile long unsigned int *)1342246912B]
	movs	r1, #0	@,
	str	r3, [r2, #0]	@ tmp140, MEM[(volatile long unsigned int *)1342244864B]
	ldr	r0, .L95+8	@,
	bl	gpioSetPullup	@
	ldr	r0, .L95+12	@,
	movs	r1, #0	@,
	bl	gpioSetPullup	@
	bl	chb_reset	@
	movs	r0, #14	@,
	movs	r1, #0	@,
	bl	chb_reg_write	@
	movs	r0, #2	@,
	movs	r1, #3	@,
	movs	r2, #31	@,
	bl	chb_reg_read_mod_write	@
.L92:
	movs	r0, #1	@,
	bl	chb_reg_read	@
	and	r4, r0, #31	@ tmp144,,
	cmp	r4, #8	@ tmp144,
	bne	.L92	@,
	movs	r2, #192	@,
	movs	r0, #46	@,
	movs	r1, #64	@,
	bl	chb_reg_read_mod_write	@
	movs	r0, #14	@,
	movs	r1, #12	@,
	bl	chb_reg_write	@
	movs	r1, #32	@,
	mov	r2, r1	@,
	movs	r0, #4	@,
	bl	chb_reg_read_mod_write	@
	movs	r0, #0	@,
	bl	chb_set_mode	@
	movs	r0, #233	@,
	bl	chb_set_pwr	@
	movs	r0, #0	@,
	bl	chb_set_channel	@
	movs	r0, #22	@,
	bl	chb_set_state	@
	movs	r0, #34	@,
	movw	r1, #4660	@,
	bl	chb_reg_write16	@
	bl	chb_get_short_addr	@
	mov	r1, r0	@ tmp145,
	movs	r0, #32	@,
	bl	chb_reg_write16	@
	add	r0, sp, #8	@,,
	bl	chb_get_ieee_addr	@
	movs	r0, #36	@,
	add	r1, sp, #8	@,,
	bl	chb_reg_write64	@
	movs	r2, #0	@,
	movs	r0, #1	@,
	mov	r1, r4	@, tmp144
	bl	gpioSetDir	@
	movs	r1, #0	@,
	ldr	r0, .L95+16	@,
	bl	gpioSetPullup	@
	movs	r5, #1	@ tmp148,
	movs	r2, #0	@,
	mov	r3, r2	@,
	mov	r0, r5	@, tmp148
	mov	r1, r4	@, tmp144
	str	r5, [sp, #0]	@ tmp148,
	bl	gpioSetInterrupt	@
	mov	r0, r5	@, tmp148
	mov	r1, r4	@, tmp144
	bl	gpioIntEnable	@
	bl	chb_get_state	@
	cmp	r0, #22	@,
	beq	.L91	@,
	ldr	r0, .L95+20	@,
	bl	printf	@
.L91:
	add	sp, sp, #20	@,,
	pop	{r4, r5, pc}
.L96:
	.align	2
.L95:
	.word	1342244864
	.word	1342246912
	.word	1074020460
	.word	1074020408
	.word	1074020372
	.word	.LANCHOR0
	.size	chb_drvr_init, .-chb_drvr_init
	.section	.text.chb_sleep,"ax",%progbits
	.align	1
	.global	chb_sleep
	.thumb
	.thumb_func
	.ascii	"chb_sleep\000"
	.align	2
	.word	4278190092
	.type	chb_sleep, %function
chb_sleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L100	@ tmp139,
	cbz	r0, .L98	@ enb,
	movs	r0, #8	@,
	bl	chb_set_state	@
	movw	r3, #4095	@ tmp136,
	str	r3, [r4, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342246912B]
	pop	{r4, pc}	@
.L98:
	str	r0, [r4, #0]	@ enb, MEM[(volatile long unsigned int *)1342246912B]
	movs	r0, #240	@,
	bl	chb_delay_us	@
	movs	r0, #22	@,
	pop	{r4, lr}	@
	b	chb_set_state	@
.L101:
	.align	2
.L100:
	.word	1342246912
	.size	chb_sleep, .-chb_sleep
	.section	.text.chb_ISR_Handler,"ax",%progbits
	.align	1
	.global	chb_ISR_Handler
	.thumb
	.thumb_func
	.ascii	"chb_ISR_Handler\000"
	.align	2
	.word	4278190096
	.type	chb_ISR_Handler, %function
chb_ISR_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	bl	chb_get_pcb	@
	ldr	r6, .L125	@ tmp166,
	movs	r4, #0	@ tmp167,
	mov	r5, r0	@ pcb,
	bl	__disable_irq	@
	str	r4, [r6, #0]	@ tmp167, MEM[(volatile long unsigned int *)1342177296B]
	movs	r0, #143	@,
	bl	chb_xfer_byte	@
	mov	r0, r4	@, tmp167
	bl	chb_xfer_byte	@
	movw	r3, #4095	@ tmp170,
	mov	r4, r0	@ intp_src,
	str	r3, [r6, #0]	@ tmp170, MEM[(volatile long unsigned int *)1342177296B]
	b	.L124	@
.L118:
	ands	r7, r4, #4	@ tmp171, intp_src,
	beq	.L104	@,
	and	r4, r4, #251	@ intp_src, intp_src,
	b	.L124	@
.L104:
	lsls	r2, r4, #28	@, intp_src,
	bpl	.L106	@,
	bl	chb_get_state	@
	cmp	r0, #22	@ tmp174,
	bhi	.L107	@,
	ldr	r1, .L125+4	@ tmp182,
	sxtb	r0, r0	@ state, tmp174
	lsls	r3, r1, r0	@, tmp182, state
	bpl	.L107	@,
	movs	r0, #7	@,
	bl	chb_reg_read	@
	strb	r0, [r5, #19]	@, pcb_3->ed
	movs	r0, #6	@,
	bl	chb_reg_read	@
	uxtb	r3, r0	@ D.5076,
	lsrs	r2, r3, #7	@ D.5078, D.5076,
	strb	r2, [r5, #20]	@ D.5078, pcb_3->crc
	cmp	r2, #0	@ D.5078
	beq	.L109	@
	ldr	r6, .L125	@ tmp190,
	movs	r0, #32	@,
	str	r7, [r6, #0]	@ tmp171, MEM[(volatile long unsigned int *)1342177296B]
	bl	chb_xfer_byte	@
	mov	r0, r7	@, tmp171
	bl	chb_xfer_byte	@
	subs	r1, r0, #3	@ tmp193, len,
	mov	r6, r0	@ len,
	uxtb	r0, r1	@ tmp194, tmp193
	cmp	r0, #124	@ tmp194,
	bhi	.L110	@,
	bl	chb_buf_get_len	@
	rsb	r2, r0, #128	@ tmp195,,
	cmp	r6, r2	@ len, tmp195
	bcs	.L111	@,
	mov	r0, r6	@, len
	bl	chb_buf_write	@
.L112:
	movs	r0, #0	@,
	adds	r7, r7, #1	@ tmp197, i,
	bl	chb_xfer_byte	@
	uxtb	r7, r7	@ i, tmp197
	bl	chb_buf_write	@
	cmp	r7, r6	@ i, len
	bne	.L112	@,
	b	.L110	@
.L111:
	bl	chb_get_pcb	@
	mov	r8, r0	@ pcb,
.L113:
	movs	r0, #0	@,
	bl	chb_xfer_byte	@
	adds	r3, r7, #1	@ tmp198, i,
	uxtb	r7, r3	@ i, tmp198
	cmp	r7, r6	@ i, len
	bne	.L113	@,
	ldrh	r1, [r8, #14]	@, pcb_85->overflow
	adds	r0, r1, #1	@ tmp200, pcb_85->overflow,
	strh	r0, [r8, #14]	@ movhi	@ tmp200, pcb_85->overflow
	ldr	r0, .L125+8	@,
	bl	printf	@
.L110:
	ldr	r2, .L125	@ tmp203,
	movw	r1, #4095	@ tmp204,
	str	r1, [r2, #0]	@ tmp204, MEM[(volatile long unsigned int *)1342177296B]
	bl	__enable_irq	@
	ldrh	r0, [r5, #6]	@, pcb_3->rcvd_xfers
	movs	r2, #1	@ tmp208,
	adds	r3, r0, #1	@ tmp206, pcb_3->rcvd_xfers,
	strh	r3, [r5, #6]	@ movhi	@ tmp206, pcb_3->rcvd_xfers
	strb	r2, [r5, #3]	@ tmp208, pcb_3->data_rcv
	b	.L109	@
.L107:
	movs	r3, #1	@ tmp210,
	strb	r3, [r5, #4]	@ tmp210, pcb_3->tx_end
.L109:
	and	r4, r4, #247	@ intp_src, intp_src,
.L114:
	movs	r0, #22	@,
	bl	chb_set_state	@
	cmp	r0, #64	@,
	bne	.L114	@,
	b	.L124	@
.L106:
	lsls	r3, r4, #25	@, intp_src,
	bpl	.L115	@,
	ldrh	r1, [r5, #16]	@, pcb_3->underrun
	and	r4, r4, #191	@ intp_src, intp_src,
	adds	r0, r1, #1	@ tmp217, pcb_3->underrun,
	strh	r0, [r5, #16]	@ movhi	@ tmp217, pcb_3->underrun
	b	.L124	@
.L115:
	lsls	r0, r4, #30	@, intp_src,
	bpl	.L116	@,
	and	r4, r4, #253	@ intp_src, intp_src,
	b	.L124	@
.L116:
	lsls	r1, r4, #31	@, intp_src,
	bpl	.L117	@,
	and	r4, r4, #254	@ intp_src, intp_src,
	b	.L124	@
.L117:
	lsls	r2, r4, #24	@, intp_src,
	bpl	.L124	@,
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pcb_3->battlow, pcb_3->battlow
	and	r4, r4, #127	@ intp_src, intp_src,
	adds	r2, r3, #1	@ tmp227, pcb_3->battlow,
	strb	r2, [r5, #18]	@ tmp227, pcb_3->battlow
.L124:
	cmp	r4, #0	@ intp_src
	bne	.L118	@
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	__enable_irq	@
.L126:
	.align	2
.L125:
	.word	1342177296
	.word	33571328
	.word	.LANCHOR1
	.size	chb_ISR_Handler, .-chb_ISR_Handler
	.global	chb_err_init
	.global	chb_err_overflow
	.section	.rodata.chb_err_init,"a",%progbits
	.set	.LANCHOR0,. + 0
	.type	chb_err_init, %object
	.size	chb_err_init, 33
chb_err_init:
	.ascii	"RADIO NOT INITIALIZED PROPERLY\015\012\000"
	.section	.rodata.chb_err_overflow,"a",%progbits
	.set	.LANCHOR1,. + 0
	.type	chb_err_overflow, %object
	.size	chb_err_overflow, 37
chb_err_overflow:
	.ascii	"BUFFER FULL. TOSSING INCOMING DATA\015\012\000"
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
