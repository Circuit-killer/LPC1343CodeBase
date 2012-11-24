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
	.file	"usbcore.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed usbcore.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip usbcore.o -Os -Wall
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

	.section	.text.UsbAddPtr,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"UsbAddPtr\000"
	.align	2
	.word	4278190092
	.type	UsbAddPtr, %function
UsbAddPtr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ MEM[(uint8_t * *)vpptr_1(D)], MEM[(uint8_t * *)vpptr_1(D)]
	adds	r3, r2, r1	@ tmp139, MEM[(uint8_t * *)vpptr_1(D)], n
	str	r3, [r0, #0]	@ tmp139, MEM[(uint8_t * *)vpptr_1(D)]
	bx	lr	@
	.size	UsbAddPtr, .-UsbAddPtr
	.section	.text.USB_ReqSetClrFeature,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"USB_ReqSetClrFeature\000"
	.align	2
	.word	4278190104
	.type	USB_ReqSetClrFeature, %function
USB_ReqSetClrFeature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r3, .L21	@ tmp166,
	mov	r1, r0	@ sc, sc
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp169,
	mov	r5, r3	@ tmp216, tmp166
	ands	r2, r2, #31	@ tmp171, tmp169,
	beq	.L4	@,
	cmp	r2, #2	@ tmp171,
	bne	.L15	@,
	b	.L20	@
.L4:
	ldrh	r4, [r3, #2]	@ unaligned	@ tmp175,
	cmp	r4, #1	@ tmp175,
	bne	.L14	@,
	ldr	r5, .L21+4	@ tmp217,
	cbz	r0, .L6	@ sc,
	mov	r0, r4	@, tmp175
	bl	USB_WakeUpCfg	@
	ldrh	r3, [r5, #0]	@, USB_DeviceStatus
	orr	r3, r3, #2	@ tmp179, USB_DeviceStatus,
	b	.L18	@
.L6:
	bl	USB_WakeUpCfg	@
	ldrh	r0, [r5, #0]	@, USB_DeviceStatus
	bic	r3, r0, #2	@ tmp184, USB_DeviceStatus,
.L18:
	strh	r3, [r5, #0]	@ movhi	@ tmp184, USB_DeviceStatus
	b	.L3	@
.L20:
	ldrb	r4, [r3, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	lsls	r3, r4, #24	@, SetupPacket.wIndex.WB.L,
	and	r0, r4, #143	@ n, SetupPacket.wIndex.WB.L,
	bpl	.L7	@,
	and	r4, r4, #15	@ tmp189, SetupPacket.wIndex.WB.L,
	mov	r2, #65536	@ tmp190,
	lsl	r4, r2, r4	@ m, tmp190, tmp189
	b	.L8	@
.L7:
	movs	r3, #1	@ tmp191,
	lsl	r4, r3, r0	@ m, tmp191, n
.L8:
	ldr	r2, .L21+8	@ tmp192,
	ldrb	r2, [r2, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cbz	r2, .L14	@ USB_Configuration.15,
	ands	r2, r0, #15	@ tmp195, n,
	beq	.L14	@,
	ldr	r2, .L21+12	@ tmp196,
	ldr	r3, [r2, #0]	@ USB_EndPointMask, USB_EndPointMask
	ands	r2, r4, r3	@ tmp197, m, USB_EndPointMask
	beq	.L14	@,
	ldrh	r3, [r5, #2]	@ unaligned	@ tmp202,
	cbnz	r3, .L15	@ tmp202,
	cbz	r1, .L9	@ sc,
	bl	USB_SetStallEP	@
	ldr	r3, .L21+16	@ tmp203,
	ldr	r1, [r3, #0]	@ USB_EndPointHalt, USB_EndPointHalt
	orrs	r4, r4, r1	@, tmp206, m, USB_EndPointHalt
	b	.L19	@
.L9:
	ldr	r3, .L21+20	@ tmp207,
	ldr	r2, [r3, #0]	@ USB_EndPointStall, USB_EndPointStall
	tst	r4, r2	@ m, USB_EndPointStall
	bne	.L16	@,
	bl	USB_ClrStallEP	@
	ldr	r3, .L21+16	@ tmp210,
	ldr	r0, [r3, #0]	@ USB_EndPointHalt, USB_EndPointHalt
	bic	r4, r0, r4	@ tmp214, USB_EndPointHalt, m
.L19:
	str	r4, [r3, #0]	@ tmp214, USB_EndPointHalt
	b	.L16	@
.L14:
	mov	r4, r2	@ D.5107, tmp197
	b	.L3	@
.L15:
	movs	r4, #0	@ D.5107,
	b	.L3	@
.L16:
	movs	r4, #1	@ D.5107,
.L3:
	mov	r0, r4	@, D.5107
	pop	{r3, r4, r5, pc}	@
.L22:
	.align	2
.L21:
	.word	SetupPacket
	.word	USB_DeviceStatus
	.word	USB_Configuration
	.word	USB_EndPointMask
	.word	USB_EndPointHalt
	.word	USB_EndPointStall
	.size	USB_ReqSetClrFeature, .-USB_ReqSetClrFeature
	.section	.text.USB_ResetCore,"ax",%progbits
	.align	1
	.global	USB_ResetCore
	.thumb
	.thumb_func
	.ascii	"USB_ResetCore\000"
	.align	2
	.word	4278190096
	.type	USB_ResetCore, %function
USB_ResetCore:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24	@ tmp134,
	movs	r3, #0	@ tmp136,
	ldr	r1, .L24+4	@ tmp137,
	strh	r3, [r2, #0]	@ movhi	@ tmp136, USB_DeviceStatus
	ldr	r0, .L24+8	@ tmp140,
	ldr	r2, .L24+12	@ tmp143,
	strb	r3, [r1, #0]	@ tmp135, USB_DeviceAddress
	mov	r1, #65537	@ tmp144,
	strb	r3, [r0, #0]	@ tmp136, USB_Configuration
	str	r1, [r2, #0]	@ tmp144, USB_EndPointMask
	ldr	r0, .L24+16	@ tmp145,
	ldr	r2, .L24+20	@ tmp147,
	str	r3, [r0, #0]	@ tmp136, USB_EndPointHalt
	str	r3, [r2, #0]	@ tmp136, USB_EndPointStall
	bx	lr	@
.L25:
	.align	2
.L24:
	.word	USB_DeviceStatus
	.word	USB_DeviceAddress
	.word	USB_Configuration
	.word	USB_EndPointMask
	.word	USB_EndPointHalt
	.word	USB_EndPointStall
	.size	USB_ResetCore, .-USB_ResetCore
	.section	.text.USB_SetupStage,"ax",%progbits
	.align	1
	.global	USB_SetupStage
	.thumb
	.thumb_func
	.ascii	"USB_SetupStage\000"
	.align	2
	.word	4278190096
	.type	USB_SetupStage, %function
USB_SetupStage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L27	@,
	movs	r0, #0	@,
	b	USB_ReadEP	@
.L28:
	.align	2
.L27:
	.word	SetupPacket
	.size	USB_SetupStage, .-USB_SetupStage
	.section	.text.USB_DataInStage,"ax",%progbits
	.align	1
	.global	USB_DataInStage
	.thumb
	.thumb_func
	.ascii	"USB_DataInStage\000"
	.align	2
	.word	4278190096
	.type	USB_DataInStage, %function
USB_DataInStage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L32	@ tmp143,
	movs	r0, #128	@,
	ldrh	r2, [r4, #4]	@ D.5322, EP0Data.Count
	ldr	r1, [r4, #0]	@, EP0Data.pData
	cmp	r2, #64	@ D.5322,
	it	cs
	movcs	r2, #64	@,
	bl	USB_WriteEP	@
	ldr	r2, [r4, #0]	@ EP0Data.pData, EP0Data.pData
	ldrh	r3, [r4, #4]	@, EP0Data.Count
	adds	r1, r2, r0	@ tmp148, EP0Data.pData, cnt
	subs	r0, r3, r0	@ tmp153, EP0Data.Count, cnt
	str	r1, [r4, #0]	@ tmp148, EP0Data.pData
	strh	r0, [r4, #4]	@ movhi	@ tmp153, EP0Data.Count
	pop	{r4, pc}	@
.L33:
	.align	2
.L32:
	.word	EP0Data
	.size	USB_DataInStage, .-USB_DataInStage
	.section	.text.USB_DataOutStage,"ax",%progbits
	.align	1
	.global	USB_DataOutStage
	.thumb
	.thumb_func
	.ascii	"USB_DataOutStage\000"
	.align	2
	.word	4278190100
	.type	USB_DataOutStage, %function
USB_DataOutStage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L35	@ tmp141,
	movs	r0, #0	@,
	ldr	r1, [r4, #0]	@, EP0Data.pData
	bl	USB_ReadEP	@
	ldr	r2, [r4, #0]	@ EP0Data.pData, EP0Data.pData
	ldrh	r3, [r4, #4]	@, EP0Data.Count
	adds	r1, r2, r0	@ tmp145, EP0Data.pData, cnt
	subs	r0, r3, r0	@ tmp150, EP0Data.Count, cnt
	str	r1, [r4, #0]	@ tmp145, EP0Data.pData
	strh	r0, [r4, #4]	@ movhi	@ tmp150, EP0Data.Count
	pop	{r4, pc}	@
.L36:
	.align	2
.L35:
	.word	EP0Data
	.size	USB_DataOutStage, .-USB_DataOutStage
	.section	.text.USB_StatusInStage,"ax",%progbits
	.align	1
	.global	USB_StatusInStage
	.thumb
	.thumb_func
	.ascii	"USB_StatusInStage\000"
	.align	2
	.word	4278190100
	.type	USB_StatusInStage, %function
USB_StatusInStage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #0	@,
	movs	r0, #128	@,
	mov	r2, r1	@,
	b	USB_WriteEP	@
	.size	USB_StatusInStage, .-USB_StatusInStage
	.section	.text.USB_StatusOutStage,"ax",%progbits
	.align	1
	.global	USB_StatusOutStage
	.thumb
	.thumb_func
	.ascii	"USB_StatusOutStage\000"
	.align	2
	.word	4278190100
	.type	USB_StatusOutStage, %function
USB_StatusOutStage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L39	@,
	movs	r0, #0	@,
	b	USB_ReadEP	@
.L40:
	.align	2
.L39:
	.word	EP0Buf
	.size	USB_StatusOutStage, .-USB_StatusOutStage
	.section	.text.USB_EndPoint0,"ax",%progbits
	.align	1
	.global	USB_EndPoint0
	.thumb
	.thumb_func
	.ascii	"USB_EndPoint0\000"
	.align	2
	.word	4278190096
	.type	USB_EndPoint0, %function
USB_EndPoint0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}	@
	subs	r0, r0, #1	@ tmp371, event,
	cmp	r0, #6	@ tmp371,
	bhi	.L41	@
	tbh	[pc, r0, lsl #1]	@ tmp371
.L48:
	.2byte	(.L43-.L48)/2
	.2byte	(.L44-.L48)/2
	.2byte	(.L45-.L48)/2
	.2byte	(.L41-.L48)/2
	.2byte	(.L41-.L48)/2
	.2byte	(.L46-.L48)/2
	.2byte	(.L47-.L48)/2
.L43:
	ldr	r7, .L171	@ tmp372,
	bl	USB_SetupStage	@
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ tmp375,
	ldr	r6, .L171+4	@ tmp381,
	lsrs	r0, r1, #7	@, tmp375,
	bl	USB_DirCtrlEP	@
	ldrh	r2, [r7, #6]	@ unaligned	@ tmp380,
	mov	r4, r7	@ tmp730, tmp372
	strh	r2, [r6, #4]	@ movhi	@ D.4982, EP0Data.Count
	ldrb	r3, [r7, #0]	@ zero_extendqisi2	@ tmp386,
	mov	r5, r6	@ tmp731, tmp381
	ubfx	r1, r3, #5, #2	@ tmp388, tmp386,,
	cbz	r1, .L50	@ tmp388,
	cmp	r1, #1	@ tmp388,
	bne	.L49	@,
	b	.L166	@
.L50:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ SetupPacket.bRequest, SetupPacket.bRequest
	cmp	r3, #11	@ SetupPacket.bRequest,
	bhi	.L49	@
	tbh	[pc, r3, lsl #1]	@ SetupPacket.bRequest
.L62:
	.2byte	(.L52-.L62)/2
	.2byte	(.L53-.L62)/2
	.2byte	(.L49-.L62)/2
	.2byte	(.L54-.L62)/2
	.2byte	(.L49-.L62)/2
	.2byte	(.L55-.L62)/2
	.2byte	(.L56-.L62)/2
	.2byte	(.L57-.L62)/2
	.2byte	(.L58-.L62)/2
	.2byte	(.L59-.L62)/2
	.2byte	(.L60-.L62)/2
	.2byte	(.L61-.L62)/2
.L52:
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ tmp394,
	ldr	r2, .L171	@ tmp391,
	and	r3, r0, #31	@ tmp396, tmp394,
	cmp	r3, #1	@ tmp396,
	beq	.L64	@,
	cmp	r3, #2	@ tmp396,
	beq	.L65	@,
	cmp	r3, #0	@ tmp396
	bne	.L49	@
	ldr	r3, .L171+8	@ tmp398,
	b	.L161	@
.L64:
	ldr	r3, .L171+12	@ tmp399,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cmp	r1, #0	@ USB_Configuration
	beq	.L49	@
	ldr	r1, .L171+16	@ tmp403,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ USB_NumInterfaces, USB_NumInterfaces
	cmp	r2, r0	@ SetupPacket.wIndex.WB.L, USB_NumInterfaces
	bcs	.L49	@,
	ldr	r3, .L171+20	@ tmp406,
	movs	r2, #0	@ tmp409,
	strb	r2, [r3, #0]	@ tmp409,
	strb	r2, [r3, #1]	@ tmp409,
	b	.L161	@
.L65:
	ldrb	r3, [r2, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	lsls	r1, r3, #24	@, SetupPacket.wIndex.WB.L,
	and	r2, r3, #143	@ n, SetupPacket.wIndex.WB.L,
	bpl	.L67	@,
	and	ip, r3, #15	@ tmp420, SetupPacket.wIndex.WB.L,
	mov	r3, #65536	@ tmp421,
	lsl	r3, r3, ip	@ m, tmp421, tmp420
	b	.L68	@
.L67:
	movs	r0, #1	@ tmp422,
	lsl	r3, r0, r2	@ m, tmp422, n
.L68:
	ldr	r0, .L171+12	@ tmp423,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cbnz	r1, .L69	@ USB_Configuration,
	lsls	r2, r2, #28	@, n,
	bne	.L49	@,
.L69:
	ldr	r1, .L171+24	@ tmp427,
	ldr	r2, [r1, #0]	@ USB_EndPointMask, USB_EndPointMask
	tst	r3, r2	@ m, USB_EndPointMask
	beq	.L49	@,
	ldr	r1, .L171+28	@ tmp431,
	ldr	r0, .L171+20	@ tmp430,
	ldr	r2, [r1, #0]	@ USB_EndPointHalt, USB_EndPointHalt
	tst	r3, r2	@ m, USB_EndPointHalt
	ite	eq	@
	moveq	r3, #0	@, tmp435
	movne	r3, #1	@, tmp435
	strh	r3, [r0, #0]	@ unaligned	@ tmp435,
	str	r0, [r5, #0]	@ tmp430, EP0Data.pData
	b	.L82	@
.L53:
	movs	r0, #0	@,
	b	.L160	@
.L54:
	movs	r0, #1	@,
.L160:
	bl	USB_ReqSetClrFeature	@
	b	.L153	@
.L55:
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ tmp442,
	lsls	r3, r0, #27	@, tmp442,
	bne	.L49	@,
	ldr	r2, .L171	@ tmp439,
	ldr	r3, .L171+32	@ tmp445,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	orn	lr, ip, #127	@ tmp449, SetupPacket.wValue.WB.L,
	strb	lr, [r3, #0]	@ tmp449, USB_DeviceAddress
.L150:
	bl	USB_StatusInStage	@
	b	.L41	@
.L56:
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ tmp454,
	ldr	r3, .L171	@ tmp451,
	ands	r1, r1, #31	@ tmp456, tmp454,
	bne	.L49	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.H, SetupPacket.wValue.WB.H
	cmp	r0, #2	@ SetupPacket.wValue.WB.H,
	beq	.L73	@,
	cmp	r0, #3	@ SetupPacket.wValue.WB.H,
	beq	.L74	@,
	cmp	r0, #1	@ SetupPacket.wValue.WB.H,
	bne	.L49	@,
	b	.L167	@
.L74:
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ D.5419, SetupPacket.wValue.WB.L
	ldr	r3, .L171+36	@ pD,
	b	.L75	@
.L73:
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ D.5419, SetupPacket.wValue.WB.L
	ldr	r3, .L171+40	@ pD,
	b	.L76	@
.L167:
	ldr	r0, .L171+44	@ tmp462,
	movs	r3, #18	@ len,
	str	r0, [r6, #0]	@ tmp462, EP0Data.pData
	b	.L77	@
.L79:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_148].bLength, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_148].bLength
	cbz	r4, .L78	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_148].bLength,
	ldrh	r4, [r3, #2]	@ unaligned	@ D.5421,
	adds	r3, r3, r4	@ pD, pD, D.5421
.L78:
	adds	r1, r1, #1	@ n, n,
.L76:
	cmp	r1, r0	@ n, D.5419
	bne	.L79	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_367].bLength, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_367].bLength
	cmp	r1, #0	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD_367].bLength
	beq	.L49	@
	str	r3, [r5, #0]	@ pD, EP0Data.pData
	ldrh	r3, [r3, #2]	@ unaligned	@ len,
	b	.L77	@
.L81:
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ D.5417, MEM[(struct USB_STRING_DESCRIPTOR *)pD_160].bLength
	cbz	r0, .L80	@ D.5417,
	adds	r3, r3, r0	@ pD, pD, D.5417
.L80:
	adds	r1, r1, #1	@ n, n,
.L75:
	cmp	r1, r4	@ n, D.5419
	bne	.L81	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ D.5417, MEM[(struct USB_STRING_DESCRIPTOR *)pD_361].bLength
	cmp	r1, #0	@ D.5417
	beq	.L49	@
	str	r3, [r5, #0]	@ pD, EP0Data.pData
	mov	r3, r1	@ len, D.5417
.L77:
	cmp	r2, r3	@ D.4982, len
	bls	.L82	@,
	strh	r3, [r5, #4]	@ movhi	@ len, EP0Data.Count
	b	.L82	@
.L57:
	movs	r0, #0	@,
	bl	USB_SetStallEP	@
	movs	r3, #0	@,
	strh	r3, [r6, #4]	@ movhi	@, EP0Data.Count
	b	.L41	@
.L58:
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@ tmp479,
	lsls	r0, r2, #27	@, tmp479,
	bne	.L49	@,
	ldr	r3, .L171+12	@ tmp483,
	b	.L161	@
.L59:
	ldrb	r5, [r7, #0]	@ zero_extendqisi2	@ tmp487,
	ands	r5, r5, #31	@ tmp489, tmp487,
	bne	.L49	@,
	ldr	r0, .L171	@ tmp484,
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	cmp	r3, #0	@ SetupPacket.wValue.WB.L
	beq	.L86	@
	ldr	r1, .L171+40	@ tmp492,
	str	r1, [sp, #12]	@ tmp492, pD
	b	.L143	@
.L100:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ pD.22_247->bDescriptorType, pD.22_247->bDescriptorType
	cmp	r2, #4	@ pD.22_247->bDescriptorType,
	beq	.L90	@,
	cmp	r2, #5	@ pD.22_247->bDescriptorType,
	beq	.L91	@,
	cmp	r2, #2	@ pD.22_247->bDescriptorType,
	bne	.L88	@,
	ldrb	r0, [r3, #5]	@ zero_extendqisi2	@ D.5472, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_247].bConfigurationValue
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	cmp	r2, r0	@ SetupPacket.wValue.WB.L, D.5472
	bne	.L92	@,
	ldrb	r8, [r3, #4]	@ zero_extendqisi2	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_247].bNumInterfaces, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_247].bNumInterfaces
	ldr	r1, .L171+12	@ tmp496,
	ldr	r3, .L171+16	@ tmp498,
	ldr	r7, .L171+48	@ tmp501,
	movs	r6, #0	@ tmp502,
	strb	r6, [r7, #0]	@ tmp502, USB_AltSetting
	strb	r2, [r1, #0]	@ SetupPacket.wValue.WB.L, USB_Configuration
	strb	r8, [r3, #0]	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_247].bNumInterfaces, USB_NumInterfaces
	movs	r6, #1	@ n,
.L95:
	movs	r0, #1	@ tmp505,
	lsl	lr, r0, r6	@ tmp504, tmp505, n
	ldr	r7, .L171+24	@ tmp506,
	ldr	r2, [r7, #0]	@ USB_EndPointMask, USB_EndPointMask
	mov	r8, r7	@ tmp735, tmp506
	tst	lr, r2	@ tmp504, USB_EndPointMask
	beq	.L93	@,
	mov	r0, r6	@, n
	bl	USB_DisableEP	@
.L93:
	mov	ip, #65536	@ tmp510,
	lsl	r1, ip, r6	@ tmp509, tmp510, n
	ldr	r3, [r7, #0]	@ USB_EndPointMask, USB_EndPointMask
	tst	r1, r3	@ tmp509, USB_EndPointMask
	beq	.L94	@,
	orr	r0, r6, #128	@, n,
	bl	USB_DisableEP	@
.L94:
	adds	r6, r6, #1	@ n, n,
	cmp	r6, #16	@ n,
	bne	.L95	@,
	ldr	r1, .L171+28	@ tmp517,
	ldr	r2, .L171+52	@ tmp519,
	movs	r0, #0	@ tmp518,
	mov	r3, #65537	@ tmp516,
	str	r0, [r1, #0]	@ tmp518, USB_EndPointHalt
	str	r0, [r2, #0]	@ tmp518, USB_EndPointStall
	str	r3, [r8, #0]	@ tmp516, USB_EndPointMask
	movs	r0, #1	@,
	bl	USB_Configure	@
	ldr	r3, [sp, #12]	@ pD, pD
	ldr	r0, .L171+8	@ tmp736,
	ldrb	r1, [r3, #7]	@ zero_extendqisi2	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_213].bmAttributes, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_213].bmAttributes
	ldrh	r2, [r0, #0]	@, USB_DeviceStatus
	tst	r1, #64	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.22_213].bmAttributes,
	ite	ne
	orrne	r2, r2, #1	@ tmp527, USB_DeviceStatus,
	biceq	r2, r2, #1	@ tmp532, USB_DeviceStatus,
	strh	r2, [r0, #0]	@ movhi	@ tmp532, USB_DeviceStatus
	b	.L88	@
.L92:
	add	r0, sp, #12	@,,
	ldrh	r1, [r3, #2]	@ unaligned	@,
	b	.L146	@
.L90:
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ alt, MEM[(struct USB_INTERFACE_DESCRIPTOR *)pD.22_247].bAlternateSetting
	b	.L88	@
.L91:
	cmp	r5, #0	@ alt
	bne	.L88	@
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.22_247].bEndpointAddress, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.22_247].bEndpointAddress
	lsls	r1, r2, #24	@, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.22_247].bEndpointAddress,
	and	r6, r2, #143	@ n, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.22_247].bEndpointAddress,
	bpl	.L98	@,
	and	lr, r2, #15	@ tmp540, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.22_247].bEndpointAddress,
	mov	r2, #65536	@ tmp541,
	lsl	r2, r2, lr	@ m, tmp541, tmp540
	b	.L99	@
.L172:
	.align	2
.L171:
	.word	SetupPacket
	.word	EP0Data
	.word	USB_DeviceStatus
	.word	USB_Configuration
	.word	USB_NumInterfaces
	.word	EP0Buf
	.word	USB_EndPointMask
	.word	USB_EndPointHalt
	.word	USB_DeviceAddress
	.word	USB_StringDescriptor
	.word	USB_ConfigDescriptor
	.word	USB_DeviceDescriptor
	.word	USB_AltSetting
	.word	USB_EndPointStall
.L98:
	movs	r0, #1	@ tmp542,
	lsl	r2, r0, r6	@ m, tmp542, n
.L99:
	ldr	r1, .L173	@ tmp543,
	ldr	r0, [r1, #0]	@ USB_EndPointMask, USB_EndPointMask
	orrs	r2, r2, r0	@, tmp546, m, USB_EndPointMask
	str	r2, [r1, #0]	@ tmp546, USB_EndPointMask
	mov	r0, r3	@, pD.22
	bl	USB_ConfigEP	@
	mov	r0, r6	@, n
	bl	USB_EnableEP	@
	mov	r0, r6	@, n
	bl	USB_ResetEP	@
.L88:
	ldr	r3, [sp, #12]	@ pD, pD
	add	r0, sp, #12	@,,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@, pD.22_244->bLength
.L146:
	bl	UsbAddPtr	@
.L143:
	ldr	r3, [sp, #12]	@ pD.22, pD
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ pD.22_247->bLength, pD.22_247->bLength
	cmp	r1, #0	@ pD.22_247->bLength
	bne	.L100	@
	b	.L101	@
.L86:
	ldr	r5, .L173+4	@ tmp551,
	strb	r3, [r5, #0]	@ SetupPacket.wValue.WB.L, USB_Configuration
	movs	r5, #1	@ n,
.L104:
	movs	r6, #1	@ tmp555,
	lsl	r7, r6, r5	@ tmp554, tmp555, n
	ldr	r6, .L173	@ tmp556,
	ldr	r2, [r6, #0]	@ USB_EndPointMask, USB_EndPointMask
	tst	r7, r2	@ tmp554, USB_EndPointMask
	mov	r7, r6	@ tmp733, tmp556
	beq	.L102	@,
	mov	r0, r5	@, n
	bl	USB_DisableEP	@
.L102:
	mov	r1, #65536	@ tmp560,
	lsl	r0, r1, r5	@ tmp559, tmp560, n
	ldr	r3, [r6, #0]	@ USB_EndPointMask, USB_EndPointMask
	tst	r0, r3	@ tmp559, USB_EndPointMask
	beq	.L103	@,
	orr	r0, r5, #128	@, n,
	bl	USB_DisableEP	@
.L103:
	adds	r5, r5, #1	@ n, n,
	cmp	r5, #16	@ n,
	bne	.L104	@,
	mov	r0, #65537	@ tmp566,
	ldr	r3, .L173+8	@ tmp567,
	ldr	r2, .L173+12	@ tmp569,
	str	r0, [r7, #0]	@ tmp566, USB_EndPointMask
	movs	r0, #0	@ tmp568,
	str	r0, [r3, #0]	@ tmp568, USB_EndPointHalt
	str	r0, [r2, #0]	@ tmp568, USB_EndPointStall
	bl	USB_Configure	@
.L101:
	ldr	r3, .L173+4	@ tmp571,
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cmp	r1, r2	@ SetupPacket.wValue.WB.L, USB_Configuration
	bne	.L49	@,
	b	.L168	@
.L60:
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ tmp579,
	and	r0, r1, #31	@ tmp581, tmp579,
	cmp	r0, #1	@ tmp581,
	bne	.L49	@,
	ldr	r3, .L173+4	@ tmp582,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	cmp	r2, #0	@ USB_Configuration
	beq	.L49	@
	ldr	r2, .L173+16	@ tmp576,
	ldr	r1, .L173+20	@ tmp586,
	ldrb	r3, [r2, #4]	@ zero_extendqisi2	@ D.5489, SetupPacket.wIndex.WB.L
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ USB_NumInterfaces, USB_NumInterfaces
	cmp	r0, r3	@ USB_NumInterfaces, D.5489
	bls	.L49	@,
	ldr	r0, .L173+24	@ tmp589,
	adds	r3, r3, r0	@ tmp590, D.5489, tmp589
.L161:
	str	r3, [r6, #0]	@ tmp590, EP0Data.pData
	b	.L82	@
.L61:
	ldrb	lr, [r7, #0]	@ zero_extendqisi2	@ tmp594,
	and	ip, lr, #31	@ tmp596, tmp594,
	cmp	ip, #1	@ tmp596,
	bne	.L49	@,
	ldr	r3, .L173+4	@ tmp597,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	mov	sl, r3	@ tmp732, tmp597
	cmp	r1, #0	@ USB_Configuration
	beq	.L49	@
	ldr	r5, .L173+28	@ tmp600,
	movs	r6, #0	@ set,
	str	r5, [sp, #12]	@ tmp600, pD
	mov	r7, r6	@ msk, set
	mov	r9, r6	@ old, set
	mov	r5, r6	@ old, set
	mov	r8, r6	@ ifn, set
	b	.L144	@
.L117:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ pD.36_339->bDescriptorType, pD.36_339->bDescriptorType
	cmp	r3, #4	@ pD.36_339->bDescriptorType,
	beq	.L111	@,
	cmp	r3, #5	@ pD.36_339->bDescriptorType,
	beq	.L112	@,
	cmp	r3, #2	@ pD.36_339->bDescriptorType,
	bne	.L109	@,
	ldrb	r0, [sl, #0]	@ zero_extendqisi2	@ USB_Configuration, USB_Configuration
	ldrb	r2, [r1, #5]	@ zero_extendqisi2	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.36_339].bConfigurationValue, MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.36_339].bConfigurationValue
	cmp	r2, r0	@ MEM[(struct USB_CONFIGURATION_DESCRIPTOR *)pD.36_339].bConfigurationValue, USB_Configuration
	beq	.L109	@,
	add	r0, sp, #12	@,,
	ldrh	r1, [r1, #2]	@ unaligned	@,
	b	.L147	@
.L111:
	ldrb	r8, [r1, #2]	@ zero_extendqisi2	@ ifn, MEM[(struct USB_INTERFACE_DESCRIPTOR *)pD.36_339].bInterfaceNumber
	ldrb	r7, [r4, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	ldrb	r5, [r1, #3]	@ zero_extendqisi2	@ old, MEM[(struct USB_INTERFACE_DESCRIPTOR *)pD.36_339].bAlternateSetting
	cmp	r8, r7	@ ifn, SetupPacket.wIndex.WB.L
	bne	.L139	@,
	ldr	r3, .L173+16	@ tmp610,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	cmp	r5, r1	@ old, SetupPacket.wValue.WB.L
	bne	.L139	@,
	ldr	r6, .L173+24	@ tmp614,
	ldrb	r9, [r6, r8]	@ zero_extendqisi2	@ old, USB_AltSetting
	strb	r5, [r6, r8]	@ old, USB_AltSetting
	movs	r6, #1	@ set,
	b	.L139	@
.L112:
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	cmp	r8, r2	@ ifn, SetupPacket.wIndex.WB.L
	bne	.L109	@,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.36_339].bEndpointAddress, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.36_339].bEndpointAddress
	lsls	r0, r3, #24	@, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.36_339].bEndpointAddress,
	and	r2, r3, #143	@ n, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.36_339].bEndpointAddress,
	bpl	.L114	@,
	and	ip, r3, #15	@ tmp621, MEM[(struct USB_ENDPOINT_DESCRIPTOR *)pD.36_339].bEndpointAddress,
	mov	lr, #65536	@ tmp622,
	lsl	r3, lr, ip	@ m, tmp622, tmp621
	b	.L115	@
.L114:
	movs	r0, #1	@ tmp623,
	lsl	r3, r0, r2	@ m, tmp623, n
.L115:
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ SetupPacket.wValue.WB.L, SetupPacket.wValue.WB.L
	cmp	r5, ip	@ old, SetupPacket.wValue.WB.L
	bne	.L116	@,
	ldr	r0, .L173	@ tmp626,
	ldr	ip, [r0, #0]	@ USB_EndPointMask, USB_EndPointMask
	orr	lr, r3, ip	@ tmp629, m, USB_EndPointMask
	str	lr, [r0, #0]	@ tmp629, USB_EndPointMask
	ldr	r0, .L173+8	@ tmp630,
	ldr	ip, [r0, #0]	@ USB_EndPointHalt, USB_EndPointHalt
	bic	lr, ip, r3	@ tmp634, USB_EndPointHalt, m
	str	lr, [r0, #0]	@ tmp634, USB_EndPointHalt
	mov	r0, r1	@, pD.36
	str	r3, [sp, #0]	@,
	str	r2, [sp, #4]	@,
	bl	USB_ConfigEP	@
	ldr	r2, [sp, #4]	@,
	mov	r0, r2	@, n
	bl	USB_EnableEP	@
	ldr	r3, [sp, #4]	@,
	mov	r0, r3	@, n
	bl	USB_ResetEP	@
	ldr	r1, [sp, #0]	@,
	orrs	r7, r7, r1	@, msk, msk, m
	b	.L109	@
.L116:
	cmp	r5, r9	@ old, old
	bne	.L109	@,
	tst	r3, r7	@ m, msk
	bne	.L140	@,
	ldr	r1, .L173	@ tmp636,
	mvns	r3, r3	@ D.5509, m
	ldr	r0, [r1, #0]	@ USB_EndPointMask, USB_EndPointMask
	ands	r0, r0, r3	@, tmp639, USB_EndPointMask, D.5509
	str	r0, [r1, #0]	@ tmp639, USB_EndPointMask
	ldr	r1, .L173+8	@ tmp640,
	ldr	r0, [r1, #0]	@ USB_EndPointHalt, USB_EndPointHalt
	ands	r3, r3, r0	@, tmp643, D.5509, USB_EndPointHalt
	str	r3, [r1, #0]	@ tmp643, USB_EndPointHalt
	mov	r0, r2	@, n
	bl	USB_DisableEP	@
	b	.L140	@
.L139:
	movs	r7, #0	@ msk,
	b	.L109	@
.L140:
	mov	r9, r5	@ old, old
.L109:
	ldr	r2, [sp, #12]	@ pD, pD
	add	r0, sp, #12	@,,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@, pD.36_336->bLength
.L147:
	bl	UsbAddPtr	@
.L144:
	ldr	r1, [sp, #12]	@ pD.36, pD
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ pD.36_339->bLength, pD.36_339->bLength
	cmp	r3, #0	@ pD.36_339->bLength
	bne	.L117	@
	cmp	r6, #0	@ set
	bne	.L150	@
	b	.L49	@
.L166:
	and	r1, r3, #31	@ tmp653, tmp386,
	cmp	r1, #1	@ tmp653,
	bne	.L49	@,
	ldrb	r0, [r7, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	cmp	r0, #1	@ SetupPacket.wIndex.WB.L,
	bhi	.L49	@,
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ SetupPacket.bRequest, SetupPacket.bRequest
	cmp	r3, #4	@ SetupPacket.bRequest,
	beq	.L123	@,
	bhi	.L128	@,
	cmp	r3, #1	@ SetupPacket.bRequest,
	beq	.L120	@,
	bcc	.L124	@,
	cmp	r3, #2	@ SetupPacket.bRequest,
	beq	.L124	@,
	cmp	r3, #3	@ SetupPacket.bRequest,
	bne	.L49	@,
	b	.L169	@
.L128:
	cmp	r3, #33	@ SetupPacket.bRequest,
	beq	.L125	@,
	bhi	.L129	@,
	cmp	r3, #32	@ SetupPacket.bRequest,
	bne	.L49	@,
	b	.L124	@
.L129:
	cmp	r3, #34	@ SetupPacket.bRequest,
	beq	.L126	@,
	cmp	r3, #35	@ SetupPacket.bRequest,
	bne	.L49	@,
	b	.L170	@
.L120:
	bl	CDC_GetEncapsulatedResponse	@
	b	.L164	@
.L169:
	ldrh	r0, [r7, #2]	@ unaligned	@,
	bl	CDC_GetCommFeature	@
	b	.L164	@
.L123:
	ldrh	r0, [r7, #2]	@ unaligned	@,
	bl	CDC_ClearCommFeature	@
	b	.L153	@
.L124:
	ldr	r2, .L173+32	@ tmp675,
	str	r2, [r6, #0]	@ tmp675, EP0Data.pData
	b	.L41	@
.L125:
	bl	CDC_GetLineCoding	@
.L164:
	cbz	r0, .L49	@,
	ldr	r3, .L173+32	@ tmp677,
	b	.L161	@
.L126:
	ldrh	r0, [r7, #2]	@ unaligned	@,
	bl	CDC_SetControlLineState	@
	b	.L153	@
.L170:
	ldrh	r0, [r7, #2]	@ unaligned	@,
	bl	CDC_SendBreak	@
	b	.L153	@
.L49:
	movs	r0, #128	@,
	bl	USB_SetStallEP	@
	ldr	r3, .L173+36	@ tmp686,
	movs	r1, #0	@,
	strh	r1, [r3, #4]	@ movhi	@, EP0Data.Count
	b	.L41	@
.L174:
	.align	2
.L173:
	.word	USB_EndPointMask
	.word	USB_Configuration
	.word	USB_EndPointHalt
	.word	USB_EndPointStall
	.word	SetupPacket
	.word	USB_NumInterfaces
	.word	USB_AltSetting
	.word	USB_ConfigDescriptor
	.word	EP0Buf
	.word	EP0Data
.L44:
	ldr	r4, .L175	@ tmp689,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ tmp691,
	and	r2, r1, #128	@ tmp693, tmp691,
	uxtb	r0, r2	@ tmp694, tmp693
	cmp	r0, #0	@ tmp694
	bne	.L130	@
	ldr	r5, .L175+4	@ tmp695,
	ldrh	r3, [r5, #4]	@ EP0Data.Count, EP0Data.Count
	cmp	r3, #0	@ EP0Data.Count
	beq	.L41	@
	bl	USB_DataOutStage	@
	ldrh	r0, [r5, #4]	@ EP0Data.Count, EP0Data.Count
	cmp	r0, #0	@ EP0Data.Count
	bne	.L41	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ tmp702,
	ubfx	lr, r3, #5, #2	@ tmp704, tmp702,,
	cmp	lr, #1	@ tmp704,
	bne	.L49	@,
	and	r2, r3, #31	@ tmp710, tmp702,
	cmp	r2, #1	@ tmp710,
	bne	.L49	@,
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ SetupPacket.wIndex.WB.L, SetupPacket.wIndex.WB.L
	cmp	r1, #1	@ SetupPacket.wIndex.WB.L,
	bhi	.L49	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ SetupPacket.bRequest, SetupPacket.bRequest
	cmp	r3, #2	@ SetupPacket.bRequest,
	beq	.L134	@,
	cmp	r3, #32	@ SetupPacket.bRequest,
	beq	.L135	@,
	cmp	r3, #0	@ SetupPacket.bRequest
	bne	.L49	@
	bl	CDC_SendEncapsulatedCommand	@
	b	.L153	@
.L134:
	ldrh	r0, [r4, #2]	@ unaligned	@,
	bl	CDC_SetCommFeature	@
	b	.L153	@
.L135:
	bl	CDC_SetLineCoding	@
.L153:
	cmp	r0, #0	@
	beq	.L49	@
	b	.L150	@
.L130:
	bl	USB_StatusOutStage	@
	b	.L41	@
.L45:
	ldr	r1, .L175	@ tmp719,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ tmp721,
	and	r0, r2, #128	@ tmp723, tmp721,
	uxtb	r3, r0	@ tmp724, tmp723
	cbnz	r3, .L82	@ tmp724,
.L136:
	ldr	r3, .L175+8	@ tmp725,
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ USB_DeviceAddress.0, USB_DeviceAddress
	lsls	r2, r0, #24	@, USB_DeviceAddress.0,
	bpl	.L41	@,
	and	r0, r0, #127	@ USB_DeviceAddress.2, USB_DeviceAddress.0,
	strb	r0, [r3, #0]	@ USB_DeviceAddress.2, USB_DeviceAddress
	bl	USB_SetAddress	@
	b	.L41	@
.L46:
	movs	r0, #0	@,
	b	.L151	@
.L47:
	movs	r0, #128	@,
.L151:
	bl	USB_ClrStallEP	@
	b	.L41	@
.L82:
	bl	USB_DataInStage	@
	b	.L41	@
.L168:
	bl	USB_StatusInStage	@
	bl	USB_Configure_Event	@
.L42:
.L137:
.L41:
	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
.L176:
	.align	2
.L175:
	.word	SetupPacket
	.word	EP0Data
	.word	USB_DeviceAddress
	.size	USB_EndPoint0, .-USB_EndPoint0
	.comm	SetupPacket,8,1
	.comm	EP0Data,8,4
	.comm	EP0Buf,64,1
	.comm	USB_AltSetting,1,1
	.comm	USB_NumInterfaces,1,1
	.comm	USB_EndPointStall,4,4
	.comm	USB_EndPointHalt,4,4
	.comm	USB_EndPointMask,4,4
	.comm	USB_Configuration,1,1
	.comm	USB_DeviceAddress,1,1
	.comm	USB_DeviceStatus,2,2
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
