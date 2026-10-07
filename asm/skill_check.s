	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08041208
sub_08041208: @ 0x08041208
	push {r4, r5, lr}
	sub sp, #0x48
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	add r0, sp, #0x24
	bl GetSkillBlock
	lsls r1, r4, #2
	mov r0, sp
	adds r2, r0, r1
	ldr r0, _08041234 @ =gMenuSkillBlock
	ldr r0, [r0]
	adds r0, r0, r1
	ldrh r1, [r2, #0x28]
	ldrh r0, [r0, #4]
	cmp r1, r0
	beq _08041238
	movs r0, #1
	b _0804123A
	.align 2, 0
_08041234: .4byte gMenuSkillBlock
_08041238:
	movs r0, #0
_0804123A:
	cmp r0, #0
	bne _08041252
	mov r0, sp
	bl GetSkillBlock
	lsls r0, r4, #2
	add r0, sp
	ldrh r0, [r0, #6]
	cmp r0, r5
	blo _08041252
	movs r0, #0
	b _08041254
_08041252:
	movs r0, #1
_08041254:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1
