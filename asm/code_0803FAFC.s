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

	thumb_func_start sub_0803FC00
sub_0803FC00: @ 0x0803FC00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #7
	bne _0803FC66
	ldr r5, _0803FC38 @ =gMenuStatBlock
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0803FCCA
	ldrb r0, [r4, #3]
	bl sub_0803FAFC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803FCCA
	ldr r1, [r5]
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _0803FC4E
	cmp r0, #1
	bgt _0803FC3C
	cmp r0, #0
	beq _0803FC46
	b _0803FCCE
	.align 2, 0
_0803FC38: .4byte gMenuStatBlock
_0803FC3C:
	cmp r0, #2
	beq _0803FC56
	cmp r0, #3
	beq _0803FC5E
	b _0803FCCE
_0803FC46:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0803FCCE
_0803FC4E:
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	b _0803FCCE
_0803FC56:
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _0803FCCE
_0803FC5E:
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	b _0803FCCE
_0803FC66:
	ldr r0, _0803FCB4 @ =gMenuSkillBlock
	ldr r2, [r0]
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	cmp r0, #4
	bhi _0803FCCA
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803FCCA
	subs r0, #1
	strh r0, [r2]
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bhs _0803FCC4
	movs r0, #0x25
	bl PlaySE
	ldr r1, _0803FCB8 @ =gUnknown_0300047A
	movs r0, #0x4b
	strb r0, [r1]
	ldr r0, _0803FCBC @ =gUnknown_030004C0
	ldrb r1, [r4, #3]
	strb r1, [r0]
	ldr r0, _0803FCC0 @ =gMenuSelectedSlot
	strb r1, [r0, #3]
	b _0803FCCE
	.align 2, 0
_0803FCB4: .4byte gMenuSkillBlock
_0803FCB8: .4byte gUnknown_0300047A
_0803FCBC: .4byte gUnknown_030004C0
_0803FCC0: .4byte gMenuSelectedSlot
_0803FCC4:
	bl sub_080413F4
	b _0803FCCE
_0803FCCA:
	movs r0, #0
	b _0803FCD0
_0803FCCE:
	movs r0, #1
_0803FCD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
