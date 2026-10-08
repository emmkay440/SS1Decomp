	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08046178
sub_08046178: @ 0x08046178
	push {r4, lr}
	sub sp, #8
	bl sub_0800EC38
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetDispCntFlags
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl DisableDisplayLayers
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl EnableDisplayLayers
	ldr r1, _080461E8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _080461EC @ =0x00001C08
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl SetBgCnt
	movs r0, #1
	bl GetDataRecord
	ldrh r0, [r0]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r0, #0
	movs r2, #0xf
	bl LoadPalette
	ldr r0, _080461F0 @ =gBgRegsBuffer
	strh r4, [r0, #4]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	movs r0, #6
	bl sub_0800F1EC
	b _080461F8
	.align 2, 0
_080461E8: .4byte 0xFFFF0000
_080461EC: .4byte 0x00001C08
_080461F0: .4byte gBgRegsBuffer
_080461F4:
	bl WaitFrame
_080461F8:
	bl sub_0800F298
	cmp r0, #0
	beq _080461F4
	bl DisplayOn
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0804620C
sub_0804620C: @ 0x0804620C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08046244 @ =0x00000FFF
	cmp r2, r0
	bls _08046248
	lsrs r2, r2, #0xc
	cmp r2, #0
	beq _08046252
	adds r6, r1, #0
	adds r4, r3, #0
	adds r5, r2, #0
_08046222:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #5
	bl QueueCopy
	bl WaitFrame
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bne _08046222
	b _08046252
	.align 2, 0
_08046244: .4byte 0x00000FFF
_08046248:
	adds r0, r3, #0
	bl QueueCopy
	bl WaitFrame
_08046252:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start SaveSelectThread
SaveSelectThread: @ 0x08046258
	push {lr}
	bl sub_08046338
	bl sub_08046D90
	bl sub_08022AB4
	bl DisplayOn
	movs r0, #0x6f
	bl PlaySE
	b _0804627A
_08046272:
	bl WaitFrame
	bl sub_0804855C
_0804627A:
	bl sub_08048458
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046288
	bl sub_0800F298
_08046288:
	bl sub_0800F298
	cmp r0, #0
	beq _08046298
	bl sub_080463F0
	bl sub_080466A8
_08046298:
	bl sub_080472FC
	bl sub_08048440
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046272
	movs r0, #0x6f
	bl StopSE
	bl sub_08048458
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _080462C4
	movs r0, #0x14
	bl SignalEvent
	bl DisplayOff
	b _080462E8
_080462C4:
	bl sub_08048464
	ldr r0, _080462D8 @ =gUnknown_030031A8
	ldr r0, [r0]
	cmp r0, #0
	beq _080462DC
	cmp r0, #1
	beq _080462E4
	b _080462E8
	.align 2, 0
_080462D8: .4byte gUnknown_030031A8
_080462DC:
	movs r0, #0
	bl sub_08007490
	b _080462E8
_080462E4:
	bl sub_08002B58
_080462E8:
	pop {r0}
	bx r0

	thumb_func_start StartSaveSelect
StartSaveSelect: @ 0x080462EC
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl Alloc
	adds r2, r0, #0
	ldr r0, _08046320 @ =0x030068C0
	ldr r1, _08046324 @ =SaveSelectThread
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x32
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _08046328 @ =sub_0804632C
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_08046320: .4byte 0x030068C0
_08046324: .4byte SaveSelectThread
_08046328: .4byte sub_0804632C
