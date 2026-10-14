	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start CanEquipItem
CanEquipItem: @ 0x08010064
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08010088 @ =gPlayerStats
	cmp r0, #0
	bne _08010072
	b _080101E4
_08010072:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bne _0801007E
	b _08010180
_0801007E:
	cmp r0, #3
	bgt _0801008C
	cmp r0, #2
	beq _0801009A
	b _080101D2
	.align 2, 0
_08010088: .4byte gPlayerStats
_0801008C:
	cmp r0, #4
	bne _08010092
	b _080101B8
_08010092:
	cmp r0, #5
	bne _08010098
	b _080101C8
_08010098:
	b _080101D2
_0801009A:
	lsls r0, r1, #5
	cmp r0, #0
	bge _080100A2
	b _080101E4
_080100A2:
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r4, r0, #0
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r6, [r0]
	subs r1, #8
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r8, r0
	bl GetPlayerClass
	cmp r0, #1
	beq _0801012C
	cmp r0, #1
	bgt _080100D4
	cmp r0, #0
	beq _080100DE
	b _08010176
_080100D4:
	cmp r0, #2
	beq _08010134
	cmp r0, #3
	beq _08010152
	b _08010176
_080100DE:
	ldr r1, _080100F4 @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bhi _08010176
	lsls r0, r0, #2
	ldr r1, _080100F8 @ =_080100FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080100F4: .4byte 0x00000159
_080100F8: .4byte _080100FC
_080100FC: @ jump table
	.4byte _08010170 @ case 0
	.4byte _08010170 @ case 1
	.4byte _08010114 @ case 2
	.4byte _08010114 @ case 3
	.4byte _08010120 @ case 4
	.4byte _08010120 @ case 5
_08010114:
	ldr r0, _0801011C @ =gPlayerStats
	adds r0, #0x4c
	b _08010174
	.align 2, 0
_0801011C: .4byte gPlayerStats
_08010120:
	ldr r0, _08010128 @ =gPlayerStats
	adds r0, #0x48
	b _08010174
	.align 2, 0
_08010128: .4byte gPlayerStats
_0801012C:
	movs r0, #0
	mov r8, r0
	movs r5, #0
	b _08010176
_08010134:
	ldr r1, _08010148 @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	blt _08010176
	cmp r0, #4
	ble _0801014C
	cmp r0, #9
	beq _08010170
	b _08010176
	.align 2, 0
_08010148: .4byte 0x00000159
_0801014C:
	adds r0, r7, #0
	adds r0, #0x48
	b _08010174
_08010152:
	ldr r1, _0801016C @ =0x00000159
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #5
	blt _08010176
	cmp r0, #6
	ble _08010170
	cmp r0, #7
	bne _08010176
	adds r0, r7, #0
	adds r0, #0x48
	b _08010174
	.align 2, 0
_0801016C: .4byte 0x00000159
_08010170:
	ldr r0, _0801017C @ =gPlayerStats
	adds r0, #0x44
_08010174:
	ldrb r5, [r0]
_08010176:
	cmp r5, r8
	bhs _080101D6
	b _080101E4
	.align 2, 0
_0801017C: .4byte gPlayerStats
_08010180:
	lsls r0, r1, #5
	cmp r0, #0
	blt _080101E4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
_0801018E:
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	adds r1, #0xf8
	ldrb r6, [r1]
	adds r0, #0xf1
	ldrb r5, [r0]
	ldr r4, _080101B4 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	cmp r5, r0
	ble _080101D6
	b _080101E4
	.align 2, 0
_080101B4: .4byte gPlayers
_080101B8:
	lsls r0, r1, #5
	cmp r0, #0
	blt _080101E4
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	b _0801018E
_080101C8:
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _080101E4
	movs r6, #0xf
	b _080101D6
_080101D2:
	movs r0, #1
	b _080101E6
_080101D6:
	ldrh r0, [r7, #0x20]
	lsrs r0, r0, #2
	asrs r6, r0
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	bne _080101E6
_080101E4:
	movs r0, #0
_080101E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
