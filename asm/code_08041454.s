	.include "asm/macros.inc"

	.syntax unified
	.text

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
