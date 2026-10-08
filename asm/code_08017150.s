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

	thumb_func_start CalcDamageToPlayer
CalcDamageToPlayer: @ 0x0801754C
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r5, #0x64
	bl Random
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	bl __umodsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08017582
	bl Random
	ldrh r1, [r5, #0xa]
	lsrs r2, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	movs r0, #0xf
	ands r1, r0
	asrs r0, r1, #6
	adds r4, r2, r0
	b _080175C0
_08017582:
	bl Random
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	cmp r1, #0
	bgt _080175AC
	movs r4, #1
	b _080175C0
_080175AC:
	movs r0, #0xf
	ands r0, r3
	muls r0, r1, r0
	cmp r0, #0
	bge _080175B8
	adds r0, #0x1f
_080175B8:
	asrs r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080175C0:
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r5, [r0]
	cmp r5, #2
	beq _080175E4
	cmp r5, #2
	bgt _080175D4
	cmp r5, #1
	beq _080175DA
	b _08017654
_080175D4:
	cmp r5, #3
	beq _08017636
	b _08017654
_080175DA:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x36
	ldrsh r2, [r6, r0]
	b _0801763E
_080175E4:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x38
	ldrsh r2, [r6, r0]
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r1, [r6, #0x38]
	movs r0, #0x46
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017614
	rsbs r0, r0, #0
_08017614:
	movs r1, #0x64
	bl __modsi3
	cmp r7, r0
	ble _0801762C
	adds r0, r6, #0
	adds r0, #0xa6
	strh r5, [r0]
	movs r0, #0x29
	bl PlaySE
	b _08017654
_0801762C:
	adds r1, r6, #0
	adds r1, #0xa6
	movs r0, #0
	strh r0, [r1]
	b _08017654
_08017636:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x3a
	ldrsh r2, [r6, r0]
_0801763E:
	movs r0, #0x6e
	subs r0, r0, r2
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xa6
	strh r5, [r0]
_08017654:
	lsls r0, r4, #0x10
	cmp r0, #0
	bgt _0801765C
	movs r4, #1
_0801765C:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017664
sub_08017664: @ 0x08017664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	bl GetPlayerClass
	cmp r0, #2
	bne _080176F2
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	beq _08017684
	cmp r0, #5
	beq _08017684
	b _08017A34
_08017684:
	bl sub_08010B48
	cmp r0, #0
	beq _0801768E
	b _08017A34
_0801768E:
	bl sub_08012230
	cmp r0, #0
	bne _08017698
	b _08017A34
_08017698:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r2, [r0]
	ldr r1, [r6, #0x7c]
	adds r5, r0, #0
	cmp r2, r1
	bne _080176A8
	b _08017A34
_080176A8:
	movs r0, #0x9d
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x14
	bl __divsi3
	adds r4, r6, #0
	adds r4, #0x56
	strh r0, [r4]
	bl sub_080102C4
	cmp r0, #1
	bne _080176DA
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _080176DA
	ldrh r0, [r4]
	ldrh r1, [r6, #0x14]
	bl __udivsi3
	strh r0, [r4]
_080176DA:
	ldrh r0, [r4]
	cmp r0, #0
	bne _080176E4
	movs r0, #1
	strh r0, [r4]
_080176E4:
	ldr r0, [r5]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	bne _080176EE
	b _08017A34
_080176EE:
	str r1, [r5]
	b _08017A34
_080176F2:
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	beq _08017764
	cmp r0, #5
	bgt _08017702
	cmp r0, #2
	beq _08017708
	b _08017A34
_08017702:
	cmp r0, #6
	beq _08017708
	b _08017A34
_08017708:
	bl GetPlayerClass
	adds r5, r0, #0
	cmp r5, #1
	bne _08017764
	bl sub_08010B48
	cmp r0, #0
	beq _0801771C
	b _08017A34
_0801771C:
	bl sub_08012230
	cmp r0, #0
	bne _08017726
	b _08017A34
_08017726:
	adds r4, r6, #0
	adds r4, #0x94
	ldr r1, [r4]
	ldr r0, [r6, #0x7c]
	cmp r1, r0
	bne _08017734
	b _08017A34
_08017734:
	movs r0, #0x46
	bl PlaySE
	adds r0, r6, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x56
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017756
	strh r5, [r1]
_08017756:
	ldr r0, [r4]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	bne _08017760
	b _08017A34
_08017760:
	str r1, [r4]
	b _08017A34
_08017764:
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	bne _08017778
	adds r5, r6, #0
	adds r5, #0x72
	ldr r4, _08017774 @ =0x080FBA0C
	b _080177AE
	.align 2, 0
_08017774: .4byte 0x080FBA0C
_08017778:
	cmp r0, #5
	bne _080177CC
	bl GetPlayerClass
	cmp r0, #3
	bne _080177A8
	bl sub_080102C4
	cmp r0, #1
	beq _0801779A
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #7
	bhi _08017798
	b _08017A34
_08017798:
	b _080177C0
_0801779A:
	adds r0, r6, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #1
	bhi _080177A6
	b _08017A34
_080177A6:
	b _080177C0
_080177A8:
	adds r5, r6, #0
	adds r5, #0x72
	ldr r4, _080177FC @ =0x080FBA14
_080177AE:
	bl GetPlayerClass
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r5]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _080177C0
	b _08017A34
_080177C0:
	adds r0, r6, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _080177CC
	b _08017A34
_080177CC:
	bl sub_08010B48
	cmp r0, #0
	bne _0801782E
	bl sub_08012230
	cmp r0, #0
	beq _0801782E
	adds r0, r6, #0
	adds r0, #0x94
	ldr r2, [r0]
	ldr r1, [r6, #0x7c]
	adds r5, r0, #0
	cmp r2, r1
	beq _0801782E
	bl GetPlayerClass
	cmp r0, #3
	bne _08017800
	movs r0, #0x9e
	bl PlaySE
	b _08017806
	.align 2, 0
_080177FC: .4byte 0x080FBA14
_08017800:
	movs r0, #0x45
	bl PlaySE
_08017806:
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x56
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017824
	movs r0, #1
	strh r0, [r1]
_08017824:
	ldr r0, [r5]
	ldr r1, [r6, #0x7c]
	cmp r0, r1
	beq _0801782E
	str r1, [r5]
_0801782E:
	movs r5, #0
	mov r8, r5
_08017832:
	ldr r0, _080178B8 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r0, #0
	bne _0801784A
	b _08017A2A
_0801784A:
	ldr r2, _080178BC @ =gEnemies
	movs r0, #0x94
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	ldrh r0, [r4, #0xa]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017864
	b _08017A2A
_08017864:
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	bne _0801786C
	b _08017A2A
_0801786C:
	ldr r1, [r6, #0x7c]
	ldr r0, [r4, #0x30]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x28]
	subs r0, r0, r1
	cmp r0, #0
	bgt _08017884
	movs r2, #0
_08017884:
	cmp r2, #0
	bne _0801788A
	b _08017A2A
_0801788A:
	bl sub_080101F0
	adds r5, r0, #0
	ldr r7, _080178C0 @ =0x0000FFFF
	ands r7, r5
	lsrs r5, r5, #0x10
	ldrh r0, [r6, #0xc]
	cmp r0, #5
	bne _080178CE
	bl GetPlayerClass
	cmp r0, #0
	beq _080178C4
	cmp r0, #3
	bne _080178CE
	bl sub_080102C4
	cmp r0, #1
	beq _080178CC
	movs r7, #2
	movs r5, #0x28
	b _080178CE
	.align 2, 0
_080178B8: .4byte gActiveEnemyMask
_080178BC: .4byte gEnemies
_080178C0: .4byte 0x0000FFFF
_080178C4:
	bl sub_080102C4
	cmp r0, #2
	bne _080178CE
_080178CC:
	movs r7, #0x10
_080178CE:
	ldr r1, _080179FC @ =0x080FB4B8
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, r8
	lsls r2, r5, #1
	adds r1, r6, #0
	adds r1, #0xae
	adds r1, r1, r2
	movs r3, #1
	add r3, r8
	mov sb, r3
	ldrh r1, [r1]
	cmp r0, r1
	bhs _080178FA
	b _08017A2A
_080178FA:
	adds r1, r6, #0
	adds r1, #0xb8
	adds r1, r1, r2
	ldr r2, _08017A00 @ =0x080FB9FC
	movs r5, #0xa
	ldrsh r0, [r6, r5]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #8
	ble _08017920
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017920:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08017934
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017934:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801793E
	rsbs r0, r0, #0
_0801793E:
	cmp r0, r7
	bhi _08017A2A
	adds r3, r4, #0
	adds r3, #0x6a
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r3, r5]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017974
	rsbs r0, r0, #0
_08017974:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	cmp r1, r0
	blt _0801798E
	movs r2, #1
_0801798E:
	cmp r2, #0
	beq _08017A18
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #3
	beq _080179A4
	adds r1, r4, #0
	adds r1, #0x48
	ldr r0, _08017A04 @ =0x0000FFFE
	strh r0, [r1]
_080179A4:
	movs r0, #7
	strh r0, [r4, #0xa]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017150
	strh r0, [r4, #0x2a]
	ldrh r1, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r6, #0x7c]
	str r0, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x36]
	bl GetMultiplayerId
	strh r0, [r4, #0x34]
	movs r5, #0
	movs r2, #0xa2
	adds r2, r2, r6
	mov r8, r2
	adds r0, r6, #0
	adds r0, #0xc8
	ldr r7, [r0]
	ldr r2, _08017A08 @ =0x0000FFFF
_080179D6:
	mov r3, r8
	ldrh r0, [r3]
	adds r0, r0, r5
	movs r1, #5
	str r2, [sp]
	bl __umodsi3
	movs r1, #0x94
	muls r0, r1, r0
	adds r1, r0, r7
	ldrh r0, [r1]
	ldr r2, [sp]
	cmp r0, r2
	beq _08017A0C
	adds r5, #1
	cmp r5, #4
	bls _080179D6
	b _08017A2A
	.align 2, 0
_080179FC: .4byte 0x080FB4B8
_08017A00: .4byte 0x080FB9FC
_08017A04: .4byte 0x0000FFFE
_08017A08: .4byte 0x0000FFFF
_08017A0C:
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #0x94
	bl memcpy
	b _08017A2A
_08017A18:
	movs r0, #0x55
	bl PlaySE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl sub_08018474
	ldr r0, [r6, #0x7c]
	str r0, [r4, #0x30]
_08017A2A:
	mov r8, sb
	mov r5, r8
	cmp r5, #4
	bhi _08017A34
	b _08017832
_08017A34:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017A44
sub_08017A44: @ 0x08017A44
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_08007670
	cmp r0, #0
	beq _08017A52
	b _08017D82
_08017A52:
	bl sub_080077C0
	cmp r0, #0
	beq _08017A5C
	b _08017D82
_08017A5C:
	bl sub_0800F430
	cmp r0, #0
	bne _08017A66
	b _08017D82
_08017A66:
	bl sub_080271D0
	cmp r0, #0
	beq _08017A70
	b _08017D82
_08017A70:
	ldrh r4, [r6, #0xa]
	cmp r4, #2
	beq _08017A78
	b _08017D82
_08017A78:
	adds r0, r6, #0
	adds r0, #0x4a
	adds r1, r6, #0
	adds r1, #0x8a
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08017A8A
	b _08017D82
_08017A8A:
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _08017B18 @ =gPlayers
	adds r5, r1, r0
	ldrh r0, [r5, #0x10]
	ands r4, r0
	cmp r4, #0
	beq _08017AA0
	b _08017D82
_08017AA0:
	ldrh r0, [r5, #0x16]
	ldrh r1, [r6, #0x26]
	cmp r0, r1
	beq _08017AAA
	b _08017D82
_08017AAA:
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08017AB8
	b _08017D82
_08017AB8:
	ldrh r1, [r5, #0xc]
	subs r0, r1, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08017AC6
	b _08017D82
_08017AC6:
	adds r0, r1, #0
	cmp r0, #0xa
	bne _08017ACE
	b _08017D82
_08017ACE:
	cmp r0, #9
	bne _08017AD4
	b _08017D82
_08017AD4:
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r2, r5, #0
	adds r2, #0x80
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, [r6, #0x2c]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	adds r7, r2, #0
	cmp r0, #0
	blt _08017AF0
	b _08017D82
_08017AF0:
	bl sub_08007638
	cmp r0, #0
	beq _08017B02
	ldr r0, _08017B1C @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _08017B24
_08017B02:
	ldr r2, _08017B20 @ =0x080FB4C0
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r1, r1, r2
	ldrh r3, [r1]
	b _08017B28
	.align 2, 0
_08017B18: .4byte gPlayers
_08017B1C: .4byte gMapLayer_03003910
_08017B20: .4byte 0x080FB4C0
_08017B24:
	movs r0, #0x30
	movs r3, #8
_08017B28:
	adds r1, r0, #0
	adds r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r2, r0, #1
	adds r0, r5, #0
	adds r0, #0xae
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08017B42
	b _08017D82
_08017B42:
	adds r0, r5, #0
	adds r0, #0xb8
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08017B5E
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B5E:
	ldr r0, _08017C30 @ =0x080FB9FC
	movs r4, #8
	ldrsh r1, [r6, r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08017B82
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B82:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08017B96
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08017B96:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017BA0
	rsbs r0, r0, #0
_08017BA0:
	cmp r0, r3
	bls _08017BA6
	b _08017D82
_08017BA6:
	adds r0, r6, #0
	adds r0, #0x6a
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0x2e
	ldrsh r2, [r5, r4]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017BD8
	rsbs r0, r0, #0
_08017BD8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	cmp r1, r0
	blt _08017BF2
	movs r2, #1
_08017BF2:
	cmp r2, #0
	bne _08017BF8
	b _08017D78
_08017BF8:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017C06
	rsbs r0, r0, #0
_08017C06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x65
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_0801036C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r4, r0
	blt _08017C38
	movs r0, #7
	strh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x70
	ldr r0, _08017C34 @ =0x0000FFFE
	strh r0, [r1]
	b _08017C40
	.align 2, 0
_08017C30: .4byte 0x080FB9FC
_08017C34: .4byte 0x0000FFFE
_08017C38:
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	bl sub_0801857C
_08017C40:
	adds r0, r6, #0
	adds r1, r5, #0
	bl CalcDamageToPlayer
	adds r1, r5, #0
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r6, #0x2c]
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x9c
	ldrh r0, [r6]
	adds r0, #1
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa6
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017CC2
	movs r3, #1
	movs r1, #0
	ldr r2, [r5, #0x1c]
_08017C76:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #4
	bne _08017C84
	movs r3, #0
	movs r1, #3
_08017C84:
	adds r1, #1
	cmp r1, #2
	bls _08017C76
	cmp r3, #0
	beq _08017CC2
	movs r1, #0
	movs r3, #4
	mov ip, r3
	adds r4, r5, #0
	adds r4, #0x24
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r0, #0
_08017C9E:
	ldr r0, [r5, #0x1c]
	lsls r3, r1, #1
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _08017CAE
	cmp r0, #4
	bne _08017CBC
_08017CAE:
	mov r1, ip
	strh r1, [r2]
	adds r1, r4, r3
	ldrh r0, [r5, #0x38]
	subs r0, r7, r0
	strh r0, [r1]
	movs r1, #3
_08017CBC:
	adds r1, #1
	cmp r1, #2
	bls _08017C9E
_08017CC2:
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08017CD0
	rsbs r1, r1, #0
_08017CD0:
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08017D82
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #3
	bls _08017D82
	movs r1, #0
_08017CE6:
	ldr r0, [r5, #0x1c]
	lsls r4, r1, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #2
	bgt _08017D70
	cmp r0, #0
	blt _08017D70
	ldrb r0, [r6]
	cmp r0, #4
	beq _08017D02
	cmp r0, #5
	beq _08017D38
	b _08017D70
_08017D02:
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r5, #0x1c]
	adds r0, r4, r0
	movs r1, #1
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017D2A
	rsbs r0, r0, #0
_08017D2A:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r2, [r4]
	adds r0, r0, r2
	b _08017D6C
_08017D38:
	movs r0, #0x73
	bl PlaySE
	ldr r0, [r5, #0x1c]
	adds r0, r4, r0
	movs r1, #2
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x24
	adds r4, r0, r4
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017D60
	rsbs r0, r0, #0
_08017D60:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r3, [r4]
	adds r0, r0, r3
_08017D6C:
	strh r0, [r4]
	movs r1, #3
_08017D70:
	adds r1, #1
	cmp r1, #2
	bls _08017CE6
	b _08017D82
_08017D78:
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r6, #0x2c]
	str r1, [r0]
_08017D82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08017D88
sub_08017D88: @ 0x08017D88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp, #0x10]
	bl sub_08026C78
	adds r6, r0, #0
	add r2, sp, #0xc
	movs r0, #0
	strh r0, [r2]
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	movs r5, #0
	ldr r0, _08017DC0 @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	mov sl, r0
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	mov sb, r4
	adds r7, r2, #0
	mov r8, r1
	b _08017E22
	.align 2, 0
_08017DC0: .4byte 0x0000FFFF
_08017DC4:
	bl sub_08007510
	cmp r0, #0
	bne _08017E1E
	bl sub_08007604
	cmp r0, #0
	bne _08017E1E
	bl sub_08007544
	cmp r0, #0
	bne _08017E1E
	mov r1, sl
	lsls r0, r1, #4
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0xc
	mov r4, sp
	adds r4, #0xa
	movs r2, #0x10
	str r2, [sp]
	str r5, [sp, #4]
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_08005FC4
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x20
	adds r2, r7, #0
	mov r3, r8
	bl sub_08026C40
	adds r5, r0, #0
	add r0, sp, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x20
	bl sub_08026B90
_08017E1E:
	bl WaitFrame
_08017E22:
	bl sub_080074CC
	cmp r0, #0
	bne _08017E2E
	cmp r5, #0
	beq _08017DC4
_08017E2E:
	ldr r2, _08017E4C @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x10]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017E4C: .4byte gUnknown_030063C4

	thumb_func_start sub_08017E50
sub_08017E50: @ 0x08017E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08017E98 @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08017E9C @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	movs r7, #0
	mov sb, r1
	mov sl, r0
	b _08017F26
	.align 2, 0
_08017E98: .4byte 0x00100005
_08017E9C: .4byte 0x0000FFFF
_08017EA0:
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, sb
	mov r3, sl
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08017F22
	bl sub_08007604
	cmp r0, #0
	bne _08017F22
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _08017F22
	ldr r0, [sp, #0x50]
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r1, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	movs r4, #0
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r1, #1
	mov r4, sb
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #3
	bl sub_08004344
_08017F22:
	bl WaitFrame
_08017F26:
	bl sub_080074CC
	cmp r0, #0
	bne _08017F32
	cmp r7, #0
	beq _08017EA0
_08017F32:
	ldr r2, _08017F50 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017F50: .4byte gUnknown_030063C4

	thumb_func_start sub_08017F54
sub_08017F54: @ 0x08017F54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _08017F9C @ =0x00100004
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08017FA0 @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	movs r7, #0
	mov sb, r1
	mov sl, r0
	b _0801802A
	.align 2, 0
_08017F9C: .4byte 0x00100004
_08017FA0: .4byte 0x0000FFFF
_08017FA4:
	str r7, [sp]
	add r0, sp, #0x10
	movs r1, #0x11
	mov r2, sb
	mov r3, sl
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _08018026
	bl sub_08007604
	cmp r0, #0
	bne _08018026
	bl sub_08007544
	adds r2, r0, #0
	cmp r2, #0
	bne _08018026
	ldr r0, [sp, #0x50]
	asrs r5, r0, #0xc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	asrs r4, r1, #0xc
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r1, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08005FC4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006008
	movs r4, #0
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r1, #1
	mov r4, sb
	ldrh r3, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0x11
	bl sub_08004344
_08018026:
	bl WaitFrame
_0801802A:
	bl sub_080074CC
	cmp r0, #0
	bne _08018036
	cmp r7, #0
	beq _08017FA4
_08018036:
	ldr r2, _08018054 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018054: .4byte gUnknown_030063C4

	thumb_func_start sub_08018058
sub_08018058: @ 0x08018058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r4, r0, #0
	str r1, [sp, #0x48]
	ldr r1, _080180A4 @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080180A8 @ =0x0000FFFF
	mov sb, r0
	movs r1, #0x1e
	mov sl, r1
	mov r2, sb
	ands r2, r4
	mov sb, r2
	asrs r4, r4, #0x10
	mov r8, r4
	lsls r2, r2, #0x10
	str r2, [sp, #0x4c]
	mov r0, r8
	lsls r0, r0, #0x10
	str r0, [sp, #0x50]
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	b _08018110
	.align 2, 0
_080180A4: .4byte 0x00100005
_080180A8: .4byte 0x0000FFFF
_080180AC:
	bl sub_08007510
	cmp r0, #0
	bne _0801810C
	bl sub_08007604
	cmp r0, #0
	bne _0801810C
	bl sub_08007544
	adds r5, r0, #0
	cmp r5, #0
	bne _0801810C
	mov r0, sb
	mov r1, r8
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	ldr r1, [sp, #0x4c]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x50]
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	movs r3, #0
	bl sub_08004344
_0801810C:
	bl WaitFrame
_08018110:
	bl sub_080074CC
	cmp r0, #0
	bne _08018126
	mov r1, sl
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0
	bne _080180AC
_08018126:
	ldr r2, _08018144 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018144: .4byte gUnknown_030063C4

	thumb_func_start sub_08018148
sub_08018148: @ 0x08018148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _0801818C @ =0x00100005
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08026ADC
	mov r1, sp
	adds r1, #0x31
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08018190 @ =0x0000FFFF
	ands r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #0x50]
	asrs r4, r4, #0x10
	lsls r4, r4, #0xc
	str r4, [sp, #0x54]
	add r1, sp, #0x44
	strh r2, [r1]
	mov r0, sp
	adds r0, #0x46
	strh r2, [r0]
	mov sl, r2
	b _08018222
	.align 2, 0
_0801818C: .4byte 0x00100005
_08018190: .4byte 0x0000FFFF
_08018194:
	bl sub_08007510
	cmp r0, #0
	bne _0801821E
	bl sub_08007604
	cmp r0, #0
	bne _0801821E
	bl sub_08007544
	adds r7, r0, #0
	cmp r7, #0
	bne _0801821E
	ldr r0, [sp, #0x50]
	asrs r4, r0, #0xc
	ldr r1, [sp, #0x54]
	asrs r1, r1, #0xc
	mov sb, r1
	adds r0, r4, #0
	movs r2, #0
	bl sub_08006008
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r2, sl
	str r2, [sp]
	add r0, sp, #0x10
	movs r1, #7
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r6, sp, #0x48
	movs r3, #0x4a
	add r3, sp
	mov r8, r3
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2]
	str r5, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #7
	bl sub_08004344
_0801821E:
	bl WaitFrame
_08018222:
	bl sub_080074CC
	cmp r0, #0
	bne _08018230
	mov r3, sl
	cmp r3, #0
	beq _08018194
_08018230:
	ldr r2, _08018250 @ =gUnknown_030063C4
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018250: .4byte gUnknown_030063C4
