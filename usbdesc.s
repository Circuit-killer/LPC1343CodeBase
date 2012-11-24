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
	.file	"usbdesc.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed usbdesc.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip usbdesc.o -Os -Wall
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

	.global	USB_StringDescriptor
	.global	USB_ConfigDescriptor
	.global	USB_DeviceDescriptor
	.section	.rodata.USB_ConfigDescriptor,"a",%progbits
	.type	USB_ConfigDescriptor, %object
	.size	USB_ConfigDescriptor, 68
USB_ConfigDescriptor:
	.byte	9
	.byte	2
	.byte	67
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	-128
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	16
	.byte	1
	.byte	5
	.byte	36
	.byte	1
	.byte	3
	.byte	1
	.byte	4
	.byte	36
	.byte	2
	.byte	2
	.byte	5
	.byte	36
	.byte	6
	.byte	0
	.byte	1
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	16
	.byte	0
	.byte	2
	.byte	9
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	3
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	-125
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.USB_StringDescriptor,"a",%progbits
	.type	USB_StringDescriptor, %object
	.size	USB_StringDescriptor, 104
USB_StringDescriptor:
	.byte	4
	.byte	3
	.byte	9
	.byte	4
	.byte	28
	.byte	3
	.byte	78
	.byte	0
	.byte	88
	.byte	0
	.byte	80
	.byte	0
	.byte	32
	.byte	0
	.byte	83
	.byte	0
	.byte	69
	.byte	0
	.byte	77
	.byte	0
	.byte	73
	.byte	0
	.byte	67
	.byte	0
	.byte	79
	.byte	0
	.byte	78
	.byte	0
	.byte	68
	.byte	0
	.byte	32
	.byte	0
	.byte	36
	.byte	3
	.byte	78
	.byte	0
	.byte	88
	.byte	0
	.byte	80
	.byte	0
	.byte	32
	.byte	0
	.byte	76
	.byte	0
	.byte	80
	.byte	0
	.byte	67
	.byte	0
	.byte	49
	.byte	0
	.byte	51
	.byte	0
	.byte	120
	.byte	0
	.byte	120
	.byte	0
	.byte	32
	.byte	0
	.byte	86
	.byte	0
	.byte	67
	.byte	0
	.byte	79
	.byte	0
	.byte	77
	.byte	0
	.byte	32
	.byte	0
	.byte	26
	.byte	3
	.byte	68
	.byte	0
	.byte	69
	.byte	0
	.byte	77
	.byte	0
	.byte	79
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	48
	.byte	0
	.byte	10
	.byte	3
	.byte	86
	.byte	0
	.byte	67
	.byte	0
	.byte	79
	.byte	0
	.byte	77
	.byte	0
	.section	.rodata.USB_DeviceDescriptor,"a",%progbits
	.type	USB_DeviceDescriptor, %object
	.size	USB_DeviceDescriptor, 18
USB_DeviceDescriptor:
	.byte	18
	.byte	1
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	64
	.byte	80
	.byte	29
	.byte	12
	.byte	96
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
