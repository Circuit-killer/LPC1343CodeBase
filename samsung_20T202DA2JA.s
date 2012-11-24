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
	.file	"samsung_20T202DA2JA.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed samsung_20T202DA2JA.i -mthumb
@ -mcpu=cortex-m3 -mpoke-function-name -auxbase-strip samsung_20T202DA2JA.o
@ -Os -Wall -ffunction-sections -fdata-sections -fmessage-length=0
@ -fno-builtin -fverbose-asm
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

	.section	.text.samsungvfd_sendByte,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"samsungvfd_sendByte\000"
	.align	2
	.word	4278190100
	.type	samsungvfd_sendByte, %function
samsungvfd_sendByte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6	@ tmp155,
	movw	r2, #4095	@ tmp156,
	push	{r4, r5, lr}	@
	str	r2, [r3, #0]	@ tmp156, MEM[(volatile long unsigned int *)1342308384B]
	movs	r3, #7	@ ivtmp.39,
.L3:
	asr	r4, r0, r3	@ tmp159, c, ivtmp.39
	ldr	r2, .L6	@ tmp157,
	movs	r5, #0	@ tmp158,
	str	r5, [r2, #0]	@ tmp158, MEM[(volatile long unsigned int *)1342308384B]
	movw	r1, #4095	@ tmp165,
	ands	r4, r4, #1	@ tmp160, tmp159,
	ldr	r5, .L6+4	@ tmp161,
	it	ne	@
	movne	r4, r1	@, iftmp.25, tmp165
	adds	r3, r3, #-1	@ ivtmp.39, ivtmp.39,
	str	r4, [r5, #0]	@ iftmp.25, MEM[(volatile long unsigned int *)1342308360B]
	str	r1, [r2, #0]	@ tmp165, MEM[(volatile long unsigned int *)1342308384B]
	bcs	.L3	@,
	pop	{r4, r5, pc}	@
.L7:
	.align	2
.L6:
	.word	1342308384
	.word	1342308360
	.size	samsungvfd_sendByte, .-samsungvfd_sendByte
	.section	.text.samsungvfd_command,"ax",%progbits
	.align	1
	.global	samsungvfd_command
	.thumb
	.thumb_func
	.ascii	"samsungvfd_command\000"
	.align	2
	.word	4278190100
	.type	samsungvfd_command, %function
samsungvfd_command:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r4, .L9	@ tmp135,
	mov	r5, r0	@ value, value
	movs	r0, #0	@ tmp136,
	str	r0, [r4, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342308368B]
	movs	r0, #248	@,
	bl	samsungvfd_sendByte	@
	mov	r0, r5	@, value
	bl	samsungvfd_sendByte	@
	movw	r3, #4095	@ tmp138,
	str	r3, [r4, #0]	@ tmp138, MEM[(volatile long unsigned int *)1342308368B]
	pop	{r3, r4, r5, pc}	@
.L10:
	.align	2
.L9:
	.word	1342308368
	.size	samsungvfd_command, .-samsungvfd_command
	.section	.text.samsungvfdWrite,"ax",%progbits
	.align	1
	.global	samsungvfdWrite
	.thumb
	.thumb_func
	.ascii	"samsungvfdWrite\000"
	.align	2
	.word	4278190096
	.type	samsungvfdWrite, %function
samsungvfdWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r4, .L12	@ tmp135,
	mov	r5, r0	@ value, value
	movs	r0, #0	@ tmp136,
	str	r0, [r4, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342308368B]
	movs	r0, #250	@,
	bl	samsungvfd_sendByte	@
	mov	r0, r5	@, value
	bl	samsungvfd_sendByte	@
	movw	r3, #4095	@ tmp138,
	str	r3, [r4, #0]	@ tmp138, MEM[(volatile long unsigned int *)1342308368B]
	pop	{r3, r4, r5, pc}	@
.L13:
	.align	2
.L12:
	.word	1342308368
	.size	samsungvfdWrite, .-samsungvfdWrite
	.section	.text.samsungvfdWriteString,"ax",%progbits
	.align	1
	.global	samsungvfdWriteString
	.thumb
	.thumb_func
	.ascii	"samsungvfdWriteString\000"
	.align	2
	.word	4278190104
	.type	samsungvfdWriteString, %function
samsungvfdWriteString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r4, r0	@ ivtmp.55, str
	b	.L15	@
.L16:
	ldr	r5, .L17	@ tmp164,
	movs	r0, #0	@ tmp165,
	str	r0, [r5, #0]	@ tmp165, MEM[(volatile long unsigned int *)1342308368B]
	movs	r0, #250	@,
	bl	samsungvfd_sendByte	@
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2	@, MEM[base: D.5155_34, offset: 4294967295B]
	bl	samsungvfd_sendByte	@
	movw	r3, #4095	@ tmp168,
	str	r3, [r5, #0]	@ tmp168, MEM[(volatile long unsigned int *)1342308368B]
.L15:
	ldrb	r1, [r4], #1	@ zero_extendqisi2	@ D.4927, MEM[base: D.5154_33, offset: 0B]
	cmp	r1, #0	@ D.4927
	bne	.L16	@
	pop	{r3, r4, r5, pc}	@
.L18:
	.align	2
.L17:
	.word	1342308368
	.size	samsungvfdWriteString, .-samsungvfdWriteString
	.section	.text.samsungvfdSetBrightness,"ax",%progbits
	.align	1
	.global	samsungvfdSetBrightness
	.thumb
	.thumb_func
	.ascii	"samsungvfdSetBrightness\000"
	.align	2
	.word	4278190104
	.type	samsungvfdSetBrightness, %function
samsungvfdSetBrightness:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ brightness,
	bhi	.L19	@,
	ldr	r3, .L21	@ tmp139,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displayfunction, samsungvfd_displayfunction
	bic	r2, r1, #3	@ tmp142, samsungvfd_displayfunction,
	orrs	r0, r0, r2	@, samsungvfd_displayfunction.23, brightness, tmp142
	strb	r0, [r3, #0]	@ samsungvfd_displayfunction.23, samsungvfd_displayfunction
	orr	r0, r0, #48	@, samsungvfd_displayfunction.23,
	b	samsungvfd_command	@
.L19:
	bx	lr	@
.L22:
	.align	2
.L21:
	.word	samsungvfd_displayfunction
	.size	samsungvfdSetBrightness, .-samsungvfdSetBrightness
	.section	.text.samsungvfdNoDisplay,"ax",%progbits
	.align	1
	.global	samsungvfdNoDisplay
	.thumb
	.thumb_func
	.ascii	"samsungvfdNoDisplay\000"
	.align	2
	.word	4278190100
	.type	samsungvfdNoDisplay, %function
samsungvfdNoDisplay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	and	r0, r1, #251	@ samsungvfd_displaycontrol.20, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.20, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.20,
	b	samsungvfd_command	@
.L25:
	.align	2
.L24:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdNoDisplay, .-samsungvfdNoDisplay
	.section	.text.samsungvfdDisplay,"ax",%progbits
	.align	1
	.global	samsungvfdDisplay
	.thumb
	.thumb_func
	.ascii	"samsungvfdDisplay\000"
	.align	2
	.word	4278190100
	.type	samsungvfdDisplay, %function
samsungvfdDisplay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	orr	r0, r1, #4	@ samsungvfd_displaycontrol.18, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.18, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.18,
	b	samsungvfd_command	@
.L28:
	.align	2
.L27:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdDisplay, .-samsungvfdDisplay
	.section	.text.samsungvfdNoCursor,"ax",%progbits
	.align	1
	.global	samsungvfdNoCursor
	.thumb
	.thumb_func
	.ascii	"samsungvfdNoCursor\000"
	.align	2
	.word	4278190100
	.type	samsungvfdNoCursor, %function
samsungvfdNoCursor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L30	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	and	r0, r1, #253	@ samsungvfd_displaycontrol.16, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.16, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.16,
	b	samsungvfd_command	@
.L31:
	.align	2
.L30:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdNoCursor, .-samsungvfdNoCursor
	.section	.text.samsungvfdCursor,"ax",%progbits
	.align	1
	.global	samsungvfdCursor
	.thumb
	.thumb_func
	.ascii	"samsungvfdCursor\000"
	.align	2
	.word	4278190100
	.type	samsungvfdCursor, %function
samsungvfdCursor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L33	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	orr	r0, r1, #2	@ samsungvfd_displaycontrol.14, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.14, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.14,
	b	samsungvfd_command	@
.L34:
	.align	2
.L33:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdCursor, .-samsungvfdCursor
	.section	.text.samsungvfdNoBlink,"ax",%progbits
	.align	1
	.global	samsungvfdNoBlink
	.thumb
	.thumb_func
	.ascii	"samsungvfdNoBlink\000"
	.align	2
	.word	4278190100
	.type	samsungvfdNoBlink, %function
samsungvfdNoBlink:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	and	r0, r1, #254	@ samsungvfd_displaycontrol.12, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.12, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.12,
	b	samsungvfd_command	@
.L37:
	.align	2
.L36:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdNoBlink, .-samsungvfdNoBlink
	.section	.text.samsungvfdBlink,"ax",%progbits
	.align	1
	.global	samsungvfdBlink
	.thumb
	.thumb_func
	.ascii	"samsungvfdBlink\000"
	.align	2
	.word	4278190096
	.type	samsungvfdBlink, %function
samsungvfdBlink:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L39	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaycontrol, samsungvfd_displaycontrol
	orr	r0, r1, #1	@ samsungvfd_displaycontrol.10, samsungvfd_displaycontrol,
	strb	r0, [r3, #0]	@ samsungvfd_displaycontrol.10, samsungvfd_displaycontrol
	orr	r0, r0, #8	@, samsungvfd_displaycontrol.10,
	b	samsungvfd_command	@
.L40:
	.align	2
.L39:
	.word	samsungvfd_displaycontrol
	.size	samsungvfdBlink, .-samsungvfdBlink
	.section	.text.samsungvfdScrollDisplayLeft,"ax",%progbits
	.align	1
	.global	samsungvfdScrollDisplayLeft
	.thumb
	.thumb_func
	.ascii	"samsungvfdScrollDisplayLeft\000"
	.align	2
	.word	4278190108
	.type	samsungvfdScrollDisplayLeft, %function
samsungvfdScrollDisplayLeft:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #24	@,
	b	samsungvfd_command	@
	.size	samsungvfdScrollDisplayLeft, .-samsungvfdScrollDisplayLeft
	.section	.text.samsungvfdScrollDisplayRight,"ax",%progbits
	.align	1
	.global	samsungvfdScrollDisplayRight
	.thumb
	.thumb_func
	.ascii	"samsungvfdScrollDisplayRight\000"
	.align	2
	.word	4278190112
	.type	samsungvfdScrollDisplayRight, %function
samsungvfdScrollDisplayRight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #28	@,
	b	samsungvfd_command	@
	.size	samsungvfdScrollDisplayRight, .-samsungvfdScrollDisplayRight
	.section	.text.samsungvfdLeftToRight,"ax",%progbits
	.align	1
	.global	samsungvfdLeftToRight
	.thumb
	.thumb_func
	.ascii	"samsungvfdLeftToRight\000"
	.align	2
	.word	4278190104
	.type	samsungvfdLeftToRight, %function
samsungvfdLeftToRight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L44	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaymode, samsungvfd_displaymode
	orr	r0, r1, #2	@ samsungvfd_displaymode.8, samsungvfd_displaymode,
	strb	r0, [r3, #0]	@ samsungvfd_displaymode.8, samsungvfd_displaymode
	orr	r0, r0, #4	@, samsungvfd_displaymode.8,
	b	samsungvfd_command	@
.L45:
	.align	2
.L44:
	.word	samsungvfd_displaymode
	.size	samsungvfdLeftToRight, .-samsungvfdLeftToRight
	.section	.text.samsungvfdRightToLeft,"ax",%progbits
	.align	1
	.global	samsungvfdRightToLeft
	.thumb
	.thumb_func
	.ascii	"samsungvfdRightToLeft\000"
	.align	2
	.word	4278190104
	.type	samsungvfdRightToLeft, %function
samsungvfdRightToLeft:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaymode, samsungvfd_displaymode
	and	r0, r1, #253	@ samsungvfd_displaymode.6, samsungvfd_displaymode,
	strb	r0, [r3, #0]	@ samsungvfd_displaymode.6, samsungvfd_displaymode
	orr	r0, r0, #4	@, samsungvfd_displaymode.6,
	b	samsungvfd_command	@
.L48:
	.align	2
.L47:
	.word	samsungvfd_displaymode
	.size	samsungvfdRightToLeft, .-samsungvfdRightToLeft
	.section	.text.samsungvfdAutoscroll,"ax",%progbits
	.align	1
	.global	samsungvfdAutoscroll
	.thumb
	.thumb_func
	.ascii	"samsungvfdAutoscroll\000"
	.align	2
	.word	4278190104
	.type	samsungvfdAutoscroll, %function
samsungvfdAutoscroll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L50	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaymode, samsungvfd_displaymode
	orr	r0, r1, #1	@ samsungvfd_displaymode.4, samsungvfd_displaymode,
	strb	r0, [r3, #0]	@ samsungvfd_displaymode.4, samsungvfd_displaymode
	orr	r0, r0, #4	@, samsungvfd_displaymode.4,
	b	samsungvfd_command	@
.L51:
	.align	2
.L50:
	.word	samsungvfd_displaymode
	.size	samsungvfdAutoscroll, .-samsungvfdAutoscroll
	.section	.text.samsungvfdNoAutoscroll,"ax",%progbits
	.align	1
	.global	samsungvfdNoAutoscroll
	.thumb
	.thumb_func
	.ascii	"samsungvfdNoAutoscroll\000"
	.align	2
	.word	4278190104
	.type	samsungvfdNoAutoscroll, %function
samsungvfdNoAutoscroll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L53	@ tmp137,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_displaymode, samsungvfd_displaymode
	and	r0, r1, #254	@ samsungvfd_displaymode.2, samsungvfd_displaymode,
	strb	r0, [r3, #0]	@ samsungvfd_displaymode.2, samsungvfd_displaymode
	orr	r0, r0, #4	@, samsungvfd_displaymode.2,
	b	samsungvfd_command	@
.L54:
	.align	2
.L53:
	.word	samsungvfd_displaymode
	.size	samsungvfdNoAutoscroll, .-samsungvfdNoAutoscroll
	.section	.text.samsungvfdClear,"ax",%progbits
	.align	1
	.global	samsungvfdClear
	.thumb
	.thumb_func
	.ascii	"samsungvfdClear\000"
	.align	2
	.word	4278190096
	.type	samsungvfdClear, %function
samsungvfdClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #1	@,
	push	{r3, lr}	@
	bl	samsungvfd_command	@
	movs	r0, #2	@,
	pop	{r3, lr}	@
	b	systickDelay	@
	.size	samsungvfdClear, .-samsungvfdClear
	.section	.text.samsungvfdHome,"ax",%progbits
	.align	1
	.global	samsungvfdHome
	.thumb
	.thumb_func
	.ascii	"samsungvfdHome\000"
	.align	2
	.word	4278190096
	.type	samsungvfdHome, %function
samsungvfdHome:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r0, #2	@,
	push	{r3, lr}	@
	bl	samsungvfd_command	@
	movs	r0, #2	@,
	pop	{r3, lr}	@
	b	systickDelay	@
	.size	samsungvfdHome, .-samsungvfdHome
	.section	.text.samsungvfd_begin,"ax",%progbits
	.align	1
	.global	samsungvfd_begin
	.thumb
	.thumb_func
	.ascii	"samsungvfd_begin\000"
	.align	2
	.word	4278190100
	.type	samsungvfd_begin, %function
samsungvfd_begin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	cmp	r1, #1	@ lines,
	ite	hi	@
	movhi	ip, #8	@, cstore.93,
	movls	ip, #0	@, cstore.93,
	mov	r4, r1	@ lines, lines
	ldr	r1, .L62	@ tmp138,
	cmp	r2, #3	@ brightness,
	ite	ls	@
	movls	r0, r2	@,, brightness
	movhi	r0, #0	@,,
	strb	ip, [r1, #0]	@ cstore.93, samsungvfd_displayfunction
	bl	samsungvfdSetBrightness	@
	ldr	r0, .L62+4	@ tmp140,
	ldr	r1, .L62+8	@ tmp145,
	ldr	r3, .L62+12	@ tmp142,
	movs	r2, #0	@ tmp143,
	strb	r4, [r0, #0]	@ lines, samsungvfd_numlines
	movs	r0, #2	@ tmp146,
	strb	r0, [r1, #0]	@ tmp146, samsungvfd_displaymode
	strb	r2, [r3, #0]	@ tmp143, samsungvfd_currline
	movs	r0, #6	@,
	bl	samsungvfd_command	@
	movs	r0, #128	@,
	bl	samsungvfd_command	@
	ldr	r3, .L62+16	@ tmp148,
	movs	r2, #4	@ tmp149,
	strb	r2, [r3, #0]	@ tmp149, samsungvfd_displaycontrol
	bl	samsungvfdDisplay	@
	bl	samsungvfdClear	@
	pop	{r4, lr}	@
	b	samsungvfdHome	@
.L63:
	.align	2
.L62:
	.word	samsungvfd_displayfunction
	.word	samsungvfd_numlines
	.word	samsungvfd_displaymode
	.word	samsungvfd_currline
	.word	samsungvfd_displaycontrol
	.size	samsungvfd_begin, .-samsungvfd_begin
	.section	.text.samsungvfdInit,"ax",%progbits
	.align	1
	.global	samsungvfdInit
	.thumb
	.thumb_func
	.ascii	"samsungvfdInit\000"
	.align	2
	.word	4278190096
	.type	samsungvfdInit, %function
samsungvfdInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #1	@,
	push	{r4, lr}	@
	mov	r2, r1	@,
	mov	r4, r0	@ brightness, brightness
	movs	r0, #2	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	mov	r1, r0	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	movs	r0, #2	@,
	movs	r1, #3	@,
	movs	r2, #1	@,
	bl	gpioSetDir	@
	ldr	r2, .L65	@ tmp135,
	movw	r3, #4095	@ tmp136,
	str	r3, [r2, #0]	@ tmp136, MEM[(volatile long unsigned int *)1342308368B]
	movs	r0, #20	@,
	str	r3, [r2, #16]	@ tmp136, MEM[(volatile long unsigned int *)1342308384B]
	movs	r1, #2	@,
	mov	r2, r4	@, brightness
	pop	{r4, lr}	@
	b	samsungvfd_begin	@
.L66:
	.align	2
.L65:
	.word	1342308368
	.size	samsungvfdInit, .-samsungvfdInit
	.section	.text.samsungvfdSetCursor,"ax",%progbits
	.align	1
	.global	samsungvfdSetCursor
	.thumb
	.thumb_func
	.ascii	"samsungvfdSetCursor\000"
	.align	2
	.word	4278190100
	.type	samsungvfdSetCursor, %function
samsungvfdSetCursor:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, lr}	@
	mov	r4, r0	@ row, row
	ldr	r0, .L69	@ tmp156,
	add	r6, sp, #16	@,,
	mov	r5, r1	@ col, col
	ldmia	r0, {r0, r1, r2, r3}	@ tmp156,,,,
	stmdb	r6, {r0, r1, r2, r3}	@,,,,
	ldr	r3, .L69+4	@ tmp159,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ samsungvfd_numlines.0, samsungvfd_numlines
	cmp	r4, r3	@ row, samsungvfd_numlines.0
	bls	.L68	@,
	subs	r4, r3, #1	@ tmp160, samsungvfd_numlines.0,
	uxtb	r4, r4	@ row, tmp160
.L68:
	add	ip, sp, #16	@,,
	add	r4, ip, r4, lsl #2	@, tmp161,, row,
	ldr	r2, [r4, #-16]	@ tmp163, row_offsets
	adds	r5, r5, r2	@ tmp165, col, tmp163
	orn	r1, r5, #127	@ tmp167, tmp165,
	uxtb	r0, r1	@, tmp167
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, lr}
	b	samsungvfd_command	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	samsungvfd_numlines
	.size	samsungvfdSetCursor, .-samsungvfdSetCursor
	.comm	samsungvfd_currline,1,1
	.comm	samsungvfd_numlines,1,1
	.comm	samsungvfd_initialized,1,1
	.comm	samsungvfd_displaymode,1,1
	.comm	samsungvfd_displaycontrol,1,1
	.comm	samsungvfd_displayfunction,1,1
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	64
	.word	20
	.word	84
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
