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
	.file	"ILI9328.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ILI9328.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ILI9328.o -Os -Wall
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

	.section	.text.ili9328Delay,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ili9328Delay\000"
	.align	2
	.word	4278190096
	.type	ili9328Delay, %function
ili9328Delay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	.L2	@
.L4:
	movs	r3, #10	@ ivtmp.12,
.L3:
@ 72 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	subs	r3, r3, #1	@ tmp140, ivtmp.12,
	uxtb	r3, r3	@ ivtmp.12, tmp140
	cmp	r3, #0	@ ivtmp.12
	bne	.L3	@
.L2:
	adds	r0, r0, #-1	@ t, t,
	bcs	.L4	@,
	bx	lr	@
	.size	ili9328Delay, .-ili9328Delay
	.section	.text.ili9328WriteCmd,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ili9328WriteCmd\000"
	.align	2
	.word	4278190096
	.type	ili9328WriteCmd, %function
ili9328WriteCmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7	@ tmp140,
	mov	r2, #3072	@ tmp141,
	push	{r4, lr}	@
	str	r2, [r3, #0]	@ tmp141, MEM[(volatile long unsigned int *)1342258176B]
@ 99 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r1, .L7+4	@ tmp143,
	ldr	r3, .L7+8	@ tmp144,
	lsrs	r4, r0, #7	@ D.4926, command,
	movs	r2, #0	@ tmp145,
	str	r4, [r1, #0]	@ D.4926, MEM[(volatile long unsigned int *)1342310392B]
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1342246912B]
@ 99 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	mov	r4, #1024	@ tmp147,
	str	r4, [r3, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342246912B]
@ 99 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	lsls	r0, r0, #1	@ D.4930, command,
	str	r0, [r1, #0]	@ D.4930, MEM[(volatile long unsigned int *)1342310392B]
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1342246912B]
@ 99 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r3, .L7+12	@ tmp151,
	mov	r2, #1280	@ tmp152,
	str	r2, [r3, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342247936B]
@ 99 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	pop	{r4, pc}	@
.L8:
	.align	2
.L7:
	.word	1342258176
	.word	1342310392
	.word	1342246912
	.word	1342247936
	.size	ili9328WriteCmd, .-ili9328WriteCmd
	.section	.text.ili9328WriteData,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ili9328WriteData\000"
	.align	2
	.word	4278190100
	.type	ili9328WriteData, %function
ili9328WriteData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10	@ tmp140,
	mov	r2, #3584	@ tmp141,
	push	{r4, lr}	@
	str	r2, [r3, #0]	@ tmp141, MEM[(volatile long unsigned int *)1342258176B]
@ 119 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r1, .L10+4	@ tmp143,
	ldr	r3, .L10+8	@ tmp144,
	lsrs	r4, r0, #7	@ D.4935, data,
	movs	r2, #0	@ tmp145,
	str	r4, [r1, #0]	@ D.4935, MEM[(volatile long unsigned int *)1342310392B]
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1342246912B]
@ 119 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	mov	r4, #1024	@ tmp147,
	str	r4, [r3, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342246912B]
@ 119 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	lsls	r0, r0, #1	@ D.4939, data,
	str	r0, [r1, #0]	@ D.4939, MEM[(volatile long unsigned int *)1342310392B]
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1342246912B]
@ 119 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r3, .L10+12	@ tmp151,
	mov	r2, #1280	@ tmp152,
	str	r2, [r3, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342247936B]
@ 119 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	pop	{r4, pc}	@
.L11:
	.align	2
.L10:
	.word	1342258176
	.word	1342310392
	.word	1342246912
	.word	1342247936
	.size	ili9328WriteData, .-ili9328WriteData
	.section	.text.ili9328SetCursor,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"ili9328SetCursor\000"
	.align	2
	.word	4278190100
	.type	ili9328SetCursor, %function
ili9328SetCursor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L15	@ tmp139,
	push	{r3, r4, r5, lr}	@
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	cmp	r3, #1	@ lcdOrientation,
	ittee	eq
	moveq	r4, r0	@ ah, x
	moveq	r5, r1	@ al, y
	movne	r4, r1	@ ah, y
	movne	r5, r0	@ al, x
	movs	r0, #32	@,
	bl	ili9328WriteCmd	@
	mov	r0, r5	@, al
	bl	ili9328WriteData	@
	movs	r0, #33	@,
	bl	ili9328WriteCmd	@
	mov	r0, r4	@, ah
	pop	{r3, r4, r5, lr}	@
	b	ili9328WriteData	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	ili9328SetCursor, .-ili9328SetCursor
	.section	.text.ili9328ReadData,"ax",%progbits
	.align	1
	.global	ili9328ReadData
	.thumb
	.thumb_func
	.ascii	"ili9328ReadData\000"
	.align	2
	.word	4278190096
	.type	ili9328ReadData, %function
ili9328ReadData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldr	r6, .L18	@ tmp149,
	mov	r4, #3584	@ tmp150,
	str	r4, [r6, #0]	@ tmp150, MEM[(volatile long unsigned int *)1342257152B]
@ 135 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r7, .L18+4	@ tmp151,
	movs	r6, #0	@ tmp152,
	str	r6, [r7, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342243840B]
@ 136 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r4, .L18+8	@ tmp153,
	ldr	r1, [r4, #0]	@ D.5049, MEM[(volatile long unsigned int *)1342341120B]
	bic	r5, r1, #510	@ D.5050, D.5049,
	str	r5, [r4, #0]	@ D.5050, MEM[(volatile long unsigned int *)1342341120B]
	ldr	r5, .L18+12	@ tmp155,
	str	r6, [r5, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342251008B]
@ 140 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r9, .L18+16	@ tmp157,
	movs	r0, #100	@,
	bl	ili9328Delay	@
	ldr	r3, [r9, #0]	@ D.5053, MEM[(volatile long unsigned int *)1342310392B]
	mov	r8, #2048	@ tmp160,
	uxth	r0, r3	@ high, D.5053
	str	r8, [r5, #0]	@ tmp160, MEM[(volatile long unsigned int *)1342251008B]
	lsr	sl, r0, #1	@ high, high,
@ 145 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	str	r6, [r5, #0]	@ tmp152, MEM[(volatile long unsigned int *)1342251008B]
@ 147 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	movs	r0, #100	@,
	bl	ili9328Delay	@
	ldr	r2, [r9, #0]	@ D.5054, MEM[(volatile long unsigned int *)1342310392B]
	str	r8, [r5, #0]	@ tmp160, MEM[(volatile long unsigned int *)1342251008B]
	uxth	r1, r2	@ low, D.5054
	lsrs	r1, r1, #1	@ low, low,
@ 152 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	mov	r3, #256	@ tmp168,
	str	r3, [r7, #0]	@ tmp168, MEM[(volatile long unsigned int *)1342243840B]
@ 154 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r0, [r4, #0]	@ D.5055, MEM[(volatile long unsigned int *)1342341120B]
	uxtb	r3, r1	@ low, low
	orr	r2, r0, #510	@ D.5056, D.5055,
	uxtb	r0, sl	@ high, high
	str	r2, [r4, #0]	@ D.5056, MEM[(volatile long unsigned int *)1342341120B]
	orr	r0, r3, r0, lsl #8	@,, low, high,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}	@
.L19:
	.align	2
.L18:
	.word	1342257152
	.word	1342243840
	.word	1342341120
	.word	1342251008
	.word	1342310392
	.size	ili9328ReadData, .-ili9328ReadData
	.section	.text.ili9328Read,"ax",%progbits
	.align	1
	.global	ili9328Read
	.thumb
	.thumb_func
	.ascii	"ili9328Read\000"
	.align	2
	.word	4278190092
	.type	ili9328Read, %function
ili9328Read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	ili9328WriteCmd	@
	pop	{r3, lr}	@
	b	ili9328ReadData	@
	.size	ili9328Read, .-ili9328Read
	.section	.text.ili9328Command,"ax",%progbits
	.align	1
	.global	ili9328Command
	.thumb
	.thumb_func
	.ascii	"ili9328Command\000"
	.align	2
	.word	4278190096
	.type	ili9328Command, %function
ili9328Command:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r1	@ data, data
	bl	ili9328WriteCmd	@
	mov	r0, r4	@, data
	pop	{r4, lr}	@
	b	ili9328WriteData	@
	.size	ili9328Command, .-ili9328Command
	.section	.text.ili9328Type,"ax",%progbits
	.align	1
	.global	ili9328Type
	.thumb
	.thumb_func
	.ascii	"ili9328Type\000"
	.align	2
	.word	4278190092
	.type	ili9328Type, %function
ili9328Type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #0	@,
	bl	ili9328WriteCmd	@
	pop	{r3, lr}	@
	b	ili9328ReadData	@
	.size	ili9328Type, .-ili9328Type
	.section	.text.ili9328InitDisplay,"ax",%progbits
	.align	1
	.global	ili9328InitDisplay
	.thumb
	.thumb_func
	.ascii	"ili9328InitDisplay\000"
	.align	2
	.word	4278190100
	.type	ili9328InitDisplay, %function
ili9328InitDisplay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r3, .L24	@ tmp136,
	ldr	r6, .L24+4	@ tmp138,
	ldr	r2, [r3, #0]	@ D.5030, MEM[(volatile long unsigned int *)1342324732B]
	mov	r5, #2048	@ tmp139,
	bic	r7, r2, #510	@ D.5031, D.5030,
	str	r7, [r3, #0]	@ D.5031, MEM[(volatile long unsigned int *)1342324732B]
	str	r5, [r6, #0]	@ tmp139, MEM[(volatile long unsigned int *)1342251008B]
@ 235 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r4, .L24+8	@ tmp140,
	mov	r1, #1024	@ tmp141,
	str	r1, [r4, #0]	@ tmp141, MEM[(volatile long unsigned int *)1342246912B]
@ 236 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r0, .L24+12	@ tmp142,
	mov	r6, #256	@ tmp143,
	str	r6, [r0, #0]	@ tmp143, MEM[(volatile long unsigned int *)1342243840B]
@ 237 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r3, .L24+16	@ tmp144,
	mov	r2, #512	@ tmp145,
	str	r2, [r3, #0]	@ tmp145, MEM[(volatile long unsigned int *)1342244864B]
@ 238 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r7, .L24+20	@ tmp146,
	movs	r4, #0	@ tmp147,
	str	r4, [r7, #0]	@ tmp147, MEM[(volatile long unsigned int *)1342373920B]
@ 241 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	movs	r0, #100	@,
	movs	r5, #8	@ tmp149,
	bl	ili9328Delay	@
	str	r5, [r7, #0]	@ tmp149, MEM[(volatile long unsigned int *)1342373920B]
@ 243 "drivers/displays/tft/hw/ILI9328.c" 1
	nop
@ 0 "" 2
	.thumb
	mov	r0, #1000	@,
	bl	ili9328Delay	@
	movs	r0, #1	@,
	mov	r1, r6	@, tmp143
	bl	ili9328Command	@
	movs	r0, #2	@,
	mov	r1, #1792	@,
	bl	ili9328Command	@
	movs	r0, #3	@,
	movw	r1, #4144	@,
	bl	ili9328Command	@
	mov	r0, r5	@, tmp149
	movw	r1, #770	@,
	bl	ili9328Command	@
	movs	r0, #9	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #10	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #16	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #17	@,
	movs	r1, #7	@,
	bl	ili9328Command	@
	movs	r0, #18	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	mov	r1, r4	@, tmp147
	movs	r0, #19	@,
	bl	ili9328Command	@
	mov	r0, #1000	@,
	bl	ili9328Delay	@
	movs	r0, #16	@,
	movw	r1, #5296	@,
	bl	ili9328Command	@
	mov	r0, #500	@,
	bl	ili9328Delay	@
	movs	r1, #7	@,
	movs	r0, #17	@,
	bl	ili9328Command	@
	mov	r0, #500	@,
	bl	ili9328Delay	@
	movs	r0, #18	@,
	movs	r1, #142	@,
	bl	ili9328Command	@
	movs	r0, #19	@,
	mov	r1, #3072	@,
	bl	ili9328Command	@
	movs	r1, #21	@,
	movs	r0, #41	@,
	bl	ili9328Command	@
	mov	r0, #500	@,
	bl	ili9328Delay	@
	movs	r0, #48	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #49	@,
	movw	r1, #263	@,
	bl	ili9328Command	@
	movs	r0, #50	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #53	@,
	movw	r1, #515	@,
	bl	ili9328Command	@
	movs	r0, #54	@,
	movw	r1, #1026	@,
	bl	ili9328Command	@
	movs	r0, #55	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #56	@,
	movw	r1, #519	@,
	bl	ili9328Command	@
	movs	r0, #57	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #60	@,
	movw	r1, #515	@,
	bl	ili9328Command	@
	movs	r0, #61	@,
	movw	r1, #1027	@,
	bl	ili9328Command	@
	movs	r0, #80	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #81	@,
	movs	r1, #239	@,
	bl	ili9328Command	@
	movs	r0, #82	@,
	mov	r1, r4	@, tmp147
	bl	ili9328Command	@
	movs	r0, #83	@,
	movw	r1, #319	@,
	bl	ili9328Command	@
	movs	r0, #96	@,
	mov	r1, #42752	@,
	bl	ili9328Command	@
	movs	r0, #97	@,
	movs	r1, #3	@,
	bl	ili9328Command	@
	movs	r0, #144	@,
	movs	r1, #16	@,
	bl	ili9328Command	@
	movs	r0, #7	@,
	movw	r1, #307	@,
	bl	ili9328Command	@
	mov	r0, #500	@,
	bl	ili9328Delay	@
	movs	r0, #34	@,
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	ili9328WriteCmd	@
.L25:
	.align	2
.L24:
	.word	1342324732
	.word	1342251008
	.word	1342246912
	.word	1342243840
	.word	1342244864
	.word	1342373920
	.size	ili9328InitDisplay, .-ili9328InitDisplay
	.section	.text.ili9328Home,"ax",%progbits
	.align	1
	.global	ili9328Home
	.thumb
	.thumb_func
	.ascii	"ili9328Home\000"
	.align	2
	.word	4278190092
	.type	ili9328Home, %function
ili9328Home:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #0	@,
	mov	r1, r0	@,
	push	{r3, lr}	@
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	pop	{r3, lr}	@
	b	ili9328WriteCmd	@
	.size	ili9328Home, .-ili9328Home
	.section	.text.ili9328SetWindow,"ax",%progbits
	.align	1
	.global	ili9328SetWindow
	.thumb
	.thumb_func
	.ascii	"ili9328SetWindow\000"
	.align	2
	.word	4278190100
	.type	ili9328SetWindow, %function
ili9328SetWindow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r5, r0	@ x0, x0
	mov	r6, r2	@ x1, x1
	mov	r4, r1	@ y0, y0
	movs	r0, #80	@,
	mov	r1, r5	@, x0
	mov	r7, r3	@ y1, y1
	bl	ili9328Command	@
	movs	r0, #81	@,
	mov	r1, r6	@, x1
	bl	ili9328Command	@
	movs	r0, #82	@,
	mov	r1, r4	@, y0
	bl	ili9328Command	@
	movs	r0, #83	@,
	mov	r1, r7	@, y1
	bl	ili9328Command	@
	mov	r0, r5	@, x0
	mov	r1, r4	@, y0
	pop	{r3, r4, r5, r6, r7, lr}	@
	b	ili9328SetCursor	@
	.size	ili9328SetWindow, .-ili9328SetWindow
	.section	.text.lcdBacklight,"ax",%progbits
	.align	1
	.global	lcdBacklight
	.thumb
	.thumb_func
	.ascii	"lcdBacklight\000"
	.align	2
	.word	4278190096
	.type	lcdBacklight, %function
lcdBacklight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #4095	@ tmp137,
	ldr	r2, .L31	@ tmp136,
	cmp	r0, #0	@ state,
	it	ne	@
	movne	r3, #0	@, iftmp.7,
	str	r3, [r2, #0]	@ iftmp.7, MEM[(volatile long unsigned int *)1342310400B]
	bx	lr	@
.L32:
	.align	2
.L31:
	.word	1342310400
	.size	lcdBacklight, .-lcdBacklight
	.section	.text.lcdTest,"ax",%progbits
	.align	1
	.global	lcdTest
	.thumb
	.thumb_func
	.ascii	"lcdTest\000"
	.align	2
	.word	4278190088
	.type	lcdTest, %function
lcdTest:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	bl	ili9328Home	@
	movs	r4, #0	@ i,
	b	.L34	@
.L43:
	cmp	r4, #280	@ i,
	bcc	.L35	@,
	movw	r0, #65535	@,
	b	.L46	@
.L35:
	cmp	r4, #239	@ i,
	bls	.L37	@,
	movs	r0, #31	@,
	b	.L46	@
.L37:
	cmp	r4, #199	@ i,
	bls	.L38	@,
	mov	r0, #2016	@,
	b	.L46	@
.L38:
	cmp	r4, #159	@ i,
	bls	.L39	@,
	movw	r0, #2047	@,
	b	.L46	@
.L39:
	cmp	r4, #119	@ i,
	bls	.L40	@,
	mov	r0, #63488	@,
	b	.L46	@
.L40:
	cmp	r4, #79	@ i,
	bls	.L41	@,
	movw	r0, #63519	@,
	b	.L46	@
.L41:
	cmp	r4, #39	@ i,
	ite	hi
	movwhi	r0, #65504	@,
	movls	r0, #0	@,
.L46:
	bl	ili9328WriteData	@
	subs	r5, r5, #1	@ ivtmp.47, ivtmp.47,
	bne	.L43	@,
	adds	r4, r4, #1	@ i, i,
	cmp	r4, #320	@ i,
	beq	.L33	@,
.L34:
	movs	r5, #240	@ ivtmp.47,
	b	.L43	@
.L33:
	pop	{r3, r4, r5, pc}	@
	.size	lcdTest, .-lcdTest
	.section	.text.lcdFillRGB,"ax",%progbits
	.align	1
	.global	lcdFillRGB
	.thumb
	.thumb_func
	.ascii	"lcdFillRGB\000"
	.align	2
	.word	4278190092
	.type	lcdFillRGB, %function
lcdFillRGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ data, data
	bl	ili9328Home	@
	mov	r4, #76800	@ ivtmp.60,
.L48:
	mov	r0, r5	@, data
	bl	ili9328WriteData	@
	subs	r4, r4, #1	@ ivtmp.60, ivtmp.60,
	bne	.L48	@,
	pop	{r3, r4, r5, pc}	@
	.size	lcdFillRGB, .-lcdFillRGB
	.section	.text.lcdDrawPixel,"ax",%progbits
	.align	1
	.global	lcdDrawPixel
	.thumb
	.thumb_func
	.ascii	"lcdDrawPixel\000"
	.align	2
	.word	4278190096
	.type	lcdDrawPixel, %function
lcdDrawPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r2	@ color, color
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	bl	ili9328WriteCmd	@
	mov	r0, r4	@, color
	pop	{r4, lr}	@
	b	ili9328WriteData	@
	.size	lcdDrawPixel, .-lcdDrawPixel
	.section	.text.lcdDrawPixels,"ax",%progbits
	.align	1
	.global	lcdDrawPixels
	.thumb
	.thumb_func
	.ascii	"lcdDrawPixels\000"
	.align	2
	.word	4278190096
	.type	lcdDrawPixels, %function
lcdDrawPixels:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r4, r2	@ data, data
	mov	r5, r3	@ len, len
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	bl	ili9328WriteCmd	@
	movs	r6, #0	@ i,
.L52:
	ldrh	r0, [r4], #2	@, MEM[base: D.5197_22, offset: 0B]
	adds	r6, r6, #1	@ i, i,
	bl	ili9328WriteData	@
	cmp	r6, r5	@ i, len
	bcc	.L52	@,
	pop	{r4, r5, r6, pc}	@
	.size	lcdDrawPixels, .-lcdDrawPixels
	.section	.text.lcdGetPixel,"ax",%progbits
	.align	1
	.global	lcdGetPixel
	.thumb
	.thumb_func
	.ascii	"lcdGetPixel\000"
	.align	2
	.word	4278190092
	.type	lcdGetPixel, %function
lcdGetPixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r1	@ y, y
	mov	r5, r0	@ x, x
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	bl	ili9328WriteCmd	@
	bl	ili9328ReadData	@
	mov	r0, r5	@, x
	mov	r1, r4	@, y
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	bl	ili9328WriteCmd	@
	pop	{r3, r4, r5, lr}	@
	b	ili9328ReadData	@
	.size	lcdGetPixel, .-lcdGetPixel
	.section	.text.lcdSetOrientation,"ax",%progbits
	.align	1
	.global	lcdSetOrientation
	.thumb
	.thumb_func
	.ascii	"lcdSetOrientation\000"
	.align	2
	.word	4278190100
	.type	lcdSetOrientation, %function
lcdSetOrientation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ orientation,
	movw	r2, #4144	@ tmp140,
	movw	r1, #4136	@ tmp139,
	push	{r3, r4, r5, lr}	@
	it	ne	@
	movne	r1, r2	@,, tmp140
	ite	eq	@
	moveq	r5, #0	@, outputControl,
	movne	r5, #256	@, outputControl,
	mov	r4, r0	@ orientation, orientation
	movs	r0, #3	@,
	bl	ili9328Command	@
	movs	r0, #1	@,
	mov	r1, r5	@, outputControl
	bl	ili9328Command	@
	ldr	r3, .L58	@ tmp137,
	movs	r0, #0	@,
	mov	r1, r0	@,
	strb	r4, [r3, #0]	@ orientation, lcdOrientation
	pop	{r3, r4, r5, lr}	@
	b	ili9328SetCursor	@
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.size	lcdSetOrientation, .-lcdSetOrientation
	.section	.text.lcdInit,"ax",%progbits
	.align	1
	.global	lcdInit
	.thumb
	.thumb_func
	.ascii	"lcdInit\000"
	.align	2
	.word	4278190088
	.type	lcdInit, %function
lcdInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #1	@,
	push	{r3, r4, r5, lr}	@
	movs	r1, #8	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #9	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #10	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	movs	r1, #11	@,
	mov	r2, r0	@,
	bl	gpioSetDir	@
	ldr	r1, .L61	@ tmp137,
	ldr	r0, .L61+4	@,
	ldr	r4, [r1, #0]	@ D.5026, MEM[(volatile long unsigned int *)1342341120B]
	ldr	r5, .L61+8	@ tmp139,
	orr	r2, r4, #510	@ D.5027, D.5026,
	str	r2, [r1, #0]	@ D.5027, MEM[(volatile long unsigned int *)1342341120B]
	movs	r1, #0	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+12	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+16	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+20	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+24	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+28	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+32	@,
	bl	gpioSetPullup	@
	movs	r1, #0	@,
	ldr	r0, .L61+36	@,
	bl	gpioSetPullup	@
	movs	r0, #2	@,
	movs	r1, #9	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #1	@,
	bl	lcdBacklight	@
	movs	r0, #3	@,
	mov	r1, r0	@,
	movs	r2, #1	@,
	movs	r4, #0	@ tmp140,
	bl	gpioSetDir	@
	movs	r0, #50	@,
	str	r4, [r5, #0]	@ tmp140, MEM[(volatile long unsigned int *)1342373920B]
	bl	systickDelay	@
	movw	r0, #4095	@ tmp142,
	str	r0, [r5, #0]	@ tmp142, MEM[(volatile long unsigned int *)1342373920B]
	bl	ili9328InitDisplay	@
	movs	r0, #50	@,
	bl	systickDelay	@
	ldr	r3, .L61+40	@ tmp143,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	bl	lcdSetOrientation	@
	mov	r0, r4	@, tmp140
	bl	lcdFillRGB	@
	pop	{r3, r4, r5, lr}	@
	b	tsInit	@
.L62:
	.align	2
.L61:
	.word	1342341120
	.word	1074020392
	.word	1342373920
	.word	1074020444
	.word	1074020492
	.word	1074020416
	.word	1074020420
	.word	1074020352
	.word	1074020384
	.word	1074020388
	.word	.LANCHOR0
	.size	lcdInit, .-lcdInit
	.section	.text.lcdGetOrientation,"ax",%progbits
	.align	1
	.global	lcdGetOrientation
	.thumb
	.thumb_func
	.ascii	"lcdGetOrientation\000"
	.align	2
	.word	4278190100
	.type	lcdGetOrientation, %function
lcdGetOrientation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L64	@ tmp136,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	bx	lr	@
.L65:
	.align	2
.L64:
	.word	.LANCHOR0
	.size	lcdGetOrientation, .-lcdGetOrientation
	.section	.text.lcdGetWidth,"ax",%progbits
	.align	1
	.global	lcdGetWidth
	.thumb
	.thumb_func
	.ascii	"lcdGetWidth\000"
	.align	2
	.word	4278190092
	.type	lcdGetWidth, %function
lcdGetWidth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L70	@ tmp137,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	cmp	r0, #0	@ lcdOrientation,
	ite	eq	@
	moveq	r0, #240	@,,
	movne	r0, #320	@,,
	bx	lr	@
.L71:
	.align	2
.L70:
	.word	.LANCHOR0
	.size	lcdGetWidth, .-lcdGetWidth
	.section	.text.lcdDrawHLine,"ax",%progbits
	.align	1
	.global	lcdDrawHLine
	.thumb
	.thumb_func
	.ascii	"lcdDrawHLine\000"
	.align	2
	.word	4278190096
	.type	lcdDrawHLine, %function
lcdDrawHLine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	cmp	r1, r0	@ x1, x0
	mov	r5, r1	@ x1, x1
	mov	r4, r0	@ x0, x0
	itt	cc
	movcc	r5, r0	@ x1, x0
	movcc	r4, r1	@ x0, x1
	mov	r6, r2	@ y, y
	mov	r7, r3	@ color, color
	bl	lcdGetWidth	@
	cmp	r5, r0	@ x1,
	bcc	.L74	@,
	bl	lcdGetWidth	@
	subs	r0, r0, #1	@ tmp153,,
	uxth	r5, r0	@ x1, tmp153
.L74:
	bl	lcdGetWidth	@
	cmp	r4, r0	@ x0,
	bcc	.L75	@,
	bl	lcdGetWidth	@
	subs	r1, r0, #1	@ tmp156,,
	uxth	r4, r1	@ x0, tmp156
.L75:
	mov	r1, r6	@, y
	mov	r0, r4	@, x0
	bl	ili9328SetCursor	@
	movs	r0, #34	@,
	bl	ili9328WriteCmd	@
	movs	r6, #0	@ pixels,
	b	.L76	@
.L77:
	mov	r0, r7	@, color
	bl	ili9328WriteData	@
	adds	r6, r6, #1	@ tmp157, pixels,
	uxth	r6, r6	@ pixels, tmp157
.L76:
	subs	r3, r5, r4	@ tmp158, x1, x0
	cmp	r3, r6	@ tmp158, pixels
	bge	.L77	@,
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	lcdDrawHLine, .-lcdDrawHLine
	.section	.text.lcdGetHeight,"ax",%progbits
	.align	1
	.global	lcdGetHeight
	.thumb
	.thumb_func
	.ascii	"lcdGetHeight\000"
	.align	2
	.word	4278190096
	.type	lcdGetHeight, %function
lcdGetHeight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L83	@ tmp137,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	cmp	r0, #0	@ lcdOrientation,
	ite	eq	@
	moveq	r0, #320	@,,
	movne	r0, #240	@,,
	bx	lr	@
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.size	lcdGetHeight, .-lcdGetHeight
	.section	.text.lcdDrawVLine,"ax",%progbits
	.align	1
	.global	lcdDrawVLine
	.thumb
	.thumb_func
	.ascii	"lcdDrawVLine\000"
	.align	2
	.word	4278190096
	.type	lcdDrawVLine, %function
lcdDrawVLine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r6, r3	@ color, color
	ldr	r3, .L89	@ tmp148,
	mov	r5, r0	@ x, x
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ lcdOrientation, lcdOrientation
	mov	r7, r1	@ y0, y0
	mov	r8, r2	@ y1, y1
	cbnz	r4, .L86	@ oldOrientation,
	movs	r0, #1	@,
	bl	lcdSetOrientation	@
	bl	lcdGetHeight	@
	mvns	r5, r5	@ tmp152, x
	adds	r2, r0, r5	@ tmp154,, tmp152
	mov	r1, r8	@, y1
	mov	r0, r7	@, y0
	uxth	r2, r2	@, tmp154
	b	.L88	@
.L86:
	movs	r0, #0	@,
	bl	lcdSetOrientation	@
	bl	lcdGetWidth	@
	mvns	r3, r7	@ tmp157, y0
	adds	r7, r0, r3	@ tmp159,, tmp157
	bl	lcdGetWidth	@
	mvn	r8, r8	@ tmp161, y1
	add	r1, r0, r8	@ tmp163,, tmp161
	uxth	r7, r7	@ D.4967, tmp159
	mov	r0, r7	@, D.4967
	uxth	r1, r1	@, tmp163
	mov	r2, r5	@, x
.L88:
	mov	r3, r6	@, color
	bl	lcdDrawHLine	@
	mov	r0, r4	@, oldOrientation
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	lcdSetOrientation	@
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.size	lcdDrawVLine, .-lcdDrawVLine
	.section	.text.lcdScroll,"ax",%progbits
	.align	1
	.global	lcdScroll
	.thumb
	.thumb_func
	.ascii	"lcdScroll\000"
	.align	2
	.word	4278190092
	.type	lcdScroll, %function
lcdScroll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ y, pixels
	b	.L92	@
.L93:
	add	r4, r4, #320	@ tmp187, y,
	uxth	r4, r4	@ y, tmp187
.L92:
	lsls	r3, r4, #16	@, y,
	bmi	.L93	@,
	b	.L96	@
.L95:
	sub	r0, r4, #320	@ tmp190, y,
	uxth	r4, r0	@ y, tmp190
.L96:
	sxth	r3, r4	@ y, y
	cmp	r3, #320	@ y,
	bge	.L95	@,
	movs	r0, #106	@,
	bl	ili9328WriteCmd	@
	uxth	r0, r4	@, y
	pop	{r4, lr}	@
	b	ili9328WriteData	@
	.size	lcdScroll, .-lcdScroll
	.section	.text.lcdGetControllerID,"ax",%progbits
	.align	1
	.global	lcdGetControllerID
	.thumb
	.thumb_func
	.ascii	"lcdGetControllerID\000"
	.align	2
	.word	4278190100
	.type	lcdGetControllerID, %function
lcdGetControllerID:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	ili9328Type	@
	.size	lcdGetControllerID, .-lcdGetControllerID
	.section	.text.lcdGetProperties,"ax",%progbits
	.align	1
	.global	lcdGetProperties
	.thumb
	.thumb_func
	.ascii	"lcdGetProperties\000"
	.align	2
	.word	4278190100
	.type	lcdGetProperties, %function
lcdGetProperties:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L99	@ tmp135,
	ldr	r1, [r2, #0]	@ unaligned	@ tmp136, ili9328Properties
	str	r1, [r0, #0]	@ unaligned	@ tmp136, <retval>
	ldr	r1, [r2, #4]	@ unaligned	@ tmp140, ili9328Properties
	ldrh	r2, [r2, #8]	@ unaligned	@ tmp139, ili9328Properties
	str	r1, [r0, #4]	@ unaligned	@ tmp140, <retval>
	strh	r2, [r0, #8]	@ unaligned	@ tmp139, <retval>
	bx	lr	@
.L100:
	.align	2
.L99:
	.word	.LANCHOR1
	.size	lcdGetProperties, .-lcdGetProperties
	.section	.rodata.ili9328Properties,"a",%progbits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	ili9328Properties, %object
	.size	ili9328Properties, 10
ili9328Properties:
@ width:
	.short	240
@ height:
	.short	320
@ touchscreen:
	.byte	1
@ orientation:
	.byte	1
@ hwscrolling:
	.byte	1
@ fastHLine:
	.byte	1
@ fastVLine:
	.byte	1
	.space	1
	.section	.bss.lcdOrientation,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	lcdOrientation, %object
	.size	lcdOrientation, 1
lcdOrientation:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
