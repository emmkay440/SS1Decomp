	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08040CAC
sub_08040CAC: @ 0x08040CAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08040CBE
	movs r0, #0
	b _08040CFE
_08040CBE:
	movs r4, #0
	ldr r0, _08040D04 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
_08040CC6:
	movs r3, #0
	adds r5, r0, #1
_08040CCA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08040CE8
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	ldr r0, [r6]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r1, r0
	bne _08040CE8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08040CE8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08040CCA
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08040CC6
	adds r0, r4, #0
_08040CFE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040D04: .4byte gMenuInventory

	thumb_func_start sub_08040D08
sub_08040D08: @ 0x08040D08
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _08040D40 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
_08040D12:
	movs r3, #0
	adds r4, r0, #1
_08040D16:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040D24
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_08040D24:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08040D16
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08040D12
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08040D40: .4byte gMenuInventory

	thumb_func_start sub_08040D44
sub_08040D44: @ 0x08040D44
	push {r4, r5, lr}
	ldr r0, _08040D54 @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	beq _08040D5C
	ldr r0, _08040D58 @ =0x030004A8
	b _08040D5E
	.align 2, 0
_08040D54: .4byte gMenuPage
_08040D58: .4byte 0x030004A8
_08040D5C:
	ldr r0, _08040D94 @ =gUnknown_030004A4
_08040D5E:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
_08040D64:
	movs r3, #0
	adds r4, r0, #1
_08040D68:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040D76
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_08040D76:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08040D68
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08040D64
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08040D94: .4byte gUnknown_030004A4

	thumb_func_start sub_08040D98
sub_08040D98: @ 0x08040D98
	ldr r0, _08040DA0 @ =0x03000479
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08040DA0: .4byte 0x03000479

	thumb_func_start sub_08040DA4
sub_08040DA4: @ 0x08040DA4
	ldr r1, _08040DAC @ =0x03000479
	strb r0, [r1]
	bx lr
	.align 2, 0
_08040DAC: .4byte 0x03000479

	thumb_func_start sub_08040DB0
sub_08040DB0: @ 0x08040DB0
	push {lr}
	movs r1, #0
	bl sub_0800FE5C
	pop {r1}
	bx r1

	thumb_func_start sub_08040DBC
sub_08040DBC: @ 0x08040DBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08040FC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08040DCE
	movs r0, #4
	b _08040E04
_08040DCE:
	ldr r3, [r2]
	lsrs r0, r3, #0xf
	cmp r0, r4
	bhs _08040DE8
	subs r4, r4, r0
	adds r0, r2, #0
	movs r1, #4
	bl bzero
	adds r0, r4, #0
	bl sub_08040DBC
	b _08040E02
_08040DE8:
	subs r1, r0, r4
	lsls r1, r1, #0xf
	ldr r0, _08040E0C @ =0x00007FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	lsrs r0, r0, #0xf
	cmp r0, #0
	bne _08040E02
	adds r0, r2, #0
	movs r1, #4
	bl bzero
_08040E02:
	movs r0, #1
_08040E04:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08040E0C: .4byte 0x00007FFF

	thumb_func_start sub_08040E10
sub_08040E10: @ 0x08040E10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08041014
	adds r2, r0, #0
	cmp r2, #0
	bne _08040E22
	movs r0, #4
	b _08040E4A
_08040E22:
	ldr r3, [r2]
	lsrs r0, r3, #0xf
	cmp r0, r4
	bhs _08040E3C
	subs r4, r4, r0
	adds r0, r2, #0
	movs r1, #4
	bl bzero
	adds r0, r4, #0
	bl sub_08040E10
	b _08040E48
_08040E3C:
	subs r1, r0, r4
	lsls r1, r1, #0xf
	ldr r0, _08040E50 @ =0x00007FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
_08040E48:
	movs r0, #1
_08040E4A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08040E50: .4byte 0x00007FFF

	thumb_func_start sub_08040E54
sub_08040E54: @ 0x08040E54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08040F20
	adds r3, r0, #0
	cmp r3, #0
	bne _08040E78
	bl sub_08040F7C
	adds r3, r0, #0
	cmp r3, #0
	bne _08040E70
	movs r0, #4
	b _08040EB4
_08040E70:
	ldrb r0, [r3]
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r3]
_08040E78:
	ldr r2, [r3]
	lsrs r0, r2, #0xf
	adds r1, r0, r4
	ldr r0, _08040E98 @ =0x000186A0
	cmp r1, r0
	bls _08040EA8
	ldr r4, _08040E9C @ =0xFFFE7960
	adds r0, r1, r4
	ldr r1, _08040EA0 @ =0x00007FFF
	ands r1, r2
	ldr r2, _08040EA4 @ =0xC3500000
	orrs r1, r2
	str r1, [r3]
	bl sub_08040E54
	b _08040EB2
	.align 2, 0
_08040E98: .4byte 0x000186A0
_08040E9C: .4byte 0xFFFE7960
_08040EA0: .4byte 0x00007FFF
_08040EA4: .4byte 0xC3500000
_08040EA8:
	lsls r1, r1, #0xf
	ldr r0, _08040EBC @ =0x00007FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
_08040EB2:
	movs r0, #1
_08040EB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08040EBC: .4byte 0x00007FFF

	thumb_func_start sub_08040EC0
sub_08040EC0: @ 0x08040EC0
	push {lr}
	bl sub_0804096C
	ldr r0, _08040ED4 @ =gMenuSelectedItem
	ldr r0, [r0]
	movs r1, #4
	bl bzero
	pop {r0}
	bx r0
	.align 2, 0
_08040ED4: .4byte gMenuSelectedItem

	thumb_func_start sub_08040ED8
sub_08040ED8: @ 0x08040ED8
	adds r2, r0, #0
	movs r1, #0
	ldrb r0, [r2, #2]
	cmp r0, #2
	beq _08040EFC
	cmp r0, #2
	bgt _08040EEC
	cmp r0, #1
	beq _08040EF2
	b _08040F08
_08040EEC:
	cmp r0, #3
	beq _08040F04
	b _08040F08
_08040EF2:
	ldr r0, _08040EF8 @ =gMenuWeapons
	b _08040F06
	.align 2, 0
_08040EF8: .4byte gMenuWeapons
_08040EFC:
	ldr r0, _08040F00 @ =gMenuEquipment
	b _08040F06
	.align 2, 0
_08040F00: .4byte gMenuEquipment
_08040F04:
	ldr r0, _08040F18 @ =gMenuInventory
_08040F06:
	ldr r1, [r0]
_08040F08:
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08040F1C @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_08040F18: .4byte gMenuInventory
_08040F1C: .4byte gMenuSelectedItem

	thumb_func_start sub_08040F20
sub_08040F20: @ 0x08040F20
	push {r4, r5, r6, r7, lr}
	ldr r0, _08040F30 @ =gMenuInventory
	ldr r0, [r0]
	cmp r0, #0
	bne _08040F34
	movs r0, #0
	b _08040F70
	.align 2, 0
_08040F30: .4byte gMenuInventory
_08040F34:
	movs r5, #0
	movs r6, #0
	adds r2, r0, #0
	movs r0, #0
	ldr r7, _08040F78 @ =0x0001869F
_08040F3E:
	movs r3, #0
	adds r4, r0, #1
_08040F42:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040F5A
	lsrs r0, r1, #0xf
	cmp r0, r5
	bls _08040F5A
	cmp r0, r7
	bgt _08040F5A
	adds r6, r2, #0
	adds r5, r0, #0
_08040F5A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08040F42
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08040F3E
	adds r0, r6, #0
_08040F70:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040F78: .4byte 0x0001869F

	thumb_func_start sub_08040F7C
sub_08040F7C: @ 0x08040F7C
	push {r4, r5, r6, lr}
	movs r1, #0
	ldr r0, _08040FBC @ =gMenuInventory
	ldr r4, [r0]
	movs r0, #0
_08040F86:
	movs r5, #0
	adds r6, r0, #1
_08040F8A:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08040F9E
	adds r0, r4, #0
	movs r1, #4
	bl bzero
	adds r1, r4, #0
_08040F9E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #4
	cmp r5, #4
	bls _08040F8A
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08040F86
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040FBC: .4byte gMenuInventory

	thumb_func_start sub_08040FC0
sub_08040FC0: @ 0x08040FC0
	push {r4, r5, r6, lr}
	ldr r0, _08040FD0 @ =gMenuInventory
	ldr r0, [r0]
	cmp r0, #0
	bne _08040FD4
	movs r0, #0
	b _0804100A
	.align 2, 0
_08040FD0: .4byte gMenuInventory
_08040FD4:
	ldr r5, _08041010 @ =0x000186A1
	movs r6, #0
	adds r2, r0, #0
	movs r0, #0
_08040FDC:
	movs r3, #0
	adds r4, r0, #1
_08040FE0:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040FF4
	lsrs r0, r1, #0xf
	cmp r0, r5
	bhs _08040FF4
	adds r6, r2, #0
	adds r5, r0, #0
_08040FF4:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08040FE0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08040FDC
	adds r0, r6, #0
_0804100A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08041010: .4byte 0x000186A1

	thumb_func_start sub_08041014
sub_08041014: @ 0x08041014
	push {r4, r5, r6, r7, lr}
	ldr r0, _08041024 @ =0x030004A8
	ldr r0, [r0]
	cmp r0, #0
	bne _08041028
	movs r0, #0
	b _0804106A
	.align 2, 0
_08041024: .4byte 0x030004A8
_08041028:
	ldr r5, _08041070 @ =0x000186A1
	movs r7, #0
	adds r2, r0, #0
	movs r1, #0
_08041030:
	movs r0, #0
	adds r6, r1, #1
_08041034:
	movs r3, #0
	adds r4, r0, #1
_08041038:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804104C
	lsrs r0, r1, #0xf
	cmp r0, r5
	bhs _0804104C
	adds r7, r2, #0
	adds r5, r0, #0
_0804104C:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08041038
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08041034
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08041030
	adds r0, r7, #0
_0804106A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08041070: .4byte 0x000186A1

	thumb_func_start sub_08041074
sub_08041074: @ 0x08041074
	ldr r0, _0804107C @ =0x030004B0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	bx lr
	.align 2, 0
_0804107C: .4byte 0x030004B0

	thumb_func_start sub_08041080
sub_08041080: @ 0x08041080
	push {r4, lr}
	sub sp, #0x24
	mov r0, sp
	bl GetSkillBlock
	ldr r4, _080410B4 @ =0x03000480
	mov r0, sp
	ldrh r3, [r4]
	ldrh r2, [r0]
	cmp r3, r2
	beq _080410A8
	ldr r0, _080410B8 @ =0x030004B4
	ldr r1, [r0]
	subs r0, r2, r3
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_080410A8:
	ldr r0, _080410B8 @ =0x030004B4
	ldr r0, [r0]
	add sp, #0x24
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080410B4: .4byte 0x03000480
_080410B8: .4byte 0x030004B4

	thumb_func_start sub_080410BC
sub_080410BC: @ 0x080410BC
	ldr r0, _080410C4 @ =0x030004B4
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080410C4: .4byte 0x030004B4

	thumb_func_start CanSwapItems
CanSwapItems: @ 0x080410C8
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r5, _0804110C @ =gMenuSelectedItem
	ldr r1, [r5]
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041106
	ldr r0, _08041110 @ =gMenuSelectedSlot
	adds r1, r4, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041106
	ldr r0, [r5]
	ldr r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08041118
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08041118
	ldr r0, _08041114 @ =0x03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041118
_08041106:
	movs r0, #0
	b _0804111A
	.align 2, 0
_0804110C: .4byte gMenuSelectedItem
_08041110: .4byte gMenuSelectedSlot
_08041114: .4byte 0x03000479
_08041118:
	movs r0, #1
_0804111A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08041120
sub_08041120: @ 0x08041120
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0804113E
	cmp r0, #3
	bgt _08041134
	cmp r0, #2
	beq _0804113E
	b _0804114A
_08041134:
	cmp r0, #4
	beq _0804113E
	cmp r0, #5
	beq _08041144
	b _0804114A
_0804113E:
	lsls r0, r1, #5
	lsrs r0, r0, #0x1f
	b _0804114C
_08041144:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1f
	b _0804114C
_0804114A:
	movs r0, #0
_0804114C:
	bx lr
	.align 2, 0

	thumb_func_start sub_08041150
sub_08041150: @ 0x08041150
	push {lr}
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r0, #0
	beq _080411C8
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #1
	adds r2, r1, #0
	cmp r0, #4
	bhi _080411C8
	lsls r0, r0, #2
	ldr r1, _08041174 @ =_08041178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041174: .4byte _08041178
_08041178: @ jump table
	.4byte _080411BA @ case 0
	.4byte _0804118C @ case 1
	.4byte _080411A6 @ case 2
	.4byte _0804119C @ case 3
	.4byte _080411B0 @ case 4
_0804118C:
	adds r0, r3, #0
	adds r1, r2, #0
	bl SetWeapon
	bl sub_080140AC
	movs r0, #1
	b _080411CA
_0804119C:
	adds r0, r2, #0
	bl sub_08013A64
	movs r0, #1
	b _080411CA
_080411A6:
	adds r0, r2, #0
	bl SetArmor
	movs r0, #1
	b _080411CA
_080411B0:
	adds r0, r2, #0
	bl sub_08013A84
	movs r0, #1
	b _080411CA
_080411BA:
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x19
	subs r0, #8
	cmp r0, #3
	bhi _080411C8
	movs r0, #1
	b _080411CA
_080411C8:
	movs r0, #0
_080411CA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080411D0
sub_080411D0: @ 0x080411D0
	push {r4, lr}
	sub sp, #0x24
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	bl GetSkillBlock
	lsls r4, r4, #2
	mov r0, sp
	adds r1, r0, r4
	ldr r0, _080411F8 @ =0x030004B4
	ldr r0, [r0]
	adds r0, r0, r4
	ldrh r1, [r1, #4]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bne _080411FC
	movs r0, #0
	b _080411FE
	.align 2, 0
_080411F8: .4byte 0x030004B4
_080411FC:
	movs r0, #1
_080411FE:
	add sp, #0x24
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08041208
sub_08041208: @ 0x08041208
	push {r4, r5, lr}
	sub sp, #0x48
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	add r0, sp, #0x24
	bl GetSkillBlock
	lsls r1, r4, #2
	mov r0, sp
	adds r2, r0, r1
	ldr r0, _08041234 @ =0x030004B4
	ldr r0, [r0]
	adds r0, r0, r1
	ldrh r1, [r2, #0x28]
	ldrh r0, [r0, #4]
	cmp r1, r0
	beq _08041238
	movs r0, #1
	b _0804123A
	.align 2, 0
_08041234: .4byte 0x030004B4
_08041238:
	movs r0, #0
_0804123A:
	cmp r0, #0
	bne _08041252
	mov r0, sp
	bl GetSkillBlock
	lsls r0, r4, #2
	add r0, sp
	ldrh r0, [r0, #6]
	cmp r0, r5
	blo _08041252
	movs r0, #0
	b _08041254
_08041252:
	movs r0, #1
_08041254:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start ApplyAllocatedPoints
ApplyAllocatedPoints: @ 0x0804125C
	push {r4, lr}
	ldr r4, _08041284 @ =0x030004B0
	ldr r0, [r4]
	bl SetStatBlock
	ldr r1, _08041288 @ =0x0300047E
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0804128C @ =0x030004B4
	ldr r0, [r4]
	bl SetSkillBlock
	ldr r1, _08041290 @ =0x03000480
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041284: .4byte 0x030004B0
_08041288: .4byte 0x0300047E
_0804128C: .4byte 0x030004B4
_08041290: .4byte 0x03000480

	thumb_func_start sub_08041294
sub_08041294: @ 0x08041294
	ldr r0, _0804129C @ =0x0300047A
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0804129C: .4byte 0x0300047A

	thumb_func_start sub_080412A0
sub_080412A0: @ 0x080412A0
	ldr r2, _080412B4 @ =0x0300047C
	movs r3, #0xa0
	strb r3, [r2]
	ldr r2, _080412B8 @ =0x0300047B
	strb r3, [r2]
	ldr r2, _080412BC @ =0x0300048C
	str r0, [r2]
	ldr r0, _080412C0 @ =0x03000490
	str r1, [r0]
	bx lr
	.align 2, 0
_080412B4: .4byte 0x0300047C
_080412B8: .4byte 0x0300047B
_080412BC: .4byte 0x0300048C
_080412C0: .4byte 0x03000490

	thumb_func_start HaveSkillsChanged
HaveSkillsChanged: @ 0x080412C4
	push {r4, r5, lr}
	sub sp, #0x24
	mov r0, sp
	bl GetSkillBlock
	movs r3, #0
	ldr r0, _080412F0 @ =0x030004B4
	ldr r4, [r0]
_080412D4:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	adds r2, r4, r0
	ldrh r0, [r1, #6]
	ldrh r5, [r2, #6]
	cmp r0, r5
	bne _080412EC
	ldrh r0, [r1, #4]
	ldrh r2, [r2, #4]
	cmp r0, r2
	beq _080412F4
_080412EC:
	movs r0, #1
	b _08041300
	.align 2, 0
_080412F0: .4byte 0x030004B4
_080412F4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080412D4
	movs r0, #0
_08041300:
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start CycleWeapon
CycleWeapon: @ 0x08041308
	push {lr}
	sub sp, #0x18
	ldr r0, _08041344 @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08041324
	movs r0, #0
	strh r0, [r1]
_08041324:
	bl sub_080140AC
	ldr r0, _08041348 @ =gMenuWeapons
	ldr r0, [r0]
	cmp r0, #0
	beq _08041334
	bl GetWeapons
_08041334:
	bl sub_08016DC0
	bl sub_08016DC0
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_08041344: .4byte gPlayerStats
_08041348: .4byte gMenuWeapons

	thumb_func_start sub_0804134C
sub_0804134C: @ 0x0804134C
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0804136A
	cmp r0, #3
	bgt _08041360
	cmp r0, #2
	beq _0804136A
	b _08041376
_08041360:
	cmp r0, #4
	beq _0804136A
	cmp r0, #5
	beq _08041370
	b _08041376
_0804136A:
	lsls r0, r1, #5
	lsrs r0, r0, #0x1f
	b _08041378
_08041370:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1f
	b _08041378
_08041376:
	movs r0, #0
_08041378:
	bx lr
	.align 2, 0

	thumb_func_start sub_0804137C
sub_0804137C: @ 0x0804137C
	adds r2, r0, #0
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0804139C
	cmp r0, #3
	bgt _08041392
	cmp r0, #2
	beq _0804139C
	b _080413B0
_08041392:
	cmp r0, #4
	beq _0804139C
	cmp r0, #5
	beq _080413A8
	b _080413B0
_0804139C:
	ldrb r1, [r2, #3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	b _080413B0
_080413A8:
	ldrb r1, [r2, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
_080413B0:
	bx lr
	.align 2, 0

	thumb_func_start sub_080413B4
sub_080413B4: @ 0x080413B4
	ldr r0, _080413C0 @ =0x030004C0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080413C0: .4byte 0x030004C0

	thumb_func_start sub_080413C4
sub_080413C4: @ 0x080413C4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _080413EC @ =gMenuPage
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080413E6
	ldr r0, _080413F0 @ =gUnknown_030004A4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #4
	bl bzero
_080413E6:
	pop {r0}
	bx r0
	.align 2, 0
_080413EC: .4byte gMenuPage
_080413F0: .4byte gUnknown_030004A4

	thumb_func_start sub_080413F4
sub_080413F4: @ 0x080413F4
	ldr r1, _08041400 @ =0x030004C0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08041400: .4byte 0x030004C0

	thumb_func_start sub_08041404
sub_08041404: @ 0x08041404
	push {lr}
	sub sp, #0x1c
	mov r0, sp
	bl GetStatBlock
	ldr r0, _08041428 @ =0x030004B0
	ldr r0, [r0]
	bl SetStatBlock
	bl sub_08016DC0
	mov r0, sp
	bl SetStatBlock
	add sp, #0x1c
	pop {r0}
	bx r0
	.align 2, 0
_08041428: .4byte 0x030004B0

	thumb_func_start sub_0804142C
sub_0804142C: @ 0x0804142C
	push {lr}
	sub sp, #0x24
	mov r0, sp
	bl GetSkillBlock
	ldr r0, _08041450 @ =0x030004B4
	ldr r0, [r0]
	bl SetSkillBlock
	bl sub_08016DC0
	mov r0, sp
	bl SetSkillBlock
	add sp, #0x24
	pop {r0}
	bx r0
	.align 2, 0
_08041450: .4byte 0x030004B4

	thumb_func_start sub_08041454
sub_08041454: @ 0x08041454
	push {r4, lr}
	ldr r0, _08041474 @ =gMenuInventory
	ldr r2, [r0]
	movs r3, #0
_0804145C:
	movs r1, #0
	lsls r0, r3, #2
	adds r4, r0, r3
_08041462:
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08041478
	adds r0, r1, r4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08041492
	.align 2, 0
_08041474: .4byte gMenuInventory
_08041478:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, #4
	cmp r1, #4
	bls _08041462
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0804145C
	movs r0, #1
	rsbs r0, r0, #0
_08041492:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08041498
sub_08041498: @ 0x08041498
	push {r4, lr}
	ldr r4, _080414C4 @ =gMenuEquipment
	ldr r0, [r4]
	adds r0, #8
	bl GetCategory5Record
	cmp r0, #0
	beq _080414BC
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080414BC
	ldr r1, [r4]
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
_080414BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080414C4: .4byte gMenuEquipment

	thumb_func_start sub_080414C8
sub_080414C8: @ 0x080414C8
	push {r4, r5, r6, lr}
	ldr r0, _08041500 @ =gMenuInventory
	ldr r4, [r0]
	ldr r0, _08041504 @ =gMenuSelectedItem
	ldr r0, [r0]
	bl sub_08040900
	adds r3, r0, #0
	cmp r3, #0
	bne _080414DE
	movs r3, #1
_080414DE:
	movs r5, #0
	ldr r6, _08041508 @ =0x000186A0
_080414E2:
	movs r2, #0
_080414E4:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080414FA
	cmp r0, #7
	bne _0804150C
	lsrs r0, r1, #0xf
	adds r0, r0, r3
	cmp r0, r6
	bhi _0804150C
_080414FA:
	movs r0, #1
	b _08041524
	.align 2, 0
_08041500: .4byte gMenuInventory
_08041504: .4byte gMenuSelectedItem
_08041508: .4byte 0x000186A0
_0804150C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, #4
	cmp r2, #4
	bls _080414E4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080414E2
	movs r0, #0
_08041524:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804152C
sub_0804152C: @ 0x0804152C
	ldr r0, _08041534 @ =0x030004B8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08041534: .4byte 0x030004B8

	thumb_func_start sub_08041538
sub_08041538: @ 0x08041538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _08041588 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #5
	beq _08041578
	cmp r0, #8
	beq _08041578
	cmp r0, #2
	beq _08041578
	cmp r0, #3
	beq _08041578
	cmp r0, #4
	beq _08041578
	cmp r0, #5
	bne _0804158C
_08041578:
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08041598
	.align 2, 0
_08041588: .4byte 0x030004C8
_0804158C:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_08041598:
	ldr r1, _080415FC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08041600 @ =0x00001F03
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08041604 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08041608 @ =0x00005A01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	movs r1, #0xe0
	lsls r1, r1, #5
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r0, _0804160C @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #8
	bls _080415F2
	b _080418B0
_080415F2:
	lsls r0, r0, #2
	ldr r1, _08041610 @ =_08041614
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080415FC: .4byte 0xFFFF0000
_08041600: .4byte 0x00001F03
_08041604: .4byte 0x00001E02
_08041608: .4byte 0x00005A01
_0804160C: .4byte 0x030004C8
_08041610: .4byte _08041614
_08041614: @ jump table
	.4byte _08041638 @ case 0
	.4byte _08041688 @ case 1
	.4byte _080416D8 @ case 2
	.4byte _08041728 @ case 3
	.4byte _08041778 @ case 4
	.4byte _080418B0 @ case 5
	.4byte _080417C8 @ case 6
	.4byte _08041814 @ case 7
	.4byte _08041860 @ case 8
_08041638:
	movs r0, #2
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041658 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804164C
	b _080418B0
_0804164C:
	lsls r0, r0, #2
	ldr r1, _0804165C @ =_08041660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041658: .4byte 0x03003CA8
_0804165C: .4byte _08041660
_08041660: @ jump table
	.4byte _08041674 @ case 0
	.4byte _08041678 @ case 1
	.4byte _0804167C @ case 2
	.4byte _08041680 @ case 3
	.4byte _08041684 @ case 4
_08041674:
	movs r0, #0x51
	b _080418AA
_08041678:
	movs r0, #0x8a
	b _080418AA
_0804167C:
	movs r0, #0x89
	b _080418AA
_08041680:
	movs r0, #0xbc
	b _080418AA
_08041684:
	movs r0, #0xb5
	b _080418AA
_08041688:
	movs r0, #6
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080416A8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804169C
	b _080418B0
_0804169C:
	lsls r0, r0, #2
	ldr r1, _080416AC @ =_080416B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080416A8: .4byte 0x03003CA8
_080416AC: .4byte _080416B0
_080416B0: @ jump table
	.4byte _080416C4 @ case 0
	.4byte _080416C8 @ case 1
	.4byte _080416CC @ case 2
	.4byte _080416D0 @ case 3
	.4byte _080416D4 @ case 4
_080416C4:
	movs r0, #0x50
	b _080418AA
_080416C8:
	movs r0, #0x9c
	b _080418AA
_080416CC:
	movs r0, #0x9d
	b _080418AA
_080416D0:
	movs r0, #0xba
	b _080418AA
_080416D4:
	movs r0, #0xbb
	b _080418AA
_080416D8:
	movs r0, #0x12
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080416F8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _080416EC
	b _080418B0
_080416EC:
	lsls r0, r0, #2
	ldr r1, _080416FC @ =_08041700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080416F8: .4byte 0x03003CA8
_080416FC: .4byte _08041700
_08041700: @ jump table
	.4byte _08041714 @ case 0
	.4byte _08041718 @ case 1
	.4byte _0804171C @ case 2
	.4byte _08041720 @ case 3
	.4byte _08041724 @ case 4
_08041714:
	movs r0, #0x4f
	b _080418AA
_08041718:
	movs r0, #0x9a
	b _080418AA
_0804171C:
	movs r0, #0x9b
	b _080418AA
_08041720:
	movs r0, #0xb8
	b _080418AA
_08041724:
	movs r0, #0xb9
	b _080418AA
_08041728:
	movs r0, #3
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041748 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804173C
	b _080418B0
_0804173C:
	lsls r0, r0, #2
	ldr r1, _0804174C @ =_08041750
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041748: .4byte 0x03003CA8
_0804174C: .4byte _08041750
_08041750: @ jump table
	.4byte _08041764 @ case 0
	.4byte _08041768 @ case 1
	.4byte _0804176C @ case 2
	.4byte _08041770 @ case 3
	.4byte _08041774 @ case 4
_08041764:
	movs r0, #0x54
	b _080418AA
_08041768:
	movs r0, #0xa0
	b _080418AA
_0804176C:
	movs r0, #0x98
	b _080418AA
_08041770:
	movs r0, #0xbf
	b _080418AA
_08041774:
	movs r0, #0xad
	b _080418AA
_08041778:
	movs r0, #4
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041798 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804178C
	b _080418B0
_0804178C:
	lsls r0, r0, #2
	ldr r1, _0804179C @ =_080417A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041798: .4byte 0x03003CA8
_0804179C: .4byte _080417A0
_080417A0: @ jump table
	.4byte _080417B4 @ case 0
	.4byte _080417B8 @ case 1
	.4byte _080417BC @ case 2
	.4byte _080417C0 @ case 3
	.4byte _080417C4 @ case 4
_080417B4:
	movs r0, #0x59
	b _080418AA
_080417B8:
	movs r0, #0xa1
	b _080418AA
_080417BC:
	movs r0, #0x99
	b _080418AA
_080417C0:
	movs r0, #0xc1
	b _080418AA
_080417C4:
	movs r0, #0xb7
	b _080418AA
_080417C8:
	movs r0, #7
	bl GetDataRecord
	mov r8, r0
	ldr r0, _080417E4 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _080417E8 @ =_080417EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080417E4: .4byte 0x03003CA8
_080417E8: .4byte _080417EC
_080417EC: @ jump table
	.4byte _08041800 @ case 0
	.4byte _08041804 @ case 1
	.4byte _08041808 @ case 2
	.4byte _0804180C @ case 3
	.4byte _08041810 @ case 4
_08041800:
	movs r0, #0x52
	b _080418AA
_08041804:
	movs r0, #0x9e
	b _080418AA
_08041808:
	movs r0, #0x9f
	b _080418AA
_0804180C:
	movs r0, #0xbd
	b _080418AA
_08041810:
	movs r0, #0xbe
	b _080418AA
_08041814:
	movs r0, #0x25
	bl GetDataRecord
	mov r8, r0
	ldr r0, _08041830 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _08041834 @ =_08041838
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041830: .4byte 0x03003CA8
_08041834: .4byte _08041838
_08041838: @ jump table
	.4byte _0804184C @ case 0
	.4byte _08041850 @ case 1
	.4byte _08041854 @ case 2
	.4byte _08041858 @ case 3
	.4byte _0804185C @ case 4
_0804184C:
	movs r0, #0x4e
	b _080418AA
_08041850:
	movs r0, #0x95
	b _080418AA
_08041854:
	movs r0, #0xa4
	b _080418AA
_08041858:
	movs r0, #0xc0
	b _080418AA
_0804185C:
	movs r0, #0xb6
	b _080418AA
_08041860:
	movs r0, #0xa
	bl GetDataRecord
	mov r8, r0
	ldr r0, _0804187C @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080418B0
	lsls r0, r0, #2
	ldr r1, _08041880 @ =_08041884
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804187C: .4byte 0x03003CA8
_08041880: .4byte _08041884
_08041884: @ jump table
	.4byte _08041898 @ case 0
	.4byte _0804189C @ case 1
	.4byte _080418A0 @ case 2
	.4byte _080418A4 @ case 3
	.4byte _080418A8 @ case 4
_08041898:
	movs r0, #0x53
	b _080418AA
_0804189C:
	movs r0, #0x8b
	b _080418AA
_080418A0:
	movs r0, #0x8c
	b _080418AA
_080418A4:
	movs r0, #0xab
	b _080418AA
_080418A8:
	movs r0, #0xac
_080418AA:
	bl GetDataRecord
	adds r6, r0, #0
_080418B0:
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804191C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08041920 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, _08041924 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08041906
	cmp r0, #2
	beq _080418FC
	cmp r0, #3
	beq _080418FC
	cmp r0, #4
	beq _080418FC
	b _08041A8C
_080418FC:
	ldr r1, _08041924 @ =0x030004C8
	ldrb r0, [r1]
	cmp r0, #8
	beq _08041906
	b _08041A3A
_08041906:
	ldr r0, _08041928 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _08041912
	b _08041A66
_08041912:
	lsls r0, r0, #2
	ldr r1, _0804192C @ =_08041930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804191C: .4byte 0x0600F800
_08041920: .4byte 0x0600F000
_08041924: .4byte 0x030004C8
_08041928: .4byte 0x03003CA8
_0804192C: .4byte _08041930
_08041930: @ jump table
	.4byte _08041944 @ case 0
	.4byte _08041974 @ case 1
	.4byte _080419A4 @ case 2
	.4byte _080419D4 @ case 3
	.4byte _08041A04 @ case 4
_08041944:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041968
	cmp r0, #1
	bgt _0804195A
	cmp r0, #0
	beq _08041964
	b _08041A66
_0804195A:
	cmp r0, #2
	beq _0804196C
	cmp r0, #3
	beq _08041970
	b _08041A66
_08041964:
	movs r0, #0x55
	b _08041A32
_08041968:
	movs r0, #0x56
	b _08041A32
_0804196C:
	movs r0, #0x57
	b _08041A32
_08041970:
	movs r0, #0x58
	b _08041A32
_08041974:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041998
	cmp r0, #1
	bgt _0804198A
	cmp r0, #0
	beq _08041994
	b _08041A66
_0804198A:
	cmp r0, #2
	beq _0804199C
	cmp r0, #3
	beq _080419A0
	b _08041A66
_08041994:
	movs r0, #0x8d
	b _08041A32
_08041998:
	movs r0, #0x8f
	b _08041A32
_0804199C:
	movs r0, #0x91
	b _08041A32
_080419A0:
	movs r0, #0x93
	b _08041A32
_080419A4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080419C8
	cmp r0, #1
	bgt _080419BA
	cmp r0, #0
	beq _080419C4
	b _08041A66
_080419BA:
	cmp r0, #2
	beq _080419CC
	cmp r0, #3
	beq _080419D0
	b _08041A66
_080419C4:
	movs r0, #0x8e
	b _08041A32
_080419C8:
	movs r0, #0x90
	b _08041A32
_080419CC:
	movs r0, #0x92
	b _08041A32
_080419D0:
	movs r0, #0x94
	b _08041A32
_080419D4:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080419F8
	cmp r0, #1
	bgt _080419EA
	cmp r0, #0
	beq _080419F4
	b _08041A66
_080419EA:
	cmp r0, #2
	beq _080419FC
	cmp r0, #3
	beq _08041A00
	b _08041A66
_080419F4:
	movs r0, #0xae
	b _08041A32
_080419F8:
	movs r0, #0xb0
	b _08041A32
_080419FC:
	movs r0, #0xb2
	b _08041A32
_08041A00:
	movs r0, #0xb4
	b _08041A32
_08041A04:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08041A28
	cmp r0, #1
	bgt _08041A1A
	cmp r0, #0
	beq _08041A24
	b _08041A66
_08041A1A:
	cmp r0, #2
	beq _08041A2C
	cmp r0, #3
	beq _08041A30
	b _08041A66
_08041A24:
	movs r0, #0xaf
	b _08041A32
_08041A28:
	movs r0, #0xb1
	b _08041A32
_08041A2C:
	movs r0, #0xb3
	b _08041A32
_08041A30:
	movs r0, #0xaa
_08041A32:
	bl GetDataRecord
	adds r7, r0, #0
	b _08041A66
_08041A3A:
	ldrb r0, [r1]
	cmp r0, #3
	beq _08041A54
	cmp r0, #3
	bgt _08041A4A
	cmp r0, #2
	beq _08041A50
	b _08041A60
_08041A4A:
	cmp r0, #4
	beq _08041A58
	b _08041A60
_08041A50:
	movs r0, #0x24
	b _08041A5A
_08041A54:
	movs r0, #0x23
	b _08041A5A
_08041A58:
	movs r0, #0xe
_08041A5A:
	bl GetDataRecord
	adds r7, r0, #0
_08041A60:
	ldr r1, _08041A84 @ =gBgRegsBuffer
	movs r0, #0x4c
	strh r0, [r1, #4]
_08041A66:
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08041A88 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	b _08041AE4
	.align 2, 0
_08041A84: .4byte gBgRegsBuffer
_08041A88: .4byte 0x0600D000
_08041A8C:
	cmp r0, #5
	bne _08041AE4
	movs r0, #5
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B0C @ =0x03000500
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xb
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B10 @ =0x03000504
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08041B14 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	movs r0, #0xc
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B18 @ =0x03000508
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	movs r0, #0xd
	bl GetDataRecord
	adds r7, r0, #0
	ldr r4, _08041B1C @ =0x0300050C
	adds r0, r7, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
_08041AE4:
	mov r1, r8
	ldr r0, [r1]
	bl GetDataRecord
	adds r3, r0, #0
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08041B36
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08041B24
	ldr r1, _08041B20 @ =0x06004000
	b _08041B28
	.align 2, 0
_08041B0C: .4byte 0x03000500
_08041B10: .4byte 0x03000504
_08041B14: .4byte 0x0600D000
_08041B18: .4byte 0x03000508
_08041B1C: .4byte 0x0300050C
_08041B20: .4byte 0x06004000
_08041B24:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08041B28:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08041B46
_08041B36:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08041B46:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r6]
	cmp r0, r1
	beq _08041B9A
	adds r0, r1, #0
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08041B8A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08041B78
	ldr r1, _08041B74 @ =0x06004000
	b _08041B7C
	.align 2, 0
_08041B74: .4byte 0x06004000
_08041B78:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08041B7C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08041B9A
_08041B8A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08041B9A:
	mov r1, r8
	ldrh r0, [r1]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0xf
	bl LoadPalette
	ldr r0, _08041BC8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08041C94
	lsls r0, r0, #2
	ldr r1, _08041BCC @ =_08041BD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041BC8: .4byte 0x03003CA8
_08041BCC: .4byte _08041BD0
_08041BD0: @ jump table
	.4byte _08041BE4 @ case 0
	.4byte _08041C08 @ case 1
	.4byte _08041C2C @ case 2
	.4byte _08041C50 @ case 3
	.4byte _08041C7C @ case 4
_08041BE4:
	ldr r0, _08041BF8 @ =0x03000510
	ldr r1, _08041BFC @ =0x00100069
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C00 @ =0x03000548
	ldr r1, _08041C04 @ =0x0010006A
	b _08041C60
	.align 2, 0
_08041BF8: .4byte 0x03000510
_08041BFC: .4byte 0x00100069
_08041C00: .4byte 0x03000548
_08041C04: .4byte 0x0010006A
_08041C08:
	ldr r0, _08041C1C @ =0x03000510
	ldr r1, _08041C20 @ =0x00100072
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C24 @ =0x03000548
	ldr r1, _08041C28 @ =0x00100073
	b _08041C60
	.align 2, 0
_08041C1C: .4byte 0x03000510
_08041C20: .4byte 0x00100072
_08041C24: .4byte 0x03000548
_08041C28: .4byte 0x00100073
_08041C2C:
	ldr r0, _08041C40 @ =0x03000510
	ldr r1, _08041C44 @ =0x00100071
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C48 @ =0x03000548
	ldr r1, _08041C4C @ =0x0010007B
	b _08041C60
	.align 2, 0
_08041C40: .4byte 0x03000510
_08041C44: .4byte 0x00100071
_08041C48: .4byte 0x03000548
_08041C4C: .4byte 0x0010007B
_08041C50:
	ldr r0, _08041C6C @ =0x03000510
	ldr r1, _08041C70 @ =0x00100084
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041C74 @ =0x03000548
	ldr r1, _08041C78 @ =0x00100083
_08041C60:
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
	b _08041C94
	.align 2, 0
_08041C6C: .4byte 0x03000510
_08041C70: .4byte 0x00100084
_08041C74: .4byte 0x03000548
_08041C78: .4byte 0x00100083
_08041C7C:
	ldr r0, _08041CA4 @ =0x03000510
	ldr r1, _08041CA8 @ =0x0010008E
	movs r2, #9
	movs r3, #5
	bl sub_08026ADC
	ldr r0, _08041CAC @ =0x03000548
	ldr r1, _08041CB0 @ =0x0010008D
	movs r2, #0
	movs r3, #0
	bl sub_08026ADC
_08041C94:
	ldr r0, _08041CB4 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #2
	bne _08041CC0
	ldr r0, _08041CB8 @ =0x03000580
	ldr r1, _08041CBC @ =0x00100057
	b _08041CF0
	.align 2, 0
_08041CA4: .4byte 0x03000510
_08041CA8: .4byte 0x0010008E
_08041CAC: .4byte 0x03000548
_08041CB0: .4byte 0x0010008D
_08041CB4: .4byte 0x030004C8
_08041CB8: .4byte 0x03000580
_08041CBC: .4byte 0x00100057
_08041CC0:
	cmp r0, #3
	bne _08041CD4
	ldr r0, _08041CCC @ =0x03000580
	ldr r1, _08041CD0 @ =0x00100056
	b _08041CF0
	.align 2, 0
_08041CCC: .4byte 0x03000580
_08041CD0: .4byte 0x00100056
_08041CD4:
	cmp r0, #4
	bne _08041CE8
	ldr r0, _08041CE0 @ =0x03000580
	ldr r1, _08041CE4 @ =0x00100055
	b _08041CF0
	.align 2, 0
_08041CE0: .4byte 0x03000580
_08041CE4: .4byte 0x00100055
_08041CE8:
	cmp r0, #5
	bne _08041D04
	ldr r0, _08041CFC @ =0x03000580
	ldr r1, _08041D00 @ =0x00100058
_08041CF0:
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
	b _08041D14
	.align 2, 0
_08041CFC: .4byte 0x03000580
_08041D00: .4byte 0x00100058
_08041D04:
	cmp r0, #7
	bne _08041D14
	ldr r0, _08041D28 @ =0x03000580
	ldr r1, _08041D2C @ =0x0010005E
	movs r2, #0xe
	movs r3, #1
	bl sub_08026ADC
_08041D14:
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041D28: .4byte 0x03000580
_08041D2C: .4byte 0x0010005E

	thumb_func_start sub_08041D30
sub_08041D30: @ 0x08041D30
	push {r4, lr}
	ldr r0, _08041D88 @ =0x030004C8
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	beq _08041D48
	cmp r1, #1
	blt _08041D5A
	cmp r1, #9
	bgt _08041D5A
	cmp r1, #8
	blt _08041D5A
_08041D48:
	ldr r2, _08041D8C @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r1, _08041D90 @ =0x030004CB
	ldrb r0, [r1]
	strh r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08041D5A:
	ldrb r0, [r3]
	cmp r0, #5
	bne _08041DDA
	ldr r4, _08041D94 @ =0x030004C9
	bl sub_08045F84
	ldrb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08041DDA
	bl sub_08045F84
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #1
	beq _08041DAC
	cmp r0, #1
	bgt _08041D98
	cmp r0, #0
	beq _08041DA2
	b _08041DDA
	.align 2, 0
_08041D88: .4byte 0x030004C8
_08041D8C: .4byte gBgRegsBuffer
_08041D90: .4byte 0x030004CB
_08041D94: .4byte 0x030004C9
_08041D98:
	cmp r0, #2
	beq _08041DB4
	cmp r0, #3
	beq _08041DCC
	b _08041DDA
_08041DA2:
	ldr r0, _08041DA8 @ =0x03000500
	b _08041DB6
	.align 2, 0
_08041DA8: .4byte 0x03000500
_08041DAC:
	ldr r0, _08041DB0 @ =0x03000504
	b _08041DB6
	.align 2, 0
_08041DB0: .4byte 0x03000504
_08041DB4:
	ldr r0, _08041DC4 @ =0x03000508
_08041DB6:
	ldr r0, [r0]
	ldr r1, _08041DC8 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	b _08041DDA
	.align 2, 0
_08041DC4: .4byte 0x03000508
_08041DC8: .4byte 0x0600D000
_08041DCC:
	ldr r0, _08041DE0 @ =0x0300050C
	ldr r0, [r0]
	ldr r1, _08041DE4 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
_08041DDA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041DE0: .4byte 0x0300050C
_08041DE4: .4byte 0x0600D000

	thumb_func_start sub_08041DE8
sub_08041DE8: @ 0x08041DE8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _08041E38 @ =0x030004C8
	ldrb r0, [r5]
	cmp r0, #6
	beq _08041E86
	cmp r0, #8
	beq _08041E86
	bl sub_08041EB8
	ldrb r0, [r5]
	cmp r0, #7
	beq _08041E0A
	bl sub_08043D48
	bl sub_08041F34
_08041E0A:
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08041E6C
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_08045F28
	cmp r4, #1
	bne _08041E40
	ldr r0, _08041E3C @ =0x03000580
	add r1, sp, #8
	ldrb r1, [r1]
	adds r1, #0x64
	ldrb r2, [r5, #1]
	movs r3, #0
	str r3, [sp]
	bl sub_08026B90
	b _08041E54
	.align 2, 0
_08041E38: .4byte 0x030004C8
_08041E3C: .4byte 0x03000580
_08041E40:
	ldr r0, _08041E64 @ =0x03000580
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xeb
	movs r2, #0x70
	movs r3, #0
	bl sub_0802706C
_08041E54:
	bl sub_08046044
	ldr r1, _08041E68 @ =gBgRegsBuffer
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	b _08041E7A
	.align 2, 0
_08041E64: .4byte 0x03000580
_08041E68: .4byte gBgRegsBuffer
_08041E6C:
	ldrb r0, [r5]
	cmp r0, #7
	beq _08041E7A
	cmp r0, #1
	beq _08041E82
	bl sub_08042054
_08041E7A:
	ldr r0, _08041E98 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08041E86
_08041E82:
	bl sub_08041FCC
_08041E86:
	bl sub_08040D98
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08041EA0
	ldr r1, _08041E9C @ =0x030004CA
	movs r0, #0
	strb r0, [r1]
	b _08041EAA
	.align 2, 0
_08041E98: .4byte 0x030004C8
_08041E9C: .4byte 0x030004CA
_08041EA0:
	ldr r0, _08041EB4 @ =0x030004CA
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
_08041EAA:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041EB4: .4byte 0x030004CA

	thumb_func_start sub_08041EB8
sub_08041EB8: @ 0x08041EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08040BF8
	adds r4, r0, #0
	bl sub_08040C98
	mov r8, r0
	bl sub_08045F50
	cmp r0, #0
	bne _08041ED6
	movs r0, #0
	mov r8, r0
_08041ED6:
	cmp r4, #0
	beq _08041F28
	movs r0, #0
_08041EDC:
	movs r5, #0
	adds r7, r0, #1
	lsls r6, r0, #4
_08041EE2:
	cmp r8, r4
	bne _08041EEE
	ldr r0, _08041F10 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F14
_08041EEE:
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041EFC
	movs r3, #0
_08041EFC:
	lsls r0, r5, #4
	adds r0, #0x58
	adds r2, r4, #0
	adds r4, #4
	adds r1, r6, #0
	adds r1, #0x1f
	bl sub_08023048
	b _08041F16
	.align 2, 0
_08041F10: .4byte 0x030004CA
_08041F14:
	adds r4, #4
_08041F16:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08041EE2
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08041EDC
_08041F28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08041F34
sub_08041F34: @ 0x08041F34
	push {r4, r5, lr}
	bl sub_08040C3C
	adds r4, r0, #0
	bl sub_08040C98
	adds r5, r0, #0
	bl sub_08045F50
	cmp r0, #0
	bne _08041F4C
	movs r5, #0
_08041F4C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08041F62
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041F64
_08041F62:
	movs r3, #0
_08041F64:
	cmp r5, r4
	bne _08041F70
	ldr r0, _08041F80 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F84
_08041F70:
	adds r2, r4, #0
	adds r4, #4
	movs r0, #0x3c
	movs r1, #0x3f
	bl sub_08023048
	b _08041F86
	.align 2, 0
_08041F80: .4byte 0x030004CA
_08041F84:
	adds r4, #4
_08041F86:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08041F9C
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _08041F9E
_08041F9C:
	movs r3, #0
_08041F9E:
	cmp r5, r4
	beq _08041FB0
	adds r2, r4, #0
	adds r4, #4
	movs r0, #0x3c
	movs r1, #0x5f
	bl sub_08023048
	b _08041FB2
_08041FB0:
	adds r4, #4
_08041FB2:
	cmp r4, #0
	beq _08041FC6
	cmp r5, r4
	beq _08041FC6
	adds r2, r4, #0
	movs r0, #0xb
	movs r1, #0x57
	movs r3, #0
	bl sub_08023048
_08041FC6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08041FCC
sub_08041FCC: @ 0x08041FCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08040C30
	adds r7, r0, #0
	bl sub_08040C98
	bl sub_08045F50
	cmp r7, #0
	beq _08042046
	movs r0, #0
	mov r8, r0
_08041FEA:
	ldrh r0, [r7]
	cmp r0, #0
	beq _08042036
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08040C04
	adds r4, r0, #0
	cmp r4, #0
	beq _08042036
	bl sub_08040CAC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, r8
	lsls r6, r0, #4
	lsls r5, r0, #3
	cmp r3, #0
	beq _08042026
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x27
	movs r2, #2
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08026D98
_08042026:
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r5, #0
	adds r1, #0x20
	adds r2, r4, #0
	movs r3, #0
	bl sub_08023048
_08042036:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, #2
	cmp r0, #2
	bls _08041FEA
_08042046:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08042054
sub_08042054: @ 0x08042054
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08040C48
	adds r4, r0, #0
	bl sub_08040C98
	mov r8, r0
	bl sub_08045F50
	cmp r0, #0
	bne _08042072
	movs r0, #0
	mov r8, r0
_08042072:
	ldr r0, _080420C4 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #5
	bne _0804208A
	bl sub_08045F84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r4, r4, r1
_0804208A:
	cmp r4, #0
	beq _080420E0
	movs r0, #0
_08042090:
	movs r5, #0
	adds r7, r0, #1
	lsls r6, r0, #4
_08042096:
	cmp r8, r4
	bne _080420A2
	ldr r0, _080420C8 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _080420CC
_080420A2:
	adds r0, r4, #0
	bl CanEquipItem
	movs r3, #2
	cmp r0, #0
	beq _080420B0
	movs r3, #0
_080420B0:
	lsls r0, r5, #4
	adds r0, #0xc0
	adds r2, r4, #0
	adds r4, #4
	adds r1, r6, #0
	adds r1, #0x1f
	bl sub_08023048
	b _080420CE
	.align 2, 0
_080420C4: .4byte 0x030004C8
_080420C8: .4byte 0x030004CA
_080420CC:
	adds r4, #4
_080420CE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08042096
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08042090
_080420E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080420EC
sub_080420EC: @ 0x080420EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	add r4, sp, #0x24
	adds r0, r4, #0
	bl sub_08045F28
	ldr r6, _08042170 @ =0x030004C8
	ldrb r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #1
	bls _08042130
	ldr r5, _08042174 @ =0x03000510
	ldr r4, _08042178 @ =0x030004DA
	ldr r3, _0804217C @ =0x030004F2
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xb2
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08026B90
_08042130:
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804213E
	b _080425FA
_0804213E:
	ldrb r1, [r6]
	subs r0, r1, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804214C
	b _080422DC
_0804214C:
	add r0, sp, #0x14
	bl sub_08045F90
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08042180
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0x14
	ldrb r4, [r3]
	movs r3, #6
	subs r3, r3, r4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	b _080421DA
	.align 2, 0
_08042170: .4byte 0x030004C8
_08042174: .4byte 0x03000510
_08042178: .4byte 0x030004DA
_0804217C: .4byte 0x030004F2
_08042180:
	add r6, sp, #0x28
	adds r0, r6, #0
	bl sub_08045114
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080421AE
	cmp r4, #1
	bne _0804219E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	b _080421DA
_0804219E:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	movs r3, #1
	bl sub_08042790
	b _0804220E
_080421AE:
	adds r0, r6, #0
	bl sub_080451B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080421E2
	cmp r0, #1
	bne _080421D2
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	movs r3, #7
	str r3, [sp]
	movs r3, #2
	bl sub_08042790
	b _0804220E
_080421D2:
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	ldr r2, [sp, #0x28]
	str r4, [sp]
_080421DA:
	movs r3, #0
	bl sub_08042790
	b _0804220E
_080421E2:
	bl sub_08045F50
	adds r4, r0, #0
	cmp r4, #0
	bne _0804220E
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	ldr r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804220E
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	lsrs r2, r2, #0xf
	str r4, [sp]
	movs r3, #0
	bl sub_08042790
_0804220E:
	bl sub_08045F50
	cmp r0, #0
	beq _0804221C
	bl sub_08040C98
	b _08042224
_0804221C:
	bl sub_08046004
	bl sub_0804087C
_08042224:
	adds r5, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #2
	cmp r0, #3
	bhi _0804223C
	adds r0, r5, #0
	bl CanEquipItem
	cmp r0, #0
	bne _08042246
_0804223C:
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08042272
_08042246:
	bl GetCurrentWeaponIndex
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080460F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08041150
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042272
	bl sub_08042FF8
	bl ApplyMenuChanges
	bl sub_08016DC0
_08042272:
	bl sub_08045F50
	adds r3, r0, #0
	cmp r3, #0
	beq _080422C4
	ldr r0, _080422B0 @ =0x03000510
	ldrb r1, [r7]
	add r4, sp, #0x24
	ldrb r2, [r4, #1]
	subs r2, #4
	movs r3, #1
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	bl sub_08040C98
	adds r5, r0, #0
	bl CanEquipItem
	cmp r0, #0
	beq _080422B4
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #0
	bl sub_08023048
	b _080425FA
	.align 2, 0
_080422B0: .4byte 0x03000510
_080422B4:
	ldrb r0, [r7]
	ldrb r1, [r4, #1]
	subs r1, #4
	adds r2, r5, #0
	movs r3, #2
	bl sub_08023048
	b _080425FA
_080422C4:
	ldr r0, _080422D8 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080422D8: .4byte 0x03000510
_080422DC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0804238C
	bl sub_08045F78
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08042306
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _0804238C
_08042306:
	bl sub_08046004
	bl sub_0804087C
	adds r5, r0, #0
	bl sub_08041120
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08042374
	adds r0, r5, #0
	bl sub_08040900
	str r0, [sp, #0x28]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	ldr r3, [sp, #0x28]
	cmp r4, r3
	blo _0804234A
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #0
	bl sub_08042790
	b _0804235C
_0804234A:
	ldrb r0, [r7]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	movs r3, #1
	bl sub_08042790
_0804235C:
	ldr r0, _08042370 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #9
	bl sub_08026BC4
	b _080425FA
	.align 2, 0
_08042370: .4byte 0x03000510
_08042374:
	ldr r0, _08042388 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	str r3, [sp]
	movs r3, #9
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_08042388: .4byte 0x03000510
_0804238C:
	ldr r0, _080423B8 @ =0x030004C8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08042396
	b _080424D8
_08042396:
	bl sub_08042614
	bl sub_08046004
	adds r5, r0, #0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080423AE
	b _080425FA
_080423AE:
	lsls r0, r0, #2
	ldr r1, _080423BC @ =_080423C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080423B8: .4byte 0x030004C8
_080423BC: .4byte _080423C0
_080423C0: @ jump table
	.4byte _080425FA @ case 0
	.4byte _080425FA @ case 1
	.4byte _080425FA @ case 2
	.4byte _080425FA @ case 3
	.4byte _080425FA @ case 4
	.4byte _080425FA @ case 5
	.4byte _080423E8 @ case 6
	.4byte _080423E8 @ case 7
	.4byte _08042464 @ case 8
	.4byte _08042464 @ case 9
_080423E8:
	ldrb r1, [r5, #3]
	lsls r1, r1, #4
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804245C @ =0x0300052C
	str r0, [sp, #4]
	adds r4, r0, #0
	subs r4, #0x1c
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	movs r6, #1
	str r6, [sp, #0x10]
	movs r0, #0x3a
	movs r2, #0x16
	movs r3, #0
	bl sub_08003FA4
	bl sub_08041074
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042438
	ldrb r0, [r5, #3]
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042438
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x70
	movs r3, #3
	bl sub_08026B90
_08042438:
	adds r0, r5, #0
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042446
	b _080425FA
_08042446:
	ldr r0, _08042460 @ =0x03000510
	ldrb r2, [r5, #3]
	lsls r2, r2, #4
	adds r2, #0x38
	movs r1, #2
	str r1, [sp]
	movs r1, #0x58
	movs r3, #3
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_0804245C: .4byte 0x0300052C
_08042460: .4byte 0x03000510
_08042464:
	ldrb r1, [r5, #3]
	lsls r1, r1, #3
	adds r1, #0x37
	movs r0, #0
	str r0, [sp]
	ldr r0, _080424CC @ =0x0300052C
	str r0, [sp, #4]
	adds r7, r0, #0
	subs r7, #0x1c
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7]
	str r0, [sp, #0xc]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0x10]
	movs r0, #0x82
	movs r2, #0x16
	movs r3, #1
	bl sub_08003FA4
	bl sub_08041294
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0804249C
	b _080425FA
_0804249C:
	ldr r4, _080424D0 @ =0x030004D8
	ldr r3, _080424D4 @ =0x030004F0
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #0xe
	adds r2, r4, #0
	bl sub_08026C40
	ldrb r2, [r5, #3]
	lsls r2, r2, #3
	movs r0, #0x4b
	subs r0, r0, r6
	asrs r0, r0, #2
	subs r0, #0x40
	subs r2, r2, r0
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd4
	movs r3, #0xe
	bl sub_08026B90
	b _080425FA
	.align 2, 0
_080424CC: .4byte 0x0300052C
_080424D0: .4byte 0x030004D8
_080424D4: .4byte 0x030004F0
_080424D8:
	cmp r0, #9
	beq _080424DE
	b _080425FA
_080424DE:
	bl sub_0804152C
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08042530
	ldr r4, _08042524 @ =0x03000510
	ldr r5, _08042528 @ =0x030004DC
	ldr r3, _0804252C @ =0x030004F4
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x1a
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1a
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
	b _08042562
	.align 2, 0
_08042524: .4byte 0x03000510
_08042528: .4byte 0x030004DC
_0804252C: .4byte 0x030004F4
_08042530:
	ldr r4, _080425A0 @ =0x03000510
	ldr r5, _080425A4 @ =0x030004DC
	ldr r3, _080425A8 @ =0x030004F4
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1b
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x28
	movs r3, #0x1b
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x28
	movs r3, #0x1c
	bl sub_08026B90
_08042562:
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080425B4
	ldr r4, _080425A0 @ =0x03000510
	ldr r5, _080425AC @ =0x030004DE
	ldr r3, _080425B0 @ =0x030004F6
	movs r6, #1
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0x17
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x17
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
	b _080425E8
	.align 2, 0
_080425A0: .4byte 0x03000510
_080425A4: .4byte 0x030004DC
_080425A8: .4byte 0x030004F4
_080425AC: .4byte 0x030004DE
_080425B0: .4byte 0x030004F6
_080425B4:
	ldr r4, _08042608 @ =0x03000510
	ldr r5, _0804260C @ =0x030004DE
	ldr r3, _08042610 @ =0x030004F6
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	adds r2, r5, #0
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0x40
	movs r3, #0x18
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x40
	movs r3, #0x19
	bl sub_08026B90
_080425E8:
	ldr r0, _08042608 @ =0x03000510
	ldrb r1, [r7]
	add r2, sp, #0x24
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
_080425FA:
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042608: .4byte 0x03000510
_0804260C: .4byte 0x030004DE
_08042610: .4byte 0x030004F6

	thumb_func_start sub_08042614
sub_08042614: @ 0x08042614
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08042668 @ =0x03000548
	ldr r5, _0804266C @ =0x030004D4
	ldr r3, _08042670 @ =0x030004EC
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, #0
	bl sub_08026C40
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08042674
	cmp r0, #0
	bge _0804263E
	b _0804277E
_0804263E:
	cmp r0, #9
	ble _08042644
	b _0804277E
_08042644:
	cmp r0, #6
	bge _0804264A
	b _0804277E
_0804264A:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804273C
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804274C
	.align 2, 0
_08042668: .4byte 0x03000548
_0804266C: .4byte 0x030004D4
_08042670: .4byte 0x030004EC
_08042674:
	bl sub_08046004
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _080426D4
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0804269A
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _080426AA
_0804269A:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
_080426AA:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08042758
	ldr r0, _080426CC @ =0x03000548
	ldr r1, _080426D0 @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_080426CC: .4byte 0x03000548
_080426D0: .4byte 0x030004D0
_080426D4:
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080426F0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _08042700
_080426F0:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_08042700:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08042720
	ldr r0, _0804271C @ =0x03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_0804271C: .4byte 0x03000548
_08042720:
	ldr r0, _08042734 @ =0x03000548
	ldr r1, _08042738 @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026BC4
	b _0804277E
	.align 2, 0
_08042734: .4byte 0x03000548
_08042738: .4byte 0x030004D0
_0804273C:
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804274C:
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0804276C
_08042758:
	ldr r0, _08042768 @ =0x03000548
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #6
	bl sub_08026B90
	b _0804277E
	.align 2, 0
_08042768: .4byte 0x03000548
_0804276C:
	ldr r0, _08042788 @ =0x03000548
	ldr r1, _0804278C @ =0x030004D0
	ldrh r1, [r1, #4]
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x1f
	movs r3, #7
	bl sub_08026B90
_0804277E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042788: .4byte 0x03000548
_0804278C: .4byte 0x030004D0

	thumb_func_start sub_08042790
sub_08042790: @ 0x08042790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r2, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	bl sub_080460A0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08042878
	movs r7, #0
	movs r6, #0x19
	bl sub_08046044
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #2
	beq _08042830
	cmp r0, #2
	bgt _080427DC
	cmp r0, #1
	beq _08042840
	b _08042848
_080427DC:
	cmp r0, #3
	beq _080427E6
	cmp r0, #6
	beq _080427F0
	b _08042848
_080427E6:
	ldrb r0, [r5, #3]
	cmp r0, #0x13
	bls _08042848
	movs r6, #0xf3
	b _08042848
_080427F0:
	ldrb r4, [r5, #3]
	adds r0, r4, #1
	movs r1, #3
	bl __modsi3
	ldr r1, _08042818 @ =0x030004C8
	cmp r0, #0
	beq _0804280A
	cmp r4, #0xc
	bne _0804280C
	ldrb r0, [r1]
	cmp r0, #5
	beq _0804281C
_0804280A:
	movs r7, #0xf7
_0804280C:
	ldrb r0, [r1]
	cmp r0, #5
	beq _0804281C
	ldrb r0, [r5, #3]
	b _08042828
	.align 2, 0
_08042818: .4byte 0x030004C8
_0804281C:
	adds r0, r4, #0
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08042828:
	cmp r0, #0xb
	bls _08042848
	movs r6, #0xf3
	b _08042848
_08042830:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08042838
	movs r7, #0xe
_08042838:
	cmp r0, #0
	beq _08042848
	movs r6, #0xf3
	b _08042848
_08042840:
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _08042848
	movs r7, #0xe
_08042848:
	mov r0, r8
	adds r0, #7
	lsls r5, r7, #0x18
	asrs r5, r5, #0x18
	adds r0, r0, r5
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	add r4, sb
	movs r1, #6
	str r1, [sp]
	adds r1, r4, #0
	ldr r2, [sp, #4]
	mov r3, sl
	bl sub_08026D98
	ldr r0, _08042888 @ =0x03000510
	add r5, r8
	ldr r1, [sp, #8]
	str r1, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_08026B90
_08042878:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042888: .4byte 0x03000510

	thumb_func_start sub_0804288C
sub_0804288C: @ 0x0804288C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r5, _08042938 @ =0x030004C8
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
	ldr r0, _08042940 @ =0x03000510
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
_08042938: .4byte 0x030004C8
_0804293C: .4byte 0x00000157
_08042940: .4byte 0x03000510
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
	ldr r6, _08042B00 @ =0x03000510
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
_08042B00: .4byte 0x03000510
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
	ldr r0, _08042C30 @ =0x03000510
	ldr r1, _08042C34 @ =0x030004D0
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
	ldr r0, _08042C30 @ =0x03000510
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
	ldr r6, _08042C30 @ =0x03000510
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
	ldr r0, _08042C34 @ =0x030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042C30 @ =0x03000510
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
_08042C30: .4byte 0x03000510
_08042C34: .4byte 0x030004D0
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
	ldr r0, _08042DE4 @ =0x030004D0
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r0, _08042DE8 @ =0x03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x14
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042DE4: .4byte 0x030004D0
_08042DE8: .4byte 0x03000510
_08042DEC:
	lsls r1, r5, #3
	adds r1, #0xc0
	str r0, [sp]
	ldr r0, _08042E00 @ =0x03000510
	adds r2, r6, #0
	adds r2, #0x38
	movs r3, #0x13
	bl sub_08026B90
	b _08042E18
	.align 2, 0
_08042E00: .4byte 0x03000510
_08042E04:
	lsls r1, r5, #3
	adds r1, #0xc0
	movs r0, #2
	str r0, [sp]
	ldr r0, _08042E28 @ =0x03000510
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
_08042E28: .4byte 0x03000510
_08042E2C:
	adds r2, r6, #0
	adds r2, #0x38
	ldr r0, _08042E54 @ =0x030004D0
	ldrh r0, [r0, #0x10]
	str r0, [sp]
	ldr r0, _08042E58 @ =0x03000510
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
_08042E54: .4byte 0x030004D0
_08042E58: .4byte 0x03000510
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
	ldr r0, _08042EBC @ =0x03000510
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
	ldr r0, _08042EBC @ =0x03000510
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
_08042EBC: .4byte 0x03000510
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
	ldr r0, _08042F20 @ =0x03000510
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
	ldr r0, _08042F20 @ =0x03000510
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
_08042F20: .4byte 0x03000510
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
	ldr r0, _08042F84 @ =0x03000510
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
	ldr r0, _08042F84 @ =0x03000510
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
_08042F84: .4byte 0x03000510
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
	ldr r5, _08042FC8 @ =0x03000510
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
_08042FC8: .4byte 0x03000510
_08042FCC: .4byte 0x030004D4
_08042FD0: .4byte 0x030004EC
_08042FD4:
	ldr r0, _08042FF4 @ =0x03000510
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
_08042FF4: .4byte 0x03000510

	thumb_func_start sub_08042FF8
sub_08042FF8: @ 0x08042FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x50
	bl sub_080460F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0804301C
	bl sub_08016DC0
	bl sub_08014114
	bl sub_08014160
	bl sub_08016DC0
_0804301C:
	add r4, sp, #0x38
	adds r0, r4, #0
	bl sub_08016E4C
	mov r0, sp
	bl sub_08016E24
	bl sub_080460F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r4
	cmp r0, #2
	beq _08043048
	bl sub_08016DC0
	bl sub_08014114
	bl sub_08014160
	bl sub_08016DC0
_08043048:
	add r5, sp, #0x44
	adds r0, r5, #0
	bl sub_08016E4C
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl sub_08016E24
	bl sub_08045F50
	adds r7, r5, #0
	adds r6, r4, #0
	cmp r0, #0
	beq _0804306A
	bl sub_08040C98
	b _08043072
_0804306A:
	bl sub_08046004
	bl sub_0804087C
_08043072:
	adds r4, r0, #0
	adds r0, r4, #0
	bl sub_0800F78C
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080430D2
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #9
	beq _080430AE
	cmp r0, #9
	bgt _08043098
	cmp r0, #8
	beq _080430A2
	b _080430D2
_08043098:
	cmp r0, #0xa
	beq _080430BA
	cmp r0, #0xb
	beq _080430C8
	b _080430D2
_080430A2:
	movs r0, #2
	orrs r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _080430D2
_080430AE:
	movs r0, #4
	orrs r5, r0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	b _080430D2
_080430BA:
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	b _080430D2
_080430C8:
	movs r0, #8
	orrs r5, r0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080430D2:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08043110
	cmp r0, #3
	bgt _080430E6
	cmp r0, #2
	beq _080430F0
	b _08043122
_080430E6:
	cmp r0, #4
	beq _08043108
	cmp r0, #5
	beq _08043118
	b _08043122
_080430F0:
	bl sub_08040C24
	adds r4, r0, #0
	ldr r0, _08043104 @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r4, r4, r0
	b _08043124
	.align 2, 0
_08043104: .4byte gPlayerStats
_08043108:
	bl sub_08040C3C
	adds r4, r0, #0
	b _08043124
_08043110:
	bl sub_08040C3C
	adds r4, r0, #4
	b _08043124
_08043118:
	bl sub_08040C3C
	adds r4, r0, #0
	adds r4, #8
	b _08043124
_08043122:
	movs r4, #0
_08043124:
	cmp r4, #0
	beq _08043186
	adds r0, r4, #0
	bl sub_0800F78C
	orrs r5, r0
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08043186
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #9
	beq _08043162
	cmp r0, #9
	bgt _0804314C
	cmp r0, #8
	beq _08043156
	b _08043186
_0804314C:
	cmp r0, #0xa
	beq _0804316E
	cmp r0, #0xb
	beq _0804317C
	b _08043186
_08043156:
	movs r0, #2
	orrs r5, r0
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _08043186
_08043162:
	movs r0, #4
	orrs r5, r0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	b _08043186
_0804316E:
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
	ldrh r0, [r6, #6]
	adds r0, #1
	strh r0, [r6, #6]
	b _08043186
_0804317C:
	movs r0, #8
	orrs r5, r0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_08043186:
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _0804319A
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_0804319A:
	mov r0, r8
	ldrh r1, [r0, #2]
	ldrh r0, [r7, #2]
	cmp r1, r0
	beq _080431AA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
_080431AA:
	mov r0, sp
	adds r4, r6, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r4, #2]
	cmp r1, r0
	beq _080431BA
	movs r0, #4
	orrs r5, r0
_080431BA:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431CC
	movs r0, #2
	orrs r5, r0
_080431CC:
	mov r0, sp
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431E0
	movs r0, #0x80
	lsls r0, r0, #0xf
	orrs r5, r0
_080431E0:
	mov r0, sp
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080431F2
	movs r0, #8
	orrs r5, r0
_080431F2:
	mov r0, sp
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08043204
	movs r0, #0x40
	orrs r5, r0
_08043204:
	mov r0, sp
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08043216
	movs r0, #0x80
	orrs r5, r0
_08043216:
	mov r0, sp
	movs r2, #0xe
	ldrsh r1, [r0, r2]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _0804322A
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r5, r0
_0804322A:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _0804324C
	mov r0, sp
	ldrh r0, [r0, #0xa]
	ldrh r1, [r4, #0xa]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x48
	movs r1, #0x78
	bl sub_08022F60
_0804324C:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0804326E
	mov r0, sp
	ldrh r0, [r0, #0xc]
	ldrh r1, [r4, #0xc]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r0, #0x48
	movs r1, #0x80
	bl sub_08022F60
_0804326E:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08043292
	mov r0, sp
	ldrh r0, [r0, #0xe]
	ldrh r1, [r4, #0xe]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	movs r0, #0x48
	movs r1, #0x88
	bl sub_08022F60
_08043292:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r5
	cmp r0, #0
	beq _080432BA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0
	ldrsh r1, [r7, r2]
	bl sub_08043DA0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r0, #0x98
	movs r1, #0x78
	bl sub_08022F60
_080432BA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080432E2
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r7, r2]
	bl sub_08043DA0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r0, #0x98
	movs r1, #0x80
	bl sub_08022F60
_080432E2:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08043304
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r4, #2]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #2
	ldrsh r2, [r4, r1]
	movs r0, #0x98
	movs r1, #0x88
	bl sub_08022F60
_08043304:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08043326
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0xe8
	movs r1, #0x78
	bl sub_08022F60
_08043326:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r5
	cmp r0, #0
	beq _0804334A
	mov r0, sp
	ldrh r0, [r0, #6]
	ldrh r1, [r4, #6]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #6
	ldrsh r2, [r4, r1]
	movs r0, #0xe8
	movs r1, #0x80
	bl sub_08022F60
_0804334A:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _0804336C
	mov r0, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r4, #4]
	bl sub_08043DB8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #4
	ldrsh r2, [r4, r0]
	movs r0, #0xe8
	movs r1, #0x88
	bl sub_08022F60
_0804336C:
	add sp, #0x50
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08043378
sub_08043378: @ 0x08043378
	push {r4, r5, r6, lr}
	sub sp, #0x10
	bl sub_080460BC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0804338A
	b _080434E8
_0804338A:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0804339E
	cmp r0, #0xd
	beq _08043480
	bl _08043B1A
_0804339E:
	ldr r0, _080433B4 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #5
	bhi _0804341E
	lsls r0, r0, #2
	ldr r1, _080433B8 @ =_080433BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080433B4: .4byte 0x030004C8
_080433B8: .4byte _080433BC
_080433BC: @ jump table
	.4byte _080433D4 @ case 0
	.4byte _080433E4 @ case 1
	.4byte _080433F4 @ case 2
	.4byte _08043404 @ case 3
	.4byte _0804341E @ case 4
	.4byte _08043414 @ case 5
_080433D4:
	ldr r0, _080433E0 @ =0x00090063
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xdc
	b _0804341E
	.align 2, 0
_080433E0: .4byte 0x00090063
_080433E4:
	ldr r0, _080433F0 @ =0x00090065
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xd2
	b _0804341E
	.align 2, 0
_080433F0: .4byte 0x00090065
_080433F4:
	ldr r0, _08043400 @ =0x00090067
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xc3
	b _0804341E
	.align 2, 0
_08043400: .4byte 0x00090067
_08043404:
	ldr r0, _08043410 @ =0x0009006B
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xd7
	b _0804341E
	.align 2, 0
_08043410: .4byte 0x0009006B
_08043414:
	ldr r0, _08043474 @ =0x00090069
	bl GetDataRecord
	adds r4, r0, #0
	movs r5, #0xcd
_0804341E:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043478 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	add r2, sp, #0xc
	movs r1, #0
	movs r0, #1
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r4, _0804347C @ =0x030004CC
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0804345A
	b _08043B1A
_0804345A:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #0x8c
	bl sub_0800EB30
	ldrb r0, [r4]
	cmp r0, #0x14
	bhi _0804346C
	b _08043B1A
_0804346C:
	movs r0, #0
	strb r0, [r4]
	b _08043B1A
	.align 2, 0
_08043474: .4byte 0x00090069
_08043478: .4byte 0x03003CA0
_0804347C: .4byte 0x030004CC
_08043480:
	ldr r0, _08043498 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #2
	cmp r0, #5
	bls _0804348C
	b _08043AA4
_0804348C:
	lsls r0, r0, #2
	ldr r1, _0804349C @ =_080434A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043498: .4byte 0x030004C8
_0804349C: .4byte _080434A0
_080434A0: @ jump table
	.4byte _080434B8 @ case 0
	.4byte _080434C0 @ case 1
	.4byte _080434C8 @ case 2
	.4byte _080434D0 @ case 3
	.4byte _08043AA4 @ case 4
	.4byte _080434D8 @ case 5
_080434B8:
	ldr r0, _080434BC @ =0x00090064
	b _080434DA
	.align 2, 0
_080434BC: .4byte 0x00090064
_080434C0:
	ldr r0, _080434C4 @ =0x00090066
	b _080434DA
	.align 2, 0
_080434C4: .4byte 0x00090066
_080434C8:
	ldr r0, _080434CC @ =0x00090068
	b _080434DA
	.align 2, 0
_080434CC: .4byte 0x00090068
_080434D0:
	ldr r0, _080434D4 @ =0x0009006C
	b _080434DA
	.align 2, 0
_080434D4: .4byte 0x0009006C
_080434D8:
	ldr r0, _080434E4 @ =0x0009006A
_080434DA:
	bl GetDataRecord
	adds r4, r0, #0
	b _08043AA4
	.align 2, 0
_080434E4: .4byte 0x0009006A
_080434E8:
	ldr r5, _08043518 @ =0x030004C8
	ldrb r0, [r5]
	cmp r0, #8
	beq _080434F2
	b _08043964
_080434F2:
	bl sub_08016F98
	adds r6, r0, #0
	bl sub_08046004
	adds r5, r0, #0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0804350C
	b _08043950
_0804350C:
	lsls r0, r0, #2
	ldr r1, _0804351C @ =_08043520
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043518: .4byte 0x030004C8
_0804351C: .4byte _08043520
_08043520: @ jump table
	.4byte _08043548 @ case 0
	.4byte _08043950 @ case 1
	.4byte _08043950 @ case 2
	.4byte _08043950 @ case 3
	.4byte _08043950 @ case 4
	.4byte _08043950 @ case 5
	.4byte _080436BC @ case 6
	.4byte _08043924 @ case 7
	.4byte _080436F8 @ case 8
	.4byte _08043924 @ case 9
_08043548:
	ldrb r0, [r5, #2]
	cmp r0, #7
	bne _0804360C
	bl sub_08041074
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043560
	ldr r0, _0804355C @ =0x0009001F
	b _080438F2
	.align 2, 0
_0804355C: .4byte 0x0009001F
_08043560:
	ldr r0, _080435D4 @ =0x00090021
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _080435D8 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x64
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	bl sub_08041074
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	movs r2, #0xff
_08043594:
	lsls r0, r1, #1
	add r0, sp
	adds r0, #4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _08043594
	cmp r5, #0x63
	bls _080435DC
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080435CC
	cmp r5, #9
	bhi _080435E0
_080435CC:
	add r1, sp, #4
	movs r0, #0xef
	strh r0, [r1, #2]
	b _080435FA
	.align 2, 0
_080435D4: .4byte 0x00090021
_080435D8: .4byte 0x03003CA0
_080435DC:
	cmp r5, #9
	bls _080435FA
_080435E0:
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080435FA:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xef
	movs r2, #0
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r2, [r0, #6]
	movs r1, #0xc0
	b _08043912
_0804360C:
	bl sub_080410BC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043620
	ldr r0, _0804361C @ =0x00090020
	b _080438F2
	.align 2, 0
_0804361C: .4byte 0x00090020
_08043620:
	ldr r0, _080436B4 @ =0x00090022
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _080436B8 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x74
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	bl sub_080410BC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	movs r2, #0xff
_08043654:
	lsls r0, r1, #1
	add r0, sp
	adds r0, #4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bls _08043654
	cmp r5, #0x63
	bls _08043684
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08043684:
	cmp r5, #9
	bls _080436A2
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xef
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080436A2:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xef
	movs r2, #0
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r2, [r0, #6]
	movs r1, #0xd0
	b _08043912
	.align 2, 0
_080436B4: .4byte 0x00090022
_080436B8: .4byte 0x03003CA0
_080436BC:
	ldrb r0, [r5, #3]
	cmp r0, #1
	beq _080436E0
	cmp r0, #1
	bgt _080436CC
	cmp r0, #0
	beq _080436D6
	b _080438F8
_080436CC:
	cmp r0, #2
	beq _080436E8
	cmp r0, #3
	beq _080436F0
	b _080438F8
_080436D6:
	ldr r0, _080436DC @ =0x00090057
	b _080438F2
	.align 2, 0
_080436DC: .4byte 0x00090057
_080436E0:
	ldr r0, _080436E4 @ =0x0009005A
	b _080438F2
	.align 2, 0
_080436E4: .4byte 0x0009005A
_080436E8:
	ldr r0, _080436EC @ =0x00090059
	b _080438F2
	.align 2, 0
_080436EC: .4byte 0x00090059
_080436F0:
	ldr r0, _080436F4 @ =0x00090058
	b _080438F2
	.align 2, 0
_080436F4: .4byte 0x00090058
_080436F8:
	bl GetPlayerClass
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08043794
	cmp r0, #1
	bgt _0804370E
	cmp r0, #0
	beq _0804371C
	b _080438F8
_0804370E:
	cmp r0, #2
	bne _08043714
	b _0804380C
_08043714:
	cmp r0, #3
	bne _0804371A
	b _08043884
_0804371A:
	b _080438F8
_0804371C:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _08043724
	b _080438F8
_08043724:
	lsls r0, r0, #2
	ldr r1, _08043730 @ =_08043734
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043730: .4byte _08043734
_08043734: @ jump table
	.4byte _08043754 @ case 0
	.4byte _0804375C @ case 1
	.4byte _08043764 @ case 2
	.4byte _0804376C @ case 3
	.4byte _08043774 @ case 4
	.4byte _0804377C @ case 5
	.4byte _08043784 @ case 6
	.4byte _0804378C @ case 7
_08043754:
	ldr r0, _08043758 @ =0x0009002B
	b _080438F2
	.align 2, 0
_08043758: .4byte 0x0009002B
_0804375C:
	ldr r0, _08043760 @ =0x0009002C
	b _080438F2
	.align 2, 0
_08043760: .4byte 0x0009002C
_08043764:
	ldr r0, _08043768 @ =0x0009002D
	b _080438F2
	.align 2, 0
_08043768: .4byte 0x0009002D
_0804376C:
	ldr r0, _08043770 @ =0x0009002E
	b _080438F2
	.align 2, 0
_08043770: .4byte 0x0009002E
_08043774:
	ldr r0, _08043778 @ =0x0009002F
	b _080438F2
	.align 2, 0
_08043778: .4byte 0x0009002F
_0804377C:
	ldr r0, _08043780 @ =0x00090030
	b _080438F2
	.align 2, 0
_08043780: .4byte 0x00090030
_08043784:
	ldr r0, _08043788 @ =0x00090031
	b _080438F2
	.align 2, 0
_08043788: .4byte 0x00090031
_0804378C:
	ldr r0, _08043790 @ =0x00090032
	b _080438F2
	.align 2, 0
_08043790: .4byte 0x00090032
_08043794:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _0804379C
	b _080438F8
_0804379C:
	lsls r0, r0, #2
	ldr r1, _080437A8 @ =_080437AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080437A8: .4byte _080437AC
_080437AC: @ jump table
	.4byte _080437CC @ case 0
	.4byte _080437D4 @ case 1
	.4byte _080437DC @ case 2
	.4byte _080437E4 @ case 3
	.4byte _080437EC @ case 4
	.4byte _080437F4 @ case 5
	.4byte _080437FC @ case 6
	.4byte _08043804 @ case 7
_080437CC:
	ldr r0, _080437D0 @ =0x00090033
	b _080438F2
	.align 2, 0
_080437D0: .4byte 0x00090033
_080437D4:
	ldr r0, _080437D8 @ =0x00090034
	b _080438F2
	.align 2, 0
_080437D8: .4byte 0x00090034
_080437DC:
	ldr r0, _080437E0 @ =0x00090035
	b _080438F2
	.align 2, 0
_080437E0: .4byte 0x00090035
_080437E4:
	ldr r0, _080437E8 @ =0x00090036
	b _080438F2
	.align 2, 0
_080437E8: .4byte 0x00090036
_080437EC:
	ldr r0, _080437F0 @ =0x00090037
	b _080438F2
	.align 2, 0
_080437F0: .4byte 0x00090037
_080437F4:
	ldr r0, _080437F8 @ =0x00090038
	b _080438F2
	.align 2, 0
_080437F8: .4byte 0x00090038
_080437FC:
	ldr r0, _08043800 @ =0x00090039
	b _080438F2
	.align 2, 0
_08043800: .4byte 0x00090039
_08043804:
	ldr r0, _08043808 @ =0x0009003A
	b _080438F2
	.align 2, 0
_08043808: .4byte 0x0009003A
_0804380C:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bls _08043814
	b _080438F8
_08043814:
	lsls r0, r0, #2
	ldr r1, _08043820 @ =_08043824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043820: .4byte _08043824
_08043824: @ jump table
	.4byte _08043844 @ case 0
	.4byte _0804384C @ case 1
	.4byte _08043854 @ case 2
	.4byte _0804385C @ case 3
	.4byte _08043864 @ case 4
	.4byte _0804386C @ case 5
	.4byte _08043874 @ case 6
	.4byte _0804387C @ case 7
_08043844:
	ldr r0, _08043848 @ =0x0009003B
	b _080438F2
	.align 2, 0
_08043848: .4byte 0x0009003B
_0804384C:
	ldr r0, _08043850 @ =0x0009003C
	b _080438F2
	.align 2, 0
_08043850: .4byte 0x0009003C
_08043854:
	ldr r0, _08043858 @ =0x0009003D
	b _080438F2
	.align 2, 0
_08043858: .4byte 0x0009003D
_0804385C:
	ldr r0, _08043860 @ =0x0009003E
	b _080438F2
	.align 2, 0
_08043860: .4byte 0x0009003E
_08043864:
	ldr r0, _08043868 @ =0x0009003F
	b _080438F2
	.align 2, 0
_08043868: .4byte 0x0009003F
_0804386C:
	ldr r0, _08043870 @ =0x00090040
	b _080438F2
	.align 2, 0
_08043870: .4byte 0x00090040
_08043874:
	ldr r0, _08043878 @ =0x00090041
	b _080438F2
	.align 2, 0
_08043878: .4byte 0x00090041
_0804387C:
	ldr r0, _08043880 @ =0x00090042
	b _080438F2
	.align 2, 0
_08043880: .4byte 0x00090042
_08043884:
	ldrb r0, [r5, #3]
	cmp r0, #7
	bhi _080438F8
	lsls r0, r0, #2
	ldr r1, _08043894 @ =_08043898
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043894: .4byte _08043898
_08043898: @ jump table
	.4byte _080438B8 @ case 0
	.4byte _080438C0 @ case 1
	.4byte _080438C8 @ case 2
	.4byte _080438D0 @ case 3
	.4byte _080438D8 @ case 4
	.4byte _080438E0 @ case 5
	.4byte _080438E8 @ case 6
	.4byte _080438F0 @ case 7
_080438B8:
	ldr r0, _080438BC @ =0x00090043
	b _080438F2
	.align 2, 0
_080438BC: .4byte 0x00090043
_080438C0:
	ldr r0, _080438C4 @ =0x00090044
	b _080438F2
	.align 2, 0
_080438C4: .4byte 0x00090044
_080438C8:
	ldr r0, _080438CC @ =0x00090045
	b _080438F2
	.align 2, 0
_080438CC: .4byte 0x00090045
_080438D0:
	ldr r0, _080438D4 @ =0x00090046
	b _080438F2
	.align 2, 0
_080438D4: .4byte 0x00090046
_080438D8:
	ldr r0, _080438DC @ =0x00090047
	b _080438F2
	.align 2, 0
_080438DC: .4byte 0x00090047
_080438E0:
	ldr r0, _080438E4 @ =0x00090048
	b _080438F2
	.align 2, 0
_080438E4: .4byte 0x00090048
_080438E8:
	ldr r0, _080438EC @ =0x00090049
	b _080438F2
	.align 2, 0
_080438EC: .4byte 0x00090049
_080438F0:
	ldr r0, _0804391C @ =0x0009004A
_080438F2:
	bl GetDataRecord
	adds r4, r0, #0
_080438F8:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043920 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
_08043912:
	movs r2, #0x8b
	bl sub_0800EB30
	b _08043950
	.align 2, 0
_0804391C: .4byte 0x0009004A
_08043920: .4byte 0x03003CA0
_08043924:
	ldr r0, _0804395C @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	bl sub_08043B28
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043960 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
_08043950:
	adds r0, r6, #0
	movs r1, #0x9d
	movs r2, #0x78
	bl sub_0800EB30
	b _08043B1A
	.align 2, 0
_0804395C: .4byte 0x0009000D
_08043960: .4byte 0x03003CA0
_08043964:
	cmp r0, #9
	bne _080439F0
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08043976
	b _08043A98
_08043976:
	bl sub_08046004
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	subs r0, #9
	cmp r0, #6
	bls _08043986
	b _08043AA4
_08043986:
	lsls r0, r0, #2
	ldr r1, _08043990 @ =_08043994
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043990: .4byte _08043994
_08043994: @ jump table
	.4byte _080439B0 @ case 0
	.4byte _080439B8 @ case 1
	.4byte _080439C0 @ case 2
	.4byte _080439C8 @ case 3
	.4byte _080439D0 @ case 4
	.4byte _080439D8 @ case 5
	.4byte _080439E0 @ case 6
_080439B0:
	ldr r0, _080439B4 @ =0x0009005C
	b _080439E2
	.align 2, 0
_080439B4: .4byte 0x0009005C
_080439B8:
	ldr r0, _080439BC @ =0x0009005D
	b _080439E2
	.align 2, 0
_080439BC: .4byte 0x0009005D
_080439C0:
	ldr r0, _080439C4 @ =0x0009005E
	b _080439E2
	.align 2, 0
_080439C4: .4byte 0x0009005E
_080439C8:
	ldr r0, _080439CC @ =0x0009005F
	b _080439E2
	.align 2, 0
_080439CC: .4byte 0x0009005F
_080439D0:
	ldr r0, _080439D4 @ =0x00090060
	b _080439E2
	.align 2, 0
_080439D4: .4byte 0x00090060
_080439D8:
	ldr r0, _080439DC @ =0x00090061
	b _080439E2
	.align 2, 0
_080439DC: .4byte 0x00090061
_080439E0:
	ldr r0, _080439EC @ =0x00090062
_080439E2:
	bl GetDataRecord
	adds r4, r0, #0
	b _08043AA4
	.align 2, 0
_080439EC: .4byte 0x00090062
_080439F0:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08043A04
	ldr r0, _08043A00 @ =0x00090005
	b _08043A9A
	.align 2, 0
_08043A00: .4byte 0x00090005
_08043A04:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08043A18
	ldr r0, _08043A14 @ =0x00090001
	b _08043A9A
	.align 2, 0
_08043A14: .4byte 0x00090001
_08043A18:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043A2C
	ldr r0, _08043A28 @ =0x00090002
	b _08043A9A
	.align 2, 0
_08043A28: .4byte 0x00090002
_08043A2C:
	bl sub_08045F78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08043AD0
	ldrb r0, [r5]
	subs r0, #2
	cmp r0, #7
	bhi _08043AA0
	lsls r0, r0, #2
	ldr r1, _08043A4C @ =_08043A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043A4C: .4byte _08043A50
_08043A50: @ jump table
	.4byte _08043A70 @ case 0
	.4byte _08043A78 @ case 1
	.4byte _08043A80 @ case 2
	.4byte _08043A90 @ case 3
	.4byte _08043AA0 @ case 4
	.4byte _08043A88 @ case 5
	.4byte _08043AA0 @ case 6
	.4byte _08043A98 @ case 7
_08043A70:
	ldr r0, _08043A74 @ =0x000900E1
	b _08043A9A
	.align 2, 0
_08043A74: .4byte 0x000900E1
_08043A78:
	ldr r0, _08043A7C @ =0x000900E2
	b _08043A9A
	.align 2, 0
_08043A7C: .4byte 0x000900E2
_08043A80:
	ldr r0, _08043A84 @ =0x000900E3
	b _08043A9A
	.align 2, 0
_08043A84: .4byte 0x000900E3
_08043A88:
	ldr r0, _08043A8C @ =0x000900E0
	b _08043A9A
	.align 2, 0
_08043A8C: .4byte 0x000900E0
_08043A90:
	ldr r0, _08043A94 @ =0x000900DF
	b _08043A9A
	.align 2, 0
_08043A94: .4byte 0x000900DF
_08043A98:
	ldr r0, _08043AC8 @ =0x000900E5
_08043A9A:
	bl GetDataRecord
	adds r4, r0, #0
_08043AA0:
	bl sub_08043B28
_08043AA4:
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08043ACC @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
	b _08043B1A
	.align 2, 0
_08043AC8: .4byte 0x000900E5
_08043ACC: .4byte 0x03003CA0
_08043AD0:
	bl sub_08045F50
	cmp r0, #0
	bne _08043AE2
	bl sub_08046170
	bl sub_0804087C
	b _08043AE6
_08043AE2:
	bl sub_08040C98
_08043AE6:
	adds r4, r0, #0
	bl sub_0804611C
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	movs r0, #0x78
	movs r1, #0x8b
	adds r2, r4, #0
	bl sub_08023330
	bl sub_0804611C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08043B24 @ =0x03000510
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #0x94
	movs r3, #0x25
	bl sub_08026B90
_08043B1A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043B24: .4byte 0x03000510

	thumb_func_start sub_08043B28
sub_08043B28: @ 0x08043B28
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08043B94 @ =0x03000548
	ldr r7, _08043B98 @ =0x030004D0
	ldr r4, _08043B9C @ =0x030004E8
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #2
	adds r4, #2
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	adds r3, r4, #0
	bl sub_08026C40
	bl sub_08045FBC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08043BA0
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x7c
	movs r3, #4
	bl sub_08026BC4
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x7c
	movs r3, #5
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x7c
	movs r3, #8
	bl sub_0802706C
	b _08043BD0
	.align 2, 0
_08043B94: .4byte 0x03000548
_08043B98: .4byte 0x030004D0
_08043B9C: .4byte 0x030004E8
_08043BA0:
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x7c
	movs r3, #4
	bl sub_08026B90
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x7c
	movs r3, #5
	bl sub_08026BC4
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x7c
	movs r3, #9
	bl sub_0802706C
_08043BD0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08043BD8
sub_08043BD8: @ 0x08043BD8
	push {r4, r5, lr}
	ldr r0, _08043C2C @ =0x030004C8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08043C30 @ =0x030004CB
	strb r1, [r0]
	ldr r0, _08043C34 @ =0x030004CA
	strb r1, [r0]
	ldr r2, _08043C38 @ =0x030004C9
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08043C3C @ =0x030004CC
	strb r1, [r0]
	ldr r0, _08043C40 @ =0x030004FC
	movs r1, #0
	str r1, [r0]
	ldr r0, _08043C44 @ =0x03000500
	str r1, [r0]
	ldr r0, _08043C48 @ =0x03000504
	str r1, [r0]
	ldr r0, _08043C4C @ =0x03000508
	str r1, [r0]
	ldr r0, _08043C50 @ =0x0300050C
	str r1, [r0]
	movs r2, #0
	ldr r5, _08043C54 @ =0x030004D0
	movs r3, #0
	ldr r4, _08043C58 @ =0x030004E8
_08043C10:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _08043C10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043C2C: .4byte 0x030004C8
_08043C30: .4byte 0x030004CB
_08043C34: .4byte 0x030004CA
_08043C38: .4byte 0x030004C9
_08043C3C: .4byte 0x030004CC
_08043C40: .4byte 0x030004FC
_08043C44: .4byte 0x03000500
_08043C48: .4byte 0x03000504
_08043C4C: .4byte 0x03000508
_08043C50: .4byte 0x0300050C
_08043C54: .4byte 0x030004D0
_08043C58: .4byte 0x030004E8

	thumb_func_start sub_08043C5C
sub_08043C5C: @ 0x08043C5C
	push {r4, lr}
	ldr r4, _08043CB4 @ =0x030004FC
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C6E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C6E:
	ldr r4, _08043CB8 @ =0x03000500
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C7E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C7E:
	ldr r4, _08043CBC @ =0x03000504
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C8E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C8E:
	ldr r4, _08043CC0 @ =0x03000508
	ldr r0, [r4]
	cmp r0, #0
	beq _08043C9E
	bl Free
	movs r0, #0
	str r0, [r4]
_08043C9E:
	ldr r4, _08043CC4 @ =0x0300050C
	ldr r0, [r4]
	cmp r0, #0
	beq _08043CAE
	bl Free
	movs r0, #0
	str r0, [r4]
_08043CAE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043CB4: .4byte 0x030004FC
_08043CB8: .4byte 0x03000500
_08043CBC: .4byte 0x03000504
_08043CC0: .4byte 0x03000508
_08043CC4: .4byte 0x0300050C

	thumb_func_start sub_08043CC8
sub_08043CC8: @ 0x08043CC8
	push {lr}
	sub sp, #0xc
	bl sub_08041D30
	bl sub_080420EC
	ldr r0, _08043CF8 @ =0x030004C8
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08043CE6
	bl sub_08041DE8
_08043CE6:
	bl sub_0804288C
	bl sub_08043378
	bl sub_08046110
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_08043CF8: .4byte 0x030004C8

	thumb_func_start sub_08043CFC
sub_08043CFC: @ 0x08043CFC
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldr r4, _08043D30 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r4]
	ldr r2, _08043D34 @ =0x030004CB
	ldrb r0, [r2]
	strh r0, [r4, #2]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _08043D38 @ =0x03000510
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x78
	bl sub_08026B90
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043D30: .4byte gBgRegsBuffer
_08043D34: .4byte 0x030004CB
_08043D38: .4byte 0x03000510

	thumb_func_start sub_08043D3C
sub_08043D3C: @ 0x08043D3C
	ldr r1, _08043D44 @ =0x030004C8
	strb r0, [r1]
	bx lr
	.align 2, 0
_08043D44: .4byte 0x030004C8

	thumb_func_start sub_08043D48
sub_08043D48: @ 0x08043D48
	push {r4, r5, r6, lr}
	bl sub_08040C24
	adds r4, r0, #0
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08045F50
	cmp r0, #0
	bne _08043D60
	movs r6, #0
_08043D60:
	cmp r4, #0
	beq _08043D98
	movs r5, #0
_08043D66:
	cmp r6, r4
	bne _08043D72
	ldr r0, _08043D88 @ =0x030004CA
	ldrb r0, [r0]
	cmp r0, #0
	bne _08043D8C
_08043D72:
	lsls r1, r5, #4
	movs r0, #0x2c
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r1, #0x20
	adds r2, r4, #0
	adds r4, #4
	movs r3, #8
	bl sub_08023048
	b _08043D8E
	.align 2, 0
_08043D88: .4byte 0x030004CA
_08043D8C:
	adds r4, #4
_08043D8E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08043D66
_08043D98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08043DA0
sub_08043DA0: @ 0x08043DA0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	cmp r2, r1
	beq _08043DB6
	movs r0, #2
	cmp r2, r1
	ble _08043DB6
	movs r0, #1
_08043DB6:
	bx lr

	thumb_func_start sub_08043DB8
sub_08043DB8: @ 0x08043DB8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	cmp r2, r1
	beq _08043DCE
	movs r0, #2
	cmp r2, r1
	bls _08043DCE
	movs r0, #1
_08043DCE:
	bx lr

	thumb_func_start sub_08043DD0
sub_08043DD0: @ 0x08043DD0
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r3, _08043DFC @ =0xFF00FFFF
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r0
	lsls r1, r1, #0x18
	ldr r0, _08043E00 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043E04
	movs r0, #0
	b _08043E06
	.align 2, 0
_08043DFC: .4byte 0xFF00FFFF
_08043E00: .4byte 0x00FFFFFF
_08043E04:
	movs r0, #2
_08043E06:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08043E0C
sub_08043E0C: @ 0x08043E0C
	push {r4, r5, r6, lr}
	ldr r0, _08043E90 @ =0x030005B8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08043E94 @ =0x030005B9
	strb r1, [r0]
	ldr r0, _08043E98 @ =0x030005C1
	strb r1, [r0]
	ldr r0, _08043E9C @ =0x030005BA
	strb r1, [r0]
	ldr r0, _08043EA0 @ =0x030005BB
	strb r1, [r0]
	ldr r0, _08043EA4 @ =0x030005BC
	strb r1, [r0]
	ldr r0, _08043EA8 @ =0x030005C2
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08043EAC @ =0x030005C4
	strh r4, [r0]
	ldr r0, _08043EB0 @ =0x030005BD
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08043EB4 @ =0x030005C8
	movs r6, #0
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043EB8 @ =0x030005BE
	strb r4, [r0]
	ldr r0, _08043EBC @ =0x030005C0
	strb r4, [r0]
	ldr r0, _08043EC0 @ =0x030005BF
	strb r1, [r0]
	ldr r0, _08043EC4 @ =0x030005CC
	strb r4, [r0, #1]
	movs r5, #4
	strb r5, [r0]
	ldr r0, _08043EC8 @ =0x030005D0
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043ECC @ =0x030005D4
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0]
	strb r4, [r0, #1]
	ldr r0, _08043ED0 @ =0x030005D8
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0xc
	strb r1, [r0, #3]
	bl sub_08045304
	ldr r0, _08043ED4 @ =0x030005DC
	movs r1, #6
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	bl sub_08045304
	ldr r0, _08043ED8 @ =0x030005E0
	strb r4, [r0]
	str r6, [r0, #8]
	str r6, [r0, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043E90: .4byte 0x030005B8
_08043E94: .4byte 0x030005B9
_08043E98: .4byte 0x030005C1
_08043E9C: .4byte 0x030005BA
_08043EA0: .4byte 0x030005BB
_08043EA4: .4byte 0x030005BC
_08043EA8: .4byte 0x030005C2
_08043EAC: .4byte 0x030005C4
_08043EB0: .4byte 0x030005BD
_08043EB4: .4byte 0x030005C8
_08043EB8: .4byte 0x030005BE
_08043EBC: .4byte 0x030005C0
_08043EC0: .4byte 0x030005BF
_08043EC4: .4byte 0x030005CC
_08043EC8: .4byte 0x030005D0
_08043ECC: .4byte 0x030005D4
_08043ED0: .4byte 0x030005D8
_08043ED4: .4byte 0x030005DC
_08043ED8: .4byte 0x030005E0

	thumb_func_start sub_08043EDC
sub_08043EDC: @ 0x08043EDC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08041294
	cmp r0, #0
	beq _08043EEA
	b _08044580
_08043EEA:
	ldr r1, _08043F64 @ =0x030005C2
	strh r0, [r1]
	ldr r0, _08043F68 @ =gKeysRepeat
	ldrh r2, [r0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08043F00
	strh r6, [r5]
_08043F00:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	adds r1, r2, #0
	cmp r0, #0
	beq _08043F0E
	strh r3, [r5]
_08043F0E:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F1A
	strh r3, [r5]
_08043F1A:
	movs r1, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08043F26
	strh r1, [r5]
_08043F26:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08043F32
	ldr r1, _08043F6C @ =0x030005C1
	movs r0, #0
	strb r0, [r1]
_08043F32:
	ldr r0, _08043F70 @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r4, r0, #0x1f
	ands r4, r6
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08043F4E
	movs r4, #0x20
_08043F4E:
	ldr r0, _08043F74 @ =0x030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x10
	bls _08043F5A
	b _08044580
_08043F5A:
	lsls r0, r1, #2
	ldr r1, _08043F78 @ =_08043F7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08043F64: .4byte 0x030005C2
_08043F68: .4byte gKeysRepeat
_08043F6C: .4byte 0x030005C1
_08043F70: .4byte gKeysNew
_08043F74: .4byte 0x030005B8
_08043F78: .4byte _08043F7C
_08043F7C: @ jump table
	.4byte _080440E8 @ case 0
	.4byte _080440E8 @ case 1
	.4byte _08044198 @ case 2
	.4byte _0804424C @ case 3
	.4byte _0804424C @ case 4
	.4byte _0804424C @ case 5
	.4byte _08044288 @ case 6
	.4byte _0804424C @ case 7
	.4byte _08044328 @ case 8
	.4byte _0804424C @ case 9
	.4byte _080443C8 @ case 10
	.4byte _08043FC0 @ case 11
	.4byte _08044580 @ case 12
	.4byte _0804456C @ case 13
	.4byte _08043FF8 @ case 14
	.4byte _0804407C @ case 15
	.4byte _0804424C @ case 16
_08043FC0:
	ldr r2, _08043FEC @ =0x030005C8
	ldr r3, _08043FF0 @ =0x030005BA
	ldrb r0, [r2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r2]
	subs r1, #2
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x88
	bls _08043FDA
	b _08044580
_08043FDA:
	movs r0, #0xc
	strb r0, [r6]
	ldr r1, _08043FF4 @ =0x030005D4
	movs r0, #0x50
	strb r0, [r1]
	movs r0, #0x11
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_08043FEC: .4byte 0x030005C8
_08043FF0: .4byte 0x030005BA
_08043FF4: .4byte 0x030005D4
_08043FF8:
	ldr r0, _08044030 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _08044040
	ldr r1, _08044034 @ =0x030005C8
	ldr r3, _08044038 @ =0x030005BA
	ldrb r0, [r3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #2
	strb r0, [r3]
	ldr r4, _0804403C @ =0x030005D4
	ldrb r0, [r4]
	ldrb r1, [r4, #3]
	subs r0, r0, r1
	strb r0, [r4]
	subs r1, #2
	strb r1, [r4, #3]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xd7
	bhi _08044028
	b _08044580
_08044028:
	movs r0, #0
	strb r0, [r6]
	b _0804404C
	.align 2, 0
_08044030: .4byte 0x030005B9
_08044034: .4byte 0x030005C8
_08044038: .4byte 0x030005BA
_0804403C: .4byte 0x030005D4
_08044040:
	ldr r1, _0804406C @ =0x030005C8
	movs r2, #0
	movs r0, #0xd8
	strb r0, [r1]
	strb r2, [r6]
	ldr r4, _08044070 @ =0x030005D4
_0804404C:
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08045304
	ldr r1, _08044074 @ =0x030005D0
	ldr r0, [r4]
	str r0, [r1]
	bl sub_08045E14
	ldr r1, _08044078 @ =0x030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_0804406C: .4byte 0x030005C8
_08044070: .4byte 0x030005D4
_08044074: .4byte 0x030005D0
_08044078: .4byte 0x030005BF
_0804407C:
	ldr r0, _080440B8 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #7
	beq _080440CC
	ldr r1, _080440BC @ =0x030005C8
	ldr r2, _080440C0 @ =0x030005BA
	ldrb r3, [r1]
	ldrb r0, [r2]
	subs r3, r3, r0
	strb r3, [r1]
	subs r0, #2
	strb r0, [r2]
	ldr r1, _080440C4 @ =0x030005D4
	ldrb r0, [r1, #3]
	ldrb r4, [r1]
	adds r2, r0, r4
	strb r2, [r1]
	adds r0, #3
	strb r0, [r1, #3]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x88
	bls _080440AC
	b _08044580
_080440AC:
	movs r0, #0xd
	strb r0, [r6]
	ldr r1, _080440C8 @ =0x030005D0
	movs r0, #0
	strb r0, [r1, #3]
	b _08044580
	.align 2, 0
_080440B8: .4byte 0x030005B9
_080440BC: .4byte 0x030005C8
_080440C0: .4byte 0x030005BA
_080440C4: .4byte 0x030005D4
_080440C8: .4byte 0x030005D0
_080440CC:
	ldr r1, _080440E0 @ =0x030005C8
	movs r2, #0
	movs r0, #0x87
	strb r0, [r1]
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, _080440E4 @ =0x030005D0
	strb r2, [r0, #3]
	b _08044580
	.align 2, 0
_080440E0: .4byte 0x030005C8
_080440E4: .4byte 0x030005D0
_080440E8:
	ldr r0, _0804410C @ =0x030005B9
	ldrb r4, [r0]
	cmp r4, #8
	bne _08044148
	ldr r3, _08044110 @ =0x030005D0
	ldrb r1, [r3, #2]
	lsls r1, r1, #0x10
	ldr r2, _08044114 @ =0xFF00FFFF
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044118
	cmp r1, #0x20
	beq _08044124
	b _0804412C
	.align 2, 0
_0804410C: .4byte 0x030005B9
_08044110: .4byte 0x030005D0
_08044114: .4byte 0xFF00FFFF
_08044118:
	ldr r0, _08044120 @ =0x030005D4
	strb r4, [r0, #2]
	strb r4, [r3, #2]
	b _0804412C
	.align 2, 0
_08044120: .4byte 0x030005D4
_08044124:
	ldr r1, _08044144 @ =0x030005D4
	movs r0, #7
	strb r0, [r1, #2]
	strb r0, [r3, #2]
_0804412C:
	ldr r0, [sp]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r3, #2]
	cmp r0, r3
	bne _0804413C
	b _08044580
_0804413C:
	movs r0, #0x62
	bl PlaySE
	b _08044580
	.align 2, 0
_08044144: .4byte 0x030005D4
_08044148:
	cmp r4, #9
	bne _0804416C
	ldr r4, _08044168 @ =0x030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_08045D80
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	b _0804418A
	.align 2, 0
_08044168: .4byte 0x030005D0
_0804416C:
	ldr r4, _08044190 @ =0x030005D0
	ldr r0, [r4]
	str r0, [sp]
	bl sub_080453DC
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r4, [r4, #2]
	cmp r0, r4
	beq _0804418A
	bl sub_0803F3E0
	ldr r1, _08044194 @ =0x030005C0
	movs r0, #0
	strb r0, [r1]
_0804418A:
	bl sub_08045E14
	b _08044580
	.align 2, 0
_08044190: .4byte 0x030005D0
_08044194: .4byte 0x030005C0
_08044198:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080441C8
	cmp r1, #0x20
	bgt _080441A8
	cmp r1, #0x10
	beq _080441B2
	b _08044580
_080441A8:
	cmp r1, #0x40
	beq _0804420C
	cmp r1, #0x80
	beq _080441DC
	b _08044580
_080441B2:
	ldr r1, _080441C4 @ =0x030005E0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441BC
	b _08044580
_080441BC:
	subs r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441C4: .4byte 0x030005E0
_080441C8:
	ldr r1, _080441D8 @ =0x030005E0
	ldrb r0, [r1]
	cmp r0, #4
	bls _080441D2
	b _08044580
_080441D2:
	adds r0, #1
	strb r0, [r1]
	b _08044580
	.align 2, 0
_080441D8: .4byte 0x030005E0
_080441DC:
	ldr r1, _080441F0 @ =0x030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080441F4
	movs r0, #9
	b _080441F6
	.align 2, 0
_080441F0: .4byte 0x030005E0
_080441F4:
	subs r0, #1
_080441F6:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044208 @ =0x030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bhi _08044234
	b _08044244
	.align 2, 0
_08044208: .4byte 0x030005E0
_0804420C:
	ldr r1, _08044220 @ =0x030005E0
	adds r0, r1, #1
	ldrb r1, [r1]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #9
	bne _08044224
	movs r0, #0
	b _08044226
	.align 2, 0
_08044220: .4byte 0x030005E0
_08044224:
	adds r0, #1
_08044226:
	strb r0, [r1]
	bl sub_08045FD4
	ldr r4, _08044240 @ =0x030005E0
	ldr r1, [r4, #8]
	cmp r0, r1
	bls _08044244
_08044234:
	str r1, [r4, #0xc]
	adds r0, r1, #0
	bl sub_08045EA8
	b _08044580
	.align 2, 0
_08044240: .4byte 0x030005E0
_08044244:
	bl sub_08045FD4
	str r0, [r4, #0xc]
	b _08044580
_0804424C:
	ldrh r1, [r5]
	cmp r1, #0x10
	beq _08044258
	cmp r1, #0x20
	beq _08044270
	b _08044580
_08044258:
	ldr r4, _0804426C @ =0x030005BD
	ldrb r0, [r4]
	cmp r0, #0
	beq _08044266
	movs r0, #0x62
	bl PlaySE
_08044266:
	movs r0, #0
	strb r0, [r4]
	b _08044580
	.align 2, 0
_0804426C: .4byte 0x030005BD
_08044270:
	ldr r4, _08044284 @ =0x030005BD
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804427E
	movs r0, #0x62
	bl PlaySE
_0804427E:
	movs r0, #1
	strb r0, [r4]
	b _08044580
	.align 2, 0
_08044284: .4byte 0x030005BD
_08044288:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _080442B4
	cmp r1, #0x20
	bgt _08044298
	cmp r1, #0x10
	beq _080442A2
	b _080443B6
_08044298:
	cmp r1, #0x40
	beq _080442FC
	cmp r1, #0x80
	beq _080442D0
	b _080443B6
_080442A2:
	ldr r0, _080442B0 @ =0x030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _080442BE
	b _08044370
	.align 2, 0
_080442B0: .4byte 0x030005D4
_080442B4:
	ldr r0, _080442CC @ =0x030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_080442BE:
	movs r0, #0x62
	bl PlaySE
	bl sub_08041404
	b _080443B6
	.align 2, 0
_080442CC: .4byte 0x030005D4
_080442D0:
	ldr r4, _080442E4 @ =0x030005D4
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080442E8
	movs r0, #0
	b _080442F8
	.align 2, 0
_080442E4: .4byte 0x030005D4
_080442E8:
	bl GetPlayerClass
	cmp r0, #1
	beq _08044390
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _08044390
	adds r0, #1
_080442F8:
	strb r0, [r4, #3]
	b _08044390
_080442FC:
	ldr r1, _08044308 @ =0x030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0804430C
	subs r0, #1
	b _0804430E
	.align 2, 0
_08044308: .4byte 0x030005D4
_0804430C:
	movs r0, #3
_0804430E:
	strb r0, [r1, #3]
	bl GetPlayerClass
	cmp r0, #1
	beq _080443B0
	ldr r1, _08044324 @ =0x030005D4
	ldrb r0, [r1, #3]
	cmp r0, #2
	bne _080443B0
	subs r0, #1
	b _080443AE
	.align 2, 0
_08044324: .4byte 0x030005D4
_08044328:
	ldrh r1, [r5]
	cmp r1, #0x20
	beq _08044354
	cmp r1, #0x20
	bgt _08044338
	cmp r1, #0x10
	beq _08044342
	b _080443B6
_08044338:
	cmp r1, #0x40
	beq _0804439C
	cmp r1, #0x80
	beq _0804437C
	b _080443B6
_08044342:
	ldr r0, _08044350 @ =0x030005D4
	bl sub_0803FC00
	cmp r0, #0
	bne _0804435E
	b _08044370
	.align 2, 0
_08044350: .4byte 0x030005D4
_08044354:
	ldr r0, _0804436C @ =0x030005D4
	bl sub_0803FD3C
	cmp r0, #0
	beq _08044370
_0804435E:
	movs r0, #0x62
	bl PlaySE
	bl sub_0804142C
	b _080443B6
	.align 2, 0
_0804436C: .4byte 0x030005D4
_08044370:
	cmp r4, #0
	beq _080443B6
	movs r0, #0x61
	bl PlaySE
	b _080443B6
_0804437C:
	ldr r1, _08044398 @ =0x030005D4
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08044390
	movs r0, #0
	strb r0, [r1, #3]
_08044390:
	movs r0, #0x62
	bl PlaySE
	b _080443B6
	.align 2, 0
_08044398: .4byte 0x030005D4
_0804439C:
	ldr r1, _080443A8 @ =0x030005D4
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080443AC
	subs r0, #1
	b _080443AE
	.align 2, 0
_080443A8: .4byte 0x030005D4
_080443AC:
	movs r0, #7
_080443AE:
	strb r0, [r1, #3]
_080443B0:
	movs r0, #0x62
	bl PlaySE
_080443B6:
	ldr r0, _080443C0 @ =0x030005D0
	ldr r1, _080443C4 @ =0x030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0, #3]
	b _08044580
	.align 2, 0
_080443C0: .4byte 0x030005D0
_080443C4: .4byte 0x030005D4
_080443C8:
	ldr r5, _080443EC @ =0x030005D0
	ldr r0, [r5]
	str r0, [sp]
	bl sub_0804152C
	adds r4, r0, #0
	ldr r3, [r4]
	ldr r0, _080443F0 @ =0x030005C2
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804444A
	cmp r0, #0x20
	bgt _080443F8
	cmp r0, #0x10
	beq _08044408
	ldr r6, _080443F4 @ =0x030005D4
	b _080444F8
	.align 2, 0
_080443EC: .4byte 0x030005D0
_080443F0: .4byte 0x030005C2
_080443F4: .4byte 0x030005D4
_080443F8:
	cmp r0, #0x40
	beq _080444C8
	cmp r0, #0x80
	beq _080444E0
	ldr r6, _08044404 @ =0x030005D4
	b _080444F8
	.align 2, 0
_08044404: .4byte 0x030005D4
_08044408:
	ldr r0, _0804441C @ =0x030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044432
	cmp r1, #0xd
	bgt _08044420
	cmp r1, #0xc
	beq _08044426
	b _080444F8
	.align 2, 0
_0804441C: .4byte 0x030005D4
_08044420:
	cmp r1, #0xe
	beq _0804443E
	b _080444F8
_08044426:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044474
_08044432:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r1, r0, #1
	b _08044492
_0804443E:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bgt _080444F8
	adds r0, #1
	b _080444B2
_0804444A:
	ldr r0, _08044460 @ =0x030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xd
	beq _08044488
	cmp r1, #0xd
	bgt _08044464
	cmp r1, #0xc
	beq _0804446A
	b _080444F8
	.align 2, 0
_08044460: .4byte 0x030005D4
_08044464:
	cmp r1, #0xe
	beq _080444A8
	b _080444F8
_0804446A:
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044474:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	b _080444F8
_08044488:
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r1, r0, #1
_08044492:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r4]
	ldr r0, _080444A4 @ =0xFFFFF07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	b _080444F8
	.align 2, 0
_080444A4: .4byte 0xFFFFF07F
_080444A8:
	lsls r0, r3, #0xf
	lsrs r0, r0, #0x1b
	cmp r0, #0
	ble _080444F8
	subs r0, #1
_080444B2:
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _080444C4 @ =0xFFFE0FFF
	ands r1, r3
	orrs r1, r0
	str r1, [r4]
	b _080444F8
	.align 2, 0
_080444C4: .4byte 0xFFFE0FFF
_080444C8:
	ldr r0, _080444D8 @ =0x030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xc
	beq _080444DC
	subs r0, r1, #1
	b _080444F6
	.align 2, 0
_080444D8: .4byte 0x030005D4
_080444DC:
	movs r0, #0xf
	b _080444F6
_080444E0:
	ldr r0, _080444F0 @ =0x030005D4
	ldrb r1, [r0, #2]
	adds r6, r0, #0
	cmp r1, #0xf
	beq _080444F4
	adds r0, r1, #1
	b _080444F6
	.align 2, 0
_080444F0: .4byte 0x030005D4
_080444F4:
	movs r0, #0xc
_080444F6:
	strb r0, [r5, #2]
_080444F8:
	ldr r1, _08044510 @ =0x030005D0
	ldr r0, [r1]
	str r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08044514
	bl sub_0803F3E0
	b _08044524
	.align 2, 0
_08044510: .4byte 0x030005D0
_08044514:
	ldr r0, [r4]
	ldr r1, _08044560 @ =0x0001FFFC
	ands r0, r1
	ands r3, r1
	cmp r0, r3
	beq _08044524
	bl sub_0803F3E0
_08044524:
	bl ApplyMenuChanges
	ldr r3, _08044564 @ =gPaletteBuffer
	ldr r2, [r4]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xa
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1b
	lsls r0, r0, #5
	orrs r1, r0
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	orrs r2, r1
	movs r1, #0xf1
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0
	strh r2, [r0]
	ldr r0, _08044568 @ =gPaletteBufferQueued
	strh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #0xf
	movs r2, #1
	bl LoadPalette
	b _08044580
	.align 2, 0
_08044560: .4byte 0x0001FFFC
_08044564: .4byte gPaletteBuffer
_08044568: .4byte gPaletteBufferQueued
_0804456C:
	ldr r2, _08044588 @ =0x030005D0
	ldrb r0, [r2, #3]
	cmp r0, #0x32
	bne _0804457A
	ldr r1, _0804458C @ =0x030005BC
	movs r0, #1
	strb r0, [r1]
_0804457A:
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
_08044580:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044588: .4byte 0x030005D0
_0804458C: .4byte 0x030005BC

	thumb_func_start sub_08044590
sub_08044590: @ 0x08044590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl sub_0803FCD8
	cmp r0, #0
	beq _080445A4
	bl _08045104
_080445A4:
	ldr r0, _0804464C @ =0x030005C2
	ldrh r3, [r0]
	cmp r3, #0
	beq _080445B0
	bl _08045104
_080445B0:
	ldr r0, _08044650 @ =0x030005B8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #1
	bhi _080445CA
	ldr r0, _08044654 @ =0x030005D4
	ldr r1, _08044658 @ =0x030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _080445CA
	bl _08045104
_080445CA:
	ldr r2, _0804465C @ =0x030005C4
	strh r3, [r2]
	ldr r3, _08044660 @ =gKeysNew
	ldrh r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080445E4
	strh r5, [r2]
	ldr r1, _08044664 @ =0x030005C1
	movs r0, #1
	strb r0, [r1]
_080445E4:
	ldrh r3, [r3]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _080445F4
	strh r4, [r2]
_080445F4:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044602
	strh r4, [r2]
_08044602:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08044610
	strh r4, [r2]
_08044610:
	ldr r0, _08044668 @ =gKeysHeld
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08044622
	ldr r1, _08044664 @ =0x030005C1
	movs r0, #0
	strb r0, [r1]
_08044622:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08044632
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
_08044632:
	ldrh r0, [r2]
	cmp r0, #1
	beq _0804463A
	b _08044C5E
_0804463A:
	ldrb r0, [r6]
	cmp r0, #0x10
	bls _08044642
	b _08044C5E
_08044642:
	lsls r0, r0, #2
	ldr r1, _0804466C @ =_08044670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804464C: .4byte 0x030005C2
_08044650: .4byte 0x030005B8
_08044654: .4byte 0x030005D4
_08044658: .4byte 0x030005D0
_0804465C: .4byte 0x030005C4
_08044660: .4byte gKeysNew
_08044664: .4byte 0x030005C1
_08044668: .4byte gKeysHeld
_0804466C: .4byte _08044670
_08044670: @ jump table
	.4byte _080446C8 @ case 0
	.4byte _08044848 @ case 1
	.4byte _08044818 @ case 2
	.4byte _08044A9C @ case 3
	.4byte _08044A02 @ case 4
	.4byte _08044A4C @ case 5
	.4byte _08044BC4 @ case 6
	.4byte _08044B38 @ case 7
	.4byte _08044BE0 @ case 8
	.4byte _08044B38 @ case 9
	.4byte _08044C04 @ case 10
	.4byte _08044C5E @ case 11
	.4byte _080446B4 @ case 12
	.4byte _08044C5E @ case 13
	.4byte _08044C5E @ case 14
	.4byte _08044C5E @ case 15
	.4byte _08044B6A @ case 16
_080446B4:
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080446C4 @ =0x030005B8
	movs r0, #0xe
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_080446C4: .4byte 0x030005B8
_080446C8:
	ldr r0, _080446E0 @ =0x030005B9
	ldrb r2, [r0]
	cmp r2, #8
	bne _0804470C
	ldr r0, _080446E4 @ =0x030005D4
	ldrb r1, [r0, #2]
	adds r3, r0, #0
	cmp r1, #7
	bne _080446E8
	movs r0, #6
	strb r0, [r6]
	b _080446EA
	.align 2, 0
_080446E0: .4byte 0x030005B9
_080446E4: .4byte 0x030005D4
_080446E8:
	strb r2, [r6]
_080446EA:
	movs r1, #0
	strb r1, [r3, #3]
	ldr r0, _08044708 @ =0x030005D0
	strb r1, [r0, #3]
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #1
	movs r3, #6
	bl sub_080044E4
	b _08044BF4
	.align 2, 0
_08044708: .4byte 0x030005D0
_0804470C:
	cmp r2, #9
	bne _0804477C
	bl sub_0804152C
	adds r2, r0, #0
	ldr r3, _08044730 @ =0x030005D4
	ldrb r0, [r3, #2]
	cmp r0, #9
	bne _0804473A
	ldr r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08044734
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	b _0804474C
	.align 2, 0
_08044730: .4byte 0x030005D4
_08044734:
	ldrb r0, [r2]
	movs r1, #1
	b _08044756
_0804473A:
	cmp r0, #0xa
	bne _0804475C
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08044752
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
_0804474C:
	ands r0, r1
	strb r0, [r2]
	b _0804476E
_08044752:
	ldrb r0, [r2]
	movs r1, #2
_08044756:
	orrs r0, r1
	strb r0, [r2]
	b _0804476E
_0804475C:
	cmp r0, #0xb
	bne _0804476E
	movs r1, #0xc
	strb r1, [r3, #2]
	ldr r0, _08044774 @ =0x030005D0
	strb r1, [r0, #2]
	ldr r1, _08044778 @ =0x030005B8
	movs r0, #0xa
	strb r0, [r1]
_0804476E:
	bl ApplyMenuChanges
	b _08044BF4
	.align 2, 0
_08044774: .4byte 0x030005D0
_08044778: .4byte 0x030005B8
_0804477C:
	cmp r2, #7
	bne _080447CC
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	cmp r4, r5
	blo _080447C4
	adds r0, r6, #0
	bl sub_08041120
	cmp r0, #0
	beq _080447C4
	movs r0, #0xf
	bl PlaySE
	ldr r1, _080447BC @ =0x030005B8
	movs r0, #3
	strb r0, [r1]
	ldr r1, _080447C0 @ =0x030005BD
	b _0804491A
	.align 2, 0
_080447BC: .4byte 0x030005B8
_080447C0: .4byte 0x030005BD
_080447C4:
	movs r0, #0x61
	bl PlaySE
	b _08044C5E
_080447CC:
	bl sub_08046004
	bl sub_08040120
	cmp r0, #0
	bne _080447DA
	b _08044C5E
_080447DA:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08044810
	ldr r1, _08044808 @ =0x030005B8
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0804480C @ =0x030005E0
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #0xc]
	ldr r0, [r6]
	lsrs r0, r0, #0xf
	str r0, [r4, #8]
	bl sub_08045EA8
	movs r0, #0
	strb r0, [r4]
	b _08044C5E
	.align 2, 0
_08044808: .4byte 0x030005B8
_0804480C: .4byte 0x030005E0
_08044810:
	ldr r1, _08044814 @ =0x030005B8
	b _0804491A
	.align 2, 0
_08044814: .4byte 0x030005B8
_08044818:
	ldr r0, _08044828 @ =0x030005E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0804482C
	movs r0, #0
	bl sub_08040DA4
	b _08044A94
	.align 2, 0
_08044828: .4byte 0x030005E0
_0804482C:
	ldr r0, [r0, #8]
	cmp r0, r1
	beq _0804483A
	movs r0, #1
	bl sub_08040DA4
	b _08044840
_0804483A:
	movs r0, #0
	bl sub_08040DA4
_08044840:
	ldr r1, _08044844 @ =0x030005B8
	b _0804491A
	.align 2, 0
_08044844: .4byte 0x030005B8
_08044848:
	ldr r1, _08044870 @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	bl sub_08046004
	ldr r1, _08044874 @ =0x030005E0
	bl sub_080402B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	subs r0, #1
	cmp r0, #0xc
	bls _08044866
	b _08044C5E
_08044866:
	lsls r0, r0, #2
	ldr r1, _08044878 @ =_0804487C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044870: .4byte 0x030005BD
_08044874: .4byte 0x030005E0
_08044878: .4byte _0804487C
_0804487C: @ jump table
	.4byte _080448B8 @ case 0
	.4byte _080448D0 @ case 1
	.4byte _08044928 @ case 2
	.4byte _080449FC @ case 3
	.4byte _080448C4 @ case 4
	.4byte _080448C4 @ case 5
	.4byte _080448B0 @ case 6
	.4byte _080448B8 @ case 7
	.4byte _08044928 @ case 8
	.4byte _080448B8 @ case 9
	.4byte _080448C4 @ case 10
	.4byte _080448C4 @ case 11
	.4byte _080448B8 @ case 12
_080448B0:
	ldr r1, _080448B4 @ =0x030005BC
	b _0804491A
	.align 2, 0
_080448B4: .4byte 0x030005BC
_080448B8:
	ldr r1, _080448C0 @ =0x030005BF
	movs r0, #1
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448C0: .4byte 0x030005BF
_080448C4:
	ldr r1, _080448CC @ =0x030005BF
	movs r0, #2
	strb r0, [r1]
	b _08044B2C
	.align 2, 0
_080448CC: .4byte 0x030005BF
_080448D0:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040900
	adds r5, r0, #0
	cmp r5, #0
	bne _080448E2
	movs r5, #1
_080448E2:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044920 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _08044924 @ =0x030005BF
_0804491A:
	movs r0, #1
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044920: .4byte 0x030005B8
_08044924: .4byte 0x030005BF
_08044928:
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080449FC
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040CA4
	ldrb r7, [r0, #3]
	adds r0, r6, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044986
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _0804498C
_08044986:
	adds r0, r5, #0
	bl sub_08040DBC
_0804498C:
	ldr r0, _080449D4 @ =0x030005D0
	bl sub_08040ED8
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _080449D8 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	ldr r1, _080449DC @ =0x030005BF
	movs r0, #2
	strb r0, [r1]
	mov r0, r8
	cmp r0, #9
	beq _080449BA
	b _08044C5E
_080449BA:
	adds r0, r7, #0
	bl sub_080413C4
	ldr r0, _080449E0 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #3
	beq _080449EE
	cmp r0, #3
	bgt _080449E4
	cmp r0, #2
	beq _080449EA
	b _08044C5E
	.align 2, 0
_080449D4: .4byte 0x030005D0
_080449D8: .4byte 0x030005B8
_080449DC: .4byte 0x030005BF
_080449E0: .4byte 0x030005B9
_080449E4:
	cmp r0, #4
	beq _080449F2
	b _08044C5E
_080449EA:
	movs r0, #0
	b _080449F4
_080449EE:
	movs r0, #1
	b _080449F4
_080449F2:
	movs r0, #2
_080449F4:
	adds r1, r7, #0
	bl sub_08014E68
	b _08044C5E
_080449FC:
	bl sub_0803F3DC
	b _08044C5E
_08044A02:
	ldr r0, _08044A34 @ =0x030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044A38
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044A3E
	.align 2, 0
_08044A34: .4byte 0x030005BD
_08044A38:
	adds r0, r5, #0
	bl sub_08040DBC
_08044A3E:
	ldr r0, _08044A48 @ =0x030005D0
	bl sub_08040ED8
	b _08044A6C
	.align 2, 0
_08044A48: .4byte 0x030005D0
_08044A4C:
	ldr r0, _08044A88 @ =0x030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044A90
	bl sub_08040C98
	adds r6, r0, #0
	bl sub_08040DB0
	adds r5, r0, #0
	lsrs r5, r5, #2
	bl sub_08040EC0
	adds r0, r5, #0
	bl sub_08040E54
_08044A6C:
	bl ApplyMenuChanges
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _08044A8C @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x63
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044A88: .4byte 0x030005BD
_08044A8C: .4byte 0x030005B8
_08044A90:
	bl sub_0804604C
_08044A94:
	movs r0, #0x64
	bl PlaySE
	b _08044C5E
_08044A9C:
	ldr r0, _08044AC4 @ =0x030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B2C
	bl sub_08046004
	bl sub_0804087C
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08044AD2
	cmp r0, #3
	bgt _08044AC8
	cmp r0, #2
	beq _08044AD2
	b _08044AE6
	.align 2, 0
_08044AC4: .4byte 0x030005BD
_08044AC8:
	cmp r0, #4
	beq _08044AD2
	cmp r0, #5
	beq _08044ADE
	b _08044AE6
_08044AD2:
	ldrb r1, [r6, #3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #3]
	b _08044AE6
_08044ADE:
	ldrb r1, [r6, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #1]
_08044AE6:
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080412A0
	adds r0, r6, #0
	bl sub_08040900
	adds r5, r0, #0
	bl sub_08040D08
	cmp r0, r5
	bhs _08044B1C
	bl sub_08040D08
	subs r0, r5, r0
	bl sub_08040E10
	bl sub_08040D08
	bl sub_08040DBC
	b _08044B22
_08044B1C:
	adds r0, r5, #0
	bl sub_08040DBC
_08044B22:
	movs r0, #0x63
	bl PlaySE
	bl ApplyMenuChanges
_08044B2C:
	ldr r1, _08044B34 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044C5E
	.align 2, 0
_08044B34: .4byte 0x030005B8
_08044B38:
	ldr r0, _08044B54 @ =0x030005BD
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044B5C
	bl ApplyAllocatedPoints
	bl sub_08016DC0
	ldr r1, _08044B58 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	bl sub_080413F4
	b _08044BF4
	.align 2, 0
_08044B54: .4byte 0x030005BD
_08044B58: .4byte 0x030005B8
_08044B5C:
	ldrb r0, [r6]
	cmp r0, #9
	bne _08044B66
	movs r0, #8
	b _08044BBA
_08044B66:
	movs r0, #6
	b _08044BBA
_08044B6A:
	ldr r0, _08044B98 @ =0x030005BD
	ldrb r1, [r0]
	cmp r1, #1
	bne _08044BB8
	ldr r0, _08044B9C @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #9
	beq _08044BAC
	movs r0, #0xf
	strb r0, [r6]
	ldr r1, _08044BA0 @ =0x030005D4
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r1, #3]
	ldr r1, _08044BA4 @ =0x030005C8
	movs r0, #0xd4
	strb r0, [r1]
	movs r0, #0x70
	strb r0, [r1, #1]
	ldr r1, _08044BA8 @ =0x030005BA
	movs r0, #0x11
	b _08044BF2
	.align 2, 0
_08044B98: .4byte 0x030005BD
_08044B9C: .4byte 0x030005B9
_08044BA0: .4byte 0x030005D4
_08044BA4: .4byte 0x030005C8
_08044BA8: .4byte 0x030005BA
_08044BAC:
	ldr r0, _08044BB4 @ =0x030005BC
	strb r1, [r0]
	b _08044BF4
	.align 2, 0
_08044BB4: .4byte 0x030005BC
_08044BB8:
	movs r0, #0
_08044BBA:
	strb r0, [r6]
	movs r0, #0x10
	bl PlaySE
	b _08044C5E
_08044BC4:
	bl sub_0803FA9C
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BD8 @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044BDC @ =0x030005B8
	movs r0, #7
	b _08044BF2
	.align 2, 0
_08044BD8: .4byte 0x030005BD
_08044BDC: .4byte 0x030005B8
_08044BE0:
	bl HaveSkillsChanged
	cmp r0, #0
	beq _08044C5E
	ldr r1, _08044BFC @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044C00 @ =0x030005B8
	movs r0, #9
_08044BF2:
	strb r0, [r1]
_08044BF4:
	movs r0, #0xf
	bl PlaySE
	b _08044C5E
	.align 2, 0
_08044BFC: .4byte 0x030005BD
_08044C00: .4byte 0x030005B8
_08044C04:
	ldr r3, _08044C40 @ =0x030005D4
	ldrb r0, [r3, #2]
	cmp r0, #0xf
	bne _08044C4C
	bl sub_0804152C
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08044C44 @ =0xFFFFF07F
	ands r0, r1
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r2]
	ldr r1, _08044C48 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r2]
	b _08044C5E
	.align 2, 0
_08044C40: .4byte 0x030005D4
_08044C44: .4byte 0xFFFFF07F
_08044C48: .4byte 0xFFFE0FFF
_08044C4C:
	movs r2, #0
	movs r1, #0xb
	strb r1, [r3, #2]
	ldr r0, _08044C98 @ =0x030005D0
	strb r1, [r0, #2]
	strb r2, [r6]
	movs r0, #0xf
	bl PlaySE
_08044C5E:
	ldr r0, _08044C9C @ =0x030005C4
	ldrh r0, [r0]
	cmp r0, #2
	beq _08044C68
	b _08044E0E
_08044C68:
	ldr r0, _08044CA0 @ =0x030005B8
	ldrb r1, [r0]
	cmp r1, #0xb
	bne _08044C72
	b _08045104
_08044C72:
	cmp r1, #0xe
	bne _08044C78
	b _08045104
_08044C78:
	cmp r1, #0xf
	bne _08044C7E
	b _08045104
_08044C7E:
	cmp r1, #0xd
	bne _08044C84
	b _08045104
_08044C84:
	movs r4, #0x10
	adds r0, r1, #0
	cmp r0, #0x10
	bls _08044C8E
	b _08044DEC
_08044C8E:
	lsls r0, r0, #2
	ldr r1, _08044CA4 @ =_08044CA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044C98: .4byte 0x030005D0
_08044C9C: .4byte 0x030005C4
_08044CA0: .4byte 0x030005B8
_08044CA4: .4byte _08044CA8
_08044CA8: @ jump table
	.4byte _08044CFC @ case 0
	.4byte _08044DEC @ case 1
	.4byte _08044DEC @ case 2
	.4byte _08044D5C @ case 3
	.4byte _08044DEC @ case 4
	.4byte _08044DEC @ case 5
	.4byte _08044D68 @ case 6
	.4byte _08044DB4 @ case 7
	.4byte _08044D88 @ case 8
	.4byte _08044DC0 @ case 9
	.4byte _08044DCC @ case 10
	.4byte _08044DEC @ case 11
	.4byte _08044CEC @ case 12
	.4byte _08044DEC @ case 13
	.4byte _08044DEC @ case 14
	.4byte _08044DEC @ case 15
	.4byte _08044D5C @ case 16
_08044CEC:
	ldr r1, _08044CF8 @ =0x030005B8
	movs r0, #0xe
	strb r0, [r1]
	movs r4, #0
	b _08044DF0
	.align 2, 0
_08044CF8: .4byte 0x030005B8
_08044CFC:
	bl sub_08007604
	cmp r0, #0
	beq _08044D06
	b _08044DF0
_08044D06:
	ldr r0, _08044D34 @ =0x030005B9
	ldrb r1, [r0]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08044D26
	adds r0, r1, #0
	cmp r0, #9
	beq _08044D26
	cmp r0, #4
	beq _08044D26
	cmp r0, #5
	beq _08044D26
	cmp r0, #7
	bne _08044D40
_08044D26:
	ldr r1, _08044D38 @ =0x030005B8
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08044D3C @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D34: .4byte 0x030005B9
_08044D38: .4byte 0x030005B8
_08044D3C: .4byte 0x030005BD
_08044D40:
	cmp r0, #1
	beq _08044D48
	cmp r0, #8
	bne _08044D4E
_08044D48:
	movs r0, #0x10
	bl PlaySE
_08044D4E:
	ldr r1, _08044D58 @ =0x030005BC
	movs r0, #1
	strb r0, [r1]
	b _08045104
	.align 2, 0
_08044D58: .4byte 0x030005BC
_08044D5C:
	ldr r1, _08044D64 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D64: .4byte 0x030005B8
_08044D68:
	bl sub_0803FA9C
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044D80 @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044D84 @ =0x030005B8
	movs r0, #7
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044D80: .4byte 0x030005BD
_08044D84: .4byte 0x030005B8
_08044D88:
	bl HaveSkillsChanged
	adds r1, r0, #0
	cmp r1, #0
	beq _08044DA8
	ldr r1, _08044DA0 @ =0x030005BD
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044DA4 @ =0x030005B8
	movs r0, #9
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DA0: .4byte 0x030005BD
_08044DA4: .4byte 0x030005B8
_08044DA8:
	ldr r0, _08044DB0 @ =0x030005B8
	strb r1, [r0]
	b _08044DF0
	.align 2, 0
_08044DB0: .4byte 0x030005B8
_08044DB4:
	ldr r1, _08044DBC @ =0x030005B8
	movs r0, #6
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DBC: .4byte 0x030005B8
_08044DC0:
	ldr r1, _08044DC8 @ =0x030005B8
	movs r0, #8
	strb r0, [r1]
	b _08044DF0
	.align 2, 0
_08044DC8: .4byte 0x030005B8
_08044DCC:
	ldr r1, _08044DE0 @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08044DE4 @ =0x030005D4
	movs r1, #0xb
	strb r1, [r0, #2]
	ldr r0, _08044DE8 @ =0x030005D0
	strb r1, [r0, #2]
	b _08044DF0
	.align 2, 0
_08044DE0: .4byte 0x030005B8
_08044DE4: .4byte 0x030005D4
_08044DE8: .4byte 0x030005D0
_08044DEC:
	bl sub_0804604C
_08044DF0:
	ldr r0, _08044E00 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08044E04
	movs r0, #0x64
	bl PlaySE
	b _08044E0E
	.align 2, 0
_08044E00: .4byte 0x030005B8
_08044E04:
	cmp r4, #0
	beq _08044E0E
	adds r0, r4, #0
	bl PlaySE
_08044E0E:
	ldr r0, _08044E7C @ =0x030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _08044E32
	ldr r0, _08044E80 @ =0x030005B9
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044E32
	ldr r1, _08044E84 @ =0x030005BF
	movs r0, #1
	strb r0, [r1]
	bl CycleWeapon
_08044E32:
	ldr r0, _08044E7C @ =0x030005C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08044E40
	b _080450AA
_08044E40:
	ldr r0, _08044E80 @ =0x030005B9
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bne _08044EC4
	ldr r0, _08044E88 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #2
	beq _08044EC4
	ldr r1, _08044E8C @ =0x030005D4
	ldr r2, _08044E90 @ =0x030005D0
	ldrh r0, [r1, #2]
	ldrh r3, [r2, #2]
	cmp r0, r3
	beq _08044E60
	b _08045104
_08044E60:
	ldrb r0, [r1, #2]
	ldr r3, _08044E94 @ =0x030005BB
	cmp r0, #6
	bne _08044EA4
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044E98
	ldrb r0, [r1, #3]
	adds r0, #0xf
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	adds r0, #0xf
	b _08044EA2
	.align 2, 0
_08044E7C: .4byte 0x030005C4
_08044E80: .4byte 0x030005B9
_08044E84: .4byte 0x030005BF
_08044E88: .4byte 0x030005B8
_08044E8C: .4byte 0x030005D4
_08044E90: .4byte 0x030005D0
_08044E94: .4byte 0x030005BB
_08044E98:
	ldrb r0, [r1, #3]
	subs r0, #0x2d
	strb r0, [r1, #3]
	ldrb r0, [r2, #3]
	subs r0, #0x2d
_08044EA2:
	strb r0, [r2, #3]
_08044EA4:
	ldrb r0, [r3]
	cmp r0, #3
	beq _08044EAE
	adds r0, #1
	b _08044EB0
_08044EAE:
	movs r0, #0
_08044EB0:
	strb r0, [r3]
	ldr r1, _08044EC0 @ =0x030005BF
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x80
	bl PlaySE
	b _080450AA
	.align 2, 0
_08044EC0: .4byte 0x030005BF
_08044EC4:
	ldrb r0, [r2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08044ED2
	b _080450AA
_08044ED2:
	ldr r6, _08044F04 @ =0x030005B8
	ldrb r0, [r6]
	cmp r0, #2
	bne _08044EDC
	b _080450AA
_08044EDC:
	ldr r5, _08044F08 @ =0x030005D4
	ldr r4, _08044F0C @ =0x030005D0
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	cmp r0, r1
	beq _08044EEA
	b _08045104
_08044EEA:
	bl sub_0803F3E0
	ldrb r7, [r6]
	cmp r7, #1
	beq _08044F34
	ldrb r0, [r5, #2]
	cmp r0, #6
	bne _08044F18
	ldr r1, _08044F10 @ =0x030005DC
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _08044F14 @ =0x030005D8
	b _08044F20
	.align 2, 0
_08044F04: .4byte 0x030005B8
_08044F08: .4byte 0x030005D4
_08044F0C: .4byte 0x030005D0
_08044F10: .4byte 0x030005DC
_08044F14: .4byte 0x030005D8
_08044F18:
	ldr r1, _08044F2C @ =0x030005D8
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, _08044F30 @ =0x030005DC
_08044F20:
	ldr r0, [r0]
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08045304
	b _08045104
	.align 2, 0
_08044F2C: .4byte 0x030005D8
_08044F30: .4byte 0x030005DC
_08044F34:
	bl sub_08040C98
	adds r6, r0, #0
	ldr r0, [r6]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #7
	bne _08044F46
	b _08045104
_08044F46:
	ldrb r0, [r5, #2]
	cmp r0, #6
	beq _08044F4E
	b _0804507C
_08044F4E:
	ldrb r0, [r5, #3]
	cmp r0, #0xc
	bne _08044F56
	b _0804505C
_08044F56:
	cmp r1, #3
	beq _08044FEC
	cmp r1, #3
	bgt _08044F64
	cmp r1, #2
	beq _08044F6E
	b _0804504A
_08044F64:
	cmp r1, #4
	beq _08044FC0
	cmp r1, #5
	beq _08045018
	b _0804504A
_08044F6E:
	ldr r6, _08044F94 @ =0x030005D8
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C24
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	strb r7, [r6, #2]
	strb r5, [r6, #3]
	b _0804505C
	.align 2, 0
_08044F94: .4byte 0x030005D8
_08044F98:
	bl sub_08046128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #4
	cmp r5, #2
	bhi _0804505C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08044F98
	ldr r1, _08044FBC @ =0x030005D8
	movs r0, #1
	strb r0, [r1, #2]
	strb r5, [r1, #3]
	b _0804505C
	.align 2, 0
_08044FBC: .4byte 0x030005D8
_08044FC0:
	ldr r5, _08044FE8 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1d
	cmp r1, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	b _0804505C
	.align 2, 0
_08044FE8: .4byte 0x030005D8
_08044FEC:
	ldr r5, _08045014 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r7, [r5, #3]
	b _0804505C
	.align 2, 0
_08045014: .4byte 0x030005D8
_08045018:
	ldr r5, _08045040 @ =0x030005D8
	ldrb r0, [r5, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08040C3C
	adds r4, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08045044
	movs r0, #2
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _0804505C
	.align 2, 0
_08045040: .4byte 0x030005D8
_08045044:
	bl sub_08046128
	b _0804505C
_0804504A:
	ldr r0, _08045070 @ =0x030005D8
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804505C
	bl sub_08046128
_0804505C:
	ldr r2, _08045074 @ =0x030005DC
	ldr r0, _08045078 @ =0x030005D0
	ldr r1, [r0]
	str r1, [r2]
	ldr r1, _08045070 @ =0x030005D8
	ldr r1, [r1]
	str r1, [r0]
	bl sub_08045304
	b _080450AA
	.align 2, 0
_08045070: .4byte 0x030005D8
_08045074: .4byte 0x030005DC
_08045078: .4byte 0x030005D0
_0804507C:
	ldr r0, _08045094 @ =0x030005D8
	ldr r1, [r5]
	str r1, [r0]
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _0804509C
	ldr r0, _08045098 @ =0x030005DC
	ldr r0, [r0]
	str r0, [r4]
	b _080450A4
	.align 2, 0
_08045094: .4byte 0x030005D8
_08045098: .4byte 0x030005DC
_0804509C:
	movs r0, #6
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
_080450A4:
	ldr r0, _080450D4 @ =0x030005D0
	bl sub_08045304
_080450AA:
	ldr r0, _080450D8 @ =0x030005C4
	ldrh r0, [r0]
	cmp r0, #4
	bne _08045104
	ldr r0, _080450DC @ =0x030005B9
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08045104
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450E0
	bl sub_08046004
	bl sub_0804087C
	b _080450E4
	.align 2, 0
_080450D4: .4byte 0x030005D0
_080450D8: .4byte 0x030005C4
_080450DC: .4byte 0x030005B9
_080450E0:
	bl sub_08040C98
_080450E4:
	cmp r0, #0
	beq _08045104
	ldr r4, _08045110 @ =0x030005C0
	ldrb r0, [r4]
	adds r0, #0x9f
	bl PlaySE
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045104
	movs r0, #0
	strb r0, [r4]
_08045104:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045110: .4byte 0x030005C0

	thumb_func_start sub_08045114
sub_08045114: @ 0x08045114
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08045170 @ =0x030005B9
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080451B0
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08045174
	bl sub_08040C98
	adds r5, r0, #0
	bl sub_08040CA4
	ldrb r0, [r0, #2]
	cmp r0, #6
	bne _080451B0
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _080451B0
	adds r0, r5, #0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	bge _080451A4
	b _080451AC
	.align 2, 0
_08045170: .4byte 0x030005B9
_08045174:
	ldr r1, _080451A8 @ =0x030005D4
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _080451B0
	adds r0, r1, #0
	bl sub_0804087C
	adds r5, r0, #0
	cmp r5, #0
	beq _080451B0
	bl sub_08040DB0
	str r0, [r4]
	bl sub_08040D08
	adds r4, r0, #0
	bl sub_08040D44
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08040DB0
	cmp r4, r0
	blt _080451AC
_080451A4:
	movs r0, #1
	b _080451B2
	.align 2, 0
_080451A8: .4byte 0x030005D4
_080451AC:
	movs r0, #2
	b _080451B2
_080451B0:
	movs r0, #0
_080451B2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080451B8
sub_080451B8: @ 0x080451B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _08045204 @ =0x030005B9
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804522C
	bl sub_08045F50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804520C
	ldr r1, _08045208 @ =0x030005D4
	ldrb r0, [r1, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804522C
	adds r0, r1, #0
	bl sub_0804087C
	adds r1, r0, #0
	cmp r1, #0
	beq _0804522C
	ldr r2, [r1]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804521C
	lsrs r0, r2, #0xf
	str r0, [r4]
	movs r0, #2
	b _0804522E
	.align 2, 0
_08045204: .4byte 0x030005B9
_08045208: .4byte 0x030005D4
_0804520C:
	bl sub_08040C98
	adds r1, r0, #0
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _0804522C
_0804521C:
	adds r0, r1, #0
	bl sub_08040900
	str r0, [r4]
	cmp r0, #0
	beq _0804522C
	movs r0, #1
	b _0804522E
_0804522C:
	movs r0, #0
_0804522E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08045234
sub_08045234: @ 0x08045234
	push {r4, r5, lr}
	ldr r1, _0804524C @ =0x030005B9
	strb r0, [r1]
	ldrb r0, [r1]
	subs r0, #1
	cmp r0, #8
	bhi _080452F6
	lsls r0, r0, #2
	ldr r1, _08045250 @ =_08045254
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804524C: .4byte 0x030005B9
_08045250: .4byte _08045254
_08045254: @ jump table
	.4byte _08045278 @ case 0
	.4byte _08045298 @ case 1
	.4byte _08045298 @ case 2
	.4byte _08045298 @ case 3
	.4byte _08045298 @ case 4
	.4byte _080452F6 @ case 5
	.4byte _08045298 @ case 6
	.4byte _080452CC @ case 7
	.4byte _080452E4 @ case 8
_08045278:
	ldr r4, _08045290 @ =0x030005D4
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_08045304
	ldr r1, _08045294 @ =0x030005D0
	ldr r0, [r4]
	str r0, [r1]
	b _080452F6
	.align 2, 0
_08045290: .4byte 0x030005D4
_08045294: .4byte 0x030005D0
_08045298:
	ldr r1, _080452BC @ =0x030005B8
	movs r0, #0xb
	strb r0, [r1]
	ldr r1, _080452C0 @ =0x030005C8
	movs r0, #0xd4
	strb r0, [r1]
	movs r0, #0x70
	strb r0, [r1, #1]
	ldr r1, _080452C4 @ =0x030005BA
	movs r0, #0x11
	strb r0, [r1]
	ldr r1, _080452C8 @ =0x030005D4
	movs r0, #3
	strb r0, [r1, #2]
	movs r0, #0x4c
	strb r0, [r1]
	b _080452F6
	.align 2, 0
_080452BC: .4byte 0x030005B8
_080452C0: .4byte 0x030005C8
_080452C4: .4byte 0x030005BA
_080452C8: .4byte 0x030005D4
_080452CC:
	ldr r2, _080452DC @ =0x030005D4
	movs r0, #7
	strb r0, [r2, #2]
	ldr r1, _080452E0 @ =0x030005D0
	ldr r0, [r2]
	str r0, [r1]
	b _080452F6
	.align 2, 0
_080452DC: .4byte 0x030005D4
_080452E0: .4byte 0x030005D0
_080452E4:
	ldr r5, _080452FC @ =0x030005D4
	movs r0, #9
	strb r0, [r5, #2]
	ldr r4, _08045300 @ =0x030005D0
	strb r0, [r4, #2]
	bl sub_08045D80
	ldr r0, [r4]
	str r0, [r5]
_080452F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080452FC: .4byte 0x030005D4
_08045300: .4byte 0x030005D0

	thumb_func_start sub_08045304
sub_08045304: @ 0x08045304
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	subs r0, #1
	cmp r0, #5
	bhi _080453D2
	lsls r0, r0, #2
	ldr r1, _0804531C @ =_08045320
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804531C: .4byte _08045320
_08045320: @ jump table
	.4byte _08045338 @ case 0
	.4byte _08045348 @ case 1
	.4byte _08045376 @ case 2
	.4byte _0804538C @ case 3
	.4byte _0804539A @ case 4
	.4byte _080453A2 @ case 5
_08045338:
	ldrb r0, [r5, #3]
	lsls r0, r0, #4
	movs r1, #0x2c
	subs r1, r1, r0
	strb r1, [r5]
	ldrb r0, [r5, #3]
	lsls r0, r0, #3
	b _080453CE
_08045348:
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _08045356
	movs r0, #0x3c
	strb r0, [r5]
	movs r0, #0x3f
	b _080453D0
_08045356:
	cmp r0, #2
	bls _08045362
	movs r0, #0x24
	strb r0, [r5]
	movs r0, #0x50
	b _080453D0
_08045362:
	cmp r0, #1
	bls _0804536E
	movs r0, #0xb
	strb r0, [r5]
	movs r0, #0x57
	b _080453D0
_0804536E:
	movs r0, #0x3c
	strb r0, [r5]
	movs r0, #0x5f
	b _080453D0
_08045376:
	ldrb r0, [r5, #3]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	adds r0, #0x58
	strb r0, [r5]
	ldrb r0, [r5, #3]
	movs r1, #5
	b _080453C6
_0804538C:
	ldrb r0, [r5, #3]
	lsls r0, r0, #4
	subs r0, #0x3f
	strb r0, [r5]
	ldrb r0, [r5, #3]
	lsls r0, r0, #3
	b _080453CE
_0804539A:
	movs r0, #0xc9
	strb r0, [r5]
	movs r0, #0x59
	b _080453D0
_080453A2:
	ldr r0, _080453D8 @ =0x030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r4, [r5, #3]
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	subs r0, #0x40
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #3
_080453C6:
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
_080453CE:
	adds r0, #0x1f
_080453D0:
	strb r0, [r5, #1]
_080453D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080453D8: .4byte 0x030005BB

	thumb_func_start sub_080453DC
sub_080453DC: @ 0x080453DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08045414 @ =0x030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _080453F2
	bl _08045D6C
_080453F2:
	ldr r0, _08045418 @ =0x030005D4
	ldr r1, _0804541C @ =0x030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _08045402
	bl _08045D6C
_08045402:
	ldr r0, _08045420 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045424
	bl sub_08040C98
	adds r4, r0, #0
	b _08045430
	.align 2, 0
_08045414: .4byte 0x030005CC
_08045418: .4byte 0x030005D4
_0804541C: .4byte 0x030005D0
_08045420: .4byte 0x030005B8
_08045424:
	movs r1, #0x71
	rsbs r1, r1, #0
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r4, sp
_08045430:
	ldr r1, _08045450 @ =0x030005D4
	ldrb r0, [r1, #2]
	subs r0, #1
	adds r6, r1, #0
	ldr r1, _08045454 @ =0x030005C2
	mov sb, r1
	cmp r0, #5
	bls _08045444
	bl _08045D5E
_08045444:
	lsls r0, r0, #2
	ldr r1, _08045458 @ =_0804545C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045450: .4byte 0x030005D4
_08045454: .4byte 0x030005C2
_08045458: .4byte _0804545C
_0804545C: @ jump table
	.4byte _08045474 @ case 0
	.4byte _08045508 @ case 1
	.4byte _080456C8 @ case 2
	.4byte _08045ABC @ case 3
	.4byte _08045B28 @ case 4
	.4byte _08045B68 @ case 5
_08045474:
	ldr r0, _0804548C @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045480
	b _08045B14
_08045480:
	cmp r3, #0x20
	bgt _08045490
	cmp r3, #0x10
	beq _0804549E
	bl _08045D5E
	.align 2, 0
_0804548C: .4byte 0x030005C2
_08045490:
	cmp r3, #0x40
	bne _08045496
	b _08045AF4
_08045496:
	cmp r3, #0x80
	beq _080454D0
	bl _08045D5E
_0804549E:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080454A6
	b _08045AFC
_080454A6:
	ldr r1, _080454C8 @ =0x030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	mov r8, r1
	cmp r0, #2
	bne _080454C0
	ldr r0, _080454CC @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
_080454C0:
	movs r0, #0
	bl _08045D5A
	.align 2, 0
_080454C8: .4byte 0x030005D0
_080454CC: .4byte 0x030005BE
_080454D0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080454DE
	bl _08045D5E
_080454DE:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _080454F0
	ldr r1, _080454EC @ =0x030005D0
	movs r0, #2
	b _08045584
	.align 2, 0
_080454EC: .4byte 0x030005D0
_080454F0:
	cmp r2, #1
	bhi _080454F6
	b _08045B1C
_080454F6:
	ldr r1, _08045504 @ =0x030005D0
	movs r0, #2
	strb r0, [r1, #2]
_080454FC:
	strb r0, [r1, #3]
	bl _08045D5E
	.align 2, 0
_08045504: .4byte 0x030005D0
_08045508:
	ldrb r2, [r6, #3]
	cmp r2, #0
	bne _08045590
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bne _08045544
	ldr r0, _08045538 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045526
	bl _08045D5E
_08045526:
	ldr r1, _0804553C @ =0x030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _08045540 @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xa
	b _080454FC
	.align 2, 0
_08045538: .4byte 0x030005C2
_0804553C: .4byte 0x030005D0
_08045540: .4byte 0x030005BE
_08045544:
	ldr r0, _0804555C @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	bne _08045550
	b _080456B0
_08045550:
	cmp r3, #0x20
	bgt _08045560
	cmp r3, #0x10
	beq _0804556C
	bl _08045D5E
	.align 2, 0
_0804555C: .4byte 0x030005C2
_08045560:
	cmp r3, #0x40
	beq _08045580
	cmp r3, #0x80
	beq _080455E2
	bl _08045D5E
_0804556C:
	ldr r0, _0804557C @ =0x030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0xa
	strb r1, [r0, #3]
	bl _08045D5E
	.align 2, 0
_0804557C: .4byte 0x030005D0
_08045580:
	ldr r1, _0804558C @ =0x030005D0
	movs r0, #1
_08045584:
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	bl _08045D5E
	.align 2, 0
_0804558C: .4byte 0x030005D0
_08045590:
	cmp r2, #2
	bls _080455FC
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080455CC
	ldr r0, _080455C0 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _080455AC
	bl _08045D5E
_080455AC:
	ldr r1, _080455C4 @ =0x030005D0
	movs r0, #3
	strb r0, [r1, #2]
	ldr r0, _080455C8 @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _080454FC
	movs r0, #0xf
	b _080454FC
	.align 2, 0
_080455C0: .4byte 0x030005C2
_080455C4: .4byte 0x030005D0
_080455C8: .4byte 0x030005BE
_080455CC:
	ldr r0, _080455E8 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080455F0
	cmp r3, #0x20
	bgt _08045632
	cmp r3, #0x10
	beq _080455E2
	bl _08045D5E
_080455E2:
	ldr r1, _080455EC @ =0x030005D0
	movs r0, #1
	b _080454FC
	.align 2, 0
_080455E8: .4byte 0x030005C2
_080455EC: .4byte 0x030005D0
_080455F0:
	ldr r1, _080455F8 @ =0x030005D0
	movs r0, #2
	b _080454FC
	.align 2, 0
_080455F8: .4byte 0x030005D0
_080455FC:
	cmp r2, #1
	bls _0804564C
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bne _08045628
	ldr r0, _08045620 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045616
	b _08045D5E
_08045616:
	ldr r1, _08045624 @ =0x030005D0
	movs r0, #3
	strb r0, [r1, #2]
	b _08045666
	.align 2, 0
_08045620: .4byte 0x030005C2
_08045624: .4byte 0x030005D0
_08045628:
	ldr r0, _08045644 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x10
	beq _080456B0
_08045632:
	cmp r3, #0x40
	beq _08045638
	b _08045D5E
_08045638:
	ldr r0, _08045648 @ =0x030005D0
	movs r1, #1
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045644: .4byte 0x030005C2
_08045648: .4byte 0x030005D0
_0804564C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1d
	cmp r2, #3
	bne _08045680
	ldr r0, _08045674 @ =0x030005C2
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0x10
	beq _08045662
	b _08045D5E
_08045662:
	ldr r1, _08045678 @ =0x030005D0
	strb r2, [r1, #2]
_08045666:
	ldr r0, _0804567C @ =0x030005BE
	ldrb r0, [r0]
	cmp r0, #0x18
	bhi _08045670
	b _080454FC
_08045670:
	movs r0, #0x14
	b _080454FC
	.align 2, 0
_08045674: .4byte 0x030005C2
_08045678: .4byte 0x030005D0
_0804567C: .4byte 0x030005BE
_08045680:
	ldr r0, _08045694 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _080456B0
	cmp r3, #0x20
	bgt _08045698
	cmp r3, #0x10
	beq _0804569E
	b _08045D5E
	.align 2, 0
_08045694: .4byte 0x030005C2
_08045698:
	cmp r3, #0x40
	beq _080456BC
	b _08045D5E
_0804569E:
	ldr r0, _080456AC @ =0x030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x14
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_080456AC: .4byte 0x030005D0
_080456B0:
	ldr r1, _080456B8 @ =0x030005D0
	movs r0, #3
	b _080454FC
	.align 2, 0
_080456B8: .4byte 0x030005D0
_080456BC:
	ldr r1, _080456C4 @ =0x030005D0
	movs r0, #0
	b _080454FC
	.align 2, 0
_080456C4: .4byte 0x030005D0
_080456C8:
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080456E0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r1, _08045714 @ =0x030005C2
	mov sb, r1
	cmp r0, #0
	beq _080456E0
	b _080457F0
_080456E0:
	ldr r2, _08045714 @ =0x030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080456F0
	b _080457F0
_080456F0:
	ldr r0, _08045718 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #1
	bge _080456FA
	b _08045D5E
_080456FA:
	cmp r0, #5
	ble _08045700
	b _08045D5E
_08045700:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _080457C0
	lsls r0, r0, #2
	ldr r1, _0804571C @ =_08045720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045714: .4byte 0x030005C2
_08045718: .4byte 0x030005B9
_0804571C: .4byte _08045720
_08045720: @ jump table
	.4byte _08045790 @ case 0
	.4byte _08045738 @ case 1
	.4byte _08045796 @ case 2
	.4byte _08045770 @ case 3
	.4byte _08045764 @ case 4
	.4byte _08045780 @ case 5
_08045738:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _080457C0
	subs r0, #0x15
	cmp r0, #5
	bls _080457C0
	bl sub_08040CA4
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080457C0
	ldr r0, _08045760 @ =0x030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #3
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_08045760: .4byte 0x030005D0
_08045764:
	ldr r0, _0804576C @ =0x030005D0
	movs r2, #0
	movs r1, #2
	b _0804579C
	.align 2, 0
_0804576C: .4byte 0x030005D0
_08045770:
	ldr r0, _0804577C @ =0x030005D0
	movs r1, #2
	strb r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #3]
	b _080457C0
	.align 2, 0
_0804577C: .4byte 0x030005D0
_08045780:
	ldr r1, _0804578C @ =0x030005D0
	movs r0, #2
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	b _080457C0
	.align 2, 0
_0804578C: .4byte 0x030005D0
_08045790:
	ldrb r1, [r6, #3]
	cmp r1, #4
	bhi _080457A8
_08045796:
	ldr r0, _080457A4 @ =0x030005D0
	movs r2, #0
	movs r1, #1
_0804579C:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _080457C0
	.align 2, 0
_080457A4: .4byte 0x030005D0
_080457A8:
	ldr r2, _080457B8 @ =0x030005D0
	movs r0, #2
	strb r0, [r2, #2]
	cmp r1, #0xe
	bhi _080457BC
	movs r0, #0
	b _080457BE
	.align 2, 0
_080457B8: .4byte 0x030005D0
_080457BC:
	movs r0, #1
_080457BE:
	strb r0, [r2, #3]
_080457C0:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080457E4
	ldr r0, _080457D8 @ =0x030005BE
	ldr r1, _080457DC @ =0x030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
	ldr r2, _080457E0 @ =0x030005C2
	mov sb, r2
	b _08045D5E
	.align 2, 0
_080457D8: .4byte 0x030005BE
_080457DC: .4byte 0x030005D4
_080457E0: .4byte 0x030005C2
_080457E4:
	ldr r1, _080457EC @ =0x030005BE
	movs r0, #0x19
	strb r0, [r1]
	b _08045A5E
	.align 2, 0
_080457EC: .4byte 0x030005BE
_080457F0:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	cmp r0, #0
	beq _08045800
	b _08045A78
_08045800:
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0804580E
	b _08045A78
_0804580E:
	ldr r1, _08045828 @ =0x030005B9
	ldrb r0, [r1]
	subs r0, #1
	adds r2, r1, #0
	cmp r0, #7
	bls _0804581C
	b _08045D5E
_0804581C:
	lsls r0, r0, #2
	ldr r1, _0804582C @ =_08045830
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045828: .4byte 0x030005B9
_0804582C: .4byte _08045830
_08045830: @ jump table
	.4byte _08045850 @ case 0
	.4byte _08045890 @ case 1
	.4byte _08045890 @ case 2
	.4byte _08045890 @ case 3
	.4byte _08045890 @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045D5E @ case 6
	.4byte _08045D5E @ case 7
_08045850:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bhi _08045884
	ldrb r0, [r6, #3]
	cmp r0, #0x12
	bhi _08045878
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #0xc
	beq _0804586A
	b _08045B58
_0804586A:
	ldr r0, _08045874 @ =0x030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045874: .4byte 0x030005D0
_08045878:
	ldr r0, _08045880 @ =0x030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045880: .4byte 0x030005D0
_08045884:
	ldr r0, _0804588C @ =0x030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_0804588C: .4byte 0x030005D0
_08045890:
	ldr r0, _080458A4 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _080458A0
	cmp r0, #4
	beq _080458A0
	cmp r0, #5
	bne _080458A8
_080458A0:
	movs r0, #1
	b _080458AA
	.align 2, 0
_080458A4: .4byte 0x030005B8
_080458A8:
	movs r0, #0
_080458AA:
	cmp r0, #0
	beq _08045988
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045988
	bl sub_08040CA4
	adds r1, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080458C6
	b _08045A56
_080458C6:
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _080458D8
	ldr r1, _080458D4 @ =0x030005D0
	movs r0, #0xc
	b _0804597C
	.align 2, 0
_080458D4: .4byte 0x030005D0
_080458D8:
	ldr r0, _080458F4 @ =0x030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080458F8 @ =0x030005D0
	mov r8, r1
	cmp r0, #0x14
	bls _080458E8
	b _08045A50
_080458E8:
	lsls r0, r0, #2
	ldr r1, _080458FC @ =_08045900
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080458F4: .4byte 0x030005D4
_080458F8: .4byte 0x030005D0
_080458FC: .4byte _08045900
_08045900: @ jump table
	.4byte _08045954 @ case 0
	.4byte _08045A50 @ case 1
	.4byte _08045A50 @ case 2
	.4byte _08045A50 @ case 3
	.4byte _08045A50 @ case 4
	.4byte _08045960 @ case 5
	.4byte _08045A50 @ case 6
	.4byte _08045A50 @ case 7
	.4byte _08045A50 @ case 8
	.4byte _08045A50 @ case 9
	.4byte _0804596C @ case 10
	.4byte _08045A50 @ case 11
	.4byte _08045A50 @ case 12
	.4byte _08045A50 @ case 13
	.4byte _08045A50 @ case 14
	.4byte _08045978 @ case 15
	.4byte _08045A50 @ case 16
	.4byte _08045A50 @ case 17
	.4byte _08045A50 @ case 18
	.4byte _08045A50 @ case 19
	.4byte _08045978 @ case 20
_08045954:
	ldr r1, _0804595C @ =0x030005D0
	movs r0, #0
	b _0804597C
	.align 2, 0
_0804595C: .4byte 0x030005D0
_08045960:
	ldr r1, _08045968 @ =0x030005D0
	movs r0, #3
	b _0804597C
	.align 2, 0
_08045968: .4byte 0x030005D0
_0804596C:
	ldr r1, _08045974 @ =0x030005D0
	movs r0, #6
	b _0804597C
	.align 2, 0
_08045974: .4byte 0x030005D0
_08045978:
	ldr r1, _08045984 @ =0x030005D0
	movs r0, #9
_0804597C:
	strb r0, [r1, #3]
	mov r8, r1
	b _08045A50
	.align 2, 0
_08045984: .4byte 0x030005D0
_08045988:
	ldr r0, _080459A0 @ =0x030005D4
	ldrb r0, [r0, #3]
	subs r0, #4
	ldr r1, _080459A4 @ =0x030005D0
	mov r8, r1
	cmp r0, #0x14
	bhi _08045A38
	lsls r0, r0, #2
	ldr r1, _080459A8 @ =_080459AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080459A0: .4byte 0x030005D4
_080459A4: .4byte 0x030005D0
_080459A8: .4byte _080459AC
_080459AC: @ jump table
	.4byte _08045A00 @ case 0
	.4byte _08045A38 @ case 1
	.4byte _08045A38 @ case 2
	.4byte _08045A38 @ case 3
	.4byte _08045A38 @ case 4
	.4byte _08045A0C @ case 5
	.4byte _08045A38 @ case 6
	.4byte _08045A38 @ case 7
	.4byte _08045A38 @ case 8
	.4byte _08045A38 @ case 9
	.4byte _08045A18 @ case 10
	.4byte _08045A38 @ case 11
	.4byte _08045A38 @ case 12
	.4byte _08045A38 @ case 13
	.4byte _08045A38 @ case 14
	.4byte _08045A24 @ case 15
	.4byte _08045A38 @ case 16
	.4byte _08045A38 @ case 17
	.4byte _08045A38 @ case 18
	.4byte _08045A38 @ case 19
	.4byte _08045A30 @ case 20
_08045A00:
	ldr r1, _08045A08 @ =0x030005D0
	movs r0, #0
	b _08045A34
	.align 2, 0
_08045A08: .4byte 0x030005D0
_08045A0C:
	ldr r1, _08045A14 @ =0x030005D0
	movs r0, #3
	b _08045A34
	.align 2, 0
_08045A14: .4byte 0x030005D0
_08045A18:
	ldr r1, _08045A20 @ =0x030005D0
	movs r0, #6
	b _08045A34
	.align 2, 0
_08045A20: .4byte 0x030005D0
_08045A24:
	ldr r1, _08045A2C @ =0x030005D0
	movs r0, #9
	b _08045A34
	.align 2, 0
_08045A2C: .4byte 0x030005D0
_08045A30:
	ldr r1, _08045A64 @ =0x030005D0
	movs r0, #0xc
_08045A34:
	strb r0, [r1, #3]
	mov r8, r1
_08045A38:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045A50
	ldr r0, _08045A68 @ =0x030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r2, r8
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	mov r1, r8
	strb r0, [r1, #3]
_08045A50:
	movs r0, #6
	mov r2, r8
	strb r0, [r2, #2]
_08045A56:
	ldr r0, _08045A6C @ =0x030005BE
	ldr r1, _08045A70 @ =0x030005D4
	ldrb r1, [r1, #3]
	strb r1, [r0]
_08045A5E:
	ldr r0, _08045A74 @ =0x030005C2
	mov sb, r0
	b _08045D5E
	.align 2, 0
_08045A64: .4byte 0x030005D0
_08045A68: .4byte 0x030005BB
_08045A6C: .4byte 0x030005BE
_08045A70: .4byte 0x030005D4
_08045A74: .4byte 0x030005C2
_08045A78:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0x20
	beq _08045AFC
	cmp r0, #0x20
	bgt _08045A8A
	cmp r0, #0x10
	beq _08045B1C
	b _08045D5E
_08045A8A:
	cmp r0, #0x40
	beq _08045A94
	cmp r0, #0x80
	beq _08045AA8
	b _08045D5E
_08045A94:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bhi _08045A9C
	b _08045D5E
_08045A9C:
	ldr r1, _08045AA4 @ =0x030005D0
	ldrb r0, [r1, #3]
	subs r0, #5
	b _080454FC
	.align 2, 0
_08045AA4: .4byte 0x030005D0
_08045AA8:
	ldrb r0, [r6, #3]
	cmp r0, #0x13
	bls _08045AB0
	b _08045D5E
_08045AB0:
	ldr r1, _08045AB8 @ =0x030005D0
	ldrb r0, [r1, #3]
	adds r0, #5
	b _080454FC
	.align 2, 0
_08045AB8: .4byte 0x030005D0
_08045ABC:
	ldr r0, _08045AD0 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045ADE
	cmp r3, #0x20
	bgt _08045AD4
	cmp r3, #0x10
	beq _08045B14
	b _08045D5E
	.align 2, 0
_08045AD0: .4byte 0x030005C2
_08045AD4:
	cmp r3, #0x40
	beq _08045AF4
	cmp r3, #0x80
	beq _08045B08
	b _08045D5E
_08045ADE:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	ldr r0, _08045AF0 @ =0x030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #4
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045AF0: .4byte 0x030005D0
_08045AF4:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08045AFC
	b _08045D5E
_08045AFC:
	ldr r1, _08045B04 @ =0x030005D0
	ldrb r0, [r1, #3]
	subs r0, #1
	b _080454FC
	.align 2, 0
_08045B04: .4byte 0x030005D0
_08045B08:
	ldr r0, _08045B10 @ =0x030005D0
	movs r2, #0
	movs r1, #5
	b _08045B5E
	.align 2, 0
_08045B10: .4byte 0x030005D0
_08045B14:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bls _08045B1C
	b _08045D5E
_08045B1C:
	ldr r1, _08045B24 @ =0x030005D0
	ldrb r0, [r1, #3]
	adds r0, #1
	b _080454FC
	.align 2, 0
_08045B24: .4byte 0x030005D0
_08045B28:
	ldr r0, _08045B38 @ =0x030005C2
	ldrh r3, [r0]
	mov sb, r0
	cmp r3, #0x20
	beq _08045B3C
	cmp r3, #0x40
	beq _08045B4C
	b _08045D5E
	.align 2, 0
_08045B38: .4byte 0x030005C2
_08045B3C:
	ldr r0, _08045B48 @ =0x030005D0
	movs r1, #3
	strb r1, [r0, #2]
	movs r1, #0x18
	strb r1, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B48: .4byte 0x030005D0
_08045B4C:
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bls _08045B58
	b _08045D5E
_08045B58:
	ldr r0, _08045B64 @ =0x030005D0
	movs r2, #0
	movs r1, #4
_08045B5E:
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	b _08045D5E
	.align 2, 0
_08045B64: .4byte 0x030005D0
_08045B68:
	ldrb r4, [r6, #3]
	cmp r4, #0
	beq _08045B80
	ldrb r0, [r6, #3]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r2, _08045BB4 @ =0x030005C2
	mov sb, r2
	cmp r0, #0
	bne _08045C0E
_08045B80:
	ldr r2, _08045BB4 @ =0x030005C2
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08045C0E
	ldr r2, _08045BB8 @ =0x030005D0
	movs r0, #3
	strb r0, [r2, #2]
	ldr r0, _08045BBC @ =0x030005BB
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r4, r0
	strb r0, [r6, #3]
	ldrb r0, [r6, #3]
	mov r8, r2
	cmp r0, #0xc
	bls _08045BAA
	b _08045D5E
_08045BAA:
	lsls r0, r0, #2
	ldr r1, _08045BC0 @ =_08045BC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045BB4: .4byte 0x030005C2
_08045BB8: .4byte 0x030005D0
_08045BBC: .4byte 0x030005BB
_08045BC0: .4byte _08045BC4
_08045BC4: @ jump table
	.4byte _08045BF8 @ case 0
	.4byte _08045D5E @ case 1
	.4byte _08045D5E @ case 2
	.4byte _08045BFC @ case 3
	.4byte _08045D5E @ case 4
	.4byte _08045D5E @ case 5
	.4byte _08045C00 @ case 6
	.4byte _08045D5E @ case 7
	.4byte _08045D5E @ case 8
	.4byte _08045C04 @ case 9
	.4byte _08045D5E @ case 10
	.4byte _08045D5E @ case 11
	.4byte _08045C08 @ case 12
_08045BF8:
	movs r0, #4
	b _08045C0A
_08045BFC:
	movs r0, #9
	b _08045D5A
_08045C00:
	movs r0, #0xe
	b _08045C0A
_08045C04:
	movs r0, #0x13
	b _08045D5A
_08045C08:
	movs r0, #0x18
_08045C0A:
	mov r1, r8
	b _080454FC
_08045C0E:
	ldrb r0, [r6, #3]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08045C68
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045C68
	ldr r0, _08045C3C @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C36
	cmp r0, #4
	beq _08045C36
	cmp r0, #5
	bne _08045C40
_08045C36:
	movs r0, #1
	b _08045C42
	.align 2, 0
_08045C3C: .4byte 0x030005B8
_08045C40:
	movs r0, #0
_08045C42:
	ldr r2, _08045C60 @ =0x030005B9
	cmp r0, #0
	beq _08045C50
	ldrb r0, [r2]
	cmp r0, #5
	beq _08045C50
	b _08045D5E
_08045C50:
	ldrb r0, [r2]
	cmp r0, #5
	bne _08045CA2
	ldr r1, _08045C64 @ =0x030005D0
	ldrb r0, [r1, #3]
	adds r0, #3
	bl _080454FC
	.align 2, 0
_08045C60: .4byte 0x030005B9
_08045C64: .4byte 0x030005D0
_08045C68:
	ldrb r0, [r6, #3]
	cmp r0, #0xb
	bls _08045CB4
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045C90 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045C8A
	cmp r0, #4
	beq _08045C8A
	cmp r0, #5
	bne _08045C94
_08045C8A:
	movs r0, #1
	b _08045C96
	.align 2, 0
_08045C90: .4byte 0x030005B8
_08045C94:
	movs r0, #0
_08045C96:
	cmp r0, #0
	beq _08045CB4
	ldr r0, _08045CAC @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #5
	beq _08045CB4
_08045CA2:
	ldr r1, _08045CB0 @ =0x030005D0
	movs r0, #0xc
	bl _080454FC
	.align 2, 0
_08045CAC: .4byte 0x030005B9
_08045CB0: .4byte 0x030005D0
_08045CB4:
	ldr r3, _08045CE8 @ =0x030005BB
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r6, #3]
	subs r4, r1, r0
	strb r4, [r6, #3]
	ldr r2, _08045CEC @ =0x030005D0
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r2, #3]
	subs r5, r1, r0
	strb r5, [r2, #3]
	mov r1, sb
	ldrh r0, [r1]
	mov r8, r2
	adds r7, r3, #0
	cmp r0, #0x20
	beq _08045D20
	cmp r0, #0x20
	bgt _08045CF0
	cmp r0, #0x10
	beq _08045CFA
	b _08045D42
	.align 2, 0
_08045CE8: .4byte 0x030005BB
_08045CEC: .4byte 0x030005D0
_08045CF0:
	cmp r0, #0x40
	beq _08045D24
	cmp r0, #0x80
	beq _08045D34
	b _08045D42
_08045CFA:
	ldrb r0, [r6, #3]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	beq _08045D42
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08045D18
	ldr r0, _08045D1C @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #5
	bne _08045D42
_08045D18:
	adds r0, r5, #1
	b _08045D2E
	.align 2, 0
_08045D1C: .4byte 0x030005B9
_08045D20:
	subs r0, r5, #1
	b _08045D3E
_08045D24:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08045D42
	subs r0, r5, #3
_08045D2E:
	mov r2, r8
	strb r0, [r2, #3]
	b _08045D42
_08045D34:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _08045D42
	adds r0, r5, #3
_08045D3E:
	mov r1, r8
	strb r0, [r1, #3]
_08045D42:
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r2, [r6, #3]
	adds r0, r0, r2
	strb r0, [r6, #3]
	ldrb r1, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	mov r1, r8
	ldrb r1, [r1, #3]
	adds r0, r0, r1
_08045D5A:
	mov r2, r8
	strb r0, [r2, #3]
_08045D5E:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _08045D6C
	ldr r0, _08045D7C @ =0x030005D0
	bl sub_08045304
_08045D6C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045D7C: .4byte 0x030005D0

	thumb_func_start sub_08045D80
sub_08045D80: @ 0x08045D80
	push {r4, r5, lr}
	ldr r0, _08045DA8 @ =0x030005CC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08045E0C
	ldr r3, _08045DAC @ =0x030005D4
	ldr r0, _08045DB0 @ =0x030005D0
	ldrh r1, [r3, #2]
	adds r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r1, r0
	bne _08045E0C
	ldr r0, _08045DB4 @ =0x030005C2
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	beq _08045DB8
	cmp r1, #0x80
	beq _08045DC6
	b _08045DD4
	.align 2, 0
_08045DA8: .4byte 0x030005CC
_08045DAC: .4byte 0x030005D4
_08045DB0: .4byte 0x030005D0
_08045DB4: .4byte 0x030005C2
_08045DB8:
	ldrb r0, [r3, #2]
	cmp r0, #9
	beq _08045DC2
	subs r0, #1
	b _08045DD2
_08045DC2:
	movs r0, #0xb
	b _08045DD2
_08045DC6:
	ldrb r0, [r3, #2]
	cmp r0, #0xb
	beq _08045DD0
	adds r0, #1
	b _08045DD2
_08045DD0:
	movs r0, #9
_08045DD2:
	strb r0, [r2, #2]
_08045DD4:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08045DE0
	adds r0, r2, #0
	bl sub_08045304
_08045DE0:
	ldrb r0, [r4, #2]
	cmp r0, #9
	beq _08045DF4
	cmp r0, #9
	blt _08045E0C
	cmp r0, #0xa
	beq _08045DFC
	cmp r0, #0xb
	beq _08045E04
	b _08045E0C
_08045DF4:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x28
	b _08045E0A
_08045DFC:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x48
	b _08045E0A
_08045E04:
	movs r0, #0x50
	strb r0, [r4]
	movs r0, #0x68
_08045E0A:
	strb r0, [r4, #1]
_08045E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08045E14
sub_08045E14: @ 0x08045E14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _08045E34 @ =0x030005D4
	ldr r0, _08045E38 @ =0x030005D0
	mov r8, r0
	ldrh r0, [r7, #2]
	mov r1, r8
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _08045E40
	ldr r1, _08045E3C @ =0x030005C8
	ldr r0, [r7]
	str r0, [r1]
	b _08045E92
	.align 2, 0
_08045E34: .4byte 0x030005D4
_08045E38: .4byte 0x030005D0
_08045E3C: .4byte 0x030005C8
_08045E40:
	mov r2, r8
	ldrb r1, [r2]
	ldrb r4, [r7]
	subs r1, r1, r4
	ldr r5, _08045E9C @ =0x030005CC
	ldrb r0, [r5, #1]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl __divsi3
	ldr r6, _08045EA0 @ =0x030005C8
	adds r4, r4, r0
	strb r4, [r6]
	mov r1, r8
	ldrb r0, [r1, #1]
	ldrb r4, [r7, #1]
	subs r0, r0, r4
	ldrb r1, [r5, #1]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl __divsi3
	adds r4, r4, r0
	strb r4, [r6, #1]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	blo _08045E92
	mov r1, r8
	ldr r0, [r1]
	str r0, [r7]
	str r0, [r6]
	movs r0, #0
	strb r0, [r5, #1]
	ldr r1, _08045EA4 @ =0x030005BF
	movs r0, #1
	strb r0, [r1]
_08045E92:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045E9C: .4byte 0x030005CC
_08045EA0: .4byte 0x030005C8
_08045EA4: .4byte 0x030005BF

	thumb_func_start sub_08045EA8
sub_08045EA8: @ 0x08045EA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08045F18 @ =0x030005E0
	ldr r6, _08045F1C @ =0x000186A0
	adds r1, r6, #0
	bl __udivsi3
	strb r0, [r5, #6]
	ldrb r0, [r5, #6]
	muls r0, r6, r0
	subs r4, r4, r0
	ldr r6, _08045F20 @ =0x00002710
	adds r0, r4, #0
	adds r1, r6, #0
	bl __udivsi3
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	muls r0, r6, r0
	subs r4, r4, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r5, #4]
	ldrb r1, [r5, #4]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r4, r4, r0
	movs r6, #0x64
	adds r0, r4, #0
	movs r1, #0x64
	bl __udivsi3
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	muls r0, r6, r0
	subs r4, r4, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r4, r4, r0
	strb r4, [r5, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045F18: .4byte 0x030005E0
_08045F1C: .4byte 0x000186A0
_08045F20: .4byte 0x00002710

	thumb_func_start sub_08045F24
sub_08045F24: @ 0x08045F24
	bx lr
	.align 2, 0

	thumb_func_start sub_08045F28
sub_08045F28: @ 0x08045F28
	ldr r2, _08045F34 @ =0x030005C8
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08045F34: .4byte 0x030005C8

	thumb_func_start sub_08045F38
sub_08045F38: @ 0x08045F38
	ldr r2, _08045F40 @ =0x030005BC
	movs r1, #1
	strb r1, [r2]
	bx lr
	.align 2, 0
_08045F40: .4byte 0x030005BC

	thumb_func_start sub_08045F44
sub_08045F44: @ 0x08045F44
	ldr r0, _08045F4C @ =0x030005BC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08045F4C: .4byte 0x030005BC

	thumb_func_start sub_08045F50
sub_08045F50: @ 0x08045F50
	ldr r0, _08045F64 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08045F60
	cmp r0, #4
	beq _08045F60
	cmp r0, #5
	bne _08045F68
_08045F60:
	movs r0, #1
	b _08045F6A
	.align 2, 0
_08045F64: .4byte 0x030005B8
_08045F68:
	movs r0, #0
_08045F6A:
	bx lr

	thumb_func_start sub_08045F6C
sub_08045F6C: @ 0x08045F6C
	ldr r0, _08045F74 @ =0x030005B9
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08045F74: .4byte 0x030005B9

	thumb_func_start sub_08045F78
sub_08045F78: @ 0x08045F78
	ldr r0, _08045F80 @ =0x030005B8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08045F80: .4byte 0x030005B8

	thumb_func_start sub_08045F84
sub_08045F84: @ 0x08045F84
	ldr r0, _08045F8C @ =0x030005BB
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08045F8C: .4byte 0x030005BB

	thumb_func_start sub_08045F90
sub_08045F90: @ 0x08045F90
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _08045FA0 @ =0x030005B8
	ldrb r0, [r0]
	cmp r0, #2
	beq _08045FA4
	movs r0, #0
	b _08045FB2
	.align 2, 0
_08045FA0: .4byte 0x030005B8
_08045FA4:
	adds r0, r1, #0
	ldr r1, _08045FB8 @ =0x030005E0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r0, #1
_08045FB2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08045FB8: .4byte 0x030005E0

	thumb_func_start sub_08045FBC
sub_08045FBC: @ 0x08045FBC
	ldr r0, _08045FC4 @ =0x030005BD
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08045FC4: .4byte 0x030005BD
_08045FC8:
	.byte 0x01, 0x49, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0xBD, 0x05, 0x00, 0x03

	thumb_func_start sub_08045FD4
sub_08045FD4: @ 0x08045FD4
	push {r4, lr}
	movs r2, #1
	movs r3, #0
	movs r1, #0
	ldr r4, _08046000 @ =0x030005E1
_08045FDE:
	adds r0, r1, r4
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r3, r3, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08045FDE
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08046000: .4byte 0x030005E1

	thumb_func_start sub_08046004
sub_08046004: @ 0x08046004
	ldr r0, _08046010 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #8
	bne _08046018
	ldr r0, _08046014 @ =0x030005D4
	b _08046042
	.align 2, 0
_08046010: .4byte 0x030005B9
_08046014: .4byte 0x030005D4
_08046018:
	ldr r2, _08046034 @ =0x030005D4
	ldr r3, _08046038 @ =0x030005D0
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	cmp r0, r1
	beq _08046040
	ldr r0, _0804603C @ =0x030005CC
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsrs r1, r1, #1
	cmp r0, r1
	blo _08046040
	adds r0, r3, #0
	b _08046042
	.align 2, 0
_08046034: .4byte 0x030005D4
_08046038: .4byte 0x030005D0
_0804603C: .4byte 0x030005CC
_08046040:
	adds r0, r2, #0
_08046042:
	bx lr

	thumb_func_start sub_08046044
sub_08046044: @ 0x08046044
	ldr r0, _08046048 @ =0x030005D4
	bx lr
	.align 2, 0
_08046048: .4byte 0x030005D4

	thumb_func_start sub_0804604C
sub_0804604C: @ 0x0804604C
	push {r4, lr}
	bl sub_08040CA4
	ldr r4, _08046090 @ =0x030005D0
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08046094 @ =0x030005B9
	ldrb r0, [r0]
	cmp r0, #5
	bne _0804607A
	ldrb r0, [r4, #2]
	cmp r0, #6
	bne _0804607A
	ldrb r0, [r4, #3]
	movs r1, #0xf
	bl __umodsi3
	ldr r1, _08046098 @ =0x030005BB
	ldrb r2, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	adds r0, r0, r1
	strb r0, [r4, #3]
_0804607A:
	bl sub_08040C54
	movs r0, #0
	bl sub_08040DA4
	ldr r1, _0804609C @ =0x030005B8
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046090: .4byte 0x030005D0
_08046094: .4byte 0x030005B9
_08046098: .4byte 0x030005BB
_0804609C: .4byte 0x030005B8

	thumb_func_start sub_080460A0
sub_080460A0: @ 0x080460A0
	ldr r0, _080460B0 @ =0x030005D4
	ldr r1, _080460B4 @ =0x030005D0
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _080460B8
	movs r0, #1
	b _080460BA
	.align 2, 0
_080460B0: .4byte 0x030005D4
_080460B4: .4byte 0x030005D0
_080460B8:
	movs r0, #0
_080460BA:
	bx lr

	thumb_func_start sub_080460BC
sub_080460BC: @ 0x080460BC
	ldr r0, _080460DC @ =0x030005B9
	ldrb r0, [r0]
	ldr r1, _080460E0 @ =0x030005B8
	cmp r0, #7
	bne _080460E4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080460D8
	cmp r0, #0xf
	beq _080460D8
	cmp r0, #3
	beq _080460D8
	cmp r0, #0x10
	bne _080460E4
_080460D8:
	movs r0, #2
	b _080460F6
	.align 2, 0
_080460DC: .4byte 0x030005B9
_080460E0: .4byte 0x030005B8
_080460E4:
	ldrb r0, [r1]
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080460F4
	movs r0, #0
	b _080460F6
_080460F4:
	movs r0, #1
_080460F6:
	bx lr

	thumb_func_start sub_080460F8
sub_080460F8: @ 0x080460F8
	ldr r0, _08046100 @ =0x030005BF
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08046100: .4byte 0x030005BF

	thumb_func_start sub_08046104
sub_08046104: @ 0x08046104
	ldr r2, _0804610C @ =0x030005BF
	movs r1, #1
	strb r1, [r2]
	bx lr
	.align 2, 0
_0804610C: .4byte 0x030005BF

	thumb_func_start sub_08046110
sub_08046110: @ 0x08046110
	ldr r2, _08046118 @ =0x030005BF
	movs r1, #0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08046118: .4byte 0x030005BF

	thumb_func_start sub_0804611C
sub_0804611C: @ 0x0804611C
	ldr r0, _08046124 @ =0x030005C0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08046124: .4byte 0x030005C0

	thumb_func_start sub_08046128
sub_08046128: @ 0x08046128
	push {r4, lr}
	ldr r4, _0804614C @ =0x030005D8
	movs r0, #3
	strb r0, [r4, #2]
	movs r0, #0xc
	strb r0, [r4, #3]
	bl sub_08040BF8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08046150
	strb r2, [r4, #3]
	b _08046166
	.align 2, 0
_0804614C: .4byte 0x030005D8
_08046150:
	adds r2, #1
	adds r1, #4
	cmp r2, #0x18
	bgt _08046166
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08046150
	ldr r0, _0804616C @ =0x030005D8
	strb r2, [r0, #3]
_08046166:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804616C: .4byte 0x030005D8

	thumb_func_start sub_08046170
sub_08046170: @ 0x08046170
	ldr r0, _08046174 @ =0x030005D0
	bx lr
	.align 2, 0
_08046174: .4byte 0x030005D0

	thumb_func_start sub_08046178
sub_08046178: @ 0x08046178
	push {r4, lr}
	sub sp, #8
	bl sub_0800EC38
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _080461E8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _080461EC @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #1
	bl GetDataRecord
	ldrh r0, [r0]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0xf
	bl LoadPalette
	ldr r0, _080461F0 @ =gBgRegsBuffer
	strh r4, [r0, #4]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	movs r0, #6
	bl sub_0800F1EC
	b _080461F8
	.align 2, 0
_080461E8: .4byte 0xFFFF0000
_080461EC: .4byte 0x00001C08
_080461F0: .4byte gBgRegsBuffer
_080461F4:
	bl WaitFrame
_080461F8:
	bl sub_0800F298
	cmp r0, #0
	beq _080461F4
	bl DisplayOn
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804620C
sub_0804620C: @ 0x0804620C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08046244 @ =0x00000FFF
	cmp r2, r0
	bls _08046248
	lsrs r2, r2, #0xc
	cmp r2, #0
	beq _08046252
	adds r6, r1, #0
	adds r4, r3, #0
	adds r5, r2, #0
_08046222:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bne _08046222
	b _08046252
	.align 2, 0
_08046244: .4byte 0x00000FFF
_08046248:
	adds r0, r3, #0
	bl QueueCopy
	bl WaitFrame
_08046252:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start SaveSelectThread
SaveSelectThread: @ 0x08046258
	push {lr}
	bl sub_08046338
	bl sub_08046D90
	bl sub_08022AB4
	bl DisplayOn
	movs r0, #0x6f
	bl PlaySE
	b _0804627A
_08046272:
	bl WaitFrame
	bl sub_0804855C
_0804627A:
	bl sub_08048458
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046288
	bl sub_0800F298
_08046288:
	bl sub_0800F298
	cmp r0, #0
	beq _08046298
	bl sub_080463F0
	bl sub_080466A8
_08046298:
	bl sub_080472FC
	bl sub_08048440
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046272
	movs r0, #0x6f
	bl StopSE
	bl sub_08048458
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _080462C4
	movs r0, #0x14
	bl SignalEvent
	bl DisplayOff
	b _080462E8
_080462C4:
	bl sub_08048464
	ldr r0, _080462D8 @ =0x030031A8
	ldr r0, [r0]
	cmp r0, #0
	beq _080462DC
	cmp r0, #1
	beq _080462E4
	b _080462E8
	.align 2, 0
_080462D8: .4byte 0x030031A8
_080462DC:
	movs r0, #0
	bl sub_08007490
	b _080462E8
_080462E4:
	bl sub_08002B58
_080462E8:
	pop {r0}
	bx r0

	thumb_func_start StartSaveSelect
StartSaveSelect: @ 0x080462EC
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08046320 @ =0x030068C0
	ldr r1, _08046324 @ =SaveSelectThread
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _08046328 @ =sub_0804632C
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08046320: .4byte 0x030068C0
_08046324: .4byte SaveSelectThread
_08046328: .4byte sub_0804632C

	thumb_func_start sub_0804632C
sub_0804632C: @ 0x0804632C
	push {lr}
	bl sub_08048428
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08046338
sub_08046338: @ 0x08046338
	push {r4, r5, lr}
	ldr r0, _080463AC @ =0x030005F0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080463B0 @ =0x030005F1
	strb r1, [r0]
	ldr r2, _080463B4 @ =0x030005F2
	movs r0, #2
	strb r0, [r2]
	ldr r0, _080463B8 @ =0x030005F4
	strb r1, [r0]
	ldr r0, _080463BC @ =0x030005F5
	strb r1, [r0]
	ldr r0, _080463C0 @ =0x03000604
	movs r2, #0
	strh r2, [r0]
	ldr r0, _080463C4 @ =0x03000606
	strh r2, [r0]
	ldr r1, _080463C8 @ =0x030005F7
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080463CC @ =0x03000608
	movs r1, #0
	str r1, [r0]
	ldr r0, _080463D0 @ =0x0300060C
	str r1, [r0]
	ldr r0, _080463D4 @ =0x03000610
	str r1, [r0]
	ldr r0, _080463D8 @ =0x030005FC
	strb r2, [r0]
	strb r2, [r0, #1]
	ldr r0, _080463DC @ =0x03000600
	strb r2, [r0]
	strb r2, [r0, #1]
	ldr r0, _080463E0 @ =0x030005F6
	strb r2, [r0]
	ldr r0, _080463E4 @ =0x030005F3
	strb r2, [r0]
	ldr r0, _080463E8 @ =0x030005F8
	strb r2, [r0]
	bl sub_080484F0
	ldr r5, _080463EC @ =0x03000764
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	ldr r0, [r5]
	bl LoadSaveSlotInfo
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080463AC: .4byte 0x030005F0
_080463B0: .4byte 0x030005F1
_080463B4: .4byte 0x030005F2
_080463B8: .4byte 0x030005F4
_080463BC: .4byte 0x030005F5
_080463C0: .4byte 0x03000604
_080463C4: .4byte 0x03000606
_080463C8: .4byte 0x030005F7
_080463CC: .4byte 0x03000608
_080463D0: .4byte 0x0300060C
_080463D4: .4byte 0x03000610
_080463D8: .4byte 0x030005FC
_080463DC: .4byte 0x03000600
_080463E0: .4byte 0x030005F6
_080463E4: .4byte 0x030005F3
_080463E8: .4byte 0x030005F8
_080463EC: .4byte 0x03000764

	thumb_func_start sub_080463F0
sub_080463F0: @ 0x080463F0
	push {r4, r5, r6, lr}
	ldr r1, _08046444 @ =0x03000604
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08046448 @ =gKeysRepeat
	ldrh r2, [r0]
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _0804640A
	strh r3, [r6]
_0804640A:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	adds r1, r2, #0
	cmp r0, #0
	beq _08046418
	strh r3, [r6]
_08046418:
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046424
	strh r3, [r6]
_08046424:
	movs r1, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08046430
	strh r1, [r6]
_08046430:
	ldr r0, _0804644C @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bls _0804643A
	b _080466A0
_0804643A:
	lsls r0, r0, #2
	ldr r1, _08046450 @ =_08046454
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046444: .4byte 0x03000604
_08046448: .4byte gKeysRepeat
_0804644C: .4byte 0x030005F0
_08046450: .4byte _08046454
_08046454: @ jump table
	.4byte _08046478 @ case 0
	.4byte _08046674 @ case 1
	.4byte _08046674 @ case 2
	.4byte _080465C0 @ case 3
	.4byte _0804660C @ case 4
	.4byte _0804664C @ case 5
	.4byte _08046674 @ case 6
	.4byte _08046674 @ case 7
	.4byte _08046564 @ case 8
_08046478:
	ldr r2, _08046494 @ =0x030005F5
	ldrb r4, [r2]
	ldr r0, _08046498 @ =0x030005F1
	ldrb r5, [r0]
	ldrh r1, [r6]
	adds r3, r0, #0
	cmp r1, #0x20
	beq _080464DC
	cmp r1, #0x20
	bgt _0804649C
	cmp r1, #0x10
	beq _080464A6
	b _0804653C
	.align 2, 0
_08046494: .4byte 0x030005F5
_08046498: .4byte 0x030005F1
_0804649C:
	cmp r1, #0x40
	beq _08046530
	cmp r1, #0x80
	beq _08046524
	b _0804653C
_080464A6:
	adds r1, r5, #0
	cmp r1, #0
	bne _080464C4
	cmp r4, #1
	bls _080464C4
	adds r0, r5, #1
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #2
	strb r0, [r2]
	ldr r0, _080464C0 @ =0x030005F6
	strb r1, [r0]
	b _080464F4
	.align 2, 0
_080464C0: .4byte 0x030005F6
_080464C4:
	ldr r2, _080464D8 @ =0x030005F5
	ldrb r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	subs r0, r1, r0
	cmp r0, #1
	bgt _0804653C
	adds r0, r1, #2
	b _0804653A
	.align 2, 0
_080464D8: .4byte 0x030005F5
_080464DC:
	cmp r5, #0
	beq _0804650C
	cmp r4, #5
	bhi _0804650C
	subs r0, r5, #1
	strb r0, [r3]
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r1, _08046504 @ =0x030005F6
	movs r0, #0
	strb r0, [r1]
_080464F4:
	ldr r1, _08046508 @ =0x030005F8
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	b _0804653C
	.align 2, 0
_08046504: .4byte 0x030005F6
_08046508: .4byte 0x030005F8
_0804650C:
	ldr r2, _08046520 @ =0x030005F5
	ldrb r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #2
	subs r0, r1, r0
	cmp r0, #1
	ble _0804653C
	subs r0, r1, #2
	b _0804653A
	.align 2, 0
_08046520: .4byte 0x030005F5
_08046524:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0804653C
	adds r0, r4, #1
	b _0804653A
_08046530:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0804653C
	subs r0, r4, #1
_0804653A:
	strb r0, [r2]
_0804653C:
	ldr r0, _08046558 @ =0x030005F5
	ldrb r0, [r0]
	cmp r0, r4
	bne _08046546
	b _080466A0
_08046546:
	ldr r0, _0804655C @ =0x030005F1
	ldrb r0, [r0]
	cmp r5, r0
	beq _08046550
	b _08046662
_08046550:
	ldr r1, _08046560 @ =0x030005F6
	movs r0, #0
	strb r0, [r1]
	b _08046662
	.align 2, 0
_08046558: .4byte 0x030005F5
_0804655C: .4byte 0x030005F1
_08046560: .4byte 0x030005F6
_08046564:
	ldr r4, _08046584 @ =0x030005F5
	ldrb r1, [r4]
	ldr r3, _08046588 @ =0x03000764
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r2
	ldrb r5, [r2, #4]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _0804658C
	cmp r1, #0x20
	beq _0804659C
	b _080465A6
	.align 2, 0
_08046584: .4byte 0x030005F5
_08046588: .4byte 0x03000764
_0804658C:
	movs r1, #1
	strb r1, [r2, #4]
	ldr r0, _08046598 @ =0x030005F8
	strb r1, [r0]
	b _080465A6
	.align 2, 0
_08046598: .4byte 0x030005F8
_0804659C:
	movs r0, #0
	strb r0, [r2, #4]
	ldr r1, _080465BC @ =0x030005F8
	movs r0, #1
	strb r0, [r1]
_080465A6:
	ldrb r0, [r4]
	ldr r2, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #4]
	cmp r5, r1
	beq _080466A0
	b _08046662
	.align 2, 0
_080465BC: .4byte 0x030005F8
_080465C0:
	ldr r2, _080465E0 @ =0x03000764
	ldr r0, _080465E4 @ =0x030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r2, r1, r0
	ldrb r5, [r2, #1]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _080465E8
	cmp r1, #0x20
	beq _080465F0
	b _080465F8
	.align 2, 0
_080465E0: .4byte 0x03000764
_080465E4: .4byte 0x030005F5
_080465E8:
	cmp r5, #2
	bhi _080465F8
	adds r0, r5, #1
	b _080465F6
_080465F0:
	cmp r5, #0
	beq _080465F8
	subs r0, r5, #1
_080465F6:
	strb r0, [r2, #1]
_080465F8:
	ldr r1, _08046608 @ =0x030005F8
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r2, #1]
	cmp r5, r2
	beq _080466A0
	b _08046662
	.align 2, 0
_08046608: .4byte 0x030005F8
_0804660C:
	ldr r2, _0804662C @ =0x03000764
	ldr r0, _08046630 @ =0x030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r2, r1, r0
	ldrb r5, [r2, #2]
	ldrh r1, [r6]
	cmp r1, #0x10
	beq _08046634
	cmp r1, #0x20
	beq _0804663C
	b _08046644
	.align 2, 0
_0804662C: .4byte 0x03000764
_08046630: .4byte 0x030005F5
_08046634:
	cmp r5, #2
	bhi _08046644
	adds r0, r5, #1
	b _08046642
_0804663C:
	cmp r5, #0
	beq _08046644
	subs r0, r5, #1
_08046642:
	strb r0, [r2, #2]
_08046644:
	ldrb r2, [r2, #2]
	cmp r5, r2
	beq _080466A0
	b _08046662
_0804664C:
	ldr r5, _0804666C @ =0x03000600
	ldr r4, [r5]
	bl sub_08047F6C
	bl sub_08047E78
	ldr r0, _08046670 @ =0x0000FFFF
	ands r4, r0
	ldrh r5, [r5]
	cmp r4, r5
	beq _080466A0
_08046662:
	movs r0, #0x62
	bl PlaySE
	b _080466A0
	.align 2, 0
_0804666C: .4byte 0x03000600
_08046670: .4byte 0x0000FFFF
_08046674:
	ldr r0, _08046688 @ =0x030005F7
	ldrb r5, [r0]
	ldrh r1, [r6]
	adds r2, r0, #0
	cmp r1, #0x10
	beq _0804668C
	cmp r1, #0x20
	beq _08046690
	b _08046694
	.align 2, 0
_08046688: .4byte 0x030005F7
_0804668C:
	movs r0, #0
	b _08046692
_08046690:
	movs r0, #1
_08046692:
	strb r0, [r2]
_08046694:
	ldrb r2, [r2]
	cmp r5, r2
	beq _080466A0
	movs r0, #0x62
	bl PlaySE
_080466A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080466A8
sub_080466A8: @ 0x080466A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r1, _08046734 @ =0x03000606
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08046738 @ =gKeysNew
	ldrh r3, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _080466C4
	strh r4, [r2]
_080466C4:
	movs r4, #2
	adds r0, r4, #0
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _080466D2
	strh r4, [r2]
_080466D2:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466E0
	strh r4, [r2]
_080466E0:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466EE
	strh r4, [r2]
_080466EE:
	movs r4, #8
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080466FA
	strh r4, [r2]
_080466FA:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0804670A
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
_0804670A:
	ldrh r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804671C
	ldr r1, _0804673C @ =0x030005F8
	movs r0, #1
	strb r0, [r1]
_0804671C:
	ldr r0, _08046740 @ =0x030005F0
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08046728
	b _08046D82
_08046728:
	lsls r0, r1, #2
	ldr r1, _08046744 @ =_08046748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046734: .4byte 0x03000606
_08046738: .4byte gKeysNew
_0804673C: .4byte 0x030005F8
_08046740: .4byte 0x030005F0
_08046744: .4byte _08046748
_08046748: @ jump table
	.4byte _08046778 @ case 0
	.4byte _080468E8 @ case 1
	.4byte _0804690E @ case 2
	.4byte _08046962 @ case 3
	.4byte _080469A4 @ case 4
	.4byte _080469F4 @ case 5
	.4byte _08046856 @ case 6
	.4byte _08046C70 @ case 7
	.4byte _08046834 @ case 8
	.4byte _08046D62 @ case 9
	.4byte _08046D82 @ case 10
	.4byte _08046D74 @ case 11
_08046778:
	ldrh r4, [r2]
	cmp r4, #1
	beq _08046784
	cmp r4, #2
	beq _08046820
	b _08046D82
_08046784:
	movs r0, #0xf
	bl PlaySE
	ldr r0, _080467B8 @ =gKeysHeld
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080467CC
	ldr r0, _080467BC @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080467C0 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080467AE
	b _08046D82
_080467AE:
	ldr r0, _080467C4 @ =0x030005F0
	strb r4, [r0]
	ldr r1, _080467C8 @ =0x030005F7
	movs r0, #0
	b _08046D80
	.align 2, 0
_080467B8: .4byte gKeysHeld
_080467BC: .4byte 0x030005F5
_080467C0: .4byte 0x03000764
_080467C4: .4byte 0x030005F0
_080467C8: .4byte 0x030005F7
_080467CC:
	ldr r0, _080467F0 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080467F4 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _080467FC
	ldr r1, _080467F8 @ =0x030005F0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	b _08046D82
	.align 2, 0
_080467F0: .4byte 0x030005F5
_080467F4: .4byte 0x03000764
_080467F8: .4byte 0x030005F0
_080467FC:
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0804680A
	bl sub_08001F64
	cmp r0, #0
	bne _08046814
_0804680A:
	ldr r1, _08046810 @ =0x030005F0
	movs r0, #6
	b _08046D80
	.align 2, 0
_08046810: .4byte 0x030005F0
_08046814:
	ldr r1, _0804681C @ =0x030005F0
	movs r0, #8
	b _08046D80
	.align 2, 0
_0804681C: .4byte 0x030005F0
_08046820:
	movs r0, #6
	bl sub_0800F244
	ldr r1, _08046830 @ =0x030005F0
	movs r0, #0xb
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_08046830: .4byte 0x030005F0
_08046834:
	ldrh r1, [r2]
	cmp r1, #1
	beq _08046840
	cmp r1, #2
	beq _08046850
	b _08046D82
_08046840:
	movs r0, #6
	strb r0, [r3]
	ldr r0, _0804684C @ =0x030005F7
	strb r1, [r0]
	b _08046D32
	.align 2, 0
_0804684C: .4byte 0x030005F7
_08046850:
	movs r0, #0
_08046852:
	strb r0, [r3]
	b _08046D82
_08046856:
	ldrh r0, [r2]
	cmp r0, #1
	beq _08046862
	cmp r0, #2
	beq _080468AC
	b _08046D82
_08046862:
	ldr r0, _08046890 @ =0x030005F7
	ldrb r4, [r0]
	cmp r4, #0
	beq _0804686C
	b _08046D26
_0804686C:
	ldr r0, _08046894 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08046898 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0804688A
	bl sub_08001F64
	cmp r0, #0
	bne _080468A0
_0804688A:
	ldr r0, _0804689C @ =0x030005F0
	strb r4, [r0]
	b _08046D5A
	.align 2, 0
_08046890: .4byte 0x030005F7
_08046894: .4byte 0x030005F5
_08046898: .4byte 0x03000764
_0804689C: .4byte 0x030005F0
_080468A0:
	ldr r1, _080468A8 @ =0x030005F0
	movs r0, #8
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_080468A8: .4byte 0x030005F0
_080468AC:
	ldr r0, _080468D0 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080468D4 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080468CA
	bl sub_08001F64
	cmp r0, #0
	bne _080468DC
_080468CA:
	ldr r1, _080468D8 @ =0x030005F0
	movs r0, #0
	b _080468E0
	.align 2, 0
_080468D0: .4byte 0x030005F5
_080468D4: .4byte 0x03000764
_080468D8: .4byte 0x030005F0
_080468DC:
	ldr r1, _080468E4 @ =0x030005F0
	movs r0, #8
_080468E0:
	strb r0, [r1]
	b _08046D5A
	.align 2, 0
_080468E4: .4byte 0x030005F0
_080468E8:
	ldrh r0, [r2]
	cmp r0, #1
	beq _080468F4
	cmp r0, #2
	beq _08046908
	b _08046D82
_080468F4:
	ldr r1, _08046904 @ =0x030005F7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08046852
	movs r0, #2
	strb r0, [r3]
	movs r0, #0
	b _08046D30
	.align 2, 0
_08046904: .4byte 0x030005F7
_08046908:
	movs r0, #0
	strb r0, [r3]
	b _08046D5A
_0804690E:
	ldrh r5, [r2]
	cmp r5, #1
	beq _0804691A
	cmp r5, #2
	beq _0804695C
	b _08046D82
_0804691A:
	ldr r6, _0804694C @ =0x030005F7
	ldrb r0, [r6]
	cmp r0, #0
	beq _08046946
	ldr r4, _08046950 @ =0x030005F5
	ldrb r0, [r4]
	bl EraseSaveSlot
	ldr r2, _08046954 @ =0x03000764
	ldrb r0, [r4]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0x38
	bl bzero
	strb r5, [r6]
	movs r0, #0xf
	bl PlaySE
_08046946:
	ldr r1, _08046958 @ =0x030005F0
	movs r0, #0
	b _08046D80
	.align 2, 0
_0804694C: .4byte 0x030005F7
_08046950: .4byte 0x030005F5
_08046954: .4byte 0x03000764
_08046958: .4byte 0x030005F0
_0804695C:
	movs r0, #0
	strb r0, [r3]
	b _08046D5A
_08046962:
	ldrh r0, [r2]
	cmp r0, #1
	beq _0804696E
	cmp r0, #2
	beq _0804697A
	b _08046D82
_0804696E:
	movs r0, #4
	strb r0, [r3]
	movs r0, #0
	bl sub_08046F6C
	b _08046D32
_0804697A:
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0804699C @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080469A0 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #1]
	movs r0, #0
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_0804699C: .4byte 0x030005F5
_080469A0: .4byte 0x03000764
_080469A4:
	ldrh r0, [r2]
	cmp r0, #1
	beq _080469B0
	cmp r0, #2
	beq _080469CC
	b _08046D82
_080469B0:
	movs r0, #5
	strb r0, [r3]
	ldr r1, _080469C8 @ =0x030005F4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	bl sub_08047E78
	b _08046D32
	.align 2, 0
_080469C8: .4byte 0x030005F4
_080469CC:
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080469EC @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080469F0 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #2]
	movs r0, #1
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_080469EC: .4byte 0x030005F5
_080469F0: .4byte 0x03000764
_080469F4:
	ldrh r4, [r2]
	cmp r4, #4
	bne _080469FC
	b _08046BD0
_080469FC:
	cmp r4, #4
	bgt _08046A0C
	cmp r4, #1
	beq _08046A2E
	cmp r4, #2
	bne _08046A0A
	b _08046B34
_08046A0A:
	b _08046D82
_08046A0C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bne _08046A16
	b _08046BA8
_08046A16:
	cmp r4, r0
	bgt _08046A22
	cmp r4, #8
	bne _08046A20
	b _08046C58
_08046A20:
	b _08046D82
_08046A22:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08046A2C
	b _08046BBC
_08046A2C:
	b _08046D82
_08046A2E:
	ldr r0, _08046A5C @ =0x03000600
	ldrh r2, [r0]
	ldr r1, _08046A60 @ =0x0000060C
	adds r3, r0, #0
	cmp r2, r1
	bne _08046A74
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046A6C
	bl sub_08047EFC
	ldr r0, _08046A64 @ =0x030005F0
	movs r1, #7
	strb r1, [r0]
	movs r0, #1
	bl sub_08046F6C
	ldr r0, _08046A68 @ =0x030005F7
	strb r4, [r0]
	b _08046D32
	.align 2, 0
_08046A5C: .4byte 0x03000600
_08046A60: .4byte 0x0000060C
_08046A64: .4byte 0x030005F0
_08046A68: .4byte 0x030005F7
_08046A6C:
	movs r0, #0x61
	bl PlaySE
	b _08046D82
_08046A74:
	ldr r0, _08046AB8 @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bne _08046ADC
	ldrb r2, [r3]
	cmp r2, #9
	bls _08046A8C
	ldr r0, _08046ABC @ =0x030005F2
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bls _08046A9A
_08046A8C:
	cmp r2, #0xa
	bls _08046ADC
	ldr r0, _08046ABC @ =0x030005F2
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #2
	bne _08046ADC
_08046A9A:
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _08046ADC
	ldrb r0, [r4]
	cmp r0, #1
	bhi _08046AC0
	ldrb r0, [r3]
	subs r0, #0xa
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08046AD4
	movs r0, #0xd
	b _08046AD2
	.align 2, 0
_08046AB8: .4byte 0x03003CA8
_08046ABC: .4byte 0x030005F2
_08046AC0:
	ldrb r1, [r3]
	adds r0, r1, #0
	subs r0, #0xb
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _08046AD4
	subs r0, r1, #1
_08046AD2:
	strb r0, [r3]
_08046AD4:
	movs r0, #1
	bl sub_08046F6C
	b _08046D32
_08046ADC:
	ldr r4, _08046B24 @ =0x030005F4
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08046AE6
	b _08046D32
_08046AE6:
	bl sub_08048240
	ldr r1, _08046B28 @ =0x030005F5
	ldrb r2, [r1]
	ldr r1, _08046B2C @ =0x03000764
	ldr r3, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r2, [r4]
	lsls r2, r2, #1
	adds r1, #0x14
	adds r1, r1, r2
	strh r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _08046B14
	ldr r0, _08046B30 @ =0x03000600
	movs r1, #0xc
	strb r1, [r0]
	movs r1, #6
	strb r1, [r0, #1]
_08046B14:
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08046B1C
	b _08046D32
_08046B1C:
	adds r0, #1
	strb r0, [r4]
	b _08046D32
	.align 2, 0
_08046B24: .4byte 0x030005F4
_08046B28: .4byte 0x030005F5
_08046B2C: .4byte 0x03000764
_08046B30: .4byte 0x03000600
_08046B34:
	ldr r3, _08046B60 @ =0x030005F4
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	beq _08046B6C
	subs r0, #1
	strb r0, [r3]
	ldr r0, _08046B64 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08046B68 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	lsls r1, r1, #1
	adds r0, #0x14
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	b _08046D5A
	.align 2, 0
_08046B60: .4byte 0x030005F4
_08046B64: .4byte 0x030005F5
_08046B68: .4byte 0x03000764
_08046B6C:
	ldr r0, _08046B98 @ =0x03000600
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r2, _08046B9C @ =0x03000764
	ldr r0, _08046BA0 @ =0x030005F5
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r2]
	adds r0, r0, r1
	adds r0, #0x14
	movs r1, #0xc
	bl bzero
	ldr r1, _08046BA4 @ =0x030005F0
	movs r0, #4
	strb r0, [r1]
	movs r0, #1
	bl sub_08046F6C
	b _08046D5A
	.align 2, 0
_08046B98: .4byte 0x03000600
_08046B9C: .4byte 0x03000764
_08046BA0: .4byte 0x030005F5
_08046BA4: .4byte 0x030005F0
_08046BA8:
	ldr r1, _08046BB8 @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08046BB2
	b _08046D82
_08046BB2:
	adds r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BB8: .4byte 0x030005F4
_08046BBC:
	ldr r1, _08046BCC @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046BC6
	b _08046D82
_08046BC6:
	subs r0, #1
	strb r0, [r1]
	b _08046C62
	.align 2, 0
_08046BCC: .4byte 0x030005F4
_08046BD0:
	ldr r0, _08046C24 @ =0x03003CA8
	ldrh r0, [r0]
	ldr r4, _08046C28 @ =0x030005F2
	cmp r0, #0
	bne _08046BE0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08046BE0:
	ldrb r0, [r4]
	cmp r0, #2
	bls _08046BEA
	movs r0, #0
	strb r0, [r4]
_08046BEA:
	ldrb r0, [r4]
	ldr r3, _08046C2C @ =0x03000600
	cmp r0, #0
	bne _08046C02
	ldrb r0, [r3]
	cmp r0, #0xc
	bls _08046C02
	ldrb r0, [r3, #1]
	cmp r0, #5
	beq _08046C02
	movs r0, #0xc
	strb r0, [r3]
_08046C02:
	ldrb r0, [r4]
	cmp r0, #2
	bne _08046C30
	ldrb r1, [r3, #1]
	cmp r1, #5
	bne _08046C14
	ldrb r0, [r3]
	cmp r0, #9
	bls _08046C1E
_08046C14:
	cmp r1, #5
	bls _08046C30
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _08046C30
_08046C1E:
	movs r0, #4
	strb r0, [r3, #1]
	b _08046C50
	.align 2, 0
_08046C24: .4byte 0x03003CA8
_08046C28: .4byte 0x030005F2
_08046C2C: .4byte 0x03000600
_08046C30:
	adds r1, r3, #0
	ldrb r0, [r1, #1]
	cmp r0, #5
	bne _08046C50
	ldrb r0, [r4]
	cmp r0, #2
	bne _08046C46
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08046C50
_08046C46:
	cmp r0, #0
	bne _08046C50
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_08046C50:
	movs r0, #1
	bl sub_08046F6C
	b _08046C62
_08046C58:
	ldr r0, _08046C6C @ =0x03000600
	movs r1, #0xc
	strb r1, [r0]
	movs r1, #6
	strb r1, [r0, #1]
_08046C62:
	movs r0, #0x62
	bl PlaySE
	b _08046D82
	.align 2, 0
_08046C6C: .4byte 0x03000600
_08046C70:
	ldrh r7, [r2]
	cmp r7, #1
	beq _08046C7C
	cmp r7, #2
	beq _08046D4C
	b _08046D82
_08046C7C:
	ldr r0, _08046D3C @ =0x030005F7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046D4C
	ldr r4, _08046D40 @ =0x030005F5
	ldrb r1, [r4]
	ldr r6, _08046D44 @ =0x03000764
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	add r5, sp, #0x1c
	mov r1, sp
	adds r2, r5, #0
	bl sub_08016FF8
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r5]
	strh r1, [r0, #0x10]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r5, #2]
	strh r1, [r0, #0x12]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #2]
	strh r1, [r0, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #6]
	strh r1, [r0, #0xe]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0, #3]
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0, #6]
	ldrb r1, [r4]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	strb r7, [r0]
_08046D26:
	movs r0, #6
	bl sub_0800F3A0
	ldr r1, _08046D48 @ =0x030005F0
	movs r0, #9
_08046D30:
	strb r0, [r1]
_08046D32:
	movs r0, #0xf
	bl PlaySE
	b _08046D82
	.align 2, 0
_08046D3C: .4byte 0x030005F7
_08046D40: .4byte 0x030005F5
_08046D44: .4byte 0x03000764
_08046D48: .4byte 0x030005F0
_08046D4C:
	movs r0, #5
	strb r0, [r3]
	movs r0, #1
	bl sub_08046F6C
	bl sub_08047E78
_08046D5A:
	movs r0, #0x10
	bl PlaySE
	b _08046D82
_08046D62:
	bl sub_0800F298
	cmp r0, #0
	beq _08046D82
	ldr r1, _08046D70 @ =0x030005F0
	movs r0, #0xa
	b _08046D80
	.align 2, 0
_08046D70: .4byte 0x030005F0
_08046D74:
	bl sub_0800F298
	cmp r0, #0
	beq _08046D82
	ldr r1, _08046D8C @ =0x030005F0
	movs r0, #0xc
_08046D80:
	strb r0, [r1]
_08046D82:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046D8C: .4byte 0x030005F0

	thumb_func_start sub_08046D90
sub_08046D90: @ 0x08046D90
	push {r4, lr}
	sub sp, #8
	bl DisplayOff
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _08046E50 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08046E54 @ =0x00001F03
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08046E58 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	movs r1, #0xe0
	lsls r1, r1, #5
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	bl sub_0800EC74
	movs r0, #0
	bl sub_0800EE44
	bl sub_0800ED08
	ldr r1, _08046E5C @ =0x030005F8
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	bl sub_08046F6C
	ldr r4, _08046E60 @ =0x03000628
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, _08046E64 @ =0x00100002
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, _08046E68 @ =0x00100001
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	adds r4, #0x9c
	ldr r1, _08046E6C @ =0x00100003
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	ldr r0, _08046E70 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _08046E46
	b _08046F3C
_08046E46:
	lsls r0, r0, #2
	ldr r1, _08046E74 @ =_08046E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046E50: .4byte 0xFFFF0000
_08046E54: .4byte 0x00001F03
_08046E58: .4byte 0x00001E02
_08046E5C: .4byte 0x030005F8
_08046E60: .4byte 0x03000628
_08046E64: .4byte 0x00100002
_08046E68: .4byte 0x00100001
_08046E6C: .4byte 0x00100003
_08046E70: .4byte 0x03003CA8
_08046E74: .4byte _08046E78
_08046E78: @ jump table
	.4byte _08046E8C @ case 0
	.4byte _08046EB0 @ case 1
	.4byte _08046ED4 @ case 2
	.4byte _08046EF8 @ case 3
	.4byte _08046F24 @ case 4
_08046E8C:
	ldr r0, _08046EA0 @ =0x030006F8
	ldr r1, _08046EA4 @ =0x00100069
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EA8 @ =0x03000730
	ldr r1, _08046EAC @ =0x0010006A
	b _08046F08
	.align 2, 0
_08046EA0: .4byte 0x030006F8
_08046EA4: .4byte 0x00100069
_08046EA8: .4byte 0x03000730
_08046EAC: .4byte 0x0010006A
_08046EB0:
	ldr r0, _08046EC4 @ =0x030006F8
	ldr r1, _08046EC8 @ =0x00100072
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046ECC @ =0x03000730
	ldr r1, _08046ED0 @ =0x00100073
	b _08046F08
	.align 2, 0
_08046EC4: .4byte 0x030006F8
_08046EC8: .4byte 0x00100072
_08046ECC: .4byte 0x03000730
_08046ED0: .4byte 0x00100073
_08046ED4:
	ldr r0, _08046EE8 @ =0x030006F8
	ldr r1, _08046EEC @ =0x00100071
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046EF0 @ =0x03000730
	ldr r1, _08046EF4 @ =0x0010007B
	b _08046F08
	.align 2, 0
_08046EE8: .4byte 0x030006F8
_08046EEC: .4byte 0x00100071
_08046EF0: .4byte 0x03000730
_08046EF4: .4byte 0x0010007B
_08046EF8:
	ldr r0, _08046F14 @ =0x030006F8
	ldr r1, _08046F18 @ =0x00100084
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F1C @ =0x03000730
	ldr r1, _08046F20 @ =0x00100083
_08046F08:
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	b _08046F3C
	.align 2, 0
_08046F14: .4byte 0x030006F8
_08046F18: .4byte 0x00100084
_08046F1C: .4byte 0x03000730
_08046F20: .4byte 0x00100083
_08046F24:
	ldr r0, _08046F58 @ =0x030006F8
	ldr r1, _08046F5C @ =0x0010008E
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
	ldr r0, _08046F60 @ =0x03000730
	ldr r1, _08046F64 @ =0x0010008D
	movs r2, #9
	movs r3, #6
	bl sub_08026ADC
_08046F3C:
	bl DisplayOn
	movs r0, #6
	bl sub_0800F1EC
	bl WaitFrame
	ldr r1, _08046F68 @ =0x030005F8
	movs r0, #2
	strb r0, [r1]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046F58: .4byte 0x030006F8
_08046F5C: .4byte 0x0010008E
_08046F60: .4byte 0x03000730
_08046F64: .4byte 0x0010008D
_08046F68: .4byte 0x030005F8

	thumb_func_start sub_08046F6C
sub_08046F6C: @ 0x08046F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _08046F98 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _0804701C
	ldr r0, _08046F9C @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08046FA0 @ =_08046FA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08046F98: .4byte 0x030005F0
_08046F9C: .4byte 0x03003CA8
_08046FA0: .4byte _08046FA4
_08046FA4: @ jump table
	.4byte _08046FB8 @ case 0
	.4byte _08046FCC @ case 1
	.4byte _08046FE0 @ case 2
	.4byte _08046FF4 @ case 3
	.4byte _08047008 @ case 4
_08046FB8:
	ldr r0, _08046FC4 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FC8
	movs r0, #0x5d
	b _0804705E
	.align 2, 0
_08046FC4: .4byte 0x030005F1
_08046FC8:
	movs r0, #0x5e
	b _0804705E
_08046FCC:
	ldr r0, _08046FD8 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FDC
	movs r0, #0x82
	b _0804705E
	.align 2, 0
_08046FD8: .4byte 0x030005F1
_08046FDC:
	movs r0, #0x81
	b _0804705E
_08046FE0:
	ldr r0, _08046FEC @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046FF0
	movs r0, #0x83
	b _0804705E
	.align 2, 0
_08046FEC: .4byte 0x030005F1
_08046FF0:
	movs r0, #0x85
	b _0804705E
_08046FF4:
	ldr r0, _08047000 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047004
	movs r0, #0x88
	b _0804705E
	.align 2, 0
_08047000: .4byte 0x030005F1
_08047004:
	movs r0, #0x86
	b _0804705E
_08047008:
	ldr r0, _08047014 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047018
	movs r0, #0x87
	b _0804705E
	.align 2, 0
_08047014: .4byte 0x030005F1
_08047018:
	movs r0, #0x84
	b _0804705E
_0804701C:
	ldr r0, _08047030 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047064
	lsls r0, r0, #2
	ldr r1, _08047034 @ =_08047038
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047030: .4byte 0x03003CA8
_08047034: .4byte _08047038
_08047038: @ jump table
	.4byte _0804704C @ case 0
	.4byte _08047050 @ case 1
	.4byte _08047054 @ case 2
	.4byte _08047058 @ case 3
	.4byte _0804705C @ case 4
_0804704C:
	movs r0, #0x5c
	b _0804705E
_08047050:
	movs r0, #0x80
	b _0804705E
_08047054:
	movs r0, #0x7e
	b _0804705E
_08047058:
	movs r0, #0x7f
	b _0804705E
_0804705C:
	movs r0, #0x7d
_0804705E:
	bl GetDataRecord
	adds r5, r0, #0
_08047064:
	movs r6, #0
	ldr r0, _08047078 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _0804707C @ =_08047080
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047078: .4byte 0x030005F0
_0804707C: .4byte _08047080
_08047080: @ jump table
	.4byte _080470A4 @ case 0
	.4byte _080470A4 @ case 1
	.4byte _080470A4 @ case 2
	.4byte _080470AE @ case 3
	.4byte _080470AE @ case 4
	.4byte _080470D0 @ case 5
	.4byte _080470A4 @ case 6
	.4byte _080470A4 @ case 7
	.4byte _080470A4 @ case 8
_080470A4:
	movs r0, #8
	bl GetDataRecord
	adds r6, r0, #0
	b _080470C2
_080470AE:
	movs r0, #9
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_080470C2:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047124
_080470D0:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r0, _080470F0 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _08047124
	lsls r0, r0, #2
	ldr r1, _080470F4 @ =_080470F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080470F0: .4byte 0x03003CA8
_080470F4: .4byte _080470F8
_080470F8: @ jump table
	.4byte _0804710C @ case 0
	.4byte _08047110 @ case 1
	.4byte _08047114 @ case 2
	.4byte _08047118 @ case 3
	.4byte _0804711C @ case 4
_0804710C:
	movs r0, #0x5c
	b _0804711E
_08047110:
	movs r0, #0x80
	b _0804711E
_08047114:
	movs r0, #0x7e
	b _0804711E
_08047118:
	movs r0, #0x7f
	b _0804711E
_0804711C:
	movs r0, #0x7d
_0804711E:
	bl GetDataRecord
	adds r6, r0, #0
_08047124:
	ldr r4, _08047188 @ =0x03000608
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _0804718C @ =0x0600F800
	movs r7, #0x80
	lsls r7, r7, #4
	adds r2, r7, #0
	bl QueueCopy
	cmp r6, #0
	beq _08047150
	ldr r4, _08047190 @ =0x0300060C
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047194 @ =0x0600F000
	adds r2, r7, #0
	bl QueueCopy
_08047150:
	ldr r0, _08047198 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08047208
	ldr r1, _0804719C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080471A0 @ =0x00001D01
	orrs r0, r1
	str r0, [sp]
	movs r0, #1
	mov r1, sp
	bl SetBgCnt
	ldr r0, _080471A4 @ =0x030005F2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080471DC
	ldr r0, _080471A8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _080471DC
	lsls r0, r0, #2
	ldr r1, _080471AC @ =_080471B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047188: .4byte 0x03000608
_0804718C: .4byte 0x0600F800
_08047190: .4byte 0x0300060C
_08047194: .4byte 0x0600F000
_08047198: .4byte 0x030005F0
_0804719C: .4byte 0xFFFF0000
_080471A0: .4byte 0x00001D01
_080471A4: .4byte 0x030005F2
_080471A8: .4byte 0x03003CA8
_080471AC: .4byte _080471B0
_080471B0: @ jump table
	.4byte _080471C4 @ case 0
	.4byte _080471C8 @ case 1
	.4byte _080471CC @ case 2
	.4byte _080471D0 @ case 3
	.4byte _080471D4 @ case 4
_080471C4:
	movs r0, #0x5a
	b _080471D6
_080471C8:
	movs r0, #0x7c
	b _080471D6
_080471CC:
	movs r0, #0x7a
	b _080471D6
_080471D0:
	movs r0, #0x7b
	b _080471D6
_080471D4:
	movs r0, #0x79
_080471D6:
	bl GetDataRecord
	mov r8, r0
_080471DC:
	ldr r4, _08047200 @ =0x03000610
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	str r0, [r4]
	ldr r1, _08047204 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _08047224
	.align 2, 0
_08047200: .4byte 0x03000610
_08047204: .4byte 0x0600E800
_08047208:
	cmp r0, #7
	bne _08047224
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_08047224:
	mov r0, sb
	cmp r0, #0
	beq _0804726E
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804725E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047254
	ldr r1, _08047250 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
	.align 2, 0
_08047250: .4byte 0x06004000
_08047254:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #7
	b _08047266
_0804725E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
_08047266:
	adds r0, r3, #0
	bl QueueCopy
	b _080472B2
_0804726E:
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080472A4
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08047294
	ldr r1, _08047290 @ =0x06004000
	b _08047298
	.align 2, 0
_08047290: .4byte 0x06004000
_08047294:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08047298:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl sub_08048484
	b _080472B2
_080472A4:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	bl sub_08048484
_080472B2:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	movs r2, #0
	ldr r5, _080472F4 @ =0x03000614
	movs r3, #0
	ldr r4, _080472F8 @ =0x0300061C
_080472D0:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080472D0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080472F4: .4byte 0x03000614
_080472F8: .4byte 0x0300061C

	thumb_func_start sub_080472FC
sub_080472FC: @ 0x080472FC
	push {r4, lr}
	sub sp, #4
	bl sub_080473AC
	bl sub_08047570
	bl sub_08047780
	ldr r0, _08047328 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _0804737E
	ldr r1, _0804732C @ =0x030005F3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08047330
	ldrb r4, [r1]
	b _08047348
	.align 2, 0
_08047328: .4byte 0x030005F0
_0804732C: .4byte 0x030005F3
_08047330:
	cmp r0, #0x13
	bhi _08047344
	ldrb r1, [r1]
	subs r1, #4
	asrs r1, r1, #2
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08047348
_08047344:
	movs r0, #0
	strb r0, [r1]
_08047348:
	ldr r0, _08047364 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804736C
	ldr r0, _08047368 @ =0x030006F8
	adds r1, r4, #0
	adds r1, #0xe7
	movs r2, #1
	str r2, [sp]
	movs r2, #0x49
	movs r3, #3
	bl sub_08026B90
	b _0804737E
	.align 2, 0
_08047364: .4byte 0x030005F1
_08047368: .4byte 0x030006F8
_0804736C:
	ldr r0, _080473A0 @ =0x030006F8
	movs r1, #4
	subs r1, r1, r4
	movs r2, #2
	str r2, [sp]
	movs r2, #0x49
	movs r3, #3
	bl sub_08026B90
_0804737E:
	ldr r1, _080473A4 @ =0x030005F6
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0804738A
	adds r0, #1
	strb r0, [r1]
_0804738A:
	ldr r1, _080473A8 @ =0x030005F8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08047396
	movs r0, #0
	strb r0, [r1]
_08047396:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080473A0: .4byte 0x030006F8
_080473A4: .4byte 0x030005F6
_080473A8: .4byte 0x030005F8

	thumb_func_start sub_080473AC
sub_080473AC: @ 0x080473AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0x14]
	mov sl, r0
	ldr r0, _080473EC @ =0x03000764
	ldr r7, [r0]
	ldr r0, _080473F0 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080473CC
	adds r7, #0xe0
_080473CC:
	movs r1, #0
	mov r8, r1
_080473D0:
	mov r2, r8
	cmp r2, #1
	bls _080473DA
	movs r3, #0x78
	str r3, [sp, #0x14]
_080473DA:
	mov r0, r8
	cmp r0, #0
	beq _080473E4
	cmp r0, #2
	bne _080473F4
_080473E4:
	movs r1, #0
	mov sl, r1
	b _08047402
	.align 2, 0
_080473EC: .4byte 0x03000764
_080473F0: .4byte 0x030005F1
_080473F4:
	mov r2, sl
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xf
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov sl, r0
_08047402:
	ldr r0, _08047414 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _0804746E
	lsls r0, r0, #2
	ldr r1, _08047418 @ =_0804741C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047414: .4byte 0x030005F0
_08047418: .4byte _0804741C
_0804741C: @ jump table
	.4byte _08047450 @ case 0
	.4byte _08047450 @ case 1
	.4byte _08047450 @ case 2
	.4byte _08047458 @ case 3
	.4byte _08047458 @ case 4
	.4byte _08047548 @ case 5
	.4byte _08047450 @ case 6
	.4byte _08047458 @ case 7
	.4byte _08047450 @ case 8
	.4byte _08047458 @ case 9
	.4byte _08047458 @ case 10
	.4byte _08047450 @ case 11
	.4byte _08047450 @ case 12
_08047450:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08047548
	b _0804746E
_08047458:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0804746E
	ldr r0, _0804749C @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r1, _080474A0 @ =0x030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _08047548
_0804746E:
	ldr r0, _080474A0 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _0804749C @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	cmp r1, r0
	bne _080474A8
	ldrb r1, [r7, #1]
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080474A4 @ =0x03000628
	adds r0, r0, r1
	adds r2, r7, #0
	adds r2, #0x34
	adds r3, r7, #0
	adds r3, #0x36
	movs r1, #1
	str r1, [sp]
	movs r1, #8
	bl sub_08026C40
	b _080474AE
	.align 2, 0
_0804749C: .4byte 0x030005F1
_080474A0: .4byte 0x030005F5
_080474A4: .4byte 0x03000628
_080474A8:
	movs r0, #0
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
_080474AE:
	mov r0, r8
	adds r0, #0x10
	ldr r2, _080474E4 @ =0x03000628
	ldrb r3, [r7, #1]
	movs r1, #0x34
	muls r1, r3, r1
	adds r2, #0xc
	adds r1, r1, r2
	ldrb r2, [r7, #2]
	lsls r2, r2, #5
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #1
	bl LoadPalette
	add r0, sp, #0x10
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _080474F8
	cmp r0, #1
	bgt _080474E8
	cmp r0, #0
	beq _080474F2
	b _08047508
	.align 2, 0
_080474E4: .4byte 0x03000628
_080474E8:
	cmp r0, #2
	beq _080474FE
	cmp r0, #3
	beq _08047504
	b _08047508
_080474F2:
	movs r2, #0
	mov sb, r2
	b _08047508
_080474F8:
	movs r3, #1
	mov sb, r3
	b _08047508
_080474FE:
	movs r0, #1
	mov sb, r0
	b _08047508
_08047504:
	movs r1, #3
	mov sb, r1
_08047508:
	ldr r0, [sp, #0x14]
	adds r0, #0x14
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x22
	adds r1, r1, r2
	ldrh r3, [r7, #0x34]
	movs r2, #0
	str r2, [sp]
	add r2, sp, #0x10
	str r2, [sp, #4]
	ldr r6, _0804756C @ =0x03000628
	ldrb r2, [r7, #1]
	movs r5, #0x34
	muls r2, r5, r2
	adds r4, r6, #0
	adds r4, #8
	adds r2, r2, r4
	ldr r2, [r2]
	str r2, [sp, #8]
	ldrb r2, [r7, #1]
	muls r2, r5, r2
	adds r2, r2, r6
	ldr r2, [r2]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08003518
_08047548:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r7, #0x38
	cmp r0, #3
	bhi _0804755A
	b _080473D0
_0804755A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804756C: .4byte 0x03000628

	thumb_func_start sub_08047570
sub_08047570: @ 0x08047570
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _08047588 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047590
	ldr r0, _0804758C @ =0x030005F5
	ldrb r1, [r0]
	movs r6, #0
	cmp r1, #1
	bls _0804759C
	b _0804759A
	.align 2, 0
_08047588: .4byte 0x030005F1
_0804758C: .4byte 0x030005F5
_08047590:
	ldr r0, _080475C8 @ =0x030005F5
	ldrb r1, [r0]
	movs r6, #0
	cmp r1, #5
	bls _0804759C
_0804759A:
	movs r6, #0x78
_0804759C:
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r5, r0, #6
	ldr r0, _080475CC @ =0x030006F8
	ldr r2, _080475D0 @ =0x03000618
	ldr r3, _080475D4 @ =0x03000620
	str r1, [sp]
	movs r1, #0x15
	bl sub_08026C40
	ldr r0, _080475D8 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080475BC
	b _08047776
_080475BC:
	lsls r0, r0, #2
	ldr r1, _080475DC @ =_080475E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080475C8: .4byte 0x030005F5
_080475CC: .4byte 0x030006F8
_080475D0: .4byte 0x03000618
_080475D4: .4byte 0x03000620
_080475D8: .4byte 0x030005F0
_080475DC: .4byte _080475E0
_080475E0: @ jump table
	.4byte _08047614 @ case 0
	.4byte _08047772 @ case 1
	.4byte _08047772 @ case 2
	.4byte _08047658 @ case 3
	.4byte _08047690 @ case 4
	.4byte _080476E0 @ case 5
	.4byte _0804776C @ case 6
	.4byte _0804776C @ case 7
	.4byte _08047776 @ case 8
	.4byte _08047776 @ case 9
	.4byte _08047776 @ case 10
	.4byte _08047776 @ case 11
	.4byte _08047776 @ case 12
_08047614:
	bl sub_0800F298
	cmp r0, #0
	bne _0804761E
	b _08047776
_0804761E:
	adds r0, r6, #0
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x1a
	ldr r2, _08047650 @ =0x03000614
	ldrh r3, [r2, #4]
	movs r5, #1
	str r5, [sp]
	ldr r4, _08047654 @ =0x030006F8
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #0xff
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	movs r2, #0x15
	bl sub_080039C8
	b _08047776
	.align 2, 0
_08047650: .4byte 0x03000614
_08047654: .4byte 0x030006F8
_08047658:
	ldr r2, _08047684 @ =0x03000764
	ldr r0, _08047688 @ =0x030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08047680
	ldr r0, _0804768C @ =0x030006F8
	adds r1, r6, #4
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #2
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
_08047680:
	ldrb r0, [r4, #1]
	b _080476BA
	.align 2, 0
_08047684: .4byte 0x03000764
_08047688: .4byte 0x030005F5
_0804768C: .4byte 0x030006F8
_08047690:
	ldr r2, _080476D4 @ =0x03000764
	ldr r0, _080476D8 @ =0x030005F5
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080476B8
	ldr r0, _080476DC @ =0x030006F8
	adds r1, r6, #4
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #2
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
_080476B8:
	ldrb r0, [r4, #2]
_080476BA:
	cmp r0, #3
	beq _08047776
	ldr r0, _080476DC @ =0x030006F8
	adds r1, r6, #0
	adds r1, #0x1e
	adds r2, r5, #0
	adds r2, #0x1a
	movs r3, #1
	str r3, [sp]
	movs r3, #3
	bl sub_08026B90
	b _08047776
	.align 2, 0
_080476D4: .4byte 0x03000764
_080476D8: .4byte 0x030005F5
_080476DC: .4byte 0x030006F8
_080476E0:
	ldr r0, _08047734 @ =0x030006F8
	ldr r2, _08047738 @ =0x030005FC
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	movs r3, #0
	str r3, [sp]
	movs r3, #0xb
	bl sub_08026B90
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804770C
	ldr r0, _0804773C @ =0x03000730
	ldr r2, _08047740 @ =0x03000614
	ldr r3, _08047744 @ =0x0300061C
	movs r1, #1
	str r1, [sp]
	movs r1, #4
	bl sub_08026C40
_0804770C:
	ldr r0, _08047748 @ =0x03000600
	ldrh r1, [r0]
	ldr r0, _0804774C @ =0x0000060C
	cmp r1, r0
	bne _08047750
	bl sub_0804851C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047750
	ldr r0, _0804773C @ =0x03000730
	ldr r1, _08047740 @ =0x03000614
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, #0xe4
	movs r2, #0x94
	movs r3, #4
	bl sub_08026BC4
	b _08047776
	.align 2, 0
_08047734: .4byte 0x030006F8
_08047738: .4byte 0x030005FC
_0804773C: .4byte 0x03000730
_08047740: .4byte 0x03000614
_08047744: .4byte 0x0300061C
_08047748: .4byte 0x03000600
_0804774C: .4byte 0x0000060C
_08047750:
	ldr r0, _08047764 @ =0x03000730
	ldr r1, _08047768 @ =0x03000614
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, #0xe4
	movs r2, #0x94
	movs r3, #4
	bl sub_08026B90
	b _08047776
	.align 2, 0
_08047764: .4byte 0x03000730
_08047768: .4byte 0x03000614
_0804776C:
	bl sub_0804837C
	b _08047776
_08047772:
	bl sub_0804837C
_08047776:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047780
sub_08047780: @ 0x08047780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _080477E8 @ =0x03000764
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080477EC @ =0x030005F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477A8
	movs r0, #0
	bl sub_0800EE44
_080477A8:
	ldr r0, _080477F0 @ =0x030005F0
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bne _080477B4
	b _08047B42
_080477B4:
	cmp r1, #0xa
	bne _080477BA
	b _08047B42
_080477BA:
	ldr r0, _080477F4 @ =0x030005F1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080477C6
	movs r2, #0xe0
	add sb, r2
_080477C6:
	movs r3, #0
	mov sl, r3
_080477CA:
	mov r0, sb
	adds r0, #0x14
	str r0, [sp, #0x18]
	mov r1, sl
	cmp r1, #1
	bls _080477DA
	movs r2, #0x78
	str r2, [sp, #0xc]
_080477DA:
	mov r3, sl
	cmp r3, #0
	beq _080477E4
	cmp r3, #2
	bne _080477F8
_080477E4:
	movs r0, #0
	b _08047804
	.align 2, 0
_080477E8: .4byte 0x03000764
_080477EC: .4byte 0x030005F8
_080477F0: .4byte 0x030005F0
_080477F4: .4byte 0x030005F1
_080477F8:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r0, r0, #0x10
_08047804:
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08047848
	ldr r0, _08047834 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08047838 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	bne _08047848
	ldr r0, _0804783C @ =0x030005F6
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _08047840
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0804784A
	.align 2, 0
_08047834: .4byte 0x030005F5
_08047838: .4byte 0x030005F1
_0804783C: .4byte 0x030005F6
_08047840:
	ldr r3, _08047844 @ =0x0000FFFD
	b _0804784A
	.align 2, 0
_08047844: .4byte 0x0000FFFD
_08047848:
	movs r3, #0
_0804784A:
	ldrb r0, [r4]
	cmp r0, #7
	beq _08047858
	cmp r0, #9
	beq _08047858
	cmp r0, #0xa
	bne _0804788C
_08047858:
	ldr r0, _08047884 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, _08047888 @ =0x030005F5
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804788C
	ldr r1, [sp, #0xc]
	adds r1, #0x25
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	b _080478DE
	.align 2, 0
_08047884: .4byte 0x030005F1
_08047888: .4byte 0x030005F5
_0804788C:
	mov r0, sb
	ldrb r4, [r0]
	cmp r4, #0
	bne _080478F8
	ldr r0, _080478C4 @ =0x030005F0
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080478CC
	ldr r1, [sp, #0xc]
	adds r1, #0x38
	ldr r0, [sp, #0x10]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1c
	adds r2, r2, r0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _080478C8 @ =0x030006F8
	movs r3, #0x12
	bl sub_0802706C
	b _080479DA
	.align 2, 0
_080478C4: .4byte 0x030005F0
_080478C8: .4byte 0x030006F8
_080478CC:
	ldr r0, _080478F0 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _080478F4 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	cmp r1, r0
	beq _080478DE
	b _080479DA
_080478DE:
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
	b _080479DA
	.align 2, 0
_080478F0: .4byte 0x030005F5
_080478F4: .4byte 0x030005F1
_080478F8:
	ldr r0, _08047978 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #8
	beq _08047910
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r0, #6
	bne _080479B6
_08047910:
	ldr r0, _0804797C @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08047980 @ =0x030005F1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0xc]
	lsls r6, r2, #0x10
	lsls r7, r3, #0x10
	cmp r1, r0
	bne _080479B6
	mov r3, sb
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _080479B6
	bl sub_08001F64
	cmp r0, #0
	beq _080479B6
	mov r0, sb
	ldrb r2, [r0, #4]
	cmp r2, #0
	beq _08047988
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _08047984 @ =0x030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #2
	str r0, [sp]
	ldr r0, _08047984 @ =0x030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	b _080479B6
	.align 2, 0
_08047978: .4byte 0x030005F0
_0804797C: .4byte 0x030005F5
_08047980: .4byte 0x030005F1
_08047984: .4byte 0x030006F8
_08047988:
	asrs r5, r6, #0x10
	adds r1, r5, #0
	adds r1, #0x26
	mov r3, r8
	asrs r0, r3, #0x10
	asrs r4, r7, #0x10
	adds r4, r4, r0
	adds r4, #0x10
	str r2, [sp]
	ldr r0, _08047A3C @ =0x030006F8
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	adds r5, #0x48
	movs r0, #3
	str r0, [sp]
	ldr r0, _08047A3C @ =0x030006F8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
_080479B6:
	asrs r1, r6, #0x10
	adds r1, #0x25
	mov r2, r8
	asrs r0, r2, #0x10
	asrs r2, r7, #0x10
	adds r2, r2, r0
	adds r2, #0x11
	ldr r0, [sp, #0x18]
	movs r3, #1
	bl sub_0800EDBC
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	mov r0, sb
	bl sub_08047D40
_080479DA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #0x38
	add sb, r0
	ldr r4, _08047A40 @ =0x030005F0
	mov r1, sl
	cmp r1, #3
	bhi _080479F2
	b _080477CA
_080479F2:
	ldr r3, _08047A44 @ =0x030005F5
	ldr r0, _08047A48 @ =0x030005F1
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrb r0, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #3
	bne _08047AB0
	movs r2, #0
	str r2, [sp, #0xc]
	cmp r1, #1
	bls _08047A16
	movs r0, #0x78
	str r0, [sp, #0xc]
_08047A16:
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047A4C @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _08047A64
	cmp r0, #1
	bgt _08047A50
	cmp r0, #0
	beq _08047A5A
	b _08047A7C
	.align 2, 0
_08047A3C: .4byte 0x030006F8
_08047A40: .4byte 0x030005F0
_08047A44: .4byte 0x030005F5
_08047A48: .4byte 0x030005F1
_08047A4C: .4byte 0x03000764
_08047A50:
	cmp r0, #2
	beq _08047A6C
	cmp r0, #3
	beq _08047A74
	b _08047A7C
_08047A5A:
	ldr r0, _08047A60 @ =0x00090023
	b _08047A76
	.align 2, 0
_08047A60: .4byte 0x00090023
_08047A64:
	ldr r0, _08047A68 @ =0x00090024
	b _08047A76
	.align 2, 0
_08047A68: .4byte 0x00090024
_08047A6C:
	ldr r0, _08047A70 @ =0x00090025
	b _08047A76
	.align 2, 0
_08047A70: .4byte 0x00090025
_08047A74:
	ldr r0, _08047AA8 @ =0x00090026
_08047A76:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047A7C:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047AAC @ =0x03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
	b _08047B42
	.align 2, 0
_08047AA8: .4byte 0x00090026
_08047AAC: .4byte 0x03003CA0
_08047AB0:
	cmp r0, #4
	bne _08047B42
	movs r0, #0
	str r0, [sp, #0xc]
	cmp r1, #1
	bls _08047AC0
	movs r1, #0x78
	str r1, [sp, #0xc]
_08047AC0:
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	str r2, [sp, #0x10]
	ldrb r1, [r3]
	ldr r0, _08047AE8 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _08047B00
	cmp r0, #1
	bgt _08047AEC
	cmp r0, #0
	beq _08047AF6
	b _08047B18
	.align 2, 0
_08047AE8: .4byte 0x03000764
_08047AEC:
	cmp r0, #2
	beq _08047B08
	cmp r0, #3
	beq _08047B10
	b _08047B18
_08047AF6:
	ldr r0, _08047AFC @ =0x00090027
	b _08047B12
	.align 2, 0
_08047AFC: .4byte 0x00090027
_08047B00:
	ldr r0, _08047B04 @ =0x00090028
	b _08047B12
	.align 2, 0
_08047B04: .4byte 0x00090028
_08047B08:
	ldr r0, _08047B0C @ =0x00090029
	b _08047B12
	.align 2, 0
_08047B0C: .4byte 0x00090029
_08047B10:
	ldr r0, _08047B58 @ =0x0009002A
_08047B12:
	bl GetDataRecord
	str r0, [sp, #0x14]
_08047B18:
	ldr r4, [sp, #0x14]
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, [sp, #0xc]
	adds r1, #0x4c
	ldr r2, _08047B5C @ =0x03003CA0
	ldrh r2, [r2]
	muls r0, r2, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r1, r1, r0
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x10
	adds r0, r4, #0
	bl sub_0800EB30
_08047B42:
	ldr r0, _08047B60 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #8
	bls _08047B4C
	b _08047D28
_08047B4C:
	lsls r0, r0, #2
	ldr r1, _08047B64 @ =_08047B68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047B58: .4byte 0x0009002A
_08047B5C: .4byte 0x03003CA0
_08047B60: .4byte 0x030005F0
_08047B64: .4byte _08047B68
_08047B68: @ jump table
	.4byte _08047B8C @ case 0
	.4byte _08047CE8 @ case 1
	.4byte _08047D00 @ case 2
	.4byte _08047BE4 @ case 3
	.4byte _08047C10 @ case 4
	.4byte _08047C3C @ case 5
	.4byte _08047CBC @ case 6
	.4byte _08047CBC @ case 7
	.4byte _08047BB8 @ case 8
_08047B8C:
	ldr r0, _08047BB0 @ =0x00090007
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BB4 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BB0: .4byte 0x00090007
_08047BB4: .4byte 0x03003CA0
_08047BB8:
	ldr r0, _08047BDC @ =0x00090014
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047BE0 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047BDC: .4byte 0x00090014
_08047BE0: .4byte 0x03003CA0
_08047BE4:
	ldr r0, _08047C08 @ =0x00090008
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C0C @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C08: .4byte 0x00090008
_08047C0C: .4byte 0x03003CA0
_08047C10:
	ldr r0, _08047C34 @ =0x00090009
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047C38 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047C34: .4byte 0x00090009
_08047C38: .4byte 0x03003CA0
_08047C3C:
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1, #2]
	mov sl, r0
	adds r5, r1, #0
_08047C46:
	ldr r0, _08047CA8 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08047CAC @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r2, sl
	lsls r1, r2, #1
	adds r0, #0x14
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r4, _08047CB0 @ =0x03003CA0
	ldrh r0, [r4]
	mov r1, sl
	muls r1, r0, r1
	adds r1, #0x4f
	add r0, sp, #8
	movs r2, #0x12
	movs r3, #1
	bl sub_0800EDBC
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bls _08047C46
	add r0, sp, #8
	ldr r1, _08047CB4 @ =0x00000201
	strh r1, [r0]
	ldr r1, _08047CB8 @ =0x030005F4
	ldrb r0, [r1]
	cmp r0, #0xa
	bhi _08047D28
	adds r1, r0, #0
	ldrh r0, [r4]
	muls r1, r0, r1
	adds r1, #0x50
	add r0, sp, #8
	movs r2, #0x14
	movs r3, #1
	bl sub_0800EDBC
	b _08047D28
	.align 2, 0
_08047CA8: .4byte 0x030005F5
_08047CAC: .4byte 0x03000764
_08047CB0: .4byte 0x03003CA0
_08047CB4: .4byte 0x00000201
_08047CB8: .4byte 0x030005F4
_08047CBC:
	ldr r0, _08047CE0 @ =0x0009000D
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047CE4 @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	b _08047CF2
	.align 2, 0
_08047CE0: .4byte 0x0009000D
_08047CE4: .4byte 0x03003CA0
_08047CE8:
	ldr r0, _08047CFC @ =0x0009000B
	bl GetDataRecord
	adds r0, #0xa
	movs r1, #0x14
_08047CF2:
	movs r2, #0x8b
	bl sub_0800EB30
	b _08047D28
	.align 2, 0
_08047CFC: .4byte 0x0009000B
_08047D00:
	ldr r0, _08047D38 @ =0x0009000C
	bl GetDataRecord
	adds r4, r0, #0
	adds r4, #0xa
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _08047D3C @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x8b
	bl sub_0800EB30
_08047D28:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047D38: .4byte 0x0009000C
_08047D3C: .4byte 0x03003CA0

	thumb_func_start sub_08047D40
sub_08047D40: @ 0x08047D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x60]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r1, _08047D7C @ =0x030005F8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047D62
	b _08047E66
_08047D62:
	cmp r0, #2
	bne _08047D6A
	movs r0, #1
	strb r0, [r1]
_08047D6A:
	ldr r1, [sp, #0x60]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08047D80
	mov r0, sp
	movs r2, #0x38
	bl memcpy
	b _08047DB2
	.align 2, 0
_08047D7C: .4byte 0x030005F8
_08047D80:
	ldr r1, [sp, #0x60]
	ldrb r0, [r1, #1]
	add r5, sp, #0x38
	add r4, sp, #0x54
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08016FF8
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1, #0x10]
	ldrh r0, [r4, #2]
	strh r0, [r1, #0x12]
	ldrh r0, [r5, #2]
	strh r0, [r1, #0xa]
	ldrh r0, [r5]
	strh r0, [r1, #8]
	ldrh r0, [r5, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r5, #4]
	strh r0, [r1, #0xc]
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #3]
	strb r1, [r0, #6]
_08047DB2:
	mov r0, sl
	adds r0, #0x48
	movs r1, #0x28
	adds r1, r1, r7
	mov sb, r1
	mov r1, sp
	ldrb r2, [r1, #3]
	mov r1, sb
	movs r3, #0
	bl sub_08022F60
	mov r4, sl
	adds r4, #0x34
	movs r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	mov r0, sp
	movs r1, #0x10
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_08022F60
	adds r6, r7, #0
	adds r6, #0x38
	mov r0, sp
	movs r1, #0x12
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_08022F60
	adds r5, r7, #0
	adds r5, #0x40
	mov r0, sp
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08022F60
	adds r4, #0x38
	mov r0, sp
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_08022F60
	mov r0, sp
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_08022F60
	mov r0, sp
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08022F60
	ldr r1, [sp, #0x60]
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _08047E56
	mov r0, sl
	adds r0, #0x7b
	mov r1, sp
	ldrb r2, [r1, #6]
	mov r1, sb
	movs r3, #0
	bl sub_08022F60
	b _08047E66
_08047E56:
	mov r0, sl
	adds r0, #0x7b
	mov r1, sp
	ldrb r2, [r1, #7]
	mov r1, sb
	movs r3, #2
	bl sub_08022F60
_08047E66:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08047E78
sub_08047E78: @ 0x08047E78
	ldr r0, _08047E98 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08047EF6
	ldr r2, _08047E9C @ =0x03000600
	ldrh r1, [r2]
	ldr r0, _08047EA0 @ =0x0000060C
	adds r3, r2, #0
	cmp r1, r0
	bne _08047EA8
	ldr r0, _08047EA4 @ =0x030005FC
	movs r1, #0xe4
	strb r1, [r0]
	movs r1, #0x94
	b _08047EF4
	.align 2, 0
_08047E98: .4byte 0x030005F0
_08047E9C: .4byte 0x03000600
_08047EA0: .4byte 0x0000060C
_08047EA4: .4byte 0x030005FC
_08047EA8:
	ldr r0, _08047EBC @ =0x030005F2
	ldrb r0, [r0]
	cmp r0, #0
	blt _08047EF6
	cmp r0, #1
	ble _08047EC0
	cmp r0, #2
	beq _08047EE4
	b _08047EF6
	.align 2, 0
_08047EBC: .4byte 0x030005F2
_08047EC0:
	ldrb r0, [r2]
	movs r2, #0x10
	cmp r0, #4
	bls _08047ED0
	movs r2, #0x20
	cmp r0, #9
	bhi _08047ED0
	movs r2, #0x18
_08047ED0:
	ldr r0, _08047EE0 @ =0x030005FC
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r2, r1
	strb r1, [r0]
	ldrb r1, [r3, #1]
	b _08047EF0
	.align 2, 0
_08047EE0: .4byte 0x030005FC
_08047EE4:
	ldr r0, _08047EF8 @ =0x030005FC
	ldrb r1, [r2]
	lsls r1, r1, #4
	adds r1, #0x10
	strb r1, [r0]
	ldrb r1, [r2, #1]
_08047EF0:
	lsls r1, r1, #4
	adds r1, #0x30
_08047EF4:
	strb r1, [r0, #1]
_08047EF6:
	bx lr
	.align 2, 0
_08047EF8: .4byte 0x030005FC

	thumb_func_start sub_08047EFC
sub_08047EFC: @ 0x08047EFC
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	movs r3, #0
	ldr r0, _08047F64 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08047F68 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x14
_08047F16:
	lsls r0, r3, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08047F22
	adds r4, r3, #0
_08047F22:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _08047F16
	movs r3, #0
	cmp r3, r4
	bhs _08047F5C
	ldr r7, _08047F64 @ =0x030005F5
	ldr r6, _08047F68 @ =0x03000764
	movs r5, #0xff
_08047F38:
	ldrb r1, [r7]
	ldr r2, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r1, r3, #1
	adds r0, #0x14
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _08047F52
	strh r5, [r1]
_08047F52:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _08047F38
_08047F5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047F64: .4byte 0x030005F5
_08047F68: .4byte 0x03000764

	thumb_func_start sub_08047F6C
sub_08047F6C: @ 0x08047F6C
	push {r4, lr}
	ldr r0, _08047FF0 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #5
	beq _08047F78
	b _0804823A
_08047F78:
	ldr r0, _08047FF4 @ =0x03000600
	ldrh r2, [r0]
	ldr r1, _08047FF8 @ =0x0000060C
	adds r3, r0, #0
	cmp r2, r1
	bne _08048008
	ldr r0, _08047FFC @ =0x03000604
	ldrh r1, [r0]
	adds r4, r0, #0
	ldr r2, _08048000 @ =0x030005F2
	cmp r1, #0x40
	bne _08047FBE
	ldrb r1, [r3, #1]
	subs r0, r1, #1
	strb r0, [r3, #1]
	ldr r0, _08048004 @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	blt _08047FAE
	cmp r0, #1
	ble _08047FAA
	cmp r0, #5
	bgt _08047FAE
	cmp r0, #3
	blt _08047FAE
_08047FAA:
	subs r0, r1, #2
	strb r0, [r3, #1]
_08047FAE:
	ldr r0, _08048000 @ =0x030005F2
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08047FBE
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FBE:
	ldrh r0, [r4]
	cmp r0, #0x80
	bne _08047FD4
	movs r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r2]
	cmp r0, #2
	bne _08047FD4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_08047FD4:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08047FDC
	b _0804823A
_08047FDC:
	ldrh r0, [r4]
	cmp r0, #0x20
	bne _08047FE6
	movs r0, #9
	strb r0, [r3]
_08047FE6:
	ldrh r0, [r4]
	cmp r0, #0x10
	beq _08047FEE
	b _0804823A
_08047FEE:
	b _0804811C
	.align 2, 0
_08047FF0: .4byte 0x030005F0
_08047FF4: .4byte 0x03000600
_08047FF8: .4byte 0x0000060C
_08047FFC: .4byte 0x03000604
_08048000: .4byte 0x030005F2
_08048004: .4byte 0x03003CA8
_08048008:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _0804801C
	ldrb r0, [r3]
	cmp r0, #9
	bls _0804801C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x80
	beq _0804802C
_0804801C:
	ldrh r1, [r3]
	ldr r0, _08048038 @ =0x00000609
	cmp r1, r0
	bne _0804803C
	ldr r0, _08048034 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _0804803C
_0804802C:
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
	.align 2, 0
_08048034: .4byte 0x03000604
_08048038: .4byte 0x00000609
_0804803C:
	ldr r0, _08048050 @ =0x030005F2
	ldrb r0, [r0]
	cmp r0, #0
	bge _08048046
	b _0804823A
_08048046:
	cmp r0, #1
	ble _08048054
	cmp r0, #2
	beq _080480B8
	b _0804823A
	.align 2, 0
_08048050: .4byte 0x030005F2
_08048054:
	ldr r0, _08048068 @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0804807E
	cmp r0, #0x20
	bgt _0804806C
	cmp r0, #0x10
	beq _08048076
	b _0804823A
	.align 2, 0
_08048068: .4byte 0x03000604
_0804806C:
	cmp r0, #0x40
	beq _08048098
	cmp r0, #0x80
	beq _0804808A
	b _0804823A
_08048076:
	ldrb r0, [r3]
	cmp r0, #0xb
	bls _08048102
	b _0804811C
_0804807E:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	movs r0, #0xc
	strb r0, [r3]
	b _0804823A
_0804808A:
	ldrb r0, [r3, #1]
	cmp r0, #5
	bhi _08048094
	adds r0, #1
	b _08048238
_08048094:
	movs r0, #0
	b _08048238
_08048098:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080480A2
	subs r0, #1
	b _08048238
_080480A2:
	ldrb r0, [r3]
	cmp r0, #0xc
	bne _080480AC
	movs r0, #6
	b _08048238
_080480AC:
	cmp r0, #9
	bls _080480B4
	movs r0, #5
	b _08048238
_080480B4:
	movs r0, #6
	b _08048238
_080480B8:
	ldr r0, _080480CC @ =0x03000604
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08048122
	cmp r0, #0x20
	bgt _080480D0
	cmp r0, #0x10
	beq _080480DC
	b _0804823A
	.align 2, 0
_080480CC: .4byte 0x03000604
_080480D0:
	cmp r0, #0x40
	bne _080480D6
	b _08048218
_080480D6:
	cmp r0, #0x80
	beq _0804815A
	b _0804823A
_080480DC:
	ldr r0, _080480F8 @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bge _080480E6
	b _0804823A
_080480E6:
	cmp r0, #1
	ble _080480FC
	cmp r0, #5
	ble _080480F0
	b _0804823A
_080480F0:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048110
	b _08048102
	.align 2, 0
_080480F8: .4byte 0x03003CA8
_080480FC:
	ldrb r0, [r3]
	cmp r0, #0xc
	bhi _08048108
_08048102:
	adds r0, #1
	strb r0, [r3]
	b _0804823A
_08048108:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _08048116
	b _0804811C
_08048110:
	ldrb r0, [r3, #1]
	cmp r0, #6
	bls _0804811C
_08048116:
	movs r0, #0xb
	strb r0, [r3]
	b _0804823A
_0804811C:
	movs r0, #0
	strb r0, [r3]
	b _0804823A
_08048122:
	ldr r0, _0804813C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #1
	bgt _08048148
	cmp r0, #0
	blt _08048148
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _08048140
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _0804814E
	b _08048154
	.align 2, 0
_0804813C: .4byte 0x03003CA8
_08048140:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804814E
	b _08048154
_08048148:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08048154
_0804814E:
	subs r0, #1
	strb r0, [r3]
	b _0804823A
_08048154:
	movs r0, #0xd
	strb r0, [r3]
	b _0804823A
_0804815A:
	ldr r0, _0804816C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0804823A
	lsls r0, r0, #2
	ldr r1, _08048170 @ =_08048174
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804816C: .4byte 0x03003CA8
_08048170: .4byte _08048174
_08048174: @ jump table
	.4byte _0804818C @ case 0
	.4byte _0804818C @ case 1
	.4byte _080481A8 @ case 2
	.4byte _080481C4 @ case 3
	.4byte _080481E0 @ case 4
	.4byte _080481FC @ case 5
_0804818C:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048196
	adds r0, #1
	b _08048238
_08048196:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481A4
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481A4:
	movs r0, #0
	b _08048238
_080481A8:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bhi _080481B2
	adds r0, #1
	b _08048238
_080481B2:
	ldrb r0, [r3]
	cmp r0, #0xd
	bls _080481C0
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481C0:
	movs r0, #0
	b _08048238
_080481C4:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481CE
	adds r0, #1
	b _08048238
_080481CE:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481DC
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481DC:
	movs r0, #0
	b _08048238
_080481E0:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _080481EA
	adds r0, #1
	b _08048238
_080481EA:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _080481F8
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_080481F8:
	movs r0, #0
	b _08048238
_080481FC:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bhi _08048206
	adds r0, #1
	b _08048238
_08048206:
	ldrb r0, [r3]
	cmp r0, #0xa
	bls _08048214
	movs r0, #0xc
	strb r0, [r3]
	movs r0, #6
	b _08048238
_08048214:
	movs r0, #0
	b _08048238
_08048218:
	adds r1, r3, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08048226
	subs r0, #1
	strb r0, [r1, #1]
	b _0804823A
_08048226:
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08048236
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #6
	strb r0, [r1, #1]
	b _0804823A
_08048236:
	movs r0, #4
_08048238:
	strb r0, [r3, #1]
_0804823A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08048240
sub_08048240: @ 0x08048240
	ldr r1, _0804824C @ =0x030005F0
	ldrb r1, [r1]
	cmp r1, #5
	beq _08048250
	movs r0, #0
	b _08048372
	.align 2, 0
_0804824C: .4byte 0x030005F0
_08048250:
	ldr r1, _08048264 @ =0x030005F2
	ldrb r1, [r1]
	cmp r1, #1
	beq _0804828C
	cmp r1, #1
	bgt _08048268
	cmp r1, #0
	beq _0804826E
	b _08048372
	.align 2, 0
_08048264: .4byte 0x030005F2
_08048268:
	cmp r1, #2
	beq _080482A8
	b _08048372
_0804826E:
	ldr r3, _08048284 @ =0x080FBE1C
	ldr r2, _08048288 @ =0x03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_08048284: .4byte 0x080FBE1C
_08048288: .4byte 0x03000600
_0804828C:
	ldr r3, _080482A0 @ =0x080FBE77
	ldr r2, _080482A4 @ =0x03000600
	ldrb r1, [r2, #1]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	b _08048372
	.align 2, 0
_080482A0: .4byte 0x080FBE77
_080482A4: .4byte 0x03000600
_080482A8:
	ldr r1, _080482BC @ =0x03003CA8
	ldrh r1, [r1]
	cmp r1, #5
	bhi _08048372
	lsls r0, r1, #2
	ldr r1, _080482C0 @ =_080482C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080482BC: .4byte 0x03003CA8
_080482C0: .4byte _080482C4
_080482C4: @ jump table
	.4byte _080482DC @ case 0
	.4byte _080482DC @ case 1
	.4byte _080482FC @ case 2
	.4byte _0804831C @ case 3
	.4byte _0804833C @ case 4
	.4byte _0804835C @ case 5
_080482DC:
	ldr r3, _080482F4 @ =0x080FBED2
	ldr r0, _080482F8 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_080482F4: .4byte 0x080FBED2
_080482F8: .4byte 0x03000600
_080482FC:
	ldr r3, _08048314 @ =0x080FBF5E
	ldr r0, _08048318 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048314: .4byte 0x080FBF5E
_08048318: .4byte 0x03000600
_0804831C:
	ldr r3, _08048334 @ =0x080FC006
	ldr r0, _08048338 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048334: .4byte 0x080FC006
_08048338: .4byte 0x03000600
_0804833C:
	ldr r3, _08048354 @ =0x080FC0AE
	ldr r0, _08048358 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08048372
	.align 2, 0
_08048354: .4byte 0x080FC0AE
_08048358: .4byte 0x03000600
_0804835C:
	ldr r3, _08048374 @ =0x080FC156
	ldr r0, _08048378 @ =0x03000600
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
_08048372:
	bx lr
	.align 2, 0
_08048374: .4byte 0x080FC156
_08048378: .4byte 0x03000600

	thumb_func_start sub_0804837C
sub_0804837C: @ 0x0804837C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080483E0 @ =0x03000730
	ldr r7, _080483E4 @ =0x03000614
	ldr r4, _080483E8 @ =0x0300061C
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08026C40
	adds r2, r7, #2
	adds r4, #2
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	adds r3, r4, #0
	bl sub_08026C40
	ldr r0, _080483EC @ =0x030005F7
	ldrb r4, [r0]
	cmp r4, #0
	beq _080483F0
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026BC4
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026B90
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #8
	bl sub_08026B90
	b _0804841E
	.align 2, 0
_080483E0: .4byte 0x03000730
_080483E4: .4byte 0x03000614
_080483E8: .4byte 0x0300061C
_080483EC: .4byte 0x030005F7
_080483F0:
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xcc
	movs r2, #0x94
	movs r3, #4
	bl sub_08026B90
	ldrh r0, [r7, #2]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xe2
	movs r2, #0x94
	movs r3, #5
	bl sub_08026BC4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xd7
	movs r2, #0x94
	movs r3, #9
	bl sub_08026B90
_0804841E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08048428
sub_08048428: @ 0x08048428
	push {lr}
	ldr r0, _0804843C @ =0x03000764
	ldr r0, [r0]
	cmp r0, #0
	beq _08048436
	bl Free
_08048436:
	pop {r0}
	bx r0
	.align 2, 0
_0804843C: .4byte 0x03000764

	thumb_func_start sub_08048440
sub_08048440: @ 0x08048440
	ldr r0, _08048450 @ =0x030005F0
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08048454
	cmp r0, #0xc
	beq _08048454
	movs r0, #0
	b _08048456
	.align 2, 0
_08048450: .4byte 0x030005F0
_08048454:
	movs r0, #1
_08048456:
	bx lr

	thumb_func_start sub_08048458
sub_08048458: @ 0x08048458
	ldr r0, _08048460 @ =0x030005F0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08048460: .4byte 0x030005F0

	thumb_func_start sub_08048464
sub_08048464: @ 0x08048464
	push {lr}
	ldr r0, _0804847C @ =0x03000764
	ldr r2, [r0]
	cmp r2, #0
	beq _08048478
	ldr r0, _08048480 @ =0x030005F5
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_0802F374
_08048478:
	pop {r0}
	bx r0
	.align 2, 0
_0804847C: .4byte 0x03000764
_08048480: .4byte 0x030005F5

	thumb_func_start sub_08048484
sub_08048484: @ 0x08048484
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _080484C8 @ =0x00000FFF
	cmp r2, r0
	bls _080484D0
	lsrs r2, r2, #0xc
	cmp r2, #0
	beq _080484E6
	adds r6, r1, #0
	adds r4, r3, #0
	adds r5, r2, #0
_0804849A:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	ldr r0, _080484CC @ =0x030005F8
	ldrb r0, [r0]
	cmp r0, #2
	beq _080484B2
	bl sub_080472FC
_080484B2:
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bne _0804849A
	b _080484E6
	.align 2, 0
_080484C8: .4byte 0x00000FFF
_080484CC: .4byte 0x030005F8
_080484D0:
	adds r0, r3, #0
	bl QueueCopy
	ldr r0, _080484EC @ =0x030005F8
	ldrb r0, [r0]
	cmp r0, #2
	beq _080484E2
	bl sub_080472FC
_080484E2:
	bl WaitFrame
_080484E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080484EC: .4byte 0x030005F8

	thumb_func_start sub_080484F0
sub_080484F0: @ 0x080484F0
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _08048514 @ =0x03000614
	movs r3, #0
	ldr r4, _08048518 @ =0x0300061C
_080484FA:
	lsls r1, r2, #1
	adds r0, r1, r5
	strh r3, [r0]
	adds r1, r1, r4
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080484FA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048514: .4byte 0x03000614
_08048518: .4byte 0x0300061C

	thumb_func_start sub_0804851C
sub_0804851C: @ 0x0804851C
	movs r3, #0
	ldr r0, _08048544 @ =0x030005F5
	ldrb r1, [r0]
	ldr r0, _08048548 @ =0x03000764
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x14
_08048532:
	lsls r0, r3, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804854C
	cmp r0, #0xff
	beq _0804854C
	movs r0, #1
	b _08048558
	.align 2, 0
_08048544: .4byte 0x030005F5
_08048548: .4byte 0x03000764
_0804854C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _08048532
	movs r0, #0
_08048558:
	bx lr
	.align 2, 0

	thumb_func_start sub_0804855C
sub_0804855C: @ 0x0804855C
	push {r4, lr}
	ldr r4, _08048594 @ =0x03000608
	ldr r0, [r4]
	cmp r0, #0
	beq _0804856E
	bl Free
	movs r0, #0
	str r0, [r4]
_0804856E:
	ldr r4, _08048598 @ =0x0300060C
	ldr r0, [r4]
	cmp r0, #0
	beq _0804857E
	bl Free
	movs r0, #0
	str r0, [r4]
_0804857E:
	ldr r4, _0804859C @ =0x03000610
	ldr r0, [r4]
	cmp r0, #0
	beq _0804858E
	bl Free
	movs r0, #0
	str r0, [r4]
_0804858E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048594: .4byte 0x03000608
_08048598: .4byte 0x0300060C
_0804859C: .4byte 0x03000610

	thumb_func_start sub_080485A0
sub_080485A0: @ 0x080485A0
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _080485D4 @ =0x030068F0
	ldr r1, _080485D8 @ =sub_080485E0
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _080485DC @ =sub_08048608
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_080485D4: .4byte 0x030068F0
_080485D8: .4byte sub_080485E0
_080485DC: .4byte sub_08048608

	thumb_func_start sub_080485E0
sub_080485E0: @ 0x080485E0
	push {lr}
	bl sub_080486A4
	ldr r0, _08048600 @ =0x03006918
	ldrb r0, [r0]
	bl sub_080487B8
	bl sub_080486C8
	bl sub_08048740
	ldr r0, _08048604 @ =0x11201100
	bl SignalEvent
	pop {r0}
	bx r0
	.align 2, 0
_08048600: .4byte 0x03006918
_08048604: .4byte 0x11201100

	thumb_func_start sub_08048608
sub_08048608: @ 0x08048608
	push {lr}
	bl sub_08048614
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08048614
sub_08048614: @ 0x08048614
	push {lr}
	ldr r0, _08048628 @ =0x03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08048688
	lsls r0, r0, #2
	ldr r1, _0804862C @ =_08048630
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048628: .4byte 0x03000768
_0804862C: .4byte _08048630
_08048630: @ jump table
	.4byte _08048654 @ case 0
	.4byte _0804865A @ case 1
	.4byte _08048660 @ case 2
	.4byte _08048666 @ case 3
	.4byte _0804866C @ case 4
	.4byte _08048672 @ case 5
	.4byte _08048678 @ case 6
	.4byte _0804867E @ case 7
	.4byte _08048684 @ case 8
_08048654:
	bl sub_08048F64
	b _08048688
_0804865A:
	bl sub_080496B4
	b _08048688
_08048660:
	bl sub_08049E08
	b _08048688
_08048666:
	bl sub_0804A450
	b _08048688
_0804866C:
	bl sub_0804ABC0
	b _08048688
_08048672:
	bl sub_0804B514
	b _08048688
_08048678:
	bl sub_0804BB9C
	b _08048688
_0804867E:
	bl sub_0804C334
	b _08048688
_08048684:
	bl sub_0804C9C0
_08048688:
	ldr r1, _080486A0 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1]
	strh r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_080486A0: .4byte gBgRegsBuffer

	thumb_func_start sub_080486A4
sub_080486A4: @ 0x080486A4
	ldr r1, _080486C0 @ =0x03000768
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080486C4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080486C0: .4byte 0x03000768
_080486C4: .4byte gBgRegsBuffer

	thumb_func_start sub_080486C8
sub_080486C8: @ 0x080486C8
	push {lr}
	ldr r0, _080486DC @ =0x03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0804873C
	lsls r0, r0, #2
	ldr r1, _080486E0 @ =_080486E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080486DC: .4byte 0x03000768
_080486E0: .4byte _080486E4
_080486E4: @ jump table
	.4byte _08048708 @ case 0
	.4byte _0804870E @ case 1
	.4byte _08048714 @ case 2
	.4byte _0804871A @ case 3
	.4byte _08048720 @ case 4
	.4byte _08048726 @ case 5
	.4byte _0804872C @ case 6
	.4byte _08048732 @ case 7
	.4byte _08048738 @ case 8
_08048708:
	bl sub_08048834
	b _0804873C
_0804870E:
	bl sub_08048F7C
	b _0804873C
_08048714:
	bl sub_080496CC
	b _0804873C
_0804871A:
	bl sub_08049E70
	b _0804873C
_08048720:
	bl sub_0804A4AC
	b _0804873C
_08048726:
	bl sub_0804AC1C
	b _0804873C
_0804872C:
	bl sub_0804B52C
	b _0804873C
_08048732:
	bl sub_0804BBA0
	b _0804873C
_08048738:
	bl sub_0804C37C
_0804873C:
	pop {r0}
	bx r0

	thumb_func_start sub_08048740
sub_08048740: @ 0x08048740
	push {lr}
	ldr r0, _08048754 @ =0x03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _080487B4
	lsls r0, r0, #2
	ldr r1, _08048758 @ =_0804875C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048754: .4byte 0x03000768
_08048758: .4byte _0804875C
_0804875C: @ jump table
	.4byte _08048780 @ case 0
	.4byte _08048786 @ case 1
	.4byte _0804878C @ case 2
	.4byte _08048792 @ case 3
	.4byte _08048798 @ case 4
	.4byte _0804879E @ case 5
	.4byte _080487A4 @ case 6
	.4byte _080487AA @ case 7
	.4byte _080487B0 @ case 8
_08048780:
	bl sub_08048930
	b _080487B4
_08048786:
	bl sub_08049088
	b _080487B4
_0804878C:
	bl sub_080497D8
	b _080487B4
_08048792:
	bl sub_0804A074
	b _080487B4
_08048798:
	bl sub_0804A5FC
	b _080487B4
_0804879E:
	bl sub_0804ADF0
	b _080487B4
_080487A4:
	bl sub_0804B660
	b _080487B4
_080487AA:
	bl sub_0804BD48
	b _080487B4
_080487B0:
	bl sub_0804C548
_080487B4:
	pop {r0}
	bx r0

	thumb_func_start sub_080487B8
sub_080487B8: @ 0x080487B8
	push {lr}
	ldr r1, _080487D0 @ =0x03000768
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #8
	bhi _08048830
	lsls r0, r0, #2
	ldr r1, _080487D4 @ =_080487D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080487D0: .4byte 0x03000768
_080487D4: .4byte _080487D8
_080487D8: @ jump table
	.4byte _080487FC @ case 0
	.4byte _08048802 @ case 1
	.4byte _08048808 @ case 2
	.4byte _0804880E @ case 3
	.4byte _08048814 @ case 4
	.4byte _0804881A @ case 5
	.4byte _08048820 @ case 6
	.4byte _08048826 @ case 7
	.4byte _0804882C @ case 8
_080487FC:
	bl sub_08048F38
	b _08048830
_08048802:
	bl sub_08049678
	b _08048830
_08048808:
	bl sub_08049DBC
	b _08048830
_0804880E:
	bl sub_0804A3F4
	b _08048830
_08048814:
	bl sub_0804AB7C
	b _08048830
_0804881A:
	bl sub_0804B4CC
	b _08048830
_08048820:
	bl sub_0804BB88
	b _08048830
_08048826:
	bl sub_0804C2E0
	b _08048830
_0804882C:
	bl sub_0804C9A4
_08048830:
	pop {r0}
	bx r0

	thumb_func_start sub_08048834
sub_08048834: @ 0x08048834
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _080488C8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _080488CC @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x10
	bl GetDataRecord
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _080488D0 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080488E8
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _080488D8
	ldr r1, _080488D4 @ =0x06004000
	b _080488DC
	.align 2, 0
_080488C8: .4byte 0xFFFF0000
_080488CC: .4byte 0x00001F03
_080488D0: .4byte 0x0600F800
_080488D4: .4byte 0x06004000
_080488D8:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_080488DC:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	bl QueueCopy
	b _080488F6
_080488E8:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	bl QueueCopy
_080488F6:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _08048928 @ =0x03000778
	ldr r1, _0804892C @ =0x0010004C
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048928: .4byte 0x03000778
_0804892C: .4byte 0x0010004C

	thumb_func_start sub_08048930
sub_08048930: @ 0x08048930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r6, #0
_0804893E:
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _0804893E
	ldr r4, _08048A18 @ =0xFFC40000
_0804894E:
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =0x03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _0804894E
	movs r0, #5
	mov r8, r0
	movs r0, #0x68
	bl PlaySE
	movs r6, #0
_0804897E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r7, r5, #0x10
	asrs r4, r7, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048A1C @ =0x03000778
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x4e
	ldr r3, _08048A20 @ =gBgRegsBuffer
	strh r4, [r3, #0xe]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _0804897E
	movs r6, #0
	str r7, [sp, #8]
	movs r4, #0
_080489D2:
	cmp r6, #0x1e
	bne _080489DC
	movs r0, #0x66
	bl PlaySE
_080489DC:
	cmp r6, #0x50
	bne _080489E6
	movs r0, #0x66
	bl StopSE
_080489E6:
	adds r0, r6, #0
	subs r0, #0x1f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3a
	bhi _08048A42
	cmp r6, #0x3b
	bhi _08048A24
	str r4, [sp]
	adds r0, r6, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _08048A42
	.align 2, 0
_08048A18: .4byte 0xFFC40000
_08048A1C: .4byte 0x03000778
_08048A20: .4byte gBgRegsBuffer
_08048A24:
	str r4, [sp]
	movs r0, #0x5a
	subs r0, r0, r6
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_08048A42:
	str r4, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r1, #0x78
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x77
	bls _080489D2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x37
	bl PlaySE
	movs r0, #0x67
	bl PlaySE
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048A98:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048AD4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048AD4:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xb3
	bls _08048A98
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r0, _08048BE8 @ =0x00002710
	mov r8, r0
	ldr r7, _08048BEC @ =gBgRegsBuffer
_08048B32:
	cmp r6, #0x2c
	bne _08048B3C
	movs r0, #6
	bl sub_0800F3A0
_08048B3C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08048B78
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl __divsi3
	lsls r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	strh r1, [r7, #0xe]
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r0, r0, #0x18
	strh r0, [r7, #0xc]
_08048B78:
	bl sub_08048BF0
	mov r0, sl
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	mov r1, sb
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	movs r1, #0x78
	subs r1, r1, r5
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	subs r2, r2, r4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08048BE4 @ =0x03000778
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08048D98
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x3b
	bls _08048B32
	movs r0, #0x37
	bl StopSE
	movs r0, #0x67
	bl StopSE
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048BE4: .4byte 0x03000778
_08048BE8: .4byte 0x00002710
_08048BEC: .4byte gBgRegsBuffer

	thumb_func_start sub_08048BF0
sub_08048BF0: @ 0x08048BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08048C6C @ =0x03000770
	ldrb r1, [r0]
	cmp r1, #0x63
	bls _08048C06
	b _08048D80
_08048C06:
	movs r4, #0
	movs r5, #0
	cmp r5, r1
	bhs _08048C30
	ldr r0, _08048C70 @ =0x03000774
	ldr r2, [r0]
_08048C12:
	lsls r0, r5, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048C26
	cmp r0, #3
	beq _08048C26
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08048C26:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _08048C12
_08048C30:
	bl Random
	lsls r0, r0, #0x10
	movs r1, #0xfa
	lsls r1, r1, #0x16
	cmp r0, r1
	ble _08048CD2
	cmp r4, #9
	bhi _08048CD2
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08048C74
	ldr r3, _08048C6C @ =0x03000770
	ldrb r1, [r3]
	ldr r2, _08048C70 @ =0x03000774
	ldr r0, [r2]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r4, [r0, #2]
	b _08048C90
	.align 2, 0
_08048C6C: .4byte 0x03000770
_08048C70: .4byte 0x03000774
_08048C74:
	ldr r3, _08048CA8 @ =0x03000770
	ldrb r0, [r3]
	ldr r2, _08048CAC @ =0x03000774
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldrb r0, [r3]
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xf0
	strh r1, [r0, #2]
_08048C90:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08048CB0
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x3c
	b _08048CBA
	.align 2, 0
_08048CA8: .4byte 0x03000770
_08048CAC: .4byte 0x03000774
_08048CB0:
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x78
_08048CBA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08048D90 @ =0x03000770
	ldrb r0, [r2]
	ldr r1, _08048D94 @ =0x03000774
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r3, [r0, #4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08048CD2:
	movs r5, #0
	ldr r0, _08048D90 @ =0x03000770
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08048D80
	ldr r2, _08048D94 @ =0x03000774
	mov r8, r2
	mov sl, r0
_08048CE2:
	mov r3, r8
	ldr r0, [r3]
	lsls r1, r5, #4
	adds r2, r1, r0
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r1
	adds r4, r5, #1
	mov sb, r4
	cmp r0, #1
	bhi _08048D72
	ldrh r6, [r2, #4]
	adds r2, r5, #0
	adds r3, r5, #0
	mov r7, sl
	ldrb r0, [r7]
	cmp r5, r0
	bhs _08048D40
	str r0, [sp, #0x10]
_08048D0C:
	cmp r5, r3
	beq _08048D34
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r3, #4
	adds r4, r0, r1
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08048D34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r7, #4
	ldrsh r1, [r4, r7]
	cmp r0, r1
	bge _08048D34
	ldrh r6, [r4, #4]
	adds r2, r3, #0
_08048D34:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blo _08048D0C
_08048D40:
	cmp r2, r5
	beq _08048D72
	mov r1, r8
	ldr r3, [r1]
	lsls r2, r2, #4
	adds r2, r2, r3
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	add r3, ip
	ldm r3!, {r0, r1, r7}
	stm r2!, {r0, r1, r7}
	ldr r0, [r3]
	str r0, [r2]
	mov r2, r8
	ldr r1, [r2]
	add r1, ip
	mov r0, sp
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
_08048D72:
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r5, r0, #0x18
	ldr r7, _08048D90 @ =0x03000770
	ldrb r7, [r7]
	cmp r5, r7
	blo _08048CE2
_08048D80:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048D90: .4byte 0x03000770
_08048D94: .4byte 0x03000774

	thumb_func_start sub_08048D98
sub_08048D98: @ 0x08048D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, _08048DF0 @ =0x03000774
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r5, _08048DF4 @ =0x03000778
	movs r0, #1
	mov sl, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	adds r1, #4
	str r1, [sp, #0x20]
	movs r1, #0xc
	adds r1, r1, r4
	mov r8, r1
	adds r7, r4, #6
	lsls r2, r2, #0x18
	asrs r6, r2, #0x18
_08048DCE:
	ldrb r0, [r4]
	adds r3, r4, #0
	adds r3, #8
	movs r2, #0xa
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #1
	bne _08048E7A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08048DF8
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	ble _08048E02
	b _08048F10
	.align 2, 0
_08048DF0: .4byte 0x03000774
_08048DF4: .4byte 0x03000778
_08048DF8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x4f
	bgt _08048E02
	b _08048F10
_08048E02:
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r7, #0
	bl sub_08026C40
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r0, [sp, #0x1c]
	subs r1, r1, r0
	movs r0, #4
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_08026B90
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #4
	mov r2, sb
	mov r3, r8
	bl sub_08026C40
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	subs r1, r1, r6
	ldrh r3, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, sl
	str r2, [sp, #0x10]
	movs r2, #4
	bl sub_08003FA4
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, r0
	ble _08048F10
	b _08048F0C
_08048E7A:
	cmp r0, #2
	bne _08048F10
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _08048E8E
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x4f
	ble _08048E96
	b _08048F10
_08048E8E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	ble _08048F10
_08048E96:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	mov r2, sl
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_08026C40
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0x1c]
	subs r1, r1, r2
	movs r0, #4
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #2
	mov r2, sb
	mov r3, r8
	bl sub_08026C40
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r1, [sp, #0x20]
	subs r0, r0, r1
	movs r2, #4
	ldrsh r1, [r4, r2]
	subs r1, r1, r6
	ldrh r3, [r4, #0xa]
	movs r2, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	mov r2, sl
	str r2, [sp, #0x10]
	movs r2, #2
	bl sub_08003FA4
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08048F10
_08048F0C:
	movs r0, #3
	strb r0, [r4]
_08048F10:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	movs r1, #0x10
	add r8, r1
	adds r7, #0x10
	adds r4, #0x10
	cmp r0, #0x63
	bhi _08048F28
	b _08048DCE
_08048F28:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08048F38
sub_08048F38: @ 0x08048F38
	push {r4, r5, lr}
	ldr r1, _08048F5C @ =0x03000770
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08048F60 @ =0x03000774
	movs r4, #0xc8
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048F5C: .4byte 0x03000770
_08048F60: .4byte 0x03000774

	thumb_func_start sub_08048F64
sub_08048F64: @ 0x08048F64
	push {lr}
	ldr r0, _08048F78 @ =0x03000774
	ldr r0, [r0]
	cmp r0, #0
	beq _08048F72
	bl Free
_08048F72:
	pop {r0}
	bx r0
	.align 2, 0
_08048F78: .4byte 0x03000774

	thumb_func_start sub_08048F7C
sub_08048F7C: @ 0x08048F7C
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	ldr r1, _08049010 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049014 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x11
	bl GetDataRecord
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _08049018 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08049032
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049020
	ldr r1, _0804901C @ =0x06004000
	b _08049024
	.align 2, 0
_08049010: .4byte 0xFFFF0000
_08049014: .4byte 0x00001F03
_08049018: .4byte 0x0600F800
_0804901C: .4byte 0x06004000
_08049020:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049024:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049042
_08049032:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049042:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804907C @ =0x030007B8
	ldr r1, _08049080 @ =0x0010004F
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _08049084 @ =gBgRegsBuffer
	movs r2, #0
	movs r0, #8
	strh r0, [r1, #0xc]
	strh r2, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804907C: .4byte 0x030007B8
_08049080: .4byte 0x0010004F
_08049084: .4byte gBgRegsBuffer

	thumb_func_start sub_08049088
sub_08049088: @ 0x08049088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_080490A0:
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080490A0
	movs r5, #0
	ldr r4, _0804928C @ =gBgRegsBuffer
_080490B2:
	strh r5, [r4, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3f
	bls _080490B2
	ldr r4, _08049290 @ =0xFFC40000
	ldr r5, _0804928C @ =gBgRegsBuffer
	movs r7, #0
_080490C8:
	ldrh r0, [r5, #0xe]
	adds r0, #1
	strh r0, [r5, #0xe]
	asrs r4, r4, #0x10
	str r7, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r4, #0x10
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	lsls r4, r6, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x4f
	ble _080490C8
	movs r7, #5
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov r8, r0
_080490FE:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	rsbs r4, r4, #0
	adds r4, #0x9b
	mov r1, r8
	strh r4, [r1, #0xe]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _080490FE
	movs r7, #2
	movs r5, #0
	ldr r0, _0804928C @ =gBgRegsBuffer
	mov sb, r0
	mov r8, r5
_08049144:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	rsbs r0, r2, #0
	adds r0, #0x9b
	mov r1, sb
	strh r0, [r1, #0xe]
	mov r0, r8
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08049144
	movs r5, #0
	movs r6, #0
_08049184:
	str r6, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r1, #0x78
	asrs r2, r4, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1d
	bls _08049184
	movs r5, #0
	asrs r6, r4, #0x10
_080491A4:
	ldr r0, _08049298 @ =0x00007530
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491A4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	asrs r6, r4, #0x10
_080491EA:
	ldr r0, _080492A4 @ =0x00002EE0
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r6, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x59
	bls _080491EA
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
	asrs r4, r4, #0x10
_08049230:
	cmp r5, #0x2c
	bne _0804923A
	movs r0, #6
	bl sub_0800F3A0
_0804923A:
	movs r0, #0xfa
	lsls r0, r0, #6
	bl sub_080492A8
	movs r0, #0
	bl sub_08049508
	ldr r0, _0804929C @ =0x030007B1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	ldr r0, _080492A0 @ =0x030007B2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049294 @ =0x030007B8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	bl sub_08049508
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08049230
	movs r0, #0x6a
	bl StopSE
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804928C: .4byte gBgRegsBuffer
_08049290: .4byte 0xFFC40000
_08049294: .4byte 0x030007B8
_08049298: .4byte 0x00007530
_0804929C: .4byte 0x030007B1
_080492A0: .4byte 0x030007B2
_080492A4: .4byte 0x00002EE0

	thumb_func_start sub_080492A8
sub_080492A8: @ 0x080492A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080492D8 @ =0x030007B0
	ldrb r0, [r0]
	cmp r0, #0x63
	bls _080492C2
	b _080494EA
_080492C2:
	ldr r0, _080492DC @ =0x030007B1
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _080492E4
	cmp r1, #0
	ble _080492E0
	subs r0, r2, #1
	b _080492E2
	.align 2, 0
_080492D8: .4byte 0x030007B0
_080492DC: .4byte 0x030007B1
_080492E0:
	adds r0, r2, #1
_080492E2:
	strb r0, [r4]
_080492E4:
	ldr r0, _080492FC @ =0x030007B2
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08049304
	cmp r1, #0
	ble _08049300
	subs r0, r2, #1
	b _08049302
	.align 2, 0
_080492FC: .4byte 0x030007B2
_08049300:
	adds r0, r2, #1
_08049302:
	strb r0, [r3]
_08049304:
	ldr r1, _080493C4 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	adds r0, #8
	strh r0, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	adds r0, #0x4d
	strh r0, [r1, #0xe]
	movs r0, #0
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r4, #0
	movs r5, #0
	ldr r0, _080493C8 @ =0x030007B0
	ldrb r1, [r0]
	lsls r6, r6, #0x10
	cmp r5, r1
	bhs _0804935E
	ldr r0, _080493CC @ =0x030007B4
	ldr r2, [r0]
_0804933C:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049354
	cmp r0, #4
	beq _08049354
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08049354:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804933C
_0804935E:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r6
	ble _08049420
	cmp r4, #0x13
	bhi _08049420
	ldr r4, _080493C8 @ =0x030007B0
	ldrb r1, [r4]
	ldr r5, _080493CC @ =0x030007B4
	ldr r2, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #8]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r4, #6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080493D0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x50
	b _080493DA
	.align 2, 0
_080493C4: .4byte gBgRegsBuffer
_080493C8: .4byte 0x030007B0
_080493CC: .4byte 0x030007B4
_080493D0:
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r0, #0x8c
_080493DA:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _080494FC @ =0x030007B0
	ldrb r1, [r5]
	ldr r4, _08049500 @ =0x030007B4
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strh r3, [r0, #0xa]
	bl Random
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _08049504 @ =0x0000199D
	bl __divsi3
	adds r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #0x68
	bl PlaySE
_08049420:
	movs r5, #0
	ldr r0, _080494FC @ =0x030007B0
	ldrb r2, [r0]
	cmp r5, r2
	bhs _080494EA
	ldr r3, _08049500 @ =0x030007B4
	mov sl, r3
_0804942E:
	mov r4, sl
	ldr r1, [r4]
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r4, r0, #2
	adds r1, r4, r1
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r2, [sp, #0x10]
	adds r6, r5, #1
	str r6, [sp, #0xc]
	cmp r0, #2
	bhi _080494DC
	ldrh r7, [r1, #8]
	adds r6, r5, #0
	adds r3, r5, #0
	ldr r1, _080494FC @ =0x030007B0
	ldrb r0, [r1]
	cmp r5, r0
	bhs _080494AC
	ldr r2, _08049500 @ =0x030007B4
	mov ip, r2
	mov sb, r4
	mov r8, r0
_08049462:
	cmp r5, r3
	beq _080494A2
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	beq _08049488
	mov r1, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _08049488
	cmp r0, #3
	bne _080494A2
_08049488:
	mov r2, ip
	ldr r1, [r2]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r1, [r2, r4]
	cmp r0, r1
	bge _080494A2
	ldrh r7, [r2, #8]
	adds r6, r3, #0
_080494A2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08049462
_080494AC:
	cmp r6, r5
	beq _080494DC
	mov r7, sl
	ldr r3, [r7]
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r2, r2, r3
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [sp, #0x10]
	adds r1, r0, r5
	lsls r1, r1, #2
	adds r3, r1, r3
	ldm r3!, {r4, r5, r6}
	stm r2!, {r4, r5, r6}
	mov r7, sl
	ldr r0, [r7]
	adds r1, r1, r0
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
_080494DC:
	ldr r5, [sp, #0xc]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080494FC @ =0x030007B0
	ldrb r6, [r6]
	cmp r5, r6
	blo _0804942E
_080494EA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080494FC: .4byte 0x030007B0
_08049500: .4byte 0x030007B4
_08049504: .4byte 0x0000199D

	thumb_func_start sub_08049508
sub_08049508: @ 0x08049508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08049534 @ =0x030007B4
	ldr r4, [r0]
	movs r0, #0
	mov r8, r0
	mov sb, r0
_08049524:
	mov r1, sl
	cmp r1, #0
	beq _08049538
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _08049542
	b _0804964A
	.align 2, 0
_08049534: .4byte 0x030007B4
_08049538:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0x9f
	bgt _08049542
	b _0804964A
_08049542:
	ldrb r0, [r4]
	cmp r0, #1
	bne _080495B8
	ldrh r0, [r4, #8]
	adds r0, #0xa
	movs r7, #0
	strh r0, [r4, #8]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r5, _080495AC @ =0x030007B1
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r6, _080495B0 @ =0x030007B2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _080495B4 @ =0x030007B8
	bl sub_08026B90
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _08049604
	movs r0, #2
	strb r0, [r4]
	movs r0, #5
	strh r0, [r4, #4]
	strb r7, [r4, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r6]
	b _08049604
	.align 2, 0
_080495AC: .4byte 0x030007B1
_080495B0: .4byte 0x030007B2
_080495B4: .4byte 0x030007B8
_080495B8:
	cmp r0, #2
	bne _08049604
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	movs r5, #0
	strh r0, [r4, #8]
	subs r1, #1
	strh r1, [r4, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	movs r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, _0804966C @ =0x030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =0x030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	mov r0, sb
	str r0, [sp]
	ldr r0, _08049674 @ =0x030007B8
	bl sub_08026B90
	ldrb r0, [r4, #1]
	cmp r0, #0xf
	bls _08049604
	movs r0, #3
	strb r0, [r4]
	strb r5, [r4, #1]
_08049604:
	ldrb r0, [r4]
	cmp r0, #3
	bne _0804964A
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08049640
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldr r0, _0804966C @ =0x030007B1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #8
	ldrsh r2, [r4, r0]
	ldr r0, _08049670 @ =0x030007B2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldrb r3, [r4, #2]
	str r5, [sp]
	ldr r0, _08049674 @ =0x030007B8
	bl sub_08026B90
_08049640:
	ldrb r0, [r4, #1]
	cmp r0, #0x3c
	bls _0804964A
	movs r0, #4
	strb r0, [r4]
_0804964A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r4, #0xc
	cmp r0, #0x63
	bhi _0804965C
	b _08049524
_0804965C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804966C: .4byte 0x030007B1
_08049670: .4byte 0x030007B2
_08049674: .4byte 0x030007B8

	thumb_func_start sub_08049678
sub_08049678: @ 0x08049678
	push {r4, r5, lr}
	ldr r0, _080496A4 @ =0x030007B0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080496A8 @ =0x030007B1
	strb r1, [r0]
	ldr r0, _080496AC @ =0x030007B2
	strb r1, [r0]
	ldr r5, _080496B0 @ =0x030007B4
	movs r4, #0x96
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080496A4: .4byte 0x030007B0
_080496A8: .4byte 0x030007B1
_080496AC: .4byte 0x030007B2
_080496B0: .4byte 0x030007B4

	thumb_func_start sub_080496B4
sub_080496B4: @ 0x080496B4
	push {lr}
	ldr r0, _080496C8 @ =0x030007B4
	ldr r0, [r0]
	cmp r0, #0
	beq _080496C2
	bl Free
_080496C2:
	pop {r0}
	bx r0
	.align 2, 0
_080496C8: .4byte 0x030007B4

	thumb_func_start sub_080496CC
sub_080496CC: @ 0x080496CC
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _08049760 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049764 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0x13
	bl GetDataRecord
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _08049768 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08049782
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049770
	ldr r1, _0804976C @ =0x06004000
	b _08049774
	.align 2, 0
_08049760: .4byte 0xFFFF0000
_08049764: .4byte 0x00001F03
_08049768: .4byte 0x0600F800
_0804976C: .4byte 0x06004000
_08049770:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049774:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049792
_08049782:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049792:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _080497CC @ =0x03000800
	ldr r1, _080497D0 @ =0x00100052
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _080497D4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080497CC: .4byte 0x03000800
_080497D0: .4byte 0x00100052
_080497D4: .4byte gBgRegsBuffer

	thumb_func_start sub_080497D8
sub_080497D8: @ 0x080497D8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0x6d
	bl PlaySE
	movs r5, #0
	ldr r4, _080498E8 @ =gBgRegsBuffer
_080497F2:
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080497F2
	movs r4, #0
	movs r0, #0x6c
	bl PlaySE
	movs r5, #0
	ldr r7, _080498EC @ =0x0805289C
_08049812:
	lsrs r3, r5, #2
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080498F0 @ =0x03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _080498E8 @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #0x3b
	bls _08049812
	str r6, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
	ldr r7, _080498EC @ =0x0805289C
_08049884:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080498F0 @ =0x03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _080498E8 @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r5, #0x59
	bls _08049884
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x39
	bl PlaySE
	ldr r5, _080498EC @ =0x0805289C
	b _08049936
	.align 2, 0
_080498E8: .4byte gBgRegsBuffer
_080498EC: .4byte 0x0805289C
_080498F0: .4byte 0x03000800
_080498F4:
	movs r0, #0
	bl sub_08049C58
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049948 @ =0x03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _0804994C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
_08049936:
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_08049A24
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080498F4
	ldr r5, _08049950 @ =0x0805289C
	b _0804999E
	.align 2, 0
_08049948: .4byte 0x03000800
_0804994C: .4byte gBgRegsBuffer
_08049950: .4byte 0x0805289C
_08049954:
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_08049A24
	movs r0, #0
	bl sub_08049C58
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049A18 @ =0x03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _08049A1C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
_0804999E:
	bl sub_08049E30
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049954
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
	ldr r6, _08049A20 @ =0x0805289C
_080499B2:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r2, #0x50
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08049A18 @ =0x03000800
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	ldr r1, _08049A1C @ =gBgRegsBuffer
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	bl WaitFrame
	cmp r5, #0x2c
	bne _080499F8
	movs r0, #6
	bl sub_0800F3A0
_080499F8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080499B2
	movs r0, #0x39
	bl StopSE
	movs r0, #0x6d
	bl StopSE
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049A18: .4byte 0x03000800
_08049A1C: .4byte gBgRegsBuffer
_08049A20: .4byte 0x0805289C

	thumb_func_start sub_08049A24
sub_08049A24: @ 0x08049A24
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08049A38 @ =0x030007F0
	ldrb r1, [r0]
	cmp r1, #0x3b
	bls _08049A3C
	movs r0, #0
	b _08049C46
	.align 2, 0
_08049A38: .4byte 0x030007F0
_08049A3C:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #0x10
	cmp r3, r1
	bhs _08049A68
	ldr r0, _08049ADC @ =0x030007F8
	ldr r4, [r0]
_08049A4A:
	lsls r0, r2, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049A5E
	cmp r0, #3
	beq _08049A5E
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08049A5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	blo _08049A4A
_08049A68:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r5
	bgt _08049A76
	b _08049C44
_08049A76:
	cmp r4, #9
	bls _08049A7C
	b _08049C44
_08049A7C:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049B54
	ldr r4, _08049AE0 @ =0x030007F0
	ldrb r0, [r4]
	ldr r5, _08049ADC @ =0x030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #2
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049AE4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049AC4
	rsbs r0, r0, #0
_08049AC4:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049B1E
	.align 2, 0
_08049ADC: .4byte 0x030007F8
_08049AE0: .4byte 0x030007F0
_08049AE4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B0A
	rsbs r0, r0, #0
_08049B0A:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049B1E:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B2E
	rsbs r0, r0, #0
_08049B2E:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049B4C @ =0x030007F0
	ldrb r1, [r5]
	ldr r4, _08049B50 @ =0x030007F8
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc8
	strh r0, [r1, #8]
	b _08049C18
	.align 2, 0
_08049B4C: .4byte 0x030007F0
_08049B50: .4byte 0x030007F8
_08049B54:
	ldr r4, _08049BAC @ =0x030007F0
	ldrb r0, [r4]
	ldr r5, _08049BB0 @ =0x030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #1
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049BB4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B94
	rsbs r0, r0, #0
_08049B94:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049BEC
	.align 2, 0
_08049BAC: .4byte 0x030007F0
_08049BB0: .4byte 0x030007F8
_08049BB4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BD8
	rsbs r0, r0, #0
_08049BD8:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049BEC:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BFC
	rsbs r0, r0, #0
_08049BFC:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049C50 @ =0x030007F0
	ldrb r2, [r5]
	ldr r4, _08049C54 @ =0x030007F8
	ldr r1, [r4]
	lsls r2, r2, #4
	adds r2, r2, r1
	movs r1, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #8]
_08049C18:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049C26
	rsbs r0, r0, #0
_08049C26:
	movs r1, #0x14
	bl __modsi3
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
	strh r0, [r1, #0xc]
	ldr r1, _08049C50 @ =0x030007F0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08049C44:
	movs r0, #1
_08049C46:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08049C50: .4byte 0x030007F0
_08049C54: .4byte 0x030007F8

	thumb_func_start sub_08049C58
sub_08049C58: @ 0x08049C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08049CF4 @ =0x030007F8
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, _08049CF8 @ =0x03000800
	mov r8, r1
	adds r2, r4, #6
	mov sb, r2
	movs r5, #3
	mov sl, r5
_08049C78:
	ldrb r7, [r4]
	adds r3, r4, #4
	cmp r7, #2
	bne _08049D0E
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	ldrb r1, [r4, #1]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _08049CFC @ =0x0805289C
	adds r0, r0, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	asrs r6, r0, #6
	lsls r1, r1, #1
	ldr r0, _08049CFC @ =0x0805289C
	adds r1, r1, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r2, r0
	asrs r5, r0, #8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r3, #0
	mov r3, sb
	bl sub_08026C40
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	adds r1, r1, r5
	ldrh r3, [r4, #4]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r5, r8
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08049D00
	ldrb r0, [r4, #1]
	cmp r0, #0x44
	bhi _08049D92
	mov r5, sl
	strb r5, [r4]
	b _08049D92
	.align 2, 0
_08049CF4: .4byte 0x030007F8
_08049CF8: .4byte 0x03000800
_08049CFC: .4byte 0x0805289C
_08049D00:
	ldrb r0, [r4, #1]
	cmp r0, #0xbb
	bls _08049D0A
	mov r1, sl
	strb r1, [r4]
_08049D0A:
	adds r0, #4
	b _08049D94
_08049D0E:
	cmp r7, #1
	bne _08049D96
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	ldrb r1, [r4, #1]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r5, _08049D84 @ =0x0805289C
	adds r0, r0, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	asrs r6, r0, #6
	lsls r1, r1, #1
	ldr r0, _08049D84 @ =0x0805289C
	adds r1, r1, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r2, r0
	asrs r5, r0, #8
	str r7, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r3, #0
	mov r3, sb
	bl sub_08026C40
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	adds r1, r1, r5
	ldrh r3, [r4, #4]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r5, r8
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5]
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _08049D88
	ldrb r0, [r4, #1]
	cmp r0, #0x40
	bne _08049D80
	mov r1, sl
	strb r1, [r4]
_08049D80:
	adds r0, #4
	b _08049D94
	.align 2, 0
_08049D84: .4byte 0x0805289C
_08049D88:
	ldrb r0, [r4, #1]
	cmp r0, #0xc0
	bne _08049D92
	mov r2, sl
	strb r2, [r4]
_08049D92:
	subs r0, #4
_08049D94:
	strb r0, [r4, #1]
_08049D96:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	movs r5, #0x10
	add sb, r5
	adds r4, #0x10
	cmp r0, #0x3b
	bhi _08049DAC
	b _08049C78
_08049DAC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08049DBC
sub_08049DBC: @ 0x08049DBC
	push {r4, r5, lr}
	ldr r0, _08049DF4 @ =0x030007F0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08049DF8 @ =0x030007F1
	strb r1, [r0]
	ldr r4, _08049DFC @ =0x030007F4
	movs r0, #0xa2
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	ldr r1, _08049E00 @ =REG_BG3HOFS
	str r1, [r0]
	ldr r5, _08049E04 @ =0x030007F8
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049DF4: .4byte 0x030007F0
_08049DF8: .4byte 0x030007F1
_08049DFC: .4byte 0x030007F4
_08049E00: .4byte REG_BG3HOFS
_08049E04: .4byte 0x030007F8

	thumb_func_start sub_08049E08
sub_08049E08: @ 0x08049E08
	push {lr}
	ldr r0, _08049E28 @ =0x030007F4
	ldr r0, [r0]
	cmp r0, #0
	beq _08049E16
	bl Free
_08049E16:
	ldr r0, _08049E2C @ =0x030007F8
	ldr r0, [r0]
	cmp r0, #0
	beq _08049E22
	bl Free
_08049E22:
	pop {r0}
	bx r0
	.align 2, 0
_08049E28: .4byte 0x030007F4
_08049E2C: .4byte 0x030007F8

	thumb_func_start sub_08049E30
sub_08049E30: @ 0x08049E30
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _08049E68 @ =0x030007F0
	ldrb r2, [r0]
	cmp r3, r2
	bhs _08049E60
	ldr r0, _08049E6C @ =0x030007F8
	ldr r4, [r0]
_08049E42:
	lsls r0, r1, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049E56
	cmp r0, #3
	beq _08049E56
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08049E56:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _08049E42
_08049E60:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08049E68: .4byte 0x030007F0
_08049E6C: .4byte 0x030007F8

	thumb_func_start sub_08049E70
sub_08049E70: @ 0x08049E70
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _08049F30 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F34 @ =0x00001E03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _08049F38 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x20
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F3C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1f
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _08049F40 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _08049F5A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _08049F48
	ldr r1, _08049F44 @ =0x06004000
	b _08049F4C
	.align 2, 0
_08049F30: .4byte 0xFFFF0000
_08049F34: .4byte 0x00001E03
_08049F38: .4byte 0x00001F03
_08049F3C: .4byte 0x0600F800
_08049F40: .4byte 0x0600F000
_08049F44: .4byte 0x06004000
_08049F48:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08049F4C:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _08049F6A
_08049F5A:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_08049F6A:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _08049FA4 @ =0x03000850
	ldr r1, _08049FA8 @ =0x00100051
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _08049FAC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #0x3c
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049FA4: .4byte 0x03000850
_08049FA8: .4byte 0x00100051
_08049FAC: .4byte gBgRegsBuffer

	thumb_func_start sub_08049FB0
sub_08049FB0: @ 0x08049FB0
	push {r4, r5, r6, lr}
	ldr r5, _08049FF4 @ =0x0300083C
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0
	beq _0804A000
	ldr r4, _08049FF8 @ =0x0300083A
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldr r4, _08049FFC @ =0x0300083B
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804A008
	.align 2, 0
_08049FF4: .4byte 0x0300083C
_08049FF8: .4byte 0x0300083A
_08049FFC: .4byte 0x0300083B
_0804A000:
	ldr r0, _0804A058 @ =0x0300083A
	strb r1, [r0]
	ldr r0, _0804A05C @ =0x0300083B
	strb r1, [r0]
_0804A008:
	ldr r4, _0804A060 @ =gBgRegsBuffer
	ldr r2, _0804A058 @ =0x0300083A
	movs r0, #0
	ldrsb r0, [r2, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	ldr r5, _0804A05C @ =0x0300083B
	movs r0, #0
	ldrsb r0, [r5, r0]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
	ldr r6, _0804A064 @ =0x0300083D
	ldrb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x1a
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	strh r1, [r4, #0xc]
	lsrs r0, r0, #0x19
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	bl sub_08005F60
	ldrb r0, [r6]
	cmp r0, #0xf0
	bne _0804A068
	movs r0, #0
	b _0804A06A
	.align 2, 0
_0804A058: .4byte 0x0300083A
_0804A05C: .4byte 0x0300083B
_0804A060: .4byte gBgRegsBuffer
_0804A064: .4byte 0x0300083D
_0804A068:
	adds r0, #1
_0804A06A:
	strb r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804A074
sub_0804A074: @ 0x0804A074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r5, #0
_0804A096:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0804A096
	movs r0, #0x3a
	bl PlaySE
	movs r5, #0
_0804A0B6:
	bl sub_08049FB0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A0B6
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r7, _0804A1B4 @ =0x03000850
	ldr r6, _0804A1B8 @ =0x03000842
_0804A0EC:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	asrs r0, r0, #1
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r6, #2
	bl sub_08026C40
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _0804A0EC
	movs r5, #0x1e
	ldr r0, _0804A1B4 @ =0x03000850
	mov r8, r0
	ldr r7, _0804A1B8 @ =0x03000842
_0804A13C:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #1
	adds r2, r2, r4
	asrs r2, r2, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0804A1BC @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	subs r1, r1, r2
	ldr r0, _0804A1C0 @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, r4, r2
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	adds r2, r7, #0
	adds r3, r7, #2
	bl sub_08026C40
	lsls r6, r5, #0x10
	asrs r1, r6, #0x10
	movs r0, #0xfa
	lsls r0, r0, #5
	adds r2, r4, #0
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xef
	ble _0804A13C
	adds r5, r6, #0
	adds r4, r2, #0
	b _0804A1DC
	.align 2, 0
_0804A1B4: .4byte 0x03000850
_0804A1B8: .4byte 0x03000842
_0804A1BC: .4byte 0x0300083A
_0804A1C0: .4byte 0x0300083B
_0804A1C4:
	ldr r0, _0804A220 @ =0x00007FBC
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	bl sub_0804A224
	movs r0, #0
	bl sub_0804A2EC
	bl sub_08049FB0
	bl WaitFrame
_0804A1DC:
	bl sub_0804A468
	cmp r0, #0
	bne _0804A1C4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804A1EC:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804A1FA
	movs r0, #6
	bl sub_0800F3A0
_0804A1FA:
	bl sub_08049FB0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A1EC
	movs r0, #0x6a
	bl StopSE
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A220: .4byte 0x00007FBC

	thumb_func_start sub_0804A224
sub_0804A224: @ 0x0804A224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0804A2DC @ =0x03000838
	ldrb r2, [r0]
	cmp r2, #0x3b
	bhi _0804A2D0
	movs r1, #0
	lsls r4, r3, #0x10
	cmp r2, #0
	beq _0804A262
	ldr r0, _0804A2E0 @ =0x0300084C
	ldr r3, [r0]
_0804A24E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A24E
_0804A262:
	bl Random
	ldr r6, _0804A2E4 @ =0x0300083E
	ldrh r1, [r6]
	adds r1, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	cmp r0, r4
	ble _0804A2D0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0804A2D0
	ldr r3, _0804A2DC @ =0x03000838
	ldrb r1, [r3]
	ldr r4, _0804A2E0 @ =0x0300084C
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	movs r1, #2
	strb r1, [r0]
	ldrb r1, [r3]
	ldr r2, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	strh r7, [r0, #6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0, #8]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r4, [r0, #1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strh r5, [r6]
	ldr r1, _0804A2E8 @ =0x0300083C
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0x22
	bl PlaySE
_0804A2D0:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A2DC: .4byte 0x03000838
_0804A2E0: .4byte 0x0300084C
_0804A2E4: .4byte 0x0300083E
_0804A2E8: .4byte 0x0300083C

	thumb_func_start sub_0804A2EC
sub_0804A2EC: @ 0x0804A2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804A3E0 @ =0x0300084C
	ldr r6, [r0]
	movs r0, #0
	mov sl, r0
	ldr r1, _0804A3E4 @ =0x03000850
	mov r8, r1
	movs r2, #1
	mov sb, r2
_0804A308:
	ldrb r0, [r6]
	cmp r0, #2
	bne _0804A3BE
	ldrb r5, [r6, #1]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsrs r4, r4, #4
	lsrs r5, r5, #2
	adds r2, r6, #2
	adds r3, r6, #4
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	bl sub_08026C40
	movs r1, #6
	ldrsh r0, [r6, r1]
	adds r1, r4, #0
	subs r1, #0x40
	subs r0, r0, r1
	ldr r2, _0804A3E8 @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #8
	ldrsh r1, [r6, r3]
	adds r2, r5, #0
	subs r2, #0x1c
	adds r1, r1, r2
	ldr r3, _0804A3EC @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r2, [r6, #2]
	mov ip, r2
	movs r7, #0
	str r7, [sp]
	ldr r3, _0804A3F0 @ =0x0300086C
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	mov r3, ip
	bl sub_08003FA4
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r4, #8
	subs r0, r0, r4
	ldr r4, _0804A3E8 @ =0x0300083A
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r6, r2]
	subs r5, #0x40
	adds r1, r1, r5
	ldr r3, _0804A3EC @ =0x0300083B
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r1, r1, r2
	ldrh r3, [r6, #2]
	str r7, [sp]
	ldr r4, _0804A3F0 @ =0x0300086C
	str r4, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	mov r2, sb
	str r2, [sp, #0x10]
	movs r2, #1
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0804A3BE
	movs r0, #5
	strb r0, [r6]
	strb r7, [r6, #1]
_0804A3BE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r6, #0xc
	cmp r0, #0x3b
	bls _0804A308
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3E0: .4byte 0x0300084C
_0804A3E4: .4byte 0x03000850
_0804A3E8: .4byte 0x0300083A
_0804A3EC: .4byte 0x0300083B
_0804A3F0: .4byte 0x0300086C

	thumb_func_start sub_0804A3F4
sub_0804A3F4: @ 0x0804A3F4
	push {r4, r5, lr}
	ldr r0, _0804A430 @ =0x03000838
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804A434 @ =0x03000839
	strb r1, [r0]
	ldr r0, _0804A438 @ =0x0300083A
	strb r1, [r0]
	ldr r0, _0804A43C @ =0x0300083B
	strb r1, [r0]
	ldr r0, _0804A440 @ =0x0300083C
	strb r1, [r0]
	ldr r2, _0804A444 @ =0x0300083E
	movs r0, #0xa
	strh r0, [r2]
	ldr r0, _0804A448 @ =0x0300083D
	strb r1, [r0]
	ldr r5, _0804A44C @ =0x0300084C
	movs r4, #0xb4
	lsls r4, r4, #2
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A430: .4byte 0x03000838
_0804A434: .4byte 0x03000839
_0804A438: .4byte 0x0300083A
_0804A43C: .4byte 0x0300083B
_0804A440: .4byte 0x0300083C
_0804A444: .4byte 0x0300083E
_0804A448: .4byte 0x0300083D
_0804A44C: .4byte 0x0300084C

	thumb_func_start sub_0804A450
sub_0804A450: @ 0x0804A450
	push {lr}
	ldr r0, _0804A464 @ =0x0300084C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804A45E
	bl Free
_0804A45E:
	pop {r0}
	bx r0
	.align 2, 0
_0804A464: .4byte 0x0300084C

	thumb_func_start sub_0804A468
sub_0804A468: @ 0x0804A468
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804A4A4 @ =0x03000838
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804A49C
	ldr r0, _0804A4A8 @ =0x0300084C
	ldr r4, [r0]
_0804A47A:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A492
	cmp r0, #5
	beq _0804A492
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804A492:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804A47A
_0804A49C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A4A4: .4byte 0x03000838
_0804A4A8: .4byte 0x0300084C

	thumb_func_start sub_0804A4AC
sub_0804A4AC: @ 0x0804A4AC
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804A56C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A570 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804A574 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x14
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A578 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x15
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804A57C @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804A596
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804A584
	ldr r1, _0804A580 @ =0x06004000
	b _0804A588
	.align 2, 0
_0804A56C: .4byte 0xFFFF0000
_0804A570: .4byte 0x00001F03
_0804A574: .4byte 0x00001E02
_0804A578: .4byte 0x0600F800
_0804A57C: .4byte 0x0600F000
_0804A580: .4byte 0x06004000
_0804A584:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804A588:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804A5A6
_0804A596:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804A5A6:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804A5EC @ =gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0804A5F0 @ =0x03000890
	ldr r1, _0804A5F4 @ =0x0010004D
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804A5F8 @ =gBgRegsBuffer
	strh r4, [r1, #0xc]
	movs r0, #0x1b
	strh r0, [r1, #0xe]
	strh r4, [r1, #8]
	movs r0, #0x60
	strh r0, [r1, #0xa]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5EC: .4byte gPaletteBuffer
_0804A5F0: .4byte 0x03000890
_0804A5F4: .4byte 0x0010004D
_0804A5F8: .4byte gBgRegsBuffer

	thumb_func_start sub_0804A5FC
sub_0804A5FC: @ 0x0804A5FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r5, #0
_0804A61A:
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A61A
	movs r0, #0x6a
	bl PlaySE
	movs r5, #0
	ldr r2, _0804A8AC @ =0x03000889
	mov sb, r2
_0804A63A:
	lsls r7, r5, #0x10
	lsrs r6, r7, #0x10
	movs r5, #1
	ands r5, r6
	cmp r5, #0
	bne _0804A658
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	mov r1, sb
	strb r0, [r1]
_0804A658:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	ldr r4, _0804A8AC @ =0x03000889
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r2, #0
	mov ip, r2
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r4, r0]
	strh r0, [r1, #0xc]
	cmp r5, #0
	bne _0804A676
	ldrh r0, [r1, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
_0804A676:
	movs r3, #3
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _0804A686
	ldrh r0, [r1, #0xe]
	adds r0, #1
	strh r0, [r1, #0xe]
_0804A686:
	asrs r5, r7, #0x10
	cmp r5, #0x2d
	ble _0804A6AA
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0x78
	subs r1, r1, r0
	lsls r0, r5, #1
	movs r2, #0x87
	lsls r2, r2, #1
	subs r2, r2, r0
	mov r0, ip
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r3, #0
	bl sub_0802706C
_0804A6AA:
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, _0804A8B8 @ =0x0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x59
	ble _0804A63A
	movs r7, #0
	mov sl, r2
	adds r5, r4, #0
	str r0, [sp, #0xc]
	mov r1, sl
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r2, #0
	mov sb, r2
_0804A6DE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r2, _0804A8BC @ =0x0805289C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804A718
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	strb r0, [r5]
_0804A718:
	ldr r1, _0804A8B0 @ =gBgRegsBuffer
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #8]
	movs r0, #0
	ldrsb r0, [r5, r0]
	strh r0, [r1, #0xc]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #0xc]
	subs r2, r0, r2
	mov r1, sb
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0804A8B8 @ =0x0300088A
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	bl WaitFrame
	lsls r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0804A6DE
	movs r0, #0x6a
	bl StopSE
	movs r7, #0
	ldr r5, _0804A8BC @ =0x0805289C
_0804A774:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804A774
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	movs r0, #0
	mov sb, r0
_0804A7CC:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804A8BC @ =0x0805289C
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	ble _0804A7CC
	movs r0, #0x3b
	bl PlaySE
	movs r7, #0
	ldr r1, _0804A8BC @ =0x0805289C
	mov sb, r1
	ldr r5, _0804A8C0 @ =0x00000103
_0804A846:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804A8B4 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	movs r0, #0
	bl sub_0804AB10
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_0804AA10
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _0804A846
	ldr r4, _0804A8BC @ =0x0805289C
	b _0804A90A
	.align 2, 0
_0804A8AC: .4byte 0x03000889
_0804A8B0: .4byte gBgRegsBuffer
_0804A8B4: .4byte 0x03000890
_0804A8B8: .4byte 0x0300088A
_0804A8BC: .4byte 0x0805289C
_0804A8C0: .4byte 0x00000103
_0804A8C4:
	mov r0, sl
	asrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804AA08 @ =0x00007FBC
	bl sub_0804AA10
	movs r0, #0
	bl sub_0804AB10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl WaitFrame
_0804A90A:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804ABD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A8C4
	movs r7, #0
	movs r6, #0
	ldr r2, _0804AA0C @ =0x0805289C
	mov sb, r2
_0804A92A:
	movs r0, #0x10
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0xf
	ble _0804A92A
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	ldr r6, _0804AA0C @ =0x0805289C
_0804A996:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804A9A4
	movs r0, #6
	bl sub_0800F3A0
_0804A9A4:
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r1, sl
	asrs r2, r1, #0x10
	asrs r0, r0, #0x14
	subs r2, r2, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0804AA04 @ =0x03000890
	movs r1, #0x78
	movs r3, #0
	bl sub_0802706C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804A996
	movs r0, #0x3b
	bl StopSE
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA04: .4byte 0x03000890
_0804AA08: .4byte 0x00007FBC
_0804AA0C: .4byte 0x0805289C

	thumb_func_start sub_0804AA10
sub_0804AA10: @ 0x0804AA10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _0804AB08 @ =0x03000888
	ldrb r0, [r2]
	cmp r0, #0x63
	bls _0804AA24
	movs r0, #0
	strb r0, [r2]
_0804AA24:
	movs r3, #0
	movs r1, #0
	ldrb r2, [r2]
	lsls r5, r4, #0x10
	cmp r3, r2
	bhs _0804AA56
	ldr r0, _0804AB0C @ =0x0300088C
	ldr r4, [r0]
_0804AA34:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AA4C
	cmp r0, #2
	beq _0804AA4C
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AA4C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804AA34
_0804AA56:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0804AA66
	rsbs r1, r1, #0
_0804AA66:
	asrs r0, r5, #0x10
	cmp r1, r0
	ble _0804AAFE
	cmp r4, #0x13
	bhi _0804AAFE
	ldr r6, _0804AB08 @ =0x03000888
	ldrb r1, [r6]
	ldr r7, _0804AB0C @ =0x0300088C
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	bl Random
	ldrb r2, [r6]
	ldr r5, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r4, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0804AA9E
	rsbs r0, r0, #0
_0804AA9E:
	movs r1, #0xf0
	bl __modsi3
	strh r0, [r4, #8]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0xa]
	bl Random
	lsls r0, r0, #0x10
	ldrb r1, [r6]
	ldr r2, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0, #1]
	bl Random
	ldr r4, _0804AB08 @ =0x03000888
	ldrb r2, [r4]
	ldr r1, _0804AB0C @ =0x0300088C
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0804AAE8
	rsbs r2, r2, #0
_0804AAE8:
	adds r0, r2, #0
	cmp r2, #0
	bge _0804AAF0
	adds r0, r2, #3
_0804AAF0:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strb r0, [r1, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0804AAFE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB08: .4byte 0x03000888
_0804AB0C: .4byte 0x0300088C

	thumb_func_start sub_0804AB10
sub_0804AB10: @ 0x0804AB10
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0804AB74 @ =0x0300088C
	ldr r4, [r0]
	movs r5, #0
	ldr r6, _0804AB78 @ =0x03000890
_0804AB1C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0804AB5E
	ldrb r1, [r4, #1]
	adds r2, r4, #4
	adds r3, r4, #6
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08026C40
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldrb r3, [r4, #1]
	ldrh r0, [r4, #4]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0802706C
	ldrb r0, [r4, #2]
	adds r0, #2
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0804AB5E
	movs r0, #2
	strb r0, [r4]
_0804AB5E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0xc
	cmp r5, #0x63
	bls _0804AB1C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AB74: .4byte 0x0300088C
_0804AB78: .4byte 0x03000890

	thumb_func_start sub_0804AB7C
sub_0804AB7C: @ 0x0804AB7C
	push {r4, r5, lr}
	ldr r0, _0804ABAC @ =0x03000888
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804ABB0 @ =0x03000889
	strb r1, [r0]
	ldr r0, _0804ABB4 @ =0x0300088A
	strb r1, [r0]
	ldr r0, _0804ABB8 @ =0x0300088B
	strb r1, [r0]
	ldr r5, _0804ABBC @ =0x0300088C
	movs r4, #0x96
	lsls r4, r4, #3
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABAC: .4byte 0x03000888
_0804ABB0: .4byte 0x03000889
_0804ABB4: .4byte 0x0300088A
_0804ABB8: .4byte 0x0300088B
_0804ABBC: .4byte 0x0300088C

	thumb_func_start sub_0804ABC0
sub_0804ABC0: @ 0x0804ABC0
	push {lr}
	ldr r0, _0804ABD4 @ =0x0300088C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804ABCE
	bl Free
_0804ABCE:
	pop {r0}
	bx r0
	.align 2, 0
_0804ABD4: .4byte 0x0300088C

	thumb_func_start sub_0804ABD8
sub_0804ABD8: @ 0x0804ABD8
	push {r4, lr}
	movs r3, #0
	movs r1, #0
	ldr r0, _0804AC14 @ =0x03000888
	ldrb r2, [r0]
	cmp r3, r2
	bhs _0804AC0C
	ldr r0, _0804AC18 @ =0x0300088C
	ldr r4, [r0]
_0804ABEA:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AC02
	cmp r0, #2
	beq _0804AC02
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804AC02:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804ABEA
_0804AC0C:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804AC14: .4byte 0x03000888
_0804AC18: .4byte 0x0300088C

	thumb_func_start sub_0804AC1C
sub_0804AC1C: @ 0x0804AC1C
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804AD0C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD10 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD14 @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804AD18 @ =0x00001D01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1e
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD1C @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD20 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1d
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804AD24 @ =0x0600E800
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804AD3E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804AD2C
	ldr r1, _0804AD28 @ =0x06004000
	b _0804AD30
	.align 2, 0
_0804AD0C: .4byte 0xFFFF0000
_0804AD10: .4byte 0x00001F03
_0804AD14: .4byte 0x00001E02
_0804AD18: .4byte 0x00001D01
_0804AD1C: .4byte 0x0600F800
_0804AD20: .4byte 0x0600F000
_0804AD24: .4byte 0x0600E800
_0804AD28: .4byte 0x06004000
_0804AD2C:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804AD30:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804AD4E
_0804AD3E:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804AD4E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804AD88 @ =0x030008D8
	ldr r1, _0804AD8C @ =0x00100053
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	ldr r1, _0804AD90 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD88: .4byte 0x030008D8
_0804AD8C: .4byte 0x00100053
_0804AD90: .4byte gBgRegsBuffer

	thumb_func_start sub_0804AD94
sub_0804AD94: @ 0x0804AD94
	push {r4, lr}
	ldr r2, _0804ADE0 @ =gBgRegsBuffer
	ldr r0, _0804ADE4 @ =0x030008C9
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #0xc]
	ldr r0, _0804ADE8 @ =0x030008CA
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
	ldr r4, _0804ADEC @ =0x030008CC
	ldrb r1, [r4]
	lsrs r3, r1, #3
	strh r3, [r2, #8]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	strh r3, [r2, #4]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	asrs r0, r0, #1
	strh r0, [r2, #6]
	adds r1, #0xa
	strb r1, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bls _0804ADD8
	movs r0, #0
	strb r0, [r4]
_0804ADD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804ADE0: .4byte gBgRegsBuffer
_0804ADE4: .4byte 0x030008C9
_0804ADE8: .4byte 0x030008CA
_0804ADEC: .4byte 0x030008CC

	thumb_func_start sub_0804ADF0
sub_0804ADF0: @ 0x0804ADF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0x76
	bl PlaySE
	movs r5, #0
_0804AE10:
	bl WaitFrame
	bl sub_0804AD94
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AE10
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r5, #0
	ldr r7, _0804B01C @ =0x0000FFC4
_0804AE32:
	cmp r5, #0x3f
	bhi _0804AE48
	lsrs r3, r5, #2
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
_0804AE48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	bl WaitFrame
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x4f
	ble _0804AE32
	movs r0, #0x68
	bl PlaySE
	movs r0, #5
	mov r8, r0
	movs r5, #0
	ldr r6, _0804B024 @ =gBgRegsBuffer
_0804AE84:
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl sub_0804AD94
	rsbs r4, r4, #0
	adds r4, #0x4e
	strh r4, [r6, #0xe]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0804AE84
	movs r2, #2
	mov r8, r2
	movs r5, #0
	ldr r3, _0804B024 @ =gBgRegsBuffer
	mov sl, r3
	mov sb, r5
_0804AEDA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl sub_0804AD94
	lsls r6, r7, #0x10
	asrs r4, r6, #0x10
	rsbs r0, r4, #0
	adds r0, #0x4e
	mov r3, sl
	strh r0, [r3, #0xe]
	ldr r0, _0804B028 @ =0x030008C9
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0804B02C @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08005F60
	mov r0, sb
	str r0, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	adds r2, r4, #0
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0804AEDA
	movs r5, #0
	mov sl, r6
_0804AF38:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804AF38
	str r6, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
_0804AF70:
	bl sub_0804AD94
	movs r6, #0
	str r6, [sp]
	ldr r0, _0804B020 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0804AF70
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	movs r0, #0x77
	bl PlaySE
	ldr r1, _0804B030 @ =0x030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r5, #0
	mov sb, r5
	ldr r7, _0804B028 @ =0x030008C9
	ldr r6, _0804B02C @ =0x030008CA
	ldr r0, _0804B020 @ =0x030008D8
	mov r8, r0
_0804AFBE:
	lsrs r0, r5, #1
	movs r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	adds r0, r5, #0
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0804B038
	ldr r4, _0804B030 @ =0x030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B034
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B038
	.align 2, 0
_0804B01C: .4byte 0x0000FFC4
_0804B020: .4byte 0x030008D8
_0804B024: .4byte gBgRegsBuffer
_0804B028: .4byte 0x030008C9
_0804B02C: .4byte 0x030008CA
_0804B030: .4byte 0x030008CB
_0804B034:
	strb r0, [r7]
	strb r0, [r6]
_0804B038:
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r2, sb
	str r2, [sp]
	ldr r3, _0804B13C @ =0x030008F4
	str r3, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r3, #0
	bl sub_08003FA4
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, #0xb4
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x50
	mov r3, sb
	str r3, [sp]
	ldr r2, _0804B13C @ =0x030008F4
	str r2, [sp, #4]
	mov r3, r8
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _0804B0CA
	b _0804AFBE
_0804B0CA:
	movs r5, #0
	ldr r7, _0804B140 @ =0x030008C9
	ldr r6, _0804B144 @ =0x030008CA
_0804B0D0:
	movs r0, #0xfa
	lsls r0, r0, #3
	bl sub_0804B2A8
	movs r0, #0
	bl sub_0804B3A4
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B148 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804B154
	ldr r4, _0804B14C @ =0x030008CB
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804B150
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r7]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804B154
	.align 2, 0
_0804B13C: .4byte 0x030008F4
_0804B140: .4byte 0x030008C9
_0804B144: .4byte 0x030008CA
_0804B148: .4byte 0x030008D8
_0804B14C: .4byte 0x030008CB
_0804B150:
	strb r0, [r7]
	strb r0, [r6]
_0804B154:
	bl sub_0804AD94
	movs r0, #0
	ldrsb r0, [r7, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r6, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _0804B0D0
_0804B176:
	movs r2, #0
	movs r5, #0
	ldr r0, _0804B220 @ =0x030008C8
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0804B1A4
	ldr r0, _0804B224 @ =0x030008D0
	ldr r3, [r0]
_0804B186:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B19A
	cmp r0, #3
	beq _0804B19A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804B19A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804B186
_0804B1A4:
	cmp r2, #0
	beq _0804B246
	movs r0, #0
	bl sub_0804B3A4
	ldr r6, _0804B228 @ =0x030008C9
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x78
	mov r0, sl
	asrs r2, r0, #0x10
	ldr r4, _0804B22C @ =0x030008CA
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B230 @ =0x030008D8
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	ldrsb r0, [r6, r0]
	rsbs r0, r0, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	rsbs r1, r1, #0
	bl sub_08005F60
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804B23C
	ldr r5, _0804B234 @ =0x030008CB
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804B238
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r5]
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0804B23C
	.align 2, 0
_0804B220: .4byte 0x030008C8
_0804B224: .4byte 0x030008D0
_0804B228: .4byte 0x030008C9
_0804B22C: .4byte 0x030008CA
_0804B230: .4byte 0x030008D8
_0804B234: .4byte 0x030008CB
_0804B238:
	strb r0, [r6]
	strb r0, [r4]
_0804B23C:
	bl sub_0804AD94
	bl WaitFrame
	b _0804B176
_0804B246:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r5, #0
_0804B25E:
	bl sub_0804AD94
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804B2A4 @ =0x030008D8
	movs r1, #0x78
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_08026B90
	bl WaitFrame
	cmp r5, #0x2c
	bne _0804B282
	movs r0, #6
	bl sub_0800F3A0
_0804B282:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _0804B25E
	movs r0, #0x76
	bl StopSE
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2A4: .4byte 0x030008D8

	thumb_func_start sub_0804B2A8
sub_0804B2A8: @ 0x0804B2A8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	movs r1, #0
	ldr r0, _0804B314 @ =0x030008C8
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0804B2DC
	ldr r0, _0804B318 @ =0x030008D0
	ldr r3, [r0]
_0804B2BE:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B2D2
	cmp r0, #3
	beq _0804B2D2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804B2D2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0804B2BE
_0804B2DC:
	bl Random
	lsls r0, r0, #0x10
	lsls r1, r5, #0x10
	cmp r0, r1
	ble _0804B394
	cmp r4, #0
	bne _0804B394
	ldr r1, _0804B31C @ =0x030008CB
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x77
	bl PlaySE
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B320
	ldr r0, _0804B314 @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B318 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	b _0804B32E
	.align 2, 0
_0804B314: .4byte 0x030008C8
_0804B318: .4byte 0x030008D0
_0804B31C: .4byte 0x030008CB
_0804B320:
	ldr r0, _0804B34C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #2
_0804B32E:
	strb r1, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804B354
	ldr r0, _0804B34C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B350 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x1e
	b _0804B362
	.align 2, 0
_0804B34C: .4byte 0x030008C8
_0804B350: .4byte 0x030008D0
_0804B354:
	ldr r0, _0804B39C @ =0x030008C8
	ldrb r0, [r0]
	ldr r1, _0804B3A0 @ =0x030008D0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xb4
_0804B362:
	strh r1, [r0, #2]
	bl Random
	ldr r5, _0804B39C @ =0x030008C8
	ldrb r4, [r5]
	ldr r1, _0804B3A0 @ =0x030008D0
	ldr r6, [r1]
	lsls r4, r4, #2
	adds r4, r4, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl __umodsi3
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #2]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r2, [r0, #1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0804B394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B39C: .4byte 0x030008C8
_0804B3A0: .4byte 0x030008D0

	thumb_func_start sub_0804B3A4
sub_0804B3A4: @ 0x0804B3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804B3EC @ =0x030008D0
	ldr r4, [r0]
	movs r7, #0
	movs r0, #0x10
	mov r8, r0
	ldr r1, _0804B3F0 @ =0x030008F4
	mov sb, r1
	mov r6, sb
	subs r6, #0x1c
_0804B3C0:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804B4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0804B3F4
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	str r1, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r0, #0x1f
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804B4B6
	.align 2, 0
_0804B3EC: .4byte 0x030008D0
_0804B3F0: .4byte 0x030008F4
_0804B3F4:
	ldrb r0, [r4, #1]
	movs r3, #0x12
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	bl sub_080044E4
	ldrb r3, [r4]
	cmp r3, #1
	bne _0804B450
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B448 @ =0x030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B44C @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r2, #1
	movs r3, #0
	bl sub_08003FA4
	b _0804B482
	.align 2, 0
_0804B448: .4byte 0x030008C9
_0804B44C: .4byte 0x030008CA
_0804B450:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r1, _0804B4C4 @ =0x030008C9
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, _0804B4C8 @ =0x030008CA
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0x50
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	movs r2, #2
	movs r3, #0
	bl sub_08003FA4
_0804B482:
	ldrb r0, [r4, #1]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bls _0804B4AA
	strb r1, [r4, #1]
	mov r0, r8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	strb r0, [r4]
_0804B4AA:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r4, #4
	cmp r7, #9
	bls _0804B3C0
_0804B4B6:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4C4: .4byte 0x030008C9
_0804B4C8: .4byte 0x030008CA

	thumb_func_start sub_0804B4CC
sub_0804B4CC: @ 0x0804B4CC
	push {r4, lr}
	ldr r0, _0804B4FC @ =0x030008C8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0804B500 @ =0x030008C9
	strb r1, [r0]
	ldr r0, _0804B504 @ =0x030008CA
	strb r1, [r0]
	ldr r0, _0804B508 @ =0x030008CB
	strb r1, [r0]
	ldr r0, _0804B50C @ =0x030008CC
	strb r1, [r0]
	ldr r4, _0804B510 @ =0x030008D0
	movs r0, #0x28
	bl Alloc
	str r0, [r4]
	movs r1, #0x28
	bl bzero
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4FC: .4byte 0x030008C8
_0804B500: .4byte 0x030008C9
_0804B504: .4byte 0x030008CA
_0804B508: .4byte 0x030008CB
_0804B50C: .4byte 0x030008CC
_0804B510: .4byte 0x030008D0

	thumb_func_start sub_0804B514
sub_0804B514: @ 0x0804B514
	push {lr}
	ldr r0, _0804B528 @ =0x030008D0
	ldr r0, [r0]
	cmp r0, #0
	beq _0804B522
	bl Free
_0804B522:
	pop {r0}
	bx r0
	.align 2, 0
_0804B528: .4byte 0x030008D0

	thumb_func_start sub_0804B52C
sub_0804B52C: @ 0x0804B52C
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804B5EC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804B5F0 @ =0x00005A02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804B5F4 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x16
	bl GetDataRecord
	adds r5, r0, #0
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804B5F8 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	movs r0, #0x17
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804B5FC @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804B616
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804B604
	ldr r1, _0804B600 @ =0x06004000
	b _0804B608
	.align 2, 0
_0804B5EC: .4byte 0xFFFF0000
_0804B5F0: .4byte 0x00005A02
_0804B5F4: .4byte 0x00001F03
_0804B5F8: .4byte 0x0600F800
_0804B5FC: .4byte 0x0600D000
_0804B600: .4byte 0x06004000
_0804B604:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804B608:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804B626
_0804B616:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804B626:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804B658 @ =0x03000918
	ldr r1, _0804B65C @ =0x00100054
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B658: .4byte 0x03000918
_0804B65C: .4byte 0x00100054

	thumb_func_start sub_0804B660
sub_0804B660: @ 0x0804B660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0x78
	bl PlaySE
	movs r6, #0
	movs r5, #0
	ldr r0, _0804B81C @ =gBgRegsBuffer
	mov r8, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r7, r1, #0
_0804B68C:
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #0x18
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	str r5, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, _0804B820 @ =0x03000918
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	subs r0, r7, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	mov r2, r8
	strh r0, [r2, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x3b
	ble _0804B68C
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r7, _0804B820 @ =0x03000918
	movs r3, #3
	mov sl, r3
	ldr r0, _0804B824 @ =0x03000910
	mov sb, r0
_0804B6E4:
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	mov r2, sb
	ldr r3, _0804B828 @ =0x03000912
	bl sub_08026C40
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	movs r4, #0x82
	lsls r4, r4, #1
	subs r4, r4, r5
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	str r0, [sp]
	mov r2, sl
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r4, r4, #0
	adds r4, #0x78
	ldr r3, _0804B81C @ =gBgRegsBuffer
	strh r4, [r3, #8]
	bl WaitFrame
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r6, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x45
	ble _0804B6E4
	movs r0, #0x7a
	bl StopSE
	movs r0, #0x79
	bl PlaySE
	ldr r1, _0804B824 @ =0x03000910
	mov r0, r8
	strh r0, [r1]
	ldr r0, _0804B828 @ =0x03000912
	mov r2, r8
	strh r2, [r0]
	movs r6, #0
	ldr r5, _0804B820 @ =0x03000918
	mov sl, r6
	movs r3, #3
	mov sb, r3
	mov r8, r1
	movs r7, #0xbe
_0804B76E:
	mov r0, sl
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	mov r2, sl
	str r2, [sp]
	adds r0, r5, #0
	movs r1, #5
	mov r2, r8
	ldr r3, _0804B828 @ =0x03000912
	bl sub_08026C40
	lsls r1, r6, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x11
	subs r1, r7, r1
	mov r3, r8
	movs r2, #0
	ldrsh r0, [r3, r2]
	str r0, [sp]
	mov r3, sb
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	subs r0, r7, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	ldr r1, _0804B81C @ =gBgRegsBuffer
	strh r0, [r1, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x27
	ble _0804B76E
	movs r6, #0
	ldr r2, _0804B820 @ =0x03000918
	mov r8, r2
	movs r7, #0
	movs r5, #3
	ldr r4, _0804B81C @ =gBgRegsBuffer
	movs r3, #0x96
	mov sb, r3
_0804B7DE:
	str r7, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	ldr r0, _0804B824 @ =0x03000910
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0xaa
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r2, r0
	cmp r0, #0x78
	ble _0804B82C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r0, #0x78
	strh r0, [r4, #8]
	b _0804B82E
	.align 2, 0
_0804B81C: .4byte gBgRegsBuffer
_0804B820: .4byte 0x03000918
_0804B824: .4byte 0x03000910
_0804B828: .4byte 0x03000912
_0804B82C:
	strh r7, [r4, #8]
_0804B82E:
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804B7DE
	movs r6, #0
	ldr r7, _0804BB78 @ =0x03000918
	movs r4, #0
	movs r5, #3
_0804B84A:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0xaf
	movs r2, #0x64
	movs r3, #5
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B84A
	ldr r4, _0804BB80 @ =0x03000910
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r5, _0804BB78 @ =0x03000918
	mov sb, r6
	movs r2, #3
	mov r8, r2
	adds r7, r4, #0
_0804B89A:
	mov r3, sb
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	ldr r3, _0804BB84 @ =0x03000912
	bl sub_08026C40
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	movs r1, #0xaf
	subs r1, r1, r4
	movs r2, #0
	ldrsh r0, [r7, r2]
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	mov r1, sb
	strh r1, [r0, #8]
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x36
	ble _0804B89A
	movs r0, #0x78
	bl StopSE
	movs r0, #0x7a
	bl StopSE
	movs r6, #0
	ldr r7, _0804BB78 @ =0x03000918
	movs r4, #0
	movs r5, #3
_0804B904:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B904
	movs r6, #0
	ldr r7, _0804BB78 @ =0x03000918
	movs r4, #0
	movs r5, #3
_0804B944:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804B944
	ldr r4, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =0x03000912
	strh r1, [r0]
	movs r0, #0x7b
	bl PlaySE
	movs r6, #0
	ldr r5, _0804BB78 @ =0x03000918
	mov r8, r6
	movs r7, #3
_0804B994:
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	ldr r3, _0804BB84 @ =0x03000912
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	mov r2, r8
	strh r2, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0804B994
	movs r6, #0
	ldr r7, _0804BB78 @ =0x03000918
	movs r4, #0
	movs r5, #3
_0804B9EC:
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804B9EC
	ldr r2, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r2]
	ldr r0, _0804BB84 @ =0x03000912
	strh r1, [r0]
	movs r6, #0
	ldr r5, _0804BB78 @ =0x03000918
	movs r4, #0
	movs r3, #3
	mov r8, r3
	adds r7, r2, #0
_0804BA3A:
	str r4, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	ldr r3, _0804BB84 @ =0x03000912
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_0802706C
	ldr r0, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r0, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BA3A
	movs r6, #0
	ldr r0, _0804BB78 @ =0x03000918
	mov r8, r0
	movs r4, #0
	movs r5, #3
_0804BA92:
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_0802706C
	ldr r7, _0804BB7C @ =gBgRegsBuffer
	strh r4, [r7, #8]
	bl WaitFrame
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BA92
	ldr r4, _0804BB80 @ =0x03000910
	movs r1, #0
	strh r1, [r4]
	ldr r0, _0804BB84 @ =0x03000912
	strh r1, [r0]
	movs r0, #0x78
	bl PlaySE
	movs r0, #0x7a
	bl PlaySE
	movs r6, #0
	ldr r2, _0804BB78 @ =0x03000918
	mov r8, r2
	movs r3, #3
	mov sl, r3
	mov sb, r4
_0804BAEC:
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0xae
	bne _0804BAFA
	movs r0, #6
	bl sub_0800F3A0
_0804BAFA:
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #3
	bl sub_0802706C
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r1, #1
	mov r2, sb
	ldr r3, _0804BB84 @ =0x03000912
	bl sub_08026C40
	movs r1, #0x78
	subs r4, r1, r5
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0x64
	movs r3, #1
	bl sub_0802706C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r4, r4, #0
	adds r4, #0x78
	strh r4, [r7, #8]
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbd
	ble _0804BAEC
	movs r0, #1
	bl FadeOutAllMusicPlayers
	movs r0, #0x78
	bl StopSE
	movs r0, #0x7a
	bl StopSE
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB78: .4byte 0x03000918
_0804BB7C: .4byte gBgRegsBuffer
_0804BB80: .4byte 0x03000910
_0804BB84: .4byte 0x03000912

	thumb_func_start sub_0804BB88
sub_0804BB88: @ 0x0804BB88
	ldr r0, _0804BB94 @ =0x03000910
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804BB98 @ =0x03000912
	strh r1, [r0]
	bx lr
	.align 2, 0
_0804BB94: .4byte 0x03000910
_0804BB98: .4byte 0x03000912

	thumb_func_start sub_0804BB9C
sub_0804BB9C: @ 0x0804BB9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804BBA0
sub_0804BBA0: @ 0x0804BBA0
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804BC90 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC94 @ =0x00009A01
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC98 @ =0x00001E43
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804BC9C @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x19
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA0 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1a
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA4 @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x18
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804BCA8 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #5
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804BCC2
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804BCB0
	ldr r1, _0804BCAC @ =0x06004000
	b _0804BCB4
	.align 2, 0
_0804BC90: .4byte 0xFFFF0000
_0804BC94: .4byte 0x00009A01
_0804BC98: .4byte 0x00001E43
_0804BC9C: .4byte 0x00001F03
_0804BCA0: .4byte 0x0600F800
_0804BCA4: .4byte 0x0600F000
_0804BCA8: .4byte 0x0600D000
_0804BCAC: .4byte 0x06004000
_0804BCB0:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804BCB4:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804BCD2
_0804BCC2:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804BCD2:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804BD04 @ =0x03000960
	ldr r1, _0804BD08 @ =0x0010004E
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD04: .4byte 0x03000960
_0804BD08: .4byte 0x0010004E

	thumb_func_start sub_0804BD0C
sub_0804BD0C: @ 0x0804BD0C
	push {r4, lr}
	ldr r4, _0804BD40 @ =0x03000956
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	ldr r3, _0804BD44 @ =gBgRegsBuffer
	ldrh r2, [r4]
	lsls r1, r2, #2
	rsbs r1, r1, #0
	strh r1, [r3, #8]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r1, #1
	strh r1, [r3, #0xa]
	adds r2, #1
	rsbs r1, r2, #0
	strh r1, [r3, #0xc]
	asrs r0, r0, #0x12
	strh r0, [r3, #0xe]
	strh r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD40: .4byte 0x03000956
_0804BD44: .4byte gBgRegsBuffer

	thumb_func_start sub_0804BD48
sub_0804BD48: @ 0x0804BD48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	strh r4, [r1, #4]
	ldr r0, _0804BE6C @ =0x0000FF60
	strh r0, [r1, #6]
	movs r0, #0x7c
	bl PlaySE
	movs r7, #0
_0804BD8E:
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804BD8E
	movs r0, #0x7d
	bl PlaySE
	movs r7, #0
	ldr r4, _0804BE68 @ =gBgRegsBuffer
_0804BDB0:
	ldrh r0, [r4, #6]
	adds r0, #2
	strh r0, [r4, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _0804BDB0
	movs r0, #0
	mov r8, r0
	ldr r1, _0804BE68 @ =gBgRegsBuffer
	ldrh r0, [r1, #6]
	movs r7, #0
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
	mov sl, r0
_0804BDE2:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BDE2
	movs r0, #0x6c
	bl PlaySE
	movs r7, #0
	ldr r0, _0804BE68 @ =gBgRegsBuffer
	mov sb, r0
	mov r1, sl
	asrs r5, r1, #0x10
	ldr r6, _0804BE70 @ =0x0805289C
_0804BE34:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	ldr r2, _0804BE74 @ =0xFFE10000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x3a
	bhi _0804BE98
	cmp r1, #0x3b
	bgt _0804BE78
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	subs r0, #0x1e
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
	b _0804BE98
	.align 2, 0
_0804BE68: .4byte gBgRegsBuffer
_0804BE6C: .4byte 0x0000FF60
_0804BE70: .4byte 0x0805289C
_0804BE74: .4byte 0xFFE10000
_0804BE78:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x5a
	subs r0, r0, r1
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080044E4
_0804BE98:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r2, sb
	strh r0, [r2, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _0804BE34
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r7, #0
	ldr r2, _0804BFC8 @ =gBgRegsBuffer
	mov sb, r2
	mov r0, sl
	asrs r5, r0, #0x10
	ldr r6, _0804BFCC @ =0x0805289C
_0804BEF4:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r5, r0
	asrs r0, r0, #4
	mov r1, sb
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804BEF4
	ldr r1, _0804BFD0 @ =0x03000954
	ldr r5, _0804BFC8 @ =gBgRegsBuffer
	ldrh r0, [r5, #4]
	strh r0, [r1]
	movs r0, #0x10
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804BFD4 @ =0x03000958
	strh r4, [r0]
	ldr r0, _0804BFD8 @ =0x0300095A
	strh r4, [r0]
	movs r0, #0x7e
	bl PlaySE
	movs r7, #0
	mov sb, r5
_0804BF60:
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	ldr r1, _0804BFCC @ =0x0805289C
	adds r0, r0, r1
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x14
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_0804C0A8
	bl sub_0804C238
	mov r2, sl
	asrs r6, r2, #0x10
	adds r4, r6, r4
	mov r0, sb
	strh r4, [r0, #6]
	bl sub_0804BD0C
	bl WaitFrame
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd1
	ble _0804BF60
	movs r0, #0x7e
	bl StopSE
	ldr r7, _0804BFC8 @ =gBgRegsBuffer
	adds r4, r6, #0
	ldr r5, _0804BFCC @ =0x0805289C
	b _0804C012
	.align 2, 0
_0804BFC8: .4byte gBgRegsBuffer
_0804BFCC: .4byte 0x0805289C
_0804BFD0: .4byte 0x03000954
_0804BFD4: .4byte 0x03000958
_0804BFD8: .4byte 0x0300095A
_0804BFDC:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0804C238
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	asrs r0, r0, #4
	strh r0, [r7, #6]
	bl sub_0804BD0C
	bl WaitFrame
_0804C012:
	bl sub_0804C34C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0804BFDC
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r7, #0
	mov r2, sl
	asrs r6, r2, #0x10
	ldr r0, _0804C0A0 @ =0x0805289C
	mov sb, r0
_0804C03E:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x2c
	bne _0804C04C
	movs r0, #6
	bl sub_0800F3A0
_0804C04C:
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r6, r0
	asrs r0, r0, #4
	ldr r1, _0804C0A4 @ =gBgRegsBuffer
	strh r0, [r1, #6]
	bl sub_0804BD0C
	bl WaitFrame
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C03E
	movs r0, #0x7c
	bl StopSE
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C0A0: .4byte 0x0805289C
_0804C0A4: .4byte gBgRegsBuffer

	thumb_func_start sub_0804C0A8
sub_0804C0A8: @ 0x0804C0A8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0804C0C8 @ =0x03000950
	ldrh r3, [r0]
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r1, r0, #0
	cmp r2, #0
	beq _0804C0D0
	cmp r2, #0
	ble _0804C0CC
	subs r0, r3, #1
	b _0804C0CE
	.align 2, 0
_0804C0C8: .4byte 0x03000950
_0804C0CC:
	adds r0, r3, #1
_0804C0CE:
	strh r0, [r1]
_0804C0D0:
	ldr r2, _0804C0F4 @ =gBgRegsBuffer
	ldr r3, _0804C0F8 @ =0x03000954
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldr r0, _0804C0FC @ =0x03000952
	ldrh r5, [r0]
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r1, r0, #0
	cmp r4, #0
	beq _0804C104
	cmp r4, #0
	ble _0804C100
	subs r0, r5, #1
	b _0804C102
	.align 2, 0
_0804C0F4: .4byte gBgRegsBuffer
_0804C0F8: .4byte 0x03000954
_0804C0FC: .4byte 0x03000952
_0804C100:
	adds r0, r5, #1
_0804C102:
	strh r0, [r1]
_0804C104:
	ldrh r0, [r3]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #6]
	lsls r0, r6, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0804C11C
_0804C114:
	movs r0, #0
	b _0804C22C
_0804C118:
	adds r0, r1, #0
	b _0804C138
_0804C11C:
	movs r1, #0
	ldr r3, _0804C1F0 @ =0x0300095C
	ldr r2, [r3]
_0804C122:
	lsls r0, r1, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804C118
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x3b
	bls _0804C122
	movs r0, #0x3c
_0804C138:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	beq _0804C114
	lsls r1, r0, #4
	ldr r0, [r3]
	adds r6, r0, r1
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0804C154
	rsbs r1, r1, #0
_0804C154:
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _0804C22A
	movs r5, #0
	movs r0, #1
	strb r0, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc8
	bl __modsi3
	movs r4, #0
	strh r0, [r6, #4]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x78
	bl __modsi3
	strh r0, [r6, #6]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	adds r1, #8
	strb r1, [r6, #1]
	strb r4, [r6, #2]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	ldr r4, _0804C1F4 @ =0x03000950
	ldrh r0, [r4]
	adds r0, #0x5c
	strh r0, [r6, #0xc]
	ldr r0, _0804C1F8 @ =0x03000952
	ldrh r1, [r0]
	adds r1, #0x60
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0xe]
	bl Random
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0804C1C4
	adds r0, r1, #3
_0804C1C4:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0804C1D4
	rsbs r0, r0, #0
_0804C1D4:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0804C1FC
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	adds r2, r1, #0
	b _0804C206
	.align 2, 0
_0804C1F0: .4byte 0x0300095C
_0804C1F4: .4byte 0x03000950
_0804C1F8: .4byte 0x03000952
_0804C1FC:
	ldrh r0, [r4]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	subs r0, r0, r1
	strh r0, [r4]
_0804C206:
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0804C220
	ldr r1, _0804C21C @ =0x03000952
	asrs r0, r2, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0804C22A
	.align 2, 0
_0804C21C: .4byte 0x03000952
_0804C220:
	ldr r0, _0804C234 @ =0x03000952
	ldrh r1, [r0]
	asrs r2, r2, #0x10
	subs r1, r1, r2
	strh r1, [r0]
_0804C22A:
	movs r0, #1
_0804C22C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C234: .4byte 0x03000952

	thumb_func_start sub_0804C238
sub_0804C238: @ 0x0804C238
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0804C2D8 @ =0x0300095C
	ldr r6, [r0]
	movs r0, #0
	mov sb, r0
	ldr r1, _0804C2DC @ =0x03000960
	mov r8, r1
_0804C24E:
	ldrb r7, [r6]
	cmp r7, #1
	bne _0804C2BA
	movs r2, #4
	ldrsh r0, [r6, r2]
	ldrb r1, [r6, #2]
	adds r5, r0, #0
	muls r5, r1, r5
	asrs r5, r5, #7
	movs r4, #6
	ldrsh r0, [r6, r4]
	adds r4, r0, #0
	muls r4, r1, r4
	asrs r4, r4, #7
	adds r2, r6, #0
	adds r2, #8
	adds r3, r6, #0
	adds r3, #0xa
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	bl sub_08026C40
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	adds r0, r0, r5
	movs r2, #0xe
	ldrsh r1, [r6, r2]
	adds r1, r1, r4
	ldrh r3, [r6, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, r8
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r8
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r2, #0
	bl sub_08003FA4
	ldrb r0, [r6, #1]
	ldrb r1, [r6, #2]
	adds r0, r0, r1
	strb r0, [r6, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _0804C2BA
	movs r0, #2
	strb r0, [r6]
_0804C2BA:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r6, #0x10
	cmp r0, #0x3b
	bls _0804C24E
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2D8: .4byte 0x0300095C
_0804C2DC: .4byte 0x03000960

	thumb_func_start sub_0804C2E0
sub_0804C2E0: @ 0x0804C2E0
	push {r4, r5, lr}
	ldr r0, _0804C318 @ =0x03000956
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C31C @ =0x03000958
	strh r1, [r0]
	ldr r0, _0804C320 @ =0x0300095A
	strh r1, [r0]
	ldr r0, _0804C324 @ =0x03000950
	strh r1, [r0]
	ldr r0, _0804C328 @ =0x03000952
	strh r1, [r0]
	ldr r0, _0804C32C @ =0x03000954
	strh r1, [r0]
	ldr r5, _0804C330 @ =0x0300095C
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r0, r4, #0
	bl Alloc
	str r0, [r5]
	adds r1, r4, #0
	bl bzero
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C318: .4byte 0x03000956
_0804C31C: .4byte 0x03000958
_0804C320: .4byte 0x0300095A
_0804C324: .4byte 0x03000950
_0804C328: .4byte 0x03000952
_0804C32C: .4byte 0x03000954
_0804C330: .4byte 0x0300095C

	thumb_func_start sub_0804C334
sub_0804C334: @ 0x0804C334
	push {lr}
	ldr r0, _0804C348 @ =0x0300095C
	ldr r0, [r0]
	cmp r0, #0
	beq _0804C342
	bl Free
_0804C342:
	pop {r0}
	bx r0
	.align 2, 0
_0804C348: .4byte 0x0300095C

	thumb_func_start sub_0804C34C
sub_0804C34C: @ 0x0804C34C
	movs r2, #0
	movs r1, #0
	ldr r0, _0804C378 @ =0x0300095C
	ldr r3, [r0]
_0804C354:
	lsls r0, r1, #4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C368
	cmp r0, #2
	beq _0804C368
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804C368:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x3b
	bls _0804C354
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0804C378: .4byte 0x0300095C

	thumb_func_start sub_0804C37C
sub_0804C37C: @ 0x0804C37C
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804C43C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C440 @ =0x00001E43
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	ldr r1, _0804C444 @ =0x00001F03
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #4
	bl SetBgCnt
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	movs r0, #0x1b
	bl GetDataRecord
	adds r6, r0, #0
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C448 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	movs r0, #0x1c
	bl GetDataRecord
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804C44C @ =0x0600F000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804C466
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804C454
	ldr r1, _0804C450 @ =0x06004000
	b _0804C458
	.align 2, 0
_0804C43C: .4byte 0xFFFF0000
_0804C440: .4byte 0x00001E43
_0804C444: .4byte 0x00001F03
_0804C448: .4byte 0x0600F800
_0804C44C: .4byte 0x0600F000
_0804C450: .4byte 0x06004000
_0804C454:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804C458:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804C476
_0804C466:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804C476:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804C4A8 @ =0x030009A0
	ldr r1, _0804C4AC @ =0x00100050
	movs r2, #9
	movs r3, #2
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F308
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4A8: .4byte 0x030009A0
_0804C4AC: .4byte 0x00100050

	thumb_func_start sub_0804C4B0
sub_0804C4B0: @ 0x0804C4B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r7, _0804C50C @ =0x03000998
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	ldr r6, _0804C510 @ =gBgRegsBuffer
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	strh r1, [r6, #0xa]
	lsls r0, r0, #2
	strh r0, [r6, #0xe]
	ldr r0, _0804C514 @ =0x0805289C
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xff
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #8]
	strh r0, [r6, #0xc]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #0x3b
	bgt _0804C518
	ldrh r0, [r7]
	adds r0, #1
	b _0804C53A
	.align 2, 0
_0804C50C: .4byte 0x03000998
_0804C510: .4byte gBgRegsBuffer
_0804C514: .4byte 0x0805289C
_0804C518:
	cmp r5, #0x77
	bgt _0804C522
	ldrh r0, [r7]
	adds r0, #2
	b _0804C53A
_0804C522:
	cmp r5, #0xb3
	bgt _0804C52C
	ldrh r0, [r7]
	adds r0, #4
	b _0804C53A
_0804C52C:
	cmp r5, #0xef
	bgt _0804C536
	ldrh r0, [r7]
	adds r0, #6
	b _0804C53A
_0804C536:
	ldrh r0, [r7]
	adds r0, #8
_0804C53A:
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804C548
sub_0804C548: @ 0x0804C548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl SeedRandom
	movs r0, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08004524
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	ldr r1, _0804C7A0 @ =gBgRegsBuffer
	ldr r0, _0804C7A4 @ =0x0000FFF8
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	movs r0, #0x37
	bl PlaySE
	movs r5, #0
_0804C58C:
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C58C
	movs r5, #0
_0804C5AA:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	subs r2, #0x40
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x8f
	ble _0804C5AA
	movs r0, #0x68
	bl PlaySE
	movs r5, #0
_0804C5E0:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0804C7A8 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C5E0
	movs r0, #0x7f
	bl PlaySE
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	ldr r6, _0804C7A8 @ =0x030009A0
	ldr r0, _0804C7AC @ =0x0300099A
	mov sl, r0
	movs r1, #1
	mov sb, r1
_0804C630:
	lsls r3, r5, #0x10
	asrs r4, r3, #0x10
	asrs r3, r3, #0x13
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r7, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
	movs r2, #0
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #1
	mov r2, sl
	ldr r3, _0804C7B0 @ =0x0300099C
	bl sub_08026C40
	mov r1, sl
	ldrh r3, [r1]
	movs r2, #0
	str r2, [sp]
	movs r0, #0x1c
	adds r0, r0, r6
	mov r8, r0
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	mov r1, sb
	str r1, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x7f
	ble _0804C630
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
	mov r4, r8
	subs r4, #0x1c
	mov r8, r5
	ldr r7, _0804C7AC @ =0x0300099A
	movs r6, #1
_0804C6C4:
	mov r2, r8
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	ldr r3, _0804C7B0 @ =0x0300099C
	bl sub_08026C40
	ldrh r3, [r7]
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	movs r0, #0x78
	movs r1, #0x50
	movs r2, #1
	bl sub_08003FA4
	movs r0, #0
	movs r1, #0
	bl sub_0804C4B0
	bl WaitFrame
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0804C6C4
	ldr r0, _0804C7AC @ =0x0300099A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C7B0 @ =0x0300099C
	strh r1, [r0]
	movs r2, #0
	mov r8, r2
	movs r5, #0
_0804C72E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	add r1, sp
	adds r1, #0x14
	strh r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C72E
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xf
	movs r2, #1
	movs r3, #8
	bl sub_080044E4
	movs r5, #0
_0804C75A:
	ldr r4, _0804C7A8 @ =0x030009A0
	ldr r2, _0804C7AC @ =0x0300099A
	ldr r3, _0804C7B0 @ =0x0300099C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08026C40
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r4, #0
	cmp r0, #5
	bls _0804C794
	b _0804C8A8
_0804C794:
	lsls r0, r0, #2
	ldr r1, _0804C7B4 @ =_0804C7B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C7A0: .4byte gBgRegsBuffer
_0804C7A4: .4byte 0x0000FFF8
_0804C7A8: .4byte 0x030009A0
_0804C7AC: .4byte 0x0300099A
_0804C7B0: .4byte 0x0300099C
_0804C7B4: .4byte _0804C7B8
_0804C7B8: @ jump table
	.4byte _0804C7D0 @ case 0
	.4byte _0804C7DE @ case 1
	.4byte _0804C7F2 @ case 2
	.4byte _0804C828 @ case 3
	.4byte _0804C83E @ case 4
	.4byte _0804C87C @ case 5
_0804C7D0:
	add r0, sp, #0x14
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r2, [r1]
	b _0804C84C
_0804C7DE:
	add r0, sp, #0x14
	movs r2, #2
	ldrsh r0, [r0, r2]
	adds r0, #0x78
	add r1, sp, #0x14
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C7F2:
	add r0, sp, #0x14
	movs r2, #4
	ldrsh r1, [r0, r2]
	adds r1, #0x50
	ldr r0, _0804C820 @ =0x0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C824 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C820: .4byte 0x0300099A
_0804C824: .4byte 0x030009BC
_0804C828:
	add r0, sp, #0x14
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #0x50
	b _0804C854
_0804C83E:
	add r0, sp, #0x14
	movs r2, #8
	ldrsh r1, [r0, r2]
	movs r0, #0x78
	subs r0, r0, r1
	add r1, sp, #0x14
	ldrh r2, [r1, #8]
_0804C84C:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	movs r1, #0x50
	subs r1, r1, r2
_0804C854:
	ldr r2, _0804C874 @ =0x0300099A
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r4, _0804C878 @ =0x030009BC
	str r4, [sp, #4]
	subs r4, #0x1c
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
	bl sub_08003FA4
	b _0804C8A8
	.align 2, 0
_0804C874: .4byte 0x0300099A
_0804C878: .4byte 0x030009BC
_0804C87C:
	add r0, sp, #0x14
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	subs r1, r1, r0
	ldr r0, _0804C8C0 @ =0x0300099A
	ldrh r3, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0804C8C4 @ =0x030009BC
	str r2, [sp, #4]
	subs r2, #0x1c
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x78
	movs r2, #1
	bl sub_08003FA4
_0804C8A8:
	asrs r0, r7, #0x10
	cmp r0, #0xc7
	bgt _0804C8C8
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #1
	b _0804C8D6
	.align 2, 0
_0804C8C0: .4byte 0x0300099A
_0804C8C4: .4byte 0x030009BC
_0804C8C8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	mov r1, sp
	adds r1, r1, r0
	adds r1, #0x14
	ldrh r0, [r1]
	adds r0, #3
_0804C8D6:
	strh r0, [r1]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804C902
	ldr r2, _0804C998 @ =0xFFFFFED4
	adds r0, r5, r2
	asrs r0, r0, #3
	movs r3, #8
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_080044E4
_0804C902:
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804C4B0
	bl WaitFrame
	adds r1, r5, #1
	lsls r1, r1, #0x10
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r5, r1, #0x10
	ldr r0, _0804C99C @ =0x01670000
	cmp r1, r0
	bgt _0804C92A
	b _0804C75A
_0804C92A:
	movs r0, #3
	bl FadeOutAllMusicPlayers
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080044E4
	movs r5, #0
	lsls r6, r4, #0x10
_0804C944:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x2c
	bne _0804C952
	movs r0, #6
	bl sub_0800F3A0
_0804C952:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804C9A0 @ =0x030009A0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	asrs r0, r6, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	bl sub_0804C4B0
	bl WaitFrame
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0804C944
	movs r0, #0x37
	bl StopSE
	movs r0, #0x7f
	bl StopSE
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C998: .4byte 0xFFFFFED4
_0804C99C: .4byte 0x01670000
_0804C9A0: .4byte 0x030009A0

	thumb_func_start sub_0804C9A4
sub_0804C9A4: @ 0x0804C9A4
	ldr r0, _0804C9B4 @ =0x03000998
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0804C9B8 @ =0x0300099A
	strh r1, [r0]
	ldr r0, _0804C9BC @ =0x0300099C
	strh r1, [r0]
	bx lr
	.align 2, 0
_0804C9B4: .4byte 0x03000998
_0804C9B8: .4byte 0x0300099A
_0804C9BC: .4byte 0x0300099C

	thumb_func_start sub_0804C9C0
sub_0804C9C0: @ 0x0804C9C0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804C9C4
sub_0804C9C4: @ 0x0804C9C4
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _0804C9F8 @ =0x03006930
	ldr r1, _0804C9FC @ =sub_0804CA04
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _0804CA00 @ =sub_0804CA6C
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_0804C9F8: .4byte 0x03006930
_0804C9FC: .4byte sub_0804CA04
_0804CA00: .4byte sub_0804CA6C

	thumb_func_start sub_0804CA04
sub_0804CA04: @ 0x0804CA04
	push {lr}
	ldr r0, _0804CA20 @ =0x03006920
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA24
	bl sub_0804E1E4
	movs r0, #4
	bl sub_0804CA84
	bl sub_0804CF64
	b _0804CA4E
	.align 2, 0
_0804CA20: .4byte 0x03006920
_0804CA24:
	cmp r0, #1
	bne _0804CA3A
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #0
	bl sub_0804F31C
	b _0804CA4E
_0804CA3A:
	cmp r0, #2
	bne _0804CA4E
	bl sub_0804F944
	movs r0, #0
	bl sub_0804ED80
	movs r0, #1
	bl sub_0804F31C
_0804CA4E:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CA5E
	movs r0, #0x14
	bl SignalEvent
	b _0804CA64
_0804CA5E:
	ldr r0, _0804CA68 @ =0x11201100
	bl SignalEvent
_0804CA64:
	pop {r0}
	bx r0
	.align 2, 0
_0804CA68: .4byte 0x11201100

	thumb_func_start sub_0804CA6C
sub_0804CA6C: @ 0x0804CA6C
	push {lr}
	ldr r0, _0804CA80 @ =0x03006920
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CA7A
	bl sub_0804E1F0
_0804CA7A:
	pop {r0}
	bx r0
	.align 2, 0
_0804CA80: .4byte 0x03006920

	thumb_func_start sub_0804CA84
sub_0804CA84: @ 0x0804CA84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804CAF0 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _0804CAF4 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAF8 @ =0x00001F03
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CAFC @ =0x00001E02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	cmp r7, #4
	bls _0804CAE4
	b _0804CBF6
_0804CAE4:
	lsls r0, r7, #2
	ldr r1, _0804CB00 @ =_0804CB04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CAF0: .4byte 0xFFFF0000
_0804CAF4: .4byte 0x00001C08
_0804CAF8: .4byte 0x00001F03
_0804CAFC: .4byte 0x00001E02
_0804CB00: .4byte _0804CB04
_0804CB04: @ jump table
	.4byte _0804CB38 @ case 0
	.4byte _0804CB58 @ case 1
	.4byte _0804CB76 @ case 2
	.4byte _0804CBA8 @ case 3
	.4byte _0804CB18 @ case 4
_0804CB18:
	ldr r0, _0804CB34 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x4d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB34: .4byte 0x00001F83
_0804CB38:
	ldr r0, _0804CB54 @ =0x00001F83
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0x2d
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	b _0804CB6C
	.align 2, 0
_0804CB54: .4byte 0x00001F83
_0804CB58:
	movs r0, #0x27
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x26
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
_0804CB6C:
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804CBF6
_0804CB76:
	movs r0, #0x28
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x29
	bl GetDataRecord
	mov r8, r0
	movs r0, #0xe0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CBA4 @ =0x00005D02
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	b _0804CBF6
	.align 2, 0
_0804CBA4: .4byte 0x00005D02
_0804CBA8:
	movs r0, #0x2b
	bl GetDataRecord
	adds r6, r0, #0
	movs r0, #0x2c
	bl GetDataRecord
	mov r8, r0
	movs r0, #0x2a
	bl GetDataRecord
	mov sb, r0
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _0804CC2C @ =0x00009403
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #3
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC30 @ =0x00009202
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #8
	bl SetBgCnt
	ldr r1, _0804CC34 @ =0x00009001
	add r0, sp, #8
	strh r1, [r0]
	movs r0, #1
	add r1, sp, #8
	bl SetBgCnt
_0804CBF6:
	cmp r7, #3
	beq _0804CC68
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC38 @ =0x0600F800
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	cmp r7, #1
	bne _0804CC40
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC3C @ =0x0600F000
	adds r2, r4, #0
	b _0804CC54
	.align 2, 0
_0804CC2C: .4byte 0x00009403
_0804CC30: .4byte 0x00009202
_0804CC34: .4byte 0x00009001
_0804CC38: .4byte 0x0600F800
_0804CC3C: .4byte 0x0600F000
_0804CC40:
	cmp r7, #2
	bne _0804CCB8
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CC64 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #5
_0804CC54:
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	b _0804CCB8
	.align 2, 0
_0804CC64: .4byte 0x0600E800
_0804CC68:
	adds r0, r6, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCDC @ =0x0600A000
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, r8
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE0 @ =0x06009000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
	mov r0, sb
	adds r0, #4
	bl LZ77DecompressAlloc
	adds r5, r0, #0
	ldr r1, _0804CCE4 @ =0x06008000
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r5, #0
	bl Free
_0804CCB8:
	ldr r0, [r6]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804CCFE
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804CCEC
	ldr r1, _0804CCE8 @ =0x06004000
	b _0804CCF0
	.align 2, 0
_0804CCDC: .4byte 0x0600A000
_0804CCE0: .4byte 0x06009000
_0804CCE4: .4byte 0x06008000
_0804CCE8: .4byte 0x06004000
_0804CCEC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804CCF0:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804CD0E
_0804CCFE:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804CD0E:
	ldrh r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r0, _0804CD48 @ =gBgRegsBuffer
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	cmp r7, #1
	beq _0804CD70
	cmp r7, #1
	bgt _0804CD4C
	cmp r7, #0
	beq _0804CD58
	b _0804CF44
	.align 2, 0
_0804CD48: .4byte gBgRegsBuffer
_0804CD4C:
	cmp r7, #2
	beq _0804CE04
	cmp r7, #3
	bne _0804CD56
	b _0804CEA0
_0804CD56:
	b _0804CF44
_0804CD58:
	ldr r0, _0804CD68 @ =0x030009D8
	ldr r1, _0804CD6C @ =0x00100061
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CD68: .4byte 0x030009D8
_0804CD6C: .4byte 0x00100061
_0804CD70:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CD98 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CD8E
	b _0804CF44
_0804CD8E:
	lsls r0, r0, #2
	ldr r1, _0804CD9C @ =_0804CDA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CD98: .4byte 0x03003CA8
_0804CD9C: .4byte _0804CDA0
_0804CDA0: @ jump table
	.4byte _0804CDB4 @ case 0
	.4byte _0804CDC4 @ case 1
	.4byte _0804CDD4 @ case 2
	.4byte _0804CDE4 @ case 3
	.4byte _0804CDF4 @ case 4
_0804CDB4:
	ldr r0, _0804CDBC @ =0x030009D8
	ldr r1, _0804CDC0 @ =0x0010006F
	b _0804CE8C
	.align 2, 0
_0804CDBC: .4byte 0x030009D8
_0804CDC0: .4byte 0x0010006F
_0804CDC4:
	ldr r0, _0804CDCC @ =0x030009D8
	ldr r1, _0804CDD0 @ =0x0010007A
	b _0804CE8C
	.align 2, 0
_0804CDCC: .4byte 0x030009D8
_0804CDD0: .4byte 0x0010007A
_0804CDD4:
	ldr r0, _0804CDDC @ =0x030009D8
	ldr r1, _0804CDE0 @ =0x0010007D
	b _0804CE8C
	.align 2, 0
_0804CDDC: .4byte 0x030009D8
_0804CDE0: .4byte 0x0010007D
_0804CDE4:
	ldr r0, _0804CDEC @ =0x030009D8
	ldr r1, _0804CDF0 @ =0x0010008B
	b _0804CE8C
	.align 2, 0
_0804CDEC: .4byte 0x030009D8
_0804CDF0: .4byte 0x0010008B
_0804CDF4:
	ldr r0, _0804CDFC @ =0x030009D8
	ldr r1, _0804CE00 @ =0x00100092
	b _0804CE8C
	.align 2, 0
_0804CDFC: .4byte 0x030009D8
_0804CE00: .4byte 0x00100092
_0804CE04:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #4
	bl sub_080044E4
	ldr r0, _0804CE2C @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804CE22
	b _0804CF44
_0804CE22:
	lsls r0, r0, #2
	ldr r1, _0804CE30 @ =_0804CE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CE2C: .4byte 0x03003CA8
_0804CE30: .4byte _0804CE34
_0804CE34: @ jump table
	.4byte _0804CE48 @ case 0
	.4byte _0804CE58 @ case 1
	.4byte _0804CE68 @ case 2
	.4byte _0804CE78 @ case 3
	.4byte _0804CE88 @ case 4
_0804CE48:
	ldr r0, _0804CE50 @ =0x030009D8
	ldr r1, _0804CE54 @ =0x0010006D
	b _0804CE8C
	.align 2, 0
_0804CE50: .4byte 0x030009D8
_0804CE54: .4byte 0x0010006D
_0804CE58:
	ldr r0, _0804CE60 @ =0x030009D8
	ldr r1, _0804CE64 @ =0x00100079
	b _0804CE8C
	.align 2, 0
_0804CE60: .4byte 0x030009D8
_0804CE64: .4byte 0x00100079
_0804CE68:
	ldr r0, _0804CE70 @ =0x030009D8
	ldr r1, _0804CE74 @ =0x0010008F
	b _0804CE8C
	.align 2, 0
_0804CE70: .4byte 0x030009D8
_0804CE74: .4byte 0x0010008F
_0804CE78:
	ldr r0, _0804CE80 @ =0x030009D8
	ldr r1, _0804CE84 @ =0x0010008A
	b _0804CE8C
	.align 2, 0
_0804CE80: .4byte 0x030009D8
_0804CE84: .4byte 0x0010008A
_0804CE88:
	ldr r0, _0804CE98 @ =0x030009D8
	ldr r1, _0804CE9C @ =0x00100091
_0804CE8C:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804CF44
	.align 2, 0
_0804CE98: .4byte 0x030009D8
_0804CE9C: .4byte 0x00100091
_0804CEA0:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0xc
	movs r2, #1
	movs r3, #0x10
	bl sub_080044E4
	ldr r0, _0804CEC8 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0804CF38
	lsls r0, r0, #2
	ldr r1, _0804CECC @ =_0804CED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CEC8: .4byte 0x03003CA8
_0804CECC: .4byte _0804CED0
_0804CED0: @ jump table
	.4byte _0804CEE4 @ case 0
	.4byte _0804CEF4 @ case 1
	.4byte _0804CF04 @ case 2
	.4byte _0804CF14 @ case 3
	.4byte _0804CF2C @ case 4
_0804CEE4:
	ldr r0, _0804CEEC @ =0x03000A10
	ldr r1, _0804CEF0 @ =0x0010006E
	b _0804CF18
	.align 2, 0
_0804CEEC: .4byte 0x03000A10
_0804CEF0: .4byte 0x0010006E
_0804CEF4:
	ldr r0, _0804CEFC @ =0x03000A10
	ldr r1, _0804CF00 @ =0x00100078
	b _0804CF18
	.align 2, 0
_0804CEFC: .4byte 0x03000A10
_0804CF00: .4byte 0x00100078
_0804CF04:
	ldr r0, _0804CF0C @ =0x03000A10
	ldr r1, _0804CF10 @ =0x0010007C
	b _0804CF18
	.align 2, 0
_0804CF0C: .4byte 0x03000A10
_0804CF10: .4byte 0x0010007C
_0804CF14:
	ldr r0, _0804CF24 @ =0x03000A10
	ldr r1, _0804CF28 @ =0x00100089
_0804CF18:
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
	b _0804CF38
	.align 2, 0
_0804CF24: .4byte 0x03000A10
_0804CF28: .4byte 0x00100089
_0804CF2C:
	ldr r0, _0804CF54 @ =0x03000A10
	ldr r1, _0804CF58 @ =0x00100090
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF38:
	ldr r0, _0804CF5C @ =0x030009D8
	ldr r1, _0804CF60 @ =0x00100060
	movs r2, #0
	movs r3, #6
	bl sub_08026ADC
_0804CF44:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CF54: .4byte 0x03000A10
_0804CF58: .4byte 0x00100090
_0804CF5C: .4byte 0x030009D8
_0804CF60: .4byte 0x00100060

	thumb_func_start sub_0804CF64
sub_0804CF64: @ 0x0804CF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #1
	bl sub_0800F348
	movs r0, #0xa2
	bl PlaySE
	movs r6, #0
	ldr r4, _0804CFB8 @ =gKeysNew
_0804CF94:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFBC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804CFC8
	bl _0804E192
	.align 2, 0
_0804CFB8: .4byte gKeysNew
_0804CFBC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804CFCA
_0804CFC8:
	movs r1, #0
_0804CFCA:
	cmp r1, #0
	beq _0804CFD2
	bl _0804E192
_0804CFD2:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804CF94
	movs r6, #0
	ldr r4, _0804CFF8 @ =gKeysNew
_0804CFE0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804CFFC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D008
	bl _0804E192
	.align 2, 0
_0804CFF8: .4byte gKeysNew
_0804CFFC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D00A
_0804D008:
	movs r1, #0
_0804D00A:
	cmp r1, #0
	beq _0804D012
	bl _0804E192
_0804D012:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804CFE0
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D048 @ =0x000900EA
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D04C @ =gKeysNew
_0804D034:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D050
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D05C
	b _0804D5A6
	.align 2, 0
_0804D048: .4byte 0x000900EA
_0804D04C: .4byte gKeysNew
_0804D050:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D05E
_0804D05C:
	movs r1, #0
_0804D05E:
	cmp r1, #0
	beq _0804D064
	b _0804D5A6
_0804D064:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D034
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0A0 @ =0x000900EB
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0A4 @ =gKeysNew
_0804D08A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D0A8
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D0B4
	b _0804D5A6
	.align 2, 0
_0804D0A0: .4byte 0x000900EB
_0804D0A4: .4byte gKeysNew
_0804D0A8:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D0B6
_0804D0B4:
	movs r1, #0
_0804D0B6:
	cmp r1, #0
	beq _0804D0BC
	b _0804D5A6
_0804D0BC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D08A
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D0F8 @ =0x000900EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D0FC @ =gKeysNew
_0804D0E2:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D100
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D10C
	b _0804D5A6
	.align 2, 0
_0804D0F8: .4byte 0x000900EC
_0804D0FC: .4byte gKeysNew
_0804D100:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D10E
_0804D10C:
	movs r1, #0
_0804D10E:
	cmp r1, #0
	beq _0804D114
	b _0804D5A6
_0804D114:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D0E2
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D150 @ =0x000900ED
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r4, _0804D154 @ =gKeysNew
_0804D13A:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D158
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D164
	b _0804D5A6
	.align 2, 0
_0804D150: .4byte 0x000900ED
_0804D154: .4byte gKeysNew
_0804D158:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D166
_0804D164:
	movs r1, #0
_0804D166:
	cmp r1, #0
	beq _0804D16C
	b _0804D5A6
_0804D16C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D13A
	movs r6, #0
	movs r7, #1
	ldr r5, _0804D1A4 @ =gKeysNew
_0804D180:
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	bne _0804D18C
	bl sub_0804E80C
_0804D18C:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D1A8
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D1B4
	bl _0804E192
	.align 2, 0
_0804D1A4: .4byte gKeysNew
_0804D1A8:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D1B6
_0804D1B4:
	movs r4, #0
_0804D1B6:
	cmp r4, #0
	beq _0804D1BE
	bl _0804E192
_0804D1BE:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D180
	movs r0, #0
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	add r0, sp, #8
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x79
	mov r8, r1
	movs r2, #0x1d
	mov sl, r2
	movs r6, #0
	adds r7, r0, #0
	ldr r4, _0804D218 @ =gKeysNew
_0804D1F4:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	bl sub_0800277C
	cmp r0, #0
	beq _0804D21C
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D228
	bl _0804E192
	.align 2, 0
_0804D218: .4byte gKeysNew
_0804D21C:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D22A
_0804D228:
	movs r1, #0
_0804D22A:
	cmp r1, #0
	beq _0804D232
	bl _0804E192
_0804D232:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D1F4
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D28C @ =0x000900EE
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D290 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D294 @ =gKeysNew
_0804D258:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D298
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D2A4
	b _0804D5A6
	.align 2, 0
_0804D28C: .4byte 0x000900EE
_0804D290: .4byte 0x030009D8
_0804D294: .4byte gKeysNew
_0804D298:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D2A6
_0804D2A4:
	movs r1, #0
_0804D2A6:
	cmp r1, #0
	beq _0804D2AC
	b _0804D5A6
_0804D2AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D258
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D30C @ =0x000900EF
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D310 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D314 @ =gKeysNew
_0804D2D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D318
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D324
	b _0804D5A6
	.align 2, 0
_0804D30C: .4byte 0x000900EF
_0804D310: .4byte 0x030009D8
_0804D314: .4byte gKeysNew
_0804D318:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D326
_0804D324:
	movs r1, #0
_0804D326:
	cmp r1, #0
	beq _0804D32C
	b _0804D5A6
_0804D32C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D2D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D38C @ =0x000900F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D390 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D394 @ =gKeysNew
_0804D356:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D398
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D3A4
	b _0804D5A6
	.align 2, 0
_0804D38C: .4byte 0x000900F0
_0804D390: .4byte 0x030009D8
_0804D394: .4byte gKeysNew
_0804D398:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D3A6
_0804D3A4:
	movs r1, #0
_0804D3A6:
	cmp r1, #0
	beq _0804D3AC
	b _0804D5A6
_0804D3AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D356
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D40C @ =0x000900F1
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D410 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D414 @ =gKeysNew
_0804D3D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D418
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D424
	b _0804D5A6
	.align 2, 0
_0804D40C: .4byte 0x000900F1
_0804D410: .4byte 0x030009D8
_0804D414: .4byte gKeysNew
_0804D418:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D426
_0804D424:
	movs r1, #0
_0804D426:
	cmp r1, #0
	beq _0804D42C
	b _0804D5A6
_0804D42C:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D3D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D48C @ =0x000900F2
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D490 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D494 @ =gKeysNew
_0804D456:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D498
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D4A4
	b _0804D5A6
	.align 2, 0
_0804D48C: .4byte 0x000900F2
_0804D490: .4byte 0x030009D8
_0804D494: .4byte gKeysNew
_0804D498:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D4A6
_0804D4A4:
	movs r1, #0
_0804D4A6:
	cmp r1, #0
	beq _0804D4AC
	b _0804D5A6
_0804D4AC:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D456
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D50C @ =0x000900F3
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D510 @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D514 @ =gKeysNew
_0804D4D6:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D518
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D524
	b _0804D5A6
	.align 2, 0
_0804D50C: .4byte 0x000900F3
_0804D510: .4byte 0x030009D8
_0804D514: .4byte gKeysNew
_0804D518:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D526
_0804D524:
	movs r1, #0
_0804D526:
	cmp r1, #0
	bne _0804D5A6
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D4D6
	movs r0, #0x78
	str r0, [sp]
	ldr r0, _0804D588 @ =0x000900F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0xc]
	ldr r5, _0804D58C @ =0x030009D8
	movs r6, #1
	ldr r4, _0804D590 @ =gKeysNew
_0804D554:
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_08026C40
	add r0, sp, #8
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804D594
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0804D5A0
	b _0804D5A6
	.align 2, 0
_0804D588: .4byte 0x000900F4
_0804D58C: .4byte 0x030009D8
_0804D590: .4byte gKeysNew
_0804D594:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D5A2
_0804D5A0:
	movs r1, #0
_0804D5A2:
	cmp r1, #0
	beq _0804D5B0
_0804D5A6:
	ldr r0, [sp, #0xc]
	bl sub_080228D4
	bl _0804E192
_0804D5B0:
	bl WaitFrame
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804D554
	movs r3, #0
	str r3, [sp, #0xc]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #4
	bl FadeOutAllMusicPlayers
	movs r6, #0
	ldr r4, _0804D5F8 @ =gKeysNew
_0804D5D4:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D5E0
	bl sub_0804E80C
_0804D5E0:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D5FC
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D608
	bl _0804E1AE
	.align 2, 0
_0804D5F8: .4byte gKeysNew
_0804D5FC:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D60A
_0804D608:
	movs r1, #0
_0804D60A:
	cmp r1, #0
	beq _0804D612
	bl _0804E1AE
_0804D612:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x77
	ble _0804D5D4
	movs r6, #0
	ldr r5, _0804D638 @ =gKeysNew
_0804D620:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D63C
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D648
	bl _0804E192
	.align 2, 0
_0804D638: .4byte gKeysNew
_0804D63C:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D64A
_0804D648:
	movs r4, #0
_0804D64A:
	cmp r4, #0
	beq _0804D652
	bl _0804E192
_0804D652:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804D620
	movs r0, #1
	bl sub_0804CA84
	ldr r0, _0804D6B8 @ =0x03000A48
	str r4, [r0]
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0xa3
	bl PlaySE
	movs r6, #0
	ldr r5, _0804D6BC @ =gBgRegsBuffer
	ldr r4, _0804D6C0 @ =gKeysNew
_0804D682:
	lsls r1, r6, #0x16
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E2E8
	ldr r1, _0804D6B8 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r5, #8]
	lsrs r0, r0, #2
	strh r0, [r5, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D6C4
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D6D0
	bl _0804E192
	.align 2, 0
_0804D6B8: .4byte 0x03000A48
_0804D6BC: .4byte gBgRegsBuffer
_0804D6C0: .4byte gKeysNew
_0804D6C4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D6D2
_0804D6D0:
	movs r1, #0
_0804D6D2:
	cmp r1, #0
	beq _0804D6DA
	bl _0804E192
_0804D6DA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804D682
	movs r0, #0xf0
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804D6FA:
	cmp r6, #0x3f
	bgt _0804D70A
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D70A:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804D738
	subs r0, #0x10
	cmp r6, r0
	ble _0804D728
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D728:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D764 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #2
	bl sub_08026B90
_0804D738:
	ldr r1, _0804D768 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D76C @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D774
	ldr r0, _0804D770 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D782
	bl _0804E192
	.align 2, 0
_0804D764: .4byte 0x030009D8
_0804D768: .4byte 0x03000A48
_0804D76C: .4byte gBgRegsBuffer
_0804D770: .4byte gKeysNew
_0804D774:
	ldr r0, _0804D7C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D784
_0804D782:
	movs r1, #0
_0804D784:
	cmp r1, #0
	beq _0804D78C
	bl _0804E192
_0804D78C:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804D6FA
	movs r6, #0
	ldr r3, _0804D7CC @ =gBgRegsBuffer
	mov r8, r3
	ldr r7, _0804D7C8 @ =gKeysNew
	ldr r5, _0804D7D0 @ =0x03000A48
_0804D7A0:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	mov r2, r8
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	bl sub_0800277C
	cmp r0, #0
	beq _0804D7D4
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D7E0
	bl _0804E192
	.align 2, 0
_0804D7C8: .4byte gKeysNew
_0804D7CC: .4byte gBgRegsBuffer
_0804D7D0: .4byte 0x03000A48
_0804D7D4:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804D7E2
_0804D7E0:
	movs r4, #0
_0804D7E2:
	cmp r4, #0
	beq _0804D7EA
	bl _0804E192
_0804D7EA:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x59
	ble _0804D7A0
	movs r3, #0xff
	lsls r3, r3, #1
	mov r8, r3
	ldr r0, _0804D93C @ =0x03000A4C
	str r4, [r0]
	ldr r5, _0804D940 @ =0x03000A50
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r5]
	ldr r4, _0804D944 @ =0x03000A54
	movs r0, #0x5a
	str r0, [r4]
	movs r7, #0
	ldr r0, _0804D948 @ =0x03000A44
	strh r7, [r0]
	ldr r0, _0804D94C @ =0x03000A46
	strh r7, [r0]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r6, #0
	mov sb, r5
	ldr r5, _0804D950 @ =0x030009D8
	mov sl, r4
_0804D82E:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804D842
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D842:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804D862
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804D862
	mov r0, r8
	subs r1, r0, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804D862:
	cmp r6, #0x10
	ble _0804D87A
	cmp r6, r4
	bge _0804D87A
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804D950 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #3
	bl sub_08026B90
_0804D87A:
	cmp r6, #0x5a
	ble _0804D89C
	mov r1, r8
	asrs r0, r1, #1
	cmp r6, r0
	bge _0804D89C
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D890
	adds r7, #1
_0804D890:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D89C:
	cmp r6, r8
	bge _0804D8C0
	mov r2, r8
	asrs r0, r2, #1
	adds r0, #0x3c
	cmp r6, r0
	ble _0804D8C0
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804D8B4
	subs r7, #1
_0804D8B4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804D8C0:
	ldr r1, _0804D954 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804D958 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	movs r3, #0
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	cmp r6, #0x3c
	ble _0804D924
	ldr r1, _0804D93C @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D8E8
	str r3, [r1]
_0804D8E8:
	mov r0, sb
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	mov r0, sl
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r4, _0804D948 @ =0x03000A44
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	ldr r3, _0804D94C @ =0x03000A46
	bl sub_08026C40
	mov r2, sb
	ldr r1, [r2]
	mov r3, sl
	ldr r2, [r3]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804D924:
	bl sub_0800277C
	cmp r0, #0
	beq _0804D960
	ldr r0, _0804D95C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D96E
	bl _0804E192
	.align 2, 0
_0804D93C: .4byte 0x03000A4C
_0804D940: .4byte 0x03000A50
_0804D944: .4byte 0x03000A54
_0804D948: .4byte 0x03000A44
_0804D94C: .4byte 0x03000A46
_0804D950: .4byte 0x030009D8
_0804D954: .4byte 0x03000A48
_0804D958: .4byte gBgRegsBuffer
_0804D95C: .4byte gKeysNew
_0804D960:
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804D970
_0804D96E:
	movs r1, #0
_0804D970:
	cmp r1, #0
	beq _0804D978
	bl _0804E192
_0804D978:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804D984
	b _0804D82E
_0804D984:
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r6, #0
	mov sl, r6
	ldr r7, _0804DA20 @ =0x03000A50
	ldr r5, _0804DA24 @ =0x030009D8
	ldr r0, _0804DA28 @ =0x03000A54
	mov sb, r0
	ldr r1, _0804DA2C @ =0x03000A44
	mov r8, r1
_0804D99C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E6C0
	ldr r1, _0804DA30 @ =0x03000A48
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0804DA34 @ =gBgRegsBuffer
	rsbs r0, r0, #0
	lsrs r1, r0, #4
	strh r1, [r2, #8]
	lsrs r0, r0, #2
	strh r0, [r2, #0xc]
	ldr r1, _0804DA38 @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804D9CC
	mov r2, sl
	str r2, [r1]
_0804D9CC:
	ldr r1, [r7]
	subs r1, #1
	str r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	ldr r3, _0804DA3C @ =0x03000A46
	bl sub_08026C40
	ldr r1, [r7]
	mov r3, sb
	ldr r2, [r3]
	mov r3, r8
	ldrh r0, [r3]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
	bl sub_0800277C
	cmp r0, #0
	beq _0804DA40
	ldr r0, _0804DA1C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DA4E
	b _0804E192
	.align 2, 0
_0804DA1C: .4byte gKeysNew
_0804DA20: .4byte 0x03000A50
_0804DA24: .4byte 0x030009D8
_0804DA28: .4byte 0x03000A54
_0804DA2C: .4byte 0x03000A44
_0804DA30: .4byte 0x03000A48
_0804DA34: .4byte gBgRegsBuffer
_0804DA38: .4byte 0x03000A4C
_0804DA3C: .4byte 0x03000A46
_0804DA40:
	ldr r0, _0804DAA4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DA50
_0804DA4E:
	movs r1, #0
_0804DA50:
	cmp r1, #0
	beq _0804DA56
	b _0804E192
_0804DA56:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804D99C
	movs r0, #2
	bl sub_0804CA84
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DAA4 @ =gKeysNew
	ldr r5, _0804DAA8 @ =gBgRegsBuffer
_0804DA7C:
	lsls r1, r6, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DAAC
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DAB8
	b _0804E192
	.align 2, 0
_0804DAA4: .4byte gKeysNew
_0804DAA8: .4byte gBgRegsBuffer
_0804DAAC:
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DABA
_0804DAB8:
	movs r4, #0
_0804DABA:
	cmp r4, #0
	beq _0804DAC0
	b _0804E192
_0804DAC0:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3f
	ble _0804DA7C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _0804DB50 @ =0x03000A48
	str r4, [r0]
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r6, #0
_0804DAE6:
	adds r0, r6, #0
	subs r0, #0x11
	cmp r0, #0xe
	bhi _0804DAFA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DAFA:
	mov r4, r8
	subs r4, #0x10
	cmp r6, r4
	bge _0804DB1A
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DB1A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DB1A:
	cmp r6, #0x10
	ble _0804DB32
	cmp r6, r4
	bge _0804DB32
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DB54 @ =0x030009D8
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
_0804DB32:
	ldr r0, _0804DB58 @ =gBgRegsBuffer
	ldrh r1, [r0, #8]
	subs r1, #1
	strh r1, [r0, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DB60
	ldr r0, _0804DB5C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DB6E
	b _0804E192
	.align 2, 0
_0804DB50: .4byte 0x03000A48
_0804DB54: .4byte 0x030009D8
_0804DB58: .4byte gBgRegsBuffer
_0804DB5C: .4byte gKeysNew
_0804DB60:
	ldr r0, _0804DBAC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DB70
_0804DB6E:
	movs r1, #0
_0804DB70:
	cmp r1, #0
	beq _0804DB76
	b _0804E192
_0804DB76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DAE6
	movs r6, #0
	ldr r5, _0804DBAC @ =gKeysNew
	ldr r4, _0804DBB0 @ =gBgRegsBuffer
_0804DB86:
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0804DB92
	bl sub_0804E80C
_0804DB92:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBB4
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBC0
	b _0804E192
	.align 2, 0
_0804DBAC: .4byte gKeysNew
_0804DBB0: .4byte gBgRegsBuffer
_0804DBB4:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DBC2
_0804DBC0:
	movs r1, #0
_0804DBC2:
	cmp r1, #0
	beq _0804DBC8
	b _0804E192
_0804DBC8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x7f
	ble _0804DB86
	movs r6, #0
	ldr r5, _0804DBEC @ =gKeysNew
_0804DBD6:
	bl sub_0800277C
	cmp r0, #0
	beq _0804DBF0
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DBFC
	b _0804E192
	.align 2, 0
_0804DBEC: .4byte gKeysNew
_0804DBF0:
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	bne _0804DBFE
_0804DBFC:
	movs r4, #0
_0804DBFE:
	cmp r4, #0
	beq _0804DC04
	b _0804E192
_0804DC04:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x25
	ble _0804DBD6
	movs r0, #3
	bl sub_0804CA84
	ldr r0, _0804DC8C @ =gBgRegsBuffer
	movs r3, #0xb0
	lsls r3, r3, #1
	strh r3, [r0, #6]
	adds r1, r3, #0
	strh r1, [r0, #0xa]
	adds r2, r3, #0
	strh r2, [r0, #0xe]
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	ldr r1, _0804DC90 @ =0x03000A44
	strh r4, [r1]
	ldr r0, _0804DC94 @ =0x03000A46
	strh r4, [r0]
	movs r6, #0
	ldr r3, _0804DC98 @ =0x030009D8
	mov r8, r3
	adds r5, r1, #0
	movs r7, #1
	ldr r4, _0804DC9C @ =gKeysNew
_0804DC48:
	lsls r1, r6, #0x15
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DC94 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DCA0
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DCAC
	b _0804E192
	.align 2, 0
_0804DC8C: .4byte gBgRegsBuffer
_0804DC90: .4byte 0x03000A44
_0804DC94: .4byte 0x03000A46
_0804DC98: .4byte 0x030009D8
_0804DC9C: .4byte gKeysNew
_0804DCA0:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DCAE
_0804DCAC:
	movs r1, #0
_0804DCAE:
	cmp r1, #0
	beq _0804DCB4
	b _0804E192
_0804DCB4:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0xff
	ble _0804DC48
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x15
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x15
	bl sub_0804ED04
	movs r6, #0
	ldr r7, _0804DD4C @ =0x030009D8
	ldr r5, _0804DD50 @ =0x03000A44
_0804DCDA:
	cmp r6, #0x1f
	bgt _0804DCEA
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DCEA:
	mov r0, r8
	subs r0, #0x20
	cmp r6, r0
	ble _0804DD02
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DD02:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804DD54 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08026B90
	movs r4, #1
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DD58 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DD60
	ldr r0, _0804DD5C @ =gKeysNew
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DD6E
	b _0804E192
	.align 2, 0
_0804DD4C: .4byte 0x030009D8
_0804DD50: .4byte 0x03000A44
_0804DD54: .4byte 0x03000A10
_0804DD58: .4byte 0x03000A46
_0804DD5C: .4byte gKeysNew
_0804DD60:
	ldr r0, _0804DDC4 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DD70
_0804DD6E:
	movs r1, #0
_0804DD70:
	cmp r1, #0
	beq _0804DD76
	b _0804E192
_0804DD76:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DCDA
	movs r6, #0
	ldr r3, _0804DDC8 @ =0x030009D8
	mov r8, r3
	ldr r5, _0804DDCC @ =0x03000A44
	movs r7, #1
	ldr r4, _0804DDC4 @ =gKeysNew
_0804DD8C:
	str r7, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0804DDD0 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r5]
	str r0, [sp]
	mov r0, r8
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DDD4
	ldrh r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DDE0
	b _0804E192
	.align 2, 0
_0804DDC4: .4byte gKeysNew
_0804DDC8: .4byte 0x030009D8
_0804DDCC: .4byte 0x03000A44
_0804DDD0: .4byte 0x03000A46
_0804DDD4:
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DDE2
_0804DDE0:
	movs r1, #0
_0804DDE2:
	cmp r1, #0
	beq _0804DDE8
	b _0804E192
_0804DDE8:
	bl WaitFrame
	adds r6, #1
	cmp r6, #0x3b
	ble _0804DD8C
	movs r0, #0xd2
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #3
	movs r1, #0x11
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x11
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x12
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x12
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x13
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x13
	bl sub_0804ED04
	movs r0, #3
	movs r1, #0x14
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x14
	bl sub_0804ED04
	movs r6, #0
	movs r7, #0
_0804DE3C:
	cmp r6, #0x1f
	bgt _0804DE4C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE4C:
	mov r0, r8
	subs r0, #0x10
	cmp r6, r0
	bge _0804DE78
	subs r0, #0x10
	cmp r6, r0
	ble _0804DE6A
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x15
	bl sub_0804E5A4
_0804DE6A:
	str r7, [sp]
	ldr r0, _0804DF50 @ =0x03000A10
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #1
	bl sub_08026B90
_0804DE78:
	ldr r5, _0804DF54 @ =0x030009D8
	ldr r4, _0804DF58 @ =0x03000A44
	movs r3, #1
	mov sb, r3
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	ldr r3, _0804DF5C @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	adds r0, r6, #0
	subs r0, #0x3d
	cmp r0, #0x3e
	bhi _0804DEB6
	adds r1, r6, #0
	subs r1, #0x3c
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x14
	bl sub_0804E5A4
_0804DEB6:
	adds r0, r6, #0
	subs r0, #0x79
	cmp r0, #0x3e
	bhi _0804DECE
	adds r1, r6, #0
	subs r1, #0x78
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x13
	bl sub_0804E5A4
_0804DECE:
	adds r0, r6, #0
	subs r0, #0xb5
	cmp r0, #0x3e
	bhi _0804DEE6
	adds r1, r6, #0
	subs r1, #0xb4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x12
	bl sub_0804E5A4
_0804DEE6:
	adds r0, r6, #0
	subs r0, #0xf1
	cmp r0, #0x3e
	bhi _0804DEFE
	adds r1, r6, #0
	subs r1, #0xf0
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x11
	bl sub_0804E5A4
_0804DEFE:
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804DF64
	ldr r0, _0804DF60 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804DF72
	b _0804E192
	.align 2, 0
_0804DF50: .4byte 0x03000A10
_0804DF54: .4byte 0x030009D8
_0804DF58: .4byte 0x03000A44
_0804DF5C: .4byte 0x03000A46
_0804DF60: .4byte gKeysNew
_0804DF64:
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804DF74
_0804DF72:
	movs r1, #0
_0804DF74:
	cmp r1, #0
	beq _0804DF7A
	b _0804E192
_0804DF7A:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	bge _0804DF86
	b _0804DE3C
_0804DF86:
	movs r0, #0xb4
	mov r8, r0
	movs r6, #0
	ldr r4, _0804E00C @ =0x030009D8
	ldr r7, _0804E010 @ =0x03000A44
	movs r1, #1
	mov sb, r1
	movs r5, #0
_0804DF96:
	mov r2, sb
	str r2, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	ldr r3, _0804E014 @ =0x03000A46
	bl sub_08026C40
	ldrh r0, [r7]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x1e
	movs r3, #0
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0x78
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xd2
	movs r2, #0x78
	movs r3, #3
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x5a
	movs r2, #0x9b
	movs r3, #1
	bl sub_08026B90
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0x96
	movs r2, #0x99
	movs r3, #2
	bl sub_08026B90
	bl sub_0800ED74
	bl sub_0800277C
	cmp r0, #0
	beq _0804E018
	ldr r0, _0804E008 @ =gKeysNew
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0804E026
	b _0804E192
	.align 2, 0
_0804E008: .4byte gKeysNew
_0804E00C: .4byte 0x030009D8
_0804E010: .4byte 0x03000A44
_0804E014: .4byte 0x03000A46
_0804E018:
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E028
_0804E026:
	movs r1, #0
_0804E028:
	cmp r1, #0
	beq _0804E02E
	b _0804E192
_0804E02E:
	bl WaitFrame
	adds r6, #1
	cmp r6, r8
	blt _0804DF96
	movs r3, #0xb4
	lsls r3, r3, #1
	mov r8, r3
	movs r6, #0
	ldr r0, _0804E120 @ =0x030009D8
	mov sb, r0
	ldr r1, _0804E124 @ =0xFFFFF9AC
	str r1, [sp, #0x10]
_0804E048:
	mov sl, r6
	movs r2, #0xb0
	lsls r2, r2, #1
	subs r0, r2, r6
	cmp r0, #0
	bge _0804E056
	mov sl, r2
_0804E056:
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	movs r1, #0
	ldr r2, _0804E128 @ =0x03000A44
	ldr r3, _0804E12C @ =0x03000A46
	bl sub_08026C40
	mov r2, sl
	adds r2, #0x1e
	ldr r3, _0804E128 @ =0x03000A44
	ldrh r0, [r3]
	str r0, [sp]
	mov r0, sb
	movs r1, #0x78
	movs r3, #0
	bl sub_08026B90
	mov r4, sl
	adds r4, #0x78
	movs r5, #0
	str r5, [sp]
	mov r0, sb
	movs r1, #0x1e
	adds r2, r4, #0
	movs r3, #4
	bl sub_08026B90
	str r5, [sp]
	mov r0, sb
	movs r1, #0xd2
	adds r2, r4, #0
	movs r3, #3
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x9b
	str r5, [sp]
	mov r0, sb
	movs r1, #0x5a
	movs r3, #1
	bl sub_08026B90
	mov r2, sl
	adds r2, #0x99
	str r5, [sp]
	mov r0, sb
	movs r1, #0x96
	movs r3, #2
	bl sub_08026B90
	ldr r4, _0804E130 @ =gBgRegsBuffer
	movs r1, #0xb0
	lsls r1, r1, #1
	mov r2, sl
	subs r0, r1, r2
	movs r7, #0
	strh r0, [r4, #6]
	bl sub_0800ED74
	cmp r6, #0xf0
	bne _0804E0D8
	ldr r0, _0804E134 @ =0x0000FFC4
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
_0804E0D8:
	movs r1, #0x87
	lsls r1, r1, #1
	cmp r6, r1
	bne _0804E0E6
	ldr r0, _0804E138 @ =0x0000FFD8
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
_0804E0E6:
	cmp r6, #0xf0
	ble _0804E104
	movs r3, #0xb0
	lsls r3, r3, #1
	cmp sl, r3
	beq _0804E104
	adds r0, r6, #0
	subs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	cmp r6, r1
	ble _0804E104
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xe]
_0804E104:
	bl sub_0800277C
	cmp r0, #0
	beq _0804E13C
	ldr r0, _0804E11C @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E14A
	b _0804E192
	.align 2, 0
_0804E11C: .4byte gKeysNew
_0804E120: .4byte 0x030009D8
_0804E124: .4byte 0xFFFFF9AC
_0804E128: .4byte 0x03000A44
_0804E12C: .4byte 0x03000A46
_0804E130: .4byte gBgRegsBuffer
_0804E134: .4byte 0x0000FFC4
_0804E138: .4byte 0x0000FFD8
_0804E13C:
	ldr r0, _0804E170 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0804E14C
_0804E14A:
	movs r1, #0
_0804E14C:
	cmp r1, #0
	bne _0804E192
	bl WaitFrame
	ldr r1, [sp, #0x10]
	adds r1, #6
	str r1, [sp, #0x10]
	adds r6, #1
	cmp r6, r8
	bge _0804E162
	b _0804E048
_0804E162:
	movs r0, #8
	bl FadeOutAllMusicPlayers
	movs r0, #0x78
	bl sub_0800F244
	b _0804E17C
	.align 2, 0
_0804E170: .4byte gKeysNew
_0804E174:
	bl sub_0800ED74
	bl WaitFrame
_0804E17C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E174
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	b _0804E1D2
_0804E192:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0804E1A8
	b _0804E19E
_0804E19A:
	bl WaitFrame
_0804E19E:
	ldr r0, [sp, #0xc]
	bl sub_0802294C
	cmp r0, #0
	beq _0804E19A
_0804E1A8:
	movs r0, #2
	bl FadeOutAllMusicPlayers
_0804E1AE:
	movs r0, #0x1e
	bl sub_0800F244
	b _0804E1BE
_0804E1B6:
	bl sub_0800ED74
	bl WaitFrame
_0804E1BE:
	bl sub_0800F298
	cmp r0, #0
	beq _0804E1B6
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
_0804E1D2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E1E4
sub_0804E1E4: @ 0x0804E1E4
	ldr r1, _0804E1EC @ =0x03000A48
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E1EC: .4byte 0x03000A48

	thumb_func_start sub_0804E1F0
sub_0804E1F0: @ 0x0804E1F0
	bx lr
	.align 2, 0
_0804E1F4:
	.byte 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28, 0x0F, 0xD0
	.byte 0x12, 0xE0, 0x05, 0x49, 0x08, 0x68, 0x01, 0x30, 0x08, 0x60, 0x04, 0x4A, 0x40, 0x42, 0x01, 0x09
	.byte 0x11, 0x81, 0x80, 0x08, 0x90, 0x81, 0x07, 0xE0, 0x48, 0x0A, 0x00, 0x03, 0x60, 0x1C, 0x00, 0x03
	.byte 0x02, 0x49, 0x08, 0x89, 0x01, 0x38, 0x08, 0x81, 0x70, 0x47, 0x00, 0x00, 0x60, 0x1C, 0x00, 0x03

	thumb_func_start sub_0804E230
sub_0804E230: @ 0x0804E230
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bne _0804E28E
	ldr r1, _0804E29C @ =0x03000A4C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	bne _0804E250
	movs r0, #0
	str r0, [r1]
_0804E250:
	ldr r4, _0804E2A0 @ =0x03000A50
	ldr r1, [r4]
	subs r1, #1
	str r1, [r4]
	ldr r5, _0804E2A4 @ =0x030009D8
	ldr r0, _0804E2A8 @ =0x03000A54
	mov r8, r0
	ldr r2, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08026B90
	ldr r6, _0804E2AC @ =0x03000A44
	ldr r3, _0804E2B0 @ =0x03000A46
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_08026C40
	ldr r1, [r4]
	mov r0, r8
	ldr r2, [r0]
	ldrh r0, [r6]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08026B90
_0804E28E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E29C: .4byte 0x03000A4C
_0804E2A0: .4byte 0x03000A50
_0804E2A4: .4byte 0x030009D8
_0804E2A8: .4byte 0x03000A54
_0804E2AC: .4byte 0x03000A44
_0804E2B0: .4byte 0x03000A46

	thumb_func_start sub_0804E2B4
sub_0804E2B4: @ 0x0804E2B4
	push {lr}
	bl sub_0800277C
	cmp r0, #0
	beq _0804E2CC
	ldr r0, _0804E2C8 @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #1
	b _0804E2D2
	.align 2, 0
_0804E2C8: .4byte gKeysNew
_0804E2CC:
	ldr r0, _0804E2DC @ =gKeysNew
	ldrh r1, [r0]
	movs r0, #8
_0804E2D2:
	ands r0, r1
	cmp r0, #0
	beq _0804E2E0
	movs r0, #1
	b _0804E2E2
	.align 2, 0
_0804E2DC: .4byte gKeysNew
_0804E2E0:
	movs r0, #0
_0804E2E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804E2E8
sub_0804E2E8: @ 0x0804E2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E312
	movs r7, #0
	movs r0, #0x20
	b _0804E336
_0804E312:
	cmp r4, #1
	bne _0804E31E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E338
_0804E31E:
	cmp r4, #2
	bne _0804E32A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E338
_0804E32A:
	cmp r6, #3
	bne _0804E338
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E336:
	str r0, [sp]
_0804E338:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E342
	b _0804E454
_0804E342:
	mov r2, r8
	lsls r2, r2, #0x18
	mov ip, r2
	asrs r7, r2, #0x18
	movs r0, #0x1f
	mov r8, r0
	mov r2, r8
	adds r0, r7, #0
	ands r2, r0
	str r2, [sp, #4]
	ldr r2, _0804E398 @ =0xFFFFFC1F
	mov sl, r2
	movs r0, #0x7d
	rsbs r0, r0, #0
	mov sb, r0
_0804E360:
	lsls r0, r1, #5
	ldr r2, _0804E39C @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #8]
	lsls r5, r1, #6
_0804E36E:
	lsls r1, r6, #2
	adds r0, r1, r5
	ldr r2, _0804E3A0 @ =0x03000A58
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp r7, r0
	bgt _0804E3B0
	cmp r7, #0
	blt _0804E3A4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	strb r0, [r3]
	b _0804E3C2
	.align 2, 0
_0804E398: .4byte 0xFFFFFC1F
_0804E39C: .4byte gPaletteBuffer
_0804E3A0: .4byte 0x03000A58
_0804E3A4:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0804E3C2
_0804E3B0:
	lsrs r0, r2, #0x1b
	mov r2, r8
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E3C2:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E3E0 @ =0x03000A58
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E3EE
	cmp r2, #0
	blt _0804E3E4
	movs r0, #0x1f
	ands r0, r2
	b _0804E3F0
	.align 2, 0
_0804E3E0: .4byte 0x03000A58
_0804E3E4:
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	strh r0, [r3]
	b _0804E3FC
_0804E3EE:
	lsrs r0, r1, #0x1b
_0804E3F0:
	lsls r0, r0, #5
	ldrh r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E3FC:
	mov r0, ip
	asrs r2, r0, #0x18
	adds r0, r4, r5
	ldr r1, _0804E41C @ =0x03000A58
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E42A
	cmp r2, #0
	blt _0804E420
	adds r0, r2, #0
	mov r2, r8
	ands r0, r2
	b _0804E430
	.align 2, 0
_0804E41C: .4byte 0x03000A58
_0804E420:
	ldrb r1, [r3, #1]
	mov r0, sb
	ands r0, r1
	strb r0, [r3, #1]
	b _0804E43C
_0804E42A:
	lsrs r0, r1, #0x1b
	mov r1, r8
	ands r0, r1
_0804E430:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E43C:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E36E
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E360
_0804E454:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E464
sub_0804E464: @ 0x0804E464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E48E
	movs r7, #0
	movs r0, #0x20
	b _0804E4B2
_0804E48E:
	cmp r4, #1
	bne _0804E49A
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E4B4
_0804E49A:
	cmp r4, #2
	bne _0804E4A6
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E4B4
_0804E4A6:
	cmp r6, #3
	bne _0804E4B4
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E4B2:
	str r0, [sp]
_0804E4B4:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E592
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sb, r0
	ldr r2, _0804E504 @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
_0804E4CC:
	lsls r0, r1, #5
	ldr r2, _0804E508 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	mov sl, r0
	lsls r5, r1, #6
_0804E4DA:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	add r0, sb
	adds r4, r1, #0
	cmp r0, #0x1f
	bgt _0804E50C
	lsrs r0, r2, #0x1b
	add r0, sb
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E514
	.align 2, 0
_0804E504: .4byte 0x03000A58
_0804E508: .4byte gPaletteBuffer
_0804E50C:
	ldrb r0, [r3]
	mov r2, ip
	orrs r0, r2
	strb r0, [r3]
_0804E514:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E53C
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E538 @ =0xFFFFFC1F
	ands r0, r2
	b _0804E544
	.align 2, 0
_0804E538: .4byte 0xFFFFFC1F
_0804E53C:
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
_0804E544:
	orrs r0, r1
	strh r0, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	adds r0, r2, r0
	cmp r0, #0x1f
	bgt _0804E572
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E57A
_0804E572:
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
_0804E57A:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E4DA
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [sp]
	cmp r1, r0
	blo _0804E4CC
_0804E592:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E5A4
sub_0804E5A4: @ 0x0804E5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	str r3, [sp]
	bl FlushPaletteBuffer
	ldr r3, [sp]
	cmp r4, #0
	bne _0804E5D0
	movs r3, #0
	movs r0, #0x20
	b _0804E5F2
_0804E5D0:
	cmp r4, #1
	bne _0804E5DC
	movs r3, #0
	movs r1, #0x10
	mov sl, r1
	b _0804E5F4
_0804E5DC:
	cmp r4, #2
	bne _0804E5E6
	movs r3, #0x10
	movs r0, #0x20
	b _0804E5F2
_0804E5E6:
	cmp r7, #3
	bne _0804E5F4
	adds r3, r6, #0
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E5F2:
	mov sl, r0
_0804E5F4:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1f
	ble _0804E5FE
	movs r5, #0x1f
_0804E5FE:
	adds r2, r3, #0
	cmp r2, sl
	bhs _0804E6A0
	lsls r0, r5, #0x18
	asrs r6, r0, #0x18
	movs r5, #0x1f
	ldr r1, _0804E6B0 @ =0x0000FFE1
	adds r7, r6, r1
_0804E60E:
	lsls r0, r2, #5
	ldr r1, _0804E6B4 @ =gPaletteBuffer
	adds r3, r0, r1
	movs r0, #0
	mov ip, r0
	lsls r1, r2, #6
	mov r8, r1
	adds r2, #1
	mov sb, r2
_0804E620:
	mov r1, ip
	lsls r0, r1, #2
	add r0, r8
	ldr r1, _0804E6B8 @ =0x03000A58
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E648
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E648:
	ldrh r0, [r4]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E666
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E6BC @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804E666:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	subs r0, r5, r0
	cmp r6, r0
	ble _0804E686
	lsrs r0, r1, #0x1b
	adds r0, r0, r7
	ands r0, r5
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_0804E686:
	adds r3, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0xf
	bls _0804E620
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sl
	blo _0804E60E
_0804E6A0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6B0: .4byte 0x0000FFE1
_0804E6B4: .4byte gPaletteBuffer
_0804E6B8: .4byte 0x03000A58
_0804E6BC: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804E6C0
sub_0804E6C0: @ 0x0804E6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E6EA
	movs r7, #0
	movs r0, #0x20
	b _0804E70E
_0804E6EA:
	cmp r4, #1
	bne _0804E6F6
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E710
_0804E6F6:
	cmp r4, #2
	bne _0804E702
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E710
_0804E702:
	cmp r6, #3
	bne _0804E710
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E70E:
	str r0, [sp]
_0804E710:
	adds r1, r7, #0
	ldr r4, [sp]
	cmp r1, r4
	bhs _0804E7FA
	mov r0, r8
	lsls r7, r0, #0x18
	ldr r2, _0804E764 @ =0x03000A58
	mov ip, r2
	asrs r4, r7, #0x18
	mov r8, r4
	movs r0, #0x1f
	mov sl, r0
_0804E728:
	lsls r0, r1, #5
	ldr r2, _0804E768 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r4, r1, #1
	mov sb, r4
	lsls r5, r1, #6
_0804E736:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, ip
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	mov r4, r8
	subs r0, r0, r4
	adds r4, r1, #0
	cmp r0, #0
	blt _0804E76C
	lsrs r0, r2, #0x1b
	mov r1, r8
	subs r0, r0, r1
	mov r2, sl
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0804E776
	.align 2, 0
_0804E764: .4byte 0x03000A58
_0804E768: .4byte gPaletteBuffer
_0804E76C:
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0804E776:
	adds r0, r4, r5
	add r0, ip
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	asrs r2, r7, #0x18
	subs r0, r0, r2
	cmp r0, #0
	blt _0804E7A0
	lsrs r1, r1, #0x1b
	subs r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _0804E79C @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	b _0804E7A6
	.align 2, 0
_0804E79C: .4byte 0xFFFFFC1F
_0804E7A0:
	ldrh r1, [r3]
	ldr r0, _0804E7D4 @ =0xFFFFFC1F
	ands r0, r1
_0804E7A6:
	strh r0, [r3]
	adds r0, r4, r5
	add r0, ip
	ldrb r0, [r0, #1]
	lsls r2, r0, #0x19
	lsrs r0, r2, #0x1b
	asrs r1, r7, #0x18
	subs r0, r0, r1
	cmp r0, #0
	blt _0804E7D8
	lsrs r0, r2, #0x1b
	subs r0, r0, r1
	mov r4, sl
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0804E7E2
	.align 2, 0
_0804E7D4: .4byte 0xFFFFFC1F
_0804E7D8:
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
_0804E7E2:
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E736
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E728
_0804E7FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804E80C
sub_0804E80C: @ 0x0804E80C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl FlushPaletteBuffer
	movs r3, #0
	movs r6, #0x1f
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, _0804E8B4 @ =0xFFFFFC1F
	mov ip, r0
_0804E82E:
	lsls r1, r3, #5
	ldr r0, _0804E8B8 @ =gPaletteBuffer
	adds r2, r1, r0
	movs r4, #0
	adds r5, r3, #1
_0804E838:
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _0804E854
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0804E854:
	ldrh r3, [r2]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0804E872
	ldr r1, [r2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r7
	lsls r1, r1, #5
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2]
_0804E872:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0804E892
	ldr r1, [r2]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
_0804E892:
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804E838
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0804E82E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8B4: .4byte 0xFFFFFC1F
_0804E8B8: .4byte gPaletteBuffer

	thumb_func_start sub_0804E8BC
sub_0804E8BC: @ 0x0804E8BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804E8E6
	movs r7, #0
	movs r0, #0x20
	b _0804E90A
_0804E8E6:
	cmp r4, #1
	bne _0804E8F2
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804E90C
_0804E8F2:
	cmp r4, #2
	bne _0804E8FE
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804E90C
_0804E8FE:
	cmp r6, #3
	bne _0804E90C
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804E90A:
	str r0, [sp]
_0804E90C:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804E9E8
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804E960 @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804E92E:
	lsls r0, r1, #5
	ldr r2, _0804E964 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804E93C:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	bgt _0804E968
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804E97A
	.align 2, 0
_0804E960: .4byte 0x03000A58
_0804E964: .4byte gPaletteBuffer
_0804E968:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804E97A:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E990
	movs r0, #0x1f
	ands r0, r2
	b _0804E992
_0804E990:
	lsrs r0, r1, #0x1b
_0804E992:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804E9B8 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	bgt _0804E9BC
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804E9C2
	.align 2, 0
_0804E9B8: .4byte 0xFFFFFC1F
_0804E9BC:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804E9C2:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804E93C
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804E92E
_0804E9E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804E9F8
sub_0804E9F8: @ 0x0804E9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EA22
	movs r7, #0
	movs r0, #0x20
	b _0804EA46
_0804EA22:
	cmp r4, #1
	bne _0804EA2E
	movs r7, #0
	movs r1, #0x10
	str r1, [sp]
	b _0804EA48
_0804EA2E:
	cmp r4, #2
	bne _0804EA3A
	movs r7, #0x10
	movs r2, #0x20
	str r2, [sp]
	b _0804EA48
_0804EA3A:
	cmp r6, #3
	bne _0804EA48
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EA46:
	str r0, [sp]
_0804EA48:
	adds r1, r7, #0
	ldr r0, [sp]
	cmp r1, r0
	bhs _0804EB24
	mov r2, r8
	lsls r7, r2, #0x18
	asrs r0, r7, #0x18
	mov sl, r0
	ldr r2, _0804EA9C @ =0x03000A58
	mov r8, r2
	movs r0, #0x1f
	mov ip, r0
	mov sb, sl
	mov r2, ip
	mov r0, sb
	ands r2, r0
	mov sb, r2
_0804EA6A:
	lsls r0, r1, #5
	ldr r2, _0804EAA0 @ =gPaletteBuffer
	adds r3, r0, r2
	movs r6, #0
	adds r0, r1, #1
	str r0, [sp, #4]
	lsls r5, r1, #6
_0804EA78:
	lsls r1, r6, #2
	adds r0, r1, r5
	add r0, r8
	ldrb r0, [r0]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	adds r4, r1, #0
	cmp sl, r0
	blt _0804EAA4
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r3]
	b _0804EAB6
	.align 2, 0
_0804EA9C: .4byte 0x03000A58
_0804EAA0: .4byte gPaletteBuffer
_0804EAA4:
	lsrs r0, r2, #0x1b
	mov r2, ip
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0804EAB6:
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrh r0, [r0]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EACC
	movs r0, #0x1f
	ands r0, r2
	b _0804EACE
_0804EACC:
	lsrs r0, r1, #0x1b
_0804EACE:
	lsls r0, r0, #5
	ldrh r2, [r3]
	ldr r1, _0804EAF4 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	asrs r2, r7, #0x18
	adds r0, r4, r5
	add r0, r8
	ldrb r0, [r0, #1]
	lsls r1, r0, #0x19
	lsrs r0, r1, #0x1b
	cmp r2, r0
	blt _0804EAF8
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	b _0804EAFE
	.align 2, 0
_0804EAF4: .4byte 0xFFFFFC1F
_0804EAF8:
	lsrs r0, r1, #0x1b
	mov r2, ip
	ands r0, r2
_0804EAFE:
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0804EA78
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r2, [sp]
	cmp r1, r2
	blo _0804EA6A
_0804EB24:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804EB34
sub_0804EB34: @ 0x0804EB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804EB5C
	movs r7, #0
	movs r0, #0x20
	b _0804EB7E
_0804EB5C:
	cmp r4, #1
	bne _0804EB68
	movs r7, #0
	movs r1, #0x10
	mov sb, r1
	b _0804EB80
_0804EB68:
	cmp r4, #2
	bne _0804EB72
	movs r7, #0x10
	movs r0, #0x20
	b _0804EB7E
_0804EB72:
	cmp r6, #3
	bne _0804EB80
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804EB7E:
	mov sb, r0
_0804EB80:
	adds r3, r7, #0
	cmp r3, sb
	bhs _0804EBE6
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x1f
	adds r5, r0, #0
	ands r5, r1
	lsls r7, r5, #2
	ldr r1, _0804EBF4 @ =gPaletteBuffer
	mov sl, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0x1f
	ands r1, r0
	lsls r6, r1, #5
	ldr r0, _0804EBF8 @ =0xFFFFFC1F
	mov ip, r0
_0804EBA8:
	lsls r0, r3, #5
	mov r1, sl
	adds r2, r0, r1
	movs r4, #0
	adds r3, #1
_0804EBB2:
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	ldrh r1, [r2]
	mov r0, ip
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804EBB2
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sb
	blo _0804EBA8
_0804EBE6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EBF4: .4byte gPaletteBuffer
_0804EBF8: .4byte 0xFFFFFC1F

	thumb_func_start sub_0804EBFC
sub_0804EBFC: @ 0x0804EBFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC14
	movs r4, #0
	movs r3, #0x20
	b _0804EC34
_0804EC14:
	cmp r0, #1
	bne _0804EC1E
	movs r4, #0
	movs r3, #0x10
	b _0804EC34
_0804EC1E:
	cmp r0, #2
	bne _0804EC28
	movs r4, #0x10
	movs r3, #0x20
	b _0804EC34
_0804EC28:
	cmp r2, #3
	bne _0804EC34
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804EC34:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804EC6E
_0804EC3A:
	movs r4, #0
	lsls r6, r0, #6
	lsls r5, r0, #5
	adds r7, r0, #1
_0804EC42:
	lsls r0, r4, #2
	adds r0, r6, r0
	ldr r1, _0804EC78 @ =0x03000A58
	adds r0, r0, r1
	lsls r1, r4, #1
	adds r1, r5, r1
	ldr r2, _0804EC7C @ =gPaletteBuffer
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804EC42
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804EC3A
_0804EC6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC78: .4byte 0x03000A58
_0804EC7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804EC80
sub_0804EC80: @ 0x0804EC80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0804EC98
	movs r4, #0
	movs r3, #0x20
	b _0804ECB8
_0804EC98:
	cmp r0, #1
	bne _0804ECA2
	movs r4, #0
	movs r3, #0x10
	b _0804ECB8
_0804ECA2:
	cmp r0, #2
	bne _0804ECAC
	movs r4, #0x10
	movs r3, #0x20
	b _0804ECB8
_0804ECAC:
	cmp r2, #3
	bne _0804ECB8
	adds r4, r1, #0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0804ECB8:
	adds r0, r4, #0
	cmp r0, r3
	bhs _0804ECF2
_0804ECBE:
	movs r4, #0
	lsls r6, r0, #5
	lsls r5, r0, #6
	adds r7, r0, #1
_0804ECC6:
	lsls r0, r4, #1
	adds r0, r6, r0
	ldr r1, _0804ECFC @ =gPaletteBuffer
	adds r0, r0, r1
	lsls r1, r4, #2
	adds r1, r5, r1
	ldr r2, _0804ED00 @ =0x03000A58
	adds r1, r1, r2
	movs r2, #4
	str r3, [sp]
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #0xf
	bls _0804ECC6
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	blo _0804ECBE
_0804ECF2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ECFC: .4byte gPaletteBuffer
_0804ED00: .4byte 0x03000A58

	thumb_func_start sub_0804ED04
sub_0804ED04: @ 0x0804ED04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl FlushPaletteBuffer
	cmp r4, #0
	bne _0804ED22
	movs r7, #0
	movs r0, #0x20
	b _0804ED42
_0804ED22:
	cmp r4, #1
	bne _0804ED2C
	movs r7, #0
	movs r0, #0x10
	b _0804ED42
_0804ED2C:
	cmp r4, #2
	bne _0804ED36
	movs r7, #0x10
	movs r0, #0x20
	b _0804ED42
_0804ED36:
	cmp r6, #3
	bne _0804ED44
	adds r7, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0804ED42:
	mov r8, r0
_0804ED44:
	adds r0, r7, #0
	cmp r0, r8
	bhs _0804ED70
	ldr r7, _0804ED7C @ =gPaletteBuffer
_0804ED4C:
	movs r4, #0
	lsls r5, r0, #5
	adds r6, r0, #1
_0804ED52:
	lsls r0, r4, #1
	adds r0, r0, r7
	adds r0, r5, r0
	movs r1, #4
	bl bzero
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _0804ED52
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	blo _0804ED4C
_0804ED70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED7C: .4byte gPaletteBuffer

	thumb_func_start sub_0804ED80
sub_0804ED80: @ 0x0804ED80
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	ldr r1, _0804EDE8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	movs r4, #0
	ldr r1, _0804EDEC @ =0x00001E02
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #2
	add r1, sp, #4
	bl SetBgCnt
	cmp r6, #1
	bhi _0804EDF4
	ldr r0, _0804EDF0 @ =0x00001F83
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	b _0804EE0C
	.align 2, 0
_0804EDE8: .4byte 0xFFFF0000
_0804EDEC: .4byte 0x00001E02
_0804EDF0: .4byte 0x00001F83
_0804EDF4:
	ldr r0, _0804EE28 @ =0x00001F03
	add r1, sp, #4
	strh r0, [r1]
	movs r0, #3
	bl SetBgCnt
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
_0804EE0C:
	ldr r0, _0804EE2C @ =0x03003CA8
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804EE16
	b _0804EF30
_0804EE16:
	cmp r6, #0x1e
	bls _0804EE1C
	b _0804EF30
_0804EE1C:
	lsls r0, r6, #2
	ldr r1, _0804EE30 @ =_0804EE34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EE28: .4byte 0x00001F03
_0804EE2C: .4byte 0x03003CA8
_0804EE30: .4byte _0804EE34
_0804EE34: @ jump table
	.4byte _0804EEB0 @ case 0
	.4byte _0804EEB4 @ case 1
	.4byte _0804EEB8 @ case 2
	.4byte _0804EEBC @ case 3
	.4byte _0804EEC0 @ case 4
	.4byte _0804EEC4 @ case 5
	.4byte _0804EEC8 @ case 6
	.4byte _0804EECC @ case 7
	.4byte _0804EED0 @ case 8
	.4byte _0804EED4 @ case 9
	.4byte _0804EED8 @ case 10
	.4byte _0804EEDC @ case 11
	.4byte _0804EEE0 @ case 12
	.4byte _0804EEE4 @ case 13
	.4byte _0804EEE8 @ case 14
	.4byte _0804EEEC @ case 15
	.4byte _0804EEF0 @ case 16
	.4byte _0804EEF4 @ case 17
	.4byte _0804EEF8 @ case 18
	.4byte _0804EEFC @ case 19
	.4byte _0804EF00 @ case 20
	.4byte _0804EF04 @ case 21
	.4byte _0804EF08 @ case 22
	.4byte _0804EF0C @ case 23
	.4byte _0804EF10 @ case 24
	.4byte _0804EF14 @ case 25
	.4byte _0804EF18 @ case 26
	.4byte _0804EF1C @ case 27
	.4byte _0804EF20 @ case 28
	.4byte _0804EF24 @ case 29
	.4byte _0804EF28 @ case 30
_0804EEB0:
	movs r0, #0x2e
	b _0804EF2A
_0804EEB4:
	movs r0, #0x2f
	b _0804EF2A
_0804EEB8:
	movs r0, #0x30
	b _0804EF2A
_0804EEBC:
	movs r0, #0x77
	b _0804EF2A
_0804EEC0:
	movs r0, #0x76
	b _0804EF2A
_0804EEC4:
	movs r0, #0x5f
	b _0804EF2A
_0804EEC8:
	movs r0, #0x75
	b _0804EF2A
_0804EECC:
	movs r0, #0x74
	b _0804EF2A
_0804EED0:
	movs r0, #0x73
	b _0804EF2A
_0804EED4:
	movs r0, #0x72
	b _0804EF2A
_0804EED8:
	movs r0, #0x71
	b _0804EF2A
_0804EEDC:
	movs r0, #0x70
	b _0804EF2A
_0804EEE0:
	movs r0, #0x6f
	b _0804EF2A
_0804EEE4:
	movs r0, #0x6e
	b _0804EF2A
_0804EEE8:
	movs r0, #0x78
	b _0804EF2A
_0804EEEC:
	movs r0, #0x6d
	b _0804EF2A
_0804EEF0:
	movs r0, #0x6c
	b _0804EF2A
_0804EEF4:
	movs r0, #0x6b
	b _0804EF2A
_0804EEF8:
	movs r0, #0x6a
	b _0804EF2A
_0804EEFC:
	movs r0, #0x69
	b _0804EF2A
_0804EF00:
	movs r0, #0x68
	b _0804EF2A
_0804EF04:
	movs r0, #0x67
	b _0804EF2A
_0804EF08:
	movs r0, #0x66
	b _0804EF2A
_0804EF0C:
	movs r0, #0x65
	b _0804EF2A
_0804EF10:
	movs r0, #0x64
	b _0804EF2A
_0804EF14:
	movs r0, #0x63
	b _0804EF2A
_0804EF18:
	movs r0, #0x62
	b _0804EF2A
_0804EF1C:
	movs r0, #0x61
	b _0804EF2A
_0804EF20:
	movs r0, #0x60
	b _0804EF2A
_0804EF24:
	movs r0, #0x4b
	b _0804EF2A
_0804EF28:
	movs r0, #0x42
_0804EF2A:
	bl GetDataRecord
	adds r5, r0, #0
_0804EF30:
	adds r0, r5, #4
	bl LZ77DecompressAlloc
	adds r4, r0, #0
	ldr r1, _0804EF6C @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r3, #0x20
	bl sub_0804620C
	adds r0, r4, #0
	bl Free
	ldr r0, [r5]
	bl GetDataRecord
	adds r3, r0, #0
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0804EF86
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0804EF74
	ldr r1, _0804EF70 @ =0x06004000
	b _0804EF78
	.align 2, 0
_0804EF6C: .4byte 0x0600F800
_0804EF70: .4byte 0x06004000
_0804EF74:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_0804EF78:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
	b _0804EF96
_0804EF86:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0804620C
_0804EF96:
	ldrh r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _0804EFD0 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	cmp r6, #1
	bne _0804EFC6
	b _0804F0DA
_0804EFC6:
	cmp r6, #1
	bgt _0804EFD4
	cmp r6, #0
	beq _0804EFDA
	b _0804F0DA
	.align 2, 0
_0804EFD0: .4byte gBgRegsBuffer
_0804EFD4:
	cmp r6, #0x1e
	beq _0804F064
	b _0804F0DA
_0804EFDA:
	ldr r0, _0804EFF0 @ =0x03003CA8
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #4
	bls _0804EFE6
	b _0804F0DA
_0804EFE6:
	lsls r0, r0, #2
	ldr r1, _0804EFF4 @ =_0804EFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804EFF0: .4byte 0x03003CA8
_0804EFF4: .4byte _0804EFF8
_0804EFF8: @ jump table
	.4byte _0804F00C @ case 0
	.4byte _0804F01C @ case 1
	.4byte _0804F02C @ case 2
	.4byte _0804F03C @ case 3
	.4byte _0804F04C @ case 4
_0804F00C:
	ldr r0, _0804F014 @ =0x03001258
	ldr r1, _0804F018 @ =0x00100070
	b _0804F050
	.align 2, 0
_0804F014: .4byte 0x03001258
_0804F018: .4byte 0x00100070
_0804F01C:
	ldr r0, _0804F024 @ =0x03001258
	ldr r1, _0804F028 @ =0x00100076
	b _0804F050
	.align 2, 0
_0804F024: .4byte 0x03001258
_0804F028: .4byte 0x00100076
_0804F02C:
	ldr r0, _0804F034 @ =0x03001258
	ldr r1, _0804F038 @ =0x0010007E
	b _0804F050
	.align 2, 0
_0804F034: .4byte 0x03001258
_0804F038: .4byte 0x0010007E
_0804F03C:
	ldr r0, _0804F044 @ =0x03001258
	ldr r1, _0804F048 @ =0x00100086
	b _0804F050
	.align 2, 0
_0804F044: .4byte 0x03001258
_0804F048: .4byte 0x00100086
_0804F04C:
	ldr r0, _0804F05C @ =0x03001258
	ldr r1, _0804F060 @ =0x00100085
_0804F050:
	movs r2, #0
	movs r3, #2
	bl sub_08026ADC
	b _0804F0DA
	.align 2, 0
_0804F05C: .4byte 0x03001258
_0804F060: .4byte 0x00100085
_0804F064:
	ldr r4, _0804F084 @ =0x03001290
	movs r6, #3
_0804F068:
	bl sub_0801708C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl GetPlayerClass
	cmp r0, #1
	beq _0804F09A
	cmp r0, #1
	bgt _0804F088
	cmp r0, #0
	beq _0804F092
	b _0804F0C4
	.align 2, 0
_0804F084: .4byte 0x03001290
_0804F088:
	cmp r0, #2
	beq _0804F0A4
	cmp r0, #3
	beq _0804F0B8
	b _0804F0C4
_0804F092:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0xd
	b _0804F0A8
_0804F09A:
	adds r0, r4, #0
	ldr r1, _0804F0A0 @ =0x00100002
	b _0804F0A8
	.align 2, 0
_0804F0A0: .4byte 0x00100002
_0804F0A4:
	adds r0, r4, #0
	ldr r1, _0804F0B4 @ =0x00100001
_0804F0A8:
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
	b _0804F0C4
	.align 2, 0
_0804F0B4: .4byte 0x00100001
_0804F0B8:
	adds r0, r4, #0
	ldr r1, _0804F0E4 @ =0x00100003
	movs r2, #0
	movs r3, #1
	bl sub_08026ADC
_0804F0C4:
	lsls r0, r5, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x10
	movs r2, #1
	bl LoadPalette
	adds r4, #0x34
	subs r6, #1
	cmp r6, #0
	bge _0804F068
_0804F0DA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0E4: .4byte 0x00100003

	thumb_func_start sub_0804F0E8
sub_0804F0E8: @ 0x0804F0E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0x78
	mov r8, r0
	movs r1, #0xc8
	mov sb, r1
	ldr r0, _0804F2E4 @ =0x03001400
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0x78
	ble _0804F156
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2EC @ =0x03001398
	ldr r3, _0804F2F0 @ =0x030013A8
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r2, sl
	ldr r0, [r2]
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0804F142
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
_0804F142:
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc8
	bl __modsi3
	cmp r0, #0
	bne _0804F156
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
_0804F156:
	mov r1, r8
	adds r1, #0xc8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F1B2
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F2FC @ =0x0300139A
	ldr r3, _0804F300 @ =0x030013AA
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #4]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #4]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1d
	bl __modsi3
	cmp r0, #0
	bne _0804F19E
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0804F19E:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F1B2
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
_0804F1B2:
	movs r1, #0xc8
	lsls r1, r1, #1
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F210
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F304 @ =0x0300139C
	ldr r3, _0804F308 @ =0x030013AC
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #8]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #8]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1c
	bl __modsi3
	cmp r0, #0
	bne _0804F1FC
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
_0804F1FC:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F210
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
_0804F210:
	movs r1, #0xa5
	lsls r1, r1, #2
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	cmp r0, r1
	ble _0804F26E
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F30C @ =0x0300139E
	ldr r3, _0804F310 @ =0x030013AE
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0xc]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0xc]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1b
	bl __modsi3
	cmp r0, #0
	bne _0804F25A
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
_0804F25A:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F26E
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
_0804F26E:
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, r8
	mov r2, sl
	ldr r1, [r2]
	cmp r1, r0
	ble _0804F2CC
	ldr r5, _0804F2E8 @ =0x03001258
	ldr r4, _0804F314 @ =0x030013A0
	ldr r3, _0804F318 @ =0x030013B0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08026C40
	ldr r6, _0804F2F4 @ =0x030013D0
	ldr r1, [r6, #0x10]
	ldr r7, _0804F2F8 @ =0x030013E8
	ldr r2, [r7, #0x10]
	ldrh r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08026B90
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0x1a
	bl __modsi3
	cmp r0, #0
	bne _0804F2B8
	ldr r0, [r6, #0x10]
	subs r0, #1
	str r0, [r6, #0x10]
_0804F2B8:
	mov r2, sl
	ldr r0, [r2]
	mov r1, sb
	bl __modsi3
	cmp r0, #0
	bne _0804F2CC
	ldr r0, [r7, #0x10]
	adds r0, #1
	str r0, [r7, #0x10]
_0804F2CC:
	mov r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2E4: .4byte 0x03001400
_0804F2E8: .4byte 0x03001258
_0804F2EC: .4byte 0x03001398
_0804F2F0: .4byte 0x030013A8
_0804F2F4: .4byte 0x030013D0
_0804F2F8: .4byte 0x030013E8
_0804F2FC: .4byte 0x0300139A
_0804F300: .4byte 0x030013AA
_0804F304: .4byte 0x0300139C
_0804F308: .4byte 0x030013AC
_0804F30C: .4byte 0x0300139E
_0804F310: .4byte 0x030013AE
_0804F314: .4byte 0x030013A0
_0804F318: .4byte 0x030013B0

	thumb_func_start sub_0804F31C
sub_0804F31C: @ 0x0804F31C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _0804F354 @ =0x030013A8
	ldr r0, _0804F358 @ =0x03001398
	movs r5, #3
_0804F32E:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, #2
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bge _0804F32E
	cmp r3, #0
	beq _0804F342
	b _0804F758
_0804F342:
	ldr r0, _0804F35C @ =0x03001400
	str r3, [r0]
	movs r0, #0x78
	bl sub_0800F348
	movs r0, #0xa4
	bl PlaySE
	b _0804F364
	.align 2, 0
_0804F354: .4byte 0x030013A8
_0804F358: .4byte 0x03001398
_0804F35C: .4byte 0x03001400
_0804F360:
	bl WaitFrame
_0804F364:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F360
	movs r5, #0x77
_0804F36E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F36E
	movs r0, #3
	movs r1, #0x10
	bl sub_0804EBFC
	movs r0, #3
	movs r1, #0x10
	bl sub_0804ED04
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0
_0804F392:
	cmp r4, #0x3f
	bgt _0804F3A2
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3A2:
	cmp r4, #0x74
	ble _0804F3B4
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3B4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F3D2
	b _0804F910
_0804F3D2:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F392
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #9
_0804F3EA:
	cmp r4, #0x3f
	bgt _0804F3FA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F3FA:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F410
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F410:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F42E
	b _0804F910
_0804F42E:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F3EA
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0x80
	lsls r7, r7, #0xa
_0804F446:
	cmp r4, #0x3f
	bgt _0804F456
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F456:
	cmp r4, #0xec
	ble _0804F468
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F468:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F486
	b _0804F910
_0804F486:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F446
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xa
_0804F49E:
	cmp r4, #0x3f
	bgt _0804F4AE
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4AE:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F4C4
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F4C4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4E2
	b _0804F910
_0804F4E2:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F49E
	movs r4, #0
_0804F4EE:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F4FC
	b _0804F910
_0804F4FC:
	bl WaitFrame
	adds r4, #1

	non_word_aligned_thumb_func_start sub_0804F502
sub_0804F502: @ 0x0804F502
	cmp r4, #0x3c
	blt _0804F4EE
	movs r7, #0xb4
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r6, #0x80
	lsls r6, r6, #0xb
_0804F512:
	cmp r4, #0x3f
	bgt _0804F522
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F522:
	cmp r4, #0x74
	ble _0804F534
	subs r1, r7, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F534:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r6, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F552
	b _0804F910
_0804F552:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0xb4
	blt _0804F512
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xa0
	lsls r7, r7, #0xb
_0804F56A:
	cmp r4, #0x3f
	bgt _0804F57A
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F57A:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F590
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F590:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F5AE
	b _0804F910
_0804F5AE:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F56A
	movs r6, #0xb4
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xc0
	lsls r7, r7, #0xb
_0804F5C6:
	cmp r4, #0x3f
	bgt _0804F5D6
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5D6:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F5EC
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F5EC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F60A
	b _0804F910
_0804F60A:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F5C6
	movs r6, #0x96
	lsls r6, r6, #1
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0x15
	movs r7, #0xe0
	lsls r7, r7, #0xb
_0804F622:
	cmp r4, #0x3f
	bgt _0804F632
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F632:
	cmp r4, #0xec
	ble _0804F644
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r5, #0x18
	bl sub_0804E5A4
_0804F644:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F690 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F662
	b _0804F910
_0804F662:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F622
	movs r4, #0
_0804F66E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804F67C
	b _0804F910
_0804F67C:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x5a
	blt _0804F66E
	movs r0, #0x78
	bl sub_0800F3DC
	b _0804F69C
	.align 2, 0
_0804F690: .4byte 0x03001258
_0804F694:
	bl sub_0804F0E8
	bl WaitFrame
_0804F69C:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F694
	movs r5, #0x3b
_0804F6A6:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6A6
	movs r0, #1
	bl sub_0804ED80
	movs r0, #0x78
	bl sub_0800F348
	b _0804F6C2
_0804F6BE:
	bl WaitFrame
_0804F6C2:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F6BE
	movs r5, #0x13
_0804F6CC:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F6CC
	movs r4, #0xa5
	lsls r4, r4, #2
	movs r5, #0
_0804F6DC:
	cmp r5, #0x3f
	bgt _0804F6EC
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	movs r2, #0x10
	bl sub_0804E5A4
_0804F6EC:
	bl sub_080076A8
	cmp r0, #0

	non_word_aligned_thumb_func_start sub_0804F6F2
sub_0804F6F2: @ 0x0804F6F2
	beq _0804F70C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804F708 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #8
	bl sub_08026B90
	b _0804F71A
	.align 2, 0
_0804F708: .4byte 0x03001258
_0804F70C:
	str r0, [sp]
	ldr r0, _0804F73C @ =0x03001258
	movs r1, #0x78
	movs r2, #0x93
	movs r3, #9
	bl sub_08026B90
_0804F71A:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r5, r0
	bne _0804F72E
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
_0804F72E:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	blt _0804F6DC
	b _0804F744
	.align 2, 0
_0804F73C: .4byte 0x03001258
_0804F740:
	bl WaitFrame
_0804F744:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F740
	movs r5, #0xb3
_0804F74E:
	bl WaitFrame
	subs r5, #1
	cmp r5, #0
	bge _0804F74E
_0804F758:
	movs r0, #0xa5
	bl PlaySE
	movs r0, #2
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
	movs r6, #0x96
	lsls r6, r6, #1
	ldr r4, _0804F8EC @ =0x00000167
_0804F772:
	cmp r5, r6
	bne _0804F77C
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F77C:
	bl WaitFrame
	adds r5, #1
	cmp r5, r4
	ble _0804F772
	movs r5, #0
	movs r7, #0
	add r0, sp, #4
	mov r8, r0
	ldr r6, _0804F8F0 @ =0x03001398
	ldr r4, _0804F8F4 @ =0x030013A8
_0804F792:
	strh r7, [r6]
	strh r7, [r4]
	bl sub_08016F98
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	adds r6, #2
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _0804F792
	movs r0, #0x1e
	bl sub_0804ED80
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F7BC:
	ldr r0, _0804F8F0 @ =0x03001398
	ldrh r0, [r0]
	str r0, [sp]
	ldr r0, _0804F8F8 @ =0x03001290
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_08026B90
	ldr r4, [sp, #4]
	adds r0, r4, #0
	bl sub_0800ED80
	ldr r1, _0804F8FC @ =0x03003CA0
	ldrh r1, [r1]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x37
	bl sub_0800EB30
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r5, r0
	bne _0804F7FC
	movs r0, #0x3c
	bl sub_0800F3DC
_0804F7FC:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F7BC
	movs r0, #3
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F81E:
	movs r0, #0x94
	.global _0804F820
_0804F820:
	lsls r0, r0, #1
	cmp r5, r0
	ble _0804F838
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r1, r1, r5
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F838:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F8EC @ =0x00000167
	cmp r5, r0
	ble _0804F81E
	movs r5, #4
	movs r6, #0xb4
	lsls r6, r6, #1
_0804F84A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r4, #0
_0804F864:
	cmp r4, #0x3f
	bgt _0804F874
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F874:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r4, r0
	ble _0804F88A
	subs r1, r6, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F88A:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804F910
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804F864
	adds r5, #1
	cmp r5, #0x1c
	ble _0804F84A
	movs r0, #0x1d
	bl sub_0804ED80
	movs r0, #1
	movs r1, #0
	bl sub_0804EBFC
	movs r0, #1
	movs r1, #0
	bl sub_0804ED04
	movs r0, #0x3c
	bl sub_0800F348
	movs r5, #0
_0804F8C0:
	cmp r5, #0x3f
	bgt _0804F8D0
	lsls r1, r5, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804F8D0:
	bl WaitFrame
	adds r5, #1
	ldr r0, _0804F900 @ =0x00000257
	cmp r5, r0
	ble _0804F8C0
	movs r0, #0xf0
	bl sub_0800F3DC
	movs r0, #8
	bl FadeOutAllMusicPlayers
	b _0804F908
	.align 2, 0
_0804F8EC: .4byte 0x00000167
_0804F8F0: .4byte 0x03001398
_0804F8F4: .4byte 0x030013A8
_0804F8F8: .4byte 0x03001290
_0804F8FC: .4byte 0x03003CA0
_0804F900: .4byte 0x00000257
_0804F904:
	bl WaitFrame
_0804F908:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F904
_0804F910:
	movs r0, #2
	bl FadeOutAllMusicPlayers
	movs r0, #0x1e
	bl sub_0800F3DC
	b _0804F922
_0804F91E:
	bl WaitFrame
_0804F922:
	bl sub_0800F298
	cmp r0, #0
	beq _0804F91E
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804F944
sub_0804F944: @ 0x0804F944
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r4, _0804F984 @ =0x030013E8
	movs r2, #0
	ldr r7, _0804F988 @ =0x030013B8
	ldr r1, _0804F98C @ =0x030013A8
	ldr r0, _0804F990 @ =0x03001398
	movs r5, #0xf0
	ldr r6, _0804F994 @ =0x030013D0
_0804F956:
	strh r2, [r0]
	strh r2, [r1]
	stm r7!, {r2}
	stm r6!, {r5}
	adds r1, #2
	adds r0, #2
	adds r3, #1
	cmp r3, #5
	ble _0804F956
	movs r0, #0x1e
	str r0, [r4]
	movs r0, #0x24
	str r0, [r4, #4]
	movs r0, #0x28
	str r0, [r4, #8]
	movs r0, #0x25
	str r0, [r4, #0xc]
	movs r0, #0x22
	str r0, [r4, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F984: .4byte 0x030013E8
_0804F988: .4byte 0x030013B8
_0804F98C: .4byte 0x030013A8
_0804F990: .4byte 0x03001398
_0804F994: .4byte 0x030013D0
_0804F998:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0804F99C
sub_0804F99C: @ 0x0804F99C
	movs r0, #0
	bx lr

	thumb_func_start sub_0804F9A0
sub_0804F9A0: @ 0x0804F9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	movs r4, #0
	cmp r4, r5
	bge _0804FA08
	lsls r6, r3, #0x18
	lsls r2, r2, #0x10
	mov r8, r2
_0804F9BA:
	cmp r4, #0x3f
	bgt _0804F9CA
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9CA:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804F9E0
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #3
	lsrs r2, r6, #0x18
	bl sub_0804E5A4
_0804F9E0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0804FA20 @ =0x03001258
	movs r1, #0x78
	movs r2, #0x94
	mov r7, r8
	lsrs r3, r7, #0x10
	bl sub_08026B90
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA1A
	bl WaitFrame
	adds r4, #1
	cmp r4, r5

	non_word_aligned_thumb_func_start sub_0804FA06
sub_0804FA06: @ 0x0804FA06
	blt _0804F9BA
_0804FA08:
	movs r4, #0
	cmp r4, sb
	bge _0804FA2E
_0804FA0E:
	bl sub_0804F0E8
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA24
_0804FA1A:
	movs r0, #0
	b _0804FA30
	.align 2, 0
_0804FA20: .4byte 0x03001258
_0804FA24:
	bl WaitFrame
	adds r4, #1
	cmp r4, sb
	blt _0804FA0E
_0804FA2E:
	movs r0, #1
_0804FA30:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804FA40
sub_0804FA40: @ 0x0804FA40
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	cmp r4, r5
	bge _0804FA84
_0804FA4C:
	cmp r4, #0x3f
	bgt _0804FA5C
	lsls r1, r4, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA5C:
	adds r0, r5, #0
	subs r0, #0x40
	cmp r4, r0
	ble _0804FA72
	subs r1, r5, r4
	lsls r1, r1, #0x17
	asrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_0804E5A4
_0804FA72:
	bl sub_0804F99C
	cmp r0, #0
	bne _0804FA92
	bl WaitFrame
	adds r4, #1
	cmp r4, r5
	blt _0804FA4C
_0804FA84:
	movs r4, #0
	cmp r4, r6
	bge _0804FAA0
_0804FA8A:
	bl sub_0804F99C
	cmp r0, #0
	beq _0804FA96
_0804FA92:
	movs r0, #0
	b _0804FAA2
_0804FA96:
	bl WaitFrame
	adds r4, #1
	cmp r4, r6
	blt _0804FA8A
_0804FAA0:
	movs r0, #1
_0804FAA2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start umul3232H32
umul3232H32: @ 0x0804FAA8
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2
