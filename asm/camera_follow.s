	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0800588C
sub_0800588C: @ 0x0800588C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	ldr r1, [r0]
	lsls r1, r1, #4
	lsrs r5, r1, #0x10
	mov r2, sl
	ldr r1, [r2]
	lsls r1, r1, #4
	lsrs r4, r1, #0x10
	cmp r6, #0
	beq _08005930
	ldr r3, _0800592C @ =gMapLayer_03003C00
	ldr r2, [r3, #0x78]
	movs r1, #0x10
	ands r2, r1
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r2, #0
	bne _080058E2
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_080058E2:
	adds r4, r3, #0
	adds r4, #0x5c
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080058F2
	movs r1, #0
	strh r1, [r4]
_080058F2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005906
	strh r1, [r4]
_08005906:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005916
	movs r1, #0
	strh r1, [r4]
_08005916:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059FC
	b _080059FA
	.align 2, 0
_0800592C: .4byte gMapLayer_03003C00
_08005930:
	ldr r3, _080059D4 @ =gMapLayer_03003910
	ldr r1, [r3, #0x78]
	movs r2, #0x10
	mov ip, r2
	ands r1, r2
	lsls r7, r5, #0x10
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r1, #0
	bne _08005966
	adds r2, r3, #0
	adds r2, #0x60
	asrs r1, r7, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x5c
	strh r1, [r2]
	adds r2, #6
	asrs r1, r4, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	subs r1, #0x58
	adds r2, r3, #0
	adds r2, #0x5e
	strh r1, [r2]
_08005966:
	adds r5, r3, #0
	adds r5, #0x5c
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _08005974
	strh r6, [r5]
_08005974:
	movs r1, #0
	ldrsh r2, [r5, r1]
	adds r1, r3, #0
	adds r1, #0x58
	ldrh r1, [r1]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _08005988
	strh r1, [r5]
_08005988:
	adds r4, r3, #0
	adds r4, #0x5e
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08005996
	strh r6, [r4]
_08005996:
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r1, [r1]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _080059AA
	strh r1, [r4]
_080059AA:
	ldr r1, [r3, #0x78]
	mov r2, ip
	ands r1, r2
	cmp r1, #0
	bne _080059D8
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x64
	strh r1, [r2]
	subs r2, #2
	ldrh r1, [r4]
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x66
	strh r1, [r2]
	b _080059FC
	.align 2, 0
_080059D4: .4byte gMapLayer_03003910
_080059D8:
	adds r2, r3, #0
	adds r2, #0x60
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5]
	movs r1, #0x62
	adds r1, r1, r3
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	mov r2, ip
	ldrh r2, [r2]
	adds r1, r1, r2
_080059FA:
	strh r1, [r4]
_080059FC:
	mov r3, sb
	ldr r2, [r3]
	ldr r1, _08005A28 @ =0x00000FFF
	ands r2, r1
	mov r4, sl
	ldr r3, [r4]
	ands r3, r1
	asrs r1, r7, #4
	adds r2, r2, r1
	mov r1, sb
	str r2, [r1]
	mov r2, r8
	asrs r1, r2, #4
	adds r3, r3, r1
	str r3, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005A28: .4byte 0x00000FFF
