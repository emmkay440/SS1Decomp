	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804288C
sub_0804288C: @ 0x0804288C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r5, _08042938 @ =gUnknown_030004C8
	ldrb r1, [r5]
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080428AA
	b _080429E4
_080428AA:
	add r0, sp, #0x2c
	add r1, sp, #0x30
	bl sub_0803FE70
	ldr r2, [sp, #0x2c]
	movs r4, #7
	str r4, [sp]
	movs r0, #0xe0
	movs r1, #0x10
	movs r3, #0
	bl sub_08026D98
	ldrb r0, [r5]
	cmp r0, #1
	beq _080428D6
	ldr r2, [sp, #0x30]
	str r4, [sp]
	movs r0, #0x90
	movs r1, #0x10
	movs r3, #2
	bl sub_08026D98
_080428D6:
	bl sub_08040C3C
	adds r4, r0, #0
	adds r4, #8
	adds r0, r4, #0
	bl GetCategory5Record
	adds r5, r0, #0
	cmp r5, #0
	beq _08042922
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08042922
	ldrb r2, [r4, #2]
	movs r0, #0xc
	movs r1, #0x68
	movs r3, #0
	bl sub_08026E70
	ldr r2, _0804293C @ =0x00000157
	adds r0, r5, r2
	ldrb r2, [r0]
	movs r0, #0x1f
	movs r1, #0x70
	movs r3, #0
	bl sub_08026E70
	ldr r0, _08042940 @ =gUnknown_03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0xf
	movs r2, #0x6c
	movs r3, #3
	bl sub_08026B90
_08042922:
	bl sub_080460F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042944
	bl sub_0800ED74
	bl sub_08046110
	b _08042FE4
	.align 2, 0
_08042938: .4byte gUnknown_030004C8
_0804293C: .4byte 0x00000157
_08042940: .4byte gUnknown_03000510
_08042944:
	bl sub_08016DC0
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_08016E4C
	add r0, sp, #4
	bl sub_08016E24
	add r0, sp, #4
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0x78
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	movs r1, #2
	ldrsh r2, [r4, r1]
	movs r0, #0x78
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #0x78
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x78
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x80
	movs r3, #0
	bl sub_08022F60
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0xc8
	movs r1, #0x88
	movs r3, #0
	bl sub_08022F60
	b _08042FE4
_080429E4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _080429EE
	b _08042E5C
_080429EE:
	add r0, sp, #4
	bl sub_08016E24
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_08016E4C
	bl sub_0803FE1C
	mov sb, r0
	bl sub_08041080
	mov r8, r0
	add r0, sp, #4
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x78
	movs r3, #0
	bl sub_08026E70
	add r0, sp, #4
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x80
	movs r3, #0
	bl sub_08026E70
	add r0, sp, #4
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	movs r0, #0x28
	movs r1, #0x88
	movs r3, #0
	bl sub_08026E70
	ldr r6, _08042B00 @ =gUnknown_03000510
	ldr r5, _08042B04 @ =0x030004E2
	ldr r3, _08042B08 @ =0x030004FA
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x11
	adds r2, r5, #0
	bl sub_08026C40
	movs r0, #7
	movs r1, #0
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x38
	bl sub_08026E70
	movs r0, #0
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #0
	beq _08042A84
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x31
	movs r3, #0x11
	bl sub_08026B90
_08042A84:
	movs r0, #7
	movs r1, #1
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x48
	bl sub_08026E70
	movs r0, #1
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042ABA
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x41
	movs r3, #0x11
	bl sub_08026B90
_08042ABA:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042B0C
	movs r0, #7
	movs r1, #2
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x58
	bl sub_08026E70
	movs r0, #2
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042B1C
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x5d
	movs r2, #0x51
	movs r3, #0x11
	bl sub_08026B90
	b _08042B1C
	.align 2, 0
_08042B00: .4byte gUnknown_03000510
_08042B04: .4byte 0x030004E2
_08042B08: .4byte 0x030004FA
_08042B0C:
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x58
	movs r3, #3
	bl sub_08026E70
_08042B1C:
	movs r0, #7
	movs r1, #3
	bl sub_08043DD0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #0x69
	movs r1, #0x68
	bl sub_08026E70
	movs r0, #3
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042B54
	ldr r0, _08042C30 @ =gUnknown_03000510
	ldr r1, _08042C34 @ =gUnknown_030004D0
	ldrh r1, [r1, #0x12]
	str r1, [sp]
	movs r1, #0x5d
	movs r2, #0x61
	movs r3, #0x11
	bl sub_08026B90
_08042B54:
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r0, #0x69
	movs r1, #0x78
	movs r3, #0
	bl sub_08026E70
	movs r1, #2
	ldrsh r2, [r7, r1]
	movs r0, #0x69
	movs r1, #0x88
	movs r3, #0
	bl sub_08026E70
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08042BB6
	ldr r4, _08042C38 @ =gPlayers
	bl GetMultiplayerId
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x78
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x18
	movs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	movs r0, #6
	ldrsh r2, [r7, r0]
	movs r0, #0x2e
	movs r1, #0x1c
	movs r3, #0
	bl sub_08026E70
	ldr r0, _08042C30 @ =gUnknown_03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0x1d
	movs r2, #0x1c
	movs r3, #3
	bl sub_08026B90
_08042BB6:
	mov r1, sb
	ldr r2, [r1, #0x14]
	movs r0, #0x50
	movs r1, #0x10
	movs r3, #1
	bl sub_08026E70
	mov r0, sb
	ldr r2, [r0, #0x10]
	movs r0, #7
	str r0, [sp]
	movs r0, #0x9a
	movs r1, #0x10
	movs r3, #2
	bl sub_08026D98
	ldr r6, _08042C30 @ =gUnknown_03000510
	ldr r7, _08042C3C @ =0x030004D6
	ldr r4, _08042C40 @ =0x030004EE
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #0
	adds r2, #0xa
	adds r4, #0xa
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x23
	adds r3, r4, #0
	bl sub_08026C40
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #9
	bhi _08042C44
	movs r7, #0
	cmp r7, r0
	bhs _08042C96
_08042C0C:
	lsls r1, r7, #3
	adds r1, #0xa0
	ldr r0, _08042C34 @ =gUnknown_030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042C30 @ =gUnknown_03000510
	movs r2, #0x28
	movs r3, #0x14
	bl sub_08026B90
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r2, r8
	ldrh r2, [r2]
	cmp r7, r2
	blo _08042C0C
	b _08042C96
	.align 2, 0
_08042C30: .4byte gUnknown_03000510
_08042C34: .4byte gUnknown_030004D0
_08042C38: .4byte gPlayers
_08042C3C: .4byte 0x030004D6
_08042C40: .4byte 0x030004EE
_08042C44:
	mov r0, r8
	ldrh r1, [r0]
	movs r4, #0
	subs r5, r7, #6
	cmp r1, #9
	bls _08042C66
_08042C50:
	adds r0, r1, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #9
	bhi _08042C50
_08042C66:
	ldrh r0, [r5, #6]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xa0
	movs r2, #0x27
	movs r3, #0x14
	bl sub_08026B90
	movs r0, #7
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xa8
	movs r2, #0x28
	movs r3, #4
	bl sub_08026B90
	lsls r0, r4, #3
	adds r0, #0xb0
	mov r1, r8
	ldrh r2, [r1]
	movs r1, #0x27
	movs r3, #0
	bl sub_08026E70
_08042C96:
	mov r0, sb
	ldrh r2, [r0, #0x18]
	movs r0, #0x66
	movs r1, #0x26
	movs r3, #2
	bl sub_08026E70
	bl sub_08046004
	str r0, [sp, #0x34]
	movs r7, #0
_08042CAC:
	bl sub_08041294
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08042D04
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #3]
	cmp r0, r7
	bne _08042D04
	adds r0, r1, #0
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _08042CEA
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	adds r2, #1
	movs r0, #0xcc
	movs r3, #2
	bl sub_08022F60
	b _08042D3E
_08042CEA:
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	adds r2, #1
	movs r0, #0xcc
	movs r3, #0
	bl sub_08022F60
	b _08042D3E
_08042D04:
	adds r0, r7, #0
	bl sub_080411D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042D28
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	movs r0, #0xcc
	movs r3, #2
	bl sub_08022F60
	b _08042D3E
_08042D28:
	lsls r5, r7, #3
	adds r1, r5, #0
	adds r1, #0x38
	lsls r4, r7, #2
	mov r2, r8
	adds r0, r2, r4
	ldrh r2, [r0, #4]
	movs r0, #0xcc
	movs r3, #0
	bl sub_08022F60
_08042D3E:
	adds r6, r5, #0
	movs r0, #0
	mov sl, r0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	beq _08042D5C
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne _08042D7C
_08042D5C:
	bl sub_080413B4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bne _08042D7C
	mov r1, r8
	adds r0, r1, r4
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne _08042D7C
	ldrh r0, [r1]
	cmp r0, #0
	bne _08042D7C
	movs r2, #1
	mov sl, r2
_08042D7C:
	add r4, r8
	ldrh r0, [r4, #4]
	cmp r0, #4
	bls _08042D8A
	mov r0, sl
	cmp r0, #0
	beq _08042E2C
_08042D8A:
	movs r5, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	adds r1, r7, #1
	mov sb, r1
	cmp r5, r0
	bge _08042E44
_08042D98:
	mov r2, sl
	cmp r2, #0
	beq _08042DB6
	ldrh r0, [r4, #4]
	cmp r5, r0
	bhs _08042E18
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08041208
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08042DCC
	b _08042DEC
_08042DB6:
	ldrh r0, [r4, #6]
	cmp r0, r5
	bls _08042E04
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08041208
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08042DEC
_08042DCC:
	lsls r1, r5, #3
	adds r1, #0xc0
	ldr r0, _08042DE4 @ =gUnknown_030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042DE8 @ =gUnknown_03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x14
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042DE4: .4byte gUnknown_030004D0
_08042DE8: .4byte gUnknown_03000510
_08042DEC:
	lsls r1, r5, #3
	adds r1, #0xc0
	str r0, [sp]
	ldr r0, _08042E00 @ =gUnknown_03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x13
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042E00: .4byte gUnknown_03000510
_08042E04:
	lsls r1, r5, #3
	adds r1, #0xc0
	movs r0, #2
	str r0, [sp]
	ldr r0, _08042E28 @ =gUnknown_03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x13
	bl sub_08026B90
_08042E18:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r0, [r4, #4]
	adds r0, #1
	cmp r5, r0
	blt _08042D98
	b _08042E44
	.align 2, 0
_08042E28: .4byte gUnknown_03000510
_08042E2C:
	adds r2, r6, #0
	adds r2, #0x38
	ldr r0, _08042E54 @ =gUnknown_030004D0
	ldrh r0, [r0, #0x10]
	str r0, [sp]
	ldr r0, _08042E58 @ =gUnknown_03000510
	movs r1, #0xbc
	movs r3, #0x23
	bl sub_08026B90
	adds r7, #1
	mov sb, r7
_08042E44:
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bhi _08042E50
	b _08042CAC
_08042E50:
	b _08042FE4
	.align 2, 0
_08042E54: .4byte gUnknown_030004D0
_08042E58: .4byte gUnknown_03000510
_08042E5C:
	cmp r0, #9
	beq _08042E62
	b _08042FE4
_08042E62:
	bl sub_0804152C
	adds r4, r0, #0
	bl sub_08046004
	str r0, [sp, #0x34]
	ldrb r0, [r0, #2]
	cmp r0, #0xc
	bne _08042EC0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042E8E
	ldr r0, _08042EBC @ =gUnknown_03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x60
	movs r3, #3
	bl sub_08026B90
_08042E8E:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042EA8
	ldr r0, _08042EBC @ =gUnknown_03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x60
	movs r3, #3
	bl sub_08026B90
_08042EA8:
	ldr r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x60
	movs r3, #2
	bl sub_08026E70
	b _08042ED0
	.align 2, 0
_08042EBC: .4byte gUnknown_03000510
_08042EC0:
	ldr r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x60
	movs r3, #0
	bl sub_08026E70
_08042ED0:
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #2]
	cmp r0, #0xd
	bne _08042F24
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042EF2
	ldr r0, _08042F20 @ =gUnknown_03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x68
	movs r3, #3
	bl sub_08026B90
_08042EF2:
	ldr r0, [r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042F0C
	ldr r0, _08042F20 @ =gUnknown_03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x68
	movs r3, #3
	bl sub_08026B90
_08042F0C:
	ldr r2, [r4]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x68
	movs r3, #2
	bl sub_08026E70
	b _08042F34
	.align 2, 0
_08042F20: .4byte gUnknown_03000510
_08042F24:
	ldr r2, [r4]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x68
	movs r3, #0
	bl sub_08026E70
_08042F34:
	ldr r1, [sp, #0x34]
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _08042F88
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _08042F56
	ldr r0, _08042F84 @ =gUnknown_03000510
	movs r1, #2
	str r1, [sp]
	movs r1, #0x98
	movs r2, #0x70
	movs r3, #3
	bl sub_08026B90
_08042F56:
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _08042F70
	ldr r0, _08042F84 @ =gUnknown_03000510
	movs r1, #1
	str r1, [sp]
	movs r1, #0xb4
	movs r2, #0x70
	movs r3, #3
	bl sub_08026B90
_08042F70:
	ldr r2, [r4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x70
	movs r3, #2
	bl sub_08026E70
	b _08042F98
	.align 2, 0
_08042F84: .4byte gUnknown_03000510
_08042F88:
	ldr r2, [r4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	movs r0, #0xa8
	movs r1, #0x70
	movs r3, #0
	bl sub_08026E70
_08042F98:
	ldr r2, [sp, #0x34]
	ldrb r0, [r2, #2]
	cmp r0, #0xf
	bne _08042FD4
	ldr r5, _08042FC8 @ =gUnknown_03000510
	ldr r4, _08042FCC @ =0x030004D4
	ldr r3, _08042FD0 @ =0x030004EC
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x1d
	adds r2, r4, #0
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x7c
	movs r3, #0x1d
	bl sub_08026B90
	b _08042FE4
	.align 2, 0
_08042FC8: .4byte gUnknown_03000510
_08042FCC: .4byte 0x030004D4
_08042FD0: .4byte 0x030004EC
_08042FD4:
	ldr r0, _08042FF4 @ =gUnknown_03000510
	movs r1, #0
	str r1, [sp]
	movs r1, #0x9c
	movs r2, #0x7c
	movs r3, #0x1e
	bl sub_08026B90
_08042FE4:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042FF4: .4byte gUnknown_03000510
