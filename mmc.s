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
	.file	"mmc.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed mmc.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip mmc.o -Os -Wall -ffunction-sections
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

	.section	.text.chk_power,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"chk_power\000"
	.align	2
	.word	4278190092
	.type	chk_power, %function
chk_power:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1	@,
	bx	lr	@
	.size	chk_power, .-chk_power
	.section	.text.xmit_spi,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"xmit_spi\000"
	.align	2
	.word	4278190092
	.type	xmit_spi, %function
xmit_spi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	add	r1, sp, #8	@ tmp136,,
	strb	r0, [r1, #-1]!	@ dat, dat
	movs	r2, #1	@,
	movs	r0, #0	@,
	bl	sspSend	@
	pop	{r1, r2, r3, pc}
	.size	xmit_spi, .-xmit_spi
	.section	.text.rcvr_spi,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"rcvr_spi\000"
	.align	2
	.word	4278190092
	.type	rcvr_spi, %function
rcvr_spi:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	movs	r0, #0	@ tmp136,
	add	r1, sp, #8	@ tmp138,,
	strb	r0, [r1, #-1]!	@ tmp136, data
	movs	r2, #1	@,
	bl	sspReceive	@
	ldrb	r0, [sp, #7]	@ zero_extendqisi2	@, data
	pop	{r1, r2, r3, pc}
	.size	rcvr_spi, .-rcvr_spi
	.section	.text.wait_ready,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"wait_ready\000"
	.align	2
	.word	4278190092
	.type	wait_ready, %function
wait_ready:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L8	@ tmp137,
	movs	r3, #50	@ tmp138,
	strb	r3, [r4, #0]	@ tmp138, Timer2
	bl	rcvr_spi	@
.L6:
	bl	rcvr_spi	@
	cmp	r0, #255	@ res,
	beq	.L5	@,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ Timer2, Timer2
	cmp	r1, #0	@ Timer2
	bne	.L6	@
.L5:
	pop	{r4, pc}	@
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	wait_ready, .-wait_ready
	.section	.text.deselect,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"deselect\000"
	.align	2
	.word	4278190092
	.type	deselect, %function
deselect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11	@ tmp134,
	movw	r2, #4095	@ tmp135,
	str	r2, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1342177296B]
	b	rcvr_spi	@
.L12:
	.align	2
.L11:
	.word	1342177296
	.size	deselect, .-deselect
	.section	.text.select,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"select\000"
	.align	2
	.word	4278190088
	.type	select, %function
select:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16	@ tmp137,
	push	{r4, lr}	@
	movs	r4, #0	@ tmp138,
	str	r4, [r3, #0]	@ tmp138, MEM[(volatile long unsigned int *)1342177296B]
	bl	wait_ready	@
	cmp	r0, #255	@,
	beq	.L15	@,
	bl	deselect	@
	mov	r0, r4	@ D.4971, tmp138
	pop	{r4, pc}	@
.L15:
	movs	r0, #1	@ D.4971,
	pop	{r4, pc}	@
.L17:
	.align	2
.L16:
	.word	1342177296
	.size	select, .-select
	.section	.text.send_cmd,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"send_cmd\000"
	.align	2
	.word	4278190092
	.type	send_cmd, %function
send_cmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r2, r0, #24	@, cmd,
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ cmd, cmd
	mov	r5, r1	@ arg, arg
	bpl	.L19	@,
	movs	r0, #119	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	cmp	r0, #1	@ res,
	bhi	.L20	@,
	and	r4, r4, #127	@ cmd, cmd,
.L19:
	bl	deselect	@
	bl	select	@
	cbz	r0, .L25	@,
	mov	r0, r4	@, cmd
	bl	xmit_spi	@
	lsrs	r0, r5, #24	@, arg,
	bl	xmit_spi	@
	lsrs	r1, r5, #16	@ tmp160, arg,
	uxtb	r0, r1	@, tmp160
	bl	xmit_spi	@
	lsrs	r0, r5, #8	@ tmp162, arg,
	uxtb	r0, r0	@, tmp162
	bl	xmit_spi	@
	uxtb	r0, r5	@, arg
	bl	xmit_spi	@
	cmp	r4, #64	@ cmd,
	beq	.L26	@,
	cmp	r4, #72	@ cmd,
	ite	eq	@
	moveq	r0, #135	@, n,
	movne	r0, #1	@, n,
	b	.L22	@
.L26:
	movs	r0, #149	@ n,
.L22:
	bl	xmit_spi	@
	cmp	r4, #76	@ cmd,
	bne	.L23	@,
	bl	rcvr_spi	@
.L23:
	movs	r4, #10	@ ivtmp.42,
.L24:
	bl	rcvr_spi	@
	lsls	r3, r0, #24	@, res,
	bpl	.L20	@,
	subs	r4, r4, #1	@ tmp167, ivtmp.42,
	uxtb	r4, r4	@ ivtmp.42, tmp167
	cmp	r4, #0	@ ivtmp.42
	bne	.L24	@
	pop	{r3, r4, r5, pc}	@
.L25:
	movs	r0, #255	@ res,
.L20:
	pop	{r3, r4, r5, pc}	@
	.size	send_cmd, .-send_cmd
	.section	.text.xmit_datablock,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"xmit_datablock\000"
	.align	2
	.word	4278190096
	.type	xmit_datablock, %function
xmit_datablock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ buff, buff
	mov	r5, r1	@ token, token
	bl	wait_ready	@
	cmp	r0, #255	@,
	bne	.L32	@,
	mov	r0, r5	@, token
	bl	xmit_spi	@
	cmp	r5, #253	@ token,
	beq	.L33	@,
	movs	r5, #0	@ ivtmp.53,
.L31:
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@, MEM[base: buff_8(D), index: ivtmp.53_18, offset: 0B]
	bl	xmit_spi	@
	adds	r3, r4, r5	@ tmp175, buff, ivtmp.53
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@, MEM[base: D.5275_30, offset: 1B]
	adds	r5, r5, #2	@ ivtmp.53, ivtmp.53,
	bl	xmit_spi	@
	cmp	r5, #512	@ ivtmp.53,
	bne	.L31	@,
	movs	r0, #255	@,
	bl	xmit_spi	@
	movs	r0, #255	@,
	bl	xmit_spi	@
	bl	rcvr_spi	@
	and	r2, r0, #31	@ tmp178,,
	sub	r1, r2, #5	@, tmp178,
	rsbs	r0, r1, #0	@ D.5074,,
	adc	r0, r0, r1	@ D.5074, D.5074,
	pop	{r3, r4, r5, pc}	@
.L32:
	movs	r0, #0	@ D.5074,
	pop	{r3, r4, r5, pc}	@
.L33:
	movs	r0, #1	@ D.5074,
	pop	{r3, r4, r5, pc}	@
	.size	xmit_datablock, .-xmit_datablock
	.section	.text.rcvr_datablock,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"rcvr_datablock\000"
	.align	2
	.word	4278190096
	.type	rcvr_datablock, %function
rcvr_datablock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	ldr	r6, .L44	@ tmp149,
	movs	r3, #20	@ tmp150,
	mov	r4, r0	@ buff, buff
	mov	r5, r1	@ btr, btr
	strb	r3, [r6, #0]	@ tmp150, Timer1
.L37:
	bl	rcvr_spi	@
	cmp	r0, #255	@ tmp152,
	bne	.L36	@,
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cmp	r0, #0	@ Timer1.10
	bne	.L37	@
	pop	{r4, r5, r6, pc}	@
.L36:
	cmp	r0, #254	@ tmp152,
	bne	.L40	@,
.L41:
	movs	r0, #0	@,
	mov	r1, r4	@, buff
	movs	r2, #1	@,
	bl	sspReceive	@
	adds	r1, r4, #1	@, buff,
	movs	r0, #0	@,
	movs	r2, #1	@,
	bl	sspReceive	@
	adds	r1, r4, #2	@, buff,
	movs	r0, #0	@,
	movs	r2, #1	@,
	bl	sspReceive	@
	adds	r1, r4, #3	@, D.5289,
	movs	r0, #0	@,
	movs	r2, #1	@,
	adds	r4, r4, #4	@ buff, buff,
	bl	sspReceive	@
	subs	r5, r5, #4	@ btr, btr,
	bne	.L41	@,
	bl	rcvr_spi	@
	bl	rcvr_spi	@
	movs	r0, #1	@ D.5021,
	pop	{r4, r5, r6, pc}	@
.L40:
	movs	r0, #0	@ D.5021,
	pop	{r4, r5, r6, pc}	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR1
	.size	rcvr_datablock, .-rcvr_datablock
	.section	.text.disk_initialize,"ax",%progbits
	.align	1
	.global	disk_initialize
	.thumb
	.thumb_func
	.ascii	"disk_initialize\000"
	.align	2
	.word	4278190096
	.type	disk_initialize, %function
disk_initialize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ drv, drv
	movs	r0, #0	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	bl	sspInit	@
	movs	r0, #0	@,
	movs	r1, #2	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r1, #0	@,
	mov	r2, r1	@,
	movs	r0, #3	@,
	bl	gpioSetDir	@
	ldr	r0, .L76	@,
	movs	r1, #0	@,
	bl	gpioSetPullup	@
	movs	r0, #20	@,
	bl	systickDelay	@
	cmp	r4, #0	@ drv
	bne	.L60	@
	ldr	r3, .L76+4	@ tmp243,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ Stat, Stat
	mov	r6, r3	@ tmp307, tmp243
	lsls	r0, r2, #30	@, Stat,
	bpl	.L48	@,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ Stat, Stat
	b	.L47	@
.L48:
	ldr	r3, .L76+8	@ tmp252,
	ldr	r2, .L76+12	@ tmp250,
	movs	r4, #10	@ tmp251,
	movw	r1, #2055	@ tmp253,
	movs	r0, #2	@ tmp255,
	str	r4, [r2, #0]	@ tmp251, MEM[(volatile long unsigned int *)1074036884B]
	str	r1, [r3, #0]	@ tmp253, MEM[(volatile long unsigned int *)1074003968B]
	movs	r4, #100	@ ivtmp.74,
	str	r0, [r3, #16]	@ tmp255, MEM[(volatile long unsigned int *)1074003984B]
.L49:
	bl	rcvr_spi	@
	subs	r0, r4, #1	@ tmp256, ivtmp.74,
	uxtb	r4, r0	@ ivtmp.74, tmp256
	cmp	r4, #0	@ ivtmp.74
	bne	.L49	@
	movs	r0, #64	@,
	mov	r1, r4	@, ivtmp.74
	bl	send_cmd	@
	cmp	r0, #1	@,
	bne	.L50	@,
	ldr	r5, .L76+16	@ tmp258,
	movs	r3, #100	@ tmp259,
	movs	r0, #72	@,
	mov	r1, #426	@,
	strb	r3, [r5, #0]	@ tmp259, Timer1
	bl	send_cmd	@
	cmp	r0, #1	@,
	bne	.L51	@,
.L52:
	bl	rcvr_spi	@
	add	ip, sp, #4	@ tmp263,,
	strb	r0, [ip, r4]	@, MEM[symbol: ocr, index: ivtmp.89_100, offset: 0B]
	adds	r4, r4, #1	@ ivtmp.89, ivtmp.89,
	cmp	r4, #4	@ ivtmp.89,
	bne	.L52	@,
	ldrb	r1, [sp, #6]	@ zero_extendqisi2	@ ocr, ocr
	cmp	r1, #1	@ ocr,
	bne	.L65	@,
	ldrb	r4, [sp, #7]	@ zero_extendqisi2	@ ocr, ocr
	cmp	r4, #170	@ ocr,
	bne	.L65	@,
.L70:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cbz	r2, .L53	@ Timer1,
	movs	r0, #233	@,
	mov	r1, #1073741824	@,
	bl	send_cmd	@
	cmp	r0, #0	@
	bne	.L70	@
.L53:
	ldrb	r4, [r5, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cmp	r4, #0	@ Timer1.22
	beq	.L50	@
	movs	r0, #122	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	cmp	r0, #0	@ tmp274
	bne	.L65	@
	mov	r4, r0	@ ivtmp.75, tmp274
.L55:
	bl	rcvr_spi	@
	add	r3, sp, #4	@ tmp276,,
	strb	r0, [r3, r4]	@, MEM[symbol: ocr, index: ivtmp.75_97, offset: 0B]
	adds	r4, r4, #1	@ ivtmp.75, ivtmp.75,
	cmp	r4, #4	@ ivtmp.75,
	bne	.L55	@,
	ldrb	r1, [sp, #4]	@ zero_extendqisi2	@ ocr, ocr
	and	r0, r1, #64	@ tmp279, ocr,
	cmp	r0, #0	@ tmp279,
	ite	eq	@
	moveq	r4, #4	@, ty,
	movne	r4, #12	@, ty,
	b	.L50	@
.L51:
	movs	r0, #233	@,
	mov	r1, r4	@, ivtmp.74
	bl	send_cmd	@
	cmp	r0, #1	@,
	ite	hi	@
	movhi	r7, #1	@, ty,
	movls	r7, #2	@, ty,
	ite	hi	@
	movhi	r4, #65	@, cmd,
	movls	r4, #233	@, cmd,
.L58:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cbz	r2, .L57	@ Timer1,
	mov	r0, r4	@, cmd
	movs	r1, #0	@,
	bl	send_cmd	@
	cmp	r0, #0	@
	bne	.L58	@
.L57:
	ldrb	r4, [r5, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cbz	r4, .L50	@ Timer1.25,
	movs	r0, #80	@,
	mov	r1, #512	@,
	bl	send_cmd	@
	cmp	r0, #0	@,
	ite	eq	@
	moveq	r4, r7	@, ty, ty
	movne	r4, #0	@, ty,
	b	.L50	@
.L65:
	movs	r4, #0	@ ty,
.L50:
	ldr	r3, .L76+20	@ tmp289,
	strb	r4, [r3, #0]	@ ty, CardType
	bl	deselect	@
	cbz	r4, .L59	@ ty,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ Stat, Stat
	ldr	r3, .L76+12	@ tmp297,
	and	r1, r2, #254	@ Stat.27, Stat,
	strb	r1, [r6, #0]	@ Stat.27, Stat
	movs	r0, #1	@ tmp298,
	ldr	r1, .L76+8	@ tmp299,
	str	r0, [r3, #0]	@ tmp298, MEM[(volatile long unsigned int *)1074036884B]
	movw	r2, #1287	@ tmp300,
	movs	r0, #2	@ tmp302,
	str	r2, [r1, #0]	@ tmp300, MEM[(volatile long unsigned int *)1074003968B]
	str	r0, [r1, #16]	@ tmp302, MEM[(volatile long unsigned int *)1074003984B]
.L59:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ Stat, Stat
	b	.L47	@
.L60:
	movs	r0, #1	@ D.5121,
.L47:
	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
.L77:
	.align	2
.L76:
	.word	1074020484
	.word	.LANCHOR2
	.word	1074003968
	.word	1074036884
	.word	.LANCHOR1
	.word	.LANCHOR3
	.size	disk_initialize, .-disk_initialize
	.section	.text.disk_status,"ax",%progbits
	.align	1
	.global	disk_status
	.thumb
	.thumb_func
	.ascii	"disk_status\000"
	.align	2
	.word	4278190092
	.type	disk_status, %function
disk_status:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L80	@ drv,
	ldr	r3, .L81	@ tmp137,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ Stat, Stat
	bx	lr	@
.L80:
	movs	r0, #1	@ D.5117,
	bx	lr	@
.L82:
	.align	2
.L81:
	.word	.LANCHOR2
	.size	disk_status, .-disk_status
	.section	.text.disk_read,"ax",%progbits
	.align	1
	.global	disk_read
	.thumb
	.thumb_func
	.ascii	"disk_read\000"
	.align	2
	.word	4278190092
	.type	disk_read, %function
disk_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r1	@ buff, buff
	mov	r5, r3	@ count, count
	mov	r1, r2	@ sector, sector
	cmp	r0, #0	@ drv
	bne	.L91	@
	cmp	r3, #0	@ count
	beq	.L91	@
	ldr	r0, .L96	@ tmp155,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ Stat, Stat
	lsls	r0, r3, #31	@, Stat,
	bmi	.L92	@,
	ldr	r3, .L96+4	@ tmp159,
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ CardType, CardType
	lsls	r3, ip, #28	@, CardType,
	it	pl
	lslpl	r1, r2, #9	@ sector, sector,
	cmp	r5, #1	@ count,
	bne	.L86	@,
	movs	r0, #81	@,
	bl	send_cmd	@
	cbnz	r0, .L87	@,
	mov	r0, r4	@, buff
	mov	r1, #512	@,
	bl	rcvr_datablock	@
	rsbs	r5, r0, #1	@ count,,
	it	cc
	movcc	r5, #0	@ count,
	b	.L87	@
.L86:
	movs	r0, #82	@,
	bl	send_cmd	@
	cbnz	r0, .L87	@,
.L94:
	mov	r0, r4	@, buff
	mov	r1, #512	@,
	bl	rcvr_datablock	@
	cbz	r0, .L88	@,
	subs	r5, r5, #1	@ tmp166, count,
	uxtb	r5, r5	@ count, tmp166
	add	r4, r4, #512	@ buff, buff,
	cmp	r5, #0	@ count
	bne	.L94	@
.L88:
	movs	r0, #76	@,
	movs	r1, #0	@,
	bl	send_cmd	@
.L87:
	bl	deselect	@
	adds	r0, r5, #0	@ D.5087, count,
	it	ne
	movne	r0, #1	@ D.5087,
	pop	{r3, r4, r5, pc}	@
.L91:
	movs	r0, #4	@ D.5087,
	pop	{r3, r4, r5, pc}	@
.L92:
	movs	r0, #3	@ D.5087,
	pop	{r3, r4, r5, pc}	@
.L97:
	.align	2
.L96:
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	disk_read, .-disk_read
	.section	.text.disk_write,"ax",%progbits
	.align	1
	.global	disk_write
	.thumb
	.thumb_func
	.ascii	"disk_write\000"
	.align	2
	.word	4278190092
	.type	disk_write, %function
disk_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r1	@ buff, buff
	mov	r5, r2	@ sector, sector
	mov	r6, r3	@ count, count
	cmp	r0, #0	@ drv
	bne	.L107	@
	cmp	r3, #0	@ count
	beq	.L107	@
	ldr	r3, .L114	@ tmp160,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ Stat, Stat
	lsls	r0, r2, #31	@, Stat,
	bmi	.L108	@,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ Stat, Stat
	lsls	r1, r3, #29	@, Stat,
	bmi	.L109	@,
	ldr	r0, .L114+4	@ tmp168,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.5043, CardType
	lsls	r2, r3, #28	@, D.5043,
	it	pl
	lslpl	r5, r5, #9	@ sector, sector,
	cmp	r6, #1	@ count,
	bne	.L101	@,
	movs	r0, #88	@,
	mov	r1, r5	@, sector
	bl	send_cmd	@
	cbnz	r0, .L102	@,
	movs	r1, #254	@,
	mov	r0, r4	@, buff
	bl	xmit_datablock	@
	rsbs	r6, r0, #1	@ count,,
	it	cc
	movcc	r6, #0	@ count,
	b	.L102	@
.L101:
	tst	r3, #6	@ D.5043,
	beq	.L103	@,
	movs	r0, #215	@,
	mov	r1, r6	@, count
	bl	send_cmd	@
.L103:
	movs	r0, #89	@,
	mov	r1, r5	@, sector
	bl	send_cmd	@
	cbnz	r0, .L102	@,
.L112:
	mov	r0, r4	@, buff
	movs	r1, #252	@,
	bl	xmit_datablock	@
	cbz	r0, .L104	@,
	subs	r6, r6, #1	@ tmp175, count,
	uxtb	r6, r6	@ count, tmp175
	add	r4, r4, #512	@ buff, buff,
	cmp	r6, #0	@ count
	bne	.L112	@
.L104:
	movs	r0, #0	@,
	movs	r1, #253	@,
	bl	xmit_datablock	@
	cmp	r0, #0	@,
	it	eq	@
	moveq	r6, #1	@, count,
.L102:
	bl	deselect	@
	adds	r0, r6, #0	@ D.5030, count,
	it	ne
	movne	r0, #1	@ D.5030,
	pop	{r4, r5, r6, pc}	@
.L107:
	movs	r0, #4	@ D.5030,
	pop	{r4, r5, r6, pc}	@
.L108:
	movs	r0, #3	@ D.5030,
	pop	{r4, r5, r6, pc}	@
.L109:
	movs	r0, #2	@ D.5030,
	pop	{r4, r5, r6, pc}	@
.L115:
	.align	2
.L114:
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	disk_write, .-disk_write
	.section	.text.disk_ioctl,"ax",%progbits
	.align	1
	.global	disk_ioctl
	.thumb
	.thumb_func
	.ascii	"disk_ioctl\000"
	.align	2
	.word	4278190092
	.type	disk_ioctl, %function
disk_ioctl:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, lr}	@
	mov	r4, r2	@ buff, buff
	mov	r5, r0	@ drv, drv
	cmp	r0, #0	@ drv
	bne	.L137	@
	cmp	r1, #4	@ ctrl,
	bne	.L118	@,
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ MEM[(BYTE *)buff_7(D)], MEM[(BYTE *)buff_7(D)]
	cmp	r3, #1	@ MEM[(BYTE *)buff_7(D)],
	bls	.L117	@,
	cmp	r3, #2	@ MEM[(BYTE *)buff_7(D)],
	beq	.L120	@,
	mov	r5, r1	@ res, ctrl
	b	.L117	@
.L120:
	bl	chk_power	@
	strb	r0, [r4, #1]	@, MEM[(BYTE *)buff_7(D) + 1B]
	b	.L117	@
.L118:
	ldr	r0, .L163	@ tmp280,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ Stat, Stat
	lsls	r5, r3, #31	@, Stat,
	bmi	.L139	@,
	cmp	r1, #14	@ ctrl,
	bhi	.L140	@
	tbh	[pc, r1, lsl #1]	@ ctrl
.L131:
	.2byte	(.L122-.L131)/2
	.2byte	(.L123-.L131)/2
	.2byte	(.L124-.L131)/2
	.2byte	(.L125-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L140-.L131)/2
	.2byte	(.L126-.L131)/2
	.2byte	(.L127-.L131)/2
	.2byte	(.L128-.L131)/2
	.2byte	(.L129-.L131)/2
	.2byte	(.L130-.L131)/2
.L122:
	bl	select	@
	cmp	r0, #0	@
	beq	.L153	@
	bl	deselect	@
	b	.L157	@
.L123:
	movs	r0, #73	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	mov	r5, r0	@ tmp285,
	cmp	r0, #0	@ tmp285
	bne	.L153	@
	mov	r0, sp	@,
	movs	r1, #16	@,
	bl	rcvr_datablock	@
	cmp	r0, #0	@
	beq	.L153	@
	ldrb	r2, [sp, #0]	@ zero_extendqisi2	@ csd, csd
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@ csd, csd
	lsrs	r1, r2, #6	@ tmp290, csd,
	cmp	r1, #1	@ tmp290,
	bne	.L132	@,
	ldrb	r0, [sp, #9]	@ zero_extendqisi2	@ csd, csd
	lsls	r1, r3, #8	@ tmp296, csd,
	adds	r2, r0, #1	@ tmp293, csd,
	adds	r0, r2, r1	@ tmp299, tmp293, tmp296
	uxth	r3, r0	@ tmp300, tmp299
	lsls	r3, r3, #10	@ tmp301, tmp300,
	b	.L158	@
.L132:
	ldrb	r1, [sp, #7]	@ zero_extendqisi2	@ csd, csd
	ldrb	r0, [sp, #6]	@ zero_extendqisi2	@ csd, csd
	lsls	r2, r1, #2	@ tmp310, csd,
	add	r3, r2, r3, lsr #6	@, tmp312, tmp310, csd,
	and	r1, r0, #3	@ tmp317, csd,
	lsls	r2, r1, #10	@ tmp319, tmp317,
	adds	r3, r3, #1	@ tmp314, tmp312,
	ldrb	r0, [sp, #5]	@ zero_extendqisi2	@ csd, csd
	add	ip, r3, r2	@ tmp323, tmp314, tmp319
	ldrb	r1, [sp, #10]	@ zero_extendqisi2	@ csd, csd
	ldrb	r2, [sp, #9]	@ zero_extendqisi2	@ csd, csd
	and	r3, r0, #15	@ tmp326, csd,
	add	r0, r3, r1, lsr #7	@, tmp331, tmp326, csd,
	and	lr, r2, #3	@ tmp336, csd,
	add	r1, r0, lr, lsl #1	@, tmp342, tmp331, tmp336,
	subs	r3, r1, #7	@ tmp343, tmp342,
	lsl	r3, ip, r3	@ tmp344, tmp323, tmp343
	b	.L158	@
.L124:
	mov	r5, #512	@ movhi	@,
	strh	r5, [r2, #0]	@ movhi	@, MEM[(WORD *)buff_7(D)]
	b	.L157	@
.L125:
	ldr	r5, .L163+4	@ tmp347,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ CardType, CardType
	ands	r1, r0, #4	@ tmp349, CardType,
	beq	.L133	@,
	movs	r0, #205	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	cmp	r0, #0	@
	bne	.L153	@
	bl	rcvr_spi	@
	mov	r0, sp	@,
	movs	r1, #16	@,
	bl	rcvr_datablock	@
	cmp	r0, #0	@
	beq	.L153	@
	movs	r5, #48	@ ivtmp.129,
.L134:
	bl	rcvr_spi	@
	subs	r3, r5, #1	@ tmp353, ivtmp.129,
	uxtb	r5, r3	@ ivtmp.129, tmp353
	cmp	r5, #0	@ ivtmp.129
	bne	.L134	@
	ldrb	r0, [sp, #10]	@ zero_extendqisi2	@ csd, csd
	movs	r2, #16	@ tmp357,
	lsrs	r1, r0, #4	@ tmp356, csd,
	lsl	r3, r2, r1	@ tmp358, tmp357, tmp356
	b	.L158	@
.L133:
	movs	r0, #73	@,
	bl	send_cmd	@
	mov	r6, r0	@ tmp359,
	cmp	r0, #0	@ tmp359
	bne	.L153	@
	mov	r0, sp	@,
	movs	r1, #16	@,
	bl	rcvr_datablock	@
	cmp	r0, #0	@
	beq	.L153	@
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ CardType, CardType
	ldrb	r2, [sp, #10]	@ zero_extendqisi2	@ csd, csd
	ands	r5, ip, #2	@ tmp364, CardType,
	ldrb	r3, [sp, #11]	@ zero_extendqisi2	@ D.4917, csd
	beq	.L135	@,
	ldrb	r0, [sp, #13]	@ zero_extendqisi2	@ csd, csd
	and	r1, r2, #63	@ tmp366, csd,
	lsrs	r3, r3, #7	@ tmp370, D.4917,
	add	r5, r3, r1, lsl #1	@, tmp371, tmp370, tmp366,
	lsrs	r2, r0, #6	@ tmp375, csd,
	adds	r3, r5, #1	@ tmp372, tmp371,
	subs	r1, r2, #1	@ tmp376, tmp375,
	lsl	r5, r3, r1	@ tmp377, tmp372, tmp376
	str	r5, [r4, #0]	@ tmp377, MEM[(DWORD *)buff_7(D)]
	mov	r5, r6	@ res, tmp359
	b	.L121	@
.L135:
	and	r2, r2, #124	@ tmp379, csd,
	and	lr, r3, #3	@ tmp383, D.4917,
	lsrs	r3, r3, #5	@ tmp386, D.4917,
	lsrs	r1, r2, #2	@ tmp381, tmp379,
	add	r0, r3, lr, lsl #3	@, tmp387, tmp386, tmp383,
	adds	r2, r1, #1	@ tmp382, tmp381,
	adds	r3, r0, #1	@ tmp388, tmp387,
	muls	r3, r2, r3	@ tmp389, tmp382
.L158:
	str	r3, [r4, #0]	@ tmp389, MEM[(DWORD *)buff_7(D)]
	b	.L121	@
.L126:
	ldr	r0, .L163+4	@ tmp390,
	ldrb	r5, [r0, #0]	@ zero_extendqisi2	@ CardType, CardType
	strb	r5, [r2, #0]	@ CardType, MEM[(BYTE *)buff_7(D)]
	b	.L157	@
.L127:
	movs	r0, #73	@,
	b	.L162	@
.L128:
	movs	r0, #74	@,
.L162:
	movs	r1, #0	@,
	bl	send_cmd	@
	cbnz	r0, .L153	@,
	mov	r0, r4	@, buff
	movs	r1, #16	@,
	b	.L159	@
.L129:
	movs	r0, #122	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	cbnz	r0, .L153	@ tmp397,
	mov	r5, r0	@ ivtmp.135, tmp397
.L136:
	bl	rcvr_spi	@
	strb	r0, [r4, r5]	@, MEM[base: buff_7(D), index: ivtmp.135_182, offset: 0B]
	adds	r5, r5, #1	@ ivtmp.135, ivtmp.135,
	cmp	r5, #4	@ ivtmp.135,
	bne	.L136	@,
.L157:
	movs	r5, #0	@ res,
	b	.L121	@
.L130:
	movs	r0, #205	@,
	movs	r1, #0	@,
	bl	send_cmd	@
	cbnz	r0, .L153	@,
	bl	rcvr_spi	@
	mov	r0, r4	@, buff
	movs	r1, #64	@,
.L159:
	bl	rcvr_datablock	@
	rsbs	r5, r0, #1	@ res,,
	it	cc
	movcc	r5, #0	@ res,
	b	.L121	@
.L140:
	movs	r5, #4	@ res,
	b	.L121	@
.L153:
	movs	r5, #1	@ res,
.L121:
	bl	deselect	@
	b	.L117	@
.L137:
	movs	r5, #4	@ res,
	b	.L117	@
.L139:
	movs	r5, #3	@ res,
.L117:
	mov	r0, r5	@, res
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, pc}
.L164:
	.align	2
.L163:
	.word	.LANCHOR2
	.word	.LANCHOR3
	.size	disk_ioctl, .-disk_ioctl
	.section	.text.disk_timerproc,"ax",%progbits
	.align	1
	.global	disk_timerproc
	.thumb
	.thumb_func
	.ascii	"disk_timerproc\000"
	.align	2
	.word	4278190096
	.type	disk_timerproc, %function
disk_timerproc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L171	@ tmp144,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ Timer1, Timer1
	cbz	r2, .L166	@ n,
	subs	r2, r2, #1	@ tmp147, n,
	strb	r2, [r3, #0]	@ n, Timer1
.L166:
	ldr	r3, .L171+4	@ tmp150,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ Timer2, Timer2
	cbz	r2, .L167	@ n,
	subs	r0, r2, #1	@ tmp153, n,
	strb	r0, [r3, #0]	@ n, Timer2
.L167:
	ldr	r3, .L171+8	@ tmp157,
	ldr	r1, .L171+12	@ tmp156,
	ldr	r0, [r3, #0]	@ D.5235, MEM[(volatile long unsigned int *)1342373892B]
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ n, pv
	and	r3, r0, #1	@ pv.0, D.5235,
	cmp	r2, r3	@ n, pv.0
	strb	r3, [r1, #0]	@ pv.0, pv
	bne	.L165	@,
	ldr	r1, .L171+16	@ tmp161,
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ Stat, Stat
	cbnz	r2, .L169	@ n,
	orr	r3, r3, #3	@ s, s,
	b	.L170	@
.L169:
	and	r3, r3, #253	@ s, s,
.L170:
	strb	r3, [r1, #0]	@ s, Stat
.L165:
	bx	lr	@
.L172:
	.align	2
.L171:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	1342373892
	.word	.LANCHOR4
	.word	.LANCHOR2
	.size	disk_timerproc, .-disk_timerproc
	.section	.bss.Timer1,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	Timer1, %object
	.size	Timer1, 1
Timer1:
	.space	1
	.section	.bss.Timer2,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	Timer2, %object
	.size	Timer2, 1
Timer2:
	.space	1
	.section	.bss.CardType,"aw",%nobits
	.set	.LANCHOR3,. + 0
	.type	CardType, %object
	.size	CardType, 1
CardType:
	.space	1
	.section	.data.Stat,"aw",%progbits
	.set	.LANCHOR2,. + 0
	.type	Stat, %object
	.size	Stat, 1
Stat:
	.byte	1
	.section	.bss.pv.4794,"aw",%nobits
	.set	.LANCHOR4,. + 0
	.type	pv.4794, %object
	.size	pv.4794, 1
pv.4794:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
