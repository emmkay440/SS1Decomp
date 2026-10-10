	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803FD3C
sub_0803FD3C: @ 0x0803FD3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F9D4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803FDD6
	ldrb r0, [r4, #2]
	cmp r0, #7
	bne _0803FDC0
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _0803FD88
	cmp r0, #1
	bgt _0803FD68
	cmp r0, #0
	beq _0803FD78
	ldr r2, _0803FD64 @ =gMenuStatBlock
	b _0803FDB2
	.align 2, 0
_0803FD64: .4byte gMenuStatBlock
_0803FD68:
	cmp r0, #2
	beq _0803FD98
	cmp r0, #3
	beq _0803FDA8
	ldr r2, _0803FD74 @ =gMenuStatBlock
	b _0803FDB2
	.align 2, 0
_0803FD74: .4byte gMenuStatBlock
_0803FD78:
	ldr r2, _0803FD84 @ =gMenuStatBlock
	ldr r1, [r2]
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0803FDB2
	.align 2, 0
_0803FD84: .4byte gMenuStatBlock
_0803FD88:
	ldr r2, _0803FD94 @ =gMenuStatBlock
	ldr r1, [r2]
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	b _0803FDB2
	.align 2, 0
_0803FD94: .4byte gMenuStatBlock
_0803FD98:
	ldr r2, _0803FDA4 @ =gMenuStatBlock
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	b _0803FDB2
	.align 2, 0
_0803FDA4: .4byte gMenuStatBlock
_0803FDA8:
	ldr r2, _0803FDBC @ =gMenuStatBlock
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
_0803FDB2:
	ldr r1, [r2]
	ldrh r0, [r1, #0x18]
	adds r0, #1
	strh r0, [r1, #0x18]
	b _0803FE10
	.align 2, 0
_0803FDBC: .4byte gMenuStatBlock
_0803FDC0:
	ldr r2, _0803FDDC @ =gMenuSkillBlock
	ldr r1, [r2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _0803FDE0
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0803FDE0
_0803FDD6:
	movs r0, #0
	b _0803FE12
	.align 2, 0
_0803FDDC: .4byte gMenuSkillBlock
_0803FDE0:
	ldr r2, [r2]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0803FDFA
	subs r0, #1
	strh r0, [r1, #6]
	b _0803FE10
_0803FDFA:
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _0803FE18 @ =gMenuSelectedSlot
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
_0803FE10:
	movs r0, #1
_0803FE12:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803FE18: .4byte gMenuSelectedSlot
