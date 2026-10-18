	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08023E74
sub_08023E74: @ 0x08023E74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x24]
	ldr r1, _08023E90 @ =0x080548D0
	add r0, sp, #0x10
	movs r2, #0xc
	bl memcpy
	b _080242F0
	.align 2, 0
_08023E90: .4byte 0x080548D0
_08023E94:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _08023EBE
	ldr r0, _08023ECC @ =0x00018A93
	bl _08000400
	ldr r0, _08023ED0 @ =gPlayerStats
	adds r0, #0x64
	ldrh r0, [r0]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	bl WaitFrame
	bl sub_080074CC
	cmp r0, #0
	beq _08023EBE
	b _080242FA
_08023EBE:
	movs r1, #0x86
	lsls r1, r1, #1
	str r1, [sp, #0x2c]
	movs r2, #0x3c
	str r2, [sp, #0x30]
	b _0802416A
	.align 2, 0
_08023ECC: .4byte 0x00018A93
_08023ED0: .4byte gPlayerStats
_08023ED4:
	asrs r4, r6, #0x10
	movs r0, #0xd4
	subs r0, r0, r4
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08023EEA
	ldr r1, _08024194 @ =0x0000FFFF
_08023EEA:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, #0xd3
	bgt _08023F00
	movs r0, #0xd4
	str r0, [sp, #0x2c]
_08023F00:
	ldr r0, _08024198 @ =gKeysNew
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x64
	str r3, [sp, #0x3c]
	cmp r1, #0
	beq _08023F3E
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08023F26
	strh r5, [r3]
_08023F26:
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	adds r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySE
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08023F44
	movs r3, #0x3c
	str r3, [sp, #0x30]
_08023F3E:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
_08023F44:
	movs r1, #0x3c
	str r1, [sp, #0x30]
	movs r2, #0xd4
	str r2, [sp, #0x2c]
	movs r3, #0x12
	add r3, sp
	mov r8, r3
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08023F5A
	b _080240C4
_08023F5A:
	movs r1, #0
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _0802419C @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r6, r6, #0x10
	str r6, [sp, #0x34]
_08023F70:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xf
	ldr r3, [sp, #0x40]
	adds r2, r3, r1
	ldrh r1, [r2]
	str r0, [sp, #0x38]
	cmp r1, #0
	bne _08023F82
	b _080240B2
_08023F82:
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, #0x84
	ldr r1, _0802419C @ =gPlayerStats
	adds r0, r1, r0
	str r0, [sp, #0x28]
	movs r5, #0
	movs r2, #0
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r6, r0, #0x1d
	lsls r1, r1, #0x12
	lsrs r4, r1, #0x19
_08023F9C:
	lsls r0, r2, #0x10
	asrs r1, r0, #0xe
	ldr r2, _0802419C @ =gPlayerStats
	adds r1, r2, r1
	adds r2, r1, #0
	adds r2, #0x88
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1d
	adds r3, r0, #0
	cmp r6, r1
	bne _08023FC8
	ldrh r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r4, r0
	bne _08023FC8
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_08023FC8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r3, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08023F9C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	ble _0802408A
	ldr r3, [sp, #0x38]
	asrs r1, r3, #0x10
	movs r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x10
	movs r3, #0
	ldrsh r1, [r1, r3]
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #0x34]
	adds r4, r3, r1
	adds r6, r0, #0
	adds r6, #0x30
	str r2, [sp, #0x20]
	ldr r5, _080241A0 @ =gUnknown_03006510
	add r0, sp, #0x20
	movs r1, #0x64
	bl sub_080004A4
	add r2, sp, #0x1c
	movs r1, #0
	mov sl, r1
	strb r0, [r2]
	ldr r1, [sp, #0x20]
	strb r1, [r2, #1]
	lsls r0, r0, #0x18
	adds r7, r2, #0
	cmp r0, #0
	beq _08024040
	adds r0, r4, #0
	subs r0, #0xc
	ldrb r3, [r7]
	mov r2, sl
	str r2, [sp]
	adds r1, r5, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_08024040:
	ldrb r0, [r7, #1]
	movs r3, #0x1c
	adds r3, r3, r5
	mov sb, r3
	cmp r0, #9
	bhi _0802406E
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802406E
	subs r0, r4, #6
	mov r1, sl
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r1, [r5, #8]
	str r1, [sp, #8]
	ldr r1, [r5]
	str r1, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003518
_0802406E:
	ldrb r3, [r7, #1]
	movs r0, #0
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08003518
_0802408A:
	ldr r2, [sp, #0x38]
	asrs r0, r2, #0x10
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldr r2, [sp, #0x28]
	movs r3, #0
	bl sub_08023048
_080240B2:
	ldr r1, [sp, #0x38]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _080240C4
	b _08023F70
_080240C4:
	ldr r3, [sp, #0x2c]
	lsls r6, r3, #0x10
	asrs r5, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r4, _080241A4 @ =gUnknown_03006430
	adds r0, r5, r0
	adds r1, #0x28
	movs r2, #0
	str r2, [sp]
	ldr r3, _080241A8 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	movs r0, #0
	str r0, [sp]
	ldr r1, _080241A8 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08024162
	bl sub_080077C0
	cmp r0, #0
	bne _0802418C
	bl sub_08007510
	cmp r0, #0
	bne _0802418C
	ldr r4, _080241AC @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0802418C
	bl sub_08007544
	cmp r0, #0
	bne _08024162
	ldr r0, _080241B0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802418C
_08024162:
	bl sub_080075AC
	cmp r0, #0
	bne _0802418C
_0802416A:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x10
	ldr r3, _080241B4 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x2c]
	lsls r6, r0, #0x10
	cmp r1, #0
	ble _0802418C
	bl sub_080074CC
	adds r5, r0, #0
	cmp r5, #0
	bne _0802418C
	b _08023ED4
_0802418C:
	ldr r7, _080241A4 @ =gUnknown_03006430
	movs r1, #0
	mov sb, r1
	b _080242C0
	.align 2, 0
_08024194: .4byte 0x0000FFFF
_08024198: .4byte gKeysNew
_0802419C: .4byte gPlayerStats
_080241A0: .4byte gUnknown_03006510
_080241A4: .4byte gUnknown_03006430
_080241A8: .4byte 0x0300644C
_080241AC: .4byte gPlayers
_080241B0: .4byte gUnknown_030063D8
_080241B4: .4byte 0xFFFF0000
_080241B8:
	bl sub_08007544
	cmp r0, #0
	bne _080241D2
	ldr r0, _0802430C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080241D2
	b _080242F0
_080241D2:
	bl sub_080075AC
	cmp r0, #0
	beq _080241DC
	b _080242F0
_080241DC:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	movs r4, #0x86
	lsls r4, r4, #1
	subs r0, r4, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _080241F8
	movs r1, #1
_080241F8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _0802420C
	str r4, [sp, #0x2c]
_0802420C:
	movs r1, #0
	ldr r0, _08024310 @ =gPlayerStats
	adds r0, #0x64
	str r0, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	lsls r6, r2, #0x10
	ldr r3, _08024310 @ =gPlayerStats
	adds r3, #0x66
	str r3, [sp, #0x40]
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	asrs r5, r6, #0x10
_08024226:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #1
	ldr r1, [sp, #0x40]
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0802425C
	lsls r1, r4, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r5, r0
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x28
	ldrh r2, [r2]
	lsls r2, r2, #2
	adds r2, #0x84
	ldr r3, _08024310 @ =gPlayerStats
	adds r2, r3, r2
	movs r3, #0
	bl sub_08023048
_0802425C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08024226
	asrs r4, r6, #0x10
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r4, r0
	adds r1, #0x28
	mov r2, sb
	str r2, [sp]
	ldr r3, _08024314 @ =0x0300644C
	str r3, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08003518
	mov r0, sb
	str r0, [sp]
	ldr r1, _08024314 @ =0x0300644C
	str r1, [sp, #4]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #1
	bl sub_08003518
	bl WaitFrame
_080242C0:
	ldr r0, _08024318 @ =0x010B0000
	cmp r6, r0
	bgt _080242F0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _080241D2
	bl sub_080077C0
	cmp r0, #0
	bne _080242F0
	bl sub_08007510
	cmp r0, #0
	bne _080242F0
	ldr r4, _0802431C @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _080242F0
	b _080241B8
_080242F0:
	bl sub_080074CC
	cmp r0, #0
	bne _080242FA
	b _08023E94
_080242FA:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802430C: .4byte gUnknown_030063D8
_08024310: .4byte gPlayerStats
_08024314: .4byte 0x0300644C
_08024318: .4byte 0x010B0000
_0802431C: .4byte gPlayers
