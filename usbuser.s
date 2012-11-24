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
	.file	"usbuser.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed usbuser.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip usbuser.o -Os -Wall
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

	.section	.text.USB_EndPoint3,"ax",%progbits
	.align	1
	.global	USB_EndPoint3
	.thumb
	.thumb_func
	.ascii	"USB_EndPoint3\000"
	.align	2
	.word	4278190096
	.type	USB_EndPoint3, %function
USB_EndPoint3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2	@ event,
	beq	.L3	@,
	cmp	r0, #3	@ event,
	bne	.L5	@,
	b	.L6	@
.L3:
	b	CDC_BulkOut	@
.L6:
	b	CDC_BulkIn	@
.L5:
	bx	lr	@
	.size	USB_EndPoint3, .-USB_EndPoint3
	.section	.text.USB_EndPoint1,"ax",%progbits
	.align	1
	.global	USB_EndPoint1
	.thumb
	.thumb_func
	.ascii	"USB_EndPoint1\000"
	.align	2
	.word	4278190096
	.type	USB_EndPoint1, %function
USB_EndPoint1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ event,
	push	{r3, lr}	@
	bne	.L7	@,
	bl	CDC_GetSerialState	@
	ldr	r3, .L10	@ tmp138,
	ldrh	r2, [r3, #0]	@ serialState, serialState
	cmp	r2, r0	@ serialState, tmp137
	beq	.L7	@,
	strh	r0, [r3, #0]	@ movhi	@ tmp137, serialState
	pop	{r3, lr}	@
	b	CDC_NotificationIn	@
.L7:
	pop	{r3, pc}	@
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	USB_EndPoint1, .-USB_EndPoint1
	.section	.text.USB_Reset_Event,"ax",%progbits
	.align	1
	.global	USB_Reset_Event
	.thumb
	.thumb_func
	.ascii	"USB_Reset_Event\000"
	.align	2
	.word	4278190096
	.type	USB_Reset_Event, %function
USB_Reset_Event:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	USB_ResetCore	@
	.size	USB_Reset_Event, .-USB_Reset_Event
	.section	.text.USB_Suspend_Event,"ax",%progbits
	.align	1
	.global	USB_Suspend_Event
	.thumb
	.thumb_func
	.ascii	"USB_Suspend_Event\000"
	.align	2
	.word	4278190100
	.type	USB_Suspend_Event, %function
USB_Suspend_Event:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_Suspend_Event, .-USB_Suspend_Event
	.section	.text.USB_Resume_Event,"ax",%progbits
	.align	1
	.global	USB_Resume_Event
	.thumb
	.thumb_func
	.ascii	"USB_Resume_Event\000"
	.align	2
	.word	4278190100
	.type	USB_Resume_Event, %function
USB_Resume_Event:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_Resume_Event, .-USB_Resume_Event
	.section	.text.USB_Configure_Event,"ax",%progbits
	.align	1
	.global	USB_Configure_Event
	.thumb
	.thumb_func
	.ascii	"USB_Configure_Event\000"
	.align	2
	.word	4278190100
	.type	USB_Configure_Event, %function
USB_Configure_Event:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16	@ tmp135,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	bx	lr	@
.L17:
	.align	2
.L16:
	.word	USB_Configuration
	.size	USB_Configure_Event, .-USB_Configure_Event
	.section	.text.USB_EndPoint2,"ax",%progbits
	.align	1
	.global	USB_EndPoint2
	.thumb
	.thumb_func
	.ascii	"USB_EndPoint2\000"
	.align	2
	.word	4278190096
	.type	USB_EndPoint2, %function
USB_EndPoint2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.size	USB_EndPoint2, .-USB_EndPoint2
	.global	USB_P_EP
	.section	.rodata.USB_P_EP,"a",%progbits
	.align	2
	.type	USB_P_EP, %object
	.size	USB_P_EP, 20
USB_P_EP:
	.word	USB_EndPoint0
	.word	USB_EndPoint1
	.word	0
	.word	USB_EndPoint3
	.word	0
	.section	.bss.serialState.4763,"aw",%nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	serialState.4763, %object
	.size	serialState.4763, 2
serialState.4763:
	.space	2
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
