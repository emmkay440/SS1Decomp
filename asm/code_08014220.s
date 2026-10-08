	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08014220
sub_08014220: @ 0x08014220
	push {r4, lr}
	ldr r0, _0801423C @ =gPlayerStats
	adds r1, r0, #0
	adds r1, #0x6c
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, #0x70
	adds r0, r1, r0
	movs r2, #0
	cmp r0, #0
	bne _08014240
	movs r4, #0
	b _0801425C
	.align 2, 0
_0801423C: .4byte gPlayerStats
_08014240:
	ldr r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #2
	bne _0801425A
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r2, r0, #0
_0801425A:
	adds r4, r2, #0
_0801425C:
	bl sub_08011E54
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #0
	bne _0801426C
	movs r0, #0
	b _0801427A
_0801426C:
	ldr r0, _08014280 @ =0x080FB4CC
	ldr r3, _08014284 @ =0x00000151
	adds r1, r4, r3
	ldrb r1, [r1]
	subs r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
_0801427A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08014280: .4byte 0x080FB4CC
_08014284: .4byte 0x00000151
