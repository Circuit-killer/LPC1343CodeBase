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
	.file	"LPC13xx_handlers.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed LPC13xx_handlers.i -mthumb
@ -mcpu=cortex-m3 -mpoke-function-name -auxbase-strip LPC13xx_handlers.o
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

	.section	.text.irq_undefined,"ax",%progbits
	.align	1
	.global	irq_undefined
	.thumb
	.thumb_func
	.ascii	"irq_undefined\000"
	.align	2
	.word	4278190096
	.type	irq_undefined, %function
irq_undefined:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	b	.L2	@
	.size	irq_undefined, .-irq_undefined
	.section	.text.fault_undefined,"ax",%progbits
	.align	1
	.global	fault_undefined
	.thumb
	.thumb_func
	.ascii	"fault_undefined\000"
	.align	2
	.word	4278190096
	.type	fault_undefined, %function
fault_undefined:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L4:
	b	.L4	@
	.size	fault_undefined, .-fault_undefined
	.global	vectors
	.weak	I2C_IRQHandler
	.thumb_set I2C_IRQHandler,irq_undefined
	.weak	TIMER16_0_IRQHandler
	.thumb_set TIMER16_0_IRQHandler,irq_undefined
	.weak	TIMER16_1_IRQHandler
	.thumb_set TIMER16_1_IRQHandler,irq_undefined
	.weak	TIMER32_0_IRQHandler
	.thumb_set TIMER32_0_IRQHandler,irq_undefined
	.weak	TIMER32_1_IRQHandler
	.thumb_set TIMER32_1_IRQHandler,irq_undefined
	.weak	SSP_IRQHandler
	.thumb_set SSP_IRQHandler,irq_undefined
	.weak	UART_IRQHandler
	.thumb_set UART_IRQHandler,irq_undefined
	.weak	USB_IRQHandler
	.thumb_set USB_IRQHandler,irq_undefined
	.weak	USB_FIQHandler
	.thumb_set USB_FIQHandler,irq_undefined
	.weak	ADC_IRQHandler
	.thumb_set ADC_IRQHandler,irq_undefined
	.weak	WDT_IRQHandler
	.thumb_set WDT_IRQHandler,irq_undefined
	.weak	BOD_IRQHandler
	.thumb_set BOD_IRQHandler,irq_undefined
	.weak	FMC_IRQHandler
	.thumb_set FMC_IRQHandler,irq_undefined
	.weak	PIOINT3_IRQHandler
	.thumb_set PIOINT3_IRQHandler,irq_undefined
	.weak	PIOINT2_IRQHandler
	.thumb_set PIOINT2_IRQHandler,irq_undefined
	.weak	PIOINT1_IRQHandler
	.thumb_set PIOINT1_IRQHandler,irq_undefined
	.weak	PIOINT0_IRQHandler
	.thumb_set PIOINT0_IRQHandler,irq_undefined
	.weak	WAKEUP_IRQHandler
	.thumb_set WAKEUP_IRQHandler,irq_undefined
	.weak	NMI_Handler
	.thumb_set NMI_Handler,fault_undefined
	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,fault_undefined
	.weak	MemManage_Handler
	.thumb_set MemManage_Handler,fault_undefined
	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,fault_undefined
	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,fault_undefined
	.weak	SVCall_Handler
	.thumb_set SVCall_Handler,fault_undefined
	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,fault_undefined
	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,fault_undefined
	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,fault_undefined
	.section	.irq_vectors,"aw",%progbits
	.align	2
	.type	vectors, %object
	.size	vectors, 292
vectors:
	.word	stack_entry
	.word	boot_entry
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	MemManage_Handler
	.word	BusFault_Handler
	.word	UsageFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVCall_Handler
	.word	DebugMon_Handler
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	I2C_IRQHandler
	.word	TIMER16_0_IRQHandler
	.word	TIMER16_1_IRQHandler
	.word	TIMER32_0_IRQHandler
	.word	TIMER32_1_IRQHandler
	.word	SSP_IRQHandler
	.word	UART_IRQHandler
	.word	USB_IRQHandler
	.word	USB_FIQHandler
	.word	ADC_IRQHandler
	.word	WDT_IRQHandler
	.word	BOD_IRQHandler
	.word	FMC_IRQHandler
	.word	PIOINT3_IRQHandler
	.word	PIOINT2_IRQHandler
	.word	PIOINT1_IRQHandler
	.word	PIOINT0_IRQHandler
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
