	.include "asm/macros.inc"

	.syntax unified
	.text

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
