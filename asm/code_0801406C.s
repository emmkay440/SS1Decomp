	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0801406C
sub_0801406C: @ 0x0801406C
	push {lr}
	cmp r0, #0
	beq _08014098
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08014090
	cmp r0, #3
	bgt _08014086
	cmp r0, #2
	beq _08014090
	b _08014094
_08014086:
	cmp r0, #4
	beq _08014090
	cmp r0, #5
	beq _08014098
	b _08014094
_08014090:
	lsls r0, r1, #0xc
	lsrs r2, r0, #0x1b
_08014094:
	cmp r2, #0
	bne _0801409C
_08014098:
	movs r0, #0
	b _080140A8
_0801409C:
	subs r0, r2, #1
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
_080140A8:
	pop {r1}
	bx r1

	thumb_func_start sub_080140AC
sub_080140AC: @ 0x080140AC
	push {r4, r5, r6, lr}
	ldr r5, _08014104 @ =gPlayerStats
	adds r6, r5, #0
	adds r6, #0x6c
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x70
	adds r4, r0, r1
	adds r0, r4, #0
	bl CanEquipItem
	cmp r0, #0
	beq _08014108
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _0801410C
	lsls r0, r1, #0x11
	cmp r0, #0
	blt _0801410C
	ldrb r0, [r4, #1]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #1]
	movs r3, #0
	adds r4, r6, #0
	movs r6, #0x41
	rsbs r6, r6, #0
	adds r2, r5, #0
	adds r2, #0x71
_080140EC:
	ldrh r0, [r4]
	cmp r0, r3
	beq _080140FA
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
_080140FA:
	adds r2, #4
	adds r3, #1
	cmp r3, #2
	bls _080140EC
	b _0801410C
	.align 2, 0
_08014104: .4byte gPlayerStats
_08014108:
	movs r0, #0
	b _0801410E
_0801410C:
	movs r0, #1
_0801410E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
