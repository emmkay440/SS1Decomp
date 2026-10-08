	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08014CB8
sub_08014CB8: @ 0x08014CB8
	push {r4, lr}
	ldr r4, _08014CE8 @ =0x03006380
	ldr r0, _08014CEC @ =sub_08013264
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	bl Alloc
	str r0, [r4, #0x20]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x51
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl CreateThread
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014CE8: .4byte 0x03006380
_08014CEC: .4byte sub_08013264

	thumb_func_start sub_08014CF0
sub_08014CF0: @ 0x08014CF0
	adds r3, r0, #0
	ldr r0, _08014D14 @ =gPlayerStats
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0x88
_08014CFA:
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08014D18
	ldrh r0, [r1]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, r3
	bne _08014D18
	adds r0, r2, #0
	b _08014D24
	.align 2, 0
_08014D14: .4byte gPlayerStats
_08014D18:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x18
	bls _08014CFA
	movs r0, #1
	rsbs r0, r0, #0
_08014D24:
	bx lr
	.align 2, 0

	thumb_func_start sub_08014D28
sub_08014D28: @ 0x08014D28
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08014D48 @ =gFieldItems
	ldr r1, [r0]
	movs r2, #0
	movs r4, #1
_08014D36:
	ldr r0, [r1, #0xc]
	ands r0, r4
	cmp r0, #0
	beq _08014D4C
	ldr r0, [r1, #0x10]
	cmp r0, r3
	bne _08014D4C
	adds r0, r1, #0
	b _08014D56
	.align 2, 0
_08014D48: .4byte gFieldItems
_08014D4C:
	adds r2, #1
	adds r1, #0x1c
	cmp r2, #0xe
	bls _08014D36
	movs r0, #0
_08014D56:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08014D5C
sub_08014D5C: @ 0x08014D5C
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08014D84 @ =gFieldItems
	ldr r2, [r0]
	movs r3, #0
	movs r5, #3
_08014D6C:
	ldr r0, [r2, #0xc]
	ands r0, r5
	cmp r0, #1
	beq _08014D7A
	ldr r0, [r2, #0x14]
	cmp r0, r4
	bne _08014D88
_08014D7A:
	ldr r0, [r2, #0x10]
	cmp r0, r1
	bne _08014D88
	adds r0, r2, #0
	b _08014D92
	.align 2, 0
_08014D84: .4byte gFieldItems
_08014D88:
	adds r3, #1
	adds r2, #0x1c
	cmp r3, #0xe
	bls _08014D6C
	movs r0, #0
_08014D92:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08014D98
sub_08014D98: @ 0x08014D98
	adds r1, r0, #0
	cmp r1, #0
	beq _08014DD2
	ldr r2, _08014DC0 @ =0x00000159
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	bne _08014DD2
	adds r2, #7
	adds r0, r1, r2
	ldr r0, [r0]
	subs r0, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	beq _08014DC4
	cmp r0, #6
	beq _08014DC8
	b _08014DCA
	.align 2, 0
_08014DC0: .4byte 0x00000159
_08014DC4:
	movs r0, #6
	b _08014DCA
_08014DC8:
	movs r0, #5
_08014DCA:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08014DD4
_08014DD2:
	movs r0, #0
_08014DD4:
	bx lr
	.align 2, 0

	thumb_func_start sub_08014DD8
sub_08014DD8: @ 0x08014DD8
	movs r3, #0
	movs r2, #0
	ldr r0, _08014E04 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x88
_08014DE2:
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _08014DF8
	ldrh r0, [r1]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0
	bne _08014DF8
	adds r3, #1
_08014DF8:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x18
	bls _08014DE2
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08014E04: .4byte gPlayerStats

	thumb_func_start sub_08014E08
sub_08014E08: @ 0x08014E08
	movs r3, #0
	movs r2, #0
	ldr r0, _08014E34 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x88
_08014E12:
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _08014E28
	ldrh r0, [r1]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #1
	bne _08014E28
	adds r3, #1
_08014E28:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x18
	bls _08014E12
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08014E34: .4byte gPlayerStats

	thumb_func_start sub_08014E38
sub_08014E38: @ 0x08014E38
	movs r3, #0
	movs r2, #0
	ldr r0, _08014E64 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x88
_08014E42:
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bne _08014E58
	ldrh r0, [r1]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #2
	bne _08014E58
	adds r3, #1
_08014E58:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x18
	bls _08014E42
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08014E64: .4byte gPlayerStats

	thumb_func_start sub_08014E68
sub_08014E68: @ 0x08014E68
	cmp r0, #1
	beq _08014E88
	cmp r0, #1
	blo _08014E76
	cmp r0, #2
	beq _08014E98
	b _08014EAE
_08014E76:
	ldr r0, _08014E84 @ =gPlayerStats
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xee
	lsls r0, r0, #1
	b _08014EA2
	.align 2, 0
_08014E84: .4byte gPlayerStats
_08014E88:
	ldr r0, _08014E94 @ =gPlayerStats
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x83
	lsls r0, r0, #2
	b _08014EA2
	.align 2, 0
_08014E94: .4byte gPlayerStats
_08014E98:
	ldr r0, _08014EB0 @ =gPlayerStats
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x8f
	lsls r0, r0, #2
_08014EA2:
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08014EAE:
	bx lr
	.align 2, 0
_08014EB0: .4byte gPlayerStats

	thumb_func_start sub_08014EB4
sub_08014EB4: @ 0x08014EB4
	push {lr}
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08014EDA
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0xc
	bne _08014EDE
_08014EDA:
	movs r0, #0
	b _08014EE0
_08014EDE:
	movs r0, #1
_08014EE0:
	pop {r1}
	bx r1

	thumb_func_start sub_08014EE4
sub_08014EE4: @ 0x08014EE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bge _08014EEE
	movs r4, #0
_08014EEE:
	lsls r1, r4, #2
	ldr r0, _08014F28 @ =0x03003D98
	adds r1, r1, r0
	movs r5, #1
	rsbs r5, r5, #0
	adds r3, r4, #0
	cmp r4, #0x18
	bgt _08014F20
	ldr r6, _08014F2C @ =0x000186A0
_08014F00:
	ldr r2, [r1]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08014F18
	lsrs r0, r2, #0xf
	cmp r5, r0
	bge _08014F18
	cmp r0, r6
	beq _08014F18
	adds r4, r3, #0
	adds r5, r0, #0
_08014F18:
	adds r3, #1
	adds r1, #4
	cmp r3, #0x18
	ble _08014F00
_08014F20:
	cmp r5, #0
	blt _08014F30
	adds r0, r4, #0
	b _08014F34
	.align 2, 0
_08014F28: .4byte 0x03003D98
_08014F2C: .4byte 0x000186A0
_08014F30:
	movs r0, #1
	rsbs r0, r0, #0
_08014F34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014F3C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08014F40
sub_08014F40: @ 0x08014F40
	push {r4, r5, lr}
	movs r3, #0
	cmp r0, #0
	beq _08014F7A
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08014F52:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _08014F6E
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08014F6E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08014F52
_08014F7A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
_08014F84:
	.byte 0x00, 0x28, 0x10, 0xD0, 0x00, 0x21, 0x02, 0x1C, 0xF2, 0x32, 0x08, 0x04
	.byte 0x01, 0x14, 0x50, 0x18, 0x00, 0x78, 0x12, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x06, 0xE0, 0x48, 0x1C
	.byte 0x00, 0x04, 0x01, 0x0C, 0x00, 0x14, 0x02, 0x28, 0xF1, 0xDD, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08014FB0
sub_08014FB0: @ 0x08014FB0
	push {r4, r5, lr}
	movs r3, #0
	cmp r0, #0
	beq _08014FEA
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08014FC2:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08014FDE
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08014FDE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08014FC2
_08014FEA:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08014FF4
sub_08014FF4: @ 0x08014FF4
	push {r4, r5, lr}
	movs r3, #0
	cmp r0, #0
	beq _0801502E
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08015006:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _08015022
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08015022:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08015006
_0801502E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08015038
sub_08015038: @ 0x08015038
	push {r4, r5, lr}
	movs r3, #0
	cmp r0, #0
	beq _08015072
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_0801504A:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08015066
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08015066:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801504A
_08015072:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801507C
sub_0801507C: @ 0x0801507C
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r3, #0
	cmp r0, #0
	beq _080150BA
	movs r1, #0
	adds r5, r0, #0
	adds r5, #0xf2
	adds r4, r0, #0
	adds r4, #0xf5
_08015092:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080150AE
	adds r0, r4, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080150AE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08015092
_080150BA:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080150D4
sub_080150D4: @ 0x080150D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801513C @ =0x000900E4
	bl GetDataRecord
	mov r8, r0
	movs r6, #0
	mov ip, r6
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0801515E
	ldr r2, _08015140 @ =gPlayerStats
	mov sb, r2
	mov r4, r8
	adds r4, #0xa
	mov sl, r4
_080150FA:
	movs r7, #0
	ldrh r2, [r4]
	cmp r2, #0
	beq _0801512E
	mov r3, sb
	ldrh r1, [r3]
	cmp r1, r2
	bne _08015128
	ldr r5, _08015140 @ =gPlayerStats
	lsls r1, r6, #1
	mov r2, sl
	adds r3, r1, r2
_08015112:
	adds r3, #2
	adds r4, #2
	adds r6, #1
	adds r5, #2
	adds r7, #1
	ldrh r2, [r3]
	cmp r2, #0
	beq _0801512E
	ldrh r1, [r5]
	cmp r1, r2
	beq _08015112
_08015128:
	ldrh r1, [r4]
	cmp r1, #0
	bne _08015144
_0801512E:
	lsls r1, r7, #1
	add r1, sb
	ldrh r1, [r1]
	cmp r1, #0
	bne _08015148
	mov r0, ip
	b _0801515E
	.align 2, 0
_0801513C: .4byte 0x000900E4
_08015140: .4byte gPlayerStats
_08015144:
	adds r4, #2
	adds r6, #1
_08015148:
	ldrh r1, [r4]
	cmp r1, #0
	bne _08015144
	adds r4, #2
	adds r6, #1
	movs r3, #1
	add ip, r3
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _080150FA
_0801515E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801516C
sub_0801516C: @ 0x0801516C
	push {r4, r5, r6, lr}
	ldr r5, _080151B0 @ =gPlayerStats
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _080151B4 @ =gPlayers
	adds r6, r1, r0
	ldr r2, _080151B8 @ =0x080FB750
	ldrh r1, [r5, #0x20]
	lsrs r1, r1, #2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x24
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08015224
	cmp r0, #1
	bgt _080151BC
	cmp r0, #0
	beq _080151C6
	b _0801523E
	.align 2, 0
_080151B0: .4byte gPlayerStats
_080151B4: .4byte gPlayers
_080151B8: .4byte 0x080FB750
_080151BC:
	cmp r0, #2
	beq _080151FC
	cmp r0, #3
	beq _080151E8
	b _0801523E
_080151C6:
	ldr r0, _080151DC @ =0x080FB7F0
	movs r1, #0
	bl sub_080141F8
	ldr r0, _080151E0 @ =0x080FB7F4
	movs r1, #1
	bl sub_080141F8
	ldr r0, _080151E4 @ =0x080FB7FC
	movs r1, #2
	b _08015208
	.align 2, 0
_080151DC: .4byte 0x080FB7F0
_080151E0: .4byte 0x080FB7F4
_080151E4: .4byte 0x080FB7FC
_080151E8:
	ldr r0, _080151F4 @ =0x080FB7F4
	movs r1, #0
	bl sub_080141F8
	ldr r0, _080151F8 @ =0x080FB800
	b _08015206
	.align 2, 0
_080151F4: .4byte 0x080FB7F4
_080151F8: .4byte 0x080FB800
_080151FC:
	ldr r0, _08015218 @ =0x080FB7F8
	movs r1, #0
	bl sub_080141F8
	ldr r0, _0801521C @ =0x080FB7FC
_08015206:
	movs r1, #1
_08015208:
	bl sub_080141F8
	ldr r0, _08015220 @ =0x080FB848
	ldr r1, [r0]
	movs r0, #0
	bl SetInventorySlot
	b _0801523E
	.align 2, 0
_08015218: .4byte 0x080FB7F8
_0801521C: .4byte 0x080FB7FC
_08015220: .4byte 0x080FB848
_08015224:
	ldr r0, _08015254 @ =0x080FB808
	movs r1, #0
	bl sub_080141F8
	ldr r0, _08015258 @ =0x080FB80C
	movs r1, #1
	bl sub_080141F8
	ldr r0, _0801525C @ =0x080FB84C
	ldr r1, [r0]
	movs r0, #0
	bl SetInventorySlot
_0801523E:
	bl sub_080150D4
	cmp r0, #0xe
	bls _08015248
	b _08015400
_08015248:
	lsls r0, r0, #2
	ldr r1, _08015260 @ =_08015264
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015254: .4byte 0x080FB808
_08015258: .4byte 0x080FB80C
_0801525C: .4byte 0x080FB84C
_08015260: .4byte _08015264
_08015264: @ jump table
	.4byte _080152A0 @ case 0
	.4byte _080152C0 @ case 1
	.4byte _080152E4 @ case 2
	.4byte _08015308 @ case 3
	.4byte _08015328 @ case 4
	.4byte _08015348 @ case 5
	.4byte _08015354 @ case 6
	.4byte _08015360 @ case 7
	.4byte _0801536C @ case 8
	.4byte _08015380 @ case 9
	.4byte _08015388 @ case 10
	.4byte _080153A4 @ case 11
	.4byte _080153B6 @ case 12
	.4byte _080153CA @ case 13
	.4byte _080153DE @ case 14
_080152A0:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080152AC
	b _080153F0
_080152AC:
	ldr r0, _080152BC @ =0x080FB810
	ldr r0, [r0]
	bl SetArmor
	ldrh r0, [r5, #0x24]
	adds r0, #2
	strh r0, [r5, #0x24]
	b _08015408
	.align 2, 0
_080152BC: .4byte 0x080FB810
_080152C0:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080152CE
	b _080153F0
_080152CE:
	ldr r0, _080152E0 @ =0x080FB814
	ldr r0, [r0]
	bl SetArmor
	ldrh r0, [r5, #0x28]
	adds r0, #3
	strh r0, [r5, #0x28]
	b _08015408
	.align 2, 0
_080152E0: .4byte 0x080FB814
_080152E4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080152F2
	b _080153F0
_080152F2:
	ldr r0, _08015304 @ =0x080FB818
	ldr r0, [r0]
	bl SetArmor
	ldrh r0, [r5, #0x26]
	adds r0, #5
	strh r0, [r5, #0x26]
	b _08015408
	.align 2, 0
_08015304: .4byte 0x080FB818
_08015308:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080153F0
	ldr r0, _08015324 @ =0x080FB81C
	ldr r0, [r0]
	bl SetArmor
	ldrh r0, [r5, #0x2a]
	adds r0, #5
	strh r0, [r5, #0x2a]
	b _08015408
	.align 2, 0
_08015324: .4byte 0x080FB81C
_08015328:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080153F0
	ldr r0, _08015344 @ =0x080FB820
	ldr r0, [r0]
	bl SetArmor
	ldrh r0, [r5, #0x24]
	adds r0, #5
	strh r0, [r5, #0x24]
	b _08015408
	.align 2, 0
_08015344: .4byte 0x080FB820
_08015348:
	ldr r0, _08015350 @ =0x080FB850
	bl AddItemToInventory
	b _080153F0
	.align 2, 0
_08015350: .4byte 0x080FB850
_08015354:
	ldr r0, _0801535C @ =0x080FB854
	bl AddItemToInventory
	b _080153F0
	.align 2, 0
_0801535C: .4byte 0x080FB854
_08015360:
	ldr r0, _08015368 @ =0x080FB858
	bl AddItemToInventory
	b _080153F0
	.align 2, 0
_08015368: .4byte 0x080FB858
_0801536C:
	ldr r4, _0801537C @ =0x080FB86C
_0801536E:
	adds r0, r4, #0
	bl AddItemToInventory
	adds r0, r4, #0
	bl AddItemToInventory
	b _080153F0
	.align 2, 0
_0801537C: .4byte 0x080FB86C
_08015380:
	ldr r4, _08015384 @ =0x080FB85C
	b _0801536E
	.align 2, 0
_08015384: .4byte 0x080FB85C
_08015388:
	ldr r0, _08015398 @ =0x080FB860
	bl AddItemToInventory
	ldr r0, _0801539C @ =0x080FB864
	bl AddItemToInventory
	ldr r4, _080153A0 @ =0x080FB868
	b _0801536E
	.align 2, 0
_08015398: .4byte 0x080FB860
_0801539C: .4byte 0x080FB864
_080153A0: .4byte 0x080FB868
_080153A4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080153F0
	ldrh r0, [r5, #0x24]
	adds r0, #0xa
	strh r0, [r5, #0x24]
	b _080153F0
_080153B6:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080153F0
	ldrh r0, [r5, #0x28]
	adds r0, #0xa
	strh r0, [r5, #0x28]
	b _080153F0
_080153CA:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080153F0
	ldrh r0, [r5, #0x2a]
	adds r0, #0xa
	strh r0, [r5, #0x2a]
	b _080153F0
_080153DE:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080153F0
	ldrh r0, [r5, #0x26]
	adds r0, #0xa
	strh r0, [r5, #0x26]
_080153F0:
	ldr r0, _080153FC @ =0x080FB804
	ldr r0, [r0]
	bl SetArmor
	b _08015408
	.align 2, 0
_080153FC: .4byte 0x080FB804
_08015400:
	ldr r0, _0801546C @ =0x080FB804
	ldr r0, [r0]
	bl SetArmor
_08015408:
	adds r1, r5, #0
	adds r1, #0x6c
	movs r0, #0
	strh r0, [r1]
	bl sub_080140AC
	bl sub_08014114
	bl sub_08014160
	ldr r0, _08015470 @ =0x080FB86C
	bl AddItemToInventory
	ldr r0, _08015474 @ =0x080FB870
	bl AddItemToInventory
	adds r0, r6, #0
	bl sub_0801574C
	adds r0, r6, #0
	bl sub_08016270
	adds r2, r6, #0
	adds r2, #0x78
	adds r0, r6, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _0801544C
	strh r3, [r2]
_0801544C:
	adds r2, r6, #0
	adds r2, #0x7a
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _08015464
	strh r3, [r2]
_08015464:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801546C: .4byte 0x080FB804
_08015470: .4byte 0x080FB86C
_08015474: .4byte 0x080FB870

	thumb_func_start sub_08015478
sub_08015478: @ 0x08015478
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r1, r0, r1
	ldr r0, _080154EC @ =gPlayers
	adds r5, r1, r0
	bl sub_08007670
	cmp r0, #0
	beq _08015494
	b _0801573A
_08015494:
	movs r0, #0
	mov r8, r0
_08015498:
	ldr r0, _080154F0 @ =0x03000054
	ldr r1, _080154F4 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r8
	lsls r6, r1, #1
	cmp r2, r0
	beq _08015530
	adds r1, r5, #0
	adds r1, #0x24
	adds r2, r1, r6
	ldrh r0, [r2]
	subs r0, #1
	movs r4, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r7, r1, #0
	cmp r3, #0
	beq _080154C6
	ldrh r0, [r5, #0xc]
	cmp r0, #8
	bne _0801552A
_080154C6:
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #1
	blt _080154F8
	cmp r0, #2
	ble _080154FE
	cmp r0, #6
	bgt _080154F8
	cmp r0, #5
	blt _080154F8
	bl sub_08007510
	cmp r0, #0
	beq _080154FE
	bl sub_08046104
	b _080154FE
	.align 2, 0
_080154EC: .4byte gPlayers
_080154F0: .4byte 0x03000054
_080154F4: .4byte gFrameCounter
_080154F8:
	movs r0, #0x73
	bl StopSE
_080154FE:
	movs r0, #0x73
	bl StopSE
	movs r0, #0x74
	bl StopBGM
	adds r0, r7, r6
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	strh r1, [r0]
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	movs r1, #0x1c
	bl bzero
	b _08015530
_0801552A:
	cmp r3, #0
	bge _08015530
	strh r4, [r2]
_08015530:
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #8
	bls _0801553E
	b _08015722
_0801553E:
	lsls r0, r0, #2
	ldr r1, _08015548 @ =_0801554C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015548: .4byte _0801554C
_0801554C: @ jump table
	.4byte _08015570 @ case 0
	.4byte _080155F8 @ case 1
	.4byte _080156BE @ case 2
	.4byte _080156CC @ case 3
	.4byte _080156DC @ case 4
	.4byte _080156DC @ case 5
	.4byte _08015722 @ case 6
	.4byte _08015722 @ case 7
	.4byte _08015710 @ case 8
_08015570:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _08015578
	b _08015722
_08015578:
	bl sub_08007670
	cmp r0, #0
	beq _08015582
	b _08015722
_08015582:
	ldr r0, _080155F0 @ =0x03000054
	ldr r1, _080155F4 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _08015590
	b _08015722
_08015590:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	beq _0801559C
	b _08015722
_0801559C:
	bl sub_080077C0
	cmp r0, #0
	bne _0801562C
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	ldrb r6, [r0]
	cmp r6, #0
	beq _080155B2
	b _08015722
_080155B2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080155CA
	movs r1, #1
_080155CA:
	adds r4, r5, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	bne _0801567E
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080156A6
	cmp r0, #2
	ble _08015692
	b _08015698
	.align 2, 0
_080155F0: .4byte 0x03000054
_080155F4: .4byte gFrameCounter
_080155F8:
	ldrh r0, [r5, #0xc]
	cmp r0, #9
	bne _08015600
	b _08015722
_08015600:
	bl sub_08007670
	cmp r0, #0
	beq _0801560A
	b _08015722
_0801560A:
	ldr r0, _0801563C @ =0x03000054
	ldr r1, _08015640 @ =gFrameCounter
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _08015618
	b _08015722
_08015618:
	bl sub_080271D0
	adds r4, r0, #0
	cmp r4, #0
	beq _08015624
	b _08015722
_08015624:
	bl sub_080077C0
	cmp r0, #0
	beq _08015644
_0801562C:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	strh r4, [r0]
	ldr r0, [r5, #0x1c]
	adds r0, r6, r0
	strh r4, [r0]
	b _08015722
	.align 2, 0
_0801563C: .4byte 0x03000054
_08015640: .4byte gFrameCounter
_08015644:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r6, #0x7f
	ands r6, r0
	cmp r6, #0
	bne _08015722
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801566C
	movs r1, #2
_0801566C:
	adds r4, r5, #0
	adds r4, #0x56
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	bl sub_08007544
	cmp r0, #0
	beq _08015682
_0801567E:
	strh r6, [r4]
	b _08015722
_08015682:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080156A6
	cmp r0, #2
	bgt _08015698
_08015692:
	cmp r0, #1
	beq _0801569E
	b _080156B6
_08015698:
	cmp r0, #3
	beq _080156AE
	b _080156B6
_0801569E:
	movs r0, #0x46
	bl PlaySE
	b _08015722
_080156A6:
	movs r0, #0x9d
	bl PlaySE
	b _08015722
_080156AE:
	movs r0, #0x9e
	bl PlaySE
	b _08015722
_080156B6:
	movs r0, #0x45
	bl PlaySE
	b _08015722
_080156BE:
	ldr r0, _080156C8 @ =gPlayerStats
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	b _08015720
	.align 2, 0
_080156C8: .4byte gPlayerStats
_080156CC:
	ldr r0, _080156D8 @ =gPlayerStats
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	b _08015720
	.align 2, 0
_080156D8: .4byte gPlayerStats
_080156DC:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08015722
	ldr r0, [r5, #0x20]
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #0xa]
	ldrh r2, [r5, #0x36]
	adds r0, r0, r2
	strh r0, [r5, #0x36]
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5, #0x38]
	adds r0, r0, r2
	strh r0, [r5, #0x38]
	ldrh r0, [r1, #0xe]
	ldrh r1, [r5, #0x3a]
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	b _08015722
_08015710:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08015722
	movs r0, #6
_08015720:
	strh r0, [r5, #0x34]
_08015722:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bhi _08015732
	b _08015498
_08015732:
	ldr r0, _08015744 @ =0x03000054
	ldr r1, _08015748 @ =gFrameCounter
	ldr r1, [r1]
	str r1, [r0]
_0801573A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015744: .4byte 0x03000054
_08015748: .4byte gFrameCounter

	thumb_func_start sub_0801574C
sub_0801574C: @ 0x0801574C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _08015778 @ =gPlayerStats
	mov sl, r0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	mov r2, sl
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801577C
	movs r5, #0
	b _08015792
	.align 2, 0
_08015778: .4byte gPlayerStats
_0801577C:
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r5, r0, #0
_08015792:
	ldr r0, _080157A4 @ =gPlayerStats
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080157A8
	movs r7, #0
	b _080157BE
	.align 2, 0
_080157A4: .4byte gPlayerStats
_080157A8:
	mov r0, sl
	adds r0, #0x80
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r7, r0, #0
_080157BE:
	ldr r0, _080157D0 @ =gPlayerStats
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080157D4
	movs r3, #0
	mov r8, r3
	b _080157EA
	.align 2, 0
_080157D0: .4byte gPlayerStats
_080157D4:
	mov r0, sl
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	mov r8, r0
_080157EA:
	ldr r0, _080157FC @ =gPlayerStats
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08015800
	movs r6, #0
	mov sb, r6
	b _08015816
	.align 2, 0
_080157FC: .4byte gPlayerStats
_08015800:
	mov r0, sl
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
_08015816:
	ldr r0, _0801585C @ =gPlayerStats
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x2c
	mov r1, ip
	adds r1, #0x24
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
	cmp r5, #0
	bne _08015834
	b _08015AD6
_08015834:
	mov r0, sl
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x70
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08015860
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r3, r0, #0
	b _08015862
	.align 2, 0
_0801585C: .4byte gPlayerStats
_08015860:
	movs r3, #0
_08015862:
	movs r2, #0
_08015864:
	ldr r1, _0801587C @ =0x00000153
	adds r0, r5, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _08015872
	b _0801598E
_08015872:
	lsls r0, r0, #2
	ldr r1, _08015880 @ =_08015884
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801587C: .4byte 0x00000153
_08015880: .4byte _08015884
_08015884: @ jump table
	.4byte _0801598E @ case 0
	.4byte _080158E0 @ case 1
	.4byte _080158F6 @ case 2
	.4byte _0801590C @ case 3
	.4byte _0801598E @ case 4
	.4byte _08015938 @ case 5
	.4byte _0801594E @ case 6
	.4byte _08015964 @ case 7
	.4byte _0801597A @ case 8
	.4byte _0801598E @ case 9
	.4byte _0801598E @ case 10
	.4byte _0801598E @ case 11
	.4byte _0801598E @ case 12
	.4byte _0801598E @ case 13
	.4byte _0801598E @ case 14
	.4byte _0801598E @ case 15
	.4byte _0801598E @ case 16
	.4byte _0801598E @ case 17
	.4byte _0801598E @ case 18
	.4byte _0801598E @ case 19
	.4byte _0801598E @ case 20
	.4byte _0801598E @ case 21
	.4byte _08015922 @ case 22
_080158E0:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2c]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	b _0801598E
_080158F6:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _0801598E
_0801590C:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	b _0801598E
_08015922:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	b _0801598E
_08015938:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
	b _0801598E
_0801594E:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	b _0801598E
_08015964:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	b _0801598E
_0801597A:
	movs r6, #0xab
	lsls r6, r6, #1
	adds r0, r5, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r4, #0x3a]
_0801598E:
	cmp r3, #0
	bne _08015994
	b _08015ACA
_08015994:
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _080159A4
	b _08015ACA
_080159A4:
	lsls r0, r0, #2
	ldr r1, _080159B0 @ =_080159B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080159B0: .4byte _080159B4
_080159B4: @ jump table
	.4byte _08015ACA @ case 0
	.4byte _08015A10 @ case 1
	.4byte _08015A28 @ case 2
	.4byte _08015A58 @ case 3
	.4byte _08015ACA @ case 4
	.4byte _08015A70 @ case 5
	.4byte _08015A88 @ case 6
	.4byte _08015AA0 @ case 7
	.4byte _08015AB8 @ case 8
	.4byte _08015ACA @ case 9
	.4byte _08015ACA @ case 10
	.4byte _08015ACA @ case 11
	.4byte _08015ACA @ case 12
	.4byte _08015ACA @ case 13
	.4byte _08015ACA @ case 14
	.4byte _08015ACA @ case 15
	.4byte _08015ACA @ case 16
	.4byte _08015ACA @ case 17
	.4byte _08015ACA @ case 18
	.4byte _08015ACA @ case 19
	.4byte _08015ACA @ case 20
	.4byte _08015ACA @ case 21
	.4byte _08015A40 @ case 22
_08015A10:
	ldr r1, _08015A24 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2c]
	adds r0, r0, r6
	strh r0, [r4, #0x2c]
	b _08015ACA
	.align 2, 0
_08015A24: .4byte 0x00000153
_08015A28:
	ldr r1, _08015A3C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	b _08015ACA
	.align 2, 0
_08015A3C: .4byte 0x00000153
_08015A40:
	ldr r1, _08015A54 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x32]
	adds r0, r0, r6
	strh r0, [r4, #0x32]
	b _08015ACA
	.align 2, 0
_08015A54: .4byte 0x00000153
_08015A58:
	ldr r1, _08015A6C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x30]
	adds r0, r0, r6
	strh r0, [r4, #0x30]
	b _08015ACA
	.align 2, 0
_08015A6C: .4byte 0x00000153
_08015A70:
	ldr r1, _08015A84 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x34]
	adds r0, r0, r6
	strh r0, [r4, #0x34]
	b _08015ACA
	.align 2, 0
_08015A84: .4byte 0x00000153
_08015A88:
	ldr r1, _08015A9C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	b _08015ACA
	.align 2, 0
_08015A9C: .4byte 0x00000153
_08015AA0:
	ldr r1, _08015AB4 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x38]
	adds r0, r0, r6
	strh r0, [r4, #0x38]
	b _08015ACA
	.align 2, 0
_08015AB4: .4byte 0x00000153
_08015AB8:
	ldr r1, _08015AF8 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x3a]
	adds r0, r0, r6
	strh r0, [r4, #0x3a]
_08015ACA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bhi _08015AD6
	b _08015864
_08015AD6:
	cmp r7, #0
	bne _08015ADC
	b _08015D62
_08015ADC:
	ldr r0, _08015AFC @ =0x03003D90
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08015B00
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r3, r0, #0
	b _08015B02
	.align 2, 0
_08015AF8: .4byte 0x00000153
_08015AFC: .4byte 0x03003D90
_08015B00:
	movs r3, #0
_08015B02:
	movs r2, #0
	adds r5, r7, #0
	adds r5, #0xf2
_08015B08:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _08015B12
	b _08015C1A
_08015B12:
	lsls r0, r0, #2
	ldr r1, _08015B1C @ =_08015B20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015B1C: .4byte _08015B20
_08015B20: @ jump table
	.4byte _08015C1A @ case 0
	.4byte _08015B7C @ case 1
	.4byte _08015B90 @ case 2
	.4byte _08015BA4 @ case 3
	.4byte _08015C1A @ case 4
	.4byte _08015BCC @ case 5
	.4byte _08015BE0 @ case 6
	.4byte _08015BF4 @ case 7
	.4byte _08015C08 @ case 8
	.4byte _08015C1A @ case 9
	.4byte _08015C1A @ case 10
	.4byte _08015C1A @ case 11
	.4byte _08015C1A @ case 12
	.4byte _08015C1A @ case 13
	.4byte _08015C1A @ case 14
	.4byte _08015C1A @ case 15
	.4byte _08015C1A @ case 16
	.4byte _08015C1A @ case 17
	.4byte _08015C1A @ case 18
	.4byte _08015C1A @ case 19
	.4byte _08015C1A @ case 20
	.4byte _08015C1A @ case 21
	.4byte _08015BB8 @ case 22
_08015B7C:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2c]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	b _08015C1A
_08015B90:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	b _08015C1A
_08015BA4:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	b _08015C1A
_08015BB8:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x32]
	adds r0, r0, r6
	strh r0, [r4, #0x32]
	b _08015C1A
_08015BCC:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
	b _08015C1A
_08015BE0:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	b _08015C1A
_08015BF4:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	b _08015C1A
_08015C08:
	adds r0, r7, #0
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x3a]
	adds r0, r0, r6
	strh r0, [r4, #0x3a]
_08015C1A:
	cmp r3, #0
	bne _08015C20
	b _08015D56
_08015C20:
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _08015C30
	b _08015D56
_08015C30:
	lsls r0, r0, #2
	ldr r1, _08015C3C @ =_08015C40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015C3C: .4byte _08015C40
_08015C40: @ jump table
	.4byte _08015D56 @ case 0
	.4byte _08015C9C @ case 1
	.4byte _08015CB4 @ case 2
	.4byte _08015CCC @ case 3
	.4byte _08015D56 @ case 4
	.4byte _08015CFC @ case 5
	.4byte _08015D14 @ case 6
	.4byte _08015D2C @ case 7
	.4byte _08015D44 @ case 8
	.4byte _08015D56 @ case 9
	.4byte _08015D56 @ case 10
	.4byte _08015D56 @ case 11
	.4byte _08015D56 @ case 12
	.4byte _08015D56 @ case 13
	.4byte _08015D56 @ case 14
	.4byte _08015D56 @ case 15
	.4byte _08015D56 @ case 16
	.4byte _08015D56 @ case 17
	.4byte _08015D56 @ case 18
	.4byte _08015D56 @ case 19
	.4byte _08015D56 @ case 20
	.4byte _08015D56 @ case 21
	.4byte _08015CE4 @ case 22
_08015C9C:
	ldr r6, _08015CB0 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2c]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	b _08015D56
	.align 2, 0
_08015CB0: .4byte 0x00000153
_08015CB4:
	ldr r6, _08015CC8 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _08015D56
	.align 2, 0
_08015CC8: .4byte 0x00000153
_08015CCC:
	ldr r6, _08015CE0 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	b _08015D56
	.align 2, 0
_08015CE0: .4byte 0x00000153
_08015CE4:
	ldr r6, _08015CF8 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	b _08015D56
	.align 2, 0
_08015CF8: .4byte 0x00000153
_08015CFC:
	ldr r6, _08015D10 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
	b _08015D56
	.align 2, 0
_08015D10: .4byte 0x00000153
_08015D14:
	ldr r6, _08015D28 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	b _08015D56
	.align 2, 0
_08015D28: .4byte 0x00000153
_08015D2C:
	ldr r6, _08015D40 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	b _08015D56
	.align 2, 0
_08015D40: .4byte 0x00000153
_08015D44:
	ldr r6, _08015D88 @ =0x00000153
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r4, #0x3a]
_08015D56:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bhi _08015D62
	b _08015B08
_08015D62:
	mov r2, r8
	cmp r2, #0
	bne _08015D6A
	b _08015FF2
_08015D6A:
	ldr r0, _08015D8C @ =0x03003D8C
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08015D90
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	adds r3, r0, #0
	b _08015D92
	.align 2, 0
_08015D88: .4byte 0x00000153
_08015D8C: .4byte 0x03003D8C
_08015D90:
	movs r3, #0
_08015D92:
	movs r2, #0
	mov r5, r8
	adds r5, #0xf2
_08015D98:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _08015DA2
	b _08015EAA
_08015DA2:
	lsls r0, r0, #2
	ldr r1, _08015DAC @ =_08015DB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015DAC: .4byte _08015DB0
_08015DB0: @ jump table
	.4byte _08015EAA @ case 0
	.4byte _08015E0C @ case 1
	.4byte _08015E20 @ case 2
	.4byte _08015E34 @ case 3
	.4byte _08015EAA @ case 4
	.4byte _08015E5C @ case 5
	.4byte _08015E70 @ case 6
	.4byte _08015E84 @ case 7
	.4byte _08015E98 @ case 8
	.4byte _08015EAA @ case 9
	.4byte _08015EAA @ case 10
	.4byte _08015EAA @ case 11
	.4byte _08015EAA @ case 12
	.4byte _08015EAA @ case 13
	.4byte _08015EAA @ case 14
	.4byte _08015EAA @ case 15
	.4byte _08015EAA @ case 16
	.4byte _08015EAA @ case 17
	.4byte _08015EAA @ case 18
	.4byte _08015EAA @ case 19
	.4byte _08015EAA @ case 20
	.4byte _08015EAA @ case 21
	.4byte _08015E48 @ case 22
_08015E0C:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2c]
	adds r0, r0, r6
	strh r0, [r4, #0x2c]
	b _08015EAA
_08015E20:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _08015EAA
_08015E34:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x30]
	adds r0, r0, r6
	strh r0, [r4, #0x30]
	b _08015EAA
_08015E48:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	b _08015EAA
_08015E5C:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x34]
	adds r0, r0, r6
	strh r0, [r4, #0x34]
	b _08015EAA
_08015E70:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	b _08015EAA
_08015E84:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x38]
	adds r0, r0, r6
	strh r0, [r4, #0x38]
	b _08015EAA
_08015E98:
	mov r0, r8
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r4, #0x3a]
_08015EAA:
	cmp r3, #0
	bne _08015EB0
	b _08015FE6
_08015EB0:
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r3, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _08015EC0
	b _08015FE6
_08015EC0:
	lsls r0, r0, #2
	ldr r1, _08015ECC @ =_08015ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015ECC: .4byte _08015ED0
_08015ED0: @ jump table
	.4byte _08015FE6 @ case 0
	.4byte _08015F2C @ case 1
	.4byte _08015F44 @ case 2
	.4byte _08015F5C @ case 3
	.4byte _08015FE6 @ case 4
	.4byte _08015F8C @ case 5
	.4byte _08015FA4 @ case 6
	.4byte _08015FBC @ case 7
	.4byte _08015FD4 @ case 8
	.4byte _08015FE6 @ case 9
	.4byte _08015FE6 @ case 10
	.4byte _08015FE6 @ case 11
	.4byte _08015FE6 @ case 12
	.4byte _08015FE6 @ case 13
	.4byte _08015FE6 @ case 14
	.4byte _08015FE6 @ case 15
	.4byte _08015FE6 @ case 16
	.4byte _08015FE6 @ case 17
	.4byte _08015FE6 @ case 18
	.4byte _08015FE6 @ case 19
	.4byte _08015FE6 @ case 20
	.4byte _08015FE6 @ case 21
	.4byte _08015F74 @ case 22
_08015F2C:
	ldr r1, _08015F40 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2c]
	adds r0, r0, r6
	strh r0, [r4, #0x2c]
	b _08015FE6
	.align 2, 0
_08015F40: .4byte 0x00000153
_08015F44:
	ldr r1, _08015F58 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	b _08015FE6
	.align 2, 0
_08015F58: .4byte 0x00000153
_08015F5C:
	ldr r1, _08015F70 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x30]
	adds r0, r0, r6
	strh r0, [r4, #0x30]
	b _08015FE6
	.align 2, 0
_08015F70: .4byte 0x00000153
_08015F74:
	ldr r1, _08015F88 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x32]
	adds r0, r0, r6
	strh r0, [r4, #0x32]
	b _08015FE6
	.align 2, 0
_08015F88: .4byte 0x00000153
_08015F8C:
	ldr r1, _08015FA0 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x34]
	adds r0, r0, r6
	strh r0, [r4, #0x34]
	b _08015FE6
	.align 2, 0
_08015FA0: .4byte 0x00000153
_08015FA4:
	ldr r1, _08015FB8 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	b _08015FE6
	.align 2, 0
_08015FB8: .4byte 0x00000153
_08015FBC:
	ldr r1, _08015FD0 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x38]
	adds r0, r0, r6
	strh r0, [r4, #0x38]
	b _08015FE6
	.align 2, 0
_08015FD0: .4byte 0x00000153
_08015FD4:
	ldr r1, _08016018 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x3a]
	adds r0, r0, r6
	strh r0, [r4, #0x3a]
_08015FE6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bhi _08015FF2
	b _08015D98
_08015FF2:
	ldrh r3, [r4, #0xc]
	mov r0, sb
	cmp r0, #0
	bne _08015FFC
	b _08016142
_08015FFC:
	movs r2, #0
_08015FFE:
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x16
	bls _0801600E
	b _08016136
_0801600E:
	lsls r0, r0, #2
	ldr r1, _0801601C @ =_08016020
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016018: .4byte 0x00000153
_0801601C: .4byte _08016020
_08016020: @ jump table
	.4byte _08016136 @ case 0
	.4byte _0801607C @ case 1
	.4byte _08016094 @ case 2
	.4byte _080160AC @ case 3
	.4byte _08016136 @ case 4
	.4byte _080160DC @ case 5
	.4byte _080160F4 @ case 6
	.4byte _0801610C @ case 7
	.4byte _08016124 @ case 8
	.4byte _08016136 @ case 9
	.4byte _08016136 @ case 10
	.4byte _08016136 @ case 11
	.4byte _08016136 @ case 12
	.4byte _08016136 @ case 13
	.4byte _08016136 @ case 14
	.4byte _08016136 @ case 15
	.4byte _08016136 @ case 16
	.4byte _08016136 @ case 17
	.4byte _08016136 @ case 18
	.4byte _08016136 @ case 19
	.4byte _08016136 @ case 20
	.4byte _08016136 @ case 21
	.4byte _080160C4 @ case 22
_0801607C:
	ldr r0, _08016090 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2c]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	b _08016136
	.align 2, 0
_08016090: .4byte 0x00000153
_08016094:
	ldr r0, _080160A8 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	b _08016136
	.align 2, 0
_080160A8: .4byte 0x00000153
_080160AC:
	ldr r0, _080160C0 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	b _08016136
	.align 2, 0
_080160C0: .4byte 0x00000153
_080160C4:
	ldr r0, _080160D8 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x32]
	adds r0, r0, r6
	strh r0, [r4, #0x32]
	b _08016136
	.align 2, 0
_080160D8: .4byte 0x00000153
_080160DC:
	ldr r0, _080160F0 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x34]
	adds r0, r0, r1
	strh r0, [r4, #0x34]
	b _08016136
	.align 2, 0
_080160F0: .4byte 0x00000153
_080160F4:
	ldr r0, _08016108 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	b _08016136
	.align 2, 0
_08016108: .4byte 0x00000153
_0801610C:
	ldr r0, _08016120 @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	b _08016136
	.align 2, 0
_08016120: .4byte 0x00000153
_08016124:
	ldr r0, _0801617C @ =0x00000153
	add r0, sb
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #0x3a]
	adds r0, r0, r6
	strh r0, [r4, #0x3a]
_08016136:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bhi _08016142
	b _08015FFE
_08016142:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bne _08016166
	bl sub_080102C4
	ldr r1, _08016180 @ =gPlayerStats
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x44
	ldrh r0, [r0]
	movs r1, #0xa
	bl __divsi3
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
_08016166:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _080161A4
	cmp r0, #2
	bgt _08016184
	cmp r0, #0
	beq _0801618A
	b _080161EC
	.align 2, 0
_0801617C: .4byte 0x00000153
_08016180: .4byte gPlayerStats
_08016184:
	cmp r0, #3
	beq _080161CC
	b _080161EC
_0801618A:
	ldr r2, _080161A0 @ =gPlayerStats
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	b _080161DE
	.align 2, 0
_080161A0: .4byte gPlayerStats
_080161A4:
	ldr r2, _080161C8 @ =gPlayerStats
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrh r3, [r4, #0x36]
	adds r0, r0, r3
	strh r0, [r4, #0x36]
	adds r2, #0x60
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrh r6, [r4, #0x38]
	adds r0, r0, r6
	strh r0, [r4, #0x38]
	b _080161EC
	.align 2, 0
_080161C8: .4byte gPlayerStats
_080161CC:
	ldr r2, _0801626C @ =gPlayerStats
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
_080161DE:
	adds r2, #0x60
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r4, #0x3a]
_080161EC:
	bl sub_08015478
	movs r3, #0x36
	ldrsh r0, [r4, r3]
	cmp r0, #0x64
	ble _080161FC
	movs r0, #0x64
	strh r0, [r4, #0x36]
_080161FC:
	movs r6, #0x38
	ldrsh r0, [r4, r6]
	cmp r0, #0x64
	ble _08016208
	movs r0, #0x64
	strh r0, [r4, #0x38]
_08016208:
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	cmp r0, #0x64
	ble _08016214
	movs r0, #0x64
	strh r0, [r4, #0x3a]
_08016214:
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016220
	movs r0, #0
	strh r0, [r4, #0x36]
_08016220:
	movs r3, #0x38
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801622C
	movs r0, #0
	strh r0, [r4, #0x38]
_0801622C:
	movs r6, #0x2c
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bge _08016238
	movs r0, #0
	strh r0, [r4, #0x2c]
_08016238:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08016244
	movs r0, #0
	strh r0, [r4, #0x2e]
_08016244:
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016250
	movs r0, #0
	strh r0, [r4, #0x30]
_08016250:
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0801625C
	movs r0, #0
	strh r0, [r4, #0x32]
_0801625C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801626C: .4byte gPlayerStats

	thumb_func_start sub_08016270
sub_08016270: @ 0x08016270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	ldr r5, _080162A0 @ =gPlayerStats
	adds r4, r5, #0
	adds r4, #0x6c
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r1, r0, r5
	adds r0, r1, #0
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080162A4
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x10]
	b _080162DE
	.align 2, 0
_080162A0: .4byte gPlayerStats
_080162A4:
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	mov sl, r0
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x70]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _080162DA
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x10]
	b _080162DE
_080162DA:
	movs r2, #0
	str r2, [sp, #0x10]
_080162DE:
	ldr r4, _080162F8 @ =gPlayerStats
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080162FC
	movs r3, #0
	str r3, [sp, #4]
	movs r6, #0
	str r6, [sp, #0x14]
	b _08016332
	.align 2, 0
_080162F8: .4byte gPlayerStats
_080162FC:
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0801632E
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	b _08016330
_0801632E:
	movs r0, #0
_08016330:
	str r0, [sp, #0x14]
_08016332:
	ldr r4, _0801634C @ =gPlayerStats
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08016350
	movs r1, #0
	str r1, [sp, #8]
	movs r2, #0
	str r2, [sp, #0x18]
	b _08016384
	.align 2, 0
_0801634C: .4byte gPlayerStats
_08016350:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08016380
	subs r0, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x18]
	b _08016384
_08016380:
	movs r3, #0
	str r3, [sp, #0x18]
_08016384:
	ldr r0, _08016398 @ =gPlayerStats
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801639C
	movs r6, #0
	str r6, [sp, #0xc]
	b _080163B2
	.align 2, 0
_08016398: .4byte gPlayerStats
_0801639C:
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xc]
_080163B2:
	ldr r4, _08016410 @ =gPlayerStats
	adds r3, r4, #0
	adds r3, #0x6c
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08016448
	mov r0, sl
	cmp r0, #0
	beq _08016440
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, sl
	ldrb r2, [r0]
	ldr r1, [sp]
	adds r1, #0x48
	strh r2, [r1]
	ldr r0, _08016414 @ =0x00000159
	add r0, sl
	ldrb r0, [r0]
	mov sb, r1
	cmp r0, #8
	beq _080163FA
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x72
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r0, r2, r0
	strh r0, [r1]
_080163FA:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08016450
	cmp r0, #1
	bgt _08016418
	cmp r0, #0
	beq _0801641C
	b _08016450
	.align 2, 0
_08016410: .4byte gPlayerStats
_08016414: .4byte 0x00000159
_08016418:
	cmp r0, #3
	bgt _08016450
_0801641C:
	bl sub_080102C4
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r0, [r0]
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	mov r6, sb
	strh r0, [r6]
	b _08016450
_08016440:
	ldr r0, [sp]
	adds r0, #0x48
	mov r1, sl
	b _0801644C
_08016448:
	ldr r0, [sp]
	adds r0, #0x48
_0801644C:
	strh r1, [r0]
	mov sb, r0
_08016450:
	ldr r2, [sp]
	ldrh r0, [r2, #0x2c]
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r6, sb
	strh r0, [r6]
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801646E
	movs r0, #0
	strh r0, [r6]
_0801646E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08016488
	adds r0, #0xf0
	ldr r1, _08016484 @ =gPlayerStats
	adds r1, #0x82
	ldrb r1, [r1]
	lsrs r1, r1, #4
	ldrb r0, [r0]
	adds r3, r1, r0
	b _0801648A
	.align 2, 0
_08016484: .4byte gPlayerStats
_08016488:
	movs r3, #0
_0801648A:
	mov r1, sl
	cmp r1, #0
	beq _080164B2
	ldr r0, _08016540 @ =0x00000159
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #8
	bne _080164B2
	ldr r1, _08016544 @ =gPlayerStats
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x72
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080164B2:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _080164D2
	adds r0, r2, #0
	adds r0, #0xf0
	ldrb r0, [r0]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08016544 @ =gPlayerStats
	adds r0, #0x7e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080164D2:
	ldr r6, [sp]
	adds r6, #0x4a
	mov r8, r6
	movs r2, #0
	strh r3, [r6]
	ldr r0, [sp]
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	ldr r0, [r0, #0x40]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r6, [sp]
	adds r6, #0x50
	strh r0, [r6]
	ldr r1, [sp]
	ldrh r0, [r1, #0x30]
	lsls r0, r0, #1
	adds r5, r1, #0
	adds r5, #0x4e
	strh r0, [r5]
	adds r4, r1, #0
	adds r4, #0x4c
	strh r2, [r4]
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r7, r8
	cmp r0, #2
	bne _08016518
	ldr r0, _08016544 @ =gPlayerStats
	adds r0, #0x50
	ldrh r0, [r0]
	lsls r0, r0, #1
	strh r0, [r4]
_08016518:
	movs r2, #0
	ldr r3, [sp]
	adds r3, #0x24
	mov r8, r3
_08016520:
	mov r0, sl
	cmp r0, #0
	bne _08016528
	b _080166EC
_08016528:
	ldr r0, _08016548 @ =0x00000153
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _08016600
	lsls r0, r0, #2
	ldr r1, _0801654C @ =_08016550
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016540: .4byte 0x00000159
_08016544: .4byte gPlayerStats
_08016548: .4byte 0x00000153
_0801654C: .4byte _08016550
_08016550: @ jump table
	.4byte _080165C0 @ case 0
	.4byte _08016600 @ case 1
	.4byte _08016600 @ case 2
	.4byte _08016600 @ case 3
	.4byte _08016600 @ case 4
	.4byte _08016590 @ case 5
	.4byte _080165AA @ case 6
	.4byte _08016600 @ case 7
	.4byte _08016600 @ case 8
	.4byte _08016600 @ case 9
	.4byte _080165D6 @ case 10
	.4byte _08016600 @ case 11
	.4byte _08016600 @ case 12
	.4byte _08016600 @ case 13
	.4byte _08016600 @ case 14
	.4byte _080165EC @ case 15
_08016590:
	movs r0, #0xab
	lsls r0, r0, #1
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, sb
	strh r0, [r3]
	b _08016600
_080165AA:
	movs r0, #0xab
	lsls r0, r0, #1
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	b _08016600
_080165C0:
	movs r0, #0xab
	lsls r0, r0, #1
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	b _08016600
_080165D6:
	movs r0, #0xab
	lsls r0, r0, #1
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08016600
_080165EC:
	movs r0, #0xab
	lsls r0, r0, #1
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_08016600:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _080166EC
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _080166EC
	lsls r0, r0, #2
	ldr r1, _08016620 @ =_08016624
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016620: .4byte _08016624
_08016624: @ jump table
	.4byte _080166A0 @ case 0
	.4byte _080166EC @ case 1
	.4byte _080166EC @ case 2
	.4byte _080166EC @ case 3
	.4byte _080166EC @ case 4
	.4byte _08016664 @ case 5
	.4byte _08016684 @ case 6
	.4byte _080166EC @ case 7
	.4byte _080166EC @ case 8
	.4byte _080166EC @ case 9
	.4byte _080166BC @ case 10
	.4byte _080166EC @ case 11
	.4byte _080166EC @ case 12
	.4byte _080166EC @ case 13
	.4byte _080166EC @ case 14
	.4byte _080166D8 @ case 15
_08016664:
	ldr r3, [sp, #0x10]
	ldr r1, _08016680 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r1, sb
	strh r0, [r1]
	b _080166EC
	.align 2, 0
_08016680: .4byte 0x00000153
_08016684:
	ldr r3, [sp, #0x10]
	ldr r1, _0801669C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7]
	adds r0, r0, r3
	strh r0, [r7]
	b _080166EC
	.align 2, 0
_0801669C: .4byte 0x00000153
_080166A0:
	ldr r1, [sp, #0x10]
	ldr r3, _080166B8 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	b _080166EC
	.align 2, 0
_080166B8: .4byte 0x00000153
_080166BC:
	ldr r3, [sp, #0x10]
	ldr r1, _080166D4 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	b _080166EC
	.align 2, 0
_080166D4: .4byte 0x00000153
_080166D8:
	ldr r1, [sp, #0x10]
	ldr r3, _0801670C @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080166EC:
	ldr r3, [sp, #4]
	cmp r3, #0
	bne _080166F4
	b _080168A8
_080166F4:
	adds r0, r3, #0
	adds r0, #0xf2
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _080167BA
	lsls r0, r0, #2
	ldr r1, _08016710 @ =_08016714
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801670C: .4byte 0x00000153
_08016710: .4byte _08016714
_08016714: @ jump table
	.4byte _08016780 @ case 0
	.4byte _080167BA @ case 1
	.4byte _080167BA @ case 2
	.4byte _080167BA @ case 3
	.4byte _080167BA @ case 4
	.4byte _08016754 @ case 5
	.4byte _0801676C @ case 6
	.4byte _080167BA @ case 7
	.4byte _080167BA @ case 8
	.4byte _080167BA @ case 9
	.4byte _08016794 @ case 10
	.4byte _080167BA @ case 11
	.4byte _080167BA @ case 12
	.4byte _080167BA @ case 13
	.4byte _080167BA @ case 14
	.4byte _080167A8 @ case 15
_08016754:
	ldr r0, [sp, #4]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, sb
	strh r0, [r3]
	b _080167BA
_0801676C:
	ldr r0, [sp, #4]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	b _080167BA
_08016780:
	ldr r0, [sp, #4]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	b _080167BA
_08016794:
	ldr r0, [sp, #4]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _080167BA
_080167A8:
	ldr r0, [sp, #4]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_080167BA:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080168A8
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _080168A8
	lsls r0, r0, #2
	ldr r1, _080167DC @ =_080167E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080167DC: .4byte _080167E0
_080167E0: @ jump table
	.4byte _0801685C @ case 0
	.4byte _080168A8 @ case 1
	.4byte _080168A8 @ case 2
	.4byte _080168A8 @ case 3
	.4byte _080168A8 @ case 4
	.4byte _08016820 @ case 5
	.4byte _08016840 @ case 6
	.4byte _080168A8 @ case 7
	.4byte _080168A8 @ case 8
	.4byte _080168A8 @ case 9
	.4byte _08016878 @ case 10
	.4byte _080168A8 @ case 11
	.4byte _080168A8 @ case 12
	.4byte _080168A8 @ case 13
	.4byte _080168A8 @ case 14
	.4byte _08016894 @ case 15
_08016820:
	ldr r3, [sp, #0x14]
	ldr r1, _0801683C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r1, sb
	strh r0, [r1]
	b _080168A8
	.align 2, 0
_0801683C: .4byte 0x00000153
_08016840:
	ldr r3, [sp, #0x14]
	ldr r1, _08016858 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7]
	adds r0, r0, r3
	strh r0, [r7]
	b _080168A8
	.align 2, 0
_08016858: .4byte 0x00000153
_0801685C:
	ldr r1, [sp, #0x14]
	ldr r3, _08016874 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	b _080168A8
	.align 2, 0
_08016874: .4byte 0x00000153
_08016878:
	ldr r3, [sp, #0x14]
	ldr r1, _08016890 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	b _080168A8
	.align 2, 0
_08016890: .4byte 0x00000153
_08016894:
	ldr r1, [sp, #0x14]
	ldr r3, _080168C8 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080168A8:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _080168B0
	b _08016A64
_080168B0:
	adds r0, r3, #0
	adds r0, #0xf2
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _08016976
	lsls r0, r0, #2
	ldr r1, _080168CC @ =_080168D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080168C8: .4byte 0x00000153
_080168CC: .4byte _080168D0
_080168D0: @ jump table
	.4byte _0801693C @ case 0
	.4byte _08016976 @ case 1
	.4byte _08016976 @ case 2
	.4byte _08016976 @ case 3
	.4byte _08016976 @ case 4
	.4byte _08016910 @ case 5
	.4byte _08016928 @ case 6
	.4byte _08016976 @ case 7
	.4byte _08016976 @ case 8
	.4byte _08016976 @ case 9
	.4byte _08016950 @ case 10
	.4byte _08016976 @ case 11
	.4byte _08016976 @ case 12
	.4byte _08016976 @ case 13
	.4byte _08016976 @ case 14
	.4byte _08016964 @ case 15
_08016910:
	ldr r0, [sp, #8]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, sb
	strh r0, [r3]
	b _08016976
_08016928:
	ldr r0, [sp, #8]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	b _08016976
_0801693C:
	ldr r0, [sp, #8]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	b _08016976
_08016950:
	ldr r0, [sp, #8]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08016976
_08016964:
	ldr r0, [sp, #8]
	adds r0, #0xf5
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_08016976:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08016A64
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _08016A64
	lsls r0, r0, #2
	ldr r1, _08016998 @ =_0801699C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016998: .4byte _0801699C
_0801699C: @ jump table
	.4byte _08016A18 @ case 0
	.4byte _08016A64 @ case 1
	.4byte _08016A64 @ case 2
	.4byte _08016A64 @ case 3
	.4byte _08016A64 @ case 4
	.4byte _080169DC @ case 5
	.4byte _080169FC @ case 6
	.4byte _08016A64 @ case 7
	.4byte _08016A64 @ case 8
	.4byte _08016A64 @ case 9
	.4byte _08016A34 @ case 10
	.4byte _08016A64 @ case 11
	.4byte _08016A64 @ case 12
	.4byte _08016A64 @ case 13
	.4byte _08016A64 @ case 14
	.4byte _08016A50 @ case 15
_080169DC:
	ldr r3, [sp, #0x18]
	ldr r1, _080169F8 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r1, sb
	strh r0, [r1]
	b _08016A64
	.align 2, 0
_080169F8: .4byte 0x00000153
_080169FC:
	ldr r3, [sp, #0x18]
	ldr r1, _08016A14 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7]
	adds r0, r0, r3
	strh r0, [r7]
	b _08016A64
	.align 2, 0
_08016A14: .4byte 0x00000153
_08016A18:
	ldr r1, [sp, #0x18]
	ldr r3, _08016A30 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	b _08016A64
	.align 2, 0
_08016A30: .4byte 0x00000153
_08016A34:
	ldr r3, [sp, #0x18]
	ldr r1, _08016A4C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	b _08016A64
	.align 2, 0
_08016A4C: .4byte 0x00000153
_08016A50:
	ldr r1, [sp, #0x18]
	ldr r3, _08016A84 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_08016A64:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _08016B54
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #0xf
	bhi _08016B54
	lsls r0, r0, #2
	ldr r1, _08016A88 @ =_08016A8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016A84: .4byte 0x00000153
_08016A88: .4byte _08016A8C
_08016A8C: @ jump table
	.4byte _08016B08 @ case 0
	.4byte _08016B54 @ case 1
	.4byte _08016B54 @ case 2
	.4byte _08016B54 @ case 3
	.4byte _08016B54 @ case 4
	.4byte _08016ACC @ case 5
	.4byte _08016AEC @ case 6
	.4byte _08016B54 @ case 7
	.4byte _08016B54 @ case 8
	.4byte _08016B54 @ case 9
	.4byte _08016B24 @ case 10
	.4byte _08016B54 @ case 11
	.4byte _08016B54 @ case 12
	.4byte _08016B54 @ case 13
	.4byte _08016B54 @ case 14
	.4byte _08016B40 @ case 15
_08016ACC:
	ldr r3, [sp, #0xc]
	ldr r1, _08016AE8 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r1, sb
	strh r0, [r1]
	b _08016B54
	.align 2, 0
_08016AE8: .4byte 0x00000153
_08016AEC:
	ldr r3, [sp, #0xc]
	ldr r1, _08016B04 @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7]
	adds r0, r0, r3
	strh r0, [r7]
	b _08016B54
	.align 2, 0
_08016B04: .4byte 0x00000153
_08016B08:
	ldr r1, [sp, #0xc]
	ldr r3, _08016B20 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	b _08016B54
	.align 2, 0
_08016B20: .4byte 0x00000153
_08016B24:
	ldr r3, [sp, #0xc]
	ldr r1, _08016B3C @ =0x00000153
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	b _08016B54
	.align 2, 0
_08016B3C: .4byte 0x00000153
_08016B40:
	ldr r1, [sp, #0xc]
	ldr r3, _08016B70 @ =0x00000153
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_08016B54:
	adds r2, #1
	cmp r2, #2
	bhi _08016B5C
	b _08016520
_08016B5C:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08016B74
	cmp r0, #3
	beq _08016B88
	b _08016BA6
	.align 2, 0
_08016B70: .4byte 0x00000153
_08016B74:
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08016B84 @ =gPlayerStats
	adds r0, #0x50
	b _08016B96
	.align 2, 0
_08016B84: .4byte gPlayerStats
_08016B88:
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08016BD0 @ =gPlayerStats
	adds r0, #0x54
_08016B96:
	ldrh r0, [r0]
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	ldrh r1, [r7]
	adds r1, r1, r0
	strh r1, [r7]
_08016BA6:
	movs r2, #0
	adds r3, r7, #0
	mov r5, sb
_08016BAC:
	lsls r1, r2, #1
	mov r6, r8
	adds r0, r6, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble _08016BF8
	ldr r6, [sp]
	ldr r0, [r6, #0x1c]
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #7
	beq _08016BE6
	cmp r0, #7
	bgt _08016BD4
	cmp r0, #4
	beq _08016BDA
	b _08016BF8
	.align 2, 0
_08016BD0: .4byte gPlayerStats
_08016BD4:
	cmp r0, #8
	beq _08016BF0
	b _08016BF8
_08016BDA:
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	b _08016BF6
_08016BE6:
	movs r6, #0
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	strh r0, [r5]
	b _08016BF8
_08016BF0:
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #1
_08016BF6:
	strh r0, [r3]
_08016BF8:
	adds r2, #1
	cmp r2, #2
	bls _08016BAC
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08016C0C
	movs r0, #0
	strh r0, [r2]
_08016C0C:
	movs r6, #0
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bge _08016C18
	movs r0, #0
	strh r0, [r7]
_08016C18:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08016C24
	movs r0, #0
	strh r0, [r4]
_08016C24:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08016C34
sub_08016C34: @ 0x08016C34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl GetMultiplayerId
	movs r2, #0xd4
	muls r0, r2, r0
	ldr r1, _08016CA0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r4, #0
	muls r0, r2, r0
	adds r6, r0, r1
	ldr r2, [r5, #0x58]
	lsls r2, r2, #1
	ldr r0, [r5, #0x5c]
	lsls r0, r0, #1
	lsrs r3, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x17
	asrs r2, r2, #0x10
	lsrs r1, r1, #7
	subs r0, r2, r1
	cmp r0, #0
	bge _08016C70
	rsbs r0, r0, #0
_08016C70:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _08016C84
	rsbs r0, r0, #0
_08016C84:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r5, r6
	bne _08016CA4
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	ble _08016CC6
	adds r0, r2, r7
	b _08016CC4
	.align 2, 0
_08016CA0: .4byte gPlayers
_08016CA4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x7a
	cmp r0, #0xd
	bgt _08016CC6
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _08016CC6
	ldrh r1, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08016CC6
	adds r0, r1, r7
_08016CC4:
	strh r0, [r3]
_08016CC6:
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _08016CDA
	strh r2, [r3]
_08016CDA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08016CE0
sub_08016CE0: @ 0x08016CE0
	push {r4, lr}
	ldr r4, _08016CFC @ =gPlayerStats
	ldrh r0, [r4, #0x20]
	lsrs r0, r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08016D24
	cmp r0, #1
	bgt _08016D00
	cmp r0, #0
	beq _08016D04
	b _08016D42
	.align 2, 0
_08016CFC: .4byte gPlayerStats
_08016D00:
	cmp r0, #3
	bgt _08016D42
_08016D04:
	bl sub_080102C4
	adds r1, r0, #0
	cmp r1, #0
	beq _08016D42
	ldr r0, _08016D20 @ =gPlayerStats
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x44
	ldrh r0, [r1]
	cmp r0, #0
	bne _08016D3E
	b _08016D42
	.align 2, 0
_08016D20: .4byte gPlayerStats
_08016D24:
	bl sub_08016EDC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08016D42
	subs r0, r1, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _08016D42
_08016D3E:
	movs r0, #1
	b _08016D44
_08016D42:
	movs r0, #0
_08016D44:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016D4C
sub_08016D4C: @ 0x08016D4C
	push {r4, lr}
	ldr r4, _08016D68 @ =gPlayerStats
	ldrh r0, [r4, #0x20]
	lsrs r0, r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08016D8C
	cmp r0, #1
	bgt _08016D6C
	cmp r0, #0
	beq _08016D70
	b _08016DB6
	.align 2, 0
_08016D68: .4byte gPlayerStats
_08016D6C:
	cmp r0, #3
	bgt _08016DB6
_08016D70:
	bl sub_080102C4
	adds r1, r0, #0
	cmp r1, #0
	beq _08016DB6
	ldr r0, _08016D88 @ =gPlayerStats
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x44
	ldrh r0, [r1]
	b _08016DB8
	.align 2, 0
_08016D88: .4byte gPlayerStats
_08016D8C:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x70
	adds r0, r0, r1
	bl GetWeaponRecord
	bl sub_08014D98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08016DB6
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r0, [r0]
	b _08016DB8
_08016DB6:
	movs r0, #0
_08016DB8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
