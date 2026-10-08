	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080486C8
sub_080486C8: @ 0x080486C8
	push {lr}
	ldr r0, _080486DC @ =gUnknown_03000768
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0804873C
	lsls r0, r0, #2
	ldr r1, _080486E0 @ =_080486E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080486DC: .4byte gUnknown_03000768
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
