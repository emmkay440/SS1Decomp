	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0804087C
sub_0804087C: @ 0x0804087C
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	cmp r0, #2
	beq _080408A0
	cmp r0, #2
	bgt _0804088E
	cmp r0, #1
	beq _08040898
	b _080408B4
_0804088E:
	cmp r0, #3
	beq _080408A8
	cmp r0, #6
	beq _080408B0
	b _080408B4
_08040898:
	ldr r0, _0804089C @ =gMenuWeapons
	b _080408B2
	.align 2, 0
_0804089C: .4byte gMenuWeapons
_080408A0:
	ldr r0, _080408A4 @ =gMenuEquipment
	b _080408B2
	.align 2, 0
_080408A4: .4byte gMenuEquipment
_080408A8:
	ldr r0, _080408AC @ =gMenuInventory
	b _080408B2
	.align 2, 0
_080408AC: .4byte gMenuInventory
_080408B0:
	ldr r0, _080408C8 @ =gUnknown_030004A4
_080408B2:
	ldr r1, [r0]
_080408B4:
	ldrb r0, [r2, #2]
	cmp r0, #5
	beq _080408FC
	cmp r0, #4
	beq _080408CC
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r1, r0, r1
	b _080408E6
	.align 2, 0
_080408C8: .4byte gUnknown_030004A4
_080408CC:
	ldrb r0, [r2, #3]
	ldr r1, _080408F4 @ =gUnknown_03000494
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _080408FC
	ldr r1, _080408F8 @ =gMenuInventory
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r1, r0, #4
_080408E6:
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080408FC
	adds r0, r1, #0
	b _080408FE
	.align 2, 0
_080408F4: .4byte gUnknown_03000494
_080408F8: .4byte gMenuInventory
_080408FC:
	movs r0, #0
_080408FE:
	bx lr
