	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_080030DC
sub_080030DC: @ 0x080030DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, [r2, #4]
	adds r1, r1, r2
	mov sb, r1
	ldr r1, [r2, #8]
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #4]
	cmp r0, r3
	bhi _0800310C
	b _0800335A
_0800310C:
	ldr r0, [r1, #8]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r0, sb
	ldr r7, [r0, #8]
	add r7, sb
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _0800313A
	b _0800335A
_0800313A:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
_08003144:
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	ldr r2, [sp, #4]
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r3, [sp, #0x28]
	adds r5, r3, r1
	lsrs r0, r0, #0xc
	ldr r1, [sp]
	adds r4, r1, r0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _080031EA
	cmp r0, #1
	bgt _0800316C
	cmp r0, #0
	beq _08003172
	b _0800334A
_0800316C:
	cmp r0, #2
	beq _08003256
	b _0800334A
_08003172:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _0800317C
	b _080032C4
_0800317C:
	cmp r0, #1
	bgt _08003188
	cmp r0, #0
	bne _08003186
	b _0800329C
_08003186:
	b _0800334A
_08003188:
	cmp r0, #2
	beq _08003192
	cmp r0, #3
	beq _080031B0
	b _0800334A
_08003192:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003206
_080031B0:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	b _08003220
_080031EA:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003214
	cmp r0, #1
	bgt _080031FC
	cmp r0, #0
	beq _080032D2
	b _0800334A
_080031FC:
	cmp r0, #2
	beq _08003206
	cmp r0, #4
	beq _08003220
	b _0800334A
_08003206:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_08003214:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	b _0800334A
_08003220:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl QueueCopy
	b _0800334A
_08003256:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08003272
	cmp r0, #1
	bgt _08003268
	cmp r0, #0
	beq _0800328E
	b _0800334A
_08003268:
	cmp r0, #2
	beq _080032A8
	cmp r0, #4
	beq _080032DE
	b _0800334A
_08003272:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800328E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_0800329C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl QueueCopy
	b _0800334A
_080032A8:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032C4:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
_080032D2:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl QueueCopy
	b _0800334A
_080032DE:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl QueueCopy
_0800334A:
	movs r2, #1
	add sl, r2
	adds r7, #8
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp sl, r3
	bhs _0800335A
	b _08003144
_0800335A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
