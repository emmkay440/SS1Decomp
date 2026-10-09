	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08018600
sub_08018600: @ 0x08018600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sl, r1
	bl sub_08026C78
	mov sb, r0
	asrs r0, r4, #0x10
	lsls r5, r0, #0xc
	movs r7, #0
	lsls r4, r4, #0x10
	mov r8, r4
	mov r6, sp
	adds r6, #0xa
	b _08018672
_08018626:
	bl sub_08007510
	cmp r0, #0
	bne _0801866A
	bl sub_08007604
	cmp r0, #0
	bne _0801866A
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _0801866A
	lsls r1, r5, #4
	asrs r1, r1, #0x10
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	mov r2, r8
	asrs r0, r2, #0x10
	add r2, sp, #8
	adds r3, r6, #0
	bl sub_08005FC4
	add r0, sp, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r6, r0]
	str r4, [sp]
	mov r0, sb
	movs r3, #0x1f
	bl sub_08026B90
_0801866A:
	ldr r2, _080186A0 @ =0xFFFFFE00
	adds r5, r5, r2
	bl WaitFrame
_08018672:
	bl sub_080074CC
	cmp r0, #0
	bne _08018682
	adds r0, r7, #0
	adds r7, #1
	cmp r0, #0x13
	bls _08018626
_08018682:
	ldr r2, _080186A4 @ =gUnknown_030063C4
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080186A0: .4byte 0xFFFFFE00
_080186A4: .4byte gUnknown_030063C4

	thumb_func_start sub_080186A8
sub_080186A8: @ 0x080186A8
	push {r4, lr}
	ldr r4, _08018794 @ =gUnknown_030063D8
	movs r0, #0xfc
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #8]
	str r2, [r0, #4]
	adds r3, r0, #0
	adds r3, #0x9a
	ldr r1, _08018798 @ =0x0000FFFF
	strh r1, [r3]
	adds r0, #0x9c
	strh r2, [r0]
	ldr r4, _0801879C @ =gSpawnerThreads
	movs r0, #0xc8
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A0 @ =gUnknownThreadPtr_0300640C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A4 @ =gUnknownThreadPtr_03006410
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187A8 @ =gUnknownThreadPtr_03006404
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187AC @ =gUnknownThreadPtr_03006408
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B0 @ =gUnknownThreadPtr_030063D0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B4 @ =gUnknownThreadPtr_030063F4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187B8 @ =gUnknownThreadPtr_030063F0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187BC @ =gUnknownThreadPtr_030063FC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C0 @ =gUnknownThreadPtr_030063DC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C4 @ =gUnknownThreadPtr_030063E0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187C8 @ =gUnknownThreadPtr_030063CC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187CC @ =gUnknownThreadPtr_030063F8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D0 @ =gUnknownThreadPtr_030063E8
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D4 @ =gUnknownThreadPtr_030063D4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187D8 @ =gUnknownThreadPtr_03006414
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187DC @ =gUnknownThreadPtr_030063EC
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E0 @ =gUnknownThreadPtr_030063E4
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	ldr r4, _080187E4 @ =gUnknownThreadPtr_03006400
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	bl sub_08020F54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018794: .4byte gUnknown_030063D8
_08018798: .4byte 0x0000FFFF
_0801879C: .4byte gSpawnerThreads
_080187A0: .4byte gUnknownThreadPtr_0300640C
_080187A4: .4byte gUnknownThreadPtr_03006410
_080187A8: .4byte gUnknownThreadPtr_03006404
_080187AC: .4byte gUnknownThreadPtr_03006408
_080187B0: .4byte gUnknownThreadPtr_030063D0
_080187B4: .4byte gUnknownThreadPtr_030063F4
_080187B8: .4byte gUnknownThreadPtr_030063F0
_080187BC: .4byte gUnknownThreadPtr_030063FC
_080187C0: .4byte gUnknownThreadPtr_030063DC
_080187C4: .4byte gUnknownThreadPtr_030063E0
_080187C8: .4byte gUnknownThreadPtr_030063CC
_080187CC: .4byte gUnknownThreadPtr_030063F8
_080187D0: .4byte gUnknownThreadPtr_030063E8
_080187D4: .4byte gUnknownThreadPtr_030063D4
_080187D8: .4byte gUnknownThreadPtr_03006414
_080187DC: .4byte gUnknownThreadPtr_030063EC
_080187E0: .4byte gUnknownThreadPtr_030063E4
_080187E4: .4byte gUnknownThreadPtr_03006400
