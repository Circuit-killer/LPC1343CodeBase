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
	.file	"cmd.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed cmd.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip cmd.o -Os -Wall -ffunction-sections
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

	.section	.text.cmd_help,"ax",%progbits
	.align	1
	.global	cmd_help
	.thumb
	.thumb_func
	.ascii	"cmd_help\000"
	.align	2
	.word	4278190092
	.type	cmd_help, %function
cmd_help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r1, .L5	@,
	ldr	r0, .L5+4	@,
	bl	printf	@
	ldr	r0, .L5+8	@,
	ldr	r1, .L5	@,
	bl	printf	@
	ldr	r4, .L5+12	@ ivtmp.17,
	add	r5, r4, #140	@ D.4876, ivtmp.17,
.L3:
	ldrb	r3, [r4, #-6]	@ zero_extendqisi2	@ MEM[base: D.4874_19, offset: 4294967290B], MEM[base: D.4874_19, offset: 4294967290B]
	cbnz	r3, .L2	@ MEM[base: D.4874_19, offset: 4294967290B],
	ldr	r0, .L5+16	@,
	ldr	r1, [r4, #-12]	@, MEM[base: D.4874_19, offset: 4294967284B]
	ldr	r2, [r4, #0]	@, MEM[base: D.4874_19, offset: 0B]
	ldr	r3, .L5	@,
	bl	printf	@
.L2:
	adds	r4, r4, #20	@ ivtmp.17, ivtmp.17,
	cmp	r4, r5	@ ivtmp.17, D.4876
	bne	.L3	@,
	ldr	r1, .L5	@,
	ldr	r0, .L5+20	@,
	mov	r2, r1	@,
	pop	{r3, r4, r5, lr}	@
	b	printf	@
.L6:
	.align	2
.L5:
	.word	.LC1
	.word	.LC0
	.word	.LC2
	.word	.LANCHOR0+12
	.word	.LC3
	.word	.LC4
	.size	cmd_help, .-cmd_help
	.section	.text.cmdMenu,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"cmdMenu\000"
	.align	2
	.word	4278190088
	.type	cmdMenu, %function
cmdMenu:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	ldr	r0, .L8	@,
	bl	printf	@
	ldr	r0, .L8+4	@,
	pop	{r3, lr}	@
	b	printf	@
.L9:
	.align	2
.L8:
	.word	.LC1
	.word	.LC5
	.size	cmdMenu, .-cmdMenu
	.section	.text.cmdParse,"ax",%progbits
	.align	1
	.global	cmdParse
	.thumb
	.thumb_func
	.ascii	"cmdParse\000"
	.align	2
	.word	4278190092
	.type	cmdParse, %function
cmdParse:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	ldr	r1, .L25	@,
	sub	sp, sp, #128	@,,
	mov	sl, r0	@ cmd, cmd
	bl	strtok	@
	add	r4, sp, #128	@ ivtmp.48,,
	str	r0, [r4, #-120]!	@, argv
	movs	r6, #0	@ i,
	b	.L13	@
.L21:
	mov	r6, r8	@ i, i
.L13:
	movs	r0, #0	@,
	ldr	r1, .L25	@,
	bl	strtok	@
	add	r8, r6, #1	@ i, i,
	cmp	r8, #30	@ i,
	str	r0, [r4, #4]!	@ D.4807, MEM[base: D.4914_63, offset: 4B]
	bne	.L11	@,
	movs	r6, #29	@ i,
.L14:
	movs	r5, #0	@ ivtmp.33,
	mov	r7, r5	@ i, ivtmp.33
	b	.L12	@
.L11:
	cmp	r0, #0	@ D.4807
	bne	.L21	@
	b	.L14	@
.L12:
	ldr	r4, .L25+4	@ tmp168,
	ldr	r0, [sp, #8]	@, argv
	ldr	r1, [r5, r4]	@, MEM[symbol: cmd_tbl, index: ivtmp.33_56, offset: 0B]
	bl	strcmp	@
	mov	r9, r4	@ tmp208, tmp168
	cmp	r0, #0	@
	bne	.L15	@
	cmp	r8, #2	@ i,
	bne	.L16	@,
	ldr	r0, [sp, #12]	@, argv
	ldr	r1, .L25+8	@,
	bl	strcmp	@
	cbnz	r0, .L16	@,
	movs	r3, #20	@ tmp171,
	mla	r4, r3, r7, r4	@ tmp172, tmp171, i, tmp168
	ldr	r2, .L25+12	@,
	ldr	r1, [r4, #12]	@, cmd_tbl[i_61].description
	mov	r3, r2	@,
	ldr	r0, .L25+16	@,
	bl	printf	@
	ldr	r1, [r4, #16]	@, cmd_tbl[i_61].parameters
	ldr	r2, .L25+12	@,
	ldr	r0, .L25+20	@,
	bl	printf	@
	b	.L24	@
.L16:
	movs	r4, #20	@ tmp181,
	muls	r4, r7, r4	@ tmp180, i
	add	r3, r9, r4	@ tmp182, tmp208, tmp180
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ D.4824, cmd_tbl[i_61].minArgs
	ldr	r5, .L25+4	@ tmp179,
	cmp	r6, r1	@ i, D.4824
	bcs	.L18	@,
	ldr	r0, .L25+24	@,
	b	.L23	@
.L18:
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ D.4830, cmd_tbl[i_61].maxArgs
	cmp	r6, r1	@ i, D.4830
	bls	.L19	@,
	ldr	r0, .L25+28	@,
.L23:
	ldr	r2, .L25+12	@,
	bl	printf	@
	ldr	r1, .L25+12	@ tmp196,
	ldr	r0, .L25+32	@,
	str	r1, [sp, #0]	@ tmp196,
	ldr	r2, [r5, r4]	@, cmd_tbl[i_61].command
	mov	r3, r1	@,
	bl	printf	@
	b	.L24	@
.L19:
	add	r0, r8, #-1	@ tmp203, i,
	ldr	r2, [r3, #8]	@ cmd_tbl[i_61].func, cmd_tbl[i_61].func
	uxtb	r0, r0	@, tmp203
	add	r1, sp, #12	@,,
	blx	r2	@ cmd_tbl[i_61].func
	b	.L24	@
.L15:
	adds	r7, r7, #1	@ i, i,
	adds	r5, r5, #20	@ ivtmp.33, ivtmp.33,
	cmp	r7, #7	@ i,
	bne	.L12	@,
	ldr	r2, .L25+12	@,
	mov	r1, sl	@, cmd
	ldr	r0, .L25+36	@,
	mov	r3, r2	@,
	bl	printf	@
	ldr	r0, .L25+40	@,
	ldr	r1, .L25+12	@,
	bl	printf	@
.L24:
	bl	cmdMenu	@
	add	sp, sp, #128	@,,
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
.L26:
	.align	2
.L25:
	.word	.LC6
	.word	.LANCHOR0
	.word	.LC7
	.word	.LC1
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC12
	.word	.LC11
	.word	.LC13
	.word	.LC14
	.size	cmdParse, .-cmdParse
	.section	.text.cmdRx,"ax",%progbits
	.align	1
	.global	cmdRx
	.thumb
	.thumb_func
	.ascii	"cmdRx\000"
	.align	2
	.word	4278190088
	.type	cmdRx, %function
cmdRx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #10	@ c,
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ c, c
	ldr	r4, .L35	@ tmp157,
	beq	.L30	@,
	cmp	r0, #13	@ c,
	beq	.L30	@,
	cmp	r0, #8	@ c,
	bne	.L33	@,
	b	.L34	@
.L30:
	ldr	r3, [r4, #0]	@ msg_ptr, msg_ptr
	movs	r2, #0	@ tmp143,
	ldr	r5, .L35+4	@ tmp145,
	strb	r2, [r3, #0]	@ tmp143, *msg_ptr.0_3
	ldr	r1, .L35+8	@,
	ldr	r0, .L35+12	@,
	bl	printf	@
	mov	r0, r5	@, tmp145
	bl	cmdParse	@
	str	r5, [r4, #0]	@ tmp145, msg_ptr
	pop	{r3, r4, r5, pc}	@
.L34:
	ldr	r0, .L35+16	@,
	mov	r1, r5	@, c
	bl	printf	@
	ldr	r3, [r4, #0]	@ msg_ptr.0, msg_ptr
	ldr	r0, .L35+4	@ tmp149,
	cmp	r3, r0	@ msg_ptr.0, tmp149
	bne	.L32	@,
	ldr	r0, .L35+20	@,
	pop	{r3, r4, r5, lr}	@
	b	printf	@
.L32:
	bls	.L27	@,
	subs	r1, r3, #1	@ tmp152, msg_ptr.0,
	str	r1, [r4, #0]	@ tmp152, msg_ptr
	pop	{r3, r4, r5, pc}	@
.L33:
	ldr	r0, .L35+16	@,
	mov	r1, r5	@, c
	bl	printf	@
	ldr	r2, [r4, #0]	@ tmp156, msg_ptr
	strb	r5, [r2], #1	@ c, *msg_ptr.0_10
	str	r2, [r4, #0]	@ tmp156, msg_ptr
.L27:
	pop	{r3, r4, r5, pc}	@
.L36:
	.align	2
.L35:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LC1
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.size	cmdRx, .-cmdRx
	.section	.text.cmdPoll,"ax",%progbits
	.align	1
	.global	cmdPoll
	.thumb
	.thumb_func
	.ascii	"cmdPoll\000"
	.align	2
	.word	4278190088
	.type	cmdPoll, %function
cmdPoll:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}	@
	add	r0, sp, #4	@,,
	bl	CDC_OutBufAvailChar	@
	ldr	r3, [sp, #4]	@ numAvailByte.3, numAvailByte
	cmp	r3, #0	@ numAvailByte.3,
	ble	.L37	@,
	cmp	r3, #32	@ numAvailByte.3,
	it	ge
	movge	r3, #32	@ tmp141,
	add	r1, sp, #8	@ tmp143,,
	str	r3, [r1, #-8]!	@ tmp141, numBytesToRead
	ldr	r0, .L41	@,
	mov	r1, sp	@,
	bl	CDC_RdOutBuf	@
	movs	r4, #0	@ i,
	mov	r5, r0	@ numBytesRead,
	b	.L39	@
.L40:
	ldr	r3, .L41	@ tmp144,
	ldrb	r0, [r3, r4]	@ zero_extendqisi2	@, MEM[symbol: usbcdcBuf, index: D.4945_3, offset: 0B]
	bl	cmdRx	@
	adds	r4, r4, #1	@ i, i,
.L39:
	cmp	r4, r5	@ i, numBytesRead
	blt	.L40	@,
.L37:
	pop	{r1, r2, r3, r4, r5, pc}
.L42:
	.align	2
.L41:
	.word	.LANCHOR3
	.size	cmdPoll, .-cmdPoll
	.section	.text.cmdInit,"ax",%progbits
	.align	1
	.global	cmdInit
	.thumb
	.thumb_func
	.ascii	"cmdInit\000"
	.align	2
	.word	4278190088
	.type	cmdInit, %function
cmdInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L44	@ tmp135,
	ldr	r3, .L44+4	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, msg_ptr
	b	cmdMenu	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.size	cmdInit, .-cmdInit
	.global	cmd_tbl
	.section	.bss.usbcdcBuf,"aw",%nobits
	.set	.LANCHOR3,. + 0
	.type	usbcdcBuf, %object
	.size	usbcdcBuf, 32
usbcdcBuf:
	.space	32
	.section	.bss.msg,"aw",%nobits
	.set	.LANCHOR2,. + 0
	.type	msg, %object
	.size	msg, 256
msg:
	.space	256
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Command      Description%s\000"
.LC1:
	.ascii	"\015\012\000"
.LC2:
	.ascii	"-------      -----------%s\000"
.LC3:
	.ascii	"%-10s   %s%s\000"
.LC4:
	.ascii	"%sCommand parameters can be seen by entering: <comm"
	.ascii	"and-name> ?%s\000"
.LC5:
	.ascii	"LPC1343 >> \000"
.LC6:
	.ascii	" \000"
.LC7:
	.ascii	"?\000"
.LC8:
	.ascii	"%s%s%s\000"
.LC9:
	.ascii	"%s%s\000"
.LC10:
	.ascii	"Too few arguments (%d expected)%s\000"
.LC11:
	.ascii	"%sType '%s ?' for more information%s%s\000"
.LC12:
	.ascii	"Too many arguments (%d maximum)%s\000"
.LC13:
	.ascii	"Command not recognized: '%s'%s%s\000"
.LC14:
	.ascii	"Type '?' for a list of all available commands%s\000"
.LC15:
	.ascii	"%s\000"
.LC16:
	.ascii	"%c\000"
.LC17:
	.ascii	"\007 \000"
.LC18:
	.ascii	"Help\000"
.LC19:
	.ascii	"This command has no parameters\000"
.LC20:
	.ascii	"V\000"
.LC21:
	.ascii	"System Info\000"
.LC22:
	.ascii	"Z\000"
.LC23:
	.ascii	"Reset\000"
.LC24:
	.ascii	"e\000"
.LC25:
	.ascii	"EEPROM Read\000"
.LC26:
	.ascii	"'e <addr>'\000"
.LC27:
	.ascii	"w\000"
.LC28:
	.ascii	"EEPROM Write\000"
.LC29:
	.ascii	"'w <addr> <val>'\000"
.LC30:
	.ascii	"U\000"
.LC31:
	.ascii	"UART baud rate\000"
.LC32:
	.ascii	"'U [<val>]'\000"
.LC33:
	.ascii	"dmx\000"
.LC34:
	.ascii	"DMX channel control\000"
.LC35:
	.ascii	"'dmx <channel> <value>'\000"
	.section	.bss.msg_ptr,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	msg_ptr, %object
	.size	msg_ptr, 4
msg_ptr:
	.space	4
	.section	.data.cmd_tbl,"aw",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cmd_tbl, %object
	.size	cmd_tbl, 140
cmd_tbl:
@ command:
	.word	.LC7
@ minArgs:
	.byte	0
@ maxArgs:
	.byte	0
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_help
@ description:
	.word	.LC18
@ parameters:
	.word	.LC19
@ command:
	.word	.LC20
@ minArgs:
	.byte	0
@ maxArgs:
	.byte	0
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_sysinfo
@ description:
	.word	.LC21
@ parameters:
	.word	.LC19
@ command:
	.word	.LC22
@ minArgs:
	.byte	0
@ maxArgs:
	.byte	0
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_reset
@ description:
	.word	.LC23
@ parameters:
	.word	.LC19
@ command:
	.word	.LC24
@ minArgs:
	.byte	1
@ maxArgs:
	.byte	1
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_i2ceeprom_read
@ description:
	.word	.LC25
@ parameters:
	.word	.LC26
@ command:
	.word	.LC27
@ minArgs:
	.byte	2
@ maxArgs:
	.byte	2
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_i2ceeprom_write
@ description:
	.word	.LC28
@ parameters:
	.word	.LC29
@ command:
	.word	.LC30
@ minArgs:
	.byte	0
@ maxArgs:
	.byte	1
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_uart
@ description:
	.word	.LC31
@ parameters:
	.word	.LC32
@ command:
	.word	.LC33
@ minArgs:
	.byte	2
@ maxArgs:
	.byte	2
@ hidden:
	.byte	0
@ func:
	.space	1
	.word	cmd_dmx
@ description:
	.word	.LC34
@ parameters:
	.word	.LC35
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
