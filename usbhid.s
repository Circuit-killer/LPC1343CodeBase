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
	.file	"usbhid.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed usbhid.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip usbhid.o -Os -Wall
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

	.section	.text.usbHIDSetOutReport,"ax",%progbits
	.align	1
	.global	usbHIDSetOutReport
	.thumb
	.thumb_func
	.ascii	"usbHIDSetOutReport\000"
	.align	2
	.word	4278190100
	.type	usbHIDSetOutReport, %function
usbHIDSetOutReport:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ *dst_1(D), *dst_1(D)
	movw	r1, #4095	@ tmp143,
	and	r0, ip, #1	@ tmp141, *dst_1(D),
	ldr	r3, .L4	@ tmp142,
	cmp	r0, #0	@ tmp141,
	ite	eq	@
	moveq	r2, r1	@, cstore.9, tmp143
	movne	r2, #0	@, cstore.9,
	str	r2, [r3, #0]	@ cstore.9, MEM[(volatile long unsigned int *)1342312448B]
	bx	lr	@
.L5:
	.align	2
.L4:
	.word	1342312448
	.size	usbHIDSetOutReport, .-usbHIDSetOutReport
	.section	.text.usbHIDGetInReport,"ax",%progbits
	.align	1
	.global	usbHIDGetInReport
	.thumb
	.thumb_func
	.ascii	"usbHIDGetInReport\000"
	.align	2
	.word	4278190100
	.type	usbHIDGetInReport, %function
usbHIDGetInReport:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r2, .L7	@ tmp169,
	mov	r4, r0	@ src, src
	ldr	r0, .L7+4	@ tmp171,
	ldr	r1, [r2, #0]	@ D.5010, MEM[(volatile long unsigned int *)1342275584B]
	ldr	r3, [r0, #0]	@ D.5013, MEM[(volatile long unsigned int *)1342259196B]
	ldr	r2, .L7+8	@ tmp173,
	ldr	r0, .L7+12	@ tmp175,
	sub	sp, sp, #32	@,,
	strh	r1, [sp, #4]	@ movhi	@ D.5010, out.gpio1Dir
	strh	r3, [sp, #6]	@ movhi	@ D.5013, out.gpio1Data
	ldr	r1, [r2, #0]	@ D.5016, MEM[(volatile long unsigned int *)1342341120B]
	ldr	r2, .L7+16	@ tmp177,
	ldr	r3, [r0, #0]	@ D.5019, MEM[(volatile long unsigned int *)1342324732B]
	ldr	r0, .L7+20	@ tmp179,
	strh	r1, [sp, #8]	@ movhi	@ D.5016, out.gpio2Dir
	strh	r3, [sp, #10]	@ movhi	@ D.5019, out.gpio2Data
	ldr	r1, [r2, #0]	@ D.5022, MEM[(volatile long unsigned int *)1342406656B]
	ldr	r3, [r0, #0]	@ D.5025, MEM[(volatile long unsigned int *)1342390268B]
	movs	r0, #0	@,
	strh	r3, [sp, #14]	@ movhi	@ D.5025, out.gpio3Data
	strh	r1, [sp, #12]	@ movhi	@ D.5022, out.gpio3Dir
	bl	adcRead	@
	strh	r0, [sp, #16]	@ movhi	@, out.adc0
	movs	r0, #1	@,
	bl	adcRead	@
	strh	r0, [sp, #18]	@ movhi	@, out.adc1
	movs	r0, #2	@,
	bl	adcRead	@
	strh	r0, [sp, #20]	@ movhi	@, out.adc2
	movs	r0, #3	@,
	bl	adcRead	@
	strh	r0, [sp, #22]	@ movhi	@, out.adc3
	bl	systickGetTicks	@
	str	r0, [sp, #24]	@, out.systicks
	bl	systickGetRollovers	@
	add	r1, sp, #4	@,,
	str	r0, [sp, #28]	@, out.rollovers
	movs	r2, #2	@,
	mov	r0, r4	@, src
	bl	memcpy	@
	adds	r0, r4, #2	@, src,
	add	r1, sp, #6	@,,
	movs	r2, #2	@,
	bl	memcpy	@
	adds	r0, r4, #4	@, src,
	add	r1, sp, #8	@,,
	movs	r2, #2	@,
	bl	memcpy	@
	adds	r0, r4, #6	@, src,
	add	r1, sp, #10	@,,
	movs	r2, #2	@,
	bl	memcpy	@
	add	r1, sp, #12	@,,
	movs	r2, #2	@,
	add	r0, r4, #8	@, src,
	bl	memcpy	@
	add	r1, sp, #14	@,,
	movs	r2, #2	@,
	add	r0, r4, #10	@, src,
	bl	memcpy	@
	add	r1, sp, #16	@,,
	movs	r2, #2	@,
	add	r0, r4, #12	@, src,
	bl	memcpy	@
	add	r1, sp, #18	@,,
	movs	r2, #2	@,
	add	r0, r4, #14	@, src,
	bl	memcpy	@
	add	r1, sp, #20	@,,
	movs	r2, #2	@,
	add	r0, r4, #16	@, src,
	bl	memcpy	@
	add	r1, sp, #22	@,,
	add	r0, r4, #18	@, src,
	movs	r2, #2	@,
	bl	memcpy	@
	add	r1, sp, #24	@,,
	movs	r2, #4	@,
	add	r0, r4, #20	@, src,
	bl	memcpy	@
	add	r0, r4, #24	@, src,
	add	r1, sp, #28	@,,
	movs	r2, #4	@,
	bl	memcpy	@
	add	sp, sp, #32	@,,
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	1342275584
	.word	1342259196
	.word	1342341120
	.word	1342324732
	.word	1342406656
	.word	1342390268
	.size	usbHIDGetInReport, .-usbHIDGetInReport
	.section	.text.usbHIDInit,"ax",%progbits
	.align	1
	.global	usbHIDInit
	.thumb
	.thumb_func
	.ascii	"usbHIDInit\000"
	.align	2
	.word	4278190092
	.type	usbHIDInit, %function
usbHIDInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	ldr	r4, .L16	@ tmp169,
	ldr	r1, [r4, #0]	@ D.4950, MEM[(volatile long unsigned int *)1074037304B]
	bic	r3, r1, #1024	@ D.4951, D.4950,
	str	r3, [r4, #0]	@ D.4951, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r2, [r4, #0]	@ D.4952, MEM[(volatile long unsigned int *)1074037304B]
	ldr	r3, .L16+4	@ tmp173,
	bic	r0, r2, #256	@ D.4953, D.4952,
	movs	r1, #0	@ tmp178,
	movs	r2, #1	@ tmp174,
	str	r0, [r4, #0]	@ D.4953, MEM[(volatile long unsigned int *)1074037304B]
	str	r2, [r3, #0]	@ tmp174, MEM[(volatile long unsigned int *)1074036808B]
	str	r2, [r3, #4]	@ tmp174, MEM[(volatile long unsigned int *)1074036812B]
	str	r1, [r3, #4]	@ tmp178, MEM[(volatile long unsigned int *)1074036812B]
	str	r2, [r3, #4]	@ tmp174, MEM[(volatile long unsigned int *)1074036812B]
.L10:
	ldr	r4, .L16+8	@ tmp181,
	ldr	r0, [r4, #0]	@ D.4956, MEM[(volatile long unsigned int *)1074036812B]
	lsls	r2, r0, #31	@, D.4956,
	bpl	.L10	@,
	ldr	r3, .L16+12	@ tmp183,
	movs	r2, #3	@ tmp184,
	str	r2, [r3, #0]	@ tmp184, MEM[(volatile long unsigned int *)1074036752B]
.L11:
	ldr	r0, .L16+16	@ tmp185,
	ldr	r1, [r0, #0]	@ D.4960, MEM[(volatile long unsigned int *)1074036756B]
	lsls	r3, r1, #31	@, D.4960,
	bpl	.L11	@,
	ldr	r1, .L16+20	@ tmp187,
	movs	r4, #0	@ tmp188,
	str	r4, [r1, #0]	@ tmp188, MEM[(volatile long unsigned int *)1074036928B]
	ldr	r1, .L16+24	@ tmp189,
	ldr	r0, [r1, #0]	@ D.4964, MEM[(volatile long unsigned int *)1074020368B]
	bic	r3, r0, #7	@ D.4965, D.4964,
	str	r3, [r1, #0]	@ D.4965, MEM[(volatile long unsigned int *)1074020368B]
	ldr	r2, [r1, #0]	@ D.4966, MEM[(volatile long unsigned int *)1074020368B]
	orr	r0, r2, #1	@ D.4967, D.4966,
	str	r0, [r1, #0]	@ D.4967, MEM[(volatile long unsigned int *)1074020368B]
	ldr	r0, .L16+28	@ tmp193,
	ldr	r3, [r0, #0]	@ D.4969, MEM[(volatile long unsigned int *)1074020396B]
	bic	r1, r3, #7	@ D.4970, D.4969,
	str	r1, [r0, #0]	@ D.4970, MEM[(volatile long unsigned int *)1074020396B]
	ldr	r2, [r0, #0]	@ D.4971, MEM[(volatile long unsigned int *)1074020396B]
	orr	r3, r2, #1	@ D.4972, D.4971,
	str	r3, [r0, #0]	@ D.4972, MEM[(volatile long unsigned int *)1074020396B]
	ldr	r3, .L16+32	@ tmp197,
	ldr	r1, [r3, #0]	@ D.4974, MEM[(volatile long unsigned int *)1074020428B]
	bic	r2, r1, #7	@ D.4975, D.4974,
	str	r2, [r3, #0]	@ D.4975, MEM[(volatile long unsigned int *)1074020428B]
	ldr	r1, [r3, #0]	@ D.4976, MEM[(volatile long unsigned int *)1074020428B]
	orr	r2, r1, #1	@ D.4977, D.4976,
	str	r2, [r3, #0]	@ D.4977, MEM[(volatile long unsigned int *)1074020428B]
	mov	r1, r4	@, tmp188
	bl	gpioSetPullup	@
	ldr	r3, .L16+36	@ tmp201,
	movw	r0, 7504	@ movhi	@,
	strh	r0, [r3, #0]	@ movhi	@, HidDevInfo.idVendor
	movs	r0, #28	@ tmp213,
	movw	r1, 24588	@ movhi	@,
	strb	r0, [r3, #12]	@ tmp213, HidDevInfo.InReportCount
	ldr	r0, .L16+40	@ tmp222,
	strh	r1, [r3, #2]	@ movhi	@, HidDevInfo.idProduct
	ldr	r2, .L16+44	@ tmp211,
	movs	r1, #1	@ tmp216,
	strb	r1, [r3, #13]	@ tmp216, HidDevInfo.OutReportCount
	str	r0, [r3, #16]	@ tmp222, HidDevInfo.InReport
	ldr	r1, .L16+48	@ tmp224,
	ldr	r0, .L16+52	@ tmp225,
	str	r2, [r3, #8]	@ tmp211, HidDevInfo.StrDescPtr
	mov	ip, #256	@ movhi	@,
	movs	r2, #32	@ tmp219,
	str	r3, [r0, #4]	@ tmp201, DeviceInfo.DevDetailPtr
	strb	r2, [r3, #14]	@ tmp219, HidDevInfo.SampleInterval
	str	r1, [r3, #20]	@ tmp224, HidDevInfo.OutReport
	strh	ip, [r3, #4]	@ movhi	@, HidDevInfo.bcdDevice
	ldr	r3, .L16+56	@ tmp230,
	movs	r2, #3	@,
	ldr	r1, [r3, #0]	@ D.4981, MEM[(volatile long unsigned int *)1074036864B]
	strh	r2, [r0, #0]	@ movhi	@, DeviceInfo.DevType
	orr	r2, r1, #82944	@ D.4982, D.4981,
	str	r2, [r3, #0]	@ D.4982, MEM[(volatile long unsigned int *)1074036864B]
	str	r4, [sp, #4]	@ tmp188, n
	b	.L12	@
.L13:
@ 205 "core/usbhid-rom/usbhid.c" 1
	nop
@ 0 "" 2
	.thumb
	ldr	r2, [sp, #4]	@ n.2, n
	adds	r4, r2, #1	@ n.3, n.2,
	str	r4, [sp, #4]	@ n.3, n
.L12:
	ldr	r3, [sp, #4]	@ n.4, n
	cmp	r3, #74	@ n.4,
	ble	.L13	@,
	ldr	r4, .L16+60	@ tmp233,
	ldr	r3, [r4, #0]	@ rom, rom
	ldr	r2, [r3, #0]	@ *rom.5_54, *rom.5_54
	ldr	r0, [r2, #0]	@ D.4987_55->pUSBD, D.4987_55->pUSBD
	ldr	r1, [r0, #8]	@ D.4988_56->init, D.4988_56->init
	ldr	r0, .L16+52	@,
	blx	r1	@ D.4988_56->init
	ldr	r3, [r4, #0]	@ rom, rom
	ldr	r2, [r3, #0]	@ *rom.5_58, *rom.5_58
	ldr	r0, [r2, #0]	@ D.4987_59->pUSBD, D.4987_59->pUSBD
	ldr	r1, [r0, #12]	@ D.4988_60->connect, D.4988_60->connect
	movs	r0, #1	@,
	blx	r1	@ D.4988_60->connect
	pop	{r2, r3, r4, pc}
.L17:
	.align	2
.L16:
	.word	1074037304
	.word	1074036808
	.word	1074036812
	.word	1074036752
	.word	1074036756
	.word	1074036928
	.word	1074020368
	.word	1074020396
	.word	1074020428
	.word	HidDevInfo
	.word	usbHIDGetInReport
	.word	USB_HIDStringDescriptor
	.word	usbHIDSetOutReport
	.word	DeviceInfo
	.word	1074036864
	.word	.LANCHOR0
	.size	usbHIDInit, .-usbHIDInit
	.global	rom
	.comm	HidDevInfo,24,4
	.comm	DeviceInfo,8,4
	.section	.data.rom,"aw",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rom, %object
	.size	rom, 4
rom:
	.word	536813560
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
