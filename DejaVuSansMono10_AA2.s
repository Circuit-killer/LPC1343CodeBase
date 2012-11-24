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
	.file	"DejaVuSansMono10_AA2.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed DejaVuSansMono10_AA2.i -mthumb
@ -mcpu=cortex-m3 -mpoke-function-name
@ -auxbase-strip DejaVuSansMono10_AA2.o -Os -Wall -ffunction-sections
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

	.global	DejaVuSansMono10_AA2
	.global	charTable_DejaVuSansMono10_AA2
	.global	FontDejaVuSansMono10_AA2_007E
	.global	FontDejaVuSansMono10_AA2_007D
	.global	FontDejaVuSansMono10_AA2_007C
	.global	FontDejaVuSansMono10_AA2_007B
	.global	FontDejaVuSansMono10_AA2_007A
	.global	FontDejaVuSansMono10_AA2_0079
	.global	FontDejaVuSansMono10_AA2_0078
	.global	FontDejaVuSansMono10_AA2_0077
	.global	FontDejaVuSansMono10_AA2_0076
	.global	FontDejaVuSansMono10_AA2_0075
	.global	FontDejaVuSansMono10_AA2_0074
	.global	FontDejaVuSansMono10_AA2_0073
	.global	FontDejaVuSansMono10_AA2_0072
	.global	FontDejaVuSansMono10_AA2_0071
	.global	FontDejaVuSansMono10_AA2_0070
	.global	FontDejaVuSansMono10_AA2_006F
	.global	FontDejaVuSansMono10_AA2_006E
	.global	FontDejaVuSansMono10_AA2_006D
	.global	FontDejaVuSansMono10_AA2_006C
	.global	FontDejaVuSansMono10_AA2_006B
	.global	FontDejaVuSansMono10_AA2_006A
	.global	FontDejaVuSansMono10_AA2_0069
	.global	FontDejaVuSansMono10_AA2_0068
	.global	FontDejaVuSansMono10_AA2_0067
	.global	FontDejaVuSansMono10_AA2_0066
	.global	FontDejaVuSansMono10_AA2_0065
	.global	FontDejaVuSansMono10_AA2_0064
	.global	FontDejaVuSansMono10_AA2_0063
	.global	FontDejaVuSansMono10_AA2_0062
	.global	FontDejaVuSansMono10_AA2_0061
	.global	FontDejaVuSansMono10_AA2_0060
	.global	FontDejaVuSansMono10_AA2_005F
	.global	FontDejaVuSansMono10_AA2_005E
	.global	FontDejaVuSansMono10_AA2_005D
	.global	FontDejaVuSansMono10_AA2_005C
	.global	FontDejaVuSansMono10_AA2_005B
	.global	FontDejaVuSansMono10_AA2_005A
	.global	FontDejaVuSansMono10_AA2_0059
	.global	FontDejaVuSansMono10_AA2_0058
	.global	FontDejaVuSansMono10_AA2_0057
	.global	FontDejaVuSansMono10_AA2_0056
	.global	FontDejaVuSansMono10_AA2_0055
	.global	FontDejaVuSansMono10_AA2_0054
	.global	FontDejaVuSansMono10_AA2_0053
	.global	FontDejaVuSansMono10_AA2_0052
	.global	FontDejaVuSansMono10_AA2_0051
	.global	FontDejaVuSansMono10_AA2_0050
	.global	FontDejaVuSansMono10_AA2_004F
	.global	FontDejaVuSansMono10_AA2_004E
	.global	FontDejaVuSansMono10_AA2_004D
	.global	FontDejaVuSansMono10_AA2_004C
	.global	FontDejaVuSansMono10_AA2_004B
	.global	FontDejaVuSansMono10_AA2_004A
	.global	FontDejaVuSansMono10_AA2_0049
	.global	FontDejaVuSansMono10_AA2_0048
	.global	FontDejaVuSansMono10_AA2_0047
	.global	FontDejaVuSansMono10_AA2_0046
	.global	FontDejaVuSansMono10_AA2_0045
	.global	FontDejaVuSansMono10_AA2_0044
	.global	FontDejaVuSansMono10_AA2_0043
	.global	FontDejaVuSansMono10_AA2_0042
	.global	FontDejaVuSansMono10_AA2_0041
	.global	FontDejaVuSansMono10_AA2_0040
	.global	FontDejaVuSansMono10_AA2_003F
	.global	FontDejaVuSansMono10_AA2_003E
	.global	FontDejaVuSansMono10_AA2_003D
	.global	FontDejaVuSansMono10_AA2_003C
	.global	FontDejaVuSansMono10_AA2_003B
	.global	FontDejaVuSansMono10_AA2_003A
	.global	FontDejaVuSansMono10_AA2_0039
	.global	FontDejaVuSansMono10_AA2_0038
	.global	FontDejaVuSansMono10_AA2_0037
	.global	FontDejaVuSansMono10_AA2_0036
	.global	FontDejaVuSansMono10_AA2_0035
	.global	FontDejaVuSansMono10_AA2_0034
	.global	FontDejaVuSansMono10_AA2_0033
	.global	FontDejaVuSansMono10_AA2_0032
	.global	FontDejaVuSansMono10_AA2_0031
	.global	FontDejaVuSansMono10_AA2_0030
	.global	FontDejaVuSansMono10_AA2_002F
	.global	FontDejaVuSansMono10_AA2_002E
	.global	FontDejaVuSansMono10_AA2_002D
	.global	FontDejaVuSansMono10_AA2_002C
	.global	FontDejaVuSansMono10_AA2_002B
	.global	FontDejaVuSansMono10_AA2_002A
	.global	FontDejaVuSansMono10_AA2_0029
	.global	FontDejaVuSansMono10_AA2_0028
	.global	FontDejaVuSansMono10_AA2_0027
	.global	FontDejaVuSansMono10_AA2_0026
	.global	FontDejaVuSansMono10_AA2_0025
	.global	FontDejaVuSansMono10_AA2_0024
	.global	FontDejaVuSansMono10_AA2_0023
	.global	FontDejaVuSansMono10_AA2_0022
	.global	FontDejaVuSansMono10_AA2_0021
	.global	FontDejaVuSansMono10_AA2_0020
	.section	.rodata.FontDejaVuSansMono10_AA2_0040,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0040, %object
	.size	FontDejaVuSansMono10_AA2_0040, 20
FontDejaVuSansMono10_AA2_0040:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	48
	.byte	-128
	.byte	87
	.byte	-64
	.byte	88
	.byte	-128
	.byte	87
	.byte	-64
	.byte	48
	.byte	0
	.byte	15
	.byte	64
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0041,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0041, %object
	.size	FontDejaVuSansMono10_AA2_0041, 20
FontDejaVuSansMono10_AA2_0041:
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	10
	.byte	0
	.byte	9
	.byte	64
	.byte	20
	.byte	-128
	.byte	32
	.byte	-128
	.byte	63
	.byte	-64
	.byte	80
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0042,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0042, %object
	.size	FontDejaVuSansMono10_AA2_0042, 20
FontDejaVuSansMono10_AA2_0042:
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	82
	.byte	0
	.byte	82
	.byte	0
	.byte	125
	.byte	0
	.byte	82
	.byte	64
	.byte	81
	.byte	64
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0043,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0043, %object
	.size	FontDejaVuSansMono10_AA2_0043, 20
FontDejaVuSansMono10_AA2_0043:
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	32
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	32
	.byte	0
	.byte	31
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0044,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0044, %object
	.size	FontDejaVuSansMono10_AA2_0044, 20
FontDejaVuSansMono10_AA2_0044:
	.byte	0
	.byte	0
	.byte	125
	.byte	0
	.byte	82
	.byte	0
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	82
	.byte	0
	.byte	125
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0045,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0045, %object
	.size	FontDejaVuSansMono10_AA2_0045, 20
FontDejaVuSansMono10_AA2_0045:
	.byte	0
	.byte	0
	.byte	127
	.byte	64
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	127
	.byte	64
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	127
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0046,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0046, %object
	.size	FontDejaVuSansMono10_AA2_0046, 20
FontDejaVuSansMono10_AA2_0046:
	.byte	0
	.byte	0
	.byte	-65
	.byte	64
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-65
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0047,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0047, %object
	.size	FontDejaVuSansMono10_AA2_0047, 20
FontDejaVuSansMono10_AA2_0047:
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	32
	.byte	0
	.byte	80
	.byte	0
	.byte	87
	.byte	64
	.byte	81
	.byte	64
	.byte	33
	.byte	64
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0048,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0048, %object
	.size	FontDejaVuSansMono10_AA2_0048, 20
FontDejaVuSansMono10_AA2_0048:
	.byte	0
	.byte	0
	.byte	65
	.byte	64
	.byte	65
	.byte	64
	.byte	65
	.byte	64
	.byte	127
	.byte	64
	.byte	65
	.byte	64
	.byte	65
	.byte	64
	.byte	65
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0049,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0049, %object
	.size	FontDejaVuSansMono10_AA2_0049, 20
FontDejaVuSansMono10_AA2_0049:
	.byte	0
	.byte	0
	.byte	63
	.byte	64
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	63
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004A, %object
	.size	FontDejaVuSansMono10_AA2_004A, 20
FontDejaVuSansMono10_AA2_004A:
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	2
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004B, %object
	.size	FontDejaVuSansMono10_AA2_004B, 20
FontDejaVuSansMono10_AA2_004B:
	.byte	0
	.byte	0
	.byte	65
	.byte	-128
	.byte	70
	.byte	0
	.byte	88
	.byte	0
	.byte	120
	.byte	0
	.byte	69
	.byte	0
	.byte	66
	.byte	0
	.byte	65
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004C, %object
	.size	FontDejaVuSansMono10_AA2_004C, 20
FontDejaVuSansMono10_AA2_004C:
	.byte	0
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	0
	.byte	127
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004D, %object
	.size	FontDejaVuSansMono10_AA2_004D, 20
FontDejaVuSansMono10_AA2_004D:
	.byte	0
	.byte	0
	.byte	96
	.byte	-64
	.byte	97
	.byte	-64
	.byte	85
	.byte	-128
	.byte	85
	.byte	-128
	.byte	89
	.byte	-128
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004E, %object
	.size	FontDejaVuSansMono10_AA2_004E, 20
FontDejaVuSansMono10_AA2_004E:
	.byte	0
	.byte	0
	.byte	97
	.byte	64
	.byte	113
	.byte	64
	.byte	85
	.byte	64
	.byte	85
	.byte	64
	.byte	85
	.byte	64
	.byte	83
	.byte	64
	.byte	82
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_004F,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_004F, %object
	.size	FontDejaVuSansMono10_AA2_004F, 20
FontDejaVuSansMono10_AA2_004F:
	.byte	0
	.byte	0
	.byte	46
	.byte	0
	.byte	98
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	98
	.byte	64
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0037,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0037, %object
	.size	FontDejaVuSansMono10_AA2_0037, 20
FontDejaVuSansMono10_AA2_0037:
	.byte	0
	.byte	0
	.byte	-65
	.byte	64
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003A, %object
	.size	FontDejaVuSansMono10_AA2_003A, 20
FontDejaVuSansMono10_AA2_003A:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.DejaVuSansMono10_AA2,"aw",%progbits
	.align	2
	.type	DejaVuSansMono10_AA2, %object
	.size	DejaVuSansMono10_AA2, 20
DejaVuSansMono10_AA2:
@ fontType:
	.byte	2
@ fontHeight:
	.space	1
	.short	10
@ unknownCharWidth:
	.short	5
@ heightUpperCase:
	.short	7
@ heightLowerCase:
	.short	5
@ baseline:
	.short	8
@ firstChar:
	.short	32
@ lastChar:
	.short	126
@ charTable:
	.word	charTable_DejaVuSansMono10_AA2
	.section	.rodata.FontDejaVuSansMono10_AA2_0071,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0071, %object
	.size	FontDejaVuSansMono10_AA2_0071, 20
FontDejaVuSansMono10_AA2_0071:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	46
	.byte	-128
	.byte	97
	.byte	-128
	.byte	80
	.byte	-128
	.byte	97
	.byte	-128
	.byte	47
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.section	.rodata.FontDejaVuSansMono10_AA2_0050,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0050, %object
	.size	FontDejaVuSansMono10_AA2_0050, 20
FontDejaVuSansMono10_AA2_0050:
	.byte	0
	.byte	0
	.byte	127
	.byte	0
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	127
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0051,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0051, %object
	.size	FontDejaVuSansMono10_AA2_0051, 20
FontDejaVuSansMono10_AA2_0051:
	.byte	0
	.byte	0
	.byte	46
	.byte	0
	.byte	98
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	98
	.byte	64
	.byte	46
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0052,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0052, %object
	.size	FontDejaVuSansMono10_AA2_0052, 20
FontDejaVuSansMono10_AA2_0052:
	.byte	0
	.byte	0
	.byte	127
	.byte	0
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	125
	.byte	0
	.byte	82
	.byte	0
	.byte	81
	.byte	64
	.byte	80
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0053,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0053, %object
	.size	FontDejaVuSansMono10_AA2_0053, 20
FontDejaVuSansMono10_AA2_0053:
	.byte	0
	.byte	0
	.byte	47
	.byte	0
	.byte	80
	.byte	64
	.byte	80
	.byte	0
	.byte	31
	.byte	0
	.byte	1
	.byte	64
	.byte	65
	.byte	64
	.byte	47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0054,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0054, %object
	.size	FontDejaVuSansMono10_AA2_0054, 20
FontDejaVuSansMono10_AA2_0054:
	.byte	0
	.byte	0
	.byte	-65
	.byte	-64
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0055,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0055, %object
	.size	FontDejaVuSansMono10_AA2_0055, 20
FontDejaVuSansMono10_AA2_0055:
	.byte	0
	.byte	0
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0056,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0056, %object
	.size	FontDejaVuSansMono10_AA2_0056, 20
FontDejaVuSansMono10_AA2_0056:
	.byte	0
	.byte	0
	.byte	80
	.byte	-128
	.byte	32
	.byte	-128
	.byte	32
	.byte	-128
	.byte	21
	.byte	64
	.byte	22
	.byte	0
	.byte	10
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0057,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0057, %object
	.size	FontDejaVuSansMono10_AA2_0057, 20
FontDejaVuSansMono10_AA2_0057:
	.byte	0
	.byte	0
	.byte	-128
	.byte	64
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	89
	.byte	-128
	.byte	102
	.byte	-128
	.byte	49
	.byte	-128
	.byte	49
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0058,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0058, %object
	.size	FontDejaVuSansMono10_AA2_0058, 20
FontDejaVuSansMono10_AA2_0058:
	.byte	0
	.byte	0
	.byte	32
	.byte	-128
	.byte	20
	.byte	-128
	.byte	10
	.byte	0
	.byte	6
	.byte	0
	.byte	10
	.byte	64
	.byte	32
	.byte	-128
	.byte	96
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0059,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0059, %object
	.size	FontDejaVuSansMono10_AA2_0059, 20
FontDejaVuSansMono10_AA2_0059:
	.byte	0
	.byte	0
	.byte	-112
	.byte	-128
	.byte	33
	.byte	64
	.byte	22
	.byte	0
	.byte	13
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0074,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0074, %object
	.size	FontDejaVuSansMono10_AA2_0074, 20
FontDejaVuSansMono10_AA2_0074:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	127
	.byte	64
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	11
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0075,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0075, %object
	.size	FontDejaVuSansMono10_AA2_0075, 20
FontDejaVuSansMono10_AA2_0075:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	81
	.byte	-128
	.byte	62
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005A, %object
	.size	FontDejaVuSansMono10_AA2_005A, 20
FontDejaVuSansMono10_AA2_005A:
	.byte	0
	.byte	0
	.byte	127
	.byte	64
	.byte	2
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	20
	.byte	0
	.byte	32
	.byte	0
	.byte	127
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005B, %object
	.size	FontDejaVuSansMono10_AA2_005B, 20
FontDejaVuSansMono10_AA2_005B:
	.byte	15
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005C, %object
	.size	FontDejaVuSansMono10_AA2_005C, 20
FontDejaVuSansMono10_AA2_005C:
	.byte	0
	.byte	0
	.byte	80
	.byte	0
	.byte	32
	.byte	0
	.byte	20
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005D, %object
	.size	FontDejaVuSansMono10_AA2_005D, 20
FontDejaVuSansMono10_AA2_005D:
	.byte	29
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005E, %object
	.size	FontDejaVuSansMono10_AA2_005E, 20
FontDejaVuSansMono10_AA2_005E:
	.byte	0
	.byte	0
	.byte	14
	.byte	0
	.byte	97
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_005F,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_005F, %object
	.size	FontDejaVuSansMono10_AA2_005F, 20
FontDejaVuSansMono10_AA2_005F:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-64
	.section	.rodata.charTable_DejaVuSansMono10_AA2,"a",%progbits
	.align	2
	.type	charTable_DejaVuSansMono10_AA2, %object
	.size	charTable_DejaVuSansMono10_AA2, 760
charTable_DejaVuSansMono10_AA2:
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0020
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0021
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0022
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0023
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0024
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0025
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0026
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0027
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0028
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0029
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002E
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_002F
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0030
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0031
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0032
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0033
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0034
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0035
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0036
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0037
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0038
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0039
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003E
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_003F
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0040
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0041
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0042
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0043
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0044
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0045
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0046
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0047
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0048
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0049
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004E
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_004F
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0050
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0051
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0052
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0053
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0054
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0055
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0056
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0057
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0058
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0059
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005E
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_005F
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0060
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0061
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0062
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0063
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0064
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0065
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0066
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0067
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0068
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0069
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006E
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_006F
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0070
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0071
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0072
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0073
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0074
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0075
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0076
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0077
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0078
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_0079
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_007A
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_007B
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_007C
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_007D
@ width:
	.byte	5
@ bytesPerRow:
	.byte	2
@ charData:
	.space	2
	.word	FontDejaVuSansMono10_AA2_007E
	.section	.rodata.FontDejaVuSansMono10_AA2_0020,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0020, %object
	.size	FontDejaVuSansMono10_AA2_0020, 20
FontDejaVuSansMono10_AA2_0020:
	.space	20
	.section	.rodata.FontDejaVuSansMono10_AA2_0021,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0021, %object
	.size	FontDejaVuSansMono10_AA2_0021, 20
FontDejaVuSansMono10_AA2_0021:
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0022,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0022, %object
	.size	FontDejaVuSansMono10_AA2_0022, 20
FontDejaVuSansMono10_AA2_0022:
	.byte	0
	.byte	0
	.byte	34
	.byte	0
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0023,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0023, %object
	.size	FontDejaVuSansMono10_AA2_0023, 20
FontDejaVuSansMono10_AA2_0023:
	.byte	0
	.byte	0
	.byte	4
	.byte	64
	.byte	5
	.byte	64
	.byte	127
	.byte	-64
	.byte	17
	.byte	0
	.byte	-1
	.byte	-128
	.byte	17
	.byte	0
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0024,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0024, %object
	.size	FontDejaVuSansMono10_AA2_0024, 20
FontDejaVuSansMono10_AA2_0024:
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	47
	.byte	-128
	.byte	32
	.byte	0
	.byte	56
	.byte	0
	.byte	11
	.byte	-128
	.byte	1
	.byte	-128
	.byte	63
	.byte	64
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0025,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0025, %object
	.size	FontDejaVuSansMono10_AA2_0025, 20
FontDejaVuSansMono10_AA2_0025:
	.byte	0
	.byte	0
	.byte	120
	.byte	0
	.byte	-120
	.byte	0
	.byte	120
	.byte	-64
	.byte	10
	.byte	0
	.byte	119
	.byte	-64
	.byte	5
	.byte	64
	.byte	3
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0026,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0026, %object
	.size	FontDejaVuSansMono10_AA2_0026, 20
FontDejaVuSansMono10_AA2_0026:
	.byte	0
	.byte	0
	.byte	31
	.byte	0
	.byte	32
	.byte	0
	.byte	20
	.byte	0
	.byte	44
	.byte	0
	.byte	82
	.byte	64
	.byte	81
	.byte	-64
	.byte	46
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0027,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0027, %object
	.size	FontDejaVuSansMono10_AA2_0027, 20
FontDejaVuSansMono10_AA2_0027:
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0028,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0028, %object
	.size	FontDejaVuSansMono10_AA2_0028, 20
FontDejaVuSansMono10_AA2_0028:
	.byte	2
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0029,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0029, %object
	.size	FontDejaVuSansMono10_AA2_0029, 20
FontDejaVuSansMono10_AA2_0029:
	.byte	20
	.byte	0
	.byte	8
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002A, %object
	.size	FontDejaVuSansMono10_AA2_002A, 20
FontDejaVuSansMono10_AA2_002A:
	.byte	0
	.byte	0
	.byte	21
	.byte	-128
	.byte	30
	.byte	0
	.byte	30
	.byte	0
	.byte	37
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002B, %object
	.size	FontDejaVuSansMono10_AA2_002B, 20
FontDejaVuSansMono10_AA2_002B:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	127
	.byte	-64
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002C, %object
	.size	FontDejaVuSansMono10_AA2_002C, 20
FontDejaVuSansMono10_AA2_002C:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	8
	.byte	0
	.byte	20
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002D, %object
	.size	FontDejaVuSansMono10_AA2_002D, 20
FontDejaVuSansMono10_AA2_002D:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002E, %object
	.size	FontDejaVuSansMono10_AA2_002E, 20
FontDejaVuSansMono10_AA2_002E:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_002F,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_002F, %object
	.size	FontDejaVuSansMono10_AA2_002F, 20
FontDejaVuSansMono10_AA2_002F:
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	20
	.byte	0
	.byte	32
	.byte	0
	.byte	80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0066,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0066, %object
	.size	FontDejaVuSansMono10_AA2_0066, 20
FontDejaVuSansMono10_AA2_0066:
	.byte	7
	.byte	-128
	.byte	4
	.byte	0
	.byte	8
	.byte	0
	.byte	63
	.byte	-128
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0067,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0067, %object
	.size	FontDejaVuSansMono10_AA2_0067, 20
FontDejaVuSansMono10_AA2_0067:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	46
	.byte	-128
	.byte	97
	.byte	-128
	.byte	80
	.byte	-128
	.byte	97
	.byte	-128
	.byte	47
	.byte	-128
	.byte	1
	.byte	64
	.byte	47
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0068,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0068, %object
	.size	FontDejaVuSansMono10_AA2_0068, 20
FontDejaVuSansMono10_AA2_0068:
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	111
	.byte	0
	.byte	97
	.byte	64
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0069,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0069, %object
	.size	FontDejaVuSansMono10_AA2_0069, 20
FontDejaVuSansMono10_AA2_0069:
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	44
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	127
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006A, %object
	.size	FontDejaVuSansMono10_AA2_006A, 20
FontDejaVuSansMono10_AA2_006A:
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	60
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006B, %object
	.size	FontDejaVuSansMono10_AA2_006B, 20
FontDejaVuSansMono10_AA2_006B:
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	83
	.byte	0
	.byte	92
	.byte	0
	.byte	120
	.byte	0
	.byte	85
	.byte	0
	.byte	82
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006C, %object
	.size	FontDejaVuSansMono10_AA2_006C, 20
FontDejaVuSansMono10_AA2_006C:
	.byte	-72
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	7
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006D, %object
	.size	FontDejaVuSansMono10_AA2_006D, 20
FontDejaVuSansMono10_AA2_006D:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-64
	.byte	85
	.byte	-128
	.byte	85
	.byte	-128
	.byte	85
	.byte	-128
	.byte	85
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006E, %object
	.size	FontDejaVuSansMono10_AA2_006E, 20
FontDejaVuSansMono10_AA2_006E:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	111
	.byte	0
	.byte	97
	.byte	64
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	80
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_006F,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_006F, %object
	.size	FontDejaVuSansMono10_AA2_006F, 20
FontDejaVuSansMono10_AA2_006F:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	47
	.byte	0
	.byte	97
	.byte	64
	.byte	80
	.byte	-128
	.byte	97
	.byte	64
	.byte	47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0030,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0030, %object
	.size	FontDejaVuSansMono10_AA2_0030, 20
FontDejaVuSansMono10_AA2_0030:
	.byte	0
	.byte	0
	.byte	46
	.byte	0
	.byte	34
	.byte	64
	.byte	81
	.byte	64
	.byte	89
	.byte	64
	.byte	81
	.byte	64
	.byte	34
	.byte	64
	.byte	46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0031,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0031, %object
	.size	FontDejaVuSansMono10_AA2_0031, 20
FontDejaVuSansMono10_AA2_0031:
	.byte	0
	.byte	0
	.byte	61
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	5
	.byte	0
	.byte	47
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0032,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0032, %object
	.size	FontDejaVuSansMono10_AA2_0032, 20
FontDejaVuSansMono10_AA2_0032:
	.byte	0
	.byte	0
	.byte	47
	.byte	0
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	2
	.byte	0
	.byte	8
	.byte	0
	.byte	48
	.byte	0
	.byte	127
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0033,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0033, %object
	.size	FontDejaVuSansMono10_AA2_0033, 20
FontDejaVuSansMono10_AA2_0033:
	.byte	0
	.byte	0
	.byte	46
	.byte	0
	.byte	81
	.byte	64
	.byte	1
	.byte	64
	.byte	29
	.byte	0
	.byte	1
	.byte	64
	.byte	65
	.byte	64
	.byte	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0034,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0034, %object
	.size	FontDejaVuSansMono10_AA2_0034, 20
FontDejaVuSansMono10_AA2_0034:
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	10
	.byte	0
	.byte	22
	.byte	0
	.byte	38
	.byte	0
	.byte	18
	.byte	0
	.byte	127
	.byte	64
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0035,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0035, %object
	.size	FontDejaVuSansMono10_AA2_0035, 20
FontDejaVuSansMono10_AA2_0035:
	.byte	0
	.byte	0
	.byte	63
	.byte	0
	.byte	32
	.byte	0
	.byte	32
	.byte	0
	.byte	63
	.byte	0
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0036,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0036, %object
	.size	FontDejaVuSansMono10_AA2_0036, 20
FontDejaVuSansMono10_AA2_0036:
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	48
	.byte	0
	.byte	80
	.byte	0
	.byte	111
	.byte	0
	.byte	97
	.byte	64
	.byte	17
	.byte	64
	.byte	47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0062,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0062, %object
	.size	FontDejaVuSansMono10_AA2_0062, 20
FontDejaVuSansMono10_AA2_0062:
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.byte	127
	.byte	0
	.byte	97
	.byte	64
	.byte	80
	.byte	-128
	.byte	97
	.byte	64
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0038,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0038, %object
	.size	FontDejaVuSansMono10_AA2_0038, 20
FontDejaVuSansMono10_AA2_0038:
	.byte	0
	.byte	0
	.byte	46
	.byte	0
	.byte	33
	.byte	64
	.byte	33
	.byte	64
	.byte	29
	.byte	0
	.byte	97
	.byte	64
	.byte	81
	.byte	64
	.byte	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0039,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0039, %object
	.size	FontDejaVuSansMono10_AA2_0039, 20
FontDejaVuSansMono10_AA2_0039:
	.byte	0
	.byte	0
	.byte	62
	.byte	0
	.byte	81
	.byte	64
	.byte	81
	.byte	64
	.byte	63
	.byte	64
	.byte	1
	.byte	64
	.byte	3
	.byte	0
	.byte	125
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0064,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0064, %object
	.size	FontDejaVuSansMono10_AA2_0064, 20
FontDejaVuSansMono10_AA2_0064:
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	46
	.byte	-128
	.byte	97
	.byte	-128
	.byte	80
	.byte	-128
	.byte	97
	.byte	-128
	.byte	47
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0072,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0072, %object
	.size	FontDejaVuSansMono10_AA2_0072, 20
FontDejaVuSansMono10_AA2_0072:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	-64
	.byte	24
	.byte	0
	.byte	20
	.byte	0
	.byte	20
	.byte	0
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0065,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0065, %object
	.size	FontDejaVuSansMono10_AA2_0065, 20
FontDejaVuSansMono10_AA2_0065:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	47
	.byte	0
	.byte	33
	.byte	64
	.byte	127
	.byte	-128
	.byte	32
	.byte	0
	.byte	47
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0073,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0073, %object
	.size	FontDejaVuSansMono10_AA2_0073, 20
FontDejaVuSansMono10_AA2_0073:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	-128
	.byte	80
	.byte	0
	.byte	47
	.byte	0
	.byte	0
	.byte	-128
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0070,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0070, %object
	.size	FontDejaVuSansMono10_AA2_0070, 20
FontDejaVuSansMono10_AA2_0070:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	0
	.byte	97
	.byte	64
	.byte	80
	.byte	-128
	.byte	97
	.byte	64
	.byte	127
	.byte	0
	.byte	80
	.byte	0
	.byte	80
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003B, %object
	.size	FontDejaVuSansMono10_AA2_003B, 20
FontDejaVuSansMono10_AA2_003B:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	8
	.byte	0
	.byte	20
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003C, %object
	.size	FontDejaVuSansMono10_AA2_003C, 20
FontDejaVuSansMono10_AA2_003C:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-64
	.byte	62
	.byte	0
	.byte	120
	.byte	0
	.byte	3
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003D, %object
	.size	FontDejaVuSansMono10_AA2_003D, 20
FontDejaVuSansMono10_AA2_003D:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-65
	.byte	-64
	.byte	0
	.byte	0
	.byte	-65
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003E, %object
	.size	FontDejaVuSansMono10_AA2_003E, 20
FontDejaVuSansMono10_AA2_003E:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	0
	.byte	15
	.byte	-128
	.byte	7
	.byte	-64
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_003F,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_003F, %object
	.size	FontDejaVuSansMono10_AA2_003F, 20
FontDejaVuSansMono10_AA2_003F:
	.byte	0
	.byte	0
	.byte	63
	.byte	0
	.byte	1
	.byte	64
	.byte	3
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0076,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0076, %object
	.size	FontDejaVuSansMono10_AA2_0076, 20
FontDejaVuSansMono10_AA2_0076:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.byte	64
	.byte	18
	.byte	0
	.byte	38
	.byte	0
	.byte	29
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0077,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0077, %object
	.size	FontDejaVuSansMono10_AA2_0077, 20
FontDejaVuSansMono10_AA2_0077:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	64
	.byte	-120
	.byte	-128
	.byte	89
	.byte	64
	.byte	38
	.byte	-128
	.byte	34
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0078,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0078, %object
	.size	FontDejaVuSansMono10_AA2_0078, 20
FontDejaVuSansMono10_AA2_0078:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	-64
	.byte	10
	.byte	0
	.byte	5
	.byte	0
	.byte	26
	.byte	64
	.byte	32
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0079,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0079, %object
	.size	FontDejaVuSansMono10_AA2_0079, 20
FontDejaVuSansMono10_AA2_0079:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.byte	64
	.byte	34
	.byte	0
	.byte	22
	.byte	0
	.byte	13
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	52
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_007A,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_007A, %object
	.size	FontDejaVuSansMono10_AA2_007A, 20
FontDejaVuSansMono10_AA2_007A:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	-128
	.byte	2
	.byte	0
	.byte	8
	.byte	0
	.byte	36
	.byte	0
	.byte	127
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_007B,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_007B, %object
	.size	FontDejaVuSansMono10_AA2_007B, 20
FontDejaVuSansMono10_AA2_007B:
	.byte	7
	.byte	64
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	52
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	7
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_007C,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_007C, %object
	.size	FontDejaVuSansMono10_AA2_007C, 20
FontDejaVuSansMono10_AA2_007C:
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_007D,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_007D, %object
	.size	FontDejaVuSansMono10_AA2_007D, 20
FontDejaVuSansMono10_AA2_007D:
	.byte	56
	.byte	0
	.byte	8
	.byte	0
	.byte	4
	.byte	0
	.byte	3
	.byte	64
	.byte	9
	.byte	0
	.byte	8
	.byte	0
	.byte	8
	.byte	0
	.byte	56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_007E,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_007E, %object
	.size	FontDejaVuSansMono10_AA2_007E, 20
FontDejaVuSansMono10_AA2_007E:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	0
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0060,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0060, %object
	.size	FontDejaVuSansMono10_AA2_0060, 20
FontDejaVuSansMono10_AA2_0060:
	.byte	36
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0061,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0061, %object
	.size	FontDejaVuSansMono10_AA2_0061, 20
FontDejaVuSansMono10_AA2_0061:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	0
	.byte	0
	.byte	64
	.byte	63
	.byte	-128
	.byte	81
	.byte	-128
	.byte	63
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.FontDejaVuSansMono10_AA2_0063,"a",%progbits
	.type	FontDejaVuSansMono10_AA2_0063, %object
	.size	FontDejaVuSansMono10_AA2_0063, 20
FontDejaVuSansMono10_AA2_0063:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	64
	.byte	32
	.byte	0
	.byte	80
	.byte	0
	.byte	32
	.byte	0
	.byte	31
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
