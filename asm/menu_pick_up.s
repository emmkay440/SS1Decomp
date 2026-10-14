	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08040120
sub_08040120: @ 0x08040120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	ldrb r0, [r6, #2]
	cmp r0, #2
	beq _08040158
	cmp r0, #2
	bgt _08040140
	cmp r0, #1
	beq _0804014A
	b _08040174
_08040140:
	cmp r0, #3
	beq _08040168
	cmp r0, #6
	beq _08040170
	b _08040174
_0804014A:
	ldr r0, _08040154 @ =gMenuWeapons
	ldr r7, [r0]
	movs r1, #1
	mov sl, r1
	b _08040174
	.align 2, 0
_08040154: .4byte gMenuWeapons
_08040158:
	ldr r0, _08040164 @ =gMenuEquipment
	ldr r7, [r0]
	movs r0, #1
	mov sl, r0
	b _08040174
	.align 2, 0
_08040164: .4byte gMenuEquipment
_08040168:
	ldr r0, _0804016C @ =gMenuInventory
	b _08040172
	.align 2, 0
_0804016C: .4byte gMenuInventory
_08040170:
	ldr r0, _080401DC @ =gUnknown_030004A4
_08040172:
	ldr r7, [r0]
_08040174:
	ldrb r2, [r6, #2]
	cmp r2, #5
	bne _0804017C
	b _080402A0
_0804017C:
	ldrh r1, [r6, #2]
	ldr r0, _080401E0 @ =0x00000302
	cmp r1, r0
	bne _08040186
	b _080402A0
_08040186:
	cmp r2, #4
	bne _0804018C
	b _08040288
_0804018C:
	cmp r2, #6
	bne _0804023C
	ldr r0, _080401E4 @ =gMenuPage
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #5
	beq _0804023C
	movs r5, #0
	ldr r0, _080401E8 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
	ldrb r1, [r6, #3]
	mov r8, r1
_080401A6:
	movs r3, #0
	adds r4, r0, #1
_080401AA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080401B8
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_080401B8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _080401AA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080401A6
	mov ip, r5
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #5
	beq _080401F0
	ldr r0, _080401EC @ =gUnknown_030004A8
	b _080401F2
	.align 2, 0
_080401DC: .4byte gUnknown_030004A4
_080401E0: .4byte 0x00000302
_080401E4: .4byte gMenuPage
_080401E8: .4byte gMenuInventory
_080401EC: .4byte gUnknown_030004A8
_080401F0:
	ldr r0, _08040238 @ =gUnknown_030004A4
_080401F2:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
_080401F8:
	movs r3, #0
	adds r4, r0, #1
_080401FC:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804020A
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_0804020A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080401FC
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080401F8
	mov r0, ip
	adds r4, r0, r5
	mov r1, r8
	lsls r0, r1, #2
	adds r0, r7, r0
	bl sub_08040DB0
	cmp r4, r0
	bhs _0804023C
	movs r0, #0x61
	bl PlaySE
	b _080402A0
	.align 2, 0
_08040238: .4byte gUnknown_030004A4
_0804023C:
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r2, r0, r7
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080402A0
	ldr r1, _08040268 @ =gMenuSelectedSlot
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, _0804026C @ =gMenuSelectedItem
	str r2, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040270
	movs r0, #0x63
	bl PlaySE
	b _08040284
	.align 2, 0
_08040268: .4byte gMenuSelectedSlot
_0804026C: .4byte gMenuSelectedItem
_08040270:
	mov r0, sl
	cmp r0, #0
	bne _0804027E
	movs r0, #0x5e
	bl PlaySE
	b _08040284
_0804027E:
	movs r0, #0x80
	bl PlaySE
_08040284:
	movs r0, #1
	b _080402A2
_08040288:
	ldrb r0, [r6, #3]
	ldr r1, _080402B0 @ =gUnknown_03000494
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _080402A0
	movs r0, #0
	strh r0, [r1]
	bl ApplyMenuChanges
_080402A0:
	movs r0, #0
_080402A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080402B0: .4byte gUnknown_03000494
