@ libgcc: _call_via_rX, division

	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x08052544
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x08052548
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x0805254C
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x08052550
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x08052554
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x08052558
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x0805255C
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x08052560
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x08052564
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x08052568
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x0805256C
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x08052570
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x08052574
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x08052578
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x0805257C
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x08052580
	cmp r1, #0
	beq _08052608
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08052596
	rsbs r1, r1, #0
_08052596:
	cmp r0, #0
	bpl _0805259C
	rsbs r0, r0, #0
_0805259C:
	cmp r0, r1
	blo _080525FA
	movs r4, #1
	lsls r4, r4, #0x1c
_080525A4:
	cmp r1, r4
	bhs _080525B2
	cmp r1, r0
	bhs _080525B2
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080525A4
_080525B2:
	lsls r4, r4, #3
_080525B4:
	cmp r1, r4
	bhs _080525C2
	cmp r1, r0
	bhs _080525C2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080525B4
_080525C2:
	cmp r0, r1
	blo _080525CA
	subs r0, r0, r1
	orrs r2, r3
_080525CA:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080525D6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080525D6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080525E2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080525E2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080525EE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080525EE:
	cmp r0, #0
	beq _080525FA
	lsrs r3, r3, #4
	beq _080525FA
	lsrs r1, r1, #4
	b _080525C2
_080525FA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08052604
	rsbs r0, r0, #0
_08052604:
	pop {r4}
	mov pc, lr
_08052608:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __div0
__div0: @ 0x08052614
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x08052618
	movs r3, #1
	cmp r1, #0
	beq _080526DC
	bpl _08052622
	rsbs r1, r1, #0
_08052622:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0805262C
	rsbs r0, r0, #0
_0805262C:
	cmp r0, r1
	blo _080526D0
	movs r4, #1
	lsls r4, r4, #0x1c
_08052634:
	cmp r1, r4
	bhs _08052642
	cmp r1, r0
	bhs _08052642
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08052634
_08052642:
	lsls r4, r4, #3
_08052644:
	cmp r1, r4
	bhs _08052652
	cmp r1, r0
	bhs _08052652
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08052644
_08052652:
	movs r2, #0
	cmp r0, r1
	blo _0805265A
	subs r0, r0, r1
_0805265A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805266C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805266C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0805267E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0805267E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08052690
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08052690:
	mov ip, r3
	cmp r0, #0
	beq _0805269E
	lsrs r3, r3, #4
	beq _0805269E
	lsrs r1, r1, #4
	b _08052652
_0805269E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080526D0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080526B4
	lsrs r4, r1, #3
	adds r0, r0, r4
_080526B4:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080526C2
	lsrs r4, r1, #2
	adds r0, r0, r4
_080526C2:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080526D0
	lsrs r4, r1, #1
	adds r0, r0, r4
_080526D0:
	pop {r4}
	cmp r4, #0
	bpl _080526D8
	rsbs r0, r0, #0
_080526D8:
	pop {r4}
	mov pc, lr
_080526DC:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x080526E8
	cmp r1, #0
	beq _08052756
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08052750
	movs r4, #1
	lsls r4, r4, #0x1c
_080526FA:
	cmp r1, r4
	bhs _08052708
	cmp r1, r0
	bhs _08052708
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080526FA
_08052708:
	lsls r4, r4, #3
_0805270A:
	cmp r1, r4
	bhs _08052718
	cmp r1, r0
	bhs _08052718
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0805270A
_08052718:
	cmp r0, r1
	blo _08052720
	subs r0, r0, r1
	orrs r2, r3
_08052720:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0805272C
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0805272C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08052738
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08052738:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08052744
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08052744:
	cmp r0, #0
	beq _08052750
	lsrs r3, r3, #4
	beq _08052750
	lsrs r1, r1, #4
	b _08052718
_08052750:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08052756:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x08052760
	cmp r1, #0
	beq _08052816
	movs r3, #1
	cmp r0, r1
	bhs _0805276C
	mov pc, lr
_0805276C:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_08052772:
	cmp r1, r4
	bhs _08052780
	cmp r1, r0
	bhs _08052780
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08052772
_08052780:
	lsls r4, r4, #3
_08052782:
	cmp r1, r4
	bhs _08052790
	cmp r1, r0
	bhs _08052790
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08052782
_08052790:
	movs r2, #0
	cmp r0, r1
	blo _08052798
	subs r0, r0, r1
_08052798:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080527AA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080527AA:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080527BC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080527BC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080527CE
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080527CE:
	mov ip, r3
	cmp r0, #0
	beq _080527DC
	lsrs r3, r3, #4
	beq _080527DC
	lsrs r1, r1, #4
	b _08052790
_080527DC:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080527E8
	pop {r4}
	mov pc, lr
_080527E8:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080527F6
	lsrs r4, r1, #3
	adds r0, r0, r4
_080527F6:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08052804
	lsrs r4, r1, #2
	adds r0, r0, r4
_08052804:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08052812
	lsrs r4, r1, #1
	adds r0, r0, r4
_08052812:
	pop {r4}
	mov pc, lr
_08052816:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
