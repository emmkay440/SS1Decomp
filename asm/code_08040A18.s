	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start CanPutItemInSlot
CanPutItemInSlot: @ 0x08040A18
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl CanEquipItem
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r5, #2]
	subs r0, #1
	cmp r0, #5
	bhi _08040B24
	lsls r0, r0, #2
	ldr r1, _08040A3C @ =_08040A40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040A3C: .4byte _08040A40
_08040A40: @ jump table
	.4byte _08040A58 @ case 0
	.4byte _08040A70 @ case 1
	.4byte _08040A66 @ case 2
	.4byte _08040ADC @ case 3
	.4byte _08040A66 @ case 4
	.4byte _08040AFC @ case 5
_08040A58:
	ldr r0, [r4]
	ldr r1, _08040A6C @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x20
	bne _08040B24
	cmp r3, #0
	beq _08040B24
_08040A66:
	movs r0, #1
	b _08040B26
	.align 2, 0
_08040A6C: .4byte REG_SOUND3CNT_L
_08040A70:
	ldrb r0, [r5, #3]
	adds r2, r0, #0
	cmp r2, #0
	bne _08040A86
	ldr r0, [r4]
	ldr r1, _08040AD4 @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x40
	bne _08040A86
	cmp r3, #0
	bne _08040A66
_08040A86:
	cmp r2, #1
	bne _08040A98
	ldr r0, [r4]
	ldr r1, _08040AD4 @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x30
	bne _08040A98
	cmp r3, #0
	bne _08040A66
_08040A98:
	cmp r2, #2
	bne _08040AA6
	ldrh r1, [r4]
	ldr r0, _08040AD8 @ =0x00008070
	ands r0, r1
	cmp r0, #0x50
	beq _08040A66
_08040AA6:
	cmp r2, #3
	bne _08040B24
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08040B24
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	subs r0, #0x15
	cmp r0, #5
	bls _08040B24
	bl sub_08007544
	cmp r0, #0
	beq _08040A66
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	beq _08040B24
	b _08040A66
	.align 2, 0
_08040AD4: .4byte REG_SOUND3CNT_L
_08040AD8: .4byte 0x00008070
_08040ADC:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08040B24
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	subs r0, #0x15
	cmp r0, #5
	bls _08040B24
	adds r0, r4, #0
	bl sub_08014EB4
	cmp r0, #0
	beq _08040B24
	b _08040A66
_08040AFC:
	ldr r0, _08040B1C @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #2
	blt _08040B24
	cmp r0, #4
	bgt _08040B20
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08040B24
	ldrb r0, [r5, #3]
	cmp r0, #0xc
	bne _08040B24
	b _08040A66
	.align 2, 0
_08040B1C: .4byte gMenuPage
_08040B20:
	cmp r0, #5
	beq _08040A66
_08040B24:
	movs r0, #0
_08040B26:
	pop {r4, r5}
	pop {r1}
	bx r1
