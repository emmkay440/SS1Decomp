	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start MenuScreen
MenuScreen: @ 0x0803F468
	push {r4, lr}
	ldr r1, _0803F4B4 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #8
	movs r1, #3
	bl SetKeyRepeat
	bl sub_08043E0C
	bl sub_08043BD8
	bl sub_0803F5E8
	ldr r4, _0803F4B8 @ =0x03006880
	ldrb r0, [r4]
	bl sub_0803F5C8
	bl sub_08022AB4
	ldrb r0, [r4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0803F4A4
	movs r0, #0
	bl sub_08026C80
_0803F4A4:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0803F4C0
	movs r0, #0
	bl sub_08026D0C
	b _0803F4C0
	.align 2, 0
_0803F4B4: .4byte gBgRegsBuffer
_0803F4B8: .4byte 0x03006880
_0803F4BC:
	bl WaitFrame
_0803F4C0:
	bl sub_0800F298
	cmp r0, #0
	beq _0803F4BC
	bl sub_08041538
	bl WaitFrame
	b _0803F4DA
_0803F4D2:
	bl sub_08043CC8
	bl WaitFrame
_0803F4DA:
	bl sub_08016FA0
	cmp r0, #0
	bne _0803F506
	bl sub_0800F298
	cmp r0, #0
	beq _0803F4F2
	bl sub_08043EDC
	bl sub_08044590
_0803F4F2:
	bl sub_08045F44
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803F4D2
	b _0803F506
_0803F4FE:
	bl sub_08043CC8
	bl WaitFrame
_0803F506:
	bl sub_0800F298
	cmp r0, #0
	beq _0803F4FE
	movs r0, #6
	bl sub_0800F3A0
	b _0803F51E
_0803F516:
	bl sub_08043CC8
	bl WaitFrame
_0803F51E:
	bl sub_0800F298
	cmp r0, #0
	beq _0803F516
	ldr r1, _0803F564 @ =gBgRegsBuffer
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r4, _0803F568 @ =0x03006880
	ldrb r0, [r4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0803F544
	movs r0, #0
	bl sub_08026CE4
_0803F544:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0803F550
	movs r0, #0
	bl sub_08026D70
_0803F550:
	movs r0, #0x10
	movs r1, #8
	bl SetKeyRepeat
	ldr r0, _0803F56C @ =0x11201100
	bl SignalEvent
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F564: .4byte gBgRegsBuffer
_0803F568: .4byte 0x03006880
_0803F56C: .4byte 0x11201100

	thumb_func_start sub_0803F570
sub_0803F570: @ 0x0803F570
	push {lr}
	ldr r1, _0803F5A0 @ =0x03006880
	strb r0, [r1]
	ldr r2, _0803F5A4 @ =0x03000078
	ldr r0, _0803F5A8 @ =0x03006890
	ldr r1, _0803F5AC @ =MenuScreen
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0x37
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0]
	ldr r1, _0803F5B0 @ =sub_0803F5B4
	str r1, [r0, #0x24]
	movs r1, #0
	bl CreateThread
	pop {r0}
	bx r0
	.align 2, 0
_0803F5A0: .4byte 0x03006880
_0803F5A4: .4byte 0x03000078
_0803F5A8: .4byte 0x03006890
_0803F5AC: .4byte MenuScreen
_0803F5B0: .4byte sub_0803F5B4
