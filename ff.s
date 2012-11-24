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
	.file	"ff.c"
@ GNU C (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) version 4.6.3 (arm-none-eabi)
@	compiled by GNU C version 4.0.1 (Apple Inc. build 5493), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed ff.i -mthumb -mcpu=cortex-m3
@ -mpoke-function-name -auxbase-strip ff.o -Os -Wall -ffunction-sections
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

	.section	.text.get_fileinfo,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"get_fileinfo\000"
	.align	2
	.word	4278190096
	.type	get_fileinfo, %function
get_fileinfo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #16]	@ dj_10(D)->sect, dj_10(D)->sect
	push	{r4, r5, lr}	@
	add	r2, r1, #9	@ p, fno,
	cmp	r3, #0	@ dj_10(D)->sect
	beq	.L2	@
	ldr	r3, [r0, #20]	@ dir, dj_10(D)->dir
	movs	r4, #0	@ i,
	mov	r0, r2	@ ivtmp.62, p
.L5:
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ c, MEM[base: dir_12, index: D.5980_26, offset: 0B]
	mov	r2, r0	@ p, ivtmp.62
	cmp	r5, #32	@ c,
	beq	.L3	@,
	cmp	r5, #5	@ c,
	it	eq	@
	moveq	r5, #229	@, c,
	adds	r4, r4, #1	@ i, i,
	strb	r5, [r0], #1	@ c, MEM[base: p_92, offset: 0B]
	cmp	r4, #8	@ i,
	mov	r2, r0	@ p, ivtmp.62
	bne	.L5	@,
.L3:
	ldrb	r4, [r3, #8]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 8B], MEM[(BYTE *)dir_12 + 8B]
	cmp	r4, #32	@ MEM[(BYTE *)dir_12 + 8B],
	beq	.L6	@,
	movs	r2, #46	@ tmp216,
	strb	r2, [r0], #1	@ tmp216, *p_83
	movs	r4, #8	@ i,
.L7:
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ c, MEM[base: dir_12, index: D.5962_103, offset: 0B]
	mov	r2, r0	@ p, ivtmp.43
	cmp	r5, #32	@ c,
	beq	.L6	@,
	adds	r4, r4, #1	@ i, i,
	strb	r5, [r0], #1	@ c, MEM[base: p_93, offset: 0B]
	cmp	r4, #11	@ i,
	mov	r2, r0	@ p, ivtmp.43
	bne	.L7	@,
.L6:
	ldrb	r0, [r3, #11]	@ zero_extendqisi2	@ D.5174, MEM[(BYTE *)dir_12 + 11B]
	strb	r0, [r1, #8]	@ D.5174, fno_8(D)->fattrib
	ldrb	r4, [r3, #30]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 30B], MEM[(BYTE *)dir_12 + 30B]
	ldrb	ip, [r3, #31]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 31B], MEM[(BYTE *)dir_12 + 31B]
	lsls	r0, r4, #16	@ tmp223, MEM[(BYTE *)dir_12 + 30B],
	ldrb	r4, [r3, #28]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 28B], MEM[(BYTE *)dir_12 + 28B]
	orr	ip, r0, ip, lsl #24	@, tmp224, tmp223, MEM[(BYTE *)dir_12 + 31B],
	ldrb	r0, [r3, #29]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 29B], MEM[(BYTE *)dir_12 + 29B]
	orr	ip, ip, r4	@ tmp226, tmp224, MEM[(BYTE *)dir_12 + 28B]
	orr	r4, ip, r0, lsl #8	@, tmp229, tmp226, MEM[(BYTE *)dir_12 + 29B],
	str	r4, [r1, #0]	@ tmp229, fno_8(D)->fsize
	ldrb	r0, [r3, #24]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 24B], MEM[(BYTE *)dir_12 + 24B]
	ldrb	r4, [r3, #25]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 25B], MEM[(BYTE *)dir_12 + 25B]
	orr	ip, r0, r4, lsl #8	@, tmp235, MEM[(BYTE *)dir_12 + 24B], MEM[(BYTE *)dir_12 + 25B],
	strh	ip, [r1, #4]	@ movhi	@ tmp235, fno_8(D)->fdate
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 23B], MEM[(BYTE *)dir_12 + 23B]
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_12 + 22B], MEM[(BYTE *)dir_12 + 22B]
	orr	r0, ip, r0, lsl #8	@, tmp242, MEM[(BYTE *)dir_12 + 22B], MEM[(BYTE *)dir_12 + 23B],
	strh	r0, [r1, #6]	@ movhi	@ tmp242, fno_8(D)->ftime
.L2:
	movs	r1, #0	@ tmp244,
	strb	r1, [r2, #0]	@ tmp244, *p_7
	pop	{r4, r5, pc}	@
	.size	get_fileinfo, .-get_fileinfo
	.section	.text.move_window,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"move_window\000"
	.align	2
	.word	4278190092
	.type	move_window, %function
move_window:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	ldr	r3, [r0, #32]	@ fs_2(D)->winsect, fs_2(D)->winsect
	mov	r5, r0	@ fs, fs
	cmp	r3, r1	@ fs_2(D)->winsect, sector
	mov	r4, r1	@ sector, sector
	beq	.L13	@,
	cbz	r1, .L14	@ sector,
	ldrb	r0, [r0, #1]	@ zero_extendqisi2	@, fs_2(D)->drive
	add	r1, r5, #36	@, fs,
	mov	r2, r4	@, sector
	movs	r3, #1	@,
	bl	disk_read	@
	cbnz	r0, .L15	@ tmp145,
	str	r4, [r5, #32]	@ sector, fs_2(D)->winsect
	pop	{r3, r4, r5, pc}	@
.L13:
	movs	r0, #0	@ D.5105,
	pop	{r3, r4, r5, pc}	@
.L14:
	mov	r0, r1	@ D.5105, sector
	pop	{r3, r4, r5, pc}	@
.L15:
	movs	r0, #1	@ D.5105,
	pop	{r3, r4, r5, pc}	@
	.size	move_window, .-move_window
	.section	.text.check_fs,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"check_fs\000"
	.align	2
	.word	4278190092
	.type	check_fs, %function
check_fs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ fs, fs
	mov	r2, r1	@ sect, sect
	ldrb	r0, [r0, #1]	@ zero_extendqisi2	@, fs_2(D)->drive
	add	r1, r4, #36	@, fs,
	movs	r3, #1	@,
	bl	disk_read	@
	cmp	r0, #0	@ tmp182
	bne	.L18	@
	ldrb	r2, [r4, #546]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	ldrb	ip, [r4, #547]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	ldr	r3, .L21	@ tmp190,
	orr	r1, r2, ip, lsl #8	@, tmp188, fs_2(D)->win, fs_2(D)->win,
	sxth	r2, r1	@ tmp189, tmp188
	cmp	r2, r3	@ tmp189, tmp190
	bne	.L19	@,
	ldrb	r1, [r4, #92]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	ldrb	r3, [r4, #93]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	lsls	r2, r1, #16	@ tmp194, fs_2(D)->win,
	ldrb	ip, [r4, #90]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	orr	r1, r2, r3, lsl #24	@, tmp195, tmp194, fs_2(D)->win,
	ldrb	r2, [r4, #91]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	orr	lr, r1, ip	@ tmp197, tmp195, fs_2(D)->win
	orr	r3, lr, r2, lsl #8	@, tmp200, tmp197, fs_2(D)->win,
	bic	r1, r3, #-16777216	@ tmp201, tmp200,
	ldr	r3, .L21+4	@ tmp202,
	cmp	r1, r3	@ tmp201, tmp202
	beq	.L17	@,
	ldrb	r2, [r4, #120]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	ldrb	ip, [r4, #121]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	lsls	r0, r2, #16	@ tmp206, fs_2(D)->win,
	ldrb	lr, [r4, #118]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	orr	r1, r0, ip, lsl #24	@, tmp207, tmp206, fs_2(D)->win,
	ldrb	r0, [r4, #119]	@ zero_extendqisi2	@ fs_2(D)->win, fs_2(D)->win
	orr	r1, r1, lr	@ tmp209, tmp207, fs_2(D)->win
	orr	r2, r1, r0, lsl #8	@, tmp212, tmp209, fs_2(D)->win,
	bic	r0, r2, #-16777216	@ tmp213, tmp212,
	subs	r0, r0, r3	@ D.5684, tmp213, tmp202
	it	ne
	movne	r0, #1	@ D.5684,
	pop	{r4, pc}	@
.L18:
	movs	r0, #3	@ D.5684,
	pop	{r4, pc}	@
.L19:
	movs	r0, #2	@ D.5684,
.L17:
	pop	{r4, pc}	@
.L22:
	.align	2
.L21:
	.word	-21931
	.word	5521734
	.size	check_fs, .-check_fs
	.section	.text.validate,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"validate\000"
	.align	2
	.word	4278190092
	.type	validate, %function
validate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	cbz	r0, .L26	@ fs,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ fs_2(D)->fs_type, fs_2(D)->fs_type
	cbz	r3, .L26	@ fs_2(D)->fs_type,
	ldrh	r2, [r0, #6]	@ fs_2(D)->id, fs_2(D)->id
	cmp	r2, r1	@ fs_2(D)->id, id
	bne	.L27	@,
	ldrb	r0, [r0, #1]	@ zero_extendqisi2	@, fs_2(D)->drive
	bl	disk_status	@
	ands	r0, r0, #1	@ tmp148,,
	it	ne	@
	movne	r0, #3	@, D.5235,
	pop	{r3, pc}	@
.L26:
	movs	r0, #9	@ D.5235,
	pop	{r3, pc}	@
.L27:
	movs	r0, #9	@ D.5235,
	pop	{r3, pc}	@
	.size	validate, .-validate
	.section	.text.get_fat,"ax",%progbits
	.align	1
	.global	get_fat
	.thumb
	.thumb_func
	.ascii	"get_fat\000"
	.align	2
	.word	4278190088
	.type	get_fat, %function
get_fat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ clst,
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r5, r0	@ fs, fs
	mov	r4, r1	@ clst, clst
	bls	.L36	@,
	ldr	r3, [r0, #16]	@ fs_4(D)->max_clust, fs_4(D)->max_clust
	cmp	r1, r3	@ clst, fs_4(D)->max_clust
	bcs	.L36	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ fs_4(D)->fs_type, fs_4(D)->fs_type
	ldr	r6, [r0, #20]	@ fsect, fs_4(D)->fatbase
	cmp	r3, #2	@ fs_4(D)->fs_type,
	beq	.L32	@,
	cmp	r3, #3	@ fs_4(D)->fs_type,
	beq	.L33	@,
	cmp	r3, #1	@ fs_4(D)->fs_type,
	bne	.L40	@,
	add	r7, r1, r1, lsr #1	@, bc, clst, clst,
	add	r1, r6, r7, lsr #9	@,, fsect, bc,
	bl	move_window	@
	cmp	r0, #0	@
	bne	.L40	@
	lsls	r2, r7, #23	@ tmp210, bc,
	lsrs	r1, r2, #23	@ tmp210, tmp210,
	adds	r0, r5, r1	@ tmp212, fs, tmp210
	adds	r7, r7, #1	@ bc, bc,
	ldrb	r8, [r0, #36]	@ zero_extendqisi2	@ D.5754, fs_4(D)->win
	add	r1, r6, r7, lsr #9	@,, fsect, bc,
	mov	r0, r5	@, fs
	bl	move_window	@
	cmp	r0, #0	@
	bne	.L40	@
	lsls	r0, r7, #23	@ tmp216, bc,
	lsrs	r7, r0, #23	@ tmp216, tmp216,
	adds	r7, r5, r7	@ tmp218, fs, tmp216
	ldrb	r3, [r7, #36]	@ zero_extendqisi2	@ tmp219, fs_4(D)->win
	orr	r0, r8, r3, lsl #8	@, wc, D.5754, tmp219,
	lsls	r3, r4, #31	@, clst,
	bpl	.L34	@,
	lsrs	r0, r0, #4	@ D.5745, wc,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L34:
	lsls	r1, r0, #20	@ D.5745, wc,
	lsrs	r0, r1, #20	@ D.5745, D.5745,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L32:
	add	r1, r6, r1, lsr #8	@,, fsect, clst,
	bl	move_window	@
	cbnz	r0, .L40	@,
	lsls	r4, r4, #24	@ tmp228, clst,
	add	r5, r5, r4, lsr #23	@, tmp229, fs, tmp228,
	ldrb	r2, [r5, #37]	@ zero_extendqisi2	@ tmp230, MEM[(BYTE *)fs_4(D)].win
	ldrb	ip, [r5, #36]	@ zero_extendqisi2	@ tmp234, MEM[(BYTE *)fs_4(D)].win
	orr	r0, ip, r2, lsl #8	@, D.5745, tmp234, tmp230,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L33:
	add	r1, r6, r1, lsr #7	@,, fsect, clst,
	bl	move_window	@
	cbnz	r0, .L41	@,
	lsls	r4, r4, #25	@ tmp242, clst,
	add	r5, r5, r4, lsr #23	@, tmp243, fs, tmp242,
	ldrb	r3, [r5, #38]	@ zero_extendqisi2	@ tmp247, MEM[(BYTE *)fs_4(D)].win
	ldrb	r2, [r5, #39]	@ zero_extendqisi2	@ tmp244, MEM[(BYTE *)fs_4(D)].win
	lsls	r1, r3, #16	@ tmp248, tmp247,
	ldrb	r0, [r5, #36]	@ zero_extendqisi2	@ tmp251, MEM[(BYTE *)fs_4(D)].win
	orr	r8, r1, r2, lsl #24	@, tmp249, tmp248, tmp244,
	orr	lr, r8, r0	@ tmp252, tmp249, tmp251
	ldrb	r8, [r5, #37]	@ zero_extendqisi2	@ tmp254, MEM[(BYTE *)fs_4(D)].win
	orr	r3, lr, r8, lsl #8	@, tmp256, tmp252, tmp254,
	bic	r0, r3, #-268435456	@ D.5745, tmp256,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L36:
	movs	r0, #1	@ D.5745,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L40:
	mov	r0, #-1	@ D.5745,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L41:
	mov	r0, #-1	@ D.5745,
	pop	{r4, r5, r6, r7, r8, pc}	@
	.size	get_fat, .-get_fat
	.section	.text.clust2sect,"ax",%progbits
	.align	1
	.global	clust2sect
	.thumb
	.thumb_func
	.ascii	"clust2sect\000"
	.align	2
	.word	4278190092
	.type	clust2sect, %function
clust2sect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #16]	@ fs_4(D)->max_clust, fs_4(D)->max_clust
	subs	r1, r1, #2	@ clst, clst,
	subs	r3, r2, #2	@ tmp145, fs_4(D)->max_clust,
	cmp	r1, r3	@ clst, tmp145
	bcs	.L45	@,
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ fs_4(D)->csize, fs_4(D)->csize
	ldr	r0, [r0, #28]	@ fs_4(D)->database, fs_4(D)->database
	mla	r0, ip, r1, r0	@ D.5735, fs_4(D)->csize, clst, fs_4(D)->database
	bx	lr	@
.L45:
	movs	r0, #0	@ D.5735,
	bx	lr	@
	.size	clust2sect, .-clust2sect
	.section	.text.dir_next.isra.0,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"dir_next.isra.0\000"
	.align	2
	.word	4278190096
	.type	dir_next.isra.0, %function
dir_next.isra.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r1, [r0, #6]	@, dj_1(D)->index
	push	{r3, r4, r5, lr}	@
	adds	r5, r1, #1	@ tmp164, dj_1(D)->index,
	uxth	r5, r5	@ i, tmp164
	mov	r4, r0	@ dj, dj
	cmp	r5, #0	@ i
	beq	.L52	@
	ldr	r3, [r0, #16]	@ D.5859, dj_1(D)->sect
	cmp	r3, #0	@ D.5859
	beq	.L52	@
	lsls	r2, r5, #28	@, i,
	bne	.L48	@,
	ldr	r1, [r0, #12]	@ D.5855, dj_1(D)->clust
	adds	r3, r3, #1	@ tmp168, D.5859,
	str	r3, [r0, #16]	@ tmp168, dj_1(D)->sect
	ldr	r0, [r0, #0]	@ D.5854, dj_1(D)->fs
	cbnz	r1, .L49	@ D.5855,
	ldrh	r0, [r0, #8]	@ D.5854_9->n_rootdir, D.5854_9->n_rootdir
	cmp	r0, r5	@ D.5854_9->n_rootdir, i
	bls	.L52	@,
	b	.L48	@
.L49:
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.5854_13->csize, D.5854_13->csize
	subs	r2, r3, #1	@ tmp172, D.5854_13->csize,
	ands	r3, r2, r5, lsr #4	@,, tmp172, i,
	bne	.L48	@,
	bl	get_fat	@
	cmp	r0, #1	@ clst,
	mov	r1, r0	@ clst,
	bls	.L53	@,
	adds	r0, r0, #1	@ clst, clst,
	beq	.L54	@,
	ldr	r0, [r4, #0]	@ D.5854, dj_1(D)->fs
	ldr	r2, [r0, #16]	@ D.5854_22->max_clust, D.5854_22->max_clust
	cmp	r1, r2	@ clst, D.5854_22->max_clust
	bcs	.L55	@,
	str	r1, [r4, #12]	@ clst, dj_1(D)->clust
	bl	clust2sect	@
	str	r0, [r4, #16]	@, dj_1(D)->sect
.L48:
	ldr	r1, [r4, #0]	@ dj_1(D)->fs, dj_1(D)->fs
	and	r0, r5, #15	@ tmp180, i,
	strh	r5, [r4, #6]	@ movhi	@ i, dj_1(D)->index
	adds	r1, r1, #36	@ tmp178, dj_1(D)->fs,
	lsls	r5, r0, #5	@ tmp181, tmp180,
	adds	r5, r1, r5	@ tmp182, tmp178, tmp181
	str	r5, [r4, #20]	@ tmp182, dj_1(D)->dir
	movs	r0, #0	@ D.5858,
	pop	{r3, r4, r5, pc}	@
.L52:
	movs	r0, #4	@ D.5858,
	pop	{r3, r4, r5, pc}	@
.L53:
	movs	r0, #2	@ D.5858,
	pop	{r3, r4, r5, pc}	@
.L54:
	movs	r0, #1	@ D.5858,
	pop	{r3, r4, r5, pc}	@
.L55:
	movs	r0, #4	@ D.5858,
	pop	{r3, r4, r5, pc}	@
	.size	dir_next.isra.0, .-dir_next.isra.0
	.section	.text.dir_seek.constprop.1,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"dir_seek.constprop.1\000"
	.align	2
	.word	4278190104
	.type	dir_seek.constprop.1, %function
dir_seek.constprop.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #8]	@ clst, dj_1(D)->sclust
	push	{r3, r4, r5, lr}	@
	movs	r3, #0	@,
	cmp	r1, #1	@ clst,
	mov	r4, r0	@ dj, dj
	strh	r3, [r0, #6]	@ movhi	@, dj_1(D)->index
	beq	.L67	@,
	ldr	r5, [r0, #0]	@ D.5926, dj_1(D)->fs
	ldr	r0, [r5, #16]	@ D.5926_3->max_clust, D.5926_3->max_clust
	cmp	r1, r0	@ clst, D.5926_3->max_clust
	bcs	.L67	@,
	cbnz	r1, .L58	@ clst,
	ldrb	r1, [r5, #0]	@ zero_extendqisi2	@ D.5926_3->fs_type, D.5926_3->fs_type
	cmp	r1, #3	@ D.5926_3->fs_type,
	bne	.L59	@,
	ldr	r1, [r5, #24]	@ clst, D.5926_3->dirbase
	cbnz	r1, .L58	@ clst,
.L59:
	ldrh	r2, [r5, #8]	@ D.5926_3->n_rootdir, D.5926_3->n_rootdir
	movs	r3, #0	@ tmp155,
	str	r3, [r4, #12]	@ tmp155, dj_1(D)->clust
	cbz	r2, .L67	@ D.5926_3->n_rootdir,
	ldr	r0, [r5, #24]	@ D.5926_3->dirbase, D.5926_3->dirbase
	str	r0, [r4, #16]	@ D.5926_3->dirbase, dj_1(D)->sect
	b	.L60	@
.L58:
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ D.5926_3->csize, D.5926_3->csize
	cbnz	r2, .L61	@ D.5926_3->csize,
.L69:
	ldr	r0, [r4, #0]	@, dj_1(D)->fs
	bl	get_fat	@
	adds	r3, r0, #1	@, clst,
	mov	r1, r0	@ clst,
	beq	.L66	@,
	cmp	r0, #1	@ clst,
	bls	.L67	@,
	ldr	r2, [r4, #0]	@ dj_1(D)->fs, dj_1(D)->fs
	ldr	r3, [r2, #16]	@ D.5926_24->max_clust, D.5926_24->max_clust
	cmp	r0, r3	@ clst, D.5926_24->max_clust
	bcc	.L69	@,
	b	.L70	@
.L61:
	str	r1, [r4, #12]	@ clst, dj_1(D)->clust
	mov	r0, r5	@, D.5926
	bl	clust2sect	@
	str	r0, [r4, #16]	@, dj_1(D)->sect
.L60:
	adds	r5, r5, #36	@ tmp165, D.5926,
	str	r5, [r4, #20]	@ tmp165, dj_1(D)->dir
	movs	r0, #0	@ D.5924,
	pop	{r3, r4, r5, pc}	@
.L66:
	movs	r0, #1	@ D.5924,
	pop	{r3, r4, r5, pc}	@
.L67:
	movs	r0, #2	@ D.5924,
	pop	{r3, r4, r5, pc}	@
.L70:
	movs	r0, #2	@ D.5924,
	pop	{r3, r4, r5, pc}	@
	.size	dir_seek.constprop.1, .-dir_seek.constprop.1
	.section	.text.follow_path,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.ascii	"follow_path\000"
	.align	2
	.word	4278190092
	.type	follow_path, %function
follow_path:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	mov	r4, r0	@ dj, dj
.L72:
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ D.4930, MEM[base: path_163, offset: 0B]
	mov	r5, r1	@ path, ivtmp.150
	adds	r1, r1, #1	@ ivtmp.150, path,
	cmp	r3, #32	@ D.4930,
	beq	.L72	@,
	cmp	r3, #47	@ D.4930,
	beq	.L73	@,
	cmp	r3, #92	@ D.4930,
	bne	.L74	@,
.L73:
	adds	r5, r5, #1	@ path, path,
.L74:
	movs	r6, #0	@ tmp219,
	str	r6, [r4, #8]	@ tmp219, dj_12(D)->sclust
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ *path_59, *path_59
	cmp	r3, #31	@ *path_59,
	bhi	.L113	@,
	mov	r0, r4	@, dj
	bl	dir_seek.constprop.1	@
	str	r6, [r4, #20]	@ tmp219, dj_12(D)->dir
	pop	{r4, r5, r6, r7, r8, pc}	@
.L113:
	ldr	r0, [r4, #24]	@ d, dj_12(D)->fn
	movs	r3, #0	@ ivtmp.126,
.L78:
	movs	r2, #32	@ tmp223,
	strb	r2, [r0, r3]	@ tmp223, MEM[base: d_66, index: ivtmp.126_199, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.126, ivtmp.126,
	cmp	r3, #11	@ ivtmp.126,
	bne	.L78	@,
	movs	r1, #0	@ i,
	mov	r6, r1	@ si, i
	movs	r7, #8	@ ni,
	mov	r2, r1	@ b, i
.L114:
	ldrb	r3, [r5, r6]	@ zero_extendqisi2	@ c, MEM[base: path_58, index: D.6106_118, offset: 0B]
	adds	r6, r6, #1	@ si, si,
	cmp	r3, #32	@ c,
	bls	.L99	@,
	cmp	r3, #47	@ c,
	beq	.L101	@,
	cmp	r3, #92	@ c,
	beq	.L101	@,
	cmp	r3, #46	@ c,
	beq	.L81	@,
	cmp	r1, r7	@ i, ni
	blt	.L82	@,
.L81:
	cmp	r7, #8	@ ni,
	bne	.L104	@,
	cmp	r3, #46	@ c,
	bne	.L104	@,
	lsls	r1, r2, #2	@ tmp228, b,
	uxtb	r2, r1	@ b, tmp228
	mov	r1, r7	@ i, ni
	movs	r7, #11	@ ni,
	b	.L114	@
.L82:
	tst	r3, #128	@ c,
	beq	.L84	@,
	ldr	ip, .L116	@ tmp230,
	subs	r3, r3, #128	@ D.6019, c,
	ldrb	r3, [ip, r3]	@ zero_extendqisi2	@ c, cvt
.L84:
	ldr	ip, .L116+4	@ ivtmp.115,
.L86:
	ldrb	r8, [ip], #1	@ zero_extendqisi2	@ D.6033, MEM[base: D.6098_171, offset: 0B]
	cmp	r8, #0	@ D.6033
	beq	.L85	@
	cmp	r8, r3	@ D.6033, c
	bne	.L86	@,
	b	.L104	@
.L85:
	sub	ip, r3, #65	@ tmp231, c,
	uxtb	ip, ip	@ tmp232, tmp231
	cmp	ip, #25	@ tmp232,
	bhi	.L87	@,
	orr	r2, r2, #2	@ b, b,
	b	.L88	@
.L87:
	sub	ip, r3, #97	@ tmp234, c,
	uxtb	ip, ip	@ tmp235, tmp234
	cmp	ip, #25	@ tmp235,
	bhi	.L88	@,
	subs	r3, r3, #32	@ tmp237, c,
	orr	r2, r2, #1	@ b, b,
	uxtb	r3, r3	@ c, tmp237
.L88:
	strb	r3, [r0, r1]	@ c, *D.6017_90
	adds	r1, r1, #1	@ i, i,
	b	.L114	@
.L99:
	movs	r3, #4	@ c,
	b	.L80	@
.L101:
	movs	r3, #0	@ c,
.L80:
	cmp	r1, #0	@ i
	beq	.L104	@
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ MEM[(BYTE *)d_66], MEM[(BYTE *)d_66]
	cmp	lr, #229	@ MEM[(BYTE *)d_66],
	bne	.L89	@,
	movs	r1, #5	@ tmp240,
	strb	r1, [r0, #0]	@ tmp240, MEM[(BYTE *)d_66]
.L89:
	cmp	r7, #8	@ ni,
	bne	.L90	@,
	lsls	r2, r2, #2	@ tmp245, b,
	uxtb	r2, r2	@ b, tmp245
.L90:
	and	ip, r2, #3	@ tmp246, b,
	cmp	ip, #1	@ tmp246,
	and	r1, r2, #12	@ tmp248, b,
	it	eq
	orreq	r3, r3, #16	@ c, c,
	cmp	r1, #4	@ tmp248,
	it	eq
	orreq	r3, r3, #8	@ c, c,
	strb	r3, [r0, #11]	@ c, MEM[(BYTE *)d_66 + 11B]
	mov	r0, r4	@, dj
	bl	dir_seek.constprop.1	@
.L115:
	cbnz	r0, .L93	@ res,
	ldr	r0, [r4, #0]	@, dj_12(D)->fs
	ldr	r1, [r4, #16]	@, dj_12(D)->sect
	bl	move_window	@
	cbnz	r0, .L93	@ res,
	ldr	r2, [r4, #20]	@ d, dj_12(D)->dir
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ MEM[(BYTE *)d_129], MEM[(BYTE *)d_129]
	cbz	r3, .L105	@ MEM[(BYTE *)d_129],
	ldrb	r1, [r2, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)d_129 + 11B], MEM[(BYTE *)d_129 + 11B]
	lsls	r1, r1, #28	@, MEM[(BYTE *)d_129 + 11B],
	bmi	.L94	@,
	ldr	r1, [r4, #24]	@ s, dj_12(D)->fn
	mov	r3, r0	@ ivtmp.91, res
	b	.L95	@
.L96:
	cmp	r3, #11	@ ivtmp.91,
	beq	.L93	@,
.L95:
	ldrb	lr, [r2, r3]	@ zero_extendqisi2	@ D.6055, MEM[base: d_129, index: ivtmp.91_181, offset: 0B]
	ldrb	r7, [r1, r3]	@ zero_extendqisi2	@ D.6057, MEM[base: s_134, index: ivtmp.91_181, offset: 0B]
	adds	r3, r3, #1	@ ivtmp.91, ivtmp.91,
	cmp	lr, r7	@ D.6055, D.6057
	beq	.L96	@,
.L94:
	mov	r0, r4	@, dj
	bl	dir_next.isra.0	@
	b	.L115	@
.L105:
	movs	r0, #4	@ res,
.L93:
	ldr	r3, [r4, #24]	@ dj_12(D)->fn, dj_12(D)->fn
	ldrb	ip, [r3, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)D.4938_18 + 11B], MEM[(BYTE *)D.4938_18 + 11B]
	and	r2, ip, #4	@ tmp260, MEM[(BYTE *)D.4938_18 + 11B],
	uxtb	r3, r2	@ last, tmp260
	cbz	r0, .L98	@ res,
	cmp	r0, #4	@ res,
	bne	.L77	@,
	cmp	r3, #0	@ last,
	it	eq	@
	moveq	r0, #5	@, res,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L98:
	cbnz	r3, .L77	@ last,
	ldr	r3, [r4, #20]	@ dir, dj_12(D)->dir
	ldrb	r0, [r3, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_23 + 11B], MEM[(BYTE *)dir_23 + 11B]
	lsls	r2, r0, #27	@, MEM[(BYTE *)dir_23 + 11B],
	bpl	.L107	@,
	ldrb	r0, [r3, #20]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_23 + 20B], MEM[(BYTE *)dir_23 + 20B]
	ldrb	r1, [r3, #27]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_23 + 27B], MEM[(BYTE *)dir_23 + 27B]
	ldrb	r2, [r3, #26]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_23 + 26B], MEM[(BYTE *)dir_23 + 26B]
	adds	r5, r5, r6	@ path, path, si
	ldrb	r6, [r3, #21]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_23 + 21B], MEM[(BYTE *)dir_23 + 21B]
	orr	r7, r2, r1, lsl #8	@, tmp277, MEM[(BYTE *)dir_23 + 26B], MEM[(BYTE *)dir_23 + 27B],
	orr	lr, r0, r6, lsl #8	@, tmp269, MEM[(BYTE *)dir_23 + 20B], MEM[(BYTE *)dir_23 + 21B],
	orr	r6, r7, lr, lsl #16	@, tmp278, tmp277, tmp269,
	str	r6, [r4, #8]	@ tmp278, dj_12(D)->sclust
	b	.L113	@
.L104:
	movs	r0, #6	@ res,
	pop	{r4, r5, r6, r7, r8, pc}	@
.L107:
	movs	r0, #5	@ res,
.L77:
	pop	{r4, r5, r6, r7, r8, pc}	@
.L117:
	.align	2
.L116:
	.word	.LANCHOR0
	.word	.LC0
	.size	follow_path, .-follow_path
	.section	.text.chk_mounted,"ax",%progbits
	.align	1
	.global	chk_mounted
	.thumb
	.thumb_func
	.ascii	"chk_mounted\000"
	.align	2
	.word	4278190092
	.type	chk_mounted, %function
chk_mounted:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r3, [r0, #0]	@ p, *path_9(D)
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ *p_10, *p_10
	subs	r2, r2, #48	@ vol, *p_10,
	cmp	r2, #9	@ vol,
	bhi	.L119	@,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ MEM[(const XCHAR *)p_10 + 1B], MEM[(const XCHAR *)p_10 + 1B]
	cmp	r4, #58	@ MEM[(const XCHAR *)p_10 + 1B],
	bne	.L119	@,
	adds	r3, r3, #2	@ tmp288, p,
	str	r3, [r0, #0]	@ tmp288, *path_9(D)
	cmp	r2, #0	@ vol
	bne	.L128	@
.L119:
	ldr	r0, .L138	@ tmp289,
	ldr	r4, [r0, #0]	@ fs, FatFs
	str	r4, [r1, #0]	@ fs, *rfs_21(D)
	cmp	r4, #0	@ fs
	beq	.L129	@
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ fs_20->fs_type, fs_20->fs_type
	cbz	r1, .L121	@ fs_20->fs_type,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@, fs_20->drive
	bl	disk_status	@
	ands	r0, r0, #1	@ tmp293,,
	beq	.L120	@,
.L121:
	movs	r0, #0	@ tmp294,
	strb	r0, [r4, #0]	@ tmp294, fs_20->fs_type
	strb	r0, [r4, #1]	@ tmp294, fs_20->drive
	bl	disk_initialize	@
	ands	r5, r0, #1	@ tmp299,,
	bne	.L131	@,
	mov	r0, r4	@, fs
	mov	r1, r5	@, tmp299
	bl	check_fs	@
	cmp	r0, #1	@ fmt,
	bne	.L122	@,
	ldrb	r2, [r4, #486]	@ zero_extendqisi2	@ MEM[(BYTE *)fs_20 + 486B], MEM[(BYTE *)fs_20 + 486B]
	cmp	r2, #0	@ MEM[(BYTE *)fs_20 + 486B]
	beq	.L135	@
	ldrb	r2, [r4, #492]	@ zero_extendqisi2	@ MEM[(BYTE *)fs_20 + 492B], MEM[(BYTE *)fs_20 + 492B]
	ldrb	r3, [r4, #493]	@ zero_extendqisi2	@ MEM[(BYTE *)fs_20 + 493B], MEM[(BYTE *)fs_20 + 493B]
	lsls	r1, r2, #16	@ tmp305, MEM[(BYTE *)fs_20 + 492B],
	ldrb	lr, [r4, #490]	@ zero_extendqisi2	@ MEM[(BYTE *)fs_20 + 490B], MEM[(BYTE *)fs_20 + 490B]
	orr	r0, r1, r3, lsl #24	@, tmp306, tmp305, MEM[(BYTE *)fs_20 + 493B],
	ldrb	ip, [r4, #491]	@ zero_extendqisi2	@ MEM[(BYTE *)fs_20 + 491B], MEM[(BYTE *)fs_20 + 491B]
	orr	r5, r0, lr	@ tmp308, tmp306, MEM[(BYTE *)fs_20 + 490B]
	orr	r5, r5, ip, lsl #8	@, bsect, tmp308, MEM[(BYTE *)fs_20 + 491B],
	mov	r0, r4	@, fs
	mov	r1, r5	@, bsect
	bl	check_fs	@
.L122:
	cmp	r0, #3	@ fmt,
	beq	.L134	@,
	cmp	r0, #0	@ fmt
	bne	.L135	@
	ldrb	r3, [r4, #48]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r1, [r4, #47]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	r0, r1, r3, lsl #8	@, tmp317, fs_20->win, fs_20->win,
	cmp	r0, #512	@ tmp317,
	bne	.L136	@,
	ldrb	r6, [r4, #59]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r7, [r4, #58]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orrs	r2, r7, r6, lsl #8	@, fsize, fs_20->win, fs_20->win,
	bne	.L123	@,
	ldrb	r3, [r4, #74]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	lr, [r4, #75]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	lsls	r6, r3, #16	@ tmp328, fs_20->win,
	ldrb	r1, [r4, #72]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	r0, r6, lr, lsl #24	@, tmp329, tmp328, fs_20->win,
	ldrb	r2, [r4, #73]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	ip, r0, r1	@ tmp331, tmp329, fs_20->win
	orr	r2, ip, r2, lsl #8	@, fsize, tmp331, fs_20->win,
.L123:
	ldrb	r7, [r4, #53]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r1, [r4, #54]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r3, [r4, #52]	@ zero_extendqisi2	@ D.5596, fs_20->win
	ldrb	r6, [r4, #51]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r0, [r4, #50]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	r1, r7, r1, lsl #8	@, D.5617, fs_20->win, fs_20->win,
	ldrb	ip, [r4, #55]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	r7, [r4, #56]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	str	r2, [r4, #12]	@ fsize, fs_20->sects_fat
	strb	r3, [r4, #3]	@ D.5596, fs_20->n_fats
	muls	r2, r3, r2	@ fsize, D.5596
	orr	r3, r0, r6, lsl #8	@, D.5607, fs_20->win, fs_20->win,
	ldrb	r0, [r4, #49]	@ zero_extendqisi2	@ D.5609, fs_20->win
	adds	r5, r5, r3	@ D.5608, bsect, D.5607
	orrs	r6, ip, r7, lsl #8	@, tsect, fs_20->win, fs_20->win,
	str	r5, [r4, #20]	@ D.5608, fs_20->fatbase
	strb	r0, [r4, #2]	@ D.5609, fs_20->csize
	strh	r1, [r4, #8]	@ movhi	@ D.5617, fs_20->n_rootdir
	bne	.L124	@,
	ldrb	r7, [r4, #70]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	lr, [r4, #71]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	lsls	r6, r7, #16	@ tmp358, fs_20->win,
	ldrb	r7, [r4, #68]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	ip, r6, lr, lsl #24	@, tmp359, tmp358, fs_20->win,
	orr	lr, ip, r7	@ tmp361, tmp359, fs_20->win
	ldrb	r7, [r4, #69]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	r6, lr, r7, lsl #8	@, tsect, tmp361, fs_20->win,
.L124:
	subs	r3, r6, r3	@ tmp365, tsect, D.5607
	lsrs	r1, r1, #4	@ D.5646, D.5617,
	rsb	lr, r2, r3	@ tmp366, fsize, tmp365
	rsb	ip, r1, lr	@ tmp367, D.5646, tmp366
	udiv	r3, ip, r0	@ tmp369, tmp367, D.5609
	adds	r3, r3, #2	@ mclst, tmp369,
	movw	r0, #4086	@ tmp370,
	cmp	r3, r0	@ mclst, tmp370
	str	r3, [r4, #16]	@ mclst, fs_20->max_clust
	bls	.L137	@,
	movw	r0, #65526	@ tmp371,
	cmp	r3, r0	@ mclst, tmp371
	bhi	.L126	@,
	movs	r3, #2	@ fmt,
	b	.L125	@
.L137:
	movs	r3, #1	@ fmt,
.L125:
	adds	r0, r2, r5	@ tmp372, fsize, D.5608
	str	r0, [r4, #24]	@ tmp372, fs_20->dirbase
.L127:
	adds	r5, r5, r1	@ tmp373, D.5608, D.5646
	adds	r0, r5, r2	@ tmp374, tmp373, fsize
	ldr	r2, .L138+4	@ tmp377,
	strb	r3, [r4, #0]	@ fmt, fs_20->fs_type
	ldrh	r3, [r2, #0]	@, Fsid
	str	r0, [r4, #28]	@ tmp374, fs_20->database
	adds	r1, r3, #1	@ tmp379, Fsid,
	movs	r0, #0	@ tmp376,
	str	r0, [r4, #32]	@ tmp376, fs_20->winsect
	strh	r1, [r2, #0]	@ movhi	@ Fsid.13, Fsid
	strh	r1, [r4, #6]	@ movhi	@ Fsid.13, fs_20->id
	pop	{r3, r4, r5, r6, r7, pc}	@
.L128:
	movs	r0, #11	@ D.5521,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L129:
	movs	r0, #12	@ D.5521,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L131:
	movs	r0, #3	@ D.5521,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L134:
	movs	r0, #1	@ D.5521,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L135:
	movs	r0, #13	@ D.5521,
	pop	{r3, r4, r5, r6, r7, pc}	@
.L136:
	movs	r0, #13	@ D.5521,
.L120:
	pop	{r3, r4, r5, r6, r7, pc}	@
.L126:
	ldrb	r0, [r4, #82]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	ldrb	ip, [r4, #83]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	lsls	r3, r0, #16	@ tmp387, fs_20->win,
	ldrb	r0, [r4, #80]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	r3, r3, ip, lsl #24	@, tmp388, tmp387, fs_20->win,
	ldrb	lr, [r4, #81]	@ zero_extendqisi2	@ fs_20->win, fs_20->win
	orr	ip, r3, r0	@ tmp390, tmp388, fs_20->win
	orr	r3, ip, lr, lsl #8	@, tmp393, tmp390, fs_20->win,
	str	r3, [r4, #24]	@ tmp393, fs_20->dirbase
	movs	r3, #3	@ fmt,
	b	.L127	@
.L139:
	.align	2
.L138:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.size	chk_mounted, .-chk_mounted
	.section	.text.f_mount,"ax",%progbits
	.align	1
	.global	f_mount
	.thumb
	.thumb_func
	.ascii	"f_mount\000"
	.align	2
	.word	4278190088
	.type	f_mount, %function
f_mount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r0, .L144	@ vol,
	ldr	r2, .L145	@ tmp139,
	ldr	r3, [r2, #0]	@ rfs, FatFs
	cbz	r3, .L142	@ rfs,
	strb	r0, [r3, #0]	@ vol, rfs_5->fs_type
.L142:
	cbz	r1, .L143	@ fs,
	movs	r3, #0	@ tmp142,
	strb	r3, [r1, #0]	@ tmp142, fs_6(D)->fs_type
.L143:
	str	r1, [r2, #0]	@ fs, FatFs
	movs	r0, #0	@ D.5503,
	bx	lr	@
.L144:
	movs	r0, #11	@ D.5503,
	bx	lr	@
.L146:
	.align	2
.L145:
	.word	.LANCHOR1
	.size	f_mount, .-f_mount
	.section	.text.f_open,"ax",%progbits
	.align	1
	.global	f_open
	.thumb
	.thumb_func
	.ascii	"f_open\000"
	.align	2
	.word	4278190088
	.type	f_open, %function
f_open:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	sub	sp, sp, #52	@,,
	mov	r4, r0	@ fp, fp
	mov	r5, r2	@ mode, mode
	add	r0, sp, #48	@ tmp182,,
	movs	r2, #0	@ tmp181,
	str	r1, [r0, #-44]!	@ path, path
	str	r2, [r4, #0]	@ tmp181, fp_2(D)->fs
	add	r1, sp, #8	@,,
	bl	chk_mounted	@
	cmp	r0, #0	@ res
	bne	.L148	@
	add	r3, sp, #36	@ tmp185,,
	add	r0, sp, #8	@,,
	ldr	r1, [sp, #4]	@, path
	str	r3, [sp, #32]	@ tmp185, dj.fn
	bl	follow_path	@
	cbnz	r0, .L148	@ res,
	ldr	r3, [sp, #28]	@ dir, dj.dir
	cbz	r3, .L150	@ dir,
	ldrb	r2, [r3, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 11B], MEM[(BYTE *)dir_10 + 11B]
	lsls	r2, r2, #27	@, MEM[(BYTE *)dir_10 + 11B],
	bmi	.L150	@,
	and	r1, r5, #1	@ tmp190, mode,
	strb	r1, [r4, #6]	@ tmp190, fp_2(D)->flag
	ldrb	r5, [r3, #21]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 21B], MEM[(BYTE *)dir_10 + 21B]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 20B], MEM[(BYTE *)dir_10 + 20B]
	ldrb	r1, [r3, #26]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 26B], MEM[(BYTE *)dir_10 + 26B]
	orr	ip, r2, r5, lsl #8	@, tmp198, MEM[(BYTE *)dir_10 + 20B], MEM[(BYTE *)dir_10 + 21B],
	ldrb	r5, [r3, #27]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 27B], MEM[(BYTE *)dir_10 + 27B]
	orr	lr, r1, r5, lsl #8	@, tmp206, MEM[(BYTE *)dir_10 + 26B], MEM[(BYTE *)dir_10 + 27B],
	orr	r2, lr, ip, lsl #16	@, tmp207, tmp206, tmp198,
	str	r2, [r4, #16]	@ tmp207, fp_2(D)->org_clust
	ldrb	r1, [r3, #30]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 30B], MEM[(BYTE *)dir_10 + 30B]
	ldrb	ip, [r3, #31]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 31B], MEM[(BYTE *)dir_10 + 31B]
	lsls	r2, r1, #16	@ tmp211, MEM[(BYTE *)dir_10 + 30B],
	ldrb	r1, [r3, #28]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 28B], MEM[(BYTE *)dir_10 + 28B]
	orr	r2, r2, ip, lsl #24	@, tmp212, tmp211, MEM[(BYTE *)dir_10 + 31B],
	ldrb	ip, [r3, #29]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_10 + 29B], MEM[(BYTE *)dir_10 + 29B]
	orr	lr, r2, r1	@ tmp214, tmp212, MEM[(BYTE *)dir_10 + 28B]
	ldr	r3, [sp, #8]	@ D.5498, dj.fs
	movs	r2, #255	@ tmp219,
	orr	r1, lr, ip, lsl #8	@, tmp217, tmp214, MEM[(BYTE *)dir_10 + 29B],
	strb	r2, [r4, #7]	@ tmp219, fp_2(D)->csect
	str	r1, [r4, #12]	@ tmp217, fp_2(D)->fsize
	ldrh	r1, [r3, #6]	@, D.5498_58->id
	str	r0, [r4, #8]	@ res, fp_2(D)->fptr
	str	r0, [r4, #24]	@ res, fp_2(D)->dsect
	str	r3, [r4, #0]	@ D.5498, fp_2(D)->fs
	strh	r1, [r4, #4]	@ movhi	@, fp_2(D)->id
	b	.L148	@
.L150:
	movs	r0, #4	@ res,
.L148:
	add	sp, sp, #52	@,,
	pop	{r4, r5, pc}
	.size	f_open, .-f_open
	.section	.text.f_read,"ax",%progbits
	.align	1
	.global	f_read
	.thumb
	.thumb_func
	.ascii	"f_read\000"
	.align	2
	.word	4278190088
	.type	f_read, %function
f_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, sl, lr}	@
	mov	r4, r0	@ fp, fp
	mov	r8, r3	@ br, br
	movs	r3, #0	@ tmp219,
	mov	r9, r1	@ buff, buff
	str	r3, [r8, #0]	@ tmp219, *br_10(D)
	ldr	r0, [r0, #0]	@, fp_11(D)->fs
	ldrh	r1, [r4, #4]	@, fp_11(D)->id
	mov	r6, r2	@ btr, btr
	bl	validate	@
	mov	r5, r0	@ res,
	cmp	r0, #0	@ res
	bne	.L152	@
	ldrb	r3, [r4, #6]	@ zero_extendqisi2	@ D.5376, fp_11(D)->flag
	lsls	r2, r3, #24	@, D.5376,
	bmi	.L169	@,
	lsls	r0, r3, #31	@, D.5376,
	bpl	.L170	@,
	ldr	r7, [r4, #12]	@ fp_11(D)->fsize, fp_11(D)->fsize
	ldr	r0, [r4, #8]	@ fp_11(D)->fptr, fp_11(D)->fptr
	subs	r7, r7, r0	@ tmp224, fp_11(D)->fsize, fp_11(D)->fptr
	cmp	r6, r7	@ btr, tmp224
	it	cc
	movcc	r7, r6	@ btr, btr
	b	.L153	@
.L168:
	ldr	r2, [r4, #8]	@ D.5385, fp_11(D)->fptr
	lsls	r3, r2, #23	@ tmp227, D.5385,
	lsrs	r1, r3, #23	@ tmp227, tmp227,
	cmp	r1, #0	@ tmp227
	bne	.L154	@
	ldr	r0, [r4, #0]	@ D.5371, fp_11(D)->fs
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ fp_11(D)->csect, fp_11(D)->csect
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.5371_31->csize, D.5371_31->csize
	cmp	ip, r1	@ fp_11(D)->csect, D.5371_31->csize
	bcc	.L155	@,
	cbnz	r2, .L156	@ D.5385,
	ldr	r0, [r4, #16]	@ clst, fp_11(D)->org_clust
	b	.L157	@
.L156:
	ldr	r1, [r4, #20]	@, fp_11(D)->curr_clust
	bl	get_fat	@
.L157:
	cmp	r0, #1	@ clst,
	bls	.L171	@,
.L158:
	adds	r1, r0, #1	@, clst,
	beq	.L172	@,
.L159:
	movs	r2, #0	@ tmp239,
	str	r0, [r4, #20]	@ clst, fp_11(D)->curr_clust
	strb	r2, [r4, #7]	@ tmp239, fp_11(D)->csect
.L155:
	ldr	sl, [r4, #0]	@ D.5371, fp_11(D)->fs
	ldr	r1, [r4, #20]	@, fp_11(D)->curr_clust
	mov	r0, sl	@, D.5371
	bl	clust2sect	@
	cbnz	r0, .L160	@ sect,
.L171:
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ fp_11(D)->flag, fp_11(D)->flag
	orn	r5, r0, #127	@ tmp243, fp_11(D)->flag,
	strb	r5, [r4, #6]	@ tmp243, fp_11(D)->flag
	b	.L169	@
.L160:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ D.5391, fp_11(D)->csect
	lsrs	r6, r7, #9	@ cc, btr,
	add	r2, r0, r3	@ sect, sect, D.5391
	beq	.L161	@,
	ldrb	lr, [sl, #2]	@ zero_extendqisi2	@ D.5392, D.5371_45->csize
	adds	r1, r6, r3	@ tmp245, cc, D.5391
	cmp	r1, lr	@ tmp245, D.5392
	it	hi
	rsbhi	r6, r3, lr	@ cc, D.5391, D.5392
	ldrb	r0, [sl, #1]	@ zero_extendqisi2	@, D.5371_45->drive
	mov	r1, r9	@, rbuff
	uxtb	r3, r6	@, cc
	bl	disk_read	@
	cbnz	r0, .L172	@,
.L163:
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ fp_11(D)->csect, fp_11(D)->csect
	adds	r3, r6, r2	@ tmp256, cc, fp_11(D)->csect
	strb	r3, [r4, #7]	@ tmp256, fp_11(D)->csect
	lsls	r6, r6, #9	@ rcnt, cc,
	b	.L164	@
.L161:
	adds	r6, r3, #1	@ tmp258, D.5391,
	str	r2, [r4, #24]	@ sect, fp_11(D)->dsect
	strb	r6, [r4, #7]	@ tmp258, fp_11(D)->csect
.L154:
	ldr	r0, [r4, #0]	@, fp_11(D)->fs
	ldr	r1, [r4, #24]	@, fp_11(D)->dsect
	ldr	r6, [r4, #8]	@ D.5385, fp_11(D)->fptr
	bl	move_window	@
	cbz	r0, .L165	@ tmp260,
.L172:
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ fp_11(D)->flag, fp_11(D)->flag
	orn	r5, r0, #127	@ tmp263, fp_11(D)->flag,
	strb	r5, [r4, #6]	@ tmp263, fp_11(D)->flag
	movs	r5, #1	@ res,
	b	.L152	@
.L165:
	ldr	r1, [r4, #8]	@ fp_11(D)->fptr, fp_11(D)->fptr
	lsls	r3, r6, #23	@ tmp265, D.5385,
	lsrs	r6, r3, #23	@ tmp265, tmp265,
	lsls	r2, r1, #23	@ tmp267, fp_11(D)->fptr,
	ldr	r3, [r4, #0]	@ fp_11(D)->fs, fp_11(D)->fs
	lsrs	r1, r2, #23	@ tmp267, tmp267,
	rsb	r6, r6, #512	@ rcnt, tmp265,
	adds	r3, r3, r1	@ tmp271, fp_11(D)->fs, tmp267
	cmp	r7, r6	@ btr, rcnt
	it	cc
	movcc	r6, r7	@ rcnt, btr
	adds	r3, r3, #36	@ s, tmp271,
	b	.L166	@
.L167:
	ldrb	ip, [r3, r0]	@ zero_extendqisi2	@ D.6150, MEM[base: s_95, index: ivtmp.175_155, offset: 0B]
	strb	ip, [r9, r0]	@ D.6150, MEM[base: rbuff_5, index: ivtmp.175_155, offset: 0B]
	adds	r0, r0, #1	@ ivtmp.175, ivtmp.175,
.L166:
	cmp	r0, r6	@ ivtmp.175, rcnt
	bne	.L167	@,
.L164:
	ldr	r3, [r4, #8]	@ fp_11(D)->fptr, fp_11(D)->fptr
	ldr	r2, [r8, #0]	@ *br_10(D), *br_10(D)
	adds	r1, r3, r6	@ tmp275, fp_11(D)->fptr, rcnt
	adds	r0, r2, r6	@ tmp277, *br_10(D), rcnt
	str	r1, [r4, #8]	@ tmp275, fp_11(D)->fptr
	add	r9, r9, r6	@ rbuff, rbuff, rcnt
	str	r0, [r8, #0]	@ tmp277, *br_10(D)
	subs	r7, r7, r6	@ btr, btr, rcnt
.L153:
	cmp	r7, #0	@ btr
	bne	.L168	@
	b	.L152	@
.L169:
	movs	r5, #2	@ res,
	b	.L152	@
.L170:
	movs	r5, #7	@ res,
.L152:
	mov	r0, r5	@, res
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}	@
	.size	f_read, .-f_read
	.section	.text.f_close,"ax",%progbits
	.align	1
	.global	f_close
	.thumb
	.thumb_func
	.ascii	"f_close\000"
	.align	2
	.word	4278190088
	.type	f_close, %function
f_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	mov	r4, r0	@ fp, fp
	ldrh	r1, [r4, #4]	@, fp_1(D)->id
	ldr	r0, [r0, #0]	@, fp_1(D)->fs
	bl	validate	@
	cbnz	r0, .L174	@ res,
	str	r0, [r4, #0]	@ res, fp_1(D)->fs
.L174:
	pop	{r4, pc}	@
	.size	f_close, .-f_close
	.section	.text.f_lseek,"ax",%progbits
	.align	1
	.global	f_lseek
	.thumb
	.thumb_func
	.ascii	"f_lseek\000"
	.align	2
	.word	4278190088
	.type	f_lseek, %function
f_lseek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	mov	r4, r0	@ fp, fp
	mov	r5, r1	@ ofs, ofs
	ldr	r0, [r0, #0]	@, fp_8(D)->fs
	ldrh	r1, [r4, #4]	@, fp_8(D)->id
	bl	validate	@
	mov	r6, r0	@ res,
	cmp	r0, #0	@ res
	bne	.L176	@
	ldrsb	r3, [r4, #6]	@ fp_8(D)->flag, fp_8(D)->flag
	cmp	r3, #0	@ fp_8(D)->flag,
	blt	.L186	@,
	ldr	r1, [r4, #12]	@ fp_8(D)->fsize, fp_8(D)->fsize
	movs	r2, #255	@ tmp186,
	cmp	r5, r1	@ ofs, fp_8(D)->fsize
	it	cs
	movcs	r5, r1	@ ofs, fp_8(D)->fsize
	ldr	r3, [r4, #8]	@ ifptr, fp_8(D)->fptr
	strb	r2, [r4, #7]	@ tmp186, fp_8(D)->csect
	str	r0, [r4, #8]	@ res, fp_8(D)->fptr
	cmp	r5, #0	@ ofs
	beq	.L187	@
	ldr	r0, [r4, #0]	@ fp_8(D)->fs, fp_8(D)->fs
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ D.5310_21->csize, D.5310_21->csize
	lsls	r7, r7, #9	@ bcs, D.5310_21->csize,
	cbz	r3, .L178	@ ifptr,
	subs	r3, r3, #1	@ D.5331, ifptr,
	subs	r2, r5, #1	@ tmp190, ofs,
	udiv	ip, r2, r7	@ tmp192, tmp190, bcs
	udiv	lr, r3, r7	@ tmp194, D.5331, bcs
	cmp	ip, lr	@ tmp192, tmp194
	bcc	.L178	@,
	negs	r1, r7	@ tmp195, bcs
	ands	r3, r3, r1	@, D.5335, D.5331, tmp195
	str	r3, [r4, #8]	@ D.5335, fp_8(D)->fptr
	subs	r5, r5, r3	@ ofs, ofs, D.5335
	ldr	r1, [r4, #20]	@ clst, fp_8(D)->curr_clust
	b	.L179	@
.L178:
	ldr	r1, [r4, #16]	@ clst, fp_8(D)->org_clust
	str	r1, [r4, #20]	@ clst, fp_8(D)->curr_clust
.L179:
	cmp	r1, #0	@ clst
	beq	.L177	@
	b	.L190	@
.L184:
	ldr	r0, [r4, #0]	@, fp_8(D)->fs
	bl	get_fat	@
	adds	r3, r0, #1	@, clst,
	mov	r1, r0	@ clst,
	bne	.L181	@,
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ fp_8(D)->flag, fp_8(D)->flag
	orn	r6, r0, #127	@ tmp198, fp_8(D)->flag,
	strb	r6, [r4, #6]	@ tmp198, fp_8(D)->flag
	movs	r6, #1	@ res,
	b	.L176	@
.L181:
	cmp	r0, #1	@ clst,
	bls	.L191	@,
	ldr	r3, [r4, #0]	@ fp_8(D)->fs, fp_8(D)->fs
	ldr	r2, [r3, #16]	@ D.5310_41->max_clust, D.5310_41->max_clust
	cmp	r0, r2	@ clst, D.5310_41->max_clust
	bcs	.L191	@,
.L183:
	ldr	r2, [r4, #8]	@ fp_8(D)->fptr, fp_8(D)->fptr
	str	r0, [r4, #20]	@ clst, fp_8(D)->curr_clust
	adds	r0, r2, r7	@ tmp207, fp_8(D)->fptr, bcs
	str	r0, [r4, #8]	@ tmp207, fp_8(D)->fptr
	subs	r5, r5, r7	@ ofs, ofs, bcs
.L190:
	cmp	r5, r7	@ ofs, bcs
	bhi	.L184	@,
	ldr	r0, [r4, #8]	@ fp_8(D)->fptr, fp_8(D)->fptr
	lsrs	r7, r5, #9	@ tmp210, ofs,
	adds	r3, r0, r5	@ tmp209, fp_8(D)->fptr, ofs
	lsls	r5, r5, #23	@ tmp212, ofs,
	uxtb	r7, r7	@ D.5349, tmp210
	lsrs	r5, r5, #23	@ tmp212, tmp212,
	str	r3, [r4, #8]	@ tmp209, fp_8(D)->fptr
	strb	r7, [r4, #7]	@ D.5349, fp_8(D)->csect
	cbz	r5, .L189	@ tmp212,
	ldr	r0, [r4, #0]	@, fp_8(D)->fs
	bl	clust2sect	@
	cbnz	r0, .L185	@ nsect,
.L191:
	ldrb	r6, [r4, #6]	@ zero_extendqisi2	@ fp_8(D)->flag, fp_8(D)->flag
	orn	r1, r6, #127	@ tmp216, fp_8(D)->flag,
	strb	r1, [r4, #6]	@ tmp216, fp_8(D)->flag
	b	.L186	@
.L185:
	adds	r1, r0, r7	@ nsect, nsect, D.5349
	adds	r7, r7, #1	@ tmp218, D.5349,
	strb	r7, [r4, #7]	@ tmp218, fp_8(D)->csect
	b	.L177	@
.L187:
	mov	r1, r0	@ nsect, res
	b	.L177	@
.L189:
	mov	r1, r5	@ nsect, tmp212
.L177:
	ldr	r0, [r4, #8]	@ fp_8(D)->fptr, fp_8(D)->fptr
	lsls	r3, r0, #23	@ tmp220, fp_8(D)->fptr,
	lsrs	r2, r3, #23	@ tmp220, tmp220,
	cbz	r2, .L176	@ tmp220,
	ldr	r2, [r4, #24]	@ fp_8(D)->dsect, fp_8(D)->dsect
	cmp	r1, r2	@ nsect, fp_8(D)->dsect
	beq	.L176	@,
	str	r1, [r4, #24]	@ nsect, fp_8(D)->dsect
	b	.L176	@
.L186:
	movs	r6, #2	@ res,
.L176:
	mov	r0, r6	@, res
	pop	{r3, r4, r5, r6, r7, pc}	@
	.size	f_lseek, .-f_lseek
	.section	.text.f_opendir,"ax",%progbits
	.align	1
	.global	f_opendir
	.thumb
	.thumb_func
	.ascii	"f_opendir\000"
	.align	2
	.word	4278190092
	.type	f_opendir, %function
f_opendir:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	sub	sp, sp, #24	@,,
	mov	r4, r0	@ dj, dj
	add	r0, sp, #24	@ tmp165,,
	str	r1, [r0, #-20]!	@ path, path
	movs	r2, #0	@,
	mov	r1, r4	@, dj
	bl	chk_mounted	@
	cbnz	r0, .L193	@ res,
	add	r3, sp, #12	@ tmp167,,
	str	r3, [r4, #24]	@ tmp167, dj_4(D)->fn
	mov	r0, r4	@, dj
	ldr	r1, [sp, #4]	@, path
	bl	follow_path	@
	cbnz	r0, .L194	@ res,
	ldr	r3, [r4, #20]	@ dir, dj_4(D)->dir
	cbz	r3, .L195	@ dir,
	ldrb	r2, [r3, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_9 + 11B], MEM[(BYTE *)dir_9 + 11B]
	lsls	r2, r2, #27	@, MEM[(BYTE *)dir_9 + 11B],
	bpl	.L197	@,
	ldrb	r1, [r3, #21]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_9 + 21B], MEM[(BYTE *)dir_9 + 21B]
	ldrb	r0, [r3, #20]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_9 + 20B], MEM[(BYTE *)dir_9 + 20B]
	ldrb	r2, [r3, #27]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_9 + 27B], MEM[(BYTE *)dir_9 + 27B]
	ldrb	lr, [r3, #26]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_9 + 26B], MEM[(BYTE *)dir_9 + 26B]
	orr	ip, r0, r1, lsl #8	@, tmp177, MEM[(BYTE *)dir_9 + 20B], MEM[(BYTE *)dir_9 + 21B],
	orr	r1, lr, r2, lsl #8	@, tmp185, MEM[(BYTE *)dir_9 + 26B], MEM[(BYTE *)dir_9 + 27B],
	orr	r0, r1, ip, lsl #16	@, tmp186, tmp185, tmp177,
	str	r0, [r4, #8]	@ tmp186, dj_4(D)->sclust
.L195:
	ldr	r2, [r4, #0]	@ dj_4(D)->fs, dj_4(D)->fs
	mov	r0, r4	@, dj
	ldrh	r3, [r2, #6]	@, D.5304_39->id
	strh	r3, [r4, #4]	@ movhi	@, dj_4(D)->id
	bl	dir_seek.constprop.1	@
.L194:
	cmp	r0, #4	@ res,
	it	eq	@
	moveq	r0, #5	@, res,
	b	.L193	@
.L197:
	movs	r0, #5	@ res,
.L193:
	add	sp, sp, #24	@,,
	pop	{r4, pc}
	.size	f_opendir, .-f_opendir
	.section	.text.f_readdir,"ax",%progbits
	.align	1
	.global	f_readdir
	.thumb
	.thumb_func
	.ascii	"f_readdir\000"
	.align	2
	.word	4278190092
	.type	f_readdir, %function
f_readdir:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, lr}	@
	mov	r4, r0	@ dj, dj
	mov	r6, r1	@ fno, fno
	ldr	r0, [r0, #0]	@, dj_3(D)->fs
	ldrh	r1, [r4, #4]	@, dj_3(D)->id
	bl	validate	@
	mov	r5, r0	@ res,
	cmp	r0, #0	@ res
	bne	.L200	@
	add	r3, sp, #4	@ tmp152,,
	str	r3, [r4, #24]	@ tmp152, dj_3(D)->fn
	cbnz	r6, .L207	@ fno,
	mov	r0, r4	@, dj
	bl	dir_seek.constprop.1	@
	b	.L210	@
.L205:
	ldr	r0, [r4, #0]	@, dj_3(D)->fs
	bl	move_window	@
	cbnz	r0, .L206	@ res,
	ldr	r2, [r4, #20]	@ dir, dj_3(D)->dir
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ c, *dir_27
	cmp	r3, #0	@ c
	beq	.L208	@
	cmp	r3, #229	@ c,
	beq	.L203	@,
	cmp	r3, #46	@ c,
	beq	.L203	@,
	ldrb	r0, [r2, #11]	@ zero_extendqisi2	@ MEM[(BYTE *)dir_27 + 11B], MEM[(BYTE *)dir_27 + 11B]
	lsls	r1, r0, #28	@, MEM[(BYTE *)dir_27 + 11B],
	bpl	.L204	@,
.L203:
	mov	r0, r4	@, dj
	bl	dir_next.isra.0	@
	cbz	r0, .L201	@ res,
	b	.L206	@
.L207:
	movs	r0, #4	@ res,
.L201:
	ldr	r1, [r4, #16]	@ D.6211, dj_3(D)->sect
	cmp	r1, #0	@ D.6211
	bne	.L205	@
	cbz	r0, .L204	@ res,
.L206:
	movs	r1, #0	@ tmp158,
	cmp	r0, #4	@ res,
	str	r1, [r4, #16]	@ tmp158, dj_3(D)->sect
	beq	.L204	@,
	cbnz	r0, .L210	@ res,
.L204:
	mov	r0, r4	@, dj
	mov	r1, r6	@, fno
	bl	get_fileinfo	@
	mov	r0, r4	@, dj
	bl	dir_next.isra.0	@
	cmp	r0, #4	@ tmp159,
	bne	.L210	@,
	movs	r2, #0	@ tmp160,
	str	r2, [r4, #16]	@ tmp160, dj_3(D)->sect
	b	.L200	@
.L210:
	mov	r5, r0	@ res, tmp159
.L200:
	mov	r0, r5	@, res
	add	sp, sp, #16	@,,
	pop	{r4, r5, r6, pc}
.L208:
	movs	r0, #4	@ res,
	b	.L206	@
	.size	f_readdir, .-f_readdir
	.section	.text.f_stat,"ax",%progbits
	.align	1
	.global	f_stat
	.thumb
	.thumb_func
	.ascii	"f_stat\000"
	.align	2
	.word	4278190088
	.type	f_stat, %function
f_stat:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
	sub	sp, sp, #52	@,,
	add	r3, sp, #48	@ tmp139,,
	str	r0, [r3, #-44]!	@ path, path
	mov	r4, r1	@ fno, fno
	mov	r0, r3	@, tmp139
	add	r1, sp, #8	@,,
	movs	r2, #0	@,
	bl	chk_mounted	@
	mov	r5, r0	@ res,
	cbnz	r0, .L212	@ res,
	add	r0, sp, #36	@ tmp142,,
	str	r0, [sp, #32]	@ tmp142, dj.fn
	ldr	r1, [sp, #4]	@, path
	add	r0, sp, #8	@,,
	bl	follow_path	@
	mov	r5, r0	@ res,
	cbnz	r0, .L212	@ res,
	ldr	r1, [sp, #28]	@ dj.dir, dj.dir
	cbz	r1, .L213	@ dj.dir,
	add	r0, sp, #8	@,,
	mov	r1, r4	@, fno
	bl	get_fileinfo	@
	b	.L212	@
.L213:
	movs	r5, #6	@ res,
.L212:
	mov	r0, r5	@, res
	add	sp, sp, #52	@,,
	pop	{r4, r5, pc}
	.size	f_stat, .-f_stat
	.section	.rodata.cvt.4785,"a",%progbits
	.set	.LANCHOR0,. + 0
	.type	cvt.4785, %object
	.size	cvt.4785, 128
cvt.4785:
	.byte	-128
	.byte	-102
	.byte	-112
	.byte	-74
	.byte	-114
	.byte	-73
	.byte	-113
	.byte	-128
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-40
	.byte	-41
	.byte	-34
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-110
	.byte	-110
	.byte	-30
	.byte	-103
	.byte	-29
	.byte	-22
	.byte	-21
	.byte	89
	.byte	-103
	.byte	-102
	.byte	-99
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	-75
	.byte	-42
	.byte	-32
	.byte	-23
	.byte	-91
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	33
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-57
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-47
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-27
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-25
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-19
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	" \"*+,[=]|\177\000"
	.section	.bss.Fsid,"aw",%nobits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	Fsid, %object
	.size	Fsid, 2
Fsid:
	.space	2
	.section	.bss.FatFs,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	FatFs, %object
	.size	FatFs, 4
FatFs:
	.space	4
	.ident	"GCC: (32-bit ARM EABI Toolchain JBS-2012.03-56-v2011.09-69-18-gd53ce5a) 4.6.3"
