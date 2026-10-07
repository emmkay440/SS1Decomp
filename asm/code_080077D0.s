	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080077D0
sub_080077D0: @ 0x080077D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x174
	adds r7, r0, #0
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x134]
	ldr r1, _08007958 @ =0x00100010
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	bl sub_08026ADC
	add r4, sp, #0x4c
	ldr r1, _0800795C @ =0x00100004
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08026ADC
	ldr r1, [r4, #0xc]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r1, sp
	adds r1, #0x6d
	movs r4, #0
	movs r0, #8
	strb r0, [r1]
	bl sub_08026C78
	str r0, [sp, #0x12c]
	ldrh r0, [r7]
	bl sub_0802EF7C
	adds r0, r7, #0
	adds r0, #0x74
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	ldr r1, _08007960 @ =0x0000FFFF
	str r1, [sp, #0xb4]
	movs r2, #0
	str r2, [sp, #0xcc]
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [sp, #0xd4]
	movs r0, #0
	str r0, [sp, #0xf4]
	movs r1, #0
	str r1, [sp, #0x120]
	str r2, [sp, #0x114]
	mov r3, sp
	adds r3, #0x8e
	str r3, [sp, #0x13c]
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r3]
	add r0, sp, #0x8c
	add r1, sp, #0xcc
	ldrh r1, [r1]
	strh r1, [r0]
	str r2, [sp, #0x104]
	movs r3, #0x86
	add r3, sp
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r3]
	add r0, sp, #0x84
	add r1, sp, #0xcc
	ldrh r1, [r1]
	strh r1, [r0]
	mov r2, sp
	adds r2, #0x8a
	str r2, [sp, #0x138]
	add r3, sp, #0xcc
	ldrh r3, [r3]
	strh r3, [r2]
	add r5, sp, #0x88
	add r4, sp, #0xcc
	ldrh r4, [r4]
	strh r4, [r5]
	movs r0, #0
	str r0, [sp, #0xe8]
	add r4, sp, #0x98
	ldr r1, [sp, #0xcc]
	str r1, [r4]
	str r1, [r4, #4]
	movs r2, #0
	str r2, [sp, #0xfc]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r0, [r0]
	str r0, [sp, #0xe4]
	adds r0, r7, #0
	bl sub_0801574C
	adds r0, r7, #0
	bl sub_08016270
	bl sub_08016DC0
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r0, #0x2a
	strh r1, [r0]
	ldrh r0, [r7]
	lsls r0, r0, #0x18
	str r0, [r7, #0x7c]
	movs r6, #0
	adds r3, r7, #0
	adds r3, #0xc8
	str r3, [sp, #0x168]
	adds r4, r3, #0
_080078D6:
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x94
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0x94
	bl bzero
	adds r6, #1
	cmp r6, #4
	bls _080078D6
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0xa0
	str r4, [sp, #0x160]
	adds r0, r7, #0
	adds r0, #0xc4
	str r0, [sp, #0x164]
	movs r4, #0
_08007908:
	ldr r1, [r7, #0x1c]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r7, #0x20]
	adds r0, r0, r4
	movs r1, #0x1c
	bl bzero
	adds r4, #0x1c
	adds r6, #1
	cmp r6, #2
	bls _08007908
	movs r0, #0
	ldr r1, [sp, #0x160]
	strh r0, [r1]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08007932
	b _08007A2E
_08007932:
	movs r0, #1
	bl sub_08026C80
	movs r0, #1
	bl sub_08026D0C
	adds r0, r7, #0
	bl sub_0800C2C8
	ldr r0, _08007964 @ =0x080FB0F8
	ldr r0, [r0, #0x10]
	bl GetDataRecord
	ldr r1, [r0, #8]
	adds r2, r0, r1
	movs r6, #0
	ldrh r1, [r0, #0xc]
	b _0800796C
	.align 2, 0
_08007958: .4byte 0x00100010
_0800795C: .4byte 0x00100004
_08007960: .4byte 0x0000FFFF
_08007964: .4byte 0x080FB0F8
_08007968:
	adds r6, #1
	adds r2, #8
_0800796C:
	cmp r6, r1
	bhs _0800797C
	ldrh r0, [r2, #2]
	cmp r0, #3
	bne _08007968
	ldr r0, [r2, #4]
	adds r2, r2, r0
	str r2, [sp, #0x128]
_0800797C:
	ldr r0, _080079B8 @ =gPlayerStats
	ldr r2, _080079BC @ =0x00000272
	adds r1, r0, r2
	ldrh r1, [r1]
	lsrs r1, r1, #4
	movs r3, #0x9d
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r0, r1
	movs r2, #4
	ands r0, r2
	cmp r0, #0
	bne _080079C0
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	ldr r4, [sp, #0x128]
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0xf
	str r0, [r7, #0x58]
	ldrh r0, [r4, #0x1a]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	strh r2, [r7, #0xa]
	b _080079DC
	.align 2, 0
_080079B8: .4byte gPlayerStats
_080079BC: .4byte 0x00000272
_080079C0:
	ldrh r1, [r7, #0x10]
	ldr r0, _080079EC @ =0x0000FFFE
	ands r0, r1
	movs r1, #0
	strh r0, [r7, #0x10]
	ldr r2, [sp, #0x128]
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #0xf
	str r0, [r7, #0x58]
	ldrh r0, [r2, #0x16]
	adds r0, #2
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	strh r1, [r7, #0xa]
_080079DC:
	ldrh r0, [r7]
	cmp r0, #1
	beq _08007A06
	cmp r0, #1
	bgt _080079F0
	cmp r0, #0
	beq _080079FA
	b _08007A2E
	.align 2, 0
_080079EC: .4byte 0x0000FFFE
_080079F0:
	cmp r0, #2
	beq _08007A14
	cmp r0, #3
	beq _08007A24
	b _08007A2E
_080079FA:
	ldr r0, [r7, #0x5c]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r7, #0x5c]
	b _08007A2E
_08007A06:
	ldr r0, [r7, #0x58]
	ldr r4, _08007A10 @ =0xFFFFC000
	adds r0, r0, r4
	b _08007A2C
	.align 2, 0
_08007A10: .4byte 0xFFFFC000
_08007A14:
	ldr r0, [r7, #0x5c]
	ldr r1, _08007A20 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r7, #0x5c]
	b _08007A2E
	.align 2, 0
_08007A20: .4byte 0xFFFFC000
_08007A24:
	ldr r0, [r7, #0x58]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
_08007A2C:
	str r0, [r7, #0x58]
_08007A2E:
	movs r3, #3
	str r3, [sp, #0xd8]
	movs r4, #0
	str r4, [sp, #0x11c]
	movs r0, #0
	str r0, [sp, #0x100]
	movs r1, #0
	str r1, [sp, #0xdc]
	movs r2, #0
	str r2, [sp, #0x110]
	bl sub_0800AF24

	non_word_aligned_thumb_func_start sub_08007A46
sub_08007A46: @ 0x08007A46
	adds r3, r7, #0
	adds r3, #0x74
	str r3, [sp, #0x158]
	adds r4, r7, #0
	adds r4, #0x72
	str r4, [sp, #0x154]
	adds r0, r7, #0
	adds r0, #0x70
	str r0, [sp, #0x150]
	adds r1, r7, #0
	adds r1, #0x76
	str r1, [sp, #0x15c]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0x148]
	mov r3, sp
	adds r3, #0x82
	str r3, [sp, #0x14c]
	movs r4, #0xd0
	adds r4, r4, r7
	mov sb, r4
	b _08007A76
_08007A72:
	bl WaitFrame
_08007A76:
	bl sub_080075AC
	cmp r0, #0
	beq _08007AA2
	bl sub_080074CC
	cmp r0, #0
	bne _08007AA2
	bl sub_08007578
	cmp r0, #0
	beq _08007A72
	b _08007AA2
_08007A90:
	bl WaitFrame
	movs r0, #3
	str r0, [sp, #0xd8]
	movs r1, #0
	str r1, [sp, #0xcc]
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #0xd4]
_08007AA2:
	bl sub_08007544
	cmp r0, #0
	bne _08007ABA
	ldr r0, _08007ADC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007A90
_08007ABA:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08007AC2
	b _08008208
_08007AC2:
	ldr r0, _08007AE0 @ =gPlayerStats
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08007AE4
	movs r0, #2
	strh r0, [r7, #6]
	movs r0, #1
	b _08007AEA
	.align 2, 0
_08007ADC: .4byte 0x030063D8
_08007AE0: .4byte gPlayerStats
_08007AE4:
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #2
_08007AEA:
	strh r0, [r7, #8]
	bl sub_08007510
	cmp r0, #0
	bne _08007B8E
	bl sub_08007604
	cmp r0, #0
	bne _08007B8E
	bl sub_08016DC0
	adds r0, r7, #0
	bl sub_08017664
	ldr r0, [r7, #0x58]
	ldr r1, [r7, #0x5c]
	ldrh r2, [r7, #0x16]
	bl sub_08013D9C
	ldr r1, _08007B30 @ =gFrameCounter
	ldr r1, [r1]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #2
	add r1, sp
	adds r1, #0x98
	str r0, [r1]
	add r0, sp, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08007B34
	str r0, [sp, #0xe8]
	movs r4, #0
	str r4, [sp, #0xdc]
	b _08007B56
	.align 2, 0
_08007B30: .4byte gFrameCounter
_08007B34:
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _08007B42
	str r0, [sp, #0xe8]
	movs r0, #0
	str r0, [sp, #0xdc]
	b _08007B56
_08007B42:
	ldr r0, [sp, #0xdc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xdc]
	cmp r0, #2
	ble _08007B56
	movs r2, #0
	str r2, [sp, #0xe8]
	movs r3, #0
	str r3, [sp, #0xdc]
_08007B56:
	ldr r4, [sp, #0xe8]
	cmp r4, #0
	beq _08007B7C
	bl sub_08022A88
	cmp r0, #0
	bne _08007B7C
	bl sub_080076E0
	cmp r0, #0
	bne _08007B7C
	adds r2, r4, #0
	adds r2, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0x78
	movs r1, #0x8c
	bl sub_08023330
_08007B7C:
	ldr r0, [sp, #0x120]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x120]
	ldr r0, [sp, #0x110]
	lsls r0, r0, #0x10
	str r0, [sp, #0x144]
	b _08007D40
_08007B8E:
	bl sub_08007510
	ldr r1, [sp, #0x110]
	lsls r1, r1, #0x10
	str r1, [sp, #0x144]
	cmp r0, #0
	bne _08007B9E
	b _08007D40
_08007B9E:
	movs r6, #0
	adds r2, r7, #0
	adds r2, #0x24
	str r2, [sp, #0x140]
	movs r3, #0
	str r3, [sp, #0x16c]
	mov sl, r2
	mov r8, r3
_08007BAE:
	mov r4, sl
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08007BC4
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _08007BFC
_08007BC4:
	ldr r0, [r7, #0x1c]
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #6
	bgt _08007BD6
	cmp r0, #5
	blt _08007BD6
	bl sub_08046104
_08007BD6:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopBGM
	movs r1, #0
	mov r0, sl
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	add r0, r8
	strh r1, [r0]
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0x16c]
	adds r0, r0, r2
	movs r1, #0x1c
	bl bzero
	b _08007C06
_08007BFC:
	cmp r1, #0
	bge _08007C06
	movs r4, #0
	mov r3, sl
	strh r4, [r3]
_08007C06:
	ldr r0, [r7, #0x1c]
	add r0, r8
	ldrh r0, [r0]
	cmp r0, #1
	beq _08007C16
	cmp r0, #2
	beq _08007C8C
	b _08007D2C
_08007C16:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007C1E
	b _08007D2C
_08007C1E:
	bl sub_08007670
	cmp r0, #0
	beq _08007C28
	b _08007D2C
_08007C28:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _08007D2C
	bl sub_080077C0
	cmp r0, #0
	bne _08007CAC
	ldr r0, [sp, #0x140]
	add r0, r8
	ldrb r5, [r0]
	cmp r5, #0
	bne _08007D2C
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C5C
	movs r1, #1
_08007C5C:
	adds r4, r7, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	bne _08007CF2
	bl GetPlayerClass
	cmp r0, #2
	beq _08007D16
	cmp r0, #2
	bgt _08007C80
	cmp r0, #1
	beq _08007D0E
	b _08007C84
_08007C80:
	cmp r0, #3
	beq _08007D1E
_08007C84:
	movs r0, #0x45
	bl PlaySE
	b _08007D2C
_08007C8C:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	beq _08007D2C
	bl sub_08007670
	cmp r0, #0
	bne _08007D2C
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	bne _08007D2C
	bl sub_080077C0
	cmp r0, #0
	beq _08007CBA
_08007CAC:
	ldr r0, [sp, #0x140]
	add r0, r8
	strh r4, [r0]
	ldr r0, [r7, #0x1c]
	add r0, r8
	strh r4, [r0]
	b _08007D2C
_08007CBA:
	ldr r0, [sp, #0x140]
	add r0, r8
	ldrh r0, [r0]
	movs r5, #0x7f
	ands r5, r0
	cmp r5, #0
	bne _08007D2C
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007CE0
	movs r1, #2
_08007CE0:
	adds r4, r7, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	beq _08007CF6
_08007CF2:
	strh r5, [r4]
	b _08007D2C
_08007CF6:
	bl GetPlayerClass
	cmp r0, #2
	beq _08007D16
	cmp r0, #2
	bgt _08007D08
	cmp r0, #1
	beq _08007D0E
	b _08007D26
_08007D08:
	cmp r0, #3
	beq _08007D1E
	b _08007D26
_08007D0E:
	movs r0, #0x46
	bl PlaySE
	b _08007D2C
_08007D16:
	movs r0, #0x9d
	bl PlaySE
	b _08007D2C
_08007D1E:
	movs r0, #0x9e
	bl PlaySE
	b _08007D2C
_08007D26:
	movs r0, #0x45
	bl PlaySE
_08007D2C:
	ldr r3, [sp, #0x16c]
	adds r3, #0x1c
	str r3, [sp, #0x16c]
	movs r4, #2
	add sl, r4
	add r8, r4
	adds r6, #1
	cmp r6, #2
	bhi _08007D40
	b _08007BAE
_08007D40:
	bl sub_08007604
	cmp r0, #0
	bne _08007D50
	bl sub_080075AC
	cmp r0, #0
	beq _08007D5C
_08007D50:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopSE
_08007D5C:
	bl GetPlayerClass
	cmp r0, #1
	beq _08007DAC
	cmp r0, #2
	bne _08007DC8
	ldr r0, _08007DA8 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007DC8
	ldr r2, [sp, #0xf4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
	ldrh r0, [r1]
	movs r1, #7
	subs r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r2, r0
	ble _08007DC8
	ldrh r0, [r7]
	movs r1, #1
	bl sub_08016C34
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl sub_08027790
	movs r0, #0
	str r0, [sp, #0xf4]
	b _08007DC8
	.align 2, 0
_08007DA8: .4byte gPlayerStats
_08007DAC:
	ldr r0, [sp, #0x118]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x118]
	cmp r0, #0x3c
	bls _08007DC8
	adds r1, r7, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r1, #0
	str r1, [sp, #0x118]
_08007DC8:
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08007DE4
	bl sub_080271D0
	cmp r0, #0
	bne _08007DE4
	bl sub_08007510
	adds r5, r0, #0
	cmp r5, #0
	beq _08007DE8
_08007DE4:
	movs r0, #0
	b _08007E7C
_08007DE8:
	ldrh r1, [r7, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08007E1C
	ldr r0, [r7, #0x58]
	ldr r1, [r7, #0x5c]
	ldr r2, [r7, #0x60]
	ldr r3, [r7, #0x64]
	movs r4, #8
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #2]
	strh r5, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007E80
	ldrh r1, [r7, #0x10]
	ldr r0, _08007E18 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r7, #0x10]
	b _08007E80
	.align 2, 0
_08007E18: .4byte 0x0000FFFB
_08007E1C:
	adds r5, r7, #0
	adds r5, #0xc2
	ldrh r0, [r5]
	ldr r2, [sp, #0x164]
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, _08007E74 @ =gKeysHeld
	ldrh r1, [r2]
	movs r4, #0xf0
	ands r4, r1
	strh r4, [r0]
	ldrh r0, [r5]
	adds r0, #1
	movs r1, #5
	str r2, [sp, #0x170]
	bl __modsi3
	strh r0, [r5]
	ldr r2, [sp, #0x170]
	cmp r4, #0
	beq _08007E60
	movs r6, #0
	adds r3, r2, #0
	ldr r4, [sp, #0x164]
	ldr r2, [r4]
_08007E50:
	ldrh r0, [r3]
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r3]
	adds r2, #2
	adds r6, #1
	cmp r6, #4
	bls _08007E50
_08007E60:
	bl sub_0800F430
	cmp r0, #0
	beq _08007E7C
	ldr r0, _08007E74 @ =gKeysHeld
	ldrh r0, [r0]
	strh r0, [r7, #2]
	ldr r0, _08007E78 @ =gKeysNew
	ldrh r0, [r0]
	b _08007E7E
	.align 2, 0
_08007E74: .4byte gKeysHeld
_08007E78: .4byte gKeysNew
_08007E7C:
	strh r0, [r7, #2]
_08007E7E:
	strh r0, [r7, #4]
_08007E80:
	ldrh r2, [r7, #0x10]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08007E98
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #4]
	bics r1, r0
	strh r1, [r7, #4]
	ldr r0, _08007EE8 @ =0x0000FFEF
	ands r0, r2
	strh r0, [r7, #0x10]
_08007E98:
	ldr r1, [sp, #0x144]
	ldr r2, _08007EEC @ =0xFFFF0000
	adds r0, r1, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x110]
	cmp r0, #0
	bge _08007EAA
	movs r4, #0
	str r4, [sp, #0x110]
_08007EAA:
	ldrh r1, [r7, #0xc]
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #1
	bhi _08007EBC
	b _08008164
_08007EBC:
	ldrh r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08007EF4
	bl sub_080076E0
	cmp r0, #0
	beq _08007ED4
	b _08008164
_08007ED4:
	bl sub_08007604
	cmp r0, #0
	beq _08007EDE
	b _08008164
_08007EDE:
	ldr r0, _08007EF0 @ =0x00018A92
	bl SignalEvent
	b _08008164
	.align 2, 0
_08007EE8: .4byte 0x0000FFEF
_08007EEC: .4byte 0xFFFF0000
_08007EF0: .4byte 0x00018A92
_08007EF4:
	ldr r0, _08007F5C @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08007F92
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08007F92
	bl sub_080076E0
	cmp r0, #0
	beq _08007F14
	b _08008164
_08007F14:
	bl sub_08007510
	cmp r0, #0
	beq _08007F1E
	b _08008164
_08007F1E:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007F26
	b _08008164
_08007F26:
	ldr r0, [sp, #0xe8]
	cmp r0, #0
	bne _08007F2E
	b _08008164
_08007F2E:
	bl sub_080074F0
	cmp r0, #0
	beq _08007F60
	ldr r1, [sp, #0x110]
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _08007F40
	b _08008164
_08007F40:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2, #0x10]
	ldr r1, [r2]
	asrs r1, r1, #0xc
	ldr r2, [r2, #4]
	asrs r2, r2, #0xc
	ldr r3, [sp, #0xe8]
	adds r3, #0x18
	bl sub_08027648
	movs r3, #0x1e
	str r3, [sp, #0x110]
	b _08008164
	.align 2, 0
_08007F5C: .4byte gKeysNew
_08007F60:
	ldr r0, [sp, #0xe8]
	bl PickUpFieldItem
	cmp r0, #0
	bne _08007F78
	ldr r0, _08007F74 @ =0x0009000F
	movs r1, #0x1e
	bl sub_08027140
	b _08008164
	.align 2, 0
_08007F74: .4byte 0x0009000F
_08007F78:
	movs r0, #0x26
	bl PlaySE
	ldrh r1, [r7, #6]
	mvns r1, r1
	ldrh r2, [r7, #4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r7, #4]
	ldrh r0, [r7, #2]
	ands r1, r0
	strh r1, [r7, #2]
	b _08008164
_08007F92:
	adds r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007FD4
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bne _08007FA8
	b _08008164
_08007FA8:
	bl sub_08007510
	cmp r0, #0
	beq _08007FB2
	b _08008164
_08007FB2:
	bl sub_08007604
	cmp r0, #0
	beq _08007FBC
	b _08008164
_08007FBC:
	bl sub_080076E0
	cmp r0, #0
	beq _08007FC6
	b _08008164
_08007FC6:
	ldr r0, _08007FD0 @ =0x00018A93
	bl SignalEvent
	b _08008164
	.align 2, 0
_08007FD0: .4byte 0x00018A93
_08007FD4:
	ldrh r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08008062
	bl sub_080076E0
	cmp r0, #0
	beq _08007FE6
	b _08008164
_08007FE6:
	bl sub_08007510
	cmp r0, #0
	beq _08007FF0
	b _08008164
_08007FF0:
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	bne _08007FF8
	b _08008164
_08007FF8:
	ldr r6, [sp, #0xe4]
	adds r6, #0x64
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r5, [sp, #0xe4]
	adds r5, #0x66
	adds r1, r5, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800800E
	b _08008164
_0800800E:
	ldr r4, [sp, #0xcc]
	cmp r4, #0
	beq _08008016
	b _08008164
_08008016:
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq _0800801E
	b _08008164
_0800801E:
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, #0x84
	ldr r1, [sp, #0xe4]
	adds r0, r1, r0
	bl UseItem
	cmp r0, #0
	bne _08008032
	b _08008164
_08008032:
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, #1
	lsls r1, r0, #2
	ldr r2, [sp, #0xe4]
	adds r1, r2, r1
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r1, r1, #0x12
	lsrs r4, r1, #0x19
	bl TakeItemFromSlot
	adds r0, r4, #0
	bl sub_08014CF0
	adds r4, r0, #0
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	adds r1, r4, #1
	strh r1, [r0]
	b _08008164
_08008062:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080080A0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	beq _08008164
	bl sub_08007604
	cmp r0, #0
	bne _08008164
	bl sub_08007510
	cmp r0, #0
	bne _08008164
	bl sub_0800F298
	cmp r0, #0
	beq _08008164
	bl sub_080077C0
	cmp r0, #0
	bne _08008164
	bl sub_080076E0
	cmp r0, #0
	bne _08008164
	bl StartCharacterMenu
	b _08008164
_080080A0:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08008164
	bl sub_08016FA0
	cmp r0, #0
	bne _08008164
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _08008164
	cmp r0, #5
	beq _08008164
	cmp r0, #9
	beq _08008164
	bl sub_08007544
	cmp r0, #0
	bne _08008164
	bl sub_08007510
	cmp r0, #0
	bne _08008164
	bl sub_080271D0
	cmp r0, #0
	bne _08008164
	bl sub_080077C0
	cmp r0, #0
	bne _08008164
	bl sub_080076E0
	cmp r0, #0
	bne _08008164
	ldr r5, _08008128 @ =0x03003D94
	adds r0, r5, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08008164
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008164
	ldr r4, _0800812C @ =0x00000157
	adds r1, r1, r4
	ldrb r0, [r5, #2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08008164
	bl sub_080074F0
	adds r4, r0, #0
	cmp r4, #0
	beq _08008130
	bl GetMultiplayerId
	adds r1, r0, #0
	movs r0, #1
	movs r2, #0
	bl sub_08027828
	b _08008164
	.align 2, 0
_08008128: .4byte 0x03003D94
_0800812C: .4byte 0x00000157
_08008130:
	ldr r3, _0800821C @ =gKeysNew
	ldrh r1, [r7, #6]
	mvns r1, r1
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r0, [r7, #4]
	ands r1, r0
	movs r2, #0
	strh r1, [r7, #4]
	strh r4, [r7, #0xa]
	movs r0, #9
	strh r0, [r7, #0xc]
	movs r0, #0xc
	strh r0, [r7, #0xe]
	adds r0, r7, #0
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	strb r2, [r5, #2]
	ldr r1, _08008220 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
_08008164:
	bl sub_08007544
	cmp r0, #0
	beq _080081F6
	ldr r0, _08008224 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080081F6
	bl sub_08007638
	movs r6, #1
	cmp r0, #0
	beq _08008188
	movs r6, #0
_08008188:
	cmp r6, #0
	beq _080081F6
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xf
	ldr r2, [sp, #0x128]
	ldrh r1, [r2, #0x14]
	subs r0, r0, r1
	cmp r0, #0
	bge _0800819C
	rsbs r0, r0, #0
_0800819C:
	cmp r0, #2
	bgt _080081F6
	ldr r0, [r7, #0x5c]
	asrs r0, r0, #0xf
	ldr r3, [sp, #0x128]
	ldrh r1, [r3, #0x16]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #0
	bge _080081B2
	rsbs r0, r0, #0
_080081B2:
	cmp r0, #2
	bgt _080081F6
	ldrh r0, [r7, #0xc]
	cmp r0, #9
	beq _080081F6
	ldrh r2, [r7, #0x10]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _080081F6
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _080081F6
	movs r0, #9
	strh r0, [r7, #0xc]
	strh r3, [r7, #0xe]
	movs r0, #1
	orrs r0, r2
	strh r0, [r7, #0x10]
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08008228 @ =0x00090015
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
_080081F6:
	ldr r4, [sp, #0x160]
	ldrh r0, [r4]
	subs r0, #1
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08008208
	strh r1, [r4]
_08008208:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bls _08008210
	b _0800892C
_08008210:
	lsls r0, r0, #2
	ldr r1, _0800822C @ =_08008230
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800821C: .4byte gKeysNew
_08008220: .4byte 0x030064D8
_08008224: .4byte 0x030063D8
_08008228: .4byte 0x00090015
_0800822C: .4byte _08008230
_08008230: @ jump table
	.4byte _0800825C @ case 0
	.4byte _0800836C @ case 1
	.4byte _0800883E @ case 2
	.4byte _080084C6 @ case 3
	.4byte _08008666 @ case 4
	.4byte _08008838 @ case 5
	.4byte _0800883E @ case 6
	.4byte _0800885E @ case 7
	.4byte _080088CA @ case 8
	.4byte _08008920 @ case 9
	.4byte _0800892C @ case 10
_0800825C:
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0xf0]
	ldrh r2, [r7, #2]
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _0800826E
	movs r5, #5
_0800826E:
	ldrh r1, [r7, #6]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0800828C
	ldrh r0, [r7, #4]
	ands r1, r0
	cmp r1, #0
	bne _0800828C
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	b _08008290
_0800828C:
	movs r1, #0
	str r1, [sp, #0xfc]
_08008290:
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _080082BA
	bl sub_08016CE0
	cmp r0, #0
	beq _080082BA
	ldr r2, [sp, #0xfc]
	cmp r2, #5
	bls _080082BA
	movs r0, #3
	strh r0, [r7, #0xc]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0x80
	str r4, [sp, #0xf8]
	b _0800892C
_080082BA:
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08008360
	bl sub_08007544
	cmp r0, #0
	beq _080082CE
	b _0800892C
_080082CE:
	bl sub_08014220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [sp, #0x120]
	cmp r0, r1
	bls _080082DE
	b _0800892C
_080082DE:
	movs r2, #0
	str r2, [sp, #0x120]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008302
	cmp r0, #1
	bgt _080082F4
	cmp r0, #0
	beq _080082F8
	b _0800830E
_080082F4:
	cmp r0, #3
	bgt _0800830E
_080082F8:
	bl sub_080102C4
	cmp r0, #0
	beq _0800830E
	b _08008316
_08008302:
	bl sub_08016EDC
	cmp r0, #0
	beq _0800830E
	movs r3, #1
	str r3, [sp, #0x120]
_0800830E:
	ldr r4, [sp, #0x120]
	cmp r4, #0
	bne _08008316
	b _0800892C
_08008316:
	bl GetPlayerClass
	cmp r0, #1
	beq _0800832E
	cmp r0, #1
	bgt _08008328
	cmp r0, #0
	beq _08008340
	b _0800834E
_08008328:
	cmp r0, #3
	bgt _0800834E
	b _08008340
_0800832E:
	bl sub_08016EDC
	subs r0, #1
	movs r1, #0
	bl sub_0802F058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008346
_08008340:
	movs r0, #2
	strh r0, [r7, #0xc]
	b _0800834E
_08008346:
	ldr r0, _0800835C @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
_0800834E:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	b _08008858
	.align 2, 0
_0800835C: .4byte 0x0009001B
_08008360:
	cmp r5, #0
	bne _08008366
	b _0800892C
_08008366:
	movs r0, #1
	strh r0, [r7, #0xc]
	b _0800892C
_0800836C:
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800837C
	movs r5, #5
	b _08008386
_0800837C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008386
	movs r5, #1
_08008386:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080083A2
	cmp r5, #5
	bne _08008396
	movs r5, #4
	b _080083BC
_08008396:
	cmp r5, #1
	bne _0800839E
	movs r5, #2
	b _080083BC
_0800839E:
	movs r5, #3
	b _080083BC
_080083A2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080083BC
	cmp r5, #5
	bne _080083B2
	movs r5, #6
	b _080083BC
_080083B2:
	cmp r5, #1
	bne _080083BA
	movs r5, #8
	b _080083BC
_080083BA:
	movs r5, #7
_080083BC:
	ldrh r2, [r7, #6]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080083DA
	ldrh r0, [r7, #4]
	ands r2, r0
	cmp r2, #0
	bne _080083DA
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	b _080083DE
_080083DA:
	movs r4, #0
	str r4, [sp, #0xfc]
_080083DE:
	bl sub_08007544
	adds r4, r0, #0
	cmp r4, #0
	bne _08008408
	bl sub_08016CE0
	cmp r0, #0
	beq _08008408
	ldr r0, [sp, #0xfc]
	cmp r0, #5
	bls _08008408
	movs r0, #3
	strh r0, [r7, #0xc]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r1, #0
	str r1, [sp, #0xf0]
	movs r2, #0x80
	str r2, [sp, #0xf8]
	b _0800892C
_08008408:
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _080084BC
	bl sub_08014220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #0x120]
	cmp r0, r3
	bhi _080084BC
	bl sub_08007544
	cmp r0, #0
	beq _0800842A
	b _0800892C
_0800842A:
	cmp r5, #0
	beq _08008432
	subs r0, r5, #1
	b _08008434
_08008432:
	ldrh r0, [r7, #0xa]
_08008434:
	strh r0, [r7, #0xa]
	movs r4, #0
	str r4, [sp, #0x120]
	bl GetPlayerClass
	cmp r0, #1
	beq _0800845A
	cmp r0, #1
	bgt _0800844C
	cmp r0, #0
	beq _08008450
	b _08008466
_0800844C:
	cmp r0, #3
	bgt _08008466
_08008450:
	bl sub_080102C4
	cmp r0, #0
	beq _08008466
	b _0800846E
_0800845A:
	bl sub_08016EDC
	cmp r0, #0
	beq _08008466
	movs r0, #1
	str r0, [sp, #0x120]
_08008466:
	ldr r1, [sp, #0x120]
	cmp r1, #0
	bne _0800846E
	b _0800892C
_0800846E:
	bl GetPlayerClass
	cmp r0, #1
	beq _08008486
	cmp r0, #1
	bgt _08008480
	cmp r0, #0
	beq _08008498
	b _080084A6
_08008480:
	cmp r0, #3
	bgt _080084A6
	b _08008498
_08008486:
	bl sub_08016EDC
	subs r0, #1
	movs r1, #0
	bl sub_0802F058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800849E
_08008498:
	movs r0, #2
	strh r0, [r7, #0xc]
	b _080084A6
_0800849E:
	ldr r0, _080084B8 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
_080084A6:
	movs r0, #0
	ldr r2, [sp, #0x158]
	strh r0, [r2]
	ldr r3, [sp, #0x154]
	strh r0, [r3]
	movs r4, #0
	str r4, [sp, #0x120]
	b _0800892C
	.align 2, 0
_080084B8: .4byte 0x0009001B
_080084BC:
	cmp r5, #0
	beq _080084C2
	b _0800881E
_080084C2:
	strh r5, [r7, #0xc]
	b _0800892C
_080084C6:
	movs r3, #0
	str r3, [sp, #0xfc]
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080084DA
	movs r5, #5
	b _080084E4
_080084DA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080084E4
	movs r5, #1
_080084E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08008500
	cmp r5, #5
	bne _080084F4
	movs r5, #4
	b _0800851A
_080084F4:
	cmp r5, #1
	bne _080084FC
	movs r5, #2
	b _0800851A
_080084FC:
	movs r5, #3
	b _0800851A
_08008500:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800851A
	cmp r5, #5
	bne _08008510
	movs r5, #6
	b _0800851A
_08008510:
	cmp r5, #1
	bne _08008518
	movs r5, #8
	b _0800851A
_08008518:
	movs r5, #7
_0800851A:
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _080085AC
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	beq _0800859C
	movs r0, #5
	strh r0, [r7, #0xc]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008554
	cmp r0, #1
	bgt _0800853E
	cmp r0, #0
	beq _08008548
	b _08008586
_0800853E:
	cmp r0, #2
	beq _08008586
	cmp r0, #3
	beq _0800854E
	b _08008586
_08008548:
	bl sub_0800BE8C
	b _08008586
_0800854E:
	bl sub_0800C140
	b _08008586
_08008554:
	bl sub_08016EDC
	subs r0, #1
	ldrh r1, [r7, #0x14]
	bl sub_0802F058
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0800856E
	movs r0, #6
	strh r0, [r7, #0xc]
	b _08008586
_0800856E:
	ldr r0, _08008598 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r4, #0
	movs r0, #0
	str r0, [sp, #0xf0]
	movs r1, #0
	str r1, [sp, #0xf8]
	strh r4, [r7, #0xc]
_08008586:
	movs r0, #0
	ldr r3, [sp, #0x158]
	strh r0, [r3]
	ldr r4, [sp, #0x154]
	strh r0, [r4]
	str r0, [sp, #0x120]
	movs r1, #0
	str r1, [sp, #0xfc]
	b _0800892C
	.align 2, 0
_08008598: .4byte 0x0009001B
_0800859C:
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	strh r3, [r7, #0xc]
	b _0800875A
_080085AC:
	bl sub_08016CE0
	cmp r0, #0
	bne _080085BC
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0800865A
_080085BC:
	ldr r1, [sp, #0xf0]
	ldr r2, [sp, #0xf8]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0xf0]
	cmp r3, #0xff
	bls _0800865A
	lsrs r0, r0, #0x18
	ldrh r4, [r7, #0x12]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r1, #0xff
	ands r3, r1
	str r3, [sp, #0xf0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800865A
	ldrh r0, [r7, #0x14]
	adds r0, #1
	strh r0, [r7, #0x14]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	bl sub_08016D4C
	ldrh r1, [r7, #0x14]
	cmp r0, r1
	bge _08008606
	bl sub_08016D4C
	strh r0, [r7, #0x14]
	movs r0, #0x11
	b _08008658
_08008606:
	subs r0, r1, #1
	cmp r0, #4
	bhi _08008656
	lsls r0, r0, #2
	ldr r1, _08008618 @ =_0800861C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008618: .4byte _0800861C
_0800861C: @ jump table
	.4byte _08008630 @ case 0
	.4byte _08008638 @ case 1
	.4byte _08008640 @ case 2
	.4byte _08008648 @ case 3
	.4byte _08008650 @ case 4
_08008630:
	movs r0, #0x90
	bl PlaySE
	b _08008656
_08008638:
	movs r0, #0x96
	bl PlaySE
	b _08008656
_08008640:
	movs r0, #0x97
	bl PlaySE
	b _08008656
_08008648:
	movs r0, #0x98
	bl PlaySE
	b _08008656
_08008650:
	movs r0, #0x99
	bl PlaySE
_08008656:
	movs r0, #0
_08008658:
	strh r0, [r7, #0x12]
_0800865A:
	cmp r5, #0
	bne _08008660
	b _0800892C
_08008660:
	movs r0, #4
	strh r0, [r7, #0xc]
	b _0800892C
_08008666:
	movs r0, #0
	str r0, [sp, #0xfc]
	movs r5, #0
	ldrh r1, [r7, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800867A
	movs r5, #5
	b _08008684
_0800867A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008684
	movs r5, #1
_08008684:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080086A0
	cmp r5, #5
	bne _08008694
	movs r5, #4
	b _080086BA
_08008694:
	cmp r5, #1
	bne _0800869C
	movs r5, #2
	b _080086BA
_0800869C:
	movs r5, #3
	b _080086BA
_080086A0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080086BA
	cmp r5, #5
	bne _080086B0
	movs r5, #6
	b _080086BA
_080086B0:
	cmp r5, #1
	bne _080086B8
	movs r5, #8
	b _080086BA
_080086B8:
	movs r5, #7
_080086BA:
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	bne _08008762
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	beq _08008748
	bl GetPlayerClass
	cmp r0, #1
	beq _080086FE
	cmp r0, #1
	bgt _080086DA
	cmp r0, #0
	beq _080086E4
	b _08008730
_080086DA:
	cmp r0, #2
	beq _080086EE
	cmp r0, #3
	beq _080086F4
	b _08008730
_080086E4:
	movs r0, #5
	strh r0, [r7, #0xc]
	bl sub_0800BE8C
	b _08008730
_080086EE:
	movs r0, #5
	strh r0, [r7, #0xc]
	b _08008730
_080086F4:
	movs r0, #5
	strh r0, [r7, #0xc]
	bl sub_0800C140
	b _08008730
_080086FE:
	bl sub_08016EDC
	subs r0, #1
	ldrh r1, [r7, #0x14]
	bl sub_0802F058
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08008718
	movs r0, #6
	strh r0, [r7, #0xc]
	b _08008730
_08008718:
	ldr r0, _08008744 @ =0x0009001B
	movs r1, #0x1e
	bl sub_08027140
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	movs r1, #0
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	strh r1, [r7, #0xc]
_08008730:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x120]
	movs r4, #0
	str r4, [sp, #0xfc]
	b _0800892C
	.align 2, 0
_08008744: .4byte 0x0009001B
_08008748:
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x12]
	movs r0, #0
	str r0, [sp, #0x120]
	movs r1, #0
	str r1, [sp, #0xf0]
	movs r2, #0
	str r2, [sp, #0xf8]
	strh r0, [r7, #0xc]
_0800875A:
	movs r0, #0x21
	bl StopSE
	b _0800892C
_08008762:
	cmp r5, #0
	bne _0800876C
	movs r0, #3
	strh r0, [r7, #0xc]
	b _0800892C
_0800876C:
	bl sub_08016CE0
	cmp r0, #0
	bne _0800877C
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	b _0800881E
_0800877C:
	ldr r4, [sp, #0xf0]
	ldr r1, [sp, #0xf8]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0xf0]
	cmp r2, #0xff
	bls _0800881E
	lsrs r0, r0, #0x18
	ldrh r3, [r7, #0x12]
	adds r0, r0, r3
	movs r4, #0
	strh r0, [r7, #0x12]
	movs r1, #0xff
	ands r2, r1
	str r2, [sp, #0xf0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800881E
	ldrh r0, [r7, #0x14]
	adds r0, #1
	strh r0, [r7, #0x14]
	ldr r0, [sp, #0xf8]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	bl sub_08016D4C
	ldrh r1, [r7, #0x14]
	cmp r0, r1
	bge _080087CA
	bl sub_08016D4C
	strh r0, [r7, #0x14]
	movs r0, #0x11
	strh r0, [r7, #0x12]
	b _0800881E
_080087CA:
	strh r4, [r7, #0x12]
	ldrh r0, [r7, #0x14]
	subs r0, #1
	cmp r0, #4
	bhi _0800881E
	lsls r0, r0, #2
	ldr r1, _080087E0 @ =_080087E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080087E0: .4byte _080087E4
_080087E4: @ jump table
	.4byte _080087F8 @ case 0
	.4byte _08008800 @ case 1
	.4byte _08008808 @ case 2
	.4byte _08008810 @ case 3
	.4byte _08008818 @ case 4
_080087F8:
	movs r0, #0x90
	bl PlaySE
	b _0800881E
_08008800:
	movs r0, #0x96
	bl PlaySE
	b _0800881E
_08008808:
	movs r0, #0x97
	bl PlaySE
	b _0800881E
_08008810:
	movs r0, #0x98
	bl PlaySE
	b _0800881E
_08008818:
	movs r0, #0x99
	bl PlaySE
_0800881E:
	subs r0, r5, #1
	strh r0, [r7, #0xa]
	ldr r1, _08008834 @ =0x080FB5AC
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800B78C
	b _0800892C
	.align 2, 0
_08008834: .4byte 0x080FB5AC
_08008838:
	movs r3, #0
	str r3, [sp, #0xfc]
	b _0800892C
_0800883E:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _0800892C
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800892C
	movs r0, #0
	strh r0, [r7, #0xc]
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
_08008858:
	movs r3, #0
	str r3, [sp, #0x120]
	b _0800892C
_0800885E:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _080088BC
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _080088BC
	movs r3, #0
	str r3, [sp, #0xfc]
	adds r0, r7, #0
	bl ApplyPendingDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080088B0
	ldr r4, _080088AC @ =0x0000FFFD
	str r4, [sp, #0xb4]
	add r0, sp, #0xfc
	ldrh r1, [r0]
	ldr r0, [sp, #0x158]
	strh r1, [r0]
	add r1, sp, #0xfc
	ldrh r2, [r1]
	ldr r1, [sp, #0x154]
	strh r2, [r1]
	movs r0, #8
	strh r0, [r7, #0xc]
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_0800889E:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _0800889E
	b _080088BC
	.align 2, 0
_080088AC: .4byte 0x0000FFFD
_080088B0:
	add r2, sp, #0xfc
	ldrh r2, [r2]
	strh r2, [r7, #0xc]
	movs r0, #0x14
	ldr r3, [sp, #0x160]
	strh r0, [r3]
_080088BC:
	movs r4, #0
	str r4, [sp, #0x120]
	strh r4, [r7, #0x12]
	add r1, sp, #0x120
	ldrh r1, [r1]
	strh r1, [r7, #0x14]
	b _08008910
_080088CA:
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	ldr r1, [sp, #0xb4]
	cmp r0, r1
	bne _0800890A
	ldr r2, [sp, #0x15c]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800890A
	movs r3, #0
	str r3, [sp, #0xfc]
	movs r0, #9
	strh r0, [r7, #0xc]
	movs r0, #0xb
	strh r0, [r7, #0xe]
	movs r0, #0x75
	bl StopSE
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_080088F4:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _080088F4
	movs r4, #0x80
	str r4, [sp, #0xd4]
	ldr r0, _0800891C @ =0x00000111
	str r0, [sp, #0xd0]
	movs r1, #0
	str r1, [sp, #0xd8]
_0800890A:
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
_08008910:
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0
	str r3, [sp, #0xf8]
	b _0800892C
	.align 2, 0
_0800891C: .4byte 0x00000111
_08008920:
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	movs r4, #0
	str r4, [sp, #0xf0]
	str r0, [sp, #0xf8]
_0800892C:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08008934
	b _08008ADE
_08008934:
	bl sub_08007604
	cmp r0, #0
	bne _08008952
	bl sub_080074F0
	cmp r0, #0
	beq _0800894C
	adds r0, r7, #0
	bl sub_0800B4B4
	b _08008952
_0800894C:
	adds r0, r7, #0
	bl sub_0800B594
_08008952:
	bl sub_08007510
	cmp r0, #0
	bne _08008970
	adds r4, r7, #0
	adds r4, #0x58
	adds r5, r7, #0
	adds r5, #0x5c
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800588C
_08008970:
	movs r6, #0
	movs r1, #0xa2
	adds r1, r1, r7
	mov sl, r1
	ldr r2, [sp, #0x168]
	mov r8, r2
_0800897C:
	mov r3, sl
	ldrh r0, [r3]
	adds r0, r0, r6
	movs r1, #5
	bl __umodsi3
	adds r5, r0, #0
	mov r4, r8
	ldr r1, [r4]
	movs r0, #0x94
	adds r4, r5, #0
	muls r4, r0, r4
	adds r2, r4, r1
	ldrh r0, [r2]
	ldr r1, _080089D0 @ =0x0000FFFF
	cmp r0, r1
	beq _080089D4
	ldrh r0, [r7]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #0x28]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldrh r1, [r2, #0x3e]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _080089DA
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4, r0
	ldrh r2, [r0]
	ldr r1, _080089D0 @ =0x0000FFFF
	orrs r1, r2
	strh r1, [r0]
	mov r3, sl
	strh r5, [r3]
	b _080089DA
	.align 2, 0
_080089D0: .4byte 0x0000FFFF
_080089D4:
	adds r6, #1
	cmp r6, #4
	bls _0800897C
_080089DA:
	ldr r4, [sp, #0x108]
	cmp r4, #0
	bne _08008A02
	ldr r0, [r7, #0x54]
	cmp r0, #0
	beq _08008A02
	movs r0, #0x14
	str r0, [sp, #0x114]
	adds r1, r7, #0
	adds r1, #0x54
	adds r0, r7, #0
	adds r0, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x108]
	movs r1, #0
	str r1, [sp, #0x10c]
_08008A02:
	ldr r0, [sp, #0x114]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x114]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08008A98
	ldr r2, [sp, #0x108]
	cmp r2, #0
	bne _08008A28
	ldr r3, _08008A24 @ =0x0000FFFF
	str r3, [sp, #0x114]
	b _08008AA0
	.align 2, 0
_08008A24: .4byte 0x0000FFFF
_08008A28:
	ldr r4, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #8
	strh r0, [r4]
	bl sub_08007510
	cmp r0, #0
	beq _08008A56
	bl sub_08007604
	cmp r0, #0
	bne _08008A7A
	ldr r2, [sp, #0x10c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x58
	movs r0, #0x24
	ldr r2, [sp, #0x108]
	movs r3, #1
	bl sub_08026E70
	b _08008A7A
_08008A56:
	bl sub_08007604
	cmp r0, #0
	bne _08008A7A
	ldr r3, [sp, #0x148]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x10c]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x108]
	movs r3, #1
	bl sub_08026E70
_08008A7A:
	movs r0, #2
	ldr r1, [sp, #0x114]
	ands r0, r1
	cmp r0, #0
	beq _08008AA0
	ldr r2, [sp, #0x10c]
	lsls r0, r2, #0x10
	ldr r3, _08008A94 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10c]
	b _08008AA0
	.align 2, 0
_08008A94: .4byte 0xFFFF0000
_08008A98:
	movs r4, #0
	str r4, [sp, #0x108]
	ldr r0, _08008AF4 @ =0x0000FFFF
	str r0, [sp, #0x114]
_08008AA0:
	ldrh r0, [r7, #0xc]
	cmp r0, #7
	beq _08008ADE
	adds r0, r7, #0
	bl ApplyPendingDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008ADE
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	beq _08008ADE
	cmp r0, #9
	beq _08008ADE
	ldr r1, _08008AF8 @ =0x0000FFFD
	str r1, [sp, #0xb4]
	movs r0, #0
	ldr r2, [sp, #0x158]
	strh r0, [r2]
	ldr r3, [sp, #0x154]
	strh r0, [r3]
	movs r0, #8
	strh r0, [r7, #0xc]
	movs r6, #0
	movs r1, #0
	ldr r0, [r7, #0x1c]
_08008AD4:
	strh r1, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #2
	bls _08008AD4
_08008ADE:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bls _08008AE8
	bl _08009C7A
_08008AE8:
	lsls r0, r0, #2
	ldr r1, _08008AFC @ =_08008B00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008AF4: .4byte 0x0000FFFF
_08008AF8: .4byte 0x0000FFFD
_08008AFC: .4byte _08008B00
_08008B00: @ jump table
	.4byte _08008B94 @ case 0
	.4byte _08008EBC @ case 1
	.4byte _08009020 @ case 2
	.4byte _08008CFC @ case 3
	.4byte _08008E1C @ case 4
	.4byte _080091F8 @ case 5
	.4byte _0800941C @ case 6
	.4byte _0800951C @ case 7
	.4byte _08009692 @ case 8
	.4byte _08009730 @ case 9
	.4byte _08008B2C @ case 10
_08008B2C:
	mov r4, sb
	ldr r0, [r4]
	ldrh r5, [r0, #4]
	lsls r5, r5, #0x16
	lsrs r5, r5, #0x1a
	ldr r4, _08008B74 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r4, #0xd0
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r5, r0
	bne _08008B7C
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _08008B88
	cmp r0, #0
	blt _08008B88
	ldrb r0, [r1, #6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08008B7C
	ldrh r1, [r7, #0x10]
	ldr r0, _08008B78 @ =0x0000FFFD
	bl _080099E4
	.align 2, 0
_08008B74: .4byte gPlayers
_08008B78: .4byte 0x0000FFFD
_08008B7C:
	ldrh r1, [r7, #0x10]
	movs r0, #2
	orrs r0, r1
	strh r0, [r7, #0x10]
	bl _08009C7A
_08008B88:
	ldrh r1, [r7, #0x10]
	ldr r0, _08008B90 @ =0x0000FFFD
	bl _080099E4
	.align 2, 0
_08008B90: .4byte 0x0000FFFD
_08008B94:
	mov r1, sb
	ldr r4, [r1]
	ldr r3, [sp, #0xe4]
	ldrh r2, [r3, #0x20]
	movs r5, #0xf
	ands r2, r5
	ldrb r3, [r4]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r2, [r3, #4]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08008C48 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008C4C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #7]
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008C50
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
	b _08008CA8
	.align 2, 0
_08008C48: .4byte 0xFFFFFC0F
_08008C4C: .4byte 0xFFFFF000
_08008C50:
	bl sub_08007510
	cmp r0, #0
	beq _08008C6A
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _08008CA6
_08008C6A:
	adds r4, r7, #0
	adds r4, #0x7a
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08008C9A
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _08008CA6
_08008C9A:
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_08008CA6:
	strb r0, [r2, #6]
_08008CA8:
	mov r0, sb
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	ldr r3, _08008CF4 @ =0xFFFFF003
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2, #6]
	movs r6, #0
	adds r5, r3, #0
_08008CBA:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08008CEA
	mov r2, sb
	ldr r4, [r2]
	ldrh r3, [r4, #6]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x16
	adds r1, r0, #0
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	orrs r2, r0
	ldr r1, _08008CF8 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #2
	adds r0, r5, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #6]
_08008CEA:
	adds r6, #1
	cmp r6, #2
	bls _08008CBA
	b _0800900E
	.align 2, 0
_08008CF4: .4byte 0xFFFFF003
_08008CF8: .4byte 0x000003FF
_08008CFC:
	mov r4, sb
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r4, #0xf
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08008D94 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r1, sb
	ldr r3, [r1]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	mov r8, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r4, _08008D98 @ =0xFFFFFC0F
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl GetPlayerClass
	cmp r0, #1
	beq _08008DBE
	cmp r0, #1
	bgt _08008D9C
	cmp r0, #0
	beq _08008DA2
	b _0800900E
	.align 2, 0
_08008D94: .4byte 0xFFFFF000
_08008D98: .4byte 0xFFFFFC0F
_08008D9C:
	cmp r0, #3
	ble _08008DA2
	b _0800900E
_08008DA2:
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _0800900E
_08008DBE:
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	ldr r3, [r4]
	subs r0, #1
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08008E18 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	b _0800900E
	.align 2, 0
_08008E18: .4byte 0xFFFE1FFF
_08008E1C:
	mov r3, sb
	ldr r4, [r3]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r4, #4]
	ldr r0, _08008EB4 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008EB8 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _0800900E
	.align 2, 0
_08008EB4: .4byte 0xFFFFFC0F
_08008EB8: .4byte 0xFFFFF000
_08008EBC:
	mov r3, sb
	ldr r4, [r3]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r4, #4]
	ldr r0, _08008F70 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #4]
	ldr r4, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08008F74 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r1, sb
	ldr r2, [r1]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r1, [r2, #6]
	ldr r0, _08008F78 @ =0xFFFFF003
	ands r0, r1
	strh r0, [r2, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008F7C
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
	b _08008FD4
	.align 2, 0
_08008F70: .4byte 0xFFFFFC0F
_08008F74: .4byte 0xFFFFF000
_08008F78: .4byte 0xFFFFF003
_08008F7C:
	bl sub_08007510
	cmp r0, #0
	beq _08008F96
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _08008FD2
_08008F96:
	adds r4, r7, #0
	adds r4, #0x7a
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl __divsi3
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08008FC6
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _08008FD2
_08008FC6:
	mov r4, sb
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_08008FD2:
	strb r0, [r2, #6]
_08008FD4:
	movs r6, #0
	ldr r5, _08009018 @ =0xFFFFF003
_08008FD8:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08009008
	mov r0, sb
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x16
	ldrh r1, [r1]
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	orrs r2, r0
	ldr r1, _0800901C @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #2
	adds r0, r5, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #6]
_08009008:
	adds r6, #1
	cmp r6, #2
	bls _08008FD8
_0800900E:
	movs r2, #0
	str r2, [sp, #0x11c]
	bl _08009C7A
	.align 2, 0
_08009018: .4byte 0xFFFFF003
_0800901C: .4byte 0x000003FF
_08009020:
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r0, #0xf
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009088 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, [r4]
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	bl GetPlayerClass
	adds r4, r0, #0
	cmp r4, #1
	beq _08009158
	cmp r4, #1
	bgt _0800908C
	cmp r4, #0
	beq _08009110
	b _080091E2
	.align 2, 0
_08009088: .4byte 0xFFFFF000
_0800908C:
	cmp r4, #2
	beq _08009096
	cmp r4, #3
	beq _08009110
	b _080091E2
_08009096:
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009108 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl sub_080102C4
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #1
	bl sub_0802C174
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _0800910C @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #7
	ldrh r2, [r3, #6]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	b _080091E2
	.align 2, 0
_08009108: .4byte 0xFFFFFC0F
_0800910C: .4byte 0xFF807FFF
_08009110:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009154 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl sub_080102C4
	mov r2, sb
	ldr r3, [r2]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	b _080091E2
	.align 2, 0
_08009154: .4byte 0xFFFFFC0F
_08009158:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080091EC @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	bl sub_08016EDC
	mov r1, sb
	ldr r3, [r1]
	subs r0, #1
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _080091F0 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r1, sb
	ldr r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _080091F4 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080091D8
	rsbs r0, r0, #0
_080091D8:
	lsls r1, r0, #1
	ldrb r0, [r2, #7]
	ands r4, r0
	orrs r1, r4
	strb r1, [r2, #7]
_080091E2:
	movs r4, #0
	str r4, [sp, #0x11c]
	bl _08009C7A
	.align 2, 0
_080091EC: .4byte 0xFFFFFC0F
_080091F0: .4byte 0xFFFE1FFF
_080091F4: .4byte 0xFFFFFE01
_080091F8:
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r4, #0xf

	non_word_aligned_thumb_func_start sub_08009206
sub_08009206: @ 0x08009206
	mov r8, r4
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800926C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r1, sb
	ldr r3, [r1]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2, #0x20]
	movs r5, #0xf
	ands r1, r5
	ldrb r2, [r3]
	movs r6, #0x10
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	bl GetPlayerClass
	adds r4, r0, #0
	cmp r4, #1
	bne _0800925E
	b _08009378
_0800925E:
	cmp r4, #1
	bgt _08009270
	cmp r4, #0
	beq _0800927C
	bl _08009C7A
	.align 2, 0
_0800926C: .4byte 0xFFFFF000
_08009270:
	cmp r4, #2
	beq _080092E0
	cmp r4, #3
	beq _0800927C
	bl _08009C7A
_0800927C:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080092DC @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_080102C4
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	bl _08009C7A
	.align 2, 0
_080092DC: .4byte 0xFFFFFC0F
_080092E0:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009370 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_080102C4
	mov r4, sb
	ldr r3, [r4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	movs r0, #1
	bl sub_0802C174
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3, #4]
	ldr r2, _08009374 @ =0xFF807FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #7
	ldrh r2, [r3, #6]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	bl _08009C7A
	.align 2, 0
_08009370: .4byte 0xFFFFFC0F
_08009374: .4byte 0xFF807FFF
_08009378:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r3, #4]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009410 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	mov r1, sb
	ldr r3, [r1]
	subs r0, #1
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08009414 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r1, sb
	ldr r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _08009418 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009402
	rsbs r0, r0, #0
_08009402:
	lsls r1, r0, #1
	ldrb r0, [r2, #7]
	ands r4, r0
	orrs r1, r4
	strb r1, [r2, #7]
	bl _08009C7A
	.align 2, 0
_08009410: .4byte 0xFFFFFC0F
_08009414: .4byte 0xFFFE1FFF
_08009418: .4byte 0xFFFFFE01
_0800941C:
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r4, #0xf
	mov r8, r4
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r1, sb
	ldr r3, [r1]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _0800950C @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r2, sb
	ldr r4, [r2]
	ldr r3, [sp, #0xe4]
	ldrh r2, [r3, #0x20]
	mov r0, r8
	ands r2, r0
	ldrb r3, [r4]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	mov r2, sb
	ldr r3, [r2]
	ldrh r0, [r7, #0xc]
	mov r4, r8
	ands r0, r4
	ldrb r2, [r3, #4]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #4]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009510 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r7, #0x14]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	bl sub_08016EDC
	mov r2, sb
	ldr r3, [r2]
	subs r0, #1
	ands r0, r5
	lsls r0, r0, #0xd
	ldr r1, [r3, #4]
	ldr r2, _08009514 @ =0xFFFE1FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	movs r0, #1
	bl sub_0802C174
	mov r4, sb
	ldr r3, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	ldrh r2, [r3, #6]
	ldr r1, _08009518 @ =0xFFFFFE01
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
	bl Random
	ldr r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080094FE
	rsbs r0, r0, #0
_080094FE:
	lsls r2, r0, #1
	ldrb r1, [r3, #7]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #7]
	b _08009C7A
	.align 2, 0
_0800950C: .4byte 0xFFFFF000
_08009510: .4byte 0xFFFFFC0F
_08009514: .4byte 0xFFFE1FFF
_08009518: .4byte 0xFFFFFE01
_0800951C:
	mov r0, sb
	ldr r3, [r0]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r5, #0xf
	movs r6, #0xf
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009674 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	ands r1, r5
	ldrb r2, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #4]
	ldr r3, [r3]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009678 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r4, sb
	ldr r3, [r4]
	adds r4, r7, #0
	adds r4, #0xa6
	ldrh r1, [r4]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, sb
	ldr r2, [r0]
	ldrb r1, [r2, #5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #5]
	movs r0, #0
	strh r0, [r4]
	ldr r1, [sp, #0x11c]
	cmp r1, #0
	beq _080095E2
	b _08009C7A
_080095E2:
	bl GetPlayerClass
	cmp r0, #3
	beq _080095EC
	b _08009C7A
_080095EC:
	ldr r4, [sp, #0xe4]
	adds r4, #0x50
	ldrh r0, [r4]
	cmp r0, #0
	bne _080095F8
	b _08009C7A
_080095F8:
	movs r2, #1
	str r2, [sp, #0x11c]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800960A
	rsbs r0, r0, #0
_0800960A:
	movs r1, #0x64
	bl __modsi3
	ldrh r2, [r4]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, #0xf
	cmp r0, r1
	blt _0800961E
	b _08009C7A
_0800961E:
	adds r0, r7, #0
	adds r0, #0x7a
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, #0
	adds r1, #0x54
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r4, r7, #0
	adds r4, #0x9c
	cmp r0, #0
	ble _08009680
	ldr r0, [r4]
	cmp r0, #0
	beq _08009680
	subs r0, #1
	str r0, [r4]
	mov r0, sb
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #5]
	mov r1, sb
	ldr r3, [r1]
	ldr r2, _0800967C @ =0x080FB720
	ldr r1, [r4]
	lsls r1, r1, #1
	adds r0, r7, #0
	adds r0, #0xb8
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrb r1, [r0]
	strh r1, [r7, #0xa]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _0800968C
	.align 2, 0
_08009674: .4byte 0xFFFFF000
_08009678: .4byte 0xFFFFFC0F
_0800967C: .4byte 0x080FB720
_08009680:
	mov r3, sb
	ldr r2, [r3]
	ldrb r1, [r2, #5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #5]
_0800968C:
	movs r0, #0
	str r0, [r4]
	b _08009C7A
_08009692:
	mov r0, sb
	ldr r4, [r0]
	movs r1, #0xa
	ldrsh r2, [r7, r1]
	lsls r2, r2, #4
	ldrb r3, [r4, #3]
	movs r5, #0xf
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #3]
	mov r2, sb
	ldr r3, [r2]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xc
	lsls r0, r0, #4
	ldrh r2, [r3]
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	mov r4, sb
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009728 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldr r0, [sp, #0xe4]
	ldrh r1, [r0, #0x20]
	ands r1, r5
	ldrb r2, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_080102C4
	mov r1, sb
	ldr r3, [r1]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #5]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #5]
	mov r3, sb
	ldr r2, [r3]
	ldrh r0, [r7, #0xc]
	ands r0, r5
	ldrb r1, [r2, #4]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #4]
	ldr r3, [r3]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _0800972C @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	b _08009C7A
	.align 2, 0
_08009728: .4byte 0xFFFFF000
_0800972C: .4byte 0xFFFFFC0F
_08009730:
	mov r0, sb
	ldr r4, [r0]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	ldrb r2, [r4, #3]
	movs r5, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	mov r0, sb
	ldr r4, [r0]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r4]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	mov r1, sb
	ldr r4, [r1]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _080097BC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	mov r2, sb
	ldr r4, [r2]
	ldrh r1, [r7, #0xc]
	ands r1, r5
	ldrb r2, [r4, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	mov r4, sb
	ldr r2, [r4]
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #4
	ldrb r1, [r2, #5]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #5]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _080097C0 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7, #0xe]
	subs r0, #2
	cmp r0, #0xa
	bls _080097B2
	b _08009C7A
_080097B2:
	lsls r0, r0, #2
	ldr r1, _080097C4 @ =_080097C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080097BC: .4byte 0xFFFFF000
_080097C0: .4byte 0xFFFFFC0F
_080097C4: .4byte _080097C8
_080097C8: @ jump table
	.4byte _080097F4 @ case 0
	.4byte _08009854 @ case 1
	.4byte _08009908 @ case 2
	.4byte _080099D0 @ case 3
	.4byte _080099F0 @ case 4
	.4byte _08009A24 @ case 5
	.4byte _08009ADC @ case 6
	.4byte _08009B1C @ case 7
	.4byte _08009B1C @ case 8
	.4byte _08009B9C @ case 9
	.4byte _08009C20 @ case 10
_080097F4:
	bl sub_08007510
	cmp r0, #0
	beq _08009808
	mov r0, sb
	ldr r1, [r0]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	strh r0, [r1, #6]
	b _08009C7A
_08009808:
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd4]
	subs r3, r3, r4
	str r3, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r4, r3, #0xc
	strh r4, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r4, r0
	blt _0800982A
	b _08009C7A
_0800982A:
	movs r0, #0x75
	bl StopSE
	movs r0, #3
	strh r0, [r7, #0xe]
	mov r2, sb
	ldr r0, [r2]
	strh r4, [r0, #6]
	ldr r2, _08009850 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x14
	bl sub_0800F3A0
	ldrh r0, [r7, #0x16]
	strh r0, [r7, #0x18]
	b _08009C7A
	.align 2, 0
_08009850: .4byte gMapLayer_03003910
_08009854:
	bl sub_0800F298
	cmp r0, #0
	bne _0800985E
	b _08009C7A
_0800985E:
	bl sub_08007554
	movs r0, #0x75
	bl StopSE
	bl SndMPlayAllStop
	ldr r0, _080098F4 @ =0x000514C9
	bl SignalEvent
	ldrh r1, [r7, #0x10]
	ldr r0, _080098F8 @ =0x0000FFFE

	non_word_aligned_thumb_func_start sub_08009876
sub_08009876: @ 0x08009876
	ands r0, r1
	strh r0, [r7, #0x10]
	bl sub_08026FD0
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0
	str r4, [sp, #0xcc]
	strh r4, [r0, #6]
	add r2, sp, #0xcc
	ldrh r2, [r2]
	strh r2, [r7, #0x16]
	ldr r0, [r7, #0x58]
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	str r0, [r7, #0x6c]
	ldr r3, [sp, #0x128]
	ldrh r2, [r3, #0x14]
	lsls r2, r2, #0xf
	str r2, [r7, #0x58]
	ldrh r0, [r3, #0x16]
	adds r0, #4
	lsls r0, r0, #0xf
	str r0, [r7, #0x5c]
	mov r4, sb
	ldr r3, [r4]
	lsrs r2, r2, #8
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r3, [r4]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _080098FC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009900 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	add r0, sp, #0xcc
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r1, _08009904 @ =gMapLayer_03003C00
	adds r0, r1, #0
	adds r0, #0x5c
	add r2, sp, #0xcc
	ldrh r2, [r2]
	strh r2, [r0]
	ldr r0, [r4]
	b _08009AB8
	.align 2, 0
_080098F4: .4byte 0x000514C9
_080098F8: .4byte 0x0000FFFE
_080098FC: .4byte 0xFFFFF000
_08009900: .4byte 0xFFFFFC0F
_08009904: .4byte gMapLayer_03003C00
_08009908:
	ldr r4, _08009980 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800991A
	b _08009C7A
_0800991A:
	ldr r0, [sp, #0x130]
	bl sub_0802294C
	cmp r0, #0
	bne _08009926
	b _08009C7A
_08009926:
	ldr r0, [sp, #0x130]
	bl sub_08022964
	cmp r0, #0
	beq _080099B0
	ldr r0, _08009984 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #8
	beq _08009990
	bl sub_08007638
	cmp r0, #0
	beq _08009990
	ldr r0, [r4]
	adds r0, #0x9e
	ldrh r4, [r0]
	cmp r4, #1
	bne _08009990
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _08009988 @ =0x000900DD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
	movs r0, #9
	strh r0, [r7, #0xc]
	ldrh r1, [r7, #0x10]
	ldr r0, _0800998C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	strh r4, [r7, #0xe]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #0xc
	str r0, [r7, #0x60]
	ldr r0, [r7, #0x5c]
	asrs r0, r0, #0xc
	adds r0, #0x18
	str r0, [r7, #0x64]
	b _08009C7A
	.align 2, 0
_08009980: .4byte 0x030063D8
_08009984: .4byte gMapLayer_03003910
_08009988: .4byte 0x000900DD
_0800998C: .4byte 0x0000FFFE
_08009990:
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0xd4]
	movs r0, #6
	strh r0, [r7, #0xe]
	movs r0, #0x75
	bl PlaySE
	ldr r2, _080099AC @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	b _08009C7A
	.align 2, 0
_080099AC: .4byte gMapLayer_03003C00
_080099B0:
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _080099CC @ =0x000900DD
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x130]
	movs r0, #5
	strh r0, [r7, #0xe]
	b _08009C7A
	.align 2, 0
_080099CC: .4byte 0x000900DD
_080099D0:
	ldr r0, [sp, #0x130]
	bl sub_0802294C
	cmp r0, #0
	bne _080099DC
	b _08009C7A
_080099DC:
	movs r0, #0
	strh r0, [r7, #0xc]
	ldrh r1, [r7, #0x10]
	ldr r0, _080099EC @ =0x0000FFFE
_080099E4:
	ands r0, r1
	strh r0, [r7, #0x10]
	b _08009C7A
	.align 2, 0
_080099EC: .4byte 0x0000FFFE
_080099F0:
	ldr r4, [sp, #0xcc]
	ldr r0, [sp, #0xd4]
	subs r4, r4, r0
	str r4, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r2, r4, #0xc
	strh r2, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08009A12
	b _08009C7A
_08009A12:
	movs r0, #7
	strh r0, [r7, #0xe]
	mov r3, sb
	ldr r0, [r3]
	strh r2, [r0, #6]
	ldr r2, _08009A20 @ =gMapLayer_03003C00
	b _08009C06
	.align 2, 0
_08009A20: .4byte gMapLayer_03003C00
_08009A24:
	mov r4, sb
	ldr r1, [r4]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	movs r4, #0
	strh r0, [r1, #6]
	bl sub_0800F298
	cmp r0, #0
	bne _08009A3A
	b _08009C7A
_08009A3A:
	bl sub_08007564
	movs r0, #0x75
	bl StopSE
	ldr r0, _08009AC4 @ =0x000514C8
	bl SignalEvent
	ldr r2, _08009AC8 @ =gMapLayer_03003C00
	ldr r0, [r2, #0x78]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x78]
	ldrh r1, [r7, #0x10]
	ldr r0, _08009ACC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x68]
	str r0, [r7, #0x58]
	ldr r0, [r7, #0x6c]
	str r0, [r7, #0x5c]
	ldrh r0, [r7, #0x18]
	strh r0, [r7, #0x16]
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009AD0 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	mov r1, sb
	ldr r3, [r1]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #0xc
	lsls r1, r1, #4
	ldrh r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	mov r2, sb
	ldr r3, [r2]
	ldr r1, [r7, #0x5c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08009AD4 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	movs r0, #8
	strh r0, [r7, #0xe]
	ldr r1, _08009AD8 @ =gMapLayer_03003910
	adds r0, r1, #0
	adds r0, #0x5c
	strh r4, [r0]
	mov r3, sb
	ldr r0, [r3]
_08009AB8:
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	adds r1, #0x5e
	strh r0, [r1]
	b _08009C7A
	.align 2, 0
_08009AC4: .4byte 0x000514C8
_08009AC8: .4byte gMapLayer_03003C00
_08009ACC: .4byte 0x0000FFFE
_08009AD0: .4byte 0xFFFFFC0F
_08009AD4: .4byte 0xFFFFF000
_08009AD8: .4byte gMapLayer_03003910
_08009ADC:
	ldr r4, [sp, #0xcc]
	ldr r0, [sp, #0xd4]
	adds r4, r4, r0
	str r4, [sp, #0xcc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xd4]
	mov r2, sb
	ldr r0, [r2]
	asrs r1, r4, #0xc
	movs r2, #0
	strh r1, [r0, #6]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08009B00
	b _08009C7A
_08009B00:
	movs r0, #0xa0
	ldr r3, [sp, #0x160]
	strh r0, [r3]
	ldrh r1, [r7, #0x10]
	ldr r0, _08009B18 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	strh r2, [r7, #0xc]
	movs r4, #0
	str r4, [sp, #0xd8]
	b _08009C7A
	.align 2, 0
_08009B18: .4byte 0x0000FFFE
_08009B1C:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [sp, #0xcc]
	asrs r1, r2, #0xc
	strh r1, [r0, #6]
	bl sub_0800F298
	cmp r0, #0
	bne _08009B30
	b _08009C7A
_08009B30:
	ldrh r1, [r7, #0x10]
	ldr r0, _08009B94 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	adds r0, r7, #0
	ldr r1, [sp, #0x128]
	bl SpawnPlayer
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	mov r4, sb
	ldr r3, [r4]
	ldrh r1, [r7, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r3, [r4]
	ldrh r1, [r7, #0x16]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #4]
	ldr r0, _08009B98 @ =0xFFFFFC0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp, #0xcc]
	strh r1, [r0, #6]
	bl sub_08026FD0
	bl sub_08007638
	cmp r0, #0
	beq _08009C7A
	bl sub_08021078
	b _08009C7A
	.align 2, 0
_08009B94: .4byte 0x0000FFFE
_08009B98: .4byte 0xFFFFFC0F
_08009B9C:
	ldr r0, _08009BC0 @ =gKeysNew
	ldrh r1, [r0]
	ldrh r0, [r7, #6]
	ands r0, r1
	cmp r0, #0
	beq _08009BC8
	ldr r3, [sp, #0xd0]
	ldr r4, _08009BC4 @ =0xFFFFFEEF
	adds r3, r3, r4
	str r3, [sp, #0xd0]
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r3, r0
	bgt _08009BDA
	adds r0, #1
	str r0, [sp, #0xd0]
	b _08009BDA
	.align 2, 0
_08009BC0: .4byte gKeysNew
_08009BC4: .4byte 0xFFFFFEEF
_08009BC8:
	ldr r1, [sp, #0xd0]
	adds r1, #0x10
	str r1, [sp, #0xd0]
	ldr r0, _08009C18 @ =0x000007FF
	cmp r1, r0
	ble _08009BDA
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #0xd0]
_08009BDA:
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd0]
	subs r3, r3, r4
	str r3, [sp, #0xcc]
	mov r1, sb
	ldr r0, [r1]
	asrs r2, r3, #0xc
	strh r2, [r0, #6]
	ldrh r1, [r7, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08009C7A
	movs r0, #9
	strh r0, [r7, #0xe]
	mov r3, sb
	ldr r0, [r3]
	strh r2, [r0, #6]
	ldr r2, _08009C1C @ =gMapLayer_03003910
_08009C06:
	ldr r0, [r2, #0x78]
	movs r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x78]
	movs r0, #0x1e
	bl sub_0800F3A0
	b _08009C7A
	.align 2, 0
_08009C18: .4byte 0x000007FF
_08009C1C: .4byte gMapLayer_03003910
_08009C20:
	mov r4, sb
	ldr r3, [r4]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r4, #0xf
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _08009C98 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08009C48
	ldrh r0, [r7, #0xa]
	adds r0, #1
	strh r0, [r7, #0xa]
_08009C48:
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	cmp r0, #7
	ble _08009C7A
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r0, #0xd
	strh r0, [r7, #0xe]
	ldr r0, _08009C9C @ =0x03003D94
	bl GetCategory5Record
	adds r1, r0, #0
	mov r2, sb
	ldr r3, [r2]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r1, [r0]
	ands r1, r4
	ldrb r2, [r3, #6]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
_08009C7A:
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bls _08009C8C
	bl sub_0800A676
_08009C8C:
	lsls r0, r0, #2
	ldr r1, _08009CA0 @ =_08009CA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009C98: .4byte gFrameCounter
_08009C9C: .4byte 0x03003D94
_08009CA0: .4byte _08009CA4
_08009CA4: @ jump table
	.4byte _08009CCC @ case 0
	.4byte _08009D38 @ case 1
	.4byte _08009DD8 @ case 2
	.4byte _08009F94 @ case 3
	.4byte _0800A0A8 @ case 4
	.4byte _0800A0EC @ case 5
	.4byte _0800A254 @ case 6
	.4byte _0800A310 @ case 7
	.4byte _0800A422 @ case 8
	.4byte _0800A4DE @ case 9
_08009CCC:
	ldrh r4, [r7, #0xc]
	cmp r4, #0xa
	beq _08009CE0
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	b _08009D26
_08009CE0:
	movs r0, #0
	strh r0, [r7, #0x24]
	ldr r1, [r7, #0x1c]
	strh r0, [r1]
	movs r6, #0
	mov r2, sb
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _08009D04
	strh r3, [r2]
	strh r4, [r7, #0x24]
	b _08009D26
_08009D04:
	adds r6, #1
	cmp r6, #9
	bhi _08009D26
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009D04
	adds r0, r6, #1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r7, #0x24]
_08009D26:
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	b _08009DA4
_08009D38:
	ldrh r4, [r7, #0xc]
	cmp r4, #0xa
	beq _08009D4C
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	b _08009D92
_08009D4C:
	movs r0, #0
	strh r0, [r7, #0x24]
	ldr r1, [r7, #0x1c]
	strh r0, [r1]
	movs r6, #0
	mov r2, sb
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _08009D70
	strh r3, [r2]
	strh r4, [r7, #0x24]
	b _08009D92
_08009D70:
	adds r6, #1
	cmp r6, #9
	bhi _08009D92
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009D70
	adds r0, r6, #1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r7, #0x24]
_08009D92:
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
_08009DA4:
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _08009DD4 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	movs r0, #1
	str r0, [sp, #0xe0]
	bl _0800A668
	.align 2, 0
_08009DD4: .4byte 0x080FB630
_08009DD8:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _08009DF4
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _08009DF4
	b _08009F52
_08009DF4:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r0, [r1, #3]
	lsrs r3, r0, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009EF8
	cmp r0, #1
	bgt _08009E2A
	cmp r0, #0
	beq _08009E34
	b _08009F46
_08009E2A:
	cmp r0, #2
	beq _08009ECC
	cmp r0, #3
	beq _08009E98
	b _08009F46
_08009E34:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009E6C
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	subs r0, #1
	cmp r0, #1
	beq _08009E5E
	cmp r0, #1
	bgt _08009E50
	cmp r0, #0
	beq _08009E56
	b _08009E6C
_08009E50:
	cmp r0, #2
	beq _08009E66
	b _08009E6C
_08009E56:
	movs r0, #0x13
	bl PlaySE
	b _08009E6C
_08009E5E:
	movs r0, #0x14
	bl PlaySE
	b _08009E6C
_08009E66:
	movs r0, #0x15
	bl PlaySE
_08009E6C:
	ldr r3, _08009E94 @ =0x080FB680
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r1, [r2]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _08009F46
	.align 2, 0
_08009E94: .4byte 0x080FB680
_08009E98:
	ldr r2, _08009EC8 @ =0x080FB680
	ldrb r1, [r1, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r4, [sp, #0x150]
	strh r0, [r4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009F46
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08009F46
	movs r0, #0x14
	bl PlaySE
	b _08009F46
	.align 2, 0
_08009EC8: .4byte 0x080FB680
_08009ECC:
	ldr r2, _08009EF4 @ =0x080FB680
	ldrb r1, [r1, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	ldrh r0, [r7]
	mov r3, sb
	ldr r1, [r3]
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	bl sub_0802D49C
	b _08009F46
	.align 2, 0
_08009EF4: .4byte 0x080FB680
_08009EF8:
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	mov r4, sb
	ldr r0, [r4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	adds r1, #2
	strh r0, [r1]
	ldr r1, _08009F8C @ =0x080FB680
	ldr r2, _08009F90 @ =0x080FBB64
	ldr r0, [r4]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r7]
	bl sub_0802BFB0
_08009F46:
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	str r3, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_08009F52:
	ldr r4, [sp, #0x154]
	ldrh r0, [r4]
	cmp r0, #1
	bne _08009F86
	ldr r1, [sp, #0x158]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08009F86
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08009F86
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08009F86
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009F86
	movs r0, #0x19
	bl PlaySE
_08009F86:
	movs r3, #0
	str r3, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_08009F8C: .4byte 0x080FB680
_08009F90: .4byte 0x080FBB64
_08009F94:
	mov r4, sb
	ldr r3, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08009FDC
	cmp r0, #2
	beq _0800A02C
	ldrb r3, [r3, #3]
	lsrs r3, r3, #4
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _08009FD8 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	movs r0, #1
	b _0800A08C
	.align 2, 0
_08009FD8: .4byte 0x080FB630
_08009FDC:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _08009FF2
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A01C
_08009FF2:
	ldr r2, _0800A024 @ =0x080FB6D0
	ldr r1, _0800A028 @ =0x080FBB64
	ldr r0, [r3, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, #0x14
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [sp, #0x150]
	strh r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	adds r1, r1, r0
	ldr r3, [sp, #0x150]
	strh r1, [r3]
_0800A01C:
	movs r4, #0
	str r4, [sp, #0xe0]
	b _0800A08E
	.align 2, 0
_0800A024: .4byte 0x080FB6D0
_0800A028: .4byte 0x080FBB64
_0800A02C:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A042
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A08A
_0800A042:
	ldrb r0, [r3, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800A050
	movs r0, #0x80
	b _0800A074
_0800A050:
	movs r0, #0
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	ldr r3, _0800A0A4 @ =0x080FB630
	mov r4, sb
	ldr r1, [r4]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r0, [r2]
_0800A074:
	ldr r1, [sp, #0x150]
	strh r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	adds r0, r0, r3
	ldr r4, [sp, #0x150]
	strh r0, [r4]
_0800A08A:
	movs r0, #0
_0800A08C:
	str r0, [sp, #0xe0]
_0800A08E:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldr r2, [sp, #0x150]
	ldrh r2, [r2]
	str r2, [sp, #0xb4]
	b _0800A668
	.align 2, 0
_0800A0A4: .4byte 0x080FB630
_0800A0A8:
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #8
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A0E8 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	movs r2, #1
	str r2, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_0800A0E8: .4byte 0x080FB630
_0800A0EC:
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	ldr r4, [sp, #0xb4]
	cmp r0, r4
	bne _0800A108
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0xb8]
	cmp r0, r2
	bne _0800A108
	b _0800A246
_0800A108:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A11A
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A11A:
	movs r0, #0
	ldr r3, [sp, #0x158]
	strh r0, [r3]
	ldr r4, [sp, #0x154]
	strh r0, [r4]
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	ldr r1, [sp, #0x150]
	strh r0, [r1]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A144
	movs r0, #0x31
	bl PlaySE
_0800A144:
	mov r2, sb
	ldr r3, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A214
	cmp r0, #1
	bgt _0800A15C
	cmp r0, #0
	beq _0800A166
	b _0800A23A
_0800A15C:
	cmp r0, #2
	beq _0800A1D4
	cmp r0, #3
	beq _0800A1F8
	b _0800A23A
_0800A166:
	ldrb r1, [r3, #5]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A17E
	cmp r0, #1
	ble _0800A23A
	cmp r0, #2
	beq _0800A1C0
	cmp r0, #3
	beq _0800A1A0
	b _0800A23A
_0800A17E:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	movs r6, #0
	cmp r0, #2
	ble _0800A18A
	movs r6, #8
_0800A18A:
	ldr r0, _0800A19C @ =0x080FB6D0
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldr r3, [sp, #0x150]
	ldrh r3, [r3]
	adds r0, r0, r3
	ldr r4, [sp, #0x150]
	strh r0, [r4]
	b _0800A23A
	.align 2, 0
_0800A19C: .4byte 0x080FB6D0
_0800A1A0:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #1
	lsls r6, r0, #3
	ldr r0, _0800A1BC @ =0x080FB6D0
	ldr r0, [r0, #0xc]
	adds r0, r0, r6
	ldr r1, [sp, #0x150]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, [sp, #0x150]
	strh r0, [r2]
	b _0800A23A
	.align 2, 0
_0800A1BC: .4byte 0x080FB6D0
_0800A1C0:
	ldr r0, _0800A1D0 @ =0x080FB6D0
	ldr r1, [r0, #8]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _0800A23A
	.align 2, 0
_0800A1D0: .4byte 0x080FB6D0
_0800A1D4:
	ldr r2, _0800A1F4 @ =0x080FB680
	ldrb r1, [r3, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x28
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x150]
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r7]
	bl sub_0800C09C
	b _0800A23A
	.align 2, 0
_0800A1F4: .4byte 0x080FB680
_0800A1F8:
	ldr r2, _0800A210 @ =0x080FB6D0
	ldrb r1, [r3, #5]
	movs r0, #0xc
	ands r0, r1
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]

	non_word_aligned_thumb_func_start sub_0800A206
sub_0800A206: @ 0x0800A206
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	b _0800A23A
	.align 2, 0
_0800A210: .4byte 0x080FB6D0
_0800A214:
	ldr r2, _0800A24C @ =0x080FB680
	ldr r1, _0800A250 @ =0x080FBB64
	ldr r0, [r3, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r3, [sp, #0x150]
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r7]
	bl sub_0802BFB0
_0800A23A:
	ldr r4, [sp, #0x150]
	ldrh r4, [r4]
	str r4, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_0800A246:
	movs r0, #0
	str r0, [sp, #0xe0]
	b _0800A668
	.align 2, 0
_0800A24C: .4byte 0x080FB680
_0800A250: .4byte 0x080FBB64
_0800A254:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A270
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _0800A270
	b _0800A4D8
_0800A270:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A282
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A282:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A308 @ =0x080FB680
	ldr r2, _0800A30C @ =0x080FBB64
	mov r0, sb
	ldr r1, [r0]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	adds r2, #1
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r0, [r7]
	bl sub_0802BFB0
	ldr r2, [sp, #0x150]
	ldrh r2, [r2]
	str r2, [sp, #0xb4]
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	lsrs r0, r0, #1
	adds r1, #2
	strh r0, [r1]
	b _0800A4D8
	.align 2, 0
_0800A308: .4byte 0x080FB680
_0800A30C: .4byte 0x080FBB64
_0800A310:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A32C
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	bne _0800A32C
	b _0800A4D8
_0800A32C:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0800A352
	cmp r0, #2
	bgt _0800A344
	cmp r0, #1
	beq _0800A34A
	b _0800A376
_0800A344:
	cmp r0, #3
	beq _0800A35A
	b _0800A376
_0800A34A:
	movs r0, #0x46
	bl PlaySE
	b _0800A37C
_0800A352:
	movs r0, #0x9d
	bl PlaySE
	b _0800A37C
_0800A35A:
	ldrb r0, [r1, #5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800A36E
	ldrh r0, [r7]
	bl sub_0802CE40
	ldr r0, [r7, #0x7c]
	adds r0, #1
	str r0, [r7, #0x7c]
_0800A36E:
	movs r0, #0x9e
	bl PlaySE
	b _0800A37C
_0800A376:
	movs r0, #0x45
	bl PlaySE
_0800A37C:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #0x10
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A3F4 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r2, [r1]
	str r2, [sp, #0xb4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A3D6
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
_0800A3D6:
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800A4D8
	subs r0, #1
	cmp r0, #1
	beq _0800A4D8
	cmp r0, #1
	bgt _0800A3F8
	cmp r0, #0
	beq _0800A3FE
	b _0800A4D8
	.align 2, 0
_0800A3F4: .4byte 0x080FB630
_0800A3F8:
	cmp r0, #2
	beq _0800A410
	b _0800A4D8
_0800A3FE:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	bl sub_08018290
	b _0800A4D8
_0800A410:
	ldrh r0, [r1]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #8
	bl sub_08018314
	b _0800A4D8
_0800A422:
	ldr r1, [sp, #0x150]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	cmp r0, r2
	bne _0800A43C
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0xb8]
	cmp r0, r4
	beq _0800A4D8
_0800A43C:
	movs r0, #0
	ldr r1, [sp, #0x158]
	strh r0, [r1]
	ldr r2, [sp, #0x154]
	strh r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0xb8]
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	adds r3, #0x18
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A4B0 @ =0x080FB630
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r1, [sp, #0x150]
	strh r3, [r1]
	ldrh r2, [r1]
	str r2, [sp, #0xb4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A4D8
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x21
	bl StopSE
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0800A4C2
	cmp r0, #2
	bgt _0800A4B4
	cmp r0, #1
	beq _0800A4BA
	b _0800A4D2
	.align 2, 0
_0800A4B0: .4byte 0x080FB630
_0800A4B4:
	cmp r0, #3
	beq _0800A4CA
	b _0800A4D2
_0800A4BA:
	movs r0, #0x9a
	bl PlaySE
	b _0800A4D8
_0800A4C2:
	movs r0, #0x69
	bl PlaySE
	b _0800A4D8
_0800A4CA:
	movs r0, #0x9e
	bl PlaySE
	b _0800A4D8
_0800A4D2:
	movs r0, #0x69
	bl PlaySE
_0800A4D8:
	movs r4, #0
	str r4, [sp, #0xe0]
	b _0800A668
_0800A4DE:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	cmp r0, #0xf
	bls _0800A4EC
	b _0800A668
_0800A4EC:
	lsls r0, r0, #2
	ldr r1, _0800A4F8 @ =_0800A4FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A4F8: .4byte _0800A4FC
_0800A4FC: @ jump table
	.4byte _0800A53C @ case 0
	.4byte _0800A546 @ case 1
	.4byte _0800A564 @ case 2
	.4byte _0800A668 @ case 3
	.4byte _0800A5C6 @ case 4
	.4byte _0800A668 @ case 5
	.4byte _0800A564 @ case 6
	.4byte _0800A668 @ case 7
	.4byte _0800A564 @ case 8
	.4byte _0800A668 @ case 9
	.4byte _0800A668 @ case 10
	.4byte _0800A592 @ case 11
	.4byte _0800A5C0 @ case 12
	.4byte _0800A5FC @ case 13
	.4byte _0800A648 @ case 14
	.4byte _0800A53C @ case 15
_0800A53C:
	ldrh r1, [r7, #0x10]
	movs r0, #3
	orrs r0, r1
	strh r0, [r7, #0x10]
	b _0800A668
_0800A546:
	ldrh r0, [r7, #0x10]
	ldr r1, _0800A560 @ =0x0000FFFC
	ands r1, r0
	movs r2, #0
	movs r0, #4
	orrs r1, r0
	strh r1, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800A55C
	b _0800A668
_0800A55C:
	strh r2, [r7, #0xc]
	b _0800A668
	.align 2, 0
_0800A560: .4byte 0x0000FFFC
_0800A564:
	mov r2, sb
	ldr r0, [r2]
	ldrb r3, [r0, #3]
	lsrs r3, r3, #4
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	ldr r4, _0800A5BC @ =0x080FB630
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r0, [sp, #0x150]
	strh r3, [r0]
_0800A592:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800A668
	mov r1, sb
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0xc
	str r0, [sp, #0xcc]
	movs r2, #0
	str r2, [sp, #0xd8]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ldr r3, [sp, #0xcc]
	ands r0, r3
	cmp r0, #0
	beq _0800A668
	movs r0, #0xf0
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [sp, #0xcc]
	b _0800A668
	.align 2, 0
_0800A5BC: .4byte 0x080FB630
_0800A5C0:
	movs r0, #0x6b
	bl PlaySE
_0800A5C6:
	mov r4, sb
	ldr r0, [r4]
	ldrb r3, [r0, #3]
	lsrs r3, r3, #4
	ldr r0, [sp, #0x150]
	strh r3, [r0]
	ldr r4, _0800A5F8 @ =0x080FB630
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	movs r2, #0xc
	ands r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r0, [r2]
	adds r3, r3, r0
	ldr r4, [sp, #0x150]
	strh r3, [r4]
	b _0800A668
	.align 2, 0
_0800A5F8: .4byte 0x080FB630
_0800A5FC:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A628
	ldr r1, [sp, #0x100]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	cmp r1, #5
	bls _0800A630
	movs r0, #0xe
	strh r0, [r7, #0xe]
	ldr r1, _0800A624 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x100]
	b _0800A630
	.align 2, 0
_0800A624: .4byte 0x030064D8
_0800A628:
	ldr r1, _0800A644 @ =0x030064D8
	ldrh r0, [r7]
	adds r0, #1
	str r0, [r1]
_0800A630:
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r7, #0
	bl sub_08027188
	b _0800A668
	.align 2, 0
_0800A644: .4byte 0x030064D8
_0800A648:
	bl sub_0800F298
	cmp r0, #0
	beq _0800A668
	bl sub_08007604
	cmp r0, #0
	bne _0800A668
	ldr r0, _0800A738 @ =0x030064D8
	ldr r1, [r0]
	cmp r1, #0
	bne _0800A668
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A668
	strh r1, [r7, #0xc]
_0800A668:
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800A6BA

	non_word_aligned_thumb_func_start sub_0800A676
sub_0800A676: @ 0x0800A676
	ldr r3, [sp, #0xcc]
	ldr r4, [sp, #0xd4]
	adds r3, r3, r4
	str r3, [sp, #0xcc]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r4, r0
	str r4, [sp, #0xd4]
	cmp r3, #0
	blt _0800A6A6
	movs r0, #0xc0
	lsls r0, r0, #4
	ldr r1, [sp, #0xd8]
	asrs r0, r1
	rsbs r0, r0, #0
	str r0, [sp, #0xd4]
	adds r1, #1
	str r1, [sp, #0xd8]
	ldr r2, _0800A73C @ =0xFFFFE000
	str r2, [sp, #0xcc]
	ldrh r1, [r7, #0x10]
	ldr r0, _0800A740 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r7, #0x10]
_0800A6A6:
	ldr r3, [sp, #0xd8]
	cmp r3, #2
	ble _0800A6BA
	movs r4, #3
	str r4, [sp, #0xd8]
	movs r0, #0
	str r0, [sp, #0xcc]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [sp, #0xd4]
_0800A6BA:
	add r1, sp, #0x10
	ldrh r0, [r7]
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r4, _0800A744 @ =0x080FB610
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	mov r8, r0
	mov r3, sb
	ldr r0, [r3]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetDataRecord
	mov sl, r0
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xec]
	ldr r2, [sp, #0x150]
	ldrh r0, [r2]
	ldr r3, [sp, #0xe0]
	str r3, [sp]
	ldr r1, [sp, #0x154]
	ldr r2, [sp, #0x158]
	mov r3, r8
	bl sub_08004214
	ldr r4, [sp, #0x15c]
	strh r0, [r4]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A79A
	cmp r0, #9
	beq _0800A748
	mov r1, sb
	ldr r0, [r1]
	b _0800A75A
	.align 2, 0
_0800A738: .4byte 0x030064D8
_0800A73C: .4byte 0xFFFFE000
_0800A740: .4byte 0x0000FFBF
_0800A744: .4byte 0x080FB610
_0800A748:
	ldrh r0, [r7, #0xe]
	cmp r0, #2
	beq _0800A752
	cmp r0, #6
	bne _0800A756
_0800A752:
	movs r6, #0
	b _0800A776
_0800A756:
	mov r2, sb
	ldr r0, [r2]
_0800A75A:
	ldrh r5, [r0]
	lsrs r5, r5, #4
	ldrh r4, [r0, #2]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x14
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800A776:
	bl sub_08007544
	adds r3, r0, #0
	mov r4, sb
	ldr r1, [r4]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_08005FC4
	b _0800A808
_0800A79A:
	mov r0, sb
	ldr r3, [r0]
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _0800A7B8
	ldrb r0, [r3, #5]
	lsrs r0, r0, #4
	cmp r0, #2
	beq _0800A7B4
	cmp r0, #6
	bne _0800A7B8
_0800A7B4:
	movs r6, #0
	b _0800A7DA
_0800A7B8:
	ldrh r0, [r3]
	lsrs r4, r0, #4
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	movs r2, #0
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800A7D0
	movs r2, #1
_0800A7D0:
	adds r0, r4, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800A7DA:
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r1]
	lsrs r4, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x14
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _0800A7FA
	movs r2, #1
_0800A7FA:
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_08005FC4
_0800A808:
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A814
	b _0800ACAA
_0800A814:
	ldr r4, _0800A880 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r1, [r0, #0x16]
	mov r3, sb
	ldr r0, [r3]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	beq _0800A832
	b _0800ACAA
_0800A832:
	bl sub_08007510
	cmp r0, #0
	beq _0800A83C
	b _0800A978
_0800A83C:
	bl sub_08007604
	cmp r0, #0
	beq _0800A846
	b _0800A9C4
_0800A846:
	ldrh r1, [r7, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800A884
	ldr r4, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xcc]
	asrs r2, r4, #0xc
	adds r1, r1, r2
	ldr r3, [sp, #0x150]
	ldrh r2, [r3]
	ldr r4, [sp, #0x154]
	ldrh r3, [r4]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r4, r8
	str r4, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0800A8A8
	.align 2, 0
_0800A880: .4byte gPlayers
_0800A884:
	ldr r0, _0800A974 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800A8A8
	mov r0, sb
	ldr r1, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r3, [sp, #0xcc]
	asrs r2, r3, #0xc
	adds r1, r1, r2
	bl sub_08029BB4
_0800A8A8:
	bl sub_08001F98
	cmp r0, #0
	bne _0800A8E2
	ldr r4, [sp, #0xcc]
	cmp r4, #0
	beq _0800A8E2
	mov r0, r8
	bl sub_080044DC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [sp, #0x148]
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r4, r3]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r3, r8
	str r3, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	movs r3, #0
	bl sub_08004344
_0800A8E2:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bne _0800A9C4
	ldrb r0, [r1, #5]
	lsrs r0, r0, #4
	cmp r0, #2
	beq _0800A8FC
	cmp r0, #0xb
	bne _0800A9C4
_0800A8FC:
	ldr r3, [sp, #0x20]
	movs r4, #1
	str r4, [sp]
	movs r0, #0
	add r1, sp, #0x84
	mov r2, sp
	adds r2, #0x86
	bl sub_08004214
	ldr r3, [sp, #0x20]
	str r4, [sp]
	movs r0, #1
	add r1, sp, #0x88
	mov r2, sp
	adds r2, #0x8a
	bl sub_08004214
	ldr r1, [sp, #0x148]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x14c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xcc]
	asrs r4, r2, #0xc
	adds r1, r1, r4
	subs r1, #0x18
	add r2, sp, #0x84
	ldrh r3, [r2]
	str r6, [sp]
	add r5, sp, #0x34
	str r5, [sp, #4]
	ldr r2, [sp, #0x20]
	str r2, [sp, #8]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	ldr r3, [sp, #0x148]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x14c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, r1, r4
	adds r1, #8
	add r4, sp, #0x88
	ldrh r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x20]
	str r2, [sp, #8]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	b _0800A9C4
	.align 2, 0
_0800A974: .4byte gFrameCounter
_0800A978:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800A9C4
	bl sub_08045F6C
	cmp r0, #8
	bne _0800A9A6
	ldr r0, [sp, #0x150]
	ldrh r2, [r0]
	ldr r1, [sp, #0x154]
	ldrh r3, [r1]
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	movs r0, #0x1c
	movs r1, #0x58
	bl sub_08004344
	b _0800A9C4
_0800A9A6:
	ldr r3, [sp, #0x150]
	ldrh r2, [r3]
	ldr r4, [sp, #0x154]
	ldrh r3, [r4]
	str r6, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r4, sl
	str r4, [sp, #0xc]
	movs r0, #0x24
	movs r1, #0x58
	bl sub_08004344
_0800A9C4:
	mov r0, sb
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A9D4
	b _0800AAF8
_0800A9D4:
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r0, #3
	cmp r0, #1
	bls _0800A9E2
	b _0800AAF8
_0800A9E2:
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bgt _0800A9EE
	b _0800AAF8
_0800A9EE:
	cmp r0, #3
	ble _0800A9F8
	movs r1, #1
	str r1, [sp, #0x104]
	b _0800AA00
_0800A9F8:
	cmp r0, #0
	blt _0800AA00
	movs r2, #0
	str r2, [sp, #0x104]
_0800AA00:
	mov r3, sb
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1c
	cmp r0, #7
	bhi _0800AA5E
	lsls r0, r0, #2
	ldr r1, _0800AA18 @ =_0800AA1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AA18: .4byte _0800AA1C
_0800AA1C: @ jump table
	.4byte _0800AA5E @ case 0
	.4byte _0800AA3C @ case 1
	.4byte _0800AA42 @ case 2
	.4byte _0800AA48 @ case 3
	.4byte _0800AA5E @ case 4
	.4byte _0800AA54 @ case 5
	.4byte _0800AA4E @ case 6
	.4byte _0800AA54 @ case 7
_0800AA3C:
	ldr r0, [sp, #0x104]
	adds r0, #2
	b _0800AA58
_0800AA42:
	ldr r0, [sp, #0x104]
	adds r0, #4
	b _0800AA58
_0800AA48:
	ldr r0, [sp, #0x104]
	adds r0, #6
	b _0800AA58
_0800AA4E:
	ldr r0, [sp, #0x104]
	adds r0, #8
	b _0800AA58
_0800AA54:
	ldr r0, [sp, #0x104]
	adds r0, #0xa
_0800AA58:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x104]
_0800AA5E:
	add r1, sp, #0x10
	movs r0, #8
	strb r0, [r1, #5]
	ldr r0, _0800AB14 @ =0x00100004
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0800AB18 @ =0x00110004
	bl GetDataRecord
	mov sl, r0
	ldr r0, _0800AB1C @ =0x00130004
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #1
	str r5, [sp]
	ldr r0, [sp, #0x104]
	add r1, sp, #0x8c
	mov r2, sp
	adds r2, #0x8e
	mov r3, r8
	bl sub_08004214
	bl GetMultiplayerId
	ldr r2, _0800AB20 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AAF8
	bl sub_08007510
	cmp r0, #0
	bne _0800AAF8
	bl sub_08007544
	cmp r0, #0
	bne _0800AAF8
	bl sub_080075AC
	cmp r0, #0
	bne _0800AAF8
	ldr r1, [sp, #0x148]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x14c]
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r1, #1
	add r2, sp, #0x8c
	ldrh r3, [r2]
	str r6, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x104]
	bl sub_08004344
	ldr r0, _0800AB24 @ =gFrameCounter
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0800AAF8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
_0800AAF8:
	movs r2, #1
	movs r6, #0
_0800AAFC:
	ldr r0, [r7, #0x1c]
	lsls r1, r6, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	cmp r0, #9
	bhi _0800AB74
	lsls r0, r0, #2
	ldr r1, _0800AB28 @ =_0800AB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AB14: .4byte 0x00100004
_0800AB18: .4byte 0x00110004
_0800AB1C: .4byte 0x00130004
_0800AB20: .4byte gPlayers
_0800AB24: .4byte gFrameCounter
_0800AB28: .4byte _0800AB2C
_0800AB2C: @ jump table
	.4byte _0800AB54 @ case 0
	.4byte _0800AB54 @ case 1
	.4byte _0800AB5E @ case 2
	.4byte _0800AB5E @ case 3
	.4byte _0800AB74 @ case 4
	.4byte _0800AB74 @ case 5
	.4byte _0800AB74 @ case 6
	.4byte _0800AB74 @ case 7
	.4byte _0800AB74 @ case 8
	.4byte _0800AB70 @ case 9
_0800AB54:
	ldrh r0, [r7]
	adds r0, #0x10
	ldr r1, [sp, #0xec]
	adds r1, #0xe0
	b _0800AB66
_0800AB5E:
	ldrh r0, [r7]
	adds r0, #0x10
	ldr r1, [sp, #0xec]
	adds r1, #0xc0
_0800AB66:
	movs r2, #1
	bl LoadPalette
	movs r2, #0
	b _0800AB74
_0800AB70:
	movs r3, #0x64
	str r3, [sp, #0x120]
_0800AB74:
	adds r6, #1
	cmp r6, #2
	bls _0800AAFC
	cmp r2, #0
	bne _0800AB80
	b _0800AC8C
_0800AB80:
	ldrh r0, [r7]
	adds r0, #0x10
	mov r4, sb
	ldr r1, [r4]
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #5
	ldr r2, [sp, #0xec]
	adds r1, r2, r1
	movs r2, #1
	bl LoadPalette
	ldr r1, [sp, #0x124]
	adds r1, #2
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x124]
	ldr r2, _0800AC14 @ =gPaletteBuffer
	ldrh r0, [r7]
	adds r0, #0x10
	lsls r0, r0, #5
	adds r2, #0x1e
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	movs r6, #0
	ldr r1, _0800AC18 @ =0x0805289C
	ldr r3, [sp, #0x124]
	lsls r0, r3, #1
	adds r5, r0, r1
	movs r4, #0x1f
	mov sl, r4
	add r4, sp, #0xa0
	mov ip, r2
	mov r8, r6
_0800ABD2:
	ldr r1, [r7, #0x1c]
	mov r2, r8
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r2, r1, #0
	cmp r0, #6
	bgt _0800AC24
	cmp r0, #5
	blt _0800AC24
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r0, sl
	ands r1, r0
	ldr r0, [r4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	lsls r2, r1, #5
	ldr r3, _0800AC1C @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r2
	lsls r1, r1, #0xa
	ldr r2, _0800AC20 @ =0xFFFF83FF
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	b _0800AC76
	.align 2, 0
_0800AC14: .4byte gPaletteBuffer
_0800AC18: .4byte 0x0805289C
_0800AC1C: .4byte 0xFFFFFC1F
_0800AC20: .4byte 0xFFFF83FF
_0800AC24:
	mov r1, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #6
	bls _0800AC82
	movs r2, #0
	ldrsh r3, [r5, r2]
	lsls r0, r3, #5
	subs r0, r0, r3
	asrs r0, r0, #8
	mov r1, sl
	ands r0, r1
	ldrb r2, [r4]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	ldr r0, _0800AD38 @ =0xFFFFFF00
	ldr r2, [r4]
	ands r2, r0
	orrs r2, r1
	str r2, [r4]
	lsls r0, r3, #3
	adds r0, r0, r3
	asrs r0, r0, #7
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #5
	ldrh r3, [r4]
	ldr r1, _0800AD3C @ =0xFFFFFC1F
	ands r1, r3
	orrs r1, r0
	ldr r0, _0800AD40 @ =0xFFFF0000
	ands r2, r0
	orrs r2, r1
	str r2, [r4]
	ldrb r1, [r4, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
_0800AC76:
	ldrh r0, [r7]
	adds r0, #0x10
	lsls r0, r0, #5
	add r0, ip
	ldrh r1, [r4]
	strh r1, [r0]
_0800AC82:
	movs r0, #2
	add r8, r0
	adds r6, #1
	cmp r6, #2
	bls _0800ABD2
_0800AC8C:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0800ACAA
	ldr r0, _0800AD44 @ =gFrameCounter
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ACAA
	ldr r1, [sp, #0xec]
	adds r1, #0x80
	movs r0, #0x14
	movs r2, #1
	bl LoadPalette
_0800ACAA:
	bl sub_080077C0
	cmp r0, #0
	bne _0800ADA2
	bl sub_08007510
	cmp r0, #0
	bne _0800ADA2
	bl sub_08007604
	cmp r0, #0
	bne _0800ADA2
	mov r5, sb
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0800ADA2
	cmp r0, #0
	blt _0800ADA2
	ldr r4, _0800AD48 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r1, [r0, #0x16]
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1a
	cmp r1, r0
	bne _0800ADA2
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x1e
	lsrs r5, r0, #0x1e
	cmp r5, #1
	bne _0800AD4C
	bl sub_08022A88
	cmp r0, #0
	bne _0800ADA2
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800ADA2
	add r4, sp, #0x90
	mov r3, sp
	adds r3, #0x92
	str r5, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #5
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x148]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x14c]
	movs r3, #0
	ldrsh r2, [r0, r3]
	subs r2, #0x28
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #5
	bl sub_08026B90
	b _0800ADA2
	.align 2, 0
_0800AD38: .4byte 0xFFFFFF00
_0800AD3C: .4byte 0xFFFFFC1F
_0800AD40: .4byte 0xFFFF0000
_0800AD44: .4byte gFrameCounter
_0800AD48: .4byte gPlayers
_0800AD4C:
	cmp r5, #2
	bne _0800ADA2
	bl sub_08022A88
	cmp r0, #0
	bne _0800ADA2
	ldrh r0, [r7, #0x10]
	adds r3, r0, #0
	ands r3, r5
	cmp r3, #0
	bne _0800ADA2
	mov r4, sb
	ldr r0, [r4]
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0800AD8A
	ldr r0, [sp, #0x148]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r4, [sp, #0x14c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	subs r2, #0x28
	str r3, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x22
	bl sub_08026B90
	b _0800ADA2
_0800AD8A:
	ldr r2, [sp, #0x148]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x14c]
	movs r3, #0
	ldrsh r2, [r4, r3]
	subs r2, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x22
	bl sub_08026B90
_0800ADA2:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0800ADAA
	b _0800AF20
_0800ADAA:
	ldrh r1, [r7, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800AE4E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AE56
	bl sub_08007510
	cmp r0, #0
	bne _0800AE56
	bl sub_08007604
	cmp r0, #0
	bne _0800AE56
	ldr r0, [sp, #0xbc]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0xbc]
	cmp r0, #0
	bgt _0800ADEC
	movs r0, #0
	str r0, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	adds r1, #0x20
	str r1, [sp, #0xc0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0800ADEC
	str r0, [sp, #0xc0]
_0800ADEC:
	add r2, sp, #0xa4
	mov r8, r2
	ldr r3, [sp, #0x148]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #0xc
	movs r2, #0xf0
	lsls r2, r2, #0xb
	mov r0, r8
	ldr r3, [sp, #0xc0]
	bl Lerp1024
	add r5, sp, #0xa8
	ldr r0, [sp, #0x14c]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0xcc]
	asrs r0, r3, #0xc
	subs r0, #0x28
	adds r1, r1, r0
	lsls r1, r1, #0xc
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	ldr r3, [sp, #0xc0]
	bl Lerp1024
	add r4, sp, #0x90
	mov r3, sp
	adds r3, #0x92
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #0xe
	adds r2, r4, #0
	bl sub_08026C40
	mov r0, r8
	ldr r1, [r0]
	asrs r1, r1, #0xc
	ldr r2, [r5]
	asrs r2, r2, #0xc
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0xe
	bl sub_08026B90
	b _0800AE56
_0800AE4E:
	movs r1, #0x78
	str r1, [sp, #0xbc]
	movs r2, #0
	str r2, [sp, #0xc0]
_0800AE56:
	ldr r4, _0800AF10 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _0800AF20
	movs r3, #0xab
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AF20
	ldr r0, _0800AF14 @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0800AF18
	bl sub_08007510
	cmp r0, #0
	bne _0800AF20
	bl sub_08007604
	cmp r0, #0
	bne _0800AF20
	ldr r0, [sp, #0xc4]
	adds r1, r0, #0
	subs r1, #1
	str r1, [sp, #0xc4]
	cmp r0, #0
	bgt _0800AEAC
	movs r2, #0
	str r2, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	adds r3, #0x20
	str r3, [sp, #0xc8]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	ble _0800AEAC
	str r0, [sp, #0xc8]
_0800AEAC:
	add r4, sp, #0xac
	mov r8, r4
	ldr r0, [sp, #0x148]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0xc
	movs r2, #0xa0
	lsls r2, r2, #0xb
	mov r0, r8
	ldr r3, [sp, #0xc8]
	bl Lerp1024
	add r5, sp, #0xb0
	ldr r3, [sp, #0x14c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0xcc]
	asrs r0, r2, #0xc
	subs r0, #0x28
	adds r1, r1, r0
	lsls r1, r1, #0xc
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, #0
	ldr r3, [sp, #0xc8]
	bl Lerp1024
	add r4, sp, #0x94
	mov r3, sp
	adds r3, #0x96
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r1, #0x24
	adds r2, r4, #0
	bl sub_08026C40
	mov r3, r8
	ldr r1, [r3]
	asrs r1, r1, #0xc
	ldr r2, [r5]
	asrs r2, r2, #0xc
	ldrh r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x12c]
	movs r3, #0x24
	bl sub_08026B90
	b _0800AF20
	.align 2, 0
_0800AF10: .4byte 0x03003D94
_0800AF14: .4byte 0x00000157
_0800AF18:
	movs r4, #0x78
	str r4, [sp, #0xc4]
	movs r0, #0
	str r0, [sp, #0xc8]
_0800AF20:
	bl WaitFrame

	thumb_func_start sub_0800AF24
sub_0800AF24: @ 0x0800AF24
	bl sub_080074CC
	cmp r0, #0
	bne _0800AF38
	bl sub_08007578
	cmp r0, #0
	bne _0800AF38
	bl sub_08007A46
_0800AF38:
	ldrh r0, [r7]
	bl sub_0802EFD4
	ldr r0, [r7, #0x1c]
	bl Free
	ldr r0, [r7, #0x20]
	bl Free
	ldr r1, [sp, #0x168]
	ldr r0, [r1]
	bl Free
	ldr r2, [sp, #0x164]
	ldr r0, [r2]
	bl Free
	movs r0, #0
	str r0, [r7, #0x1c]
	str r0, [r7, #0x20]
	ldr r3, [sp, #0x168]
	str r0, [r3]
	ldr r4, [sp, #0x164]
	str r0, [r4]
	ldr r0, _0800AF88 @ =0x00018A92
	bl SignalEvent
	ldr r0, _0800AF8C @ =0x00018A93
	bl SignalEvent
	bl ThreadExit
	add sp, #0x174
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF88: .4byte 0x00018A92
_0800AF8C: .4byte 0x00018A93

	thumb_func_start sub_0800AF90
sub_0800AF90: @ 0x0800AF90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08001E78
	ldr r7, _0800B008 @ =gPlayers
	movs r1, #0xd4
	mov r2, sb
	muls r2, r1, r2
	mov r8, r2
	adds r1, r7, #0
	adds r1, #0xd0
	add r1, r8
	str r0, [r1]
	adds r4, r2, r7
	movs r6, #0
	mov sl, r6
	mov r0, sb
	strh r0, [r4]
	bl GetMultiplayerId
	cmp sb, r0
	beq _0800B010
	movs r0, #0xa
	strh r0, [r4, #0xc]
	ldr r5, _0800B00C @ =0x03003F90
	mov r1, sb
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x32
	str r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	bl Alloc
	str r0, [sp, #0xc4]
	adds r5, #0x20
	adds r4, r4, r5
	str r0, [r4]
	adds r0, r7, #0
	adds r0, #0xc8
	add r0, r8
	mov r2, sl
	str r2, [r0]
	adds r0, r7, #0
	adds r0, #0xc4
	add r0, r8
	str r2, [r0]
	mov sl, r6
	b _0800B05E
	.align 2, 0
_0800B008: .4byte gPlayers
_0800B00C: .4byte 0x03003F90
_0800B010:
	adds r0, r7, #0
	adds r0, #0xcc
	add r0, r8
	ldr r1, _0800B194 @ =gPlayerStats
	str r1, [r0]
	mov r6, sl
	strh r6, [r4, #0xc]
	ldr r3, _0800B198 @ =0x03003F90
	mov r0, sb
	lsls r4, r0, #2
	adds r2, r4, r0
	lsls r2, r2, #3
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0x31
	str r1, [r0]
	ldr r1, _0800B19C @ =0x03004030
	str r1, [sp, #0xc4]
	adds r3, #0x20
	adds r2, r2, r3
	mov r6, sl
	str r6, [r2]
	movs r0, #0xb9
	lsls r0, r0, #2
	bl Alloc
	adds r1, r7, #0
	adds r1, #0xc8
	add r1, r8
	str r0, [r1]
	movs r0, #0xa
	bl Alloc
	adds r1, r7, #0
	adds r1, #0xc4
	add r1, r8
	str r0, [r1]
	mov sl, r4
_0800B05E:
	movs r0, #6
	bl Alloc
	ldr r5, _0800B1A0 @ =gPlayers
	movs r1, #0xd4
	mov r4, sb
	muls r4, r1, r4
	adds r1, r5, #0
	adds r1, #0x1c
	adds r1, r4, r1
	str r0, [r1]
	movs r0, #0x54
	bl Alloc
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1]
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0xc8
	adds r4, r4, r0
	mov r8, r5
	ldr r0, _0800B1A4 @ =0x0000FFFF
	adds r3, r0, #0
	movs r2, #0
_0800B092:
	ldr r1, [r4]
	adds r1, r2, r1
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r2, #0x94
	adds r6, #1
	cmp r6, #4
	bls _0800B092
	movs r6, #0
	ldr r3, _0800B1A0 @ =gPlayers
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x1c
	adds r7, r1, r0
	adds r0, #4
	adds r2, r1, r0
	movs r4, #0
	adds r0, #4
	adds r5, r1, r0
	movs r3, #0
_0800B0C0:
	ldr r1, [r7]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #2]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #4]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #6]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #8]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xa]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xc]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r4, [r0, #0xe]
	strh r4, [r5]
	adds r5, #2
	adds r3, #0x1c
	adds r6, #1
	cmp r6, #2
	bls _0800B0C0
	movs r0, #0xd4
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, r8
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0xc2
	movs r7, #0
	strh r7, [r0]
	bl GetMultiplayerId
	cmp sb, r0
	bne _0800B152
	adds r4, r5, #0
	adds r4, #0x10
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0xc4
	bl memcpy
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_0801574C
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0xc4
	bl memcpy
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_08016270
_0800B152:
	ldr r3, _0800B198 @ =0x03003F90
	mov r0, sl
	add r0, sb
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r2, _0800B1A8 @ =sub_080077D0
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r0, r1
	ldr r4, [sp, #0xc4]
	ldr r6, _0800B1AC @ =0x0000047C
	adds r2, r4, r6
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r0, r1
	str r7, [r1]
	adds r0, r0, r3
	adds r1, r5, #0
	bl CreateThread
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B194: .4byte gPlayerStats
_0800B198: .4byte 0x03003F90
_0800B19C: .4byte 0x03004030
_0800B1A0: .4byte gPlayers
_0800B1A4: .4byte 0x0000FFFF
_0800B1A8: .4byte sub_080077D0
_0800B1AC: .4byte 0x0000047C

	thumb_func_start sub_0800B1B0
sub_0800B1B0: @ 0x0800B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r2, #0
	ldr r0, _0800B3CC @ =gPlayerStats
	mov ip, r0
	movs r4, #0
_0800B1C4:
	movs r0, #0xd4
	muls r0, r2, r0
	ldr r3, _0800B3D0 @ =gPlayers
	adds r1, r0, r3
	strh r4, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x34]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x38]
	strh r4, [r1, #0x3a]
	adds r0, r1, #0
	adds r0, #0x48
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, #0x2c
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	str r4, [r1, #0x58]
	str r4, [r1, #0x5c]
	str r4, [r1, #0x7c]
	adds r0, #0x2a
	strh r4, [r0]
	subs r0, #0x4e
	strh r4, [r0]
	adds r0, #0x78
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	movs r3, #0
	adds r2, #1
	str r2, [sp]
	subs r0, #0x50
_0800B226:
	stm r0!, {r4}
	adds r3, #1
	cmp r3, #4
	bls _0800B226
	movs r3, #0
	movs r0, #0x66
	add r0, ip
	mov sl, r0
	mov r7, ip
	adds r7, #0x80
	mov r1, ip
	adds r1, #0x7c
	str r1, [sp, #4]
	movs r0, #0x84
	add r0, ip
	mov r8, r0
	subs r1, #0x10
	str r1, [sp, #0xc]
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #8]
	movs r1, #0
	mov r0, ip
_0800B254:
	strh r1, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0xf
	bls _0800B254
	mov r1, ip
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x24]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x28]
	strh r4, [r1, #0x2a]
	strh r4, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r4, [r1, #0x30]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x3c]
	movs r3, #0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r0, _0800B3D4 @ =0xFFFFC07F
	mov sb, r0
	mov r2, ip
	adds r2, #0x70
	movs r5, #0x41
	rsbs r5, r5, #0
_0800B286:
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	lsls r0, r3, #1
	add r0, sl
	strh r4, [r0]
	adds r3, #1
	cmp r3, #2
	bls _0800B286
	movs r3, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sl, r0
	movs r6, #0x71
	rsbs r6, r6, #0
	ldr r1, _0800B3D4 @ =0xFFFFC07F
	mov sb, r1
	movs r5, #0x41
	rsbs r5, r5, #0
	mov r2, ip
	adds r2, #0x88
_0800B2CE:
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	ands r0, r6
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, [r2]
	ldr r1, _0800B3D8 @ =0x00007FFF
	ands r0, r1
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x18
	bls _0800B2CE
	movs r3, #0
	ldr r6, _0800B3DC @ =0xFFFF8000
	adds r5, r1, #0
	mov r2, ip
	adds r2, #0xec
_0800B300:
	ldrh r0, [r2]
	adds r1, r6, #0
	ands r1, r0
	strh r1, [r2]
	ldr r0, [r2]
	ands r0, r5
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #0x3b
	bls _0800B300
	ldr r0, [r7]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r7]
	ldrh r1, [r7]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r1, #0x7c]
	ands r0, r3
	str r0, [r1, #0x7c]
	ldr r3, [sp, #4]
	ldrh r1, [r3]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	strh r0, [r3]
	mov r1, r8
	ldr r0, [r1]
	ldr r3, _0800B3D8 @ =0x00007FFF
	ands r0, r3
	str r0, [r1]
	ldrh r1, [r1]
	ldr r0, _0800B3DC @ =0xFFFF8000
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	add r0, ip
	str r4, [r0]
	ldr r3, [sp, #0xc]
	strh r4, [r3]
	ldr r0, _0800B3E0 @ =0x03003F80
	ldrh r1, [r0]
	ldr r0, _0800B3E4 @ =0xFFFFFC00
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _0800B3E0 @ =0x03003F80
	strh r0, [r1]
	ldr r1, [r1]
	ldr r0, _0800B3E8 @ =0xFFF003FF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #4
	orrs r1, r0
	ldr r3, _0800B3E0 @ =0x03003F80
	str r1, [r3]
	ldr r0, _0800B3EC @ =0x03003F82
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	ldr r1, _0800B3EC @ =0x03003F82
	strh r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, ip
	strb r4, [r0]
	ldr r3, _0800B3F0 @ =0x03003F85
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, [sp, #8]
	strh r4, [r0]
	movs r3, #0
	movs r1, #0
	mov r0, ip
	adds r0, #0x44
_0800B3A8:
	strh r1, [r0, #2]
	strh r1, [r0]
	adds r0, #4
	adds r3, #1
	cmp r3, #7
	bls _0800B3A8
	ldr r2, [sp]
	cmp r2, #3
	bhi _0800B3BC
	b _0800B1C4
_0800B3BC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3CC: .4byte gPlayerStats
_0800B3D0: .4byte gPlayers
_0800B3D4: .4byte 0xFFFFC07F
_0800B3D8: .4byte 0x00007FFF
_0800B3DC: .4byte 0xFFFF8000
_0800B3E0: .4byte 0x03003F80
_0800B3E4: .4byte 0xFFFFFC00
_0800B3E8: .4byte 0xFFF003FF
_0800B3EC: .4byte 0x03003F82
_0800B3F0: .4byte 0x03003F85
