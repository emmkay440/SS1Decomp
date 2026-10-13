	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start EnemyThread
EnemyThread: @ 0x0800CBD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x104
	adds r7, r0, #0
	ldrh r0, [r7, #0x38]
	ldrh r1, [r7, #0x28]
	cmp r0, r1
	bhi _0800CBF4
	movs r0, #8
	strh r0, [r7, #0xa]
	b _0800CC58
_0800CBF4:
	add r5, sp, #0x14
	ldr r1, _0800CC34 @ =0x00100005
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r5, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_08026ADC
	add r4, sp, #0x48
	ldr r1, _0800CC38 @ =0x00100004
	adds r0, r4, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_08026ADC
	ldr r1, [r5, #0xc]
	adds r1, #0xa0
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	mov r0, sp
	adds r0, #0x35
	movs r1, #8
	strb r1, [r0]
	adds r0, #0x34
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x64
	str r2, [sp, #0xb0]
	b _0800CC78
	.align 2, 0
_0800CC34: .4byte 0x00100005
_0800CC38: .4byte 0x00100004
_0800CC3C:
	movs r0, #8
	strh r0, [r7, #0xa]
	bl sub_080074CC
	cmp r0, #0
	bne _0800CC58
	ldr r0, _0800CC6C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800CC74
_0800CC58:
	ldr r2, _0800CC70 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl _0800E2D2
	.align 2, 0
_0800CC6C: .4byte gUnknown_030063D8
_0800CC70: .4byte gActiveEnemyMask
_0800CC74:
	bl WaitFrame
_0800CC78:
	ldr r3, [sp, #0xb0]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	ldr r1, _0800CD38 @ =0x0000FFFF
	cmp r0, r1
	beq _0800CC3C
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r4, #0x4c
	adds r4, r4, r7
	mov r8, r4
	strh r0, [r4]
	adds r5, r7, #0
	adds r5, #0x4a
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x48
	strh r0, [r4]
	str r1, [sp, #0x94]
	ldr r6, [sp, #0xb0]
	ldr r0, [r6, #0x28]
	bl GetDataRecord
	str r0, [sp, #0xac]
	ldr r0, [r6, #0x28]
	ldr r1, [sp, #0x94]
	ands r0, r1
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xa8]
	ldr r0, [r6, #0x28]
	ldr r2, [sp, #0x94]
	ands r0, r2
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0xb4]
	movs r3, #0x1e
	str r3, [sp, #0xb8]
	movs r6, #0
	str r6, [sp, #0xbc]
	movs r0, #1
	str r0, [sp, #0xc4]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0xc8]
	ldr r2, _0800CD3C @ =0x0000FFC4
	str r2, [sp, #0x9c]
	movs r3, #0
	str r3, [sp, #0xc0]
	ldr r2, [sp, #0xb0]
	adds r2, #0x22
	ldrb r0, [r2]
	strh r0, [r7, #0x22]
	strh r6, [r7, #0x24]
	add r0, sp, #0xbc
	ldrh r0, [r0]
	strh r0, [r7, #6]
	add r1, sp, #0xbc
	ldrh r1, [r1]
	strh r1, [r7, #4]
	ldr r3, [r7, #0x10]
	str r3, [sp, #0x88]
	ldr r6, [r7, #0x14]
	str r6, [sp, #0x8c]
	mov r1, sp
	adds r1, #0x82
	add r0, sp, #0xbc
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0x80
	add r3, sp, #0xbc
	ldrh r3, [r3]
	strh r3, [r0]
	add r6, sp, #0x9c
	ldrh r6, [r6]
	strh r6, [r7, #0x3c]
	movs r3, #1
	str r3, [sp, #0xcc]
	mov r6, r8
	str r6, [sp, #0xf4]
	str r5, [sp, #0xf0]
	str r4, [sp, #0xec]
	str r2, [sp, #0xe0]
	bl _0800E0F6
	.align 2, 0
_0800CD38: .4byte 0x0000FFFF
_0800CD3C: .4byte 0x0000FFC4

	thumb_func_start sub_0800CD40
sub_0800CD40: @ 0x0800CD40
	movs r0, #0
	str r0, [sp, #0x90]
	movs r1, #0
	str r1, [sp, #0xd8]
	adds r2, r7, #0
	adds r2, #0x40
	str r2, [sp, #0xe4]
	adds r3, r7, #0
	adds r3, #0x42
	str r3, [sp, #0xe8]
	ldr r6, [sp, #0xc0]
	adds r6, #1
	adds r4, r7, #0
	adds r4, #0x4e
	str r4, [sp, #0xf8]
	ldr r5, [sp, #0xa4]
	adds r5, #5
	str r5, [sp, #0xdc]
	mov r0, sp
	adds r0, #0x7c
	str r0, [sp, #0xfc]
	mov r1, sp
	adds r1, #0x7e
	str r1, [sp, #0x100]
	adds r3, r2, #0
	movs r4, #1
	movs r5, #0x80
	lsls r5, r5, #8
_0800CD78:
	ldrh r0, [r3]
	ldr r2, [sp, #0xd8]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800CDB2
	lsls r1, r2, #1
	ldr r0, [sp, #0xe8]
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq _0800CDA6
	adds r1, r4, #0
	lsls r1, r2
	ldrh r0, [r3]
	bics r0, r1
	strh r0, [r3]
	b _0800CDB2
_0800CDA6:
	cmp r2, #0
	beq _0800CDB2
	cmp r2, #1
	bne _0800CDB2
	movs r1, #1
	str r1, [sp, #0x90]
_0800CDB2:
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0800CD78
	ldrh r0, [r7, #0x3e]
	cmp r0, #0
	beq _0800CE2C
	subs r0, #1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #0x3e]
	cmp r0, #3
	beq _0800CE0C
	cmp r0, #3
	bgt _0800CDE0
	cmp r0, #0
	beq _0800CDEA
	b _0800CE28
_0800CDE0:
	cmp r0, #4
	beq _0800CE16
	cmp r0, #5
	beq _0800CE20
	b _0800CE28
_0800CDEA:
	adds r0, r7, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	ldr r4, [sp, #0xe8]
	strh r0, [r4]
	movs r0, #1
	ldrh r5, [r7, #0x3e]
	lsls r0, r5
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	b _0800CE28
_0800CE0C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018290
	b _0800CE28
_0800CE16:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018314
	b _0800CE28
_0800CE20:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	bl sub_08018398
_0800CE28:
	movs r0, #0
	strh r0, [r7, #0x3e]
_0800CE2C:
	bl sub_08007544
	cmp r0, #0
	bne _0800CE3A
	adds r0, r7, #0
	bl sub_08017A44
_0800CE3A:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	bl sub_08001F98
	cmp r0, #0
	beq _0800CE72
	bl sub_08001F64
	cmp r0, #0
	bne _0800CE72
	ldrh r0, [r7, #0x3c]
	adds r0, #1
	strh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0800CE72
	ldrh r0, [r7, #0xa]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800CE72
	ldrh r0, [r7, #0x38]
	strh r0, [r7, #0x28]
	movs r0, #7
	strh r0, [r7, #0xa]
_0800CE72:
	bl sub_080271D0
	adds r1, r0, #0
	cmp r1, #0
	beq _0800CE80
	bl _0800D73A
_0800CE80:
	ldrh r0, [r7, #0xa]
	adds r2, r0, #0
	cmp r2, #1
	bne _0800CED8
	ldrh r3, [r7, #0x22]
	cmp r3, #5
	beq _0800CEDA
	ldrh r0, [r7, #0x20]
	adds r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _0800CEDA
	ldr r0, [r7, #0x10]
	ldr r4, [sp, #0x88]
	subs r0, r4, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800CEAA
	rsbs r0, r0, #0
_0800CEAA:
	cmp r0, #3
	bgt _0800CECA
	ldr r0, [r7, #0x14]
	ldr r5, [sp, #0x8c]
	subs r0, r5, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _0800CEBC
	rsbs r0, r0, #0
_0800CEBC:
	cmp r0, #3
	bgt _0800CECA
	cmp r3, #1
	beq _0800CECA
	movs r0, #5
	strh r0, [r7, #0x22]
	str r1, [r7, #0x54]
_0800CECA:
	movs r0, #0
	strh r0, [r7, #0x20]
	ldr r6, [r7, #0x10]
	str r6, [sp, #0x88]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x8c]
	b _0800CEDA
_0800CED8:
	strh r1, [r7, #0x20]
_0800CEDA:
	ldrh r0, [r7, #0x22]
	cmp r0, #5
	bls _0800CEE4
	bl _0800D740
_0800CEE4:
	lsls r0, r0, #2
	ldr r1, _0800CEF0 @ =_0800CEF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CEF0: .4byte _0800CEF4
_0800CEF4: @ jump table
	.4byte _0800CF0C @ case 0
	.4byte _0800D04C @ case 1
	.4byte _0800D174 @ case 2
	.4byte _0800D2A6 @ case 3
	.4byte _0800D418 @ case 4
	.4byte _0800D55C @ case 5
_0800CF0C:
	ldr r1, [r7, #0x54]
	mov r8, r1
	cmp r1, #1
	beq _0800CF54
	cmp r1, #1
	blo _0800CF20
	cmp r1, #2
	beq _0800CFF4
	bl _0800D740
_0800CF20:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800CF2C
	bl _0800D740
_0800CF2C:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800CF40
	b _0800D478
_0800CF40:
	ldr r2, [sp, #0xcc]
	cmp r2, #0
	beq _0800CF50
	movs r0, #2
	str r0, [r7, #0x54]
	movs r3, #0
	str r3, [sp, #0xcc]
	b _0800D478
_0800CF50:
	movs r0, #1
	b _0800D476
_0800CF54:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800CF68
	b _0800D478
_0800CF68:
	ldr r1, _0800CFEC @ =gPlayers
	movs r0, #0xd4
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne _0800CF84
	b _0800D478
_0800CF84:
	bl sub_08007604
	adds r6, r0, #0
	cmp r6, #0
	beq _0800CF90
	b _0800D478
_0800CF90:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r5, _0800CFF0 @ =0x080FB4C0
	adds r4, r7, #0
	adds r4, #0x84
	ldrh r4, [r4]
	lsls r4, r4, #2
	adds r5, #2
	adds r4, r4, r5
	ldrh r4, [r4]
	adds r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CFC6
	b _0800D128
_0800CFC6:
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800CFCE
	b _0800D740
_0800CFCE:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r1, [sp, #0xc0]
	cmp r0, r1
	blo _0800CFDA
	b _0800D128
_0800CFDA:
	movs r2, #0
	str r2, [sp, #0xc0]
	mov r3, r8
	strh r3, [r7, #6]
	movs r0, #2
	str r0, [r7, #0x54]
	str r2, [r7, #0x5c]
	b _0800D740
	.align 2, 0
_0800CFEC: .4byte gPlayers
_0800CFF0: .4byte 0x080FB4C0
_0800CFF4:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]

_0800D006:
	ldr r1, [r7, #0x14]
	ldr r3, _0800D048 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D036
	b _0800D740
_0800D036:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #2
	bhi _0800D044
	b _0800D740
_0800D044:
	str r4, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D048: .4byte gPlayers
_0800D04C:
	movs r6, #0
	strh r6, [r7, #6]
	strh r6, [r7, #4]
	ldr r5, [r7, #0x54]
	cmp r5, #1
	beq _0800D094
	cmp r5, #1
	blo _0800D062
	cmp r5, #2
	beq _0800D12C
	b _0800D740
_0800D062:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D08C
	ldr r5, [sp, #0xcc]
	cmp r5, #0
	beq _0800D088
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0x38
	str r0, [r7, #0x5c]
	movs r6, #0
	str r6, [sp, #0xcc]
	b _0800D478
_0800D088:
	movs r0, #1
	b _0800D476
_0800D08C:
	movs r0, #2
	str r0, [r7, #0x54]
	str r6, [r7, #0x5c]
	b _0800D478
_0800D094:
	adds r0, r7, #0
	movs r1, #0xc8
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800D0A8
	b _0800D478
_0800D0A8:
	ldr r1, _0800D118 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne _0800D0C4
	b _0800D478
_0800D0C4:
	bl sub_08007604
	cmp r0, #0
	beq _0800D0CE
	b _0800D478
_0800D0CE:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r4]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r4, #0xb4
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D128
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	beq _0800D128
	ldr r3, [sp, #0xb0]
	ldrh r0, [r3, #8]
	ldr r4, [sp, #0xc0]
	cmp r0, r4
	bhs _0800D128
	movs r6, #0
	str r6, [sp, #0xc0]
	movs r1, #2
	str r1, [r7, #0x54]
	movs r0, #0x3a
	str r0, [r7, #0x5c]
	ldrh r0, [r3, #0x24]
	cmp r0, #0
	blt _0800D124
	cmp r0, #1
	bgt _0800D11C
	strh r5, [r7, #6]
	b _0800D740
	.align 2, 0
_0800D118: .4byte gPlayers
_0800D11C:
	cmp r0, #0x25
	bgt _0800D124
	strh r1, [r7, #6]
	b _0800D740
_0800D124:
	movs r0, #1
	b _0800D73E
_0800D128:
	strh r6, [r7, #6]
	b _0800D740
_0800D12C:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D170 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r6, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r6, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D16C
	b _0800D740
_0800D16C:
	b _0800D540
	.align 2, 0
_0800D170: .4byte gPlayers
_0800D174:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	ldr r1, [r7, #0x54]
	cmp r1, #1
	beq _0800D1D2
	cmp r1, #1
	blo _0800D18E
	cmp r1, #2
	beq _0800D1F4
	cmp r1, #3
	beq _0800D220
	b _0800D740
_0800D18E:
	str r0, [r7, #0x5c]
	adds r0, r7, #0
	movs r1, #0x28
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D1B8
	ldr r5, [sp, #0xcc]
	cmp r5, #0
	beq _0800D1B2
	movs r0, #3
	str r0, [r7, #0x54]
	movs r6, #0
	str r6, [sp, #0xcc]
	b _0800D740
_0800D1B2:
	movs r0, #1
	str r0, [r7, #0x54]
	b _0800D740
_0800D1B8:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bls _0800D1CC
	b _0800D3AE
_0800D1CC:
	movs r0, #2
	str r0, [r7, #0x54]
	b _0800D740
_0800D1D2:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D1DC
	b _0800D740
_0800D1DC:
	cmp r0, #6
	bne _0800D1E2
	b _0800D740
_0800D1E2:
	ldr r2, [sp, #0xb0]
	ldrh r0, [r2, #8]
	ldr r3, [sp, #0xc0]
	cmp r0, r3
	blo _0800D1EE
	b _0800D740
_0800D1EE:
	movs r4, #0
	str r4, [sp, #0xc0]
	b _0800D214
_0800D1F4:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D1FE
	b _0800D740
_0800D1FE:
	cmp r0, #6
	bne _0800D204
	b _0800D740
_0800D204:
	ldr r5, [sp, #0xb0]

_0800D206:
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D210
	b _0800D740
_0800D210:
	movs r0, #0
	str r0, [sp, #0xc0]
_0800D214:
	strh r1, [r7, #6]
	movs r0, #3
	str r0, [r7, #0x54]
	movs r0, #0x73
	str r0, [r7, #0x5c]
	b _0800D740
_0800D220:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D22A
	b _0800D740
_0800D22A:
	cmp r0, #6
	bne _0800D230
	b _0800D740
_0800D230:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D290
	ldr r1, _0800D288 @ =gPlayers
	movs r0, #0xd4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, #0xd0
	adds r5, r0, r1
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _0800D290
	bl sub_08007604
	adds r4, r0, #0
	cmp r4, #0
	bne _0800D290
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, [r5]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D28C
	str r4, [r7, #0x54]
	b _0800D296
	.align 2, 0
_0800D288: .4byte gPlayers
_0800D28C:
	strh r4, [r7, #6]
	b _0800D296
_0800D290:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
_0800D296:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x78
	bhi _0800D2A4
	b _0800D740
_0800D2A4:
	b _0800D4DA
_0800D2A6:
	movs r6, #0
	movs r5, #0
	strh r5, [r7, #6]
	strh r5, [r7, #4]
	ldr r4, [r7, #0x54]
	cmp r4, #1
	beq _0800D2DE
	cmp r4, #1
	blo _0800D2C4
	cmp r4, #2
	beq _0800D37C
	cmp r4, #3
	bne _0800D2C2
	b _0800D3BC
_0800D2C2:
	b _0800D740
_0800D2C4:
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D2DA
	movs r0, #1
	b _0800D3B6
_0800D2DA:
	movs r0, #2
	b _0800D3B6
_0800D2DE:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D31C @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D324
	ldr r0, _0800D320 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0800D332
	.align 2, 0
_0800D31C: .4byte gPlayers
_0800D320: .4byte 0x0000FFBF
_0800D324:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D334
	ldr r0, _0800D34C @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_0800D332:
	strh r0, [r7, #4]
_0800D334:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D354
	ldr r0, _0800D350 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0800D362
	.align 2, 0
_0800D34C: .4byte 0x0000FF7F
_0800D350: .4byte 0x0000FFDF
_0800D354:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D364
	ldr r0, _0800D378 @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_0800D362:
	strh r0, [r7, #4]
_0800D364:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D372
	b _0800D740
_0800D372:
	movs r0, #3
	b _0800D4A6
	.align 2, 0
_0800D378: .4byte 0x0000FFEF
_0800D37C:
	adds r0, r7, #0
	movs r1, #0x78
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D3B4
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D396
	b _0800D740
_0800D396:
	cmp r0, #6
	bne _0800D39C
	b _0800D740
_0800D39C:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D3A8
	b _0800D740
_0800D3A8:
	movs r0, #0
	str r0, [sp, #0xc0]
	strh r4, [r7, #6]
_0800D3AE:
	movs r0, #3
	str r0, [r7, #0x54]
	b _0800D740
_0800D3B4:
	movs r0, #3
_0800D3B6:
	str r0, [r7, #0x54]
	str r5, [r7, #0x5c]
	b _0800D740
_0800D3BC:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D414 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r5, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D3FC
	b _0800D740
_0800D3FC:
	cmp r0, #6
	bne _0800D402
	b _0800D740
_0800D402:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D410
	b _0800D740
_0800D410:
	str r5, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D414: .4byte gPlayers
_0800D418:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	ldr r0, [r7, #0x54]
	cmp r0, #4
	bls _0800D426
	b _0800D740
_0800D426:
	lsls r0, r0, #2
	ldr r1, _0800D430 @ =_0800D434
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D430: .4byte _0800D434
_0800D434: @ jump table
	.4byte _0800D448 @ case 0
	.4byte _0800D480 @ case 1
	.4byte _0800D4AE @ case 2
	.4byte _0800D4CC @ case 3
	.4byte _0800D4E0 @ case 4
_0800D448:
	ldr r1, _0800D470 @ =0x080FB4C0
	adds r0, r7, #0
	adds r0, #0x84
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #8
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D474
	movs r0, #1
	b _0800D476
	.align 2, 0
_0800D470: .4byte 0x080FB4C0
_0800D474:
	movs r0, #2
_0800D476:
	str r0, [r7, #0x54]
_0800D478:
	movs r0, #0
	strh r0, [r7, #6]
	strh r0, [r7, #4]
	b _0800D740
_0800D480:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0800D48A
	b _0800D740
_0800D48A:
	cmp r0, #6
	bne _0800D490
	b _0800D740
_0800D490:
	ldr r5, [sp, #0xb0]
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0xc0]
	cmp r0, r6
	blo _0800D49C
	b _0800D740
_0800D49C:
	movs r0, #0
	str r0, [sp, #0xc0]
	movs r0, #1
	strh r0, [r7, #6]
	movs r0, #4
_0800D4A6:
	str r0, [r7, #0x54]
	movs r0, #0x37
	str r0, [r7, #0x5c]
	b _0800D740
_0800D4AE:
	ldr r0, [r7, #0x58]
	cmp r0, #0
	beq _0800D4C0
	movs r1, #0
	str r1, [r7, #0x5c]
	movs r0, #3
	str r0, [r7, #0x54]
	str r1, [r7, #0x58]
	b _0800D740
_0800D4C0:
	str r0, [r7, #0x5c]
	movs r0, #4
	str r0, [r7, #0x54]
	movs r0, #1
	str r0, [r7, #0x58]
	b _0800D740
_0800D4CC:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D4DA
	b _0800D740
_0800D4DA:
	movs r0, #0
	str r0, [r7, #0x54]
	b _0800D740
_0800D4E0:
	movs r6, #0
	strh r6, [r7, #6]
	adds r0, r7, #0
	movs r1, #0xf0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #3
	bhi _0800D532
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D554 @ =gPlayers
	movs r2, #0xd4
	mov r4, sl
	muls r4, r2, r4
	adds r2, r4, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r5, _0800D558 @ =0x080FB4C0
	adds r4, r7, #0
	adds r4, #0x84
	ldrh r4, [r4]
	lsls r4, r4, #2
	adds r5, #2
	adds r4, r4, r5
	ldrh r4, [r4]
	adds r4, #6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
_0800D532:
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0800D53A
	b _0800D740
_0800D53A:
	cmp r0, #6
	bne _0800D540
	b _0800D740
_0800D540:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x3c
	bhi _0800D54E
	b _0800D740
_0800D54E:
	str r6, [r7, #0x54]
	b _0800D740
	.align 2, 0
_0800D554: .4byte gPlayers
_0800D558: .4byte 0x080FB4C0
_0800D55C:
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #6]
	strh r4, [r7, #4]
	ldr r0, [r7, #0x54]
	cmp r0, #1
	beq _0800D57E
	cmp r0, #1
	blo _0800D574
	cmp r0, #2
	beq _0800D620
	b _0800D740
_0800D574:
	str r4, [r7, #0x5c]
	movs r0, #1
	str r0, [r7, #0x54]
	str r4, [r7, #0x58]
	b _0800D740
_0800D57E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D5BC @ =gPlayers
	movs r2, #0xd4
	mov r6, sl
	muls r6, r2, r6
	adds r2, r6, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	adds r1, r0, #0
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	movs r2, #0x40
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D5C4
	ldr r0, _0800D5C0 @ =0x0000FFBF
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	b _0800D5D2
	.align 2, 0
_0800D5BC: .4byte gPlayers
_0800D5C0: .4byte 0x0000FFBF
_0800D5C4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D5D4
	ldr r0, _0800D5EC @ =0x0000FF7F
	ands r0, r1
	orrs r0, r2
_0800D5D2:
	strh r0, [r7, #4]
_0800D5D4:
	ldrh r1, [r7, #4]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D5F4
	ldr r0, _0800D5F0 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0800D602
	.align 2, 0
_0800D5EC: .4byte 0x0000FF7F
_0800D5F0: .4byte 0x0000FFDF
_0800D5F4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D604
	ldr r0, _0800D61C @ =0x0000FFEF
	ands r0, r1
	orrs r0, r2
_0800D602:
	strh r0, [r7, #4]
_0800D604:
	ldr r0, [r7, #0x5c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #0x5c]
	cmp r1, #0x1e
	bhi _0800D612
	b _0800D740
_0800D612:
	movs r0, #2
	str r0, [r7, #0x54]
	movs r0, #0
	str r0, [r7, #0x5c]
	b _0800D740
	.align 2, 0
_0800D61C: .4byte 0x0000FFEF
_0800D620:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0800D674 @ =gPlayers
	movs r2, #0xd4
	mov r5, sl
	muls r5, r2, r5
	adds r2, r5, #0
	adds r3, #0xd0
	adds r2, r2, r3
	ldr r3, [r2]
	ldrh r2, [r3]
	lsrs r2, r2, #4
	ldrh r3, [r3, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r4, [sp]
	bl sub_0800C9EC
	strh r0, [r7, #4]
	ldrh r0, [r7, #0x24]
	cmp r0, #2
	bhi _0800D6B2
	ldrh r0, [r7, #4]
	cmp r0, #0x50
	beq _0800D6AA
	cmp r0, #0x50
	bgt _0800D67E
	cmp r0, #0x20
	beq _0800D69A
	cmp r0, #0x20
	bgt _0800D678
	cmp r0, #0x10
	beq _0800D6A2
	b _0800D708
	.align 2, 0
_0800D674: .4byte gPlayers
_0800D678:
	cmp r0, #0x40
	beq _0800D69E
	b _0800D708
_0800D67E:
	cmp r0, #0x80
	beq _0800D696
	cmp r0, #0x80
	bgt _0800D68C
	cmp r0, #0x60
	beq _0800D704
	b _0800D708
_0800D68C:
	cmp r0, #0x90
	beq _0800D6AE
	cmp r0, #0xa0
	beq _0800D6A6
	b _0800D708
_0800D696:
	movs r0, #0x10
	b _0800D706
_0800D69A:
	movs r0, #0x80
	b _0800D706
_0800D69E:
	movs r0, #0x20
	b _0800D706
_0800D6A2:
	movs r0, #0x40
	b _0800D706
_0800D6A6:
	movs r0, #0x90
	b _0800D706
_0800D6AA:
	movs r0, #0x60
	b _0800D706
_0800D6AE:
	movs r0, #0x50
	b _0800D706
_0800D6B2:
	ldrh r0, [r7, #4]
	cmp r0, #0x50
	beq _0800D700
	cmp r0, #0x50
	bgt _0800D6D0
	cmp r0, #0x20
	beq _0800D6EC
	cmp r0, #0x20
	bgt _0800D6CA
	cmp r0, #0x10
	beq _0800D6F4
	b _0800D708
_0800D6CA:
	cmp r0, #0x40
	beq _0800D6F0
	b _0800D708
_0800D6D0:
	cmp r0, #0x80
	beq _0800D6E8
	cmp r0, #0x80
	bgt _0800D6DE
	cmp r0, #0x60
	beq _0800D6FC
	b _0800D708
_0800D6DE:
	cmp r0, #0x90
	beq _0800D704
	cmp r0, #0xa0
	beq _0800D6F8
	b _0800D708
_0800D6E8:
	movs r0, #0x20
	b _0800D706
_0800D6EC:
	movs r0, #0x40
	b _0800D706
_0800D6F0:
	movs r0, #0x10
	b _0800D706
_0800D6F4:
	movs r0, #0x80
	b _0800D706
_0800D6F8:
	movs r0, #0x60
	b _0800D706
_0800D6FC:
	movs r0, #0x50
	b _0800D706
_0800D700:
	movs r0, #0x90
	b _0800D706
_0800D704:
	movs r0, #0xa0
_0800D706:
	strh r0, [r7, #4]
_0800D708:
	ldr r2, [r7, #0x5c]
	ldrh r0, [r7, #0x24]
	adds r0, #1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r2, #1
	str r2, [r7, #0x5c]
	cmp r0, r1
	bls _0800D740
	ldrh r1, [r7, #0x24]
	adds r1, #1
	movs r2, #0
	movs r0, #3
	ands r1, r0
	strh r1, [r7, #0x24]
	str r2, [r7, #0x54]
	ldr r6, [sp, #0xe0]
	ldrb r0, [r6]
	strh r0, [r7, #0x22]
	str r2, [r7, #0x5c]
	str r2, [r7, #0x60]
	strh r2, [r7, #0x20]
	b _0800D740

_0800D73A:
	movs r0, #0
	strh r0, [r7, #4]
_0800D73E:
	strh r0, [r7, #6]
_0800D740:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0xf
	ldr r2, [sp, #0xe8]
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D76A
	ldr r3, [sp, #0xe4]
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D76A
	strh r2, [r7, #4]
	strh r2, [r7, #6]
_0800D76A:
	ldrh r0, [r7, #0xa]
	cmp r0, #0xa
	bls _0800D772
	b _0800DA14
_0800D772:
	lsls r0, r0, #2
	ldr r1, _0800D77C @ =_0800D780
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D77C: .4byte _0800D780
_0800D780: @ jump table
	.4byte _0800D7AC @ case 0
	.4byte _0800D838 @ case 1
	.4byte _0800D9A8 @ case 2
	.4byte _0800DA14 @ case 3
	.4byte _0800DA14 @ case 4
	.4byte _0800DA14 @ case 5
	.4byte _0800D9C4 @ case 6
	.4byte _0800D9E0 @ case 7
	.4byte _0800DA14 @ case 8
	.4byte _0800DA10 @ case 9
	.4byte _0800DA14 @ case 10
_0800D7AC:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D7BC
	movs r2, #5
	b _0800D7C6
_0800D7BC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D7C6
	movs r2, #1
_0800D7C6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D7E2
	cmp r2, #5
	bne _0800D7D6
	movs r2, #4
	b _0800D7FC
_0800D7D6:
	cmp r2, #1
	bne _0800D7DE
	movs r2, #2
	b _0800D7FC
_0800D7DE:
	movs r2, #3
	b _0800D7FC
_0800D7E2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D7FC
	cmp r2, #5
	bne _0800D7F2
	movs r2, #6
	b _0800D7FC
_0800D7F2:
	cmp r2, #1
	bne _0800D7FA
	movs r2, #8
	b _0800D7FC
_0800D7FA:
	movs r2, #7
_0800D7FC:
	ldrh r3, [r7, #6]
	movs r4, #1
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _0800D818
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r4, [sp, #0xf4]
	strh r1, [r4]
	ldr r5, [sp, #0xf0]
	strh r1, [r5]
	b _0800DA14
_0800D818:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800D82E
	movs r0, #6
	strh r0, [r7, #0xa]
	ldr r6, [sp, #0xf4]
	strh r1, [r6]
	ldr r0, [sp, #0xf0]
	strh r1, [r0]
	b _0800DA14
_0800D82E:
	cmp r2, #0
	bne _0800D834
	b _0800DA14
_0800D834:
	strh r4, [r7, #0xa]
	b _0800DA14
_0800D838:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D848
	movs r2, #5
	b _0800D852
_0800D848:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800D852
	movs r2, #1
_0800D852:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D86E
	cmp r2, #5
	bne _0800D862
	movs r2, #4
	b _0800D888
_0800D862:
	cmp r2, #1
	bne _0800D86A
	movs r2, #2
	b _0800D888
_0800D86A:
	movs r2, #3
	b _0800D888
_0800D86E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D888
	cmp r2, #5
	bne _0800D87E
	movs r2, #6
	b _0800D888
_0800D87E:
	cmp r2, #1
	bne _0800D886
	movs r2, #8
	b _0800D888
_0800D886:
	movs r2, #7
_0800D888:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D8AE
	cmp r2, #0
	beq _0800D89A
	subs r0, r2, #1
	b _0800D89C
_0800D89A:
	ldrh r0, [r7, #8]
_0800D89C:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xf4]
	strh r1, [r2]
	ldr r3, [sp, #0xf0]
	strh r1, [r3]
	b _0800DA14
_0800D8AE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800D8B8
	b _0800DA14
_0800D8B8:
	cmp r2, #0
	bne _0800D8C0
	strh r2, [r7, #0xa]
	b _0800DA14
_0800D8C0:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	str r5, [r7, #0x18]
	ldr r6, [r7, #0x14]
	str r6, [r7, #0x1c]
	ldr r4, _0800D99C @ =0x080FB5D0
	mov r8, r4
	movs r1, #8
	ldrsh r0, [r7, r1]
	lsls r3, r0, #3
	adds r2, r3, r4
	ldr r4, _0800D9A0 @ =0x080FB5AC
	mov sb, r4
	ldr r4, [sp, #0xb0]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	ldr r2, [sp, #0x90]
	asrs r1, r2
	adds r5, r5, r1
	ldr r1, _0800D9A4 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	asrs r1, r2
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0800D912
	b _0800DA14
_0800D912:
	subs r0, r2, #1
	strh r0, [r7, #8]
	ldr r5, [r7, #0x10]
	ldr r6, [r7, #0x14]
	movs r2, #8
	ldrsh r0, [r7, r2]
	lsls r3, r0, #3
	mov r4, r8
	adds r2, r3, r4
	ldr r4, [sp, #0xb0]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r2]
	ldr r4, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	ldr r2, [sp, #0x90]
	asrs r1, r2
	adds r5, r5, r1
	ldr r1, _0800D9A4 @ =0x080FB5D4
	adds r3, r3, r1
	ldr r1, [r3]
	muls r1, r4, r1
	asrs r1, r2
	adds r6, r6, r1
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0800DA14
	subs r0, r2, #1
	strh r0, [r7, #8]
	movs r2, #8
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, r8
	ldr r3, [sp, #0xb0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	ldr r4, [sp, #0x90]
	asrs r1, r4
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r5, #8
	ldrsh r1, [r7, r5]
	lsls r1, r1, #3
	ldr r6, _0800D9A4 @ =0x080FB5D4
	adds r1, r1, r6
	ldrh r0, [r3, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r1]
	ldr r0, [r0]
	muls r1, r0, r1
	asrs r1, r4
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	b _0800DA14
	.align 2, 0
_0800D99C: .4byte 0x080FB5D0
_0800D9A0: .4byte 0x080FB5AC
_0800D9A4: .4byte 0x080FB5D4
_0800D9A8:
	ldr r1, [sp, #0xec]
	ldrh r0, [r1]
	ldr r2, [sp, #0x94]
	cmp r0, r2
	bne _0800DA14
	ldr r3, [sp, #0xf8]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0800DA14
	movs r0, #0
	strh r0, [r7, #0xa]
	movs r4, #0
	str r4, [sp, #0xc0]
	b _0800DA14
_0800D9C4:
	ldr r5, [sp, #0xec]
	ldrh r0, [r5]
	ldr r6, [sp, #0x94]
	cmp r0, r6
	bne _0800DA14
	ldr r1, [sp, #0xf8]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800DA14
	ldr r2, [sp, #0x98]
	ldrh r3, [r7, #0xa]
	cmp r2, r3
	bne _0800DA14
	b _0800DA10
_0800D9E0:
	ldr r4, [sp, #0xec]
	ldrh r0, [r4]
	ldr r5, [sp, #0x94]
	cmp r0, r5
	bne _0800DA14
	ldr r6, [sp, #0xf8]
	ldrh r0, [r6]
	cmp r0, #0
	beq _0800DA14
	ldr r0, [sp, #0x98]
	ldrh r1, [r7, #0xa]
	cmp r0, r1
	bne _0800DA14
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	cmp r0, #0
	beq _0800DA12
	movs r3, #0x1e
	str r3, [sp, #0xb8]
	b _0800DA14
_0800DA10:
	movs r0, #0
_0800DA12:
	strh r0, [r7, #0xa]
_0800DA14:
	bl sub_08007510
	cmp r0, #0
	bne _0800DA3A
	bl sub_08007604
	cmp r0, #0
	bne _0800DA3A
	bl sub_080074F0
	cmp r0, #0
	beq _0800DA34
	adds r0, r7, #0
	bl sub_0800E300
	b _0800DA3A
_0800DA34:
	adds r0, r7, #0
	bl sub_0800E49C
_0800DA3A:
	bl sub_08001F64
	cmp r0, #0
	beq _0800DAA4
	ldrh r0, [r7, #0xa]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0800DA6E
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	bne _0800DA6E
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _0800DA6E
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	cmp r0, #0
	beq _0800DA6E
	movs r5, #0x1e
	str r5, [sp, #0xb8]
_0800DA6E:
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0800DAA4
	ldr r6, [sp, #0xbc]
	cmp r6, #0
	bne _0800DAA4
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	beq _0800DAA4
	ldr r1, [sp, #0x9c]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x1e
	ble _0800DAA4
	adds r0, r7, #0
	bl sub_080273DC
	cmp r0, #0
	beq _0800DAA4
	movs r3, #0
	str r3, [sp, #0x9c]
_0800DAA4:
	ldrh r2, [r7, #0xa]
	cmp r2, #9
	bls _0800DAAC
	b _0800DDA6
_0800DAAC:
	lsls r0, r2, #2
	ldr r1, _0800DAB8 @ =_0800DABC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DAB8: .4byte _0800DABC
_0800DABC: @ jump table
	.4byte _0800DAE4 @ case 0
	.4byte _0800DAFC @ case 1
	.4byte _0800DB14 @ case 2
	.4byte _0800DDA6 @ case 3
	.4byte _0800DDA6 @ case 4
	.4byte _0800DDA6 @ case 5
	.4byte _0800DC16 @ case 6
	.4byte _0800DD2A @ case 7
	.4byte _0800DD5E @ case 8
	.4byte _0800DDA6 @ case 9
_0800DAE4:
	str r2, [sp, #0x98]
	ldr r4, _0800DAF8 @ =0x0000FFFF
	str r4, [sp, #0x94]
	ldrh r0, [r7, #8]
	ldr r5, [sp, #0xec]
	strh r0, [r5]
	movs r6, #1
	str r6, [sp, #0xa0]
	b _0800DDA6
	.align 2, 0
_0800DAF8: .4byte 0x0000FFFF
_0800DAFC:
	str r2, [sp, #0x98]
	ldr r0, _0800DB10 @ =0x0000FFFF
	str r0, [sp, #0x94]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r1, [sp, #0xec]
	strh r0, [r1]
	movs r2, #1
	b _0800DDA4
	.align 2, 0
_0800DB10: .4byte 0x0000FFFF
_0800DB14:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DB28
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	bne _0800DB28
	b _0800DD24
_0800DB28:
	str r2, [sp, #0x98]
	ldrh r2, [r7, #8]
	ldr r0, [sp, #0xec]
	strh r2, [r0]
	ldr r3, [sp, #0xb0]
	ldr r1, [r3, #0x28]
	ldr r0, _0800DB44 @ =0x0010001A
	cmp r1, r0
	bne _0800DB48
	adds r0, r2, #0
	adds r0, #0x20
	ldr r4, [sp, #0xec]
	strh r0, [r4]
	b _0800DB50
	.align 2, 0
_0800DB44: .4byte 0x0010001A
_0800DB48:
	adds r0, r2, #0
	adds r0, #0x18
	ldr r5, [sp, #0xec]
	strh r0, [r5]
_0800DB50:
	ldr r6, [sp, #0xb0]
	ldrh r0, [r6, #0x24]
	cmp r0, #0x25
	bhi _0800DC08
	lsls r0, r0, #2
	ldr r1, _0800DB64 @ =_0800DB68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DB64: .4byte _0800DB68
_0800DB68: @ jump table
	.4byte _0800DC08 @ case 0
	.4byte _0800DC00 @ case 1
	.4byte _0800DC08 @ case 2
	.4byte _0800DC08 @ case 3
	.4byte _0800DC08 @ case 4
	.4byte _0800DC08 @ case 5
	.4byte _0800DC08 @ case 6
	.4byte _0800DC08 @ case 7
	.4byte _0800DC08 @ case 8
	.4byte _0800DC08 @ case 9
	.4byte _0800DC08 @ case 10
	.4byte _0800DC08 @ case 11
	.4byte _0800DC08 @ case 12
	.4byte _0800DC08 @ case 13
	.4byte _0800DC08 @ case 14
	.4byte _0800DC08 @ case 15
	.4byte _0800DC08 @ case 16
	.4byte _0800DC08 @ case 17
	.4byte _0800DC08 @ case 18
	.4byte _0800DC08 @ case 19
	.4byte _0800DC08 @ case 20
	.4byte _0800DC08 @ case 21
	.4byte _0800DC08 @ case 22
	.4byte _0800DC08 @ case 23
	.4byte _0800DC08 @ case 24
	.4byte _0800DC08 @ case 25
	.4byte _0800DC08 @ case 26
	.4byte _0800DC08 @ case 27
	.4byte _0800DC08 @ case 28
	.4byte _0800DC08 @ case 29
	.4byte _0800DC08 @ case 30
	.4byte _0800DC08 @ case 31
	.4byte _0800DC08 @ case 32
	.4byte _0800DC08 @ case 33
	.4byte _0800DC08 @ case 34
	.4byte _0800DC08 @ case 35
	.4byte _0800DC08 @ case 36
	.4byte _0800DC08 @ case 37
_0800DC00:
	ldrh r0, [r7]
	mov r1, sl
	bl sub_0802D98C
_0800DC08:
	ldr r0, [sp, #0xec]
	ldrh r0, [r0]
	str r0, [sp, #0x94]
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	b _0800DD24
_0800DC16:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DC2A
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	bne _0800DC2A
	b _0800DD24
_0800DC2A:
	str r2, [sp, #0x98]
	ldrh r2, [r7, #8]
	ldr r0, [sp, #0xec]
	strh r2, [r0]
	ldr r3, [sp, #0xb0]
	ldr r1, [r3, #0x28]
	ldr r0, _0800DC48 @ =0x0010001F
	cmp r1, r0
	bne _0800DC4C
	adds r0, r2, #0
	adds r0, #0x20
	ldr r4, [sp, #0xec]
	strh r0, [r4]
	b _0800DC54
	.align 2, 0
_0800DC48: .4byte 0x0010001F
_0800DC4C:
	adds r0, r2, #0
	adds r0, #0x18
	ldr r5, [sp, #0xec]
	strh r0, [r5]
_0800DC54:
	ldr r6, [sp, #0xb0]
	ldrh r0, [r6, #0x24]
	subs r0, #2
	cmp r0, #0x23
	bhi _0800DD18
	lsls r0, r0, #2
	ldr r1, _0800DC68 @ =_0800DC6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DC68: .4byte _0800DC6C
_0800DC6C: @ jump table
	.4byte _0800DCFC @ case 0
	.4byte _0800DCFC @ case 1
	.4byte _0800DCFC @ case 2
	.4byte _0800DCFC @ case 3
	.4byte _0800DCFC @ case 4
	.4byte _0800DCFC @ case 5
	.4byte _0800DD02 @ case 6
	.4byte _0800DD02 @ case 7
	.4byte _0800DD02 @ case 8
	.4byte _0800DD02 @ case 9
	.4byte _0800DD02 @ case 10
	.4byte _0800DD02 @ case 11
	.4byte _0800DD0E @ case 12
	.4byte _0800DD0E @ case 13
	.4byte _0800DD0E @ case 14
	.4byte _0800DD0E @ case 15
	.4byte _0800DD0E @ case 16
	.4byte _0800DD0E @ case 17
	.4byte _0800DCFC @ case 18
	.4byte _0800DCFC @ case 19
	.4byte _0800DCFC @ case 20
	.4byte _0800DCFC @ case 21
	.4byte _0800DCFC @ case 22
	.4byte _0800DCFC @ case 23
	.4byte _0800DD02 @ case 24
	.4byte _0800DD02 @ case 25
	.4byte _0800DD02 @ case 26
	.4byte _0800DD02 @ case 27
	.4byte _0800DD02 @ case 28
	.4byte _0800DD02 @ case 29
	.4byte _0800DD0E @ case 30
	.4byte _0800DD0E @ case 31
	.4byte _0800DD0E @ case 32
	.4byte _0800DD0E @ case 33
	.4byte _0800DD0E @ case 34
	.4byte _0800DD0E @ case 35
_0800DCFC:
	ldrh r0, [r7]
	movs r1, #0
	b _0800DD06
_0800DD02:
	ldrh r0, [r7]
	movs r1, #1
_0800DD06:
	mov r2, sl
	bl sub_0802EEA8
	b _0800DD18
_0800DD0E:
	ldrh r0, [r7]
	movs r1, #2
	mov r2, sl
	bl sub_0802EEA8
_0800DD18:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	ldr r0, [sp, #0xec]
	ldrh r0, [r0]
	str r0, [sp, #0x94]
_0800DD24:
	movs r1, #0
	str r1, [sp, #0xa0]
	b _0800DDA6
_0800DD2A:
	ldr r3, [sp, #0xec]
	ldrh r0, [r3]
	ldr r4, [sp, #0x94]
	cmp r0, r4
	bne _0800DD3C
	ldr r5, [sp, #0x98]
	ldrh r6, [r7, #0xa]
	cmp r5, r6
	beq _0800DD58
_0800DD3C:
	str r2, [sp, #0x98]
	movs r0, #0
	ldr r1, [sp, #0xf4]
	strh r0, [r1]
	ldr r2, [sp, #0xf0]
	strh r0, [r2]
	movs r0, #0x10
	ldr r3, [sp, #0xec]
	strh r0, [r3]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	strh r0, [r3]
	ldrh r4, [r3]
	str r4, [sp, #0x94]
_0800DD58:
	movs r5, #0
	str r5, [sp, #0xa0]
	b _0800DDA6
_0800DD5E:
	ldr r6, [sp, #0xb8]
	cmp r6, #0x1e
	bne _0800DD72
	bl sub_08007544
	cmp r0, #0
	bne _0800DD72
	movs r0, #0x3f
	bl PlaySE
_0800DD72:
	ldr r1, [sp, #0xec]
	ldrh r0, [r1]
	ldr r2, [sp, #0x94]
	cmp r0, r2
	bne _0800DD84
	ldr r3, [sp, #0x98]
	ldrh r4, [r7, #0xa]
	cmp r3, r4
	beq _0800DDA2
_0800DD84:
	ldr r5, [sp, #0xb0]
	ldr r1, [r5, #0x28]
	ldr r0, _0800DE68 @ =0x0010001A
	cmp r1, r0
	bne _0800DDA2
	movs r0, #0x18
	ldr r6, [sp, #0xec]
	strh r0, [r6]
	ldrh r0, [r7, #8]
	adds r0, #0x18
	strh r0, [r6]
	ldrh r0, [r7, #0xa]
	str r0, [sp, #0x98]
	ldrh r1, [r6]
	str r1, [sp, #0x94]
_0800DDA2:
	movs r2, #0
_0800DDA4:
	str r2, [sp, #0xa0]
_0800DDA6:
	ldr r0, [r7, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r7, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	add r0, sp, #0x10
	movs r4, #0
	add r3, sp, #0xdc
	ldrb r3, [r3]
	strb r3, [r0]
	add r5, sp, #0xdc
	ldrb r5, [r5]
	strb r5, [r0, #1]
	adds r1, r0, #0
	adds r0, r3, #0
	strb r0, [r1, #2]
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #3]
	ldr r5, [sp, #0xec]
	ldrh r0, [r5]
	ldr r6, [sp, #0xf0]
	ldr r1, [sp, #0xa0]
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, [sp, #0xf4]
	ldr r3, [sp, #0xac]
	bl sub_08004214
	ldr r2, [sp, #0xf8]
	strh r0, [r2]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0xfc]
	ldr r3, [sp, #0x100]
	bl sub_08005FC4
	ldr r3, [sp, #0xbc]
	cmp r3, #0
	beq _0800DE6C
	ldr r0, [sp, #0xb8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xb8]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0800DE5C
	bl sub_08007510
	cmp r0, #0
	bne _0800DE5C
	bl sub_08007544
	cmp r0, #0
	bne _0800DE5C
	bl sub_080075AC
	cmp r0, #0
	bne _0800DE5C
	ldr r4, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r4, sb
	str r4, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0xac]
	str r6, [sp, #8]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xc]
	bl sub_08004344
_0800DE5C:
	ldr r5, [sp, #0xb8]
	cmp r5, #0
	bne _0800DE64
	b _0800E112
_0800DE64:
	b _0800E03A
	.align 2, 0
_0800DE68: .4byte 0x0010001A
_0800DE6C:
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	beq _0800DECE
	ldr r0, [sp, #0xb8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xb8]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0800DEC0
	bl sub_08007510
	cmp r0, #0
	bne _0800DEC0
	bl sub_08007544
	cmp r0, #0
	bne _0800DEC0
	bl sub_080075AC
	cmp r0, #0
	bne _0800DEC0
	ldr r1, [sp, #0xfc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x100]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r5, sb
	str r5, [sp]
	add r6, sp, #0x10
	str r6, [sp, #4]
	ldr r4, [sp, #0xac]
	str r4, [sp, #8]
	ldr r5, [sp, #0xa8]
	str r5, [sp, #0xc]
	bl sub_08004344
_0800DEC0:
	ldr r6, [sp, #0xb8]
	cmp r6, #0
	beq _0800DEC8
	b _0800E03A
_0800DEC8:
	movs r0, #0
	str r0, [sp, #0xc4]
	b _0800E03A
_0800DECE:
	bl sub_08007510
	cmp r0, #0
	beq _0800DED8
	b _0800E03A
_0800DED8:
	bl sub_08007544
	cmp r0, #0
	beq _0800DEE2
	b _0800E03A
_0800DEE2:
	bl sub_080075AC
	cmp r0, #0
	beq _0800DEEC
	b _0800E03A
_0800DEEC:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0xf
	ldr r2, [sp, #0xe8]
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800DF8A
	ldr r3, [sp, #0xe4]
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800DF34
	ldr r4, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5]
	ldrh r3, [r6]
	mov r4, sb
	str r4, [sp]
	add r5, sp, #0x10
	str r5, [sp, #4]
	ldr r6, [sp, #0xac]
	str r6, [sp, #8]
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xc]
	bl sub_08004344
	b _0800DFB2
_0800DF34:
	ldr r5, [sp, #0xb0]
	ldr r1, [r5, #0x28]
	ldr r0, _0800DF60 @ =0x0010002A
	cmp r1, r0
	bne _0800DF64
	ldr r6, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	str r4, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x14]
	str r2, [sp, #0xc]
	movs r2, #6
	b _0800DF82
	.align 2, 0
_0800DF60: .4byte 0x0010002A
_0800DF64:
	ldr r5, [sp, #0xfc]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sb
	str r4, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x14]
	str r2, [sp, #0xc]
	movs r2, #1
_0800DF82:
	movs r3, #0
	bl sub_08004344
	b _0800DFB2
_0800DF8A:
	ldr r5, [sp, #0xfc]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xec]
	ldrh r2, [r4]
	ldr r5, [sp, #0xf0]
	ldrh r3, [r5]
	mov r6, sb
	str r6, [sp]
	add r4, sp, #0x10
	str r4, [sp, #4]
	ldr r5, [sp, #0xac]
	str r5, [sp, #8]
	ldr r6, [sp, #0xa8]
	str r6, [sp, #0xc]
	bl sub_08004344
_0800DFB2:
	movs r0, #0
	str r0, [sp, #0xd8]
	mov r6, sp
	adds r6, #0x82
	add r4, sp, #0x80
	add r5, sp, #0x48
_0800DFBE:
	movs r0, #0
	strh r0, [r6]
	strh r0, [r4]
	ldr r2, [sp, #0xe4]
	ldrh r1, [r2]
	ldr r3, [sp, #0xd8]
	lsls r2, r3, #0x10
	asrs r3, r2, #0x10
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0800E02A
	lsls r0, r3, #1
	ldr r1, [sp, #0xe8]
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800E02A
	cmp r3, #0
	beq _0800E02A
	cmp r3, #1
	bne _0800E02A
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0x16
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_08026C40
	ldr r3, [sp, #0xfc]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x100]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	ldrh r3, [r4]
	mov r2, sb
	str r2, [sp]
	add r2, sp, #0x64
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x48]
	str r2, [sp, #0xc]
	movs r2, #0x16
	bl sub_08004344
_0800E02A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r3, r0, #0x10
	str r3, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0800DFBE
_0800E03A:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0800E054
	ldr r4, [sp, #0xd0]
	ldrh r5, [r7, #0x2a]
	cmp r4, r5
	beq _0800E054
	ldrh r6, [r7, #0x2a]
	str r6, [sp, #0xd0]
	movs r0, #0xa
	str r0, [sp, #0xc8]
	movs r1, #0
	str r1, [sp, #0xd4]
_0800E054:
	ldr r0, [sp, #0xc8]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0800E0BC
	ldr r2, [sp, #0xd0]
	cmp r2, #0
	bne _0800E078
	ldr r3, _0800E074 @ =0x0000FFFF
	str r3, [sp, #0xc8]
	b _0800E0C6
	.align 2, 0
_0800E074: .4byte 0x0000FFFF
_0800E078:
	bl sub_08007510
	cmp r0, #0
	bne _0800E09E
	bl sub_08007544
	cmp r0, #0
	bne _0800E09E
	bl sub_080075AC
	cmp r0, #0
	bne _0800E09E
	ldr r4, [sp, #0xd4]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xd0]
	bl sub_0800EA74
_0800E09E:
	movs r0, #2
	ldr r5, [sp, #0xc8]
	ands r0, r5
	cmp r0, #0
	beq _0800E0C6
	ldr r6, [sp, #0xd4]
	lsls r0, r6, #0x10
	ldr r1, _0800E0B8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	b _0800E0C6
	.align 2, 0
_0800E0B8: .4byte 0xFFFF0000
_0800E0BC:
	ldr r2, _0800E130 @ =0x0000FFFF
	str r2, [sp, #0xc8]
	movs r3, #0
	str r3, [sp, #0xd0]
	strh r3, [r7, #0x2a]
_0800E0C6:
	bl sub_08007544
	cmp r0, #0
	bne _0800E0F2
	ldr r0, _0800E134 @ =gFrameCounter
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7]
	ands r0, r2
	cmp r1, r0
	bne _0800E0F2
	ldr r0, [sp, #0xa4]
	adds r0, #0x15
	ldr r5, [sp, #0xb0]
	ldrh r1, [r5, #0x1a]
	lsls r1, r1, #5
	ldr r6, [sp, #0xb4]
	adds r1, r6, r1
	movs r2, #1
	bl LoadPalette
_0800E0F2:
	bl WaitFrame
_0800E0F6:
	bl sub_080074CC
	cmp r0, #0
	bne _0800E112
	ldr r0, _0800E138 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E112
	bl sub_0800CD40
_0800E112:
	ldr r0, _0800E138 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800E124
	b _0800E2BA
_0800E124:
	bl sub_08001F64
	cmp r0, #0
	beq _0800E194
	add r5, sp, #0x84
	b _0800E140
	.align 2, 0
_0800E130: .4byte 0x0000FFFF
_0800E134: .4byte gFrameCounter
_0800E138: .4byte gUnknown_030063D8
_0800E13C:
	bl WaitFrame
_0800E140:
	ldrh r3, [r7, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _0800E13C
	adds r0, r7, #0
	bl sub_08012AD0
	str r0, [sp, #0x84]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldrh r2, [r7, #0x26]
	adds r3, r5, #0
	bl sub_0800FA74
	adds r4, r0, #0
	cmp r4, #0
	beq _0800E194
	b _0800E178
_0800E174:
	bl WaitFrame
_0800E178:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	ldr r1, [r4]
	asrs r1, r1, #0xc
	ldr r2, [r4, #4]
	asrs r2, r2, #0xc
	movs r3, #1
	str r3, [sp]
	adds r3, r5, #0
	bl SpawnFieldItem
	cmp r0, #0
	beq _0800E174
_0800E194:
	bl sub_080074CC
	cmp r0, #0
	beq _0800E19E
	b _0800E2BA
_0800E19E:
	ldr r4, _0800E2E4 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bne _0800E1B2
	b _0800E2BA
_0800E1B2:
	ldrh r0, [r7, #0x36]
	cmp r0, #0
	bne _0800E1BA
	b _0800E2BA
_0800E1BA:
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xb0]
	bl CalcExpGain
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0xa0]
	bl AddExp
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #7
	str r0, [sp, #0xb8]
	ldr r4, _0800E2E8 @ =0x0000FFFF
_0800E1EC:
	ldr r0, [r7, #0x14]
	ldr r1, _0800E2EC @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r0, _0800E2F0 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800E208
	adds r0, r7, #0
	ldr r1, [sp, #0xa0]
	bl sub_08024320
_0800E208:
	bl WaitFrame
	ldr r0, [sp, #0xb8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	cmp r0, r4
	bne _0800E1EC
	ldr r4, _0800E2F4 @ =0x03003D94
	adds r0, r4, #0
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _0800E248
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E248
	ldr r3, _0800E2F8 @ =0x00000157
	adds r1, r1, r3
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0800E248
	adds r0, #1
	strb r0, [r4, #2]
	bl sub_08041498
_0800E248:
	movs r4, #7
	str r4, [sp, #0xb8]
	ldr r4, _0800E2E8 @ =0x0000FFFF
_0800E24E:
	ldr r0, [r7, #0x14]
	ldr r6, _0800E2EC @ =0xFFFFFE00
	adds r0, r0, r6
	str r0, [r7, #0x14]
	movs r0, #1
	ldr r1, [sp, #0xb8]
	ands r0, r1
	cmp r0, #0
	beq _0800E274
	ldr r0, _0800E2F0 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800E274
	adds r0, r7, #0
	ldr r1, [sp, #0xa0]
	bl sub_08024320
_0800E274:
	bl WaitFrame
	ldr r0, [sp, #0xb8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	cmp r0, r4
	bne _0800E24E
	cmp r5, #0
	beq _0800E2BA
	bl sub_08007544
	cmp r0, #0
	bne _0800E298
	movs r0, #0x25
	bl PlaySE
_0800E298:
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0800E2E4 @ =gPlayers
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
_0800E2BA:
	ldr r2, _0800E2FC @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0xa4]
	bl sub_0800CB84
	bl ThreadExit
_0800E2D2:
	add sp, #0x104
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E2E4: .4byte gPlayers
_0800E2E8: .4byte 0x0000FFFF
_0800E2EC: .4byte 0xFFFFFE00
_0800E2F0: .4byte gMapLayer_03003910
_0800E2F4: .4byte 0x03003D94
_0800E2F8: .4byte 0x00000157
_0800E2FC: .4byte gActiveEnemyMask

	thumb_func_start sub_0800E300
sub_0800E300: @ 0x0800E300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	ldr r0, _0800E480 @ =gFrameCounter
	ldr r1, [r0]
	movs r5, #1
	ands r1, r5
	ldrh r2, [r7]
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	bne _0800E322
	b _0800E46E
_0800E322:
	ldr r0, [r7, #0x10]
	mov sb, r0
	ldr r1, [r7, #0x14]
	mov sl, r1
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r3, [r0]
	str r0, [sp, #0x1c]
	cmp r3, #5
	bls _0800E338
	b _0800E46E
_0800E338:
	ldr r6, _0800E484 @ =0x080FB4B8
	adds r0, #0x32
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r4, r0, #1
	ldr r2, _0800E488 @ =gEnemies
	movs r0, #0x94
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r2, r0, r1
	ldr r0, _0800E48C @ =gActiveEnemyMask
	adds r1, r5, #0
	lsls r1, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800E458
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0800E458
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r4, r4, r0
	mov r8, r4
	ldr r1, [r2, #0x10]
	mov r3, sb
	subs r1, r3, r1
	lsls r1, r1, #4
	ldr r0, [r2, #0x14]
	mov r5, sl
	subs r0, r5, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r6, r1, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _0800E394
	rsbs r0, r6, #0
_0800E394:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E458
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E3A6
	rsbs r0, r5, #0
_0800E3A6:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E458
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, r8
	subs r4, r1, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	ldr r4, _0800E490 @ =0x0805289C
	adds r1, r2, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov r5, r8
	muls r5, r1, r5
	adds r1, r5, #0
	mov r5, sb
	adds r3, r5, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	mov r5, sl
	adds r2, r5, r1
	ldr r1, _0800E494 @ =0x080FB720
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800E458
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800E498 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r5, sb
	adds r3, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	mov r1, sl
	adds r2, r1, r0
	str r3, [r7, #0x10]
	str r2, [r7, #0x14]
_0800E458:
	ldr r2, [sp, #0x1c]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0800E46E
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r2]
_0800E46E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E480: .4byte gFrameCounter
_0800E484: .4byte 0x080FB4B8
_0800E488: .4byte gEnemies
_0800E48C: .4byte gActiveEnemyMask
_0800E490: .4byte 0x0805289C
_0800E494: .4byte 0x080FB720
_0800E498: .4byte 0x080FB9FC

	thumb_func_start sub_0800E49C
sub_0800E49C: @ 0x0800E49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	ldr r0, _0800E618 @ =gFrameCounter
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	mov r3, sl
	ldrh r2, [r3]
	ands r0, r2
	cmp r1, r0
	bne _0800E4BE
	b _0800E606
_0800E4BE:
	ldr r5, [r3, #0x10]
	str r5, [sp, #0x20]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x24]
	ldr r1, _0800E61C @ =0x080FB4B8
	mov r0, sl
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, _0800E620 @ =gEnemies
	ldrh r2, [r3]
	movs r0, #0x94
	muls r0, r2, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	cmp r2, #4
	bls _0800E4F6
	b _0800E606
_0800E4F6:
	ldr r0, _0800E624 @ =gActiveEnemyMask
	movs r1, #1
	mov r2, sb
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800E5F2
	mov r3, sl
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0800E5F2
	ldr r1, _0800E61C @ =0x080FB4B8
	mov r0, r8
	adds r0, #0x82
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ldr r5, [sp, #0x1c]
	adds r7, r5, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r2, [sp, #0x20]
	subs r1, r2, r1
	lsls r1, r1, #4
	ldr r0, [r0, #0x14]
	ldr r3, [sp, #0x24]
	subs r0, r3, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r6, r1, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _0800E540
	rsbs r0, r6, #0
_0800E540:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E5F2
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E552
	rsbs r0, r5, #0
_0800E552:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0800E5F2
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r4, r7, r4
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	ldr r4, _0800E628 @ =0x0805289C
	adds r1, r2, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	muls r1, r7, r1
	ldr r5, [sp, #0x20]
	adds r3, r5, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	muls r1, r7, r1
	ldr r5, [sp, #0x24]
	adds r2, r5, r1
	ldr r1, _0800E62C @ =0x080FB720
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	movs r3, #0
	bl sub_08005A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800E5F2
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _0800E630 @ =0x080FB9FC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r7, r0
	ldr r5, [sp, #0x20]
	adds r3, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r7, r0
	ldr r5, [sp, #0x24]
	adds r2, r5, r0
	mov r0, sl
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
_0800E5F2:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0x94
	add r8, r1
	cmp r0, #4
	bhi _0800E606
	b _0800E4F6
_0800E606:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E618: .4byte gFrameCounter
_0800E61C: .4byte 0x080FB4B8
_0800E620: .4byte gEnemies
_0800E624: .4byte gActiveEnemyMask
_0800E628: .4byte 0x0805289C
_0800E62C: .4byte 0x080FB720
_0800E630: .4byte 0x080FB9FC
