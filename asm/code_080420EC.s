	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080420EC
sub_080420EC: @ 0x080420EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	add r4, sp, #0x24
	adds r0, r4, #0
	bl sub_08045F28
	ldr r6, _08042170 @ =gUnknown_030004C8
	ldrb r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #1
	bls _08042130
	ldr r5, _08042174 @ =gUnknown_03000510
	ldr r4, _08042178 @ =0x030004DA
	ldr r3, _0804217C @ =0x030004F2
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xb2
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08026B90
_08042130:
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804213E
	b _080425FA
_0804213E:
	ldrb r1, [r6]
	subs r0, r1, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804214C
	b _080422DC
_0804214C:
	add r0, sp, #0x14
	bl sub_08045F90
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08042180
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0x14
	ldrb r4, [r3]
	movs r3, #6
	subs r3, r3, r4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	b _080421DA
	.align 2, 0
_08042170: .4byte gUnknown_030004C8
_08042174: .4byte gUnknown_03000510
_08042178: .4byte 0x030004DA
_0804217C: .4byte 0x030004F2
_08042180:
	add r6, sp, #0x28
	adds r0, r6, #0
	bl sub_08045114
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080421AE
	cmp r4, #1
	bne _0804219E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	b _080421DA
_0804219E:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	movs r3, #1
	bl sub_08042790
	b _0804220E
_080421AE:
	adds r0, r6, #0
	bl sub_080451B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080421E2
	cmp r0, #1
	bne _080421D2
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	movs r3, #7
	str r3, [sp]
	movs r3, #2
	bl sub_08042790
	b _0804220E
_080421D2:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r4, [sp]
_080421DA:
	movs r3, #0
	bl sub_08042790
	b _0804220E
_080421E2:
	bl sub_08045F50
	adds r4, r0, #0
	cmp r4, #0
	bne _0804220E
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	ldr r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804220E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	lsrs r2, r2, #0xf
	str r4, [sp]
	movs r3, #0
	bl sub_08042790
_0804220E:
	bl sub_08045F50
	cmp r0, #0
	beq _0804221C
	bl sub_08040C98
	b _08042224
_0804221C:
	bl sub_08046004
	bl sub_0804087C
_08042224:
	adds r5, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #2
	cmp r0, #3
	bhi _0804223C
	adds r0, r5, #0
	bl CanEquipItem
	cmp r0, #0
	bne _08042246
_0804223C:
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08042272
_08042246:
	bl GetCurrentWeaponIndex
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080460F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	adds r0, r5, #0
	adds r1, r4, #0
	bl EquipItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	bl sub_08042FF8
	bl ApplyMenuChanges
	bl sub_08016DC0
_08042272:
	bl sub_08045F50
	adds r3, r0, #0
	cmp r3, #0
	beq _080422C4
	ldr r0, _080422B0 @ =gUnknown_03000510
	ldrb r1, [r7]
	add r4, sp, #0x24
	ldrb r2, [r4, #1]
	subs r2, #4
	movs r3, #1
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	bl sub_08040C98
	adds r5, r0, #0
	bl CanEquipItem
	cmp r0, #0
	beq _080422B4
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #0
	bl sub_08023048
	b _080425FA
	.align 2, 0
_080422B0: .4byte gUnknown_03000510
_080422B4:
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #2
	bl sub_08023048
	b _080425FA
_080422C4:
	ldr r0, _080422D8 @ =gUnknown_03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080422D8: .4byte gUnknown_03000510
_080422DC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0804238C
	bl sub_08045F78
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _0804238C
_08042306:
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	bl IsItemUnappraised
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08042374
	adds r0, r5, #0
	bl sub_08040900
	str r0, [sp, #0x28]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	ldr r3, [sp, #0x28]
	cmp r4, r3
	blo _0804234A
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08042790
	b _0804235C
_0804234A:
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #1
	bl sub_08042790
_0804235C:
	ldr r0, _08042370 @ =gUnknown_03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #9
	bl sub_08026BC4
	b _080425FA
	.align 2, 0
_08042370: .4byte gUnknown_03000510
_08042374:
	ldr r0, _08042388 @ =gUnknown_03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #9
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_08042388: .4byte gUnknown_03000510
_0804238C:
	ldr r0, _080423B8 @ =gUnknown_030004C8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08042396
	b _080424D8
_08042396:
	bl sub_08042614
	bl sub_08046004
	adds r5, r0, #0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080423AE
	b _080425FA
_080423AE:
	lsls r0, r0, #2
	ldr r1, _080423BC @ =_080423C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080423B8: .4byte gUnknown_030004C8
_080423BC: .4byte _080423C0
_080423C0: @ jump table
	.4byte _080425FA @ case 0
	.4byte _080425FA @ case 1
	.4byte _080425FA @ case 2
	.4byte _080425FA @ case 3
	.4byte _080425FA @ case 4
	.4byte _080425FA @ case 5
	.4byte _080423E8 @ case 6
	.4byte _080423E8 @ case 7
	.4byte _08042464 @ case 8
	.4byte _08042464 @ case 9
_080423E8:
	ldrb r1, [r5, #3]
	lsls r1, r1, #4
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804245C @ =0x0300052C
	str r0, [sp, #4]
	adds r4, r0, #0
	subs r4, #0x1c
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	movs r6, #1
	str r6, [sp, #0x10]
	movs r0, #0x3a
	movs r2, #0x16
	movs r3, #0
	bl sub_08003FA4
	bl sub_08041074
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042438
	ldrb r0, [r5, #3]
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042438
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x70
	movs r3, #3
	bl sub_08026B90
_08042438:
	adds r0, r5, #0
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042446
	b _080425FA
_08042446:
	ldr r0, _08042460 @ =gUnknown_03000510
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	movs r1, #2
	str r1, [sp]
	movs r1, #0x58
	movs r3, #3
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_0804245C: .4byte 0x0300052C
_08042460: .4byte gUnknown_03000510
_08042464:
	ldrb r1, [r5, #3]
	lsls r1, r1, #3
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _080424CC @ =0x0300052C
	str r0, [sp, #4]
	adds r7, r0, #0
	subs r7, #0x1c
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0x10]
	movs r0, #0x82
	movs r2, #0x16
	movs r3, #1
	bl sub_08003FA4
	bl sub_08041294
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0804249C
	b _080425FA
_0804249C:
	ldr r4, _080424D0 @ =0x030004D8
	ldr r3, _080424D4 @ =0x030004F0
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #0xe
	adds r2, r4, #0
	bl sub_08026C40
	ldrb r2, [r5, #3]
	lsls r2, r2, #3
	movs r0, #0x4b
	subs r0, r0, r6
	asrs r0, r0, #2
	subs r0, #0x40
	subs r2, r2, r0
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd4
	movs r3, #0xe
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080424CC: .4byte 0x0300052C
_080424D0: .4byte 0x030004D8
_080424D4: .4byte 0x030004F0
_080424D8:
	cmp r0, #9
	beq _080424DE
	b _080425FA
_080424DE:
	bl sub_0804152C
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08042530
	ldr r4, _08042524 @ =gUnknown_03000510
	ldr r5, _08042528 @ =0x030004DC
	ldr r3, _0804252C @ =0x030004F4
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x1a
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1a
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
	b _08042562
	.align 2, 0
_08042524: .4byte gUnknown_03000510
_08042528: .4byte 0x030004DC
_0804252C: .4byte 0x030004F4
_08042530:
	ldr r4, _080425A0 @ =gUnknown_03000510
	ldr r5, _080425A4 @ =0x030004DC
	ldr r3, _080425A8 @ =0x030004F4
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1b
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
_08042562:
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080425B4
	ldr r4, _080425A0 @ =gUnknown_03000510
	ldr r5, _080425AC @ =0x030004DE
	ldr r3, _080425B0 @ =0x030004F6
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x17
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x17
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
	b _080425E8
	.align 2, 0
_080425A0: .4byte gUnknown_03000510
_080425A4: .4byte 0x030004DC
_080425A8: .4byte 0x030004F4
_080425AC: .4byte 0x030004DE
_080425B0: .4byte 0x030004F6
_080425B4:
	ldr r4, _08042608 @ =gUnknown_03000510
	ldr r5, _0804260C @ =0x030004DE
	ldr r3, _08042610 @ =0x030004F6
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x18
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
_080425E8:
	ldr r0, _08042608 @ =gUnknown_03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
_080425FA:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042608: .4byte gUnknown_03000510
_0804260C: .4byte 0x030004DE
_08042610: .4byte 0x030004F6

	thumb_func_start sub_08042614
sub_08042614: @ 0x08042614
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08042668 @ =gUnknown_03000548
	ldr r5, _0804266C @ =0x030004D4
	ldr r3, _08042670 @ =0x030004EC
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	bl sub_08026C40
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08042674
	cmp r0, #0
	bge _0804263E
	b _0804277E
_0804263E:
	cmp r0, #9
	ble _08042644
	b _0804277E
_08042644:
	cmp r0, #6
	bge _0804264A
	b _0804277E
_0804264A:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804273C
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804274C
	.align 2, 0
_08042668: .4byte gUnknown_03000548
_0804266C: .4byte 0x030004D4
_08042670: .4byte 0x030004EC
_08042674:
	bl sub_08046004
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _080426D4
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804269A
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _080426AA
_0804269A:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
_080426AA:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08042758
	ldr r0, _080426CC @ =gUnknown_03000548
	ldr r1, _080426D0 @ =gUnknown_030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_080426CC: .4byte gUnknown_03000548
_080426D0: .4byte gUnknown_030004D0
_080426D4:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080426F0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _08042700
_080426F0:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_08042700:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08042720
	ldr r0, _0804271C @ =gUnknown_03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_0804271C: .4byte gUnknown_03000548
_08042720:
	ldr r0, _08042734 @ =gUnknown_03000548
	ldr r1, _08042738 @ =gUnknown_030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_08042734: .4byte gUnknown_03000548
_08042738: .4byte gUnknown_030004D0
_0804273C:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804274C:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0804276C
_08042758:
	ldr r0, _08042768 @ =gUnknown_03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_08042768: .4byte gUnknown_03000548
_0804276C:
	ldr r0, _08042788 @ =gUnknown_03000548
	ldr r1, _0804278C @ =gUnknown_030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804277E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042788: .4byte gUnknown_03000548
_0804278C: .4byte gUnknown_030004D0
