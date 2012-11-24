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
	.file	"tea5767.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed tea5767.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip tea5767.o -Os -Wall
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

	.section	.text.tea5767SendData,"ax",%progbits
	.align	1
	.global	tea5767SendData
	.thumb
	.thumb_func
	.ascii	"tea5767SendData\000"
	.align	2
	.word	4278190096
	.type	tea5767SendData, %function
tea5767SendData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	movs	r2, #0	@ i,
.L2:
	ldr	r3, .L4	@ tmp143,
	movs	r1, #0	@ tmp144,
	strb	r1, [r3, r2]	@ tmp144, I2CMasterBuffer
	adds	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	bne	.L2	@,
	ldr	r2, .L4+4	@ tmp146,
	movs	r4, #6	@ tmp147,
	str	r4, [r2, #0]	@ tmp147, I2CWriteLength
	ldr	r2, .L4+8	@ tmp148,
	str	r1, [r2, #0]	@ tmp144, I2CReadLength
	movs	r2, #192	@ tmp151,
	strb	r2, [r3, #0]	@ tmp151, I2CMasterBuffer
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ D.4646, *bytes_4(D)
	strb	r1, [r3, #1]	@ D.4646, I2CMasterBuffer
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.4647, MEM[(uint8_t *)bytes_4(D) + 1B]
	strb	r2, [r3, #2]	@ D.4647, I2CMasterBuffer
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ D.4648, MEM[(uint8_t *)bytes_4(D) + 2B]
	strb	ip, [r3, #3]	@ D.4648, I2CMasterBuffer
	ldrb	r1, [r0, #3]	@ zero_extendqisi2	@ D.4649, MEM[(uint8_t *)bytes_4(D) + 3B]
	strb	r1, [r3, #4]	@ D.4649, I2CMasterBuffer
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ D.4650, MEM[(uint8_t *)bytes_4(D) + 4B]
	strb	r2, [r3, #5]	@ D.4650, I2CMasterBuffer
	pop	{r4, lr}	@
	b	i2cEngine	@
.L5:
	.align	2
.L4:
	.word	I2CMasterBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	tea5767SendData, .-tea5767SendData
	.section	.text.tea5767ReadData,"ax",%progbits
	.align	1
	.global	tea5767ReadData
	.thumb
	.thumb_func
	.ascii	"tea5767ReadData\000"
	.align	2
	.word	4278190096
	.type	tea5767ReadData, %function
tea5767ReadData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	mov	r5, r0	@ bytes, bytes
	movs	r3, #0	@ i,
.L7:
	ldr	r2, .L9	@ tmp141,
	ldr	r4, .L9+4	@ tmp144,
	movs	r1, #0	@ tmp142,
	strb	r1, [r2, r3]	@ tmp142, I2CMasterBuffer
	strb	r1, [r4, r3]	@ tmp142, I2CSlaveBuffer
	adds	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	bne	.L7	@,
	ldr	r3, .L9+8	@ tmp147,
	ldr	r1, .L9+12	@ tmp149,
	movs	r0, #1	@ tmp148,
	str	r0, [r3, #0]	@ tmp148, I2CWriteLength
	movs	r3, #193	@ tmp152,
	movs	r0, #5	@ tmp150,
	str	r0, [r1, #0]	@ tmp150, I2CReadLength
	strb	r3, [r2, #0]	@ tmp152, I2CMasterBuffer
	bl	i2cEngine	@
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	ip, [r5, #0]	@ I2CSlaveBuffer, *bytes_5(D)
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	r1, [r5, #1]	@ I2CSlaveBuffer, MEM[(uint8_t *)bytes_5(D) + 1B]
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	r2, [r5, #2]	@ I2CSlaveBuffer, MEM[(uint8_t *)bytes_5(D) + 2B]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	r0, [r5, #3]	@ I2CSlaveBuffer, MEM[(uint8_t *)bytes_5(D) + 3B]
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ I2CSlaveBuffer, I2CSlaveBuffer
	strb	r3, [r5, #4]	@ I2CSlaveBuffer, MEM[(uint8_t *)bytes_5(D) + 4B]
	pop	{r3, r4, r5, pc}	@
.L10:
	.align	2
.L9:
	.word	I2CMasterBuffer
	.word	I2CSlaveBuffer
	.word	I2CWriteLength
	.word	I2CReadLength
	.size	tea5767ReadData, .-tea5767ReadData
	.section	.text.tea5767SetFrequency,"ax",%progbits
	.align	1
	.global	tea5767SetFrequency
	.thumb
	.thumb_func
	.ascii	"tea5767SetFrequency\000"
	.align	2
	.word	4278190100
	.type	tea5767SetFrequency, %function
tea5767SetFrequency:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	mov	r4, r0	@ frequency, frequency
	ldr	r0, .L13	@ tmp146,
	movs	r1, #0	@ tmp143,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tea5767Initialised, _tea5767Initialised
	str	r1, [sp, #0]	@ tmp143, buffer
	strb	r1, [sp, #4]	@ tmp143, buffer
	cbnz	r3, .L12	@ _tea5767Initialised,
	bl	tea5767Init	@
.L12:
	add	ip, r4, #223232	@ tmp148, frequency,
	add	r2, ip, #1768	@ tmp148, tmp148,
	lsls	r1, r2, #2	@ tmp150, tmp148,
	lsrs	r0, r1, #15	@ pllValue, tmp150,
	lsrs	r4, r1, #23	@ tmp151, tmp150,
	movs	r3, #16	@ tmp156,
	and	r4, r4, #63	@ tmp153, tmp151,
	strb	r0, [sp, #1]	@ pllValue, buffer
	movs	r2, #0	@ tmp160,
	mov	r0, sp	@,
	strb	r4, [sp, #0]	@ tmp153, buffer
	strb	r3, [sp, #2]	@ tmp156, buffer
	strb	r3, [sp, #3]	@ tmp156, buffer
	strb	r2, [sp, #4]	@ tmp160, buffer
	bl	tea5767SendData	@
	pop	{r2, r3, r4, pc}
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	tea5767SetFrequency, .-tea5767SetFrequency
	.section	.text.tea5767Init,"ax",%progbits
	.align	1
	.global	tea5767Init
	.thumb
	.thumb_func
	.ascii	"tea5767Init\000"
	.align	2
	.word	4278190092
	.type	tea5767Init, %function
tea5767Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	movs	r0, #1	@,
	bl	i2cInit	@
	cbz	r0, .L17	@,
	ldr	r3, .L18	@ tmp137,
	movs	r2, #1	@ tmp138,
	ldr	r0, .L18+4	@,
	strb	r2, [r3, #0]	@ tmp138, _tea5767Initialised
	bl	tea5767SetFrequency	@
	movs	r0, #0	@ D.4630,
	pop	{r3, pc}	@
.L17:
	mov	r0, #-1	@ D.4630,
	pop	{r3, pc}	@
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	87500000
	.size	tea5767Init, .-tea5767Init
	.section	.text.tea5767CheckCrystal,"ax",%progbits
	.align	1
	.global	tea5767CheckCrystal
	.thumb
	.thumb_func
	.ascii	"tea5767CheckCrystal\000"
	.align	2
	.word	4278190100
	.type	tea5767CheckCrystal, %function
tea5767CheckCrystal:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
	movs	r1, #0	@ tmp138,
	ldr	r0, .L21	@,
	str	r1, [sp, #0]	@ tmp138, buffer
	strb	r1, [sp, #4]	@ tmp138, buffer
	bl	tea5767SetFrequency	@
	movs	r0, #100	@,
	bl	systickDelay	@
	mov	r0, sp	@,
	bl	tea5767ReadData	@
	ldrb	r4, [sp, #2]	@ zero_extendqisi2	@ buffer, buffer
	ldr	r0, .L21+4	@,
	and	r4, r4, #127	@ ifValue, buffer,
	bl	tea5767SetFrequency	@
	sub	r3, r4, #55	@, ifValue,
	rsbs	r0, r3, #0	@,,
	adc	r0, r0, r3	@,,
	pop	{r2, r3, r4, pc}
.L22:
	.align	2
.L21:
	.word	81400000
	.word	87500000
	.size	tea5767CheckCrystal, .-tea5767CheckCrystal
	.section	.text.tea5767GetFrequency,"ax",%progbits
	.align	1
	.global	tea5767GetFrequency
	.thumb
	.thumb_func
	.ascii	"tea5767GetFrequency\000"
	.align	2
	.word	4278190100
	.type	tea5767GetFrequency, %function
tea5767GetFrequency:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}	@
	ldr	r0, .L25	@ tmp150,
	movs	r1, #0	@ tmp147,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tea5767Initialised, _tea5767Initialised
	str	r1, [sp, #0]	@ tmp147, buffer
	strb	r1, [sp, #4]	@ tmp147, buffer
	cbnz	r3, .L24	@ _tea5767Initialised,
	bl	tea5767Init	@
.L24:
	mov	r0, sp	@,
	bl	tea5767ReadData	@
	ldrb	ip, [sp, #0]	@ zero_extendqisi2	@ buffer, buffer
	ldrb	r2, [sp, #1]	@ zero_extendqisi2	@ buffer, buffer
	and	r3, ip, #63	@ tmp154, buffer,
	lsls	r1, r3, #8	@ tmp155, tmp154,
	adds	r0, r1, r2	@ tmp157, tmp155, buffer
	lsls	r3, r0, #13	@ D.4614, tmp157,
	sub	r2, r3, #223232	@, D.4614,
	sub	r0, r2, #1768	@,,
	pop	{r1, r2, r3, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.size	tea5767GetFrequency, .-tea5767GetFrequency
	.section	.text.tea5767Scan,"ax",%progbits
	.align	1
	.global	tea5767Scan
	.thumb
	.thumb_func
	.ascii	"tea5767Scan\000"
	.align	2
	.word	4278190092
	.type	tea5767Scan, %function
tea5767Scan:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}	@
	mov	r4, r0	@ scanDirection, scanDirection
	ldr	r0, .L30	@ tmp146,
	movs	r1, #0	@ tmp140,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ _tea5767Initialised, _tea5767Initialised
	str	r1, [sp, #0]	@ tmp140, rbuffer
	strb	r1, [sp, #4]	@ tmp140, rbuffer
	str	r1, [sp, #8]	@ tmp140, wbuffer
	strb	r1, [sp, #12]	@ tmp140, wbuffer
	cbnz	r3, .L28	@ _tea5767Initialised,
	bl	tea5767Init	@
.L28:
	mov	r0, sp	@,
	bl	tea5767ReadData	@
	ldrb	ip, [sp, #0]	@ zero_extendqisi2	@ rbuffer, rbuffer
	ldrb	r1, [sp, #1]	@ zero_extendqisi2	@ rbuffer, rbuffer
	and	r2, ip, #63	@ tmp151, rbuffer,
	adds	r2, r2, #64	@ tmp153, tmp151,
	strb	r2, [sp, #8]	@ tmp153, wbuffer
	movs	r0, #80	@ tmp157,
	movs	r3, #16	@ tmp159,
	movs	r2, #0	@ tmp161,
	strb	r1, [sp, #9]	@ rbuffer, wbuffer
	strb	r0, [sp, #10]	@ tmp157, wbuffer
	strb	r3, [sp, #11]	@ tmp159, wbuffer
	strb	r2, [sp, #12]	@ tmp161, wbuffer
	cbz	r4, .L29	@ scanDirection,
	movs	r3, #208	@ tmp163,
	strb	r3, [sp, #10]	@ tmp163, wbuffer
.L29:
	add	r0, sp, #8	@,,
	bl	tea5767SendData	@
	pop	{r0, r1, r2, r3, r4, pc}
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.size	tea5767Scan, .-tea5767Scan
	.section	.bss._tea5767Initialised,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	_tea5767Initialised, %object
	.size	_tea5767Initialised, 1
_tea5767Initialised:
	.space	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
