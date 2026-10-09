	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08001FD0
sub_08001FD0: @ 0x08001FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x3c
	bl sub_0800F2DC
	cmp r0, #0
	bne _080020D0
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl EnableDisplayLayers
	ldr r1, _08002070 @ =0xFFFF0000
	ldr r0, [sp, #0x38]
	ands r0, r1
	ldr r1, _08002074 @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #0x38]
	add r4, sp, #0x38
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _08002078 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	adds r4, r5, #0
	ldm r4!, {r0}
	ldr r1, _0800207C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r4, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	cmp r0, #0
	beq _08002094
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r4, r0
	cmp r4, #0
	beq _08002084
	ldr r1, _08002080 @ =0x06004000
	b _08002088
	.align 2, 0
_08002070: .4byte 0xFFFF0000
_08002074: .4byte 0x00001C08
_08002078: .4byte 0x00001D03
_0800207C: .4byte 0x0000FFFF
_08002080: .4byte 0x06004000
_08002084:
	movs r1, #0xc0
	lsls r1, r1, #0x13
_08002088:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r7, #0
	bl CpuFastSet
	b _080020A2
_08002094:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r7, #0
	bl CpuFastSet
_080020A2:
	ldr r1, _080020CC @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, r8
	bl CpuFastSet
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	bl DisplayOn
	movs r0, #0x1e
	bl sub_0800F1EC
	b _080021BC
	.align 2, 0
_080020CC: .4byte 0x0600E800
_080020D0:
	movs r0, #1
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r0, _0800219C @ =0x00001C08
	add r4, sp, #0x38
	strh r0, [r4]
	movs r0, #0
	adds r1, r4, #0
	bl SetBgCnt
	ldr r0, _080021A0 @ =0x00001D03
	strh r0, [r4]
	movs r0, #1
	adds r1, r4, #0
	bl SetBgCnt
	movs r0, #0xc4
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _080021A4 @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002142:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002142
	ldr r1, _080021A8 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0xf
	bl LoadPalette
	ldr r1, _080021AC @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	bl sub_0800F2DC
	cmp r0, #2
	bne _080021B0
	movs r0, #6
	bl sub_0800F348
	b _080021BC
	.align 2, 0
_0800219C: .4byte 0x00001C08
_080021A0: .4byte 0x00001D03
_080021A4: .4byte 0x0000FFFF
_080021A8: .4byte 0x0600E800
_080021AC: .4byte gBgRegsBuffer
_080021B0:
	movs r0, #6
	bl sub_0800F308
	b _080021BC
_080021B8:
	bl WaitFrame
_080021BC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021B8
	movs r4, #0
_080021C6:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _080021C6
	movs r0, #0x3c
	bl sub_0800F244
	b _080021DC
_080021D8:
	bl WaitFrame
_080021DC:
	bl sub_0800F298
	cmp r0, #0
	beq _080021D8
	movs r0, #0xc3
	bl GetDataRecord
	adds r5, r0, #0
	ldr r0, [r5]
	bl GetDataRecord
	adds r7, r0, #0
	ldm r5!, {r0}
	ldr r1, _0800226C @ =0x0000FFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	mov sb, r0
	adds r0, r5, #0
	bl LZ77DecompressAlloc
	mov r8, r0
	movs r5, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r4, r7, #0
_08002216:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xf
	bls _08002216
	ldr r1, _08002270 @ =0x0600E800
	adds r2, r0, #0
	mov r0, r8
	bl QueueCopy
	bl WaitFrame
	bl WaitFrame
	mov r0, r8
	bl Free
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl LoadPalette
	ldr r1, _08002274 @ =0x00100095
	add r0, sp, #4
	movs r2, #0
	movs r3, #0xf
	bl sub_08026ADC
	movs r0, #6
	bl sub_0800F1EC
	b _0800227C
	.align 2, 0
_0800226C: .4byte 0x0000FFFF
_08002270: .4byte 0x0600E800
_08002274: .4byte 0x00100095
_08002278:
	bl WaitFrame
_0800227C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002278
	movs r4, #0
_08002286:
	bl WaitFrame
	adds r4, #1
	cmp r4, #0x3b
	bls _08002286
	movs r0, #0x3c
	bl sub_0800F244
	b _0800229C
_08002298:
	bl WaitFrame
_0800229C:
	bl sub_0800F298
	cmp r0, #0
	beq _08002298
	bl WaitFrame
	movs r0, #0x14
	bl SignalEvent
	add sp, #0x3c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
