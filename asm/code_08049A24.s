	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08049A24
sub_08049A24: @ 0x08049A24
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08049A38 @ =gUnknown_030007F0
	ldrb r1, [r0]
	cmp r1, #0x3b
	bls _08049A3C
	movs r0, #0
	b _08049C46
	.align 2, 0
_08049A38: .4byte gUnknown_030007F0
_08049A3C:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #0x10
	cmp r3, r1
	bhs _08049A68
	ldr r0, _08049ADC @ =gUnknown_030007F8
	ldr r4, [r0]
_08049A4A:
	lsls r0, r2, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049A5E
	cmp r0, #3
	beq _08049A5E
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08049A5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	blo _08049A4A
_08049A68:
	adds r4, r3, #0
	bl Random
	lsls r0, r0, #0x10
	cmp r0, r5
	bgt _08049A76
	b _08049C44
_08049A76:
	cmp r4, #9
	bls _08049A7C
	b _08049C44
_08049A7C:
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049B54
	ldr r4, _08049AE0 @ =gUnknown_030007F0
	ldrb r0, [r4]
	ldr r5, _08049ADC @ =gUnknown_030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #2
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049AE4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049AC4
	rsbs r0, r0, #0
_08049AC4:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049B1E
	.align 2, 0
_08049ADC: .4byte gUnknown_030007F8
_08049AE0: .4byte gUnknown_030007F0
_08049AE4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B0A
	rsbs r0, r0, #0
_08049B0A:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049B1E:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B2E
	rsbs r0, r0, #0
_08049B2E:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049B4C @ =gUnknown_030007F0
	ldrb r1, [r5]
	ldr r4, _08049B50 @ =gUnknown_030007F8
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc8
	strh r0, [r1, #8]
	b _08049C18
	.align 2, 0
_08049B4C: .4byte gUnknown_030007F0
_08049B50: .4byte gUnknown_030007F8
_08049B54:
	ldr r4, _08049BAC @ =gUnknown_030007F0
	ldrb r0, [r4]
	ldr r5, _08049BB0 @ =gUnknown_030007F8
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #1
	strb r6, [r0]
	bl Random
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049BB4
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc0
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049B94
	rsbs r0, r0, #0
_08049B94:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	b _08049BEC
	.align 2, 0
_08049BAC: .4byte gUnknown_030007F0
_08049BB0: .4byte gUnknown_030007F8
_08049BB4:
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r6, [r0, #2]
	ldrb r0, [r4]
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0x40
	strb r1, [r0, #1]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BD8
	rsbs r0, r0, #0
_08049BD8:
	movs r1, #0x3c
	bl __modsi3
	ldrb r1, [r4]
	ldr r2, [r5]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
_08049BEC:
	strh r0, [r1, #0xa]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049BFC
	rsbs r0, r0, #0
_08049BFC:
	movs r1, #0x3c
	bl __modsi3
	ldr r5, _08049C50 @ =gUnknown_030007F0
	ldrb r2, [r5]
	ldr r4, _08049C54 @ =gUnknown_030007F8
	ldr r1, [r4]
	lsls r2, r2, #4
	adds r2, r2, r1
	movs r1, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #8]
_08049C18:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08049C26
	rsbs r0, r0, #0
_08049C26:
	movs r1, #0x14
	bl __modsi3
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x28
	strh r0, [r1, #0xc]
	ldr r1, _08049C50 @ =gUnknown_030007F0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08049C44:
	movs r0, #1
_08049C46:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08049C50: .4byte gUnknown_030007F0
_08049C54: .4byte gUnknown_030007F8
