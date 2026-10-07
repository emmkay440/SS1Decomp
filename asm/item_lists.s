	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08013B94
sub_08013B94: @ 0x08013B94
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #1
	beq _08013BC0
	cmp r0, #1
	blo _08013BA6
	cmp r0, #2
	beq _08013BDC
	b _08013BF2
_08013BA6:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BB8
	ldr r0, _08013BB4 @ =gUnknown_030063AC
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BB4: .4byte gUnknown_030063AC
_08013BB8:
	ldr r3, _08013BBC @ =0x03003EEC
	b _08013BF2
	.align 2, 0
_08013BBC: .4byte 0x03003EEC
_08013BC0:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BD4
	ldr r0, _08013BD0 @ =gUnknown_030063B8
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BD0: .4byte gUnknown_030063B8
_08013BD4:
	ldr r3, _08013BD8 @ =0x03003F1C
	b _08013BF2
	.align 2, 0
_08013BD8: .4byte 0x03003F1C
_08013BDC:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BF0
	ldr r0, _08013BEC @ =gUnknown_030063A8
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BEC: .4byte gUnknown_030063A8
_08013BF0:
	ldr r3, _08013C08 @ =0x03003F4C
_08013BF2:
	movs r2, #0
	adds r1, r4, #0
_08013BF6:
	ldm r3!, {r0}
	stm r1!, {r0}
	adds r2, #1
	cmp r2, #0xb
	bls _08013BF6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013C08: .4byte 0x03003F4C
_08013C0C:
	.byte 0x01, 0x1C, 0x3B, 0x29
	.byte 0x00, 0xD9, 0x00, 0x21, 0x02, 0x48, 0x89, 0x00, 0xEC, 0x30, 0x09, 0x18, 0x08, 0x68, 0x70, 0x47
	.byte 0x10, 0x3D, 0x00, 0x03
