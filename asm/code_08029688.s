	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	bl sub_08016D4C
	adds r5, r0, #0
	bl GetMultiplayerId
	ldr r0, _08029710 @ =gPlayerStats
	movs r2, #0x28
	ldrsh r1, [r0, r2]
	mov sl, r1
	ldr r1, _08029714 @ =0x080FBB84
	ldr r2, [sp]
	lsls r0, r2, #4
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov sb, r0
	cmp r7, #0
	beq _0802972E
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080296D6
	rsbs r0, r0, #0
_080296D6:
	movs r1, #0x14
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	adds r0, r7, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xa
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029718 @ =0x00055730
	bl __udivsi3
	adds r3, r0, #0
	mov r2, r8
	ldrh r0, [r2, #2]
	cmp r0, #2
	beq _08029726
	cmp r0, #2
	bgt _0802971C
	cmp r0, #1
	beq _08029722
	b _08029760
	.align 2, 0
_08029710: .4byte gPlayerStats
_08029714: .4byte 0x080FBB84
_08029718: .4byte 0x00055730
_0802971C:
	cmp r0, #3
	beq _0802972A
	b _08029760
_08029722:
	ldrh r6, [r4, #0x14]
	b _08029760
_08029726:
	ldrh r6, [r4, #0x16]
	b _08029760
_0802972A:
	ldrh r6, [r4, #0x18]
	b _08029760
_0802972E:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802973C
	rsbs r0, r0, #0
_0802973C:
	movs r1, #0x32
	bl __umodsi3
	adds r2, r0, #0
	adds r2, #0x64
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0xf
	mov r1, sb
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc8
	muls r0, r1, r0
	muls r0, r2, r0
	ldr r1, _08029778 @ =0x000F4240
	bl __udivsi3
	adds r3, r0, #0
_08029760:
	ldr r0, _0802977C @ =0x080FBB84
	ldr r1, [sp]
	lsls r2, r1, #4
	adds r1, r2, r0
	ldrh r1, [r1, #2]
	cmp r1, #2
	beq _0802978A
	cmp r1, #2
	bgt _08029780
	cmp r1, #1
	beq _08029786
	b _08029790
	.align 2, 0
_08029778: .4byte 0x000F4240
_0802977C: .4byte 0x080FBB84
_08029780:
	cmp r1, #3
	beq _0802978E
	b _08029790
_08029786:
	ldrh r6, [r4, #0x14]
	b _08029790
_0802978A:
	ldrh r6, [r4, #0x16]
	b _08029790
_0802978E:
	ldrh r6, [r4, #0x18]
_08029790:
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _080297A6
	movs r0, #0x6e
	subs r0, r0, r6
	muls r0, r3, r0
	movs r1, #0x3c
	bl __udivsi3
	adds r3, r0, #0
_080297A6:
	ldrh r0, [r4, #0x12]
	cmp r0, #1
	bne _080297BE
	ldr r2, [sp]
	cmp r2, #3
	bne _080297BE
	movs r0, #0x96
	muls r0, r3, r0
	movs r1, #0x64
	bl __udivsi3
	adds r3, r0, #0
_080297BE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
