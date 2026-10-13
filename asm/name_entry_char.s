	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08048240
sub_08048240: @ 0x08048240
	ldr r1, _0804824C @ =gUnknown_030005F0
	ldrb r1, [r1]
	cmp r1, #5
	beq _08048250
	movs r0, #0
	b _08048372
	.align 2, 0
_0804824C: .4byte gUnknown_030005F0
_08048250:
	ldr r1, _08048264 @ =gUnknown_030005F2
	ldrb r1, [r1]
	cmp r1, #1
	beq _0804828C
	cmp r1, #1
	bgt _08048268
	cmp r1, #0
	beq _0804826E
	b _08048372
	.align 2, 0
_08048264: .4byte gUnknown_030005F2
_08048268:
	cmp r1, #2
	beq _080482A8
	b _08048372
_0804826E:
	ldr r3, _08048284 @ =0x080FBE1C
	ldr r2, _08048288 @ =gUnknown_03000600
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
_08048288: .4byte gUnknown_03000600
_0804828C:
	ldr r3, _080482A0 @ =0x080FBE77
	ldr r2, _080482A4 @ =gUnknown_03000600
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
_080482A4: .4byte gUnknown_03000600
_080482A8:
	ldr r1, _080482BC @ =gLanguage
	ldrh r1, [r1]
	cmp r1, #5
	bhi _08048372
	lsls r0, r1, #2
	ldr r1, _080482C0 @ =_080482C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080482BC: .4byte gLanguage
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
	ldr r0, _080482F8 @ =gUnknown_03000600
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
_080482F8: .4byte gUnknown_03000600
_080482FC:
	ldr r3, _08048314 @ =0x080FBF5E
	ldr r0, _08048318 @ =gUnknown_03000600
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
_08048318: .4byte gUnknown_03000600
_0804831C:
	ldr r3, _08048334 @ =0x080FC006
	ldr r0, _08048338 @ =gUnknown_03000600
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
_08048338: .4byte gUnknown_03000600
_0804833C:
	ldr r3, _08048354 @ =0x080FC0AE
	ldr r0, _08048358 @ =gUnknown_03000600
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
_08048358: .4byte gUnknown_03000600
_0804835C:
	ldr r3, _08048374 @ =0x080FC156
	ldr r0, _08048378 @ =gUnknown_03000600
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
_08048378: .4byte gUnknown_03000600
