	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08017150
sub_08017150: @ 0x08017150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r0, #0xcc
	ldr r0, [r0]
	mov sb, r0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, #0x70
	add r0, sb
	bl GetWeaponRecord
	str r0, [sp, #4]
	movs r5, #0
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x10
	bl sub_08007638
	cmp r0, #0
	bne _080171A2
	adds r0, r6, #0
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080171A2
	lsls r0, r4, #0x10
	asrs r0, r0, #1
	lsrs r4, r0, #0x10
_080171A2:
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r0, r7, #0
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #1
	cmp r1, r0
	bgt _080171CC
	movs r0, #0x27
	bl PlaySE
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	bl sub_080184F8
	movs r0, #1
	str r0, [sp]
	b _080171D6
_080171CC:
	movs r0, #0x1a
	bl PlaySE
	movs r1, #0
	str r1, [sp]
_080171D6:
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp]
	cmp r2, #0
	beq _080171EA
	ldr r0, _08017204 @ =0x0000FFFF
	mov r8, r0
_080171EA:
	ldrh r0, [r7, #0xc]
	cmp r0, #5
	bne _080172E4
	bl GetPlayerClass
	cmp r0, #2
	beq _08017266
	cmp r0, #2
	bgt _08017208
	cmp r0, #0
	beq _0801720E
	b _0801730A
	.align 2, 0
_08017204: .4byte 0x0000FFFF
_08017208:
	cmp r0, #3
	beq _080172BE
	b _0801730A
_0801720E:
	bl sub_080102C4
	subs r0, #1
	cmp r0, #1
	bls _0801721E
	cmp r0, #2
	beq _08017244
	b _0801730A
_0801721E:
	adds r0, r7, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r7, #0x14]
	lsls r0, r0, #1
	adds r0, #0xa
	muls r0, r1, r0
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08017300
_08017244:
	adds r0, r7, #0
	adds r0, #0x48
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsls r0, r0, #0x12
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08017300
_08017266:
	bl sub_080102C4
	subs r0, #1
	cmp r0, #0
	beq _08017276
	cmp r0, #1
	beq _08017298
	b _0801730A
_08017276:
	adds r0, r7, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsls r0, r0, #0x12
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08017300
_08017298:
	adds r0, r7, #0
	adds r0, #0x48
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldrh r0, [r7, #0x14]
	lsls r0, r0, #1
	adds r0, #0xa
	muls r0, r1, r0
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08017300
_080172BE:
	adds r0, r7, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r7, #0x14]
	lsls r0, r0, #1
	adds r0, #0xa
	muls r0, r1, r0
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08017300
_080172E4:
	adds r0, r7, #0
	adds r0, #0x48
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	subs r0, r0, r2
_08017300:
	movs r1, #0x14
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801730A:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bgt _08017316
	movs r5, #1
	b _08017330
_08017316:
	ldr r0, [sp]
	cmp r0, #0
	beq _08017320
	movs r2, #0xf
	mov r8, r2
_08017320:
	movs r0, #0xf
	mov r5, r8
	ands r0, r5
	muls r0, r1, r0
	asrs r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08017330:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #1
	beq _08017340
	cmp r0, #2
	beq _08017346
	b _08017360
_08017340:
	bl sub_08011200
	b _0801734A
_08017346:
	bl sub_08010E00
_0801734A:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
_08017360:
	lsls r0, r5, #0x10
	cmp r0, #0
	bgt _08017368
	movs r5, #1
_08017368:
	mov r0, sb
	adds r0, #0x6c
	ldrh r1, [r0]
	lsls r1, r1, #2
	add r1, sb
	adds r1, #0x71
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	mov r8, r1
	mov sl, r0
	cmp r1, #1
	beq _08017384
	b _080174D2
_08017384:
	ldr r1, [sp, #4]
	ldr r2, _0801739C @ =0x0000015B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _080173C4
	cmp r0, #2
	bgt _080173A0
	cmp r0, #1
	beq _080173A6
	b _08017420
	.align 2, 0
_0801739C: .4byte 0x0000015B
_080173A0:
	cmp r0, #3
	beq _08017402
	b _08017420
_080173A6:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r2, [r0]
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #4
	b _0801741E
_080173C4:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r4, [r0]
	movs r0, #0x6e
	subs r0, r0, r4
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x46
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080173F4
	rsbs r0, r0, #0
_080173F4:
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble _08017420
	mov r0, r8
	b _0801741E
_08017402:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #5
_0801741E:
	strh r0, [r6, #0x3e]
_08017420:
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #2
	add r0, sb
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _08017462
	cmp r0, #2
	bgt _0801743E
	cmp r0, #1
	beq _08017444
	b _080174CA
_0801743E:
	cmp r0, #3
	beq _080174AC
	b _080174CA
_08017444:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r2, [r0]
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #4
	b _080174C8
_08017462:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r4, [r0]
	movs r0, #0x6e
	subs r0, r0, r4
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x46
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017492
	rsbs r0, r0, #0
_08017492:
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble _080174A8
	movs r0, #1
	strh r0, [r6, #0x3e]
	movs r0, #0x29
	bl PlaySE
	b _080174CA
_080174A8:
	movs r0, #0
	b _080174C8
_080174AC:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #5
_080174C8:
	strh r0, [r6, #0x3e]
_080174CA:
	lsls r0, r5, #0x10
	cmp r0, #0
	bgt _080174D2
	movs r5, #1
_080174D2:
	ldr r2, [sp]
	cmp r2, #0
	beq _080174DC
	lsls r0, r5, #0x11
	lsrs r5, r0, #0x10
_080174DC:
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	bl sub_080119DC
	adds r2, r7, #0
	adds r2, #0x7a
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	ble _08017502
	strh r3, [r2]
_08017502:
	bl GetPlayerClass
	cmp r0, #3
	bne _0801753A
	adds r2, r6, #0
	adds r2, #0x70
	mov r3, sb
	adds r3, #0x4c
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801752E
	movs r0, #0
	strh r0, [r2]
_0801752E:
	ldrh r2, [r6, #2]
	ldrh r3, [r3]
	movs r0, #0
	movs r1, #2
	bl sub_08027790
_0801753A:
	lsrs r0, r4, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
