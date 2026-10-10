	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803F9D4
sub_0803F9D4: @ 0x0803F9D4
	push {r4, r5, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	add r0, sp, #0x1c
	bl sub_08016E4C
	mov r0, sp
	bl GetStatBlock
	add r5, sp, #0x28
	adds r0, r5, #0
	bl GetSkillBlock
	ldrb r1, [r4, #2]
	cmp r1, #7
	bne _0803FA6C
	ldrb r1, [r4, #3]
	cmp r1, #1
	beq _0803FA28
	cmp r1, #1
	bgt _0803FA04
	cmp r1, #0
	beq _0803FA0E
	b _0803FA92
_0803FA04:
	cmp r1, #2
	beq _0803FA3C
	cmp r1, #3
	beq _0803FA50
	b _0803FA92
_0803FA0E:
	mov r1, sp
	ldr r0, _0803FA24 @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
_0803FA1C:
	cmp r1, r0
	bne _0803FA88
	b _0803FA64
	.align 2, 0
_0803FA24: .4byte gMenuStatBlock
_0803FA28:
	mov r1, sp
	ldr r0, _0803FA38 @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r1, r2]
	movs r3, #6
	ldrsh r0, [r0, r3]
	b _0803FA1C
	.align 2, 0
_0803FA38: .4byte gMenuStatBlock
_0803FA3C:
	mov r1, sp
	ldr r0, _0803FA4C @ =gMenuStatBlock
	ldr r0, [r0]
	movs r2, #4
	ldrsh r1, [r1, r2]
	movs r3, #4
	ldrsh r0, [r0, r3]
	b _0803FA1C
	.align 2, 0
_0803FA4C: .4byte gMenuStatBlock
_0803FA50:
	mov r1, sp
	ldr r0, _0803FA68 @ =gMenuStatBlock
	ldr r2, [r0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _0803FA88
_0803FA64:
	movs r0, #0
	b _0803FA92
	.align 2, 0
_0803FA68: .4byte gMenuStatBlock
_0803FA6C:
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0803FA8C @ =gMenuSkillBlock
	ldr r1, [r1]
	adds r1, r1, r0
	ldrh r0, [r2, #6]
	ldrh r3, [r1, #6]
	cmp r0, r3
	bne _0803FA88
	ldrh r0, [r2, #4]
	ldrh r1, [r1, #4]
	cmp r0, r1
	beq _0803FA90
_0803FA88:
	movs r0, #1
	b _0803FA92
	.align 2, 0
_0803FA8C: .4byte gMenuSkillBlock
_0803FA90:
	movs r0, #0
_0803FA92:
	add sp, #0x4c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
