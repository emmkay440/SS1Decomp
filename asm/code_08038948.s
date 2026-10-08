	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08038948
sub_08038948: @ 0x08038948
	push {r4, r5, r6, lr}
	ldr r0, _0803897C @ =gUnknown_03000064
	ldr r4, [r0]
	movs r1, #0
_08038950:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _08038966
_0803895C:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803895C
_08038966:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #2
	bls _08038950
	ldr r0, _0803897C @ =gUnknown_03000064
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803897C: .4byte gUnknown_03000064

	thumb_func_start sub_08038980
sub_08038980: @ 0x08038980
	push {r4, lr}
	ldr r4, _080389A0 @ =0x03000068
	movs r0, #0x50
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_08038990:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #1
	bls _08038990
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080389A0: .4byte 0x03000068

	thumb_func_start sub_080389A4
sub_080389A4: @ 0x080389A4
	push {r4, r5, r6, lr}
	ldr r0, _080389D8 @ =0x03000068
	ldr r4, [r0]
	movs r1, #0
_080389AC:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _080389C2
_080389B8:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080389B8
_080389C2:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #1
	bls _080389AC
	ldr r0, _080389D8 @ =0x03000068
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080389D8: .4byte 0x03000068

	thumb_func_start sub_080389DC
sub_080389DC: @ 0x080389DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080389E8 @ =0x03000068
	ldr r4, [r0]
	movs r5, #0
	b _080389F4
	.align 2, 0
_080389E8: .4byte 0x03000068
_080389EC:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #1
	bhi _08038A34
_080389F4:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080389EC
	cmp r5, #1
	bhi _08038A34
	ldr r2, _08038A3C @ =gActiveEnemyMask
	adds r0, r5, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038A40 @ =sub_08037D98
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl CreateThread
_08038A34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038A3C: .4byte gActiveEnemyMask
_08038A40: .4byte sub_08037D98

	thumb_func_start sub_08038A44
sub_08038A44: @ 0x08038A44
	push {r4, lr}
	ldr r4, _08038A64 @ =0x0300006C
	movs r0, #0x78
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_08038A54:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #2
	bls _08038A54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038A64: .4byte 0x0300006C

	thumb_func_start sub_08038A68
sub_08038A68: @ 0x08038A68
	push {r4, r5, r6, lr}
	ldr r0, _08038A9C @ =0x0300006C
	ldr r4, [r0]
	movs r1, #0
_08038A70:
	ldr r0, [r4, #8]
	adds r5, r1, #1
	adds r6, r4, #0
	adds r6, #0x28
	cmp r0, #0
	beq _08038A86
_08038A7C:
	bl WaitFrame
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08038A7C
_08038A86:
	adds r1, r5, #0
	adds r4, r6, #0
	cmp r1, #2
	bls _08038A70
	ldr r0, _08038A9C @ =0x0300006C
	ldr r0, [r0]
	bl Free
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038A9C: .4byte 0x0300006C

	thumb_func_start sub_08038AA0
sub_08038AA0: @ 0x08038AA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08038AB0 @ =0x0300006C
	ldr r4, [r0]
	movs r1, #0
	b _08038ABC
	.align 2, 0
_08038AB0: .4byte 0x0300006C
_08038AB4:
	adds r1, #1
	adds r4, #0x28
	cmp r1, #2
	bhi _08038AEE
_08038ABC:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08038AB4
	cmp r1, #2
	bhi _08038AEE
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08038AF4 @ =sub_0803861C
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CreateThread
_08038AEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038AF4: .4byte sub_0803861C

	thumb_func_start sub_08038AF8
sub_08038AF8: @ 0x08038AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x12c
	adds r7, r0, #0
	ldr r0, _08038B38 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r2, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x114]
	mov r6, sp
	adds r6, #0xb4
	str r6, [sp, #0x128]
	adds r3, #0x6e
	str r3, [sp, #0x124]
	subs r6, #4
	str r6, [sp, #0x120]
	cmp r2, r0
	bhs _08038B4E
	adds r3, r0, #0
_08038B2C:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _08038B3C
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _08038B46
	.align 2, 0
_08038B38: .4byte 0x030063D8
_08038B3C:
	cmp r0, #3
	bne _08038B46
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc4]
_08038B46:
	adds r2, #1
	adds r1, #8
	cmp r2, r3
	blo _08038B2C
_08038B4E:
	ldr r0, [sp, #0xc4]
	adds r0, #0x24
	str r0, [sp, #0xc8]
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xc0]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldr r1, [sp, #0xc4]
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _08038D40 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0xc0]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0x10c]
	strh r2, [r6]
	adds r0, r7, #0
	adds r0, #0x4a
	str r0, [sp, #0x110]
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov r8, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
	ldrh r4, [r2]
	ldr r6, _08038D44 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	strh r4, [r3]
	movs r4, #0x6e
	adds r4, r4, r7
	mov sb, r4
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sb
	strh r4, [r6]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r2, #0x1e
	str r2, [sp, #0xd4]
	movs r3, #0
	str r3, [sp, #0xd8]
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x28]
	ldrh r1, [r4, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	ldr r1, [r4, #0x28]
	movs r4, #1
	rsbs r4, r4, #0
	add r0, sp, #0x10
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r1, _08038D48 @ =0x00100067
	ldr r0, [sp, #0x114]
	movs r2, #5
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r6, [sp, #0xc0]
	ldrh r2, [r6, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	add r0, sp, #0x10
	ldr r3, [sp, #0xd0]
	adds r3, #5
	strb r3, [r0, #0x1c]
	ldr r2, [sp, #0xd0]
	adds r2, #6
	strb r2, [r0, #0x1d]
	ldr r1, [sp, #0xd0]
	adds r1, #7
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #0x114]
	strb r3, [r0, #0x1c]
	strb r2, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	bl sub_08033DF4
	bl sub_0803A2B0
	bl sub_08007544
	ldr r1, [sp, #0x10c]
	mov sl, r1
	ldr r2, [sp, #0x110]
	str r2, [sp, #0x118]
	mov r3, r8
	str r3, [sp, #0x11c]
	cmp r0, #0
	bne _08038CDA
	bl sub_080075AC
	cmp r0, #0
	bne _08038CDA
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
_08038CA6:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _08038CA6
	bl GetMultiplayerId
	ldr r5, _08038D4C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_08038CDA:
	ldr r0, [sp, #0x128]
	movs r1, #0x3d
	bl sub_0802934C
	add r0, sp, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _08038CF6
_08038CEA:
	bl WaitFrame
	ldr r4, [sp, #0x128]
	ldr r0, [r4]
	cmp r0, #0
	bne _08038CEA
_08038CF6:
	ldr r6, _08038D50 @ =0x0000FFFF
	str r6, [sp, #0xe0]
	movs r0, #1
	str r0, [sp, #0xe8]
	movs r1, #0
	mov r8, r1
	mov r3, r8
	ldr r2, [sp, #0x124]
	strh r3, [r2]
	ldr r4, [sp, #0x120]
	strh r3, [r4]
	movs r6, #0
	str r6, [sp, #0xe4]

	thumb_func_start sub_08038D10
sub_08038D10: @ 0x08038D10
	bl sub_080271D0
	cmp r0, #0
	beq _08038D1A
	b _080391AA
_08038D1A:
	ldr r0, [sp, #0xd0]
	adds r0, #0x15
	ldr r1, [sp, #0xc0]
	ldrh r2, [r1, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #3
	bl LoadPalette
	mov r2, r8
	cmp r2, #0x12
	bls _08038D36
	b _08039164
_08038D36:
	lsls r0, r2, #2
	ldr r1, _08038D54 @ =_08038D58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038D40: .4byte gMapLayer_03003910
_08038D44: .4byte 0x080FB740
_08038D48: .4byte 0x00100067
_08038D4C: .4byte gPlayers
_08038D50: .4byte 0x0000FFFF
_08038D54: .4byte _08038D58
_08038D58: @ jump table
	.4byte _08038DA4 @ case 0
	.4byte _08038DB8 @ case 1
	.4byte _08038DE8 @ case 2
	.4byte _08038E18 @ case 3
	.4byte _08038E40 @ case 4
	.4byte _08038E58 @ case 5
	.4byte _08038EAC @ case 6
	.4byte _08038EC0 @ case 7
	.4byte _08038F44 @ case 8
	.4byte _08038F80 @ case 9
	.4byte _08039058 @ case 10
	.4byte _0803903C @ case 11
	.4byte _08039058 @ case 12
	.4byte _08039072 @ case 13
	.4byte _08039094 @ case 14
	.4byte _080390B2 @ case 15
	.4byte _080390D2 @ case 16
	.4byte _080390E0 @ case 17
	.4byte _08039160 @ case 18
_08038DA4:
	movs r3, #1
	mov r8, r3
	movs r0, #0
	add r1, sp, #0xb8
	str r0, [r1]
	add r1, sp, #0xbc
	str r0, [r1]
	movs r4, #0
	str r4, [sp, #0x108]
	b _08039164
_08038DB8:
	add r0, sp, #0xb8
	movs r2, #0x3c
	rsbs r2, r2, #0
	movs r1, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	add r0, sp, #0xbc
	movs r1, #0
	movs r2, #0x50
	ldr r3, [sp, #0x108]
	bl Lerp1024
	ldr r6, [sp, #0x108]
	adds r6, #0x10
	str r6, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bgt _08038DE2
	b _08039164
_08038DE2:
	movs r0, #2
	mov r8, r0
	b _08039164
_08038DE8:
	bl sub_08007544
	cmp r0, #0
	bne _08038E0E
	bl sub_080075AC
	cmp r0, #0
	bne _08038E0E
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _08038E14 @ =0x0009007B
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
_08038E0E:
	movs r1, #3
	mov r8, r1
	b _08039164
	.align 2, 0
_08038E14: .4byte 0x0009007B
_08038E18:
	bl sub_08007544
	cmp r0, #0
	bne _08038E3A
	bl sub_080075AC
	cmp r0, #0
	bne _08038E3A
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _08038E34
	b _08039164
_08038E34:
	movs r2, #4
	mov r8, r2
	b _08039164
_08038E3A:
	movs r3, #4
	mov r8, r3
	b _08039164
_08038E40:
	movs r4, #5
	mov r8, r4
	movs r1, #0x3c
	rsbs r1, r1, #0
	add r0, sp, #0xb8
	str r1, [r0]
	movs r1, #0x50
	add r0, sp, #0xbc
	str r1, [r0]
	movs r6, #0
	str r6, [sp, #0x108]
	b _08039164
_08038E58:
	add r0, sp, #0xb8
	movs r1, #0x3c
	rsbs r1, r1, #0
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	add r0, sp, #0xbc
	movs r1, #0x50
	movs r2, #0
	ldr r3, [sp, #0x108]
	bl Lerp1024
	ldr r0, [sp, #0x108]
	adds r0, #0x10
	str r0, [sp, #0x108]
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0x108]
	cmp r1, r0
	bgt _08038E84
	b _08039164
_08038E84:
	bl GetMultiplayerId
	ldr r2, _08038EA4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08038EA8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x14
	str r0, [r7, #0x5c]
	movs r2, #0xe
	mov r8, r2
	b _08039164
	.align 2, 0
_08038EA4: .4byte gPlayers
_08038EA8: .4byte 0x0000FFFE
_08038EAC:
	ldr r3, [sp, #0x128]
	ldr r0, [r3]
	cmp r0, #0
	beq _08038EB6
	b _08039164
_08038EB6:
	movs r4, #7
	mov r8, r4
	movs r0, #0x14
	str r0, [r7, #0x5c]
	b _08039164
_08038EC0:
	ldr r1, _08038EF0 @ =0x080FBD1E
	ldr r6, [sp, #0xf8]
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #0xf0]
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf8]
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xfc]
	cmp r0, #0x10
	bls _08038EF4
	movs r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0xfc]
	b _08038EF8
	.align 2, 0
_08038EF0: .4byte 0x080FBD1E
_08038EF4:
	movs r2, #8
	mov r8, r2
_08038EF8:
	mov r3, r8
	cmp r3, #8
	bne _08038F2E
	movs r1, #0
	movs r0, #1
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r1, [r6]
	ldr r0, [sp, #0x11c]
	strh r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08038F1C
	rsbs r0, r0, #0
_08038F1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	b _08039164
_08038F2E:
	movs r1, #0x10
	mov r8, r1
	movs r1, #0
	movs r0, #1
	mov r2, sl
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r4, [sp, #0x11c]
	strh r1, [r4]
	b _08039164
_08038F44:
	movs r1, #0
	movs r0, #1
	mov r6, sl
	strh r0, [r6]
	ldr r0, [sp, #0x118]
	strh r1, [r0]
	ldr r2, [sp, #0x11c]
	strh r1, [r2]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	movs r3, #0
	str r3, [sp, #0xe8]
	movs r4, #0
	str r4, [sp, #0x104]
	movs r6, #9
	mov r8, r6
	movs r0, #0x14
	str r0, [r7, #0x5c]
	ldr r0, [sp, #0xf0]
	lsls r1, r0, #2
	ldr r2, [sp, #0xc4]
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	b _08039164
_08038F80:
	adds r4, r7, #0
	adds r4, #0x4e
	ldrh r0, [r4]
	cmp r0, #0
	bne _08038F8C
	b _08039164
_08038F8C:
	bl sub_080076A8
	movs r3, #0x30
	str r3, [sp, #0xe4]
	cmp r0, #0
	beq _08038F9C
	movs r6, #0x14
	str r6, [sp, #0xe4]
_08038F9C:
	ldr r1, _08038FB4 @ =0x080FBD10
	ldr r2, [sp, #0xf4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #1
	beq _08038FD2
	cmp r0, #1
	bgt _08038FB8
	cmp r0, #0
	beq _08038FC2
	b _08039024
	.align 2, 0
_08038FB4: .4byte 0x080FBD10
_08038FB8:
	cmp r0, #2
	beq _08038FE2
	cmp r0, #3
	beq _08039000
	b _08039024
_08038FC2:
	movs r3, #0xa
	mov r8, r3
	mov r4, sl
	ldrh r1, [r4]
	adds r0, r7, #0
	bl sub_0803A318
	b _08039024
_08038FD2:
	movs r6, #0xb
	mov r8, r6
	mov r0, sl
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_0803A37C
	b _08039024
_08038FE2:
	movs r1, #0xd
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #9
	movs r1, #0
	strh r0, [r2]
	ldr r3, [sp, #0x118]
	strh r1, [r3]
	ldr r6, [sp, #0x11c]
	strh r1, [r6]
	strh r1, [r4]
	movs r0, #0
	str r0, [sp, #0xe8]
	b _08039024
_08039000:
	movs r1, #0xc
	mov r8, r1
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #2
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #4
	bl sub_0803A3E4
	adds r0, r7, #0
	movs r1, #6
	bl sub_0803A3E4
_08039024:
	ldr r0, [sp, #0xf4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
	cmp r0, #6
	bls _08039036
	movs r2, #0
	str r2, [sp, #0xf4]
_08039036:
	movs r3, #0
	str r3, [sp, #0x104]
	b _08039164
_0803903C:
	ldr r0, [sp, #0x104]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x104]
	ldr r2, [sp, #0xe4]
	cmp r0, r2
	bhi _0803904C
	b _08039164
_0803904C:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r3, #0xe
	mov r8, r3
	b _08039164
_08039058:
	ldr r0, [sp, #0x104]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x104]
	ldr r6, [sp, #0xe4]
	cmp r0, r6
	bls _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0xe
	mov r8, r0
	b _08039164
_08039072:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039164
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r1, #0xe
	mov r8, r1
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #9
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0xe8]
	b _08039164
_08039094:
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r1, [sp, #0x11c]
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r2, #0
	str r2, [sp, #0xe8]
	movs r3, #0xf
	mov r8, r3
	b _08039164
_080390B2:
	adds r1, r7, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08039164
	movs r0, #0
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x118]
	strh r0, [r6]
	ldr r2, [sp, #0x11c]
	strh r0, [r2]
	strh r0, [r1]
	movs r3, #1
	str r3, [sp, #0xe8]
	b _08039152
_080390D2:
	movs r6, #0
	str r6, [sp, #0xf0]
	movs r0, #0x11
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x104]
	b _08039164
_080390E0:
	ldr r2, [sp, #0xf0]
	cmp r2, #3
	bhi _08039112
	adds r0, r7, #0
	adds r0, #0x10
	lsls r4, r2, #2
	ldr r3, [sp, #0xc8]
	adds r4, r4, r3
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r5, r4, #4
	ldrh r2, [r4, #4]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl Lerp1024
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r4, #2]
	lsls r1, r1, #3
	ldrh r2, [r5, #2]
	lsls r2, r2, #3
	ldr r3, [sp, #0x104]
	bl Lerp1024
_08039112:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0xc
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0xc
	str r0, [r7, #0x14]
	ldr r4, [sp, #0xf0]
	cmp r4, #1
	bhi _0803912C
	movs r0, #0
	mov r6, sl
	strh r0, [r6]
	b _08039132
_0803912C:
	movs r0, #1
	mov r1, sl
	strh r0, [r1]
_08039132:
	ldr r2, [sp, #0x104]
	adds r2, #8
	str r2, [sp, #0x104]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bls _08039164
	movs r3, #0
	str r3, [sp, #0x104]
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	cmp r0, #4
	bls _08039164
_08039152:
	movs r4, #6
	mov r8, r4
	ldr r0, [sp, #0x128]
	movs r1, #0x41
	bl sub_0802934C
	b _08039164
_08039160:
	movs r6, #0x13
	mov r8, r6
_08039164:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	beq _08039170
	cmp r0, #8
	beq _08039180
	b _080391AA
_08039170:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	bne _080391AA
	movs r1, #1
	str r1, [sp, #0xd8]
	movs r2, #8
	str r2, [sp, #0xd4]
	b _080391AA
_08039180:
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	bne _080391AA
	movs r4, #1
	str r4, [sp, #0xd8]
	movs r6, #0x14
	str r6, [sp, #0xd4]
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0x12
	mov r8, r0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
_080391AA:
	mov r1, r8
	cmp r1, #0xd
	bne _0803928E
	bl GetMultiplayerId
	ldr r4, [r7, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _080392C4 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	ldr r2, [r7, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	cmp r0, #0
	bne _0803928E
	ldr r2, [sp, #0x118]
	ldrh r0, [r2]
	cmp r0, #3
	bne _0803928E
	cmp r4, #0x2c
	bhi _0803928E
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	movs r3, #0x80
	adds r3, r3, r6
	mov sb, r3
	add r1, sb
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803928E
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803928E
	bl sub_08007544
	cmp r0, #0
	bne _0803928E
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #7
	strh r1, [r0, #0xc]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x70
	ldr r1, _080392C8 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r0, r7, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	adds r1, #0x54
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldr r0, [r7, #0x2c]
	str r0, [r1]
_0803928E:
	ldrh r0, [r7, #0xa]
	adds r2, r0, #0
	cmp r2, #7
	bne _080392A2
	movs r6, #0x14
	str r6, [sp, #0xe0]
	ldrh r0, [r7, #0x28]
	str r0, [sp, #0xec]
	movs r1, #0
	str r1, [sp, #0x100]
_080392A2:
	ldr r0, [sp, #0xe0]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xe0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803931C
	ldr r3, [sp, #0xec]
	cmp r3, #0
	bne _080392D0
	ldr r4, _080392CC @ =0x0000FFFF
	str r4, [sp, #0xe0]
	b _08039320
	.align 2, 0
_080392C4: .4byte gPlayers
_080392C8: .4byte 0x0000FFFE
_080392CC: .4byte 0x0000FFFF
_080392D0:
	bl sub_08007544
	cmp r0, #0
	bne _080392FE
	bl sub_08007510
	cmp r0, #0
	bne _080392FE
	bl sub_08007604
	cmp r0, #0
	bne _080392FE
	bl sub_080075AC
	cmp r0, #0
	bne _080392FE
	ldr r6, [sp, #0x100]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xec]
	bl sub_0800EA74
_080392FE:
	movs r0, #2
	ldr r1, [sp, #0xe0]
	ands r0, r1
	ldrh r2, [r7, #0xa]
	cmp r0, #0
	beq _08039320
	ldr r3, [sp, #0x100]
	lsls r0, r3, #0x10
	ldr r4, _08039318 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x100]
	b _08039320
	.align 2, 0
_08039318: .4byte 0xFFFF0000
_0803931C:
	ldr r6, _08039384 @ =0x0000FFFF
	str r6, [sp, #0xe0]
_08039320:
	cmp r2, #8
	bne _08039326
	b _08039610
_08039326:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xdc]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0xac
	mov r5, sp
	adds r5, #0xae
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	mov r1, r8
	subs r1, #8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r6, r4, #0
	adds r4, r1, #0
	cmp r0, #1
	bls _08039376
	mov r0, r8
	cmp r0, #0xe
	beq _08039376
	cmp r0, #0xf
	bne _08039388
_08039376:
	mov r2, sl
	ldrh r1, [r2]
	ldr r3, [sp, #0xe8]
	str r3, [sp]
	ldr r0, [sp, #0x114]
	b _08039392
	.align 2, 0
_08039384: .4byte 0x0000FFFF
_08039388:
	mov r0, sl
	ldrh r1, [r0]
	ldr r2, [sp, #0xe8]
	str r2, [sp]
	add r0, sp, #0x10
_08039392:
	ldr r2, [sp, #0x118]
	ldr r3, [sp, #0x11c]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	bl sub_080271D0
	cmp r0, #0
	beq _080393AA
	b _08039610
_080393AA:
	bl sub_08007510
	cmp r0, #0
	beq _080393B4
	b _08039610
_080393B4:
	bl sub_080075AC
	cmp r0, #0
	beq _080393BE
	b _08039610
_080393BE:
	add r0, sp, #0xbc
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r1, sp, #0xb8
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08005F60
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	beq _08039484
	bl sub_08007544
	cmp r0, #0
	bne _0803945C
	movs r0, #1
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _0803945C
	mov r0, r8
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803945C
	mov r2, r8
	cmp r2, #7
	beq _0803945C
	cmp r2, #6
	beq _0803945C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803940C
	cmp r2, #0xe
	beq _0803940C
	cmp r2, #0xf
	bne _08039438
_0803940C:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _0803945C
_08039438:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803945C:
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, #0
	bne _080394FE
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _08039472
	b _08039646
_08039472:
	add r0, sp, #0xd4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	movs r1, #0
	str r1, [sp, #0xd8]
	b _080394FE
_08039484:
	bl sub_08007544
	cmp r0, #0
	bne _080394FE
	mov r2, r8
	cmp r2, #0x10
	beq _080394FE
	cmp r2, #0x11
	beq _08039506
	cmp r2, #7
	beq _080394FE
	cmp r2, #6
	beq _080394FE
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080394AE
	cmp r2, #0xe
	beq _080394AE
	cmp r2, #0xf
	bne _080394DA
_080394AE:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4]
	mov ip, r4
	ldr r3, [sp, #0xdc]
	str r3, [sp]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r4, [sp, #0x114]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08004344
	b _080394FE
_080394DA:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3]
	ldr r4, [sp, #0x118]
	ldrh r3, [r4]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_080394FE:
	mov r0, r8
	cmp r0, #0x11
	beq _08039506
	b _08039610
_08039506:
	ldr r1, [sp, #0xf0]
	cmp r1, #1
	beq _0803955E
	cmp r1, #1
	bgt _08039516
	cmp r1, #0
	beq _08039522
	b _08039610
_08039516:
	ldr r2, [sp, #0xf0]
	cmp r2, #2
	beq _0803959A
	cmp r2, #3
	beq _080395D6
	b _08039610
_08039522:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #5
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x120]
	ldrh r3, [r6]
	ldr r2, [sp, #0xdc]
	str r2, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #5
	bl sub_08004344
	b _08039610
_0803955E:
	ldr r3, [sp, #0xf0]
	str r3, [sp]
	add r0, sp, #0x10
	movs r1, #2
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r2, [sp, #0x120]
	ldrh r3, [r2]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08004344
	b _08039610
_0803959A:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08004344
	b _08039610
_080395D6:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #4
	ldr r2, [sp, #0x120]
	ldr r3, [sp, #0x124]
	bl sub_08026C40
	bl sub_08007544
	cmp r0, #0
	bne _08039610
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp, #0x120]
	ldrh r3, [r4]
	ldr r6, [sp, #0xdc]
	str r6, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #4
	bl sub_08004344
_08039610:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039646
	bl sub_080074CC
	cmp r0, #0
	bne _08039646
	ldr r0, _080396CC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039646
	bl sub_08007578
	cmp r0, #0
	bne _08039646
	mov r0, r8
	cmp r0, #0x13
	beq _08039646
	bl sub_08038D10
_08039646:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08016FA0
	cmp r0, #0
	beq _08039668
	b _080398C4
_08039668:
	bl sub_080271D0
	cmp r0, #0
	beq _08039672
	b _080398C4
_08039672:
	bl sub_08007544
	cmp r0, #0
	beq _0803967C
	b _080398C4
_0803967C:
	bl sub_08007510
	cmp r0, #0
	beq _08039686
	b _080398C4
_08039686:
	bl sub_080075AC
	cmp r0, #0
	beq _08039690
	b _080398C4
_08039690:
	bl sub_080076E0
	cmp r0, #0
	beq _0803969A
	b _080398C4
_0803969A:
	bl GetMultiplayerId
	ldr r2, _080396D0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _080396D4 @ =0x0009007C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xcc]
	bl sub_08007798
	b _08039882
	.align 2, 0
_080396CC: .4byte 0x030063D8
_080396D0: .4byte gPlayers
_080396D4: .4byte 0x0009007C
_080396D8:
	bl sub_08007544
	cmp r0, #0
	beq _080396E2
	b _08039874
_080396E2:
	bl sub_08007510
	cmp r0, #0
	beq _080396EC
	b _08039874
_080396EC:
	bl sub_080271D0
	cmp r0, #0
	beq _080396F6
	b _08039874
_080396F6:
	bl sub_080075AC
	cmp r0, #0
	beq _08039700
	b _08039874
_08039700:
	movs r0, #0xf
	ldr r1, [sp, #0x104]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x104]
	cmp r0, #0
	beq _08039710
	b _08039838
_08039710:
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039724
	adds r0, #0xf
_08039724:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039744
	adds r1, #0x1f
_08039744:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803976E
	adds r0, #0xf
_0803976E:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803978E
	adds r1, #0x1f
_0803978E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080397B8
	adds r0, #0xf
_080397B8:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _080397D8
	adds r1, #0x1f
_080397D8:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
	bl Random
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08039802
	adds r0, #0xf
_08039802:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	ldr r1, [r7, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _08039822
	adds r1, #0x1f
_08039822:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08033E6C
_08039838:
	ldr r0, [sp, #0xd4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08039874
	add r0, sp, #0xac
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sp
	adds r1, #0xae
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov r4, sl
	ldrh r2, [r4]
	ldr r6, [sp, #0x118]
	ldrh r3, [r6]
	ldr r4, [sp, #0xdc]
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_08039874:
	bl WaitFrame
	ldr r0, [sp, #0xcc]
	bl sub_0802294C
	cmp r0, #0
	bne _080398AC
_08039882:
	bl sub_08007750
	cmp r0, #0
	bne _080398AC
	bl sub_080074CC
	cmp r0, #0
	bne _080398AC
	ldr r0, _08039AFC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080398AC
	bl sub_08007578
	cmp r0, #0
	bne _080398AC
	b _080396D8
_080398AC:
	bl sub_080077AC
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _08039B04 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_080398C4:
	bl sub_08033E20
	bl sub_0803A2D8
	bl WaitFrame
	bl WaitFrame
	bl WaitFrame
	ldr r2, _08039B08 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r6, [r7]
	lsls r1, r6
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0xd0]
	bl sub_0800CB84
	bl sub_08001F98
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B0C @ =gUnknown_030064D8
	ldr r0, [r0]
	cmp r0, #0
	bne _0803992E
	bl sub_08007544
	cmp r0, #0
	bne _0803992E
	bl sub_08007510
	cmp r0, #0
	bne _0803992E
	bl sub_08007604
	cmp r0, #0
	bne _0803992E
	bl sub_080075AC
	cmp r0, #0
	bne _0803992E
	bl sub_080076E0
	cmp r0, #0
	bne _0803992E
	ldr r0, _08039B10 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_0803992E:
	bl sub_08007750
	cmp r0, #0
	beq _08039938
	b _08039A44
_08039938:
	bl sub_080074CC
	cmp r0, #0
	beq _08039942
	b _08039A44
_08039942:
	bl sub_08007578
	cmp r0, #0
	bne _08039A44
	ldr r0, _08039AFC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _08039A44
	ldr r4, _08039B14 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _08039988
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039988
	ldr r3, _08039B18 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08039988
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_08039988:
	ldr r4, _08039B00 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xc0]
	bl CalcExpGain
	str r0, [sp, #0xe8]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xe8]
	bl AddExp
	adds r4, r0, #0
	movs r6, #0x13
	str r6, [sp, #0xd4]
	ldr r5, _08039B1C @ =0x0000FFFF
_080399B8:
	ldr r0, [r7, #0x14]
	ldr r1, _08039B20 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	bl sub_08007544
	cmp r0, #0
	bne _080399EC
	bl sub_08007510
	cmp r0, #0
	bne _080399EC
	bl sub_080075AC
	cmp r0, #0
	bne _080399EC
	ldr r0, _08039B10 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080399EC
	adds r0, r7, #0
	ldr r1, [sp, #0xe8]
	bl sub_08024320
_080399EC:
	bl WaitFrame
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, r5
	bne _080399B8
	cmp r4, #0
	beq _08039A44
	bl sub_08007544
	cmp r0, #0
	bne _08039A30
	bl sub_08007510
	cmp r0, #0
	bne _08039A30
	bl sub_080075AC
	cmp r0, #0
	bne _08039A30
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	ldr r1, _08039B00 @ =gPlayers
	adds r0, r0, r1
	bl sub_08024420
_08039A30:
	bl GetMultiplayerId
	ldr r2, _08039B00 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_08039A44:
	bl sub_08007750
	cmp r0, #0
	bne _08039AE2
	bl sub_080074CC
	cmp r0, #0
	bne _08039AE2
	ldr r4, _08039AFC @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039AE2
	bl sub_08007578
	cmp r0, #0
	bne _08039AE2
	ldr r0, _08039B24 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _08039B28 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08039ACC
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _08039ACC
	ldr r2, _08039B2C @ =gPlayerStats
	ldr r4, _08039B30 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08039B34 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08039ACC:
	bl sub_0800F53C
	ldr r4, _08039B38 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _08039AE2
	ldr r0, [r4]
	bl KillThread
_08039AE2:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0x12c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039AFC: .4byte 0x030063D8
_08039B00: .4byte gPlayers
_08039B04: .4byte 0x0000FFFE
_08039B08: .4byte gActiveEnemyMask
_08039B0C: .4byte gUnknown_030064D8
_08039B10: .4byte gMapLayer_03003910
_08039B14: .4byte 0x03003D94
_08039B18: .4byte 0x00000157
_08039B1C: .4byte 0x0000FFFF
_08039B20: .4byte 0xFFFFFE00
_08039B24: .4byte 0x00000BB8
_08039B28: .4byte gUnknown_03003D08
_08039B2C: .4byte gPlayerStats
_08039B30: .4byte 0x00000272
_08039B34: .4byte 0x00000275
_08039B38: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_08039B3C
sub_08039B3C: @ 0x08039B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sb, r0
	str r1, [sp, #0x54]
	add r6, sp, #0x44
	ldr r1, _08039BB8 @ =0x08054954
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	mov r0, sb
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	mov r0, sb
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x58]
	mov r1, sb
	ldr r1, [r1, #0x14]
	mov sl, r1
	movs r0, #0
	mov r5, sp
	adds r5, #0x4e
	strh r0, [r5]
	add r4, sp, #0x4c
	strh r0, [r4]
	movs r2, #0xb4
	str r2, [sp, #0x5c]
	bl sub_08007544
	cmp r0, #0
	bne _08039BAA
	bl sub_080075AC
	cmp r0, #0
	bne _08039BAA
	movs r0, #0x56
	bl PlaySE
_08039BAA:
	ldr r3, [sp, #0x5c]
	lsls r0, r3, #0x10
	ldr r4, _08039BBC @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r1, r0, #0x10
	str r1, [sp, #0x5c]
	b _08039E96
	.align 2, 0
_08039BB8: .4byte 0x08054954
_08039BBC: .4byte 0xFFFF0000
_08039BC0:
	bl sub_080076A8
	cmp r0, #0
	beq _08039BF8
	ldr r2, [sp, #0x54]
	lsls r0, r2, #1
	add r0, sp
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08039BF4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	ldr r2, [sp, #0x58]
	adds r2, r2, r0
	str r2, [sp, #0x58]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
	b _08039C2C
	.align 2, 0
_08039BF4: .4byte 0x0805289C
_08039BF8:
	ldr r4, [sp, #0x54]
	lsls r0, r4, #1
	add r0, sp
	adds r0, #0x44
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08039D70 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [sp, #0x58]
	adds r4, r4, r0
	str r4, [sp, #0x58]
	lsls r2, r2, #1
	ldr r0, _08039D70 @ =0x0805289C
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_08039C2C:
	add sl, r0
	bl GetMultiplayerId
	ldr r4, [sp, #0x58]
	asrs r6, r4, #0xc
	ldr r7, _08039D74 @ =gPlayers
	movs r1, #0xd4
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r3, sl
	asrs r5, r3, #0xc
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x60]
	str r5, [sp, #0x64]
	cmp r0, #0
	beq _08039C8A
	b _08039DDA
_08039C8A:
	cmp r4, #0x18
	bls _08039C90
	b _08039DDA
_08039C90:
	bl GetMultiplayerId
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r3, #0x2c]
	cmp r1, r0
	bne _08039CB2
	b _08039DDA
_08039CB2:
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	bne _08039CBA
	b _08039DDA
_08039CBA:
	bl sub_08007544
	cmp r0, #0
	beq _08039CC4
	b _08039DDA
_08039CC4:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _08039CD8
	b _08039DDA
_08039CD8:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _08039D78 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	mov r0, sb
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	bl GetMultiplayerId
	mov r4, sb
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _08039D80
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _08039D7C @ =0x000005DC
	b _08039DA8
	.align 2, 0
_08039D70: .4byte 0x0805289C
_08039D74: .4byte gPlayers
_08039D78: .4byte 0x0000FFFE
_08039D7C: .4byte 0x000005DC
_08039D80:
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_08039DA8:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _08039EBC @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08039DCC
	rsbs r0, r0, #0
_08039DCC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08039DDA:
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #8
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _08039E5E
	bl sub_080271D0
	cmp r0, #0
	bne _08039E5E
	bl sub_08007544
	cmp r0, #0
	bne _08039E5E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _08039E5E
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x64]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x50
	mov r5, sp
	adds r5, #0x52
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	movs r2, #0
	bl sub_08006008
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r4, sp, #0x4c
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
	movs r2, #8
	bl sub_08004344
_08039E5E:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _08039EA2
	bl sub_080074CC
	cmp r0, #0
	bne _08039EA2
	ldr r0, _08039EC0 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039EA2
	bl sub_08007578
	cmp r0, #0
	bne _08039EA2
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	ldr r2, _08039EC4 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x5c]
_08039E96:
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08039EA2
	b _08039BC0
_08039EA2:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039EBC: .4byte gPlayers
_08039EC0: .4byte 0x030063D8
_08039EC4: .4byte 0xFFFF0000

	thumb_func_start sub_08039EC8
sub_08039EC8: @ 0x08039EC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x5c]
	adds r5, r1, #0
	add r4, sp, #0x44
	ldr r1, _08039F38 @ =0x0805495A
	adds r0, r4, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, [sp, #0x5c]
	adds r0, #0x8c
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	ldr r0, [sp, #0x5c]
	ldr r0, [r0, #0x10]
	mov sl, r0
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0x14]
	ldr r2, _08039F3C @ =0xFFFD0000
	adds r2, r2, r0
	mov sb, r2
	movs r6, #0
	mov r1, sp
	adds r1, #0x56
	strh r6, [r1]
	add r0, sp, #0x54
	strh r6, [r0]
	movs r3, #6
	str r3, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x68]
	cmp r5, #1
	beq _08039F30
	cmp r5, #7
	bne _08039F40
_08039F30:
	movs r3, #0x3c
	str r3, [sp, #0x60]
	b _08039F44
	.align 2, 0
_08039F38: .4byte 0x0805495A
_08039F3C: .4byte 0xFFFD0000
_08039F40:
	movs r0, #0x1e
	str r0, [sp, #0x60]
_08039F44:
	bl sub_08007544
	cmp r0, #0
	bne _08039F5A
	bl sub_080075AC
	cmp r0, #0
	bne _08039F5A
	movs r0, #0x56
	bl PlaySE
_08039F5A:
	ldr r1, [sp, #0x60]
	lsls r2, r1, #0x10
	cmp r2, #0
	bne _08039F64
	b _0803A290
_08039F64:
	lsls r0, r5, #1
	adds r4, r4, r0
	str r4, [sp, #0x6c]
_08039F6A:
	ldr r3, [sp, #0x64]
	cmp r3, #6
	beq _08039FAC
	ldr r4, _08039FA4 @ =0xFFFF0000
	adds r0, r2, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FA8 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FA4: .4byte 0xFFFF0000
_08039FA8: .4byte 0x0805289C
_08039FAC:
	cmp r6, #0
	beq _08039FC4
	movs r1, #7
	str r1, [sp, #0x64]
	movs r0, #0
	movs r2, #0x56
	add r2, sp
	strh r0, [r2]
	add r3, sp, #0x54
	strh r0, [r3]
	movs r4, #1
	str r4, [sp, #0x68]
_08039FC4:
	bl sub_080076A8
	cmp r0, #0
	beq _08039FF4
	ldr r0, [sp, #0x6c]
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08039FF0 @ =0x0805289C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #5
	b _0803A01E
	.align 2, 0
_08039FF0: .4byte 0x0805289C
_08039FF4:
	ldr r0, [sp, #0x6c]
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803A160 @ =0x0805289C
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add sl, r0
	lsls r2, r2, #1
	ldr r4, _0803A160 @ =0x0805289C
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
_0803A01E:
	add sb, r0
	bl GetMultiplayerId
	mov r1, sl
	asrs r6, r1, #0xc
	ldr r7, _0803A164 @ =gPlayers
	movs r2, #0xd4
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r7, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #0xc
	subs r4, r6, r4
	bl GetMultiplayerId
	mov r1, sb
	asrs r5, r1, #0xc
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #0xc
	subs r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_08007670
	str r6, [sp, #0x70]
	str r5, [sp, #0x74]
	cmp r0, #0
	beq _0803A07C
	b _0803A1CA
_0803A07C:
	cmp r4, #0xf
	bls _0803A082
	b _0803A1CA
_0803A082:
	bl GetMultiplayerId
	ldr r4, [sp, #0x5c]
	ldrh r1, [r4]
	lsls r1, r1, #2
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0x80
	adds r1, r1, r5
	ldr r1, [r1]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bne _0803A0A4
	b _0803A1CA
_0803A0A4:
	ldrh r0, [r4, #0xa]
	cmp r0, #8
	bne _0803A0AC
	b _0803A1CA
_0803A0AC:
	bl GetMultiplayerId
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	bne _0803A0C0
	b _0803A1CA
_0803A0C0:
	bl sub_08007544
	cmp r0, #0
	beq _0803A0CA
	b _0803A1CA
_0803A0CA:
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	movs r6, #0
	movs r0, #7
	strh r0, [r1, #0xc]
	bl GetMultiplayerId
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r0, r7
	adds r0, #0x70
	ldr r1, _0803A168 @ =0x0000FFFE
	strh r1, [r0]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	ldr r0, [sp, #0x5c]
	bl CalcDamageToPlayer
	mov r1, r8
	muls r1, r4, r1
	adds r1, r1, r7
	adds r1, #0x54
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl GetMultiplayerId
	ldr r3, [sp, #0x5c]
	ldrh r1, [r3]
	lsls r1, r1, #2
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x2c]
	str r0, [r1]
	movs r5, #0
	movs r0, #0x73
	bl PlaySE
	bl sub_080076A8
	cmp r0, #0
	beq _0803A170
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	ldr r0, _0803A16C @ =0x000005DC
	b _0803A198
	.align 2, 0
_0803A160: .4byte 0x0805289C
_0803A164: .4byte gPlayers
_0803A168: .4byte 0x0000FFFE
_0803A16C: .4byte 0x000005DC
_0803A170:
	bl GetMultiplayerId
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1]
	bl GetMultiplayerId
	mov r1, r8
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0x24
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #2
_0803A198:
	strh r0, [r1]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl Random
	ldr r3, _0803A2A8 @ =gPlayers
	lsls r2, r5, #1
	movs r1, #0xd4
	muls r1, r4, r1
	adds r2, r2, r1
	adds r3, #0x24
	adds r4, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803A1BC
	rsbs r0, r0, #0
_0803A1BC:
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #4
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0803A1CA:
	ldr r4, [sp, #0x68]
	str r4, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0x64]
	add r2, sp, #0x54
	mov r3, sp
	adds r3, #0x56
	bl sub_08026C40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08007510
	cmp r0, #0
	bne _0803A25A
	bl sub_08007604
	cmp r0, #0
	bne _0803A25A
	bl sub_08007544
	cmp r0, #0
	bne _0803A25A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803A25A
	ldr r1, [sp, #0x70]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x74]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x58
	mov r5, sp
	adds r5, #0x5a
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	movs r2, #0
	bl sub_08006008
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	adds r1, #0x30
	add r4, sp, #0x54
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
	ldr r2, [sp, #0x64]
	bl sub_08004344
	ldr r1, [r0, #0xc]
	subs r1, #0x30
	str r1, [r0, #0xc]
_0803A25A:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803A290
	bl sub_080074CC
	cmp r0, #0
	bne _0803A290
	ldr r0, _0803A2AC @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A290
	bl sub_08007578
	cmp r0, #0
	bne _0803A290
	ldr r0, [sp, #0x60]
	lsls r2, r0, #0x10
	cmp r2, #0
	beq _0803A290
	b _08039F6A
_0803A290:
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2A8: .4byte gPlayers
_0803A2AC: .4byte 0x030063D8

	thumb_func_start sub_0803A2B0
sub_0803A2B0: @ 0x0803A2B0
	push {r4, lr}
	ldr r4, _0803A2D4 @ =0x03006818
	movs r0, #0xb4
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803A2C2:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0x11
	bls _0803A2C2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2D4: .4byte 0x03006818

	thumb_func_start sub_0803A2D8
sub_0803A2D8: @ 0x0803A2D8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803A2E8 @ =0x03006818
	ldr r4, [r0]
	movs r0, #0
_0803A2E0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803A2F0
	.align 2, 0
_0803A2E8: .4byte 0x03006818
_0803A2EC:
	bl WaitFrame
_0803A2F0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803A2EC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0x11
	bls _0803A2E0
	ldr r4, _0803A314 @ =0x03006818
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A314: .4byte 0x03006818

	thumb_func_start sub_0803A318
sub_0803A318: @ 0x0803A318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _0803A32C @ =0x03006818
	ldr r4, [r0]
	movs r6, #0
	b _0803A334
	.align 2, 0
_0803A32C: .4byte 0x03006818
_0803A330:
	adds r6, #1
	adds r4, #0x28
_0803A334:
	cmp r6, #0x11
	bhi _0803A36E
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A330
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0803A330
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A378 @ =sub_08039B3C
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl CreateThread
_0803A36E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A378: .4byte sub_08039B3C

	thumb_func_start sub_0803A37C
sub_0803A37C: @ 0x0803A37C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _0803A38C @ =0x03006818
	ldr r4, [r0]
	movs r5, #0
	b _0803A394
	.align 2, 0
_0803A38C: .4byte 0x03006818
_0803A390:
	adds r5, #1
	adds r4, #0x28
_0803A394:
	cmp r5, #0x11
	bhi _0803A3DA
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A390
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803A390
	cmp r6, #0
	bne _0803A3B0
	movs r6, #1
	b _0803A3B2
_0803A3B0:
	movs r6, #7
_0803A3B2:
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A3E0 @ =sub_08039EC8
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl CreateThread
_0803A3DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A3E0: .4byte sub_08039EC8

	thumb_func_start sub_0803A3E4
sub_0803A3E4: @ 0x0803A3E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _0803A3F8 @ =0x03006818
	ldr r4, [r0]
	movs r6, #0
	b _0803A400
	.align 2, 0
_0803A3F8: .4byte 0x03006818
_0803A3FC:
	adds r6, #1
	adds r4, #0x28
_0803A400:
	cmp r6, #0x11
	bhi _0803A43A
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803A3FC
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0803A3FC
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803A444 @ =sub_08039EC8
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl CreateThread
_0803A43A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A444: .4byte sub_08039EC8

	thumb_func_start sub_0803A448
sub_0803A448: @ 0x0803A448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	ldr r0, _0803A488 @ =0x030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r5, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0xe0]
	mov r3, sp
	adds r3, #0x7a
	str r3, [sp, #0xdc]
	mov r6, sp
	adds r6, #0x78
	str r6, [sp, #0xd8]
	cmp r5, r0
	bhs _0803A4A2
	adds r2, r0, #0
_0803A47A:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _0803A48C
	ldr r0, [r1, #4]
	adds r4, r1, r0
	b _0803A49A
	.align 2, 0
_0803A488: .4byte 0x030063D8
_0803A48C:
	cmp r0, #3
	bne _0803A49A
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x88]
	ldrh r0, [r1]
	str r0, [sp, #0x8c]
_0803A49A:
	adds r5, #1
	adds r1, #8
	cmp r5, r2
	blo _0803A47A
_0803A4A2:
	ldrh r0, [r4, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x84]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	strh r0, [r7, #2]
	ldrh r0, [r4]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	ldr r0, _0803A614 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r6, r7, #0
	adds r6, #0x48
	str r6, [sp, #0xc8]
	strh r2, [r6]
	adds r0, r7, #0
	adds r0, #0x4a
	str r0, [sp, #0xcc]
	strh r2, [r0]
	movs r1, #0x4c
	adds r1, r1, r7
	mov sb, r1
	strh r2, [r1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	movs r2, #0x72
	adds r2, r2, r7
	mov r8, r2
	ldrh r4, [r2]
	ldr r6, _0803A618 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r3, r8
	strh r4, [r3]
	movs r4, #0x6e
	adds r4, r4, r7
	mov sl, r4
	ldrh r4, [r4]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r6, sl
	strh r4, [r6]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	movs r2, #0x1e
	str r2, [sp, #0x98]
	ldr r3, [sp, #0x84]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r4, [sp, #0x84]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x10
	ldr r0, [sp, #0x94]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x94]
	adds r0, #6
	strb r0, [r1, #0x1d]
	bl sub_08033DF4
	bl sub_0803BE84
	bl sub_08007544
	ldr r6, [sp, #0xc8]
	str r6, [sp, #0xd0]
	ldr r1, [sp, #0xcc]
	mov sl, r1
	mov r2, sb
	str r2, [sp, #0xd4]
	mov r3, r8
	str r3, [sp, #0xe4]
	cmp r0, #0
	bne _0803A60A
	bl sub_080075AC
	cmp r0, #0
	bne _0803A60A
	ldr r5, _0803A61C @ =gPlayers
	movs r4, #0xd4
_0803A5D6:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803A5D6
	bl GetMultiplayerId
	ldr r5, _0803A61C @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0xa]
_0803A60A:
	ldr r0, [sp, #0xe0]
	movs r1, #0x47
	bl sub_0802934C
	b _0803A624
	.align 2, 0
_0803A614: .4byte gMapLayer_03003910
_0803A618: .4byte 0x080FB740
_0803A61C: .4byte gPlayers
_0803A620:
	bl WaitFrame
_0803A624:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0803A620
	ldr r4, _0803A668 @ =0x0000FFFF
	str r4, [sp, #0xa4]
	movs r6, #1
	str r6, [sp, #0xa8]
	movs r0, #0
	mov sb, r0
	mov r2, sb
	ldr r1, [sp, #0xdc]
	strh r2, [r1]
	ldr r3, [sp, #0xd8]
	strh r2, [r3]
	movs r4, #0
	str r4, [sp, #0xc0]
	movs r6, #0
	str r6, [sp, #0xb8]
	str r0, [sp, #0xc4]
_0803A64A:
	bl sub_080271D0
	cmp r0, #0
	beq _0803A654
	b _0803AAC0
_0803A654:
	mov r1, sb
	cmp r1, #0xa
	bls _0803A65C
	b _0803AAC0
_0803A65C:
	lsls r0, r1, #2
	ldr r1, _0803A66C @ =_0803A670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A668: .4byte 0x0000FFFF
_0803A66C: .4byte _0803A670
_0803A670: @ jump table
	.4byte _0803A69C @ case 0
	.4byte _0803A6F0 @ case 1
	.4byte _0803A76E @ case 2
	.4byte _0803A798 @ case 3
	.4byte _0803A7AA @ case 4
	.4byte _0803A7F8 @ case 5
	.4byte _0803A83C @ case 6
	.4byte _0803A930 @ case 7
	.4byte _0803A95E @ case 8
	.4byte _0803A9A4 @ case 9
	.4byte _0803AAB6 @ case 10
_0803A69C:
	bl sub_08007544
	cmp r0, #0
	bne _0803A6E6
	bl sub_080075AC
	cmp r0, #0
	bne _0803A6E6
	bl sub_080076A8
	cmp r0, #0
	beq _0803A6D0
	ldr r0, _0803A6C8 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803A6D0
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803A6CC @ =0x00090102
	b _0803A6D6
	.align 2, 0
_0803A6C8: .4byte gMapLayer_03003910
_0803A6CC: .4byte 0x00090102
_0803A6D0:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803A6EC @ =0x0009007D
_0803A6D6:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
_0803A6E6:
	movs r2, #1
	mov sb, r2
	b _0803AAC0
	.align 2, 0
_0803A6EC: .4byte 0x0009007D
_0803A6F0:
	bl sub_08007544
	cmp r0, #0
	bne _0803A74C
	bl sub_080075AC
	cmp r0, #0
	bne _0803A74C
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _0803A70C
	b _0803AAC0
_0803A70C:
	bl GetMultiplayerId
	ldr r2, _0803A744 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803A748 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	adds r0, r7, #0
	bl sub_0803BE28
	movs r3, #2
	mov sb, r3
	movs r1, #0
	movs r0, #1
	ldr r4, [sp, #0xd0]
	strh r0, [r4]
	mov r6, sl
	strh r1, [r6]
	ldr r0, [sp, #0xd4]
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	str r1, [sp, #0xa8]
	b _0803AAC0
	.align 2, 0
_0803A744: .4byte gPlayers
_0803A748: .4byte 0x0000FFFE
_0803A74C:
	adds r0, r7, #0
	bl sub_0803BE28
	movs r2, #2
	mov sb, r2
	movs r1, #0
	movs r0, #1
	ldr r3, [sp, #0xd0]
	strh r0, [r3]
	mov r4, sl
	strh r1, [r4]
	ldr r6, [sp, #0xd4]
	strh r1, [r6]
	adds r0, r7, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _0803A92A
_0803A76E:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A77A
	b _0803AAC0
_0803A77A:
	movs r0, #0
	movs r1, #2
	ldr r2, [sp, #0xd0]
	strh r1, [r2]
	mov r3, sl
	strh r0, [r3]
	ldr r4, [sp, #0xd4]
	strh r0, [r4]
	movs r6, #1
	str r6, [sp, #0xa8]
	movs r0, #0xc
	str r0, [r7, #0x54]
	movs r0, #3
	mov sb, r0
	b _0803AAAC
_0803A798:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	beq _0803A7A0
	b _0803AAC0
_0803A7A0:
	movs r1, #4
	mov sb, r1
	movs r0, #0xc
	str r0, [r7, #0x54]
	b _0803AAC0
_0803A7AA:
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	str r4, [sp, #0xb8]
	cmp r0, #0
	blt _0803A7C0
	movs r6, #0
	str r6, [sp, #0xb8]
_0803A7C0:
	ldr r0, _0803A7F0 @ =gUnknown_03000074
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803A7CA
	b _0803AAC0
_0803A7CA:
	movs r0, #5
	mov sb, r0
	ldr r0, _0803A7F4 @ =0x080FBD34
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #1
	bl sub_0803BEE8
	ldr r3, [sp, #0xc4]
	adds r3, #1
	str r3, [sp, #0xc4]
	cmp r3, #8
	bhi _0803A7EA
	b _0803AAC0
_0803A7EA:
	movs r4, #0
	str r4, [sp, #0xc4]
	b _0803AAC0
	.align 2, 0
_0803A7F0: .4byte gUnknown_03000074
_0803A7F4: .4byte 0x080FBD34
_0803A7F8:
	ldr r6, [sp, #0xb8]
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xb8]
	cmp r0, #0
	blt _0803A80E
	movs r3, #0
	str r3, [sp, #0xb8]
_0803A80E:
	ldr r0, _0803A838 @ =gUnknown_03000074
	ldrh r1, [r0]
	cmp r1, #3
	beq _0803A818
	b _0803AAC0
_0803A818:
	movs r0, #0
	ldr r4, [sp, #0xd0]
	strh r1, [r4]
	mov r6, sl
	strh r0, [r6]
	ldr r1, [sp, #0xd4]
	strh r0, [r1]
	movs r2, #0
	str r2, [sp, #0xa8]
	movs r3, #6
	mov sb, r3
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0803AAC0
	.align 2, 0
_0803A838: .4byte gUnknown_03000074
_0803A83C:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A848
	b _0803AAC0
_0803A848:
	ldr r1, _0803A864 @ =gUnknown_03000076
	ldrh r0, [r1]
	cmp r0, #2
	bhi _0803A8F0
	cmp r0, #2
	beq _0803A8AC
	movs r5, #0
	ldr r4, _0803A868 @ =0x080FBD54
	mov r8, r4
	adds r6, r1, #0
	adds r4, r7, #0
	adds r4, #0x88
	b _0803A898
	.align 2, 0
_0803A864: .4byte gUnknown_03000076
_0803A868: .4byte 0x080FBD54
_0803A86C:
	bl sub_080076A8
	cmp r0, #0
	beq _0803A87E
	ldrh r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	b _0803A888
_0803A87E:
	ldr r0, _0803A8A4 @ =0x080FBD48
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0803A888:
	strh r0, [r4]
	ldr r1, _0803A8A8 @ =gUnknown_03000076
	ldrh r0, [r7]
	ldrh r1, [r1]
	adds r2, r5, #0
	bl sub_0802EEA8
	adds r5, #1
_0803A898:
	bl sub_08001EC4
	cmp r5, r0
	blo _0803A86C
	b _0803A8D2
	.align 2, 0
_0803A8A4: .4byte 0x080FBD48
_0803A8A8: .4byte gUnknown_03000076
_0803A8AC:
	bl sub_080076A8
	cmp r0, #0
	beq _0803A8BC
	ldr r0, _0803A8B8 @ =0x080FBD54
	b _0803A8BE
	.align 2, 0
_0803A8B8: .4byte 0x080FBD54
_0803A8BC:
	ldr r0, _0803A8E8 @ =0x080FBD48
_0803A8BE:
	ldr r1, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0]
	ldrh r0, [r7]
	ldr r1, _0803A8EC @ =gUnknown_03000076
	ldrh r1, [r1]
	movs r2, #0
	bl sub_0802EEA8
_0803A8D2:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r6, #0xb
	str r6, [sp, #0xc0]
	movs r0, #0
	ldr r1, [sp, #0xd8]
	strh r0, [r1]
	ldr r2, [sp, #0xdc]
	strh r0, [r2]
	b _0803A916
	.align 2, 0
_0803A8E8: .4byte 0x080FBD48
_0803A8EC: .4byte gUnknown_03000076
_0803A8F0:
	ldrh r0, [r7]
	adds r0, #4
	bl StartItemUseEffect
	ldr r3, [sp, #0xe4]
	ldrh r0, [r3]
	movs r1, #0xa
	bl __divsi3
	ldrh r1, [r7, #0x38]
	adds r1, r1, r0
	movs r0, #0
	strh r1, [r7, #0x38]
	movs r4, #0xa
	str r4, [sp, #0xc0]
	ldr r6, [sp, #0xd8]
	strh r0, [r6]
	ldr r1, [sp, #0xdc]
	strh r0, [r1]
_0803A916:
	movs r2, #7
	mov sb, r2
	movs r1, #0
	movs r0, #4
	ldr r3, [sp, #0xd0]
	strh r0, [r3]
	mov r4, sl
	strh r1, [r4]
	ldr r6, [sp, #0xd4]
	strh r1, [r6]
_0803A92A:
	movs r0, #0
	str r0, [sp, #0xa8]
	b _0803AAC0
_0803A930:
	adds r0, r7, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803A93C
	b _0803AAC0
_0803A93C:
	movs r0, #0
	movs r1, #0
	bl sub_0803BEE8
	movs r1, #8
	mov sb, r1
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0xd0]
	strh r0, [r2]
	mov r3, sl
	strh r1, [r3]
	ldr r4, [sp, #0xd4]
	strh r1, [r4]
	movs r6, #1
	str r6, [sp, #0xa8]
	b _0803AAC0
_0803A95E:
	movs r1, #0
	movs r0, #9
	strh r0, [r7, #0xa]
	movs r0, #2
	ldr r2, [sp, #0xd0]
	strh r0, [r2]
	mov r3, sl
	strh r1, [r3]
	ldr r4, [sp, #0xd4]
	strh r1, [r4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803A980
	rsbs r0, r0, #0
_0803A980:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x8c]
	subs r1, #1
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	movs r6, #0
	str r6, [sp, #0xbc]
	movs r0, #0
	str r0, [sp, #0xa0]
	movs r1, #1
	str r1, [sp, #0xa8]
	movs r2, #9
	mov sb, r2
	b _0803AAC0
_0803A9A4:
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #0x10
	ldr r4, _0803A9F8 @ =0xFFFC0000
	adds r0, r0, r4
	lsrs r6, r0, #0x10
	str r6, [sp, #0xb8]
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803A9BE
	ldr r0, _0803A9FC @ =0x0000FFE0
	str r0, [sp, #0xb8]
_0803A9BE:
	bl sub_080076A8
	cmp r0, #0
	beq _0803AA00
	ldr r2, [sp, #0xbc]
	lsls r1, r2, #2
	ldr r4, [sp, #0x88]
	adds r3, r1, r4
	ldrh r0, [r3]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	cmp r0, #0
	bge _0803A9DC
	adds r0, #7
_0803A9DC:
	asrs r0, r0, #3
	adds r0, r2, r0
	str r0, [r7, #0x10]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0xf
	ldr r2, [r7, #0x14]
	subs r0, r0, r2
	cmp r0, #0
	bge _0803A9F0
	adds r0, #7
_0803A9F0:
	asrs r0, r0, #3
	adds r0, r2, r0
	str r0, [r7, #0x14]
	b _0803AA2E
	.align 2, 0
_0803A9F8: .4byte 0xFFFC0000
_0803A9FC: .4byte 0x0000FFE0
_0803AA00:
	ldr r0, [sp, #0xbc]
	lsls r6, r0, #2
	ldr r1, [sp, #0x88]
	adds r5, r6, r1
	ldrh r0, [r5]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x10]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x10]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xf
	ldr r4, [r7, #0x14]
	subs r0, r0, r4
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r1, r6, #0
_0803AA2E:
	ldr r2, [sp, #0x88]
	adds r6, r1, r2
	ldrh r0, [r6]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bge _0803AA40
	rsbs r0, r0, #0
_0803AA40:
	ldr r2, _0803AA74 @ =0x00000FFF
	cmp r0, r2
	bgt _0803AAC0
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xf
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	cmp r0, #0
	bge _0803AA54
	rsbs r0, r0, #0
_0803AA54:
	cmp r0, r2
	bgt _0803AAC0
	ldr r3, [sp, #0xbc]
	ldr r4, [sp, #0xb0]
	cmp r3, r4
	bne _0803AA78
	movs r6, #3
	mov sb, r6
	ldr r0, [sp, #0xe0]
	movs r1, #0x4c
	bl sub_0802934C
	movs r0, #0
	strh r0, [r7, #0xa]
	b _0803AAC0
	.align 2, 0
_0803AA74: .4byte 0x00000FFF
_0803AA78:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0803AA86
	rsbs r0, r0, #0
_0803AA86:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, [sp, #0x8c]
	subs r4, #1
	adds r1, r4, #0
	bl __modsi3
	str r0, [sp, #0xbc]
	ldr r0, [sp, #0xa0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	cmp r0, r4
	ble _0803AAC0
	movs r0, #3
	mov sb, r0
	movs r0, #0
	strh r0, [r7, #0xa]
_0803AAAC:
	ldr r0, [sp, #0xe0]
	movs r1, #0x4c
	bl sub_0802934C
	b _0803AAC0
_0803AAB6:
	movs r1, #0xb
	mov sb, r1
	movs r0, #2
	bl FadeOutBGM
_0803AAC0:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0803AB0A
	movs r2, #0x14
	str r2, [sp, #0xa4]
	ldrh r3, [r7, #0x28]
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb4]
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803AB04
	movs r6, #0xa
	mov sb, r6
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r0, #5
	movs r1, #0
	bl sub_0803BEE8
	ldrh r3, [r7, #2]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _0803AB0A
_0803AB04:
	add r0, sp, #0xb4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
_0803AB0A:
	ldr r0, [sp, #0xa4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803AB70
	ldr r1, [sp, #0xac]
	cmp r1, #0
	beq _0803AB70
	bl sub_08007544
	cmp r0, #0
	bne _0803AB52
	bl sub_08007510
	cmp r0, #0
	bne _0803AB52
	bl sub_08007604
	cmp r0, #0
	bne _0803AB52
	bl sub_080075AC
	cmp r0, #0
	bne _0803AB52
	ldr r3, [sp, #0xb4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xac]
	bl sub_0800EA74
_0803AB52:
	movs r0, #2
	ldr r4, [sp, #0xa4]
	ands r0, r4
	cmp r0, #0
	beq _0803AB74
	ldr r6, [sp, #0xb4]
	lsls r0, r6, #0x10
	ldr r1, _0803AB6C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
	b _0803AB74
	.align 2, 0
_0803AB6C: .4byte 0xFFFF0000
_0803AB70:
	ldr r2, _0803ADA4 @ =0x0000FFFF
	str r2, [sp, #0xa4]
_0803AB74:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	bne _0803AB7C
	b _0803AC96
_0803AB7C:
	ldr r3, [sp, #0xd0]
	ldrh r1, [r3]
	ldr r4, [sp, #0xa8]
	str r4, [sp]
	add r0, sp, #0x10
	mov r2, sl
	ldr r3, [sp, #0xd4]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	ldr r6, [sp, #0xd0]
	ldrh r0, [r6]
	cmp r0, #3
	bne _0803ABAC
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [sp, #0xc0]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xdc]
	bl sub_08026C40
_0803ABAC:
	bl sub_08007510
	cmp r0, #0
	bne _0803AC96
	bl sub_08007604
	cmp r0, #0
	bne _0803AC96
	bl sub_08007544
	cmp r0, #0
	bne _0803AC96
	bl sub_080075AC
	adds r4, r0, #0
	cmp r4, #0
	bne _0803AC96
	ldr r0, [sp, #0x94]
	adds r0, #0x15
	ldr r1, [sp, #0x84]
	ldrh r2, [r1, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x9c]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r4, [sp, #0xd0]
	ldrh r2, [r4]
	mov r4, sl
	ldrh r3, [r4]
	ldr r4, [sp, #0x9c]
	str r4, [sp]
	add r4, sp, #0x2c
	mov r8, r4
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	ldr r1, [sp, #0xb8]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r0, #0xc]
	adds r1, r1, r2
	str r1, [r0, #0xc]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	ldr r4, [sp, #0x9c]
	str r4, [sp]
	mov r2, r8
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xd
	movs r3, #0
	bl sub_08004344
	ldr r3, [sp, #0xd0]
	ldrh r0, [r3]
	cmp r0, #3
	bne _0803AC96
	movs r4, #0
	ldrsh r0, [r5, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	ldr r4, [sp, #0xd8]
	ldrh r3, [r4]
	ldr r6, [sp, #0x9c]
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xc0]
	bl sub_08004344
_0803AC96:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803ACCA
	bl sub_080074CC
	cmp r0, #0
	bne _0803ACCA
	ldr r0, _0803ADA8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803ACCA
	bl sub_08007578
	cmp r0, #0
	bne _0803ACCA
	mov r3, sb
	cmp r3, #0xb
	beq _0803ACCA
	b _0803A64A
_0803ACCA:
	bl sub_080292D0
	ldrh r3, [r7, #2]
	movs r0, #0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_08033E20
	bl sub_0803BEA8
	ldr r2, _0803ADAC @ =gActiveEnemyMask
	adds r1, r4, #0
	ldrh r6, [r7]
	lsls r1, r6
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x94]
	bl sub_0800CB84
	bl sub_08007750
	cmp r0, #0
	beq _0803AD08
	b _0803B11A
_0803AD08:
	bl sub_080074CC
	cmp r0, #0
	beq _0803AD12
	b _0803B11A
_0803AD12:
	bl sub_08007578
	cmp r0, #0
	beq _0803AD1C
	b _0803B11A
_0803AD1C:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AD26
	b _0803B11A
_0803AD26:
	bl sub_08007510
	cmp r0, #0
	beq _0803AD30
	b _0803B11A
_0803AD30:
	ldr r0, _0803ADA8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9e
	strh r4, [r0]
	bl sub_08016FA0
	cmp r0, #0
	beq _0803AD42
	b _0803AE8A
_0803AD42:
	bl sub_080271D0
	cmp r0, #0
	beq _0803AD4C
	b _0803AE8A
_0803AD4C:
	bl sub_08007544
	cmp r0, #0
	beq _0803AD56
	b _0803AE8A
_0803AD56:
	bl sub_08007510
	cmp r0, #0
	beq _0803AD60
	b _0803AE8A
_0803AD60:
	bl sub_080075AC
	cmp r0, #0
	beq _0803AD6A
	b _0803AE8A
_0803AD6A:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AD74
	b _0803AE8A
_0803AD74:
	bl GetMultiplayerId
	ldr r2, _0803ADB0 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r0, [r1, #0x10]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_080076A8
	cmp r0, #0
	beq _0803ADC2
	ldr r0, _0803ADB4 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803ADC2
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803ADB8 @ =0x00090103
	b _0803ADC8
	.align 2, 0
_0803ADA4: .4byte 0x0000FFFF
_0803ADA8: .4byte 0x030063D8
_0803ADAC: .4byte gActiveEnemyMask
_0803ADB0: .4byte gPlayers
_0803ADB4: .4byte gMapLayer_03003910
_0803ADB8: .4byte 0x00090103
_0803ADBC:
	bl sub_080077AC
	b _0803AE76
_0803ADC2:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803ADE0 @ =0x0009007E
_0803ADC8:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	bl sub_08007798
	b _0803AE4E
	.align 2, 0
_0803ADE0: .4byte 0x0009007E
_0803ADE4:
	bl sub_08007544
	cmp r0, #0
	bne _0803AE40
	bl sub_08007510
	cmp r0, #0
	bne _0803AE40
	bl sub_080271D0
	cmp r0, #0
	bne _0803AE40
	bl sub_080075AC
	cmp r0, #0
	bne _0803AE40
	ldr r0, [sp, #0x98]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803AE40
	add r0, sp, #0x7c
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sp
	adds r1, #0x7e
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3]
	mov r4, sl
	ldrh r3, [r4]
	ldr r6, [sp, #0x9c]
	str r6, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803AE40:
	bl WaitFrame
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	cmp r0, #0
	bne _0803ADBC
_0803AE4E:
	bl sub_08007750
	cmp r0, #0
	bne _0803AE76
	bl sub_080074CC
	cmp r0, #0
	bne _0803AE76
	ldr r0, _0803AEF8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803AE76
	bl sub_08007578
	cmp r0, #0
	beq _0803ADE4
_0803AE76:
	bl GetMultiplayerId
	ldr r2, _0803AEFC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803AF00 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803AE8A:
	bl sub_08001F98
	cmp r0, #0
	bne _0803AE9C
	ldr r0, _0803AF04 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	bl PlayBGM
_0803AE9C:
	bl sub_08016FA0
	cmp r0, #0
	beq _0803AEA6
	b _0803B044
_0803AEA6:
	bl sub_080271D0
	cmp r0, #0
	beq _0803AEB0
	b _0803B044
_0803AEB0:
	bl sub_08007544
	cmp r0, #0
	beq _0803AEBA
	b _0803B044
_0803AEBA:
	bl sub_08007510
	cmp r0, #0
	beq _0803AEC4
	b _0803B044
_0803AEC4:
	bl sub_080075AC
	cmp r0, #0
	beq _0803AECE
	b _0803B044
_0803AECE:
	bl sub_080076E0
	cmp r0, #0
	beq _0803AED8
	b _0803B044
_0803AED8:
	bl GetMultiplayerId
	ldr r2, _0803AEFC @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0xa
	bl sub_0800F244
	mov r4, sp
	adds r4, #0x39
	b _0803AF0C
	.align 2, 0
_0803AEF8: .4byte 0x030063D8
_0803AEFC: .4byte gPlayers
_0803AF00: .4byte 0x0000FFFE
_0803AF04: .4byte gMapLayer_03003910
_0803AF08:
	bl WaitFrame
_0803AF0C:
	bl sub_0800F298
	cmp r0, #0
	beq _0803AF08
	movs r0, #0x14
	bl sub_0800F1EC
	b _0803AF20
_0803AF1C:
	bl WaitFrame
_0803AF20:
	bl sub_0800F298
	cmp r0, #0
	beq _0803AF1C
	ldr r1, _0803AF54 @ =0x0010000E
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08026ADC
	movs r0, #6
	strb r0, [r4]
	bl sub_080076A8
	cmp r0, #0
	beq _0803AF60
	ldr r0, _0803AF58 @ =gMapLayer_03003910
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #9
	bne _0803AF60
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803AF5C @ =0x00090104
	b _0803AF66
	.align 2, 0
_0803AF54: .4byte 0x0010000E
_0803AF58: .4byte gMapLayer_03003910
_0803AF5C: .4byte 0x00090104
_0803AF60:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803AF94 @ =0x0009007F
_0803AF66:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x88]
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xf
	str r0, [r7, #0x10]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0xf
	str r0, [r7, #0x14]
	bl WaitFrame
	add r2, sp, #0x7c
	mov r8, r2
	mov r6, sp
	adds r6, #0x7e
	mov r5, sl
	b _0803AFFC
	.align 2, 0
_0803AF94: .4byte 0x0009007F
_0803AF98:
	ldr r1, [sp, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x16
	movs r2, #1
	bl LoadPalette
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r3, r6, #0
	bl sub_08005FC4
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #0
	adds r2, r5, #0
	ldr r3, [sp, #0xd4]
	bl sub_08026C40
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r3, [r5]
	str r4, [sp]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08004344
	bl WaitFrame
_0803AFFC:
	ldr r0, [sp, #0x90]
	bl sub_0802294C
	adds r4, r0, #0
	cmp r4, #0
	beq _0803AF98
	movs r0, #0xa
	bl sub_0800F244
	b _0803B014
_0803B010:
	bl WaitFrame
_0803B014:
	bl sub_0800F298
	cmp r0, #0
	beq _0803B010
	movs r0, #0x14
	bl sub_0800F1EC
	b _0803B028
_0803B024:
	bl WaitFrame
_0803B028:
	bl sub_0800F298
	cmp r0, #0
	beq _0803B024
	bl GetMultiplayerId
	ldr r2, _0803B1D4 @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803B1D8 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
_0803B044:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	beq _0803B11A
	ldr r4, _0803B1DC @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _0803B078
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B078
	ldr r0, _0803B1E0 @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803B078
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_0803B078:
	ldr r4, _0803B1D4 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x84]
	bl CalcExpGain
	str r0, [sp, #0xa8]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xa8]
	bl AddExp
	adds r4, r0, #0
	movs r1, #0x13
	str r1, [sp, #0x98]
	ldr r5, _0803B1E4 @ =0x0000FFFF
_0803B0A8:
	ldr r0, [r7, #0x14]
	ldr r2, _0803B1E8 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r7, #0x14]
	bl sub_08007510
	cmp r0, #0
	bne _0803B0DC
	bl sub_08007544
	cmp r0, #0
	bne _0803B0DC
	bl sub_080075AC
	cmp r0, #0
	bne _0803B0DC
	ldr r0, _0803B1EC @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803B0DC
	adds r0, r7, #0
	ldr r1, [sp, #0xa8]
	bl sub_08024320
_0803B0DC:
	bl WaitFrame
	ldr r0, [sp, #0x98]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	cmp r0, r5
	bne _0803B0A8
	cmp r4, #0
	beq _0803B11A
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0803B1D4 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_0803B11A:
	bl sub_08007750
	cmp r0, #0
	bne _0803B1BA
	bl sub_080074CC
	cmp r0, #0
	bne _0803B1BA
	ldr r4, _0803B1F0 @ =0x030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B1BA
	bl sub_08007578
	cmp r0, #0
	bne _0803B1BA
	ldr r0, _0803B1F4 @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	bl sub_080213CC
	ldr r3, _0803B1F8 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803B1A4
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803B1A4
	ldr r2, _0803B1FC @ =gPlayerStats
	ldr r4, _0803B200 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803B204 @ =0x00000275
	adds r2, r2, r0
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0803B1A4:
	bl sub_0800F53C
	ldr r4, _0803B208 @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803B1BA
	ldr r0, [r4]
	bl KillThread
_0803B1BA:
	bl sub_080292D0
	bl ThreadExit
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B1D4: .4byte gPlayers
_0803B1D8: .4byte 0x0000FFFE
_0803B1DC: .4byte 0x03003D94
_0803B1E0: .4byte 0x00000157
_0803B1E4: .4byte 0x0000FFFF
_0803B1E8: .4byte 0xFFFFFE00
_0803B1EC: .4byte gMapLayer_03003910
_0803B1F0: .4byte 0x030063D8
_0803B1F4: .4byte 0x00000BB8
_0803B1F8: .4byte gUnknown_03003D08
_0803B1FC: .4byte gPlayerStats
_0803B200: .4byte 0x00000272
_0803B204: .4byte 0x00000275
_0803B208: .4byte gUnknownThreadPtr_030063E4

	thumb_func_start sub_0803B20C
sub_0803B20C: @ 0x0803B20C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	str r0, [sp, #0xa8]
	ldr r1, _0803B498 @ =0x00100031
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #0
	mov sb, r0
	adds r1, #0x34
	str r1, [sp, #0xec]
	mov r2, sp
	adds r2, #0x54
	str r2, [sp, #0xf0]
	mov r3, sp
	adds r3, #0x7c
	str r3, [sp, #0xfc]
	mov r4, sp
	adds r4, #0x84
	str r4, [sp, #0x100]
	mov r5, sp
	adds r5, #0x8c
	str r5, [sp, #0x104]
	mov r7, sp
	adds r7, #0x74
	str r7, [sp, #0xf8]
	add r6, sp, #0x94
	mov r0, sp
	adds r0, #0x9c
	str r0, [sp, #0x108]
	adds r1, #0x20
	str r1, [sp, #0xf4]
	ldr r2, [sp, #0xec]
	mov r8, r2
	mov sl, r3
	movs r5, #0
_0803B26C:
	mov r3, sb
	lsls r4, r3, #2
	mov r7, r8
	adds r1, r7, r4
	ldr r2, [sp, #0xa8]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0xf0]
	adds r1, r3, r4
	ldr r0, [r2, #0x14]
	str r0, [r1]
	mov r7, sb
	lsls r1, r7, #1
	mov r0, sl
	adds r3, r0, r1
	ldr r7, [sp, #0x100]
	adds r2, r7, r1
	ldr r7, [sp, #0x104]
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r2]
	strh r5, [r3]
	ldr r0, [sp, #0xf8]
	adds r2, r0, r1
	mov r3, sb
	lsls r0, r3, #6
	subs r0, r0, r3
	strh r0, [r2]
	adds r0, r6, r1
	strh r5, [r0]
	ldr r7, [sp, #0x108]
	adds r1, r7, r1
	strh r5, [r1]
	ldr r0, [sp, #0xf4]
	adds r4, r0, r4
	movs r0, #0x20
	rsbs r0, r0, #0
	str r0, [r4]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _0803B26C
	ldr r0, _0803B49C @ =gUnknown_03000074
	movs r1, #4
	strh r1, [r0]
	ldr r1, _0803B4A0 @ =0xFFF60000
	str r1, [sp, #0xac]
	movs r2, #0
	str r2, [sp, #0xb0]
	movs r0, #9
	ldr r3, [sp, #0xa8]
	strh r0, [r3, #0xa]
	add r4, sp, #0xa4
	mov sl, r4
	movs r5, #0xa6
	add r5, sp
	mov r8, r5
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0xbc]
_0803B2EA:
	ldr r0, [sp, #0xac]
	ldr r1, [sp, #0xb0]
	adds r0, r0, r1
	str r0, [sp, #0xac]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [sp, #0xb0]
	movs r3, #0
	mov sb, r3
_0803B2FE:
	mov r4, sb
	lsls r7, r4, #2
	ldr r0, [sp, #0xec]
	adds r5, r0, r7
	lsls r6, r4, #1
	ldr r1, [sp, #0xf8]
	adds r2, r1, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0803B4A4 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0xf0]
	adds r4, r0, r7
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803B4A4 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B408
	bl sub_08007604
	cmp r0, #0
	bne _0803B408
	bl sub_08007544
	cmp r0, #0
	bne _0803B408
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B408
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0xfc]
	adds r4, r3, r6
	ldr r0, [sp, #0x100]
	adds r3, r0, r6
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
	mov r3, sl
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	adds r2, #6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4]
	str r5, [sp]
	ldr r4, [sp, #0xbc]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [sp, #0xac]
	asrs r1, r0, #0xc
	ldr r3, [sp, #0xf4]
	adds r0, r3, r7
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	mov r4, sl
	movs r7, #0
	ldrsh r0, [r4, r7]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xbc]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803B408:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B418
	b _0803B2FE
_0803B418:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803B44C
	bl sub_080074CC
	cmp r0, #0
	bne _0803B44C
	ldr r0, _0803B4A8 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B44C
	bl sub_08007578
	cmp r0, #0
	bne _0803B44C
	ldr r5, [sp, #0xac]
	cmp r5, #0
	bge _0803B44C
	b _0803B2EA
_0803B44C:
	movs r7, #0
	str r7, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb0]
_0803B454:
	ldr r1, [sp, #0xb4]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x14
	ble _0803B4B2
	ldr r3, [sp, #0xb0]
	lsls r0, r3, #1
	ldr r4, [sp, #0x108]
	adds r0, r4, r0
	movs r1, #1
	strh r1, [r0]
	adds r3, #1
	str r3, [sp, #0xb0]
	movs r5, #0
	str r5, [sp, #0xb4]
	bl sub_08007544
	cmp r0, #0
	bne _0803B4AC
	bl sub_080075AC
	cmp r0, #0
	bne _0803B4AC
	movs r0, #0x8f
	bl PlaySE
	b _0803B4B2
	.align 2, 0
_0803B498: .4byte 0x00100031
_0803B49C: .4byte gUnknown_03000074
_0803B4A0: .4byte 0xFFF60000
_0803B4A4: .4byte 0x0805289C
_0803B4A8: .4byte 0x030063D8
_0803B4AC:
	movs r0, #0x8f
	bl StopSE
_0803B4B2:
	movs r7, #0
	mov sb, r7
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0xc0]
_0803B4BC:
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r5, [sp, #0xec]
	add r5, sl
	mov r2, sb
	lsls r6, r2, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803B66C @ =0x0805289C
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _0803B66C @ =0x0805289C
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B5D6
	bl sub_08007604
	cmp r0, #0
	bne _0803B5D6
	bl sub_08007544
	cmp r0, #0
	bne _0803B5D6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B5D6
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r7, sp, #0xa4
	movs r2, #0xa6
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r7, #0
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0x108]
	adds r0, r3, r6
	ldrh r0, [r0]
	mov r4, sb
	adds r4, #6
	cmp r0, #1
	bne _0803B582
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [sp, #0xfc]
	adds r2, r3, r6
	ldr r3, [sp, #0x100]
	adds r3, r3, r6
	mov ip, r3
	str r0, [sp]
	add r0, sp, #0x10
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
_0803B582:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp, #0xfc]
	adds r3, r4, r6
	ldrh r3, [r3]
	str r5, [sp]
	ldr r4, [sp, #0xc0]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xc0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803B5D6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B5E6
	b _0803B4BC
_0803B5E6:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803B626
	bl sub_080074CC
	cmp r0, #0
	bne _0803B626
	ldr r0, _0803B670 @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B626
	bl sub_08007578
	cmp r0, #0
	bne _0803B626
	ldr r5, [sp, #0xb0]
	cmp r5, #3
	bgt _0803B61A
	b _0803B454
_0803B61A:
	ldr r7, [sp, #0xb4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _0803B626
	b _0803B454
_0803B626:
	ldr r0, _0803B674 @ =gUnknown_03000074
	movs r1, #0
	strh r1, [r0]
	bl sub_08007544
	cmp r0, #0
	bne _0803B642
	bl sub_080075AC
	cmp r0, #0
	bne _0803B642
	movs r0, #0x8e
	bl PlaySE
_0803B642:
	movs r0, #0
	ldr r1, [sp, #0xa8]
	strh r0, [r1, #0xa]
	ldr r1, _0803B674 @ =gUnknown_03000074
	ldrh r0, [r1]
	cmp r0, #5
	bne _0803B652
	b _0803BC78
_0803B652:
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0xcc]
_0803B658:
	ldrh r0, [r1]
	cmp r0, #1
	bne _0803B660
	b _0803B80C
_0803B660:
	cmp r0, #1
	bgt _0803B678
	cmp r0, #0
	beq _0803B686
	b _0803BC42
	.align 2, 0
_0803B66C: .4byte 0x0805289C
_0803B670: .4byte 0x030063D8
_0803B674: .4byte gUnknown_03000074
_0803B678:
	cmp r0, #2
	bne _0803B67E
	b _0803B984
_0803B67E:
	cmp r0, #3
	bne _0803B684
	b _0803BB00
_0803B684:
	b _0803BC42
_0803B686:
	bl sub_08007544
	cmp r0, #0
	bne _0803B6A8
	bl sub_080075AC
	cmp r0, #0
	bne _0803B6A8
	ldr r3, [sp, #0xb8]
	cmp r3, #0
	beq _0803B6AE
	movs r0, #0x8e
	bl PlaySE
	movs r4, #0
	str r4, [sp, #0xb8]
	b _0803B6AE
_0803B6A8:
	movs r0, #0x8e
	bl StopSE
_0803B6AE:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0xa4
	str r7, [sp, #0xc4]
	mov r0, sp
	adds r0, #0xa6
	str r0, [sp, #0xc8]
_0803B6BE:
	mov r1, sb
	lsls r3, r1, #2
	ldr r2, [sp, #0xf4]
	adds r2, r2, r3
	mov sl, r2
	ldr r0, [r2]
	movs r2, #0x20
	rsbs r2, r2, #0
	adds r1, r0, #0
	subs r0, #1
	mov r4, sl
	str r0, [r4]
	cmp r1, r2
	bge _0803B6DC
	str r2, [r4]
_0803B6DC:
	mov r5, sb
	lsls r4, r5, #1
	ldr r7, [sp, #0xf8]
	adds r2, r7, r4
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, [sp, #0xec]
	adds r0, r0, r3
	mov r8, r0
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0803B808 @ =0x0805289C
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #9
	ldr r7, [sp, #0xa8]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	ldr r5, [sp, #0xf0]
	adds r7, r5, r3
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803B808 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r7]
	bl sub_08007510
	cmp r0, #0
	bne _0803B7F4
	bl sub_08007604
	cmp r0, #0
	bne _0803B7F4
	bl sub_08007544
	cmp r0, #0
	bne _0803B7F4
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B7F4
	mov r5, r8
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	bl sub_08005FC4
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r4
	ldr r1, [sp, #0x100]
	adds r3, r1, r4
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r4
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r7]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xc4]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xc8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xc4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc8]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	mov r3, sl
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803B7F4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B804
	b _0803B6BE
_0803B804:
	b _0803BC42
	.align 2, 0
_0803B808: .4byte 0x0805289C
_0803B80C:
	movs r4, #0
	mov sb, r4
	mov r5, sp
	adds r5, #0xa4
	str r5, [sp, #0xd0]
	mov r7, sp
	adds r7, #0xa6
	str r7, [sp, #0xd4]
_0803B81C:
	mov r0, sb
	lsls r0, r0, #1
	mov r8, r0
	ldr r2, [sp, #0xf8]
	add r2, r8
	ldrh r0, [r2]
	adds r0, #4
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xfc
	ands r0, r1
	strh r0, [r2]
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r7, [sp, #0xec]
	add r7, sl
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _0803B978 @ =0x0805289C
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #9
	ldr r5, [sp, #0xa8]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r7]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803B944
	bl sub_08007604
	cmp r0, #0
	bne _0803B944
	bl sub_08007544
	cmp r0, #0
	bne _0803B944
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803B944
	ldr r0, [r7]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xd0]
	ldr r3, [sp, #0xd4]
	bl sub_08005FC4
	ldr r0, [r7]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, [sp, #0xfc]
	add r6, r8
	ldr r3, [sp, #0x100]
	add r3, r8
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r1, [sp, #0x104]
	add r1, r8
	strh r0, [r1]
	ldr r0, [r7]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r3, [sp, #0xd0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r2, [sp, #0xd4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xd0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xd4]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803B944:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803B954
	b _0803B81C
_0803B954:
	ldr r0, _0803B97C @ =gUnknown_03000076
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldr r3, [sp, #0xf8]
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _0803B966
	b _0803BC42
_0803B966:
	ldr r1, _0803B980 @ =gUnknown_03000074
	movs r0, #2
	strh r0, [r1]
	movs r0, #0x8e
	bl StopSE
	movs r4, #1
	str r4, [sp, #0xb8]
	b _0803BC42
	.align 2, 0
_0803B978: .4byte 0x0805289C
_0803B97C: .4byte gUnknown_03000076
_0803B980: .4byte gUnknown_03000074
_0803B984:
	movs r5, #0
	mov sb, r5
	mov r7, sp
	adds r7, #0xa4
	str r7, [sp, #0xd8]
	mov r0, sp
	adds r0, #0xa6
	str r0, [sp, #0xdc]
_0803B994:
	mov r1, sb
	lsls r1, r1, #2
	mov sl, r1
	ldr r2, [sp, #0xec]
	add r2, sl
	mov r8, r2
	mov r3, sb
	lsls r7, r3, #1
	ldr r4, [sp, #0xf8]
	adds r2, r4, r7
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _0803BAF4 @ =0x0805289C
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #9
	ldr r4, [sp, #0xa8]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	mov r5, r8
	str r0, [r5]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803BAF4 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BAB6
	bl sub_08007604
	cmp r0, #0
	bne _0803BAB6
	bl sub_08007544
	cmp r0, #0
	bne _0803BAB6
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BAB6
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xdc]
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r7
	ldr r1, [sp, #0x100]
	adds r3, r1, r7
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r7
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xd8]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xdc]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xd8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xdc]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803BAB6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BAC6
	b _0803B994
_0803BAC6:
	ldr r2, _0803BAF8 @ =gUnknown_03000076
	ldrh r1, [r2]
	lsls r1, r1, #2
	ldr r3, [sp, #0xf4]
	adds r1, r3, r1
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	movs r2, #0x14
	rsbs r2, r2, #0
	cmp r0, r2
	bgt _0803BAE8
	b _0803BC42
_0803BAE8:
	str r2, [r1]
	ldr r1, _0803BAFC @ =gUnknown_03000074
	movs r0, #3
	strh r0, [r1]
	b _0803BC42
	.align 2, 0
_0803BAF4: .4byte 0x0805289C
_0803BAF8: .4byte gUnknown_03000076
_0803BAFC: .4byte gUnknown_03000074
_0803BB00:
	movs r4, #0
	mov sb, r4
	mov r5, sp
	adds r5, #0xa4
	str r5, [sp, #0xe0]
	mov r7, sp
	adds r7, #0xa6
	str r7, [sp, #0xe4]
_0803BB10:
	mov r0, sb
	lsls r0, r0, #2
	mov sl, r0
	ldr r1, [sp, #0xec]
	add r1, sl
	mov r8, r1
	mov r2, sb
	lsls r7, r2, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r7
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803BE18 @ =0x0805289C
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #9
	ldr r3, [sp, #0xa8]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	mov r4, r8
	str r0, [r4]
	ldr r4, [sp, #0xf0]
	add r4, sl
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r5, _0803BE18 @ =0x0805289C
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BC32
	bl sub_08007604
	cmp r0, #0
	bne _0803BC32
	bl sub_08007544
	cmp r0, #0
	bne _0803BC32
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BC32
	mov r5, r8
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0xe0]
	ldr r3, [sp, #0xe4]
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	mov r5, sb
	adds r5, #6
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp, #0xfc]
	adds r6, r0, r7
	ldr r1, [sp, #0x100]
	adds r3, r1, r7
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r7
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	adds r4, r0, #0
	ldr r7, [sp, #0xe0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xe4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0xcc]
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
	ldr r1, [sp, #0xe0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xe4]
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldrh r3, [r6]
	str r4, [sp]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	bl sub_08004344
	adds r2, r0, #0
	ldr r1, [sp, #0xf4]
	add r1, sl
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
_0803BC32:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BC42
	b _0803BB10
_0803BC42:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803BC78
	bl sub_080074CC
	cmp r0, #0
	bne _0803BC78
	ldr r0, _0803BE1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BC78
	bl sub_08007578
	cmp r0, #0
	bne _0803BC78
	ldr r1, _0803BE20 @ =gUnknown_03000074
	ldrh r0, [r1]
	cmp r0, #5
	beq _0803BC78
	b _0803B658
_0803BC78:
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	add r5, sp, #0xa4
	mov sl, r5
	movs r7, #0xa6
	add r7, sp
	mov r8, r7
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0xe8]
_0803BC90:
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	adds r1, r1, r2
	str r1, [sp, #0xac]
	ldr r3, _0803BE24 @ =0xFFFFFE00
	adds r2, r2, r3
	str r2, [sp, #0xb0]
	movs r4, #0
	mov sb, r4
_0803BCA2:
	mov r5, sb
	lsls r7, r5, #2
	ldr r0, [sp, #0xec]
	adds r5, r0, r7
	mov r1, sb
	lsls r6, r1, #1
	ldr r3, [sp, #0xf8]
	adds r2, r3, r6
	ldrh r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0803BE18 @ =0x0805289C
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #9
	ldr r4, [sp, #0xa8]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [sp, #0xf0]
	adds r4, r0, r7
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r1, _0803BE18 @ =0x0805289C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	ldr r3, [sp, #0xa8]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	str r1, [r4]
	bl sub_08007510
	cmp r0, #0
	bne _0803BDB0
	bl sub_08007604
	cmp r0, #0
	bne _0803BDB0
	bl sub_08007544
	cmp r0, #0
	bne _0803BDB0
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803BDB0
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_08005FC4
	ldr r0, [r5]
	asrs r0, r0, #0xc
	ldr r1, [r4]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0xfc]
	adds r4, r0, r6
	ldr r1, [sp, #0x100]
	adds r3, r1, r6
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	movs r1, #6
	adds r2, r4, #0
	bl sub_08026C40
	ldr r2, [sp, #0x104]
	adds r1, r2, r6
	strh r0, [r1]
	mov r3, sl
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sb
	adds r2, #6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4]
	str r5, [sp]
	ldr r4, [sp, #0xe8]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
	adds r2, r0, #0
	ldr r0, [sp, #0xac]
	asrs r1, r0, #0xc
	ldr r3, [sp, #0xf4]
	adds r0, r3, r7
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	mov r4, sl
	movs r7, #0
	ldrsh r0, [r4, r7]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r5, [sp]
	ldr r4, [sp, #0xe8]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xc
	movs r3, #0
	bl sub_08004418
_0803BDB0:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _0803BDC0
	b _0803BCA2
_0803BDC0:
	bl WaitFrame
	bl sub_08007750
	cmp r0, #0
	bne _0803BDFA
	bl sub_080074CC
	cmp r0, #0
	bne _0803BDFA
	ldr r0, _0803BE1C @ =0x030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BDFA
	bl sub_08007578
	cmp r0, #0
	bne _0803BDFA
	ldr r5, [sp, #0xac]
	asrs r1, r5, #0xc
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803BDFA
	b _0803BC90
_0803BDFA:
	movs r0, #0x8e
	bl StopSE
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE18: .4byte 0x0805289C
_0803BE1C: .4byte 0x030063D8
_0803BE20: .4byte gUnknown_03000074
_0803BE24: .4byte 0xFFFFFE00

	thumb_func_start sub_0803BE28
sub_0803BE28: @ 0x0803BE28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0803BE34 @ =0x0300681C
	ldr r4, [r0]
	movs r5, #0
	b _0803BE40
	.align 2, 0
_0803BE34: .4byte 0x0300681C
_0803BE38:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #0
	bne _0803BE78
_0803BE40:
	adds r0, r4, #0
	bl IsThreadInList
	cmp r0, #0
	bne _0803BE38
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0803BE38
	cmp r5, #0
	bne _0803BE78
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0803BE80 @ =sub_0803B20C
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl CreateThread
_0803BE78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE80: .4byte sub_0803B20C

	thumb_func_start sub_0803BE84
sub_0803BE84: @ 0x0803BE84
	push {r4, lr}
	ldr r4, _0803BEA4 @ =0x0300681C
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_0803BE94:
	str r2, [r0, #8]
	adds r1, #1
	adds r0, #0x28
	cmp r1, #0
	beq _0803BE94
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEA4: .4byte 0x0300681C

	thumb_func_start sub_0803BEA8
sub_0803BEA8: @ 0x0803BEA8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BEB8 @ =0x0300681C
	ldr r4, [r0]
	movs r0, #0
_0803BEB0:
	adds r6, r0, #1
	adds r7, r4, #0
	adds r7, #0x28
	b _0803BEC0
	.align 2, 0
_0803BEB8: .4byte 0x0300681C
_0803BEBC:
	bl WaitFrame
_0803BEC0:
	adds r0, r4, #0
	bl IsThreadInList
	adds r5, r0, #0
	cmp r5, #0
	bne _0803BEBC
	adds r0, r6, #0
	adds r4, r7, #0
	cmp r0, #0
	beq _0803BEB0
	ldr r4, _0803BEE4 @ =0x0300681C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEE4: .4byte 0x0300681C
