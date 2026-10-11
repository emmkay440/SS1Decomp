	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803FAFC
sub_0803FAFC: @ 0x0803FAFC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl GetPlayerClass
	cmp r0, #1
	beq _0803FB70
	cmp r0, #1
	bgt _0803FB14
	cmp r0, #0
	beq _0803FB1E
	b _0803FB98
_0803FB14:
	cmp r0, #2
	beq _0803FB4C
	cmp r0, #3
	beq _0803FB30
	b _0803FB98
_0803FB1E:
	cmp r4, #1
	beq _0803FB64
	cmp r4, #1
	ble _0803FB54
	cmp r4, #2
	beq _0803FB68
	cmp r4, #3
	bne _0803FB98
	b _0803FB64
_0803FB30:
	cmp r4, #1
	beq _0803FB48
	cmp r4, #1
	bgt _0803FB3E
	cmp r4, #0
	beq _0803FB44
	b _0803FB98
_0803FB3E:
	cmp r4, #2
	beq _0803FB68
	b _0803FB82
_0803FB44:
	movs r5, #0xe6
	b _0803FB98
_0803FB48:
	movs r5, #0xdc
	b _0803FB98
_0803FB4C:
	cmp r4, #1
	beq _0803FB96
	cmp r4, #1
	bgt _0803FB5A
_0803FB54:
	cmp r4, #0
	beq _0803FB64
	b _0803FB98
_0803FB5A:
	cmp r4, #2
	beq _0803FB68
	cmp r4, #3
	beq _0803FB6C
	b _0803FB98
_0803FB64:
	movs r5, #0xc8
	b _0803FB98
_0803FB68:
	movs r5, #0
	b _0803FB98
_0803FB6C:
	movs r5, #0xfa
	b _0803FB98
_0803FB70:
	cmp r4, #1
	beq _0803FB8C
	cmp r4, #1
	bgt _0803FB7E
	cmp r4, #0
	beq _0803FB88
	b _0803FB98
_0803FB7E:
	cmp r4, #2
	beq _0803FB90
_0803FB82:
	cmp r4, #3
	beq _0803FB96
	b _0803FB98
_0803FB88:
	movs r5, #0x32
	b _0803FB98
_0803FB8C:
	movs r5, #0x64
	b _0803FB98
_0803FB90:
	movs r5, #0x96
	lsls r5, r5, #1
	b _0803FB98
_0803FB96:
	movs r5, #0x96
_0803FB98:
	cmp r4, #1
	beq _0803FBC0
	cmp r4, #1
	bgt _0803FBA6
	cmp r4, #0
	beq _0803FBB0
	b _0803FBF8
_0803FBA6:
	cmp r4, #2
	beq _0803FBD0
	cmp r4, #3
	beq _0803FBE0
	b _0803FBF8
_0803FBB0:
	ldr r0, _0803FBBC @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBBC: .4byte gMenuStatBlock
_0803FBC0:
	ldr r0, _0803FBCC @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBCC: .4byte gMenuStatBlock
_0803FBD0:
	ldr r0, _0803FBDC @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #4
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBDC: .4byte gMenuStatBlock
_0803FBE0:
	ldr r0, _0803FBF4 @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #2
	ldrsh r1, [r0, r2]
_0803FBE8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0803FBF8
	movs r0, #0
	b _0803FBFA
	.align 2, 0
_0803FBF4: .4byte gMenuStatBlock
_0803FBF8:
	movs r0, #1
_0803FBFA:
	pop {r4, r5}
	pop {r1}
	bx r1
