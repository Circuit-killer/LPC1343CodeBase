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
	.file	"usbhw.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed usbhw.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip usbhw.o -Os -Wall -ffunction-sections
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

	.section	.text.USBIOClkConfig,"ax",%progbits
	.align	1
	.global	USBIOClkConfig
	.thumb
	.thumb_func
	.ascii	"USBIOClkConfig\000"
	.align	2
	.word	4278190096
	.type	USBIOClkConfig, %function
USBIOClkConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6	@ tmp158,
	ldr	r2, [r3, #0]	@ D.4984, MEM[(volatile long unsigned int *)1074036864B]
	orr	r0, r2, #64	@ D.4985, D.4984,
	str	r0, [r3, #0]	@ D.4985, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r1, [r3, #0]	@ D.4986, MEM[(volatile long unsigned int *)1074036864B]
	orr	r2, r1, #82944	@ D.4987, D.4986,
	str	r2, [r3, #0]	@ D.4987, MEM[(volatile long unsigned int *)1074036864B]
	ldr	r3, .L6+4	@ tmp162,
	ldr	r0, [r3, #0]	@ D.4989, MEM[(volatile long unsigned int *)1074037304B]
	bic	r1, r0, #1024	@ D.4990, D.4989,
	str	r1, [r3, #0]	@ D.4990, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r2, [r3, #0]	@ D.4991, MEM[(volatile long unsigned int *)1074037304B]
	movs	r1, #0	@ tmp171,
	bic	r0, r2, #256	@ D.4992, D.4991,
	str	r0, [r3, #0]	@ D.4992, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r3, .L6+8	@ tmp166,
	movs	r2, #1	@ tmp167,
	str	r2, [r3, #0]	@ tmp167, MEM[(volatile long unsigned int *)1074036808B]
	str	r2, [r3, #4]	@ tmp167, MEM[(volatile long unsigned int *)1074036812B]
	str	r1, [r3, #4]	@ tmp171, MEM[(volatile long unsigned int *)1074036812B]
	str	r2, [r3, #4]	@ tmp167, MEM[(volatile long unsigned int *)1074036812B]
.L2:
	ldr	r1, .L6+12	@ tmp174,
	ldr	r3, [r1, #0]	@ D.4995, MEM[(volatile long unsigned int *)1074036812B]
	lsls	r2, r3, #31	@, D.4995,
	bpl	.L2	@,
	ldr	r2, .L6+16	@ tmp176,
	movs	r0, #3	@ tmp177,
	str	r0, [r2, #0]	@ tmp177, MEM[(volatile long unsigned int *)1074036752B]
.L3:
	ldr	r1, .L6+20	@ tmp178,
	ldr	r3, [r1, #0]	@ D.4999, MEM[(volatile long unsigned int *)1074036756B]
	lsls	r3, r3, #31	@, D.4999,
	bpl	.L3	@,
	ldr	r3, .L6+24	@ tmp180,
	movs	r0, #0	@ tmp181,
	str	r0, [r3, #0]	@ tmp181, MEM[(volatile long unsigned int *)1074036928B]
	ldr	r3, .L6+28	@ tmp182,
	ldr	r1, [r3, #0]	@ D.5003, MEM[(volatile long unsigned int *)1074020368B]
	bic	r2, r1, #7	@ D.5004, D.5003,
	str	r2, [r3, #0]	@ D.5004, MEM[(volatile long unsigned int *)1074020368B]
	ldr	r0, [r3, #0]	@ D.5005, MEM[(volatile long unsigned int *)1074020368B]
	orr	r1, r0, #1	@ D.5006, D.5005,
	str	r1, [r3, #0]	@ D.5006, MEM[(volatile long unsigned int *)1074020368B]
	ldr	r2, [r3, #28]	@ D.5008, MEM[(volatile long unsigned int *)1074020396B]
	bic	r0, r2, #7	@ D.5009, D.5008,
	str	r0, [r3, #28]	@ D.5009, MEM[(volatile long unsigned int *)1074020396B]
	ldr	r1, [r3, #28]	@ D.5010, MEM[(volatile long unsigned int *)1074020396B]
	orr	r2, r1, #1	@ D.5011, D.5010,
	str	r2, [r3, #28]	@ D.5011, MEM[(volatile long unsigned int *)1074020396B]
	ldr	r0, [r3, #60]	@ D.5013, MEM[(volatile long unsigned int *)1074020428B]
	bic	r1, r0, #7	@ D.5014, D.5013,
	str	r1, [r3, #60]	@ D.5014, MEM[(volatile long unsigned int *)1074020428B]
	ldr	r2, [r3, #60]	@ D.5015, MEM[(volatile long unsigned int *)1074020428B]
	orr	r0, r2, #1	@ D.5016, D.5015,
	str	r0, [r3, #60]	@ D.5016, MEM[(volatile long unsigned int *)1074020428B]
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	1074036864
	.word	1074037304
	.word	1074036808
	.word	1074036812
	.word	1074036752
	.word	1074036756
	.word	1074036928
	.word	1074020368
	.size	USBIOClkConfig, .-USBIOClkConfig
	.section	.text.delay,"ax",%progbits
	.align	1
	.global	delay
	.thumb
	.thumb_func
	.ascii	"delay\000"
	.align	2
	.word	4278190088
	.type	delay, %function
delay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0	@ i,
	b	.L9	@
.L10:
@ 87 "core/usbcdc/usbhw.c" 1
	nop
@ 0 "" 2
	.thumb
	adds	r3, r3, #1	@ i, i,
.L9:
	cmp	r3, r0	@ i, length
	bne	.L10	@,
	bx	lr	@
	.size	delay, .-delay
	.section	.text.EPAdr,"ax",%progbits
	.align	1
	.global	EPAdr
	.thumb
	.thumb_func
	.ascii	"EPAdr\000"
	.align	2
	.word	4278190088
	.type	EPAdr, %function
EPAdr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ EPNum, EPNum
	and	r0, r0, #15	@ tmp139, EPNum,
	lsls	r0, r0, #1	@ val, tmp139,
	lsls	r1, r3, #24	@, EPNum,
	it	mi
	addmi	r0, r0, #1	@ val, val,
	bx	lr	@
	.size	EPAdr, .-EPAdr
	.section	.text.WrCmd,"ax",%progbits
	.align	1
	.global	WrCmd
	.thumb
	.thumb_func
	.ascii	"WrCmd\000"
	.align	2
	.word	4278190088
	.type	WrCmd, %function
WrCmd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16	@ tmp137,
	mov	r2, #1024	@ tmp138,
	str	r2, [r3, #0]	@ tmp138, MEM[(volatile long unsigned int *)1073872904B]
	str	r0, [r3, #8]	@ cmd, MEM[(volatile long unsigned int *)1073872912B]
.L14:
	ldr	r1, .L16+4	@ tmp140,
	ldr	r0, [r1, #0]	@ D.4974, MEM[(volatile long unsigned int *)1073872896B]
	tst	r0, #1536	@ D.4974,
	beq	.L14	@,
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	1073872904
	.word	1073872896
	.size	WrCmd, .-WrCmd
	.section	.text.WrCmdDat,"ax",%progbits
	.align	1
	.global	WrCmdDat
	.thumb
	.thumb_func
	.ascii	"WrCmdDat\000"
	.align	2
	.word	4278190092
	.type	WrCmdDat, %function
WrCmdDat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r1	@ val, val
	bl	WrCmd	@
	mov	r0, r4	@, val
	pop	{r4, lr}	@
	b	WrCmd	@
	.size	WrCmdDat, .-WrCmdDat
	.section	.text.WrCmdEP,"ax",%progbits
	.align	1
	.global	WrCmdEP
	.thumb
	.thumb_func
	.ascii	"WrCmdEP\000"
	.align	2
	.word	4278190088
	.type	WrCmdEP, %function
WrCmdEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r1	@ cmd, cmd
	bl	EPAdr	@
	lsls	r0, r0, #16	@ tmp139,,
	orr	r0, r0, #1280	@, tmp139,
	bl	WrCmd	@
	mov	r0, r4	@, cmd
	pop	{r4, lr}	@
	b	WrCmd	@
	.size	WrCmdEP, .-WrCmdEP
	.section	.text.RdCmdDat,"ax",%progbits
	.align	1
	.global	RdCmdDat
	.thumb
	.thumb_func
	.ascii	"RdCmdDat\000"
	.align	2
	.word	4278190092
	.type	RdCmdDat, %function
RdCmdDat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23	@ tmp139,
	mov	r2, #3072	@ tmp140,
	str	r2, [r3, #0]	@ tmp140, MEM[(volatile long unsigned int *)1073872904B]
	str	r0, [r3, #8]	@ cmd, MEM[(volatile long unsigned int *)1073872912B]
.L21:
	ldr	r1, .L23+4	@ tmp142,
	ldr	r0, [r1, #0]	@ D.4963, MEM[(volatile long unsigned int *)1073872896B]
	tst	r0, #2560	@ D.4963,
	beq	.L21	@,
	ldr	r3, .L23+8	@ tmp144,
	ldr	r0, [r3, #0]	@ D.4965, MEM[(volatile long unsigned int *)1073872916B]
	bx	lr	@
.L24:
	.align	2
.L23:
	.word	1073872904
	.word	1073872896
	.word	1073872916
	.size	RdCmdDat, .-RdCmdDat
	.section	.text.USB_Connect,"ax",%progbits
	.align	1
	.global	USB_Connect
	.thumb
	.thumb_func
	.ascii	"USB_Connect\000"
	.align	2
	.word	4278190092
	.type	USB_Connect, %function
USB_Connect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L28	@ tmp136,
	cmp	r0, #0	@ con,
	it	eq	@
	moveq	r1, #256	@, iftmp.3,
	ldr	r0, .L28+4	@,
	b	WrCmdDat	@
.L29:
	.align	2
.L28:
	.word	65792
	.word	16647424
	.size	USB_Connect, .-USB_Connect
	.section	.text.USB_Reset,"ax",%progbits
	.align	1
	.global	USB_Reset
	.thumb
	.thumb_func
	.ascii	"USB_Reset\000"
	.align	2
	.word	4278190092
	.type	USB_Reset, %function
USB_Reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31	@ tmp134,
	ldr	r0, .L31+4	@ tmp135,
	movw	r2, #1022	@ tmp137,
	str	r0, [r3, #0]	@ tmp135, MEM[(volatile long unsigned int *)1073872904B]
	str	r2, [r3, #-4]	@ tmp137, MEM[(volatile long unsigned int *)1073872900B]
	bx	lr	@
.L32:
	.align	2
.L31:
	.word	1073872904
	.word	1048575
	.size	USB_Reset, .-USB_Reset
	.section	.text.USB_Suspend,"ax",%progbits
	.align	1
	.global	USB_Suspend
	.thumb
	.thumb_func
	.ascii	"USB_Suspend\000"
	.align	2
	.word	4278190092
	.type	USB_Suspend, %function
USB_Suspend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_Suspend, .-USB_Suspend
	.section	.text.USB_Resume,"ax",%progbits
	.align	1
	.global	USB_Resume
	.thumb
	.thumb_func
	.ascii	"USB_Resume\000"
	.align	2
	.word	4278190092
	.type	USB_Resume, %function
USB_Resume:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_Resume, .-USB_Resume
	.section	.text.USB_WakeUp,"ax",%progbits
	.align	1
	.global	USB_WakeUp
	.thumb
	.thumb_func
	.ascii	"USB_WakeUp\000"
	.align	2
	.word	4278190092
	.type	USB_WakeUp, %function
USB_WakeUp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L37	@ tmp137,
	ldrh	r3, [r0, #0]	@ USB_DeviceStatus, USB_DeviceStatus
	lsls	r0, r3, #30	@, USB_DeviceStatus,
	bpl	.L35	@,
	ldr	r0, .L37+4	@,
	ldr	r1, .L37+8	@,
	b	WrCmdDat	@
.L35:
	bx	lr	@
.L38:
	.align	2
.L37:
	.word	USB_DeviceStatus
	.word	16647424
	.word	65792
	.size	USB_WakeUp, .-USB_WakeUp
	.section	.text.USB_WakeUpCfg,"ax",%progbits
	.align	1
	.global	USB_WakeUpCfg
	.thumb
	.thumb_func
	.ascii	"USB_WakeUpCfg\000"
	.align	2
	.word	4278190096
	.type	USB_WakeUpCfg, %function
USB_WakeUpCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_WakeUpCfg, .-USB_WakeUpCfg
	.section	.text.USB_SetAddress,"ax",%progbits
	.align	1
	.global	USB_SetAddress
	.thumb
	.thumb_func
	.ascii	"USB_SetAddress\000"
	.align	2
	.word	4278190096
	.type	USB_SetAddress, %function
USB_SetAddress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r0, r0, #16	@ tmp139, adr,
	push	{r4, lr}	@
	orr	r4, r0, #8388608	@ D.4938, tmp139,
	orr	r4, r4, #256	@ D.4938, D.4938,
	mov	r1, r4	@, D.4938
	ldr	r0, .L41	@,
	bl	WrCmdDat	@
	ldr	r0, .L41	@,
	mov	r1, r4	@, D.4938
	pop	{r4, lr}	@
	b	WrCmdDat	@
.L42:
	.align	2
.L41:
	.word	13632768
	.size	USB_SetAddress, .-USB_SetAddress
	.section	.text.USB_Init,"ax",%progbits
	.align	1
	.global	USB_Init
	.thumb
	.thumb_func
	.ascii	"USB_Init\000"
	.align	2
	.word	4278190092
	.type	USB_Init, %function
USB_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	USBIOClkConfig	@
	ldr	r3, .L44	@ tmp134,
	mov	r2, #32768	@ tmp135,
	str	r2, [r3, #4]	@ tmp135, MEM[(struct NVIC_Type *)3758153984B].ISER
	bl	USB_Reset	@
	movs	r0, #0	@,
	pop	{r3, lr}	@
	b	USB_SetAddress	@
.L45:
	.align	2
.L44:
	.word	-536813312
	.size	USB_Init, .-USB_Init
	.section	.text.USB_Configure,"ax",%progbits
	.align	1
	.global	USB_Configure
	.thumb
	.thumb_func
	.ascii	"USB_Configure\000"
	.align	2
	.word	4278190096
	.type	USB_Configure, %function
USB_Configure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L49	@ tmp136,
	cmp	r0, #0	@ cfg,
	it	eq	@
	moveq	r1, #256	@, iftmp.1,
	ldr	r0, .L49+4	@,
	b	WrCmdDat	@
.L50:
	.align	2
.L49:
	.word	65792
	.word	14157056
	.size	USB_Configure, .-USB_Configure
	.section	.text.USB_ConfigEP,"ax",%progbits
	.align	1
	.global	USB_ConfigEP
	.thumb
	.thumb_func
	.ascii	"USB_ConfigEP\000"
	.align	2
	.word	4278190096
	.type	USB_ConfigEP, %function
USB_ConfigEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_ConfigEP, .-USB_ConfigEP
	.section	.text.USB_DirCtrlEP,"ax",%progbits
	.align	1
	.global	USB_DirCtrlEP
	.thumb
	.thumb_func
	.ascii	"USB_DirCtrlEP\000"
	.align	2
	.word	4278190096
	.type	USB_DirCtrlEP, %function
USB_DirCtrlEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_DirCtrlEP, .-USB_DirCtrlEP
	.section	.text.USB_EnableEP,"ax",%progbits
	.align	1
	.global	USB_EnableEP
	.thumb
	.thumb_func
	.ascii	"USB_EnableEP\000"
	.align	2
	.word	4278190096
	.type	USB_EnableEP, %function
USB_EnableEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	EPAdr	@
	lsls	r1, r0, #16	@ tmp138,,
	orr	r0, r1, #4194304	@, tmp138,
	orr	r0, r0, #1280	@,,
	mov	r1, #256	@,
	pop	{r3, lr}	@
	b	WrCmdDat	@
	.size	USB_EnableEP, .-USB_EnableEP
	.section	.text.USB_DisableEP,"ax",%progbits
	.align	1
	.global	USB_DisableEP
	.thumb
	.thumb_func
	.ascii	"USB_DisableEP\000"
	.align	2
	.word	4278190096
	.type	USB_DisableEP, %function
USB_DisableEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	EPAdr	@
	lsls	r1, r0, #16	@ tmp138,,
	orr	r0, r1, #4194304	@, tmp138,
	ldr	r1, .L55	@,
	orr	r0, r0, #1280	@,,
	pop	{r3, lr}	@
	b	WrCmdDat	@
.L56:
	.align	2
.L55:
	.word	2097408
	.size	USB_DisableEP, .-USB_DisableEP
	.section	.text.USB_ResetEP,"ax",%progbits
	.align	1
	.global	USB_ResetEP
	.thumb
	.thumb_func
	.ascii	"USB_ResetEP\000"
	.align	2
	.word	4278190092
	.type	USB_ResetEP, %function
USB_ResetEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	EPAdr	@
	lsls	r1, r0, #16	@ tmp138,,
	orr	r0, r1, #4194304	@, tmp138,
	orr	r0, r0, #1280	@,,
	mov	r1, #256	@,
	pop	{r3, lr}	@
	b	WrCmdDat	@
	.size	USB_ResetEP, .-USB_ResetEP
	.section	.text.USB_SetStallEP,"ax",%progbits
	.align	1
	.global	USB_SetStallEP
	.thumb
	.thumb_func
	.ascii	"USB_SetStallEP\000"
	.align	2
	.word	4278190096
	.type	USB_SetStallEP, %function
USB_SetStallEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	EPAdr	@
	lsls	r1, r0, #16	@ tmp138,,
	orr	r0, r1, #4194304	@, tmp138,
	ldr	r1, .L59	@,
	orr	r0, r0, #1280	@,,
	pop	{r3, lr}	@
	b	WrCmdDat	@
.L60:
	.align	2
.L59:
	.word	65792
	.size	USB_SetStallEP, .-USB_SetStallEP
	.section	.text.USB_ClrStallEP,"ax",%progbits
	.align	1
	.global	USB_ClrStallEP
	.thumb
	.thumb_func
	.ascii	"USB_ClrStallEP\000"
	.align	2
	.word	4278190096
	.type	USB_ClrStallEP, %function
USB_ClrStallEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	bl	EPAdr	@
	lsls	r1, r0, #16	@ tmp138,,
	orr	r0, r1, #4194304	@, tmp138,
	orr	r0, r0, #1280	@,,
	mov	r1, #256	@,
	pop	{r3, lr}	@
	b	WrCmdDat	@
	.size	USB_ClrStallEP, .-USB_ClrStallEP
	.section	.text.USB_ClearEPBuf,"ax",%progbits
	.align	1
	.global	USB_ClearEPBuf
	.thumb
	.thumb_func
	.ascii	"USB_ClearEPBuf\000"
	.align	2
	.word	4278190096
	.type	USB_ClearEPBuf, %function
USB_ClearEPBuf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L63	@,
	b	WrCmdEP	@
.L64:
	.align	2
.L63:
	.word	15860992
	.size	USB_ClearEPBuf, .-USB_ClearEPBuf
	.section	.text.USB_ReadEP,"ax",%progbits
	.align	1
	.global	USB_ReadEP
	.thumb
	.thumb_func
	.ascii	"USB_ReadEP\000"
	.align	2
	.word	4278190092
	.type	USB_ReadEP, %function
USB_ReadEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	mov	r6, r1	@ pData, pData
	and	r1, r0, #15	@ tmp174, EPNum,
	mov	r5, r0	@ EPNum, EPNum
	ldr	r3, .L70	@ tmp176,
	lsls	r0, r1, #2	@ tmp175, tmp174,
	orr	r2, r0, #1	@ D.4904, tmp175,
	str	r2, [r3, #0]	@ D.4904, MEM[(volatile long unsigned int *)1073872936B]
	movs	r0, #5	@,
	bl	delay	@
.L66:
	ldr	r4, .L70+4	@ tmp177,
	ldr	r4, [r4, #0]	@ cnt, MEM[(volatile long unsigned int *)1073872928B]
	lsls	r3, r4, #21	@, cnt,
	bpl	.L66	@,
	lsls	r3, r4, #22	@ cnt, cnt,
	lsrs	r4, r3, #22	@ cnt, cnt,
	adds	r2, r4, #3	@ tmp180, cnt,
	lsrs	r2, r2, #2	@ D.4910, tmp180,
	movs	r3, #0	@ n,
	b	.L67	@
.L68:
	ldr	r1, .L70+8	@ tmp181,
	adds	r3, r3, #1	@ n, n,
	ldr	r0, [r1, #0]	@ D.4908, MEM[(volatile long unsigned int *)1073872920B]
	str	r0, [r6, #-4]	@ D.4908, MEM[base: D.5135_33, offset: 4294967292B]
.L67:
	adds	r6, r6, #4	@ ivtmp.62, ivtmp.62,
	cmp	r3, r2	@ n, D.4910
	bne	.L68	@,
	ldr	r3, .L70	@ tmp182,
	movs	r2, #0	@ tmp183,
	mov	r0, r5	@, EPNum
	str	r2, [r3, #0]	@ tmp183, MEM[(volatile long unsigned int *)1073872936B]
	ldr	r1, .L70+12	@,
	bl	WrCmdEP	@
	mov	r0, r4	@, cnt
	pop	{r4, r5, r6, pc}	@
.L71:
	.align	2
.L70:
	.word	1073872936
	.word	1073872928
	.word	1073872920
	.word	15860992
	.size	USB_ReadEP, .-USB_ReadEP
	.section	.text.USB_WriteEP,"ax",%progbits
	.align	1
	.global	USB_WriteEP
	.thumb
	.thumb_func
	.ascii	"USB_WriteEP\000"
	.align	2
	.word	4278190092
	.type	USB_WriteEP, %function
USB_WriteEP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	and	r3, r0, #15	@ tmp147, EPNum,
	push	{r4, r5, r6, lr}	@
	mov	r5, r2	@ cnt, cnt
	mov	r6, r1	@ pData, pData
	lsls	r2, r3, #2	@ tmp148, tmp147,
	ldr	r1, .L75	@ tmp149,
	mov	r4, r0	@ EPNum, EPNum
	orr	r0, r2, #2	@ D.4893, tmp148,
	str	r0, [r1, #0]	@ D.4893, MEM[(volatile long unsigned int *)1073872936B]
	movs	r0, #5	@,
	bl	delay	@
	ldr	r3, .L75+4	@ tmp150,
	adds	r2, r5, #3	@ tmp151, cnt,
	str	r5, [r3, #0]	@ cnt, MEM[(volatile long unsigned int *)1073872932B]
	lsrs	r2, r2, #2	@ D.4898, tmp151,
	movs	r3, #0	@ n,
	b	.L73	@
.L74:
	ldr	r0, [r6, #-4]	@ D.4896, MEM[base: D.5152_31, offset: 4294967292B]
	ldr	r1, .L75+8	@ tmp152,
	adds	r3, r3, #1	@ n, n,
	str	r0, [r1, #0]	@ D.4896, MEM[(volatile long unsigned int *)1073872924B]
.L73:
	adds	r6, r6, #4	@ ivtmp.78, ivtmp.78,
	cmp	r3, r2	@ n, D.4898
	bne	.L74	@,
	ldr	r3, .L75	@ tmp153,
	movs	r2, #0	@ tmp154,
	mov	r0, r4	@, EPNum
	str	r2, [r3, #0]	@ tmp154, MEM[(volatile long unsigned int *)1073872936B]
	ldr	r1, .L75+12	@,
	bl	WrCmdEP	@
	mov	r0, r5	@, cnt
	pop	{r4, r5, r6, pc}	@
.L76:
	.align	2
.L75:
	.word	1073872936
	.word	1073872932
	.word	1073872924
	.word	16385280
	.size	USB_WriteEP, .-USB_WriteEP
	.section	.text.USB_GetFrame,"ax",%progbits
	.align	1
	.global	USB_GetFrame
	.thumb
	.thumb_func
	.ascii	"USB_GetFrame\000"
	.align	2
	.word	4278190096
	.type	USB_GetFrame, %function
USB_GetFrame:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r0, .L78	@,
	bl	WrCmd	@
	ldr	r0, .L78+4	@,
	bl	RdCmdDat	@
	mov	r4, r0	@ val,
	ldr	r0, .L78+4	@,
	bl	RdCmdDat	@
	orr	r0, r4, r0, lsl #8	@,, val,,
	pop	{r4, pc}	@
.L79:
	.align	2
.L78:
	.word	16057600
	.word	16056832
	.size	USB_GetFrame, .-USB_GetFrame
	.section	.text.USB_IRQHandler,"ax",%progbits
	.align	1
	.global	USB_IRQHandler
	.thumb
	.thumb_func
	.ascii	"USB_IRQHandler\000"
	.align	2
	.word	4278190096
	.type	USB_IRQHandler, %function
USB_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L91	@ tmp161,
	ldr	r2, .L91+4	@ tmp162,
	ldr	r3, [r3, #0]	@ disr, MEM[(volatile long unsigned int *)1073872896B]
	push	{r4, r5, r6, r7, r8, lr}	@
	ands	r4, r3, #512	@ tmp163, disr,
	str	r3, [r2, #0]	@ disr, MEM[(volatile long unsigned int *)1073872904B]
	beq	.L81	@,
	ldr	r0, .L91+8	@,
	bl	WrCmd	@
	ldr	r0, .L91+12	@,
	bl	RdCmdDat	@
	lsls	r2, r0, #27	@, val,
	mov	r4, r0	@ val,
	bpl	.L82	@,
	bl	USB_Reset	@
	bl	USB_Reset_Event	@
.L82:
	lsls	r3, r4, #28	@, val,
	bpl	.L80	@,
	lsls	r0, r4, #29	@, val,
	bpl	.L84	@,
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	USB_Suspend_Event	@
.L84:
	pop	{r4, r5, r6, r7, r8, lr}	@
	b	USB_Resume_Event	@
.L81:
	tst	r3, #510	@ disr,
	beq	.L80	@,
	lsr	r8, r3, #1	@ D.4859, disr,
.L88:
	movs	r6, #1	@ tmp169,
	lsl	r0, r6, r4	@ tmp168, tmp169, n
	tst	r0, r8	@ tmp168, D.4859
	beq	.L85	@,
	lsls	r7, r4, #16	@ D.4866, n,
	orr	r2, r7, #4194304	@, D.4866,
	orr	r0, r2, #1280	@,,
	bl	WrCmd	@
	orr	r1, r7, #4194304	@, D.4866,
	orr	r0, r1, #512	@,,
	bl	RdCmdDat	@
	tst	r4, #1	@ n,
	lsr	r5, r4, r6	@ m, n,
	ldr	r2, .L91+16	@ tmp180,
	bne	.L86	@,
	cbnz	r4, .L87	@ n,
	lsls	r1, r0, #29	@, val,
	bpl	.L87	@,
	ldr	r3, [r2, #0]	@ D.4876, USB_P_EP
	cbz	r3, .L87	@ D.4876,
	mov	r0, r6	@, tmp169
	b	.L90	@
.L87:
	ldr	r3, [r2, r5, lsl #2]	@ D.4879, USB_P_EP
	cbz	r3, .L85	@ D.4879,
	movs	r0, #2	@,
	b	.L90	@
.L86:
	ldr	r3, [r2, r5, lsl #2]	@ D.4879, USB_P_EP
	cbz	r3, .L85	@ D.4879,
	movs	r0, #3	@,
.L90:
	blx	r3	@ D.4879
.L85:
	adds	r4, r4, #1	@ n, n,
	cmp	r4, #10	@ n,
	bne	.L88	@,
.L83:
.L80:
	pop	{r4, r5, r6, r7, r8, pc}	@
.L92:
	.align	2
.L91:
	.word	1073872896
	.word	1073872904
	.word	16647424
	.word	16646656
	.word	USB_P_EP
	.size	USB_IRQHandler, .-USB_IRQHandler
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
