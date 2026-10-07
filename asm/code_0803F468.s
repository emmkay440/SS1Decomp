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

	thumb_func_start sub_0803F5B4
sub_0803F5B4: @ 0x0803F5B4
	push {lr}
	bl sub_08045F24
	bl sub_08043C5C
	bl sub_0803F6A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803F5C8
sub_0803F5C8: @ 0x0803F5C8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08045234
	adds r0, r4, #0
	bl sub_08043D3C
	adds r0, r4, #0
	bl sub_0803F73C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803F5E8
sub_0803F5E8: @ 0x0803F5E8
	ldr r0, _0803F64C @ =gMenuPage
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803F650 @ =gUnknown_03000479
	strb r1, [r0]
	ldr r1, _0803F654 @ =0x03000488
	movs r0, #0
	str r0, [r1]
	ldr r1, _0803F658 @ =gMenuHeldCount
	str r0, [r1]
	ldr r1, _0803F65C @ =0x0300047A
	strb r0, [r1]
	ldr r2, _0803F660 @ =0x030004C0
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r3, #0
	strb r1, [r2]
	ldr r1, _0803F664 @ =0x0300047B
	strb r0, [r1]
	ldr r1, _0803F668 @ =0x0300047C
	strb r0, [r1]
	ldr r1, _0803F66C @ =0x0300048C
	str r0, [r1]
	ldr r1, _0803F670 @ =0x03000490
	str r0, [r1]
	ldr r1, _0803F674 @ =0x0300047E
	strh r0, [r1]
	ldr r1, _0803F678 @ =0x03000480
	strh r0, [r1]
	ldr r1, _0803F67C @ =gMenuInventory
	str r0, [r1]
	ldr r1, _0803F680 @ =gMenuWeapons
	str r0, [r1]
	ldr r1, _0803F684 @ =gUnknown_03000494
	str r0, [r1]
	ldr r1, _0803F688 @ =gMenuEquipment
	str r0, [r1]
	ldr r1, _0803F68C @ =gUnknown_030004A4
	str r0, [r1]
	ldr r1, _0803F690 @ =gUnknown_030004A8
	str r0, [r1]
	ldr r1, _0803F694 @ =gMenuSelectedItem
	str r0, [r1]
	ldr r1, _0803F698 @ =0x030004B0
	str r0, [r1]
	ldr r1, _0803F69C @ =0x030004B4
	str r0, [r1]
	ldr r1, _0803F6A0 @ =0x030004B8
	str r0, [r1]
	bx lr
	.align 2, 0
_0803F64C: .4byte gMenuPage
_0803F650: .4byte gUnknown_03000479
_0803F654: .4byte 0x03000488
_0803F658: .4byte gMenuHeldCount
_0803F65C: .4byte 0x0300047A
_0803F660: .4byte 0x030004C0
_0803F664: .4byte 0x0300047B
_0803F668: .4byte 0x0300047C
_0803F66C: .4byte 0x0300048C
_0803F670: .4byte 0x03000490
_0803F674: .4byte 0x0300047E
_0803F678: .4byte 0x03000480
_0803F67C: .4byte gMenuInventory
_0803F680: .4byte gMenuWeapons
_0803F684: .4byte gUnknown_03000494
_0803F688: .4byte gMenuEquipment
_0803F68C: .4byte gUnknown_030004A4
_0803F690: .4byte gUnknown_030004A8
_0803F694: .4byte gMenuSelectedItem
_0803F698: .4byte 0x030004B0
_0803F69C: .4byte 0x030004B4
_0803F6A0: .4byte 0x030004B8

	thumb_func_start sub_0803F6A4
sub_0803F6A4: @ 0x0803F6A4
	push {lr}
	ldr r0, _0803F718 @ =gMenuInventory
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6B2
	bl Free
_0803F6B2:
	ldr r0, _0803F71C @ =gMenuWeapons
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6BE
	bl Free
_0803F6BE:
	ldr r0, _0803F720 @ =gUnknown_03000494
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6CA
	bl Free
_0803F6CA:
	ldr r0, _0803F724 @ =gMenuEquipment
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6D6
	bl Free
_0803F6D6:
	ldr r0, _0803F728 @ =gUnknown_030004A4
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6E2
	bl Free
_0803F6E2:
	ldr r0, _0803F72C @ =gUnknown_030004A8
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6EE
	bl Free
_0803F6EE:
	ldr r0, _0803F730 @ =0x030004B0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F6FA
	bl Free
_0803F6FA:
	ldr r0, _0803F734 @ =0x030004B4
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F706
	bl Free
_0803F706:
	ldr r0, _0803F738 @ =0x030004B8
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F712
	bl Free
_0803F712:
	pop {r0}
	bx r0
	.align 2, 0
_0803F718: .4byte gMenuInventory
_0803F71C: .4byte gMenuWeapons
_0803F720: .4byte gUnknown_03000494
_0803F724: .4byte gMenuEquipment
_0803F728: .4byte gUnknown_030004A4
_0803F72C: .4byte gUnknown_030004A8
_0803F730: .4byte 0x030004B0
_0803F734: .4byte 0x030004B4
_0803F738: .4byte 0x030004B8

	thumb_func_start sub_0803F73C
sub_0803F73C: @ 0x0803F73C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803F820 @ =gMenuPage
	strb r0, [r1]
	adds r5, r1, #0
	cmp r0, #6
	bne _0803F74E
	b _0803F890
_0803F74E:
	cmp r0, #8
	bne _0803F754
	b _0803F896
_0803F754:
	cmp r0, #9
	bne _0803F75A
	b _0803F890
_0803F75A:
	ldr r4, _0803F824 @ =gMenuInventory
	movs r0, #0x64
	bl Alloc
	str r0, [r4]
	bl GetInventory
	ldr r4, _0803F828 @ =0x030004B0
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F82C @ =0x0300047E
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F830 @ =0x030004B4
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F834 @ =0x03000480
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #7
	beq _0803F7F2
	ldr r4, _0803F838 @ =gMenuWeapons
	movs r0, #0xc
	bl Alloc
	str r0, [r4]
	bl GetWeapons
	ldr r4, _0803F83C @ =gMenuEquipment
	movs r0, #0x10
	bl Alloc
	str r0, [r4]
	bl sub_08013A58
	ldr r1, [r4]
	str r0, [r1]
	bl GetArmor
	ldr r1, [r4]
	str r0, [r1, #4]
	bl sub_08013A78
	adds r1, r0, #0
	ldr r0, [r4]
	str r1, [r0, #8]
	adds r0, #0xc
	movs r1, #4
	bl bzero
	ldr r4, _0803F840 @ =gUnknown_03000494
	movs r0, #0xc
	bl Alloc
	str r0, [r4]
	bl sub_08013AC4
_0803F7F2:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803F7FA
	b _0803F912
_0803F7FA:
	cmp r0, #5
	beq _0803F874
	ldr r4, _0803F844 @ =gUnknown_030004A4
	movs r0, #0x3c
	bl Alloc
	str r0, [r4]
	movs r1, #0x3c
	bl bzero
	ldrb r1, [r5]
	cmp r1, #3
	beq _0803F858
	cmp r1, #3
	bgt _0803F848
	cmp r1, #2
	beq _0803F84E
	b _0803F86A
	.align 2, 0
_0803F820: .4byte gMenuPage
_0803F824: .4byte gMenuInventory
_0803F828: .4byte 0x030004B0
_0803F82C: .4byte 0x0300047E
_0803F830: .4byte 0x030004B4
_0803F834: .4byte 0x03000480
_0803F838: .4byte gMenuWeapons
_0803F83C: .4byte gMenuEquipment
_0803F840: .4byte gUnknown_03000494
_0803F844: .4byte gUnknown_030004A4
_0803F848:
	cmp r1, #4
	beq _0803F862
	b _0803F86A
_0803F84E:
	ldr r1, [r4]
	movs r0, #0
	bl sub_08013B94
	b _0803F86A
_0803F858:
	ldr r1, [r4]
	movs r0, #1
	bl sub_08013B94
	b _0803F86A
_0803F862:
	ldr r1, [r4]
	movs r0, #2
	bl sub_08013B94
_0803F86A:
	ldr r4, _0803F870 @ =gUnknown_030004A8
	b _0803F876
	.align 2, 0
_0803F870: .4byte gUnknown_030004A8
_0803F874:
	ldr r4, _0803F88C @ =gUnknown_030004A4
_0803F876:
	movs r0, #0xf0
	bl Alloc
	str r0, [r4]
	movs r1, #0xf0
	bl bzero
	ldr r0, [r4]
	bl sub_08013C24
	b _0803F912
	.align 2, 0
_0803F88C: .4byte gUnknown_030004A4
_0803F890:
	ldrb r1, [r5]
	cmp r1, #8
	bne _0803F8F8
_0803F896:
	ldr r4, _0803F8E4 @ =gMenuInventory
	movs r0, #0x64
	bl Alloc
	str r0, [r4]
	bl GetInventory
	ldr r4, _0803F8E8 @ =0x030004B0
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F8EC @ =0x0300047E
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F8F0 @ =0x030004B4
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F8F4 @ =0x03000480
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	b _0803F912
	.align 2, 0
_0803F8E4: .4byte gMenuInventory
_0803F8E8: .4byte 0x030004B0
_0803F8EC: .4byte 0x0300047E
_0803F8F0: .4byte 0x030004B4
_0803F8F4: .4byte 0x03000480
_0803F8F8:
	cmp r1, #9
	bne _0803F912
	ldr r4, _0803F920 @ =0x030004B8
	movs r0, #4
	bl Alloc
	str r0, [r4]
	movs r1, #4
	bl bzero
	ldr r0, [r4]
	bl GetOptions
_0803F912:
	bl sub_08040D44
	ldr r1, _0803F924 @ =0x03000488
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F920: .4byte 0x030004B8
_0803F924: .4byte 0x03000488

	thumb_func_start ApplyMenuChanges
ApplyMenuChanges: @ 0x0803F928
	push {r4, r5, lr}
	ldr r0, _0803F988 @ =gMenuPage
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #6
	beq _0803F9B0
	cmp r1, #8
	beq _0803F9B0
	cmp r1, #9
	beq _0803F9B6
	ldr r0, _0803F98C @ =gMenuInventory
	ldr r0, [r0]
	bl SetInventory
	ldrb r0, [r5]
	cmp r0, #7
	beq _0803F978
	ldr r0, _0803F990 @ =gMenuWeapons
	ldr r0, [r0]
	bl SetWeapons
	bl sub_080140AC
	ldr r4, _0803F994 @ =gMenuEquipment
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_08013A64
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl SetArmor
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08013A84
	ldr r0, _0803F998 @ =gUnknown_03000494
	ldr r0, [r0]
	bl sub_08013AF8
_0803F978:
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803F9CA
	cmp r0, #5
	beq _0803F9A0
	ldr r0, _0803F99C @ =gUnknown_030004A8
	b _0803F9A2
	.align 2, 0
_0803F988: .4byte gMenuPage
_0803F98C: .4byte gMenuInventory
_0803F990: .4byte gMenuWeapons
_0803F994: .4byte gMenuEquipment
_0803F998: .4byte gUnknown_03000494
_0803F99C: .4byte gUnknown_030004A8
_0803F9A0:
	ldr r0, _0803F9AC @ =gUnknown_030004A4
_0803F9A2:
	ldr r0, [r0]
	bl sub_08013C68
	b _0803F9CA
	.align 2, 0
_0803F9AC: .4byte gUnknown_030004A4
_0803F9B0:
	ldrb r0, [r5]
	cmp r0, #9
	bne _0803F9CA
_0803F9B6:
	ldr r4, _0803F9D0 @ =0x030004B8
	ldr r0, [r4]
	bl SetOptions
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bl SetMusicEnabled
_0803F9CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F9D0: .4byte 0x030004B8

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
	ldr r0, _0803FA24 @ =0x030004B0
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
_0803FA24: .4byte 0x030004B0
_0803FA28:
	mov r1, sp
	ldr r0, _0803FA38 @ =0x030004B0
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r1, r2]
	movs r3, #6
	ldrsh r0, [r0, r3]
	b _0803FA1C
	.align 2, 0
_0803FA38: .4byte 0x030004B0
_0803FA3C:
	mov r1, sp
	ldr r0, _0803FA4C @ =0x030004B0
	ldr r0, [r0]
	movs r2, #4
	ldrsh r1, [r1, r2]
	movs r3, #4
	ldrsh r0, [r0, r3]
	b _0803FA1C
	.align 2, 0
_0803FA4C: .4byte 0x030004B0
_0803FA50:
	mov r1, sp
	ldr r0, _0803FA68 @ =0x030004B0
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
_0803FA68: .4byte 0x030004B0
_0803FA6C:
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _0803FA8C @ =0x030004B4
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
_0803FA8C: .4byte 0x030004B4
_0803FA90:
	movs r0, #0
_0803FA92:
	add sp, #0x4c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803FA9C
sub_0803FA9C: @ 0x0803FA9C
	push {lr}
	sub sp, #0x28
	add r0, sp, #0x1c
	bl sub_08016E4C
	mov r0, sp
	bl GetStatBlock
	mov r1, sp
	ldr r0, _0803FAF0 @ =0x030004B0
	ldr r2, [r0]
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _0803FAF4
	mov r0, sp
	movs r3, #6
	ldrsh r1, [r0, r3]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _0803FAF4
	mov r0, sp
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _0803FAF4
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _0803FAF4
	movs r0, #0
	b _0803FAF6
	.align 2, 0
_0803FAF0: .4byte 0x030004B0
_0803FAF4:
	movs r0, #1
_0803FAF6:
	add sp, #0x28
	pop {r1}
	bx r1

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
	ldr r0, _0803FBBC @ =0x030004B0
	ldr r0, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBBC: .4byte 0x030004B0
_0803FBC0:
	ldr r0, _0803FBCC @ =0x030004B0
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBCC: .4byte 0x030004B0
_0803FBD0:
	ldr r0, _0803FBDC @ =0x030004B0
	ldr r0, [r0]
	movs r2, #4
	ldrsh r1, [r0, r2]
	b _0803FBE8
	.align 2, 0
_0803FBDC: .4byte 0x030004B0
_0803FBE0:
	ldr r0, _0803FBF4 @ =0x030004B0
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
_0803FBF4: .4byte 0x030004B0
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
	ldr r5, _0803FC38 @ =0x030004B0
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
_0803FC38: .4byte 0x030004B0
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
	ldr r0, _0803FCB4 @ =0x030004B4
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
	ldr r1, _0803FCB8 @ =0x0300047A
	movs r0, #0x4b
	strb r0, [r1]
	ldr r0, _0803FCBC @ =0x030004C0
	ldrb r1, [r4, #3]
	strb r1, [r0]
	ldr r0, _0803FCC0 @ =gMenuSelectedSlot
	strb r1, [r0, #3]
	b _0803FCCE
	.align 2, 0
_0803FCB4: .4byte 0x030004B4
_0803FCB8: .4byte 0x0300047A
_0803FCBC: .4byte 0x030004C0
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

	thumb_func_start sub_0803FCD8
sub_0803FCD8: @ 0x0803FCD8
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r1, _0803FD24 @ =0x0300047A
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803FD30
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0803FD20
	ldr r4, _0803FD28 @ =0x030004B4
	ldr r2, [r4]
	ldr r3, _0803FD2C @ =gMenuSelectedSlot
	ldrb r1, [r3, #3]
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldrb r0, [r3, #3]
	lsls r0, r0, #2
	adds r2, r2, r0
	strh r5, [r2, #6]
	mov r0, sp
	bl GetSkillBlock
	ldr r0, [r4]
	bl SetSkillBlock
	bl sub_08016DC0
	mov r0, sp
	bl SetSkillBlock
_0803FD20:
	movs r0, #1
	b _0803FD32
	.align 2, 0
_0803FD24: .4byte 0x0300047A
_0803FD28: .4byte 0x030004B4
_0803FD2C: .4byte gMenuSelectedSlot
_0803FD30:
	movs r0, #0
_0803FD32:
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

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
	ldr r2, _0803FD64 @ =0x030004B0
	b _0803FDB2
	.align 2, 0
_0803FD64: .4byte 0x030004B0
_0803FD68:
	cmp r0, #2
	beq _0803FD98
	cmp r0, #3
	beq _0803FDA8
	ldr r2, _0803FD74 @ =0x030004B0
	b _0803FDB2
	.align 2, 0
_0803FD74: .4byte 0x030004B0
_0803FD78:
	ldr r2, _0803FD84 @ =0x030004B0
	ldr r1, [r2]
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0803FDB2
	.align 2, 0
_0803FD84: .4byte 0x030004B0
_0803FD88:
	ldr r2, _0803FD94 @ =0x030004B0
	ldr r1, [r2]
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	b _0803FDB2
	.align 2, 0
_0803FD94: .4byte 0x030004B0
_0803FD98:
	ldr r2, _0803FDA4 @ =0x030004B0
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	b _0803FDB2
	.align 2, 0
_0803FDA4: .4byte 0x030004B0
_0803FDA8:
	ldr r2, _0803FDBC @ =0x030004B0
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
_0803FDBC: .4byte 0x030004B0
_0803FDC0:
	ldr r2, _0803FDDC @ =0x030004B4
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
_0803FDDC: .4byte 0x030004B4
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

	thumb_func_start sub_0803FE1C
sub_0803FE1C: @ 0x0803FE1C
	push {r4, lr}
	sub sp, #0x1c
	mov r0, sp
	bl GetStatBlock
	ldr r4, _0803FE68 @ =0x030004B0
	ldr r1, [r4]
	ldr r0, [sp, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0x14]
	mov r0, sp
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xc]
	mov r0, sp
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	ldr r3, _0803FE6C @ =0x0300047E
	mov r0, sp
	ldrh r2, [r3]
	ldrh r0, [r0, #0x18]
	cmp r2, r0
	beq _0803FE5E
	subs r0, r0, r2
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r3]
_0803FE5E:
	ldr r0, [r4]
	add sp, #0x1c
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803FE68: .4byte 0x030004B0
_0803FE6C: .4byte 0x0300047E

	thumb_func_start sub_0803FE70
sub_0803FE70: @ 0x0803FE70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r5, #0
	ldr r0, _0803FEE0 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
_0803FE88:
	movs r3, #0
	adds r4, r0, #1
_0803FE8C:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0803FE9A
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_0803FE9A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803FE8C
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0803FE88
	adds r6, r5, #0
	bl sub_08040D44
	mov r8, r0
	ldr r1, _0803FEE4 @ =0x0300047B
	ldrb r2, [r1]
	cmp r2, #0
	bne _0803FEC0
	b _0803FFD2
_0803FEC0:
	ldr r0, _0803FEE8 @ =0x0300047C
	mov sl, r1
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r2, r0
	bne _0803FF48
	ldr r0, _0803FEEC @ =0x0300048C
	ldr r0, [r0]
	cmp r0, #0
	beq _0803FEF0
	subs r2, r6, r0
	cmp r6, r0
	bhs _0803FEFE
	subs r2, r0, r6
	b _0803FEFE
	.align 2, 0
_0803FEE0: .4byte gMenuInventory
_0803FEE4: .4byte 0x0300047B
_0803FEE8: .4byte 0x0300047C
_0803FEEC: .4byte 0x0300048C
_0803FEF0:
	ldr r0, _0803FF08 @ =0x03000490
	ldr r0, [r0]
	mov r1, r8
	subs r2, r1, r0
	cmp r8, r0
	bhs _0803FEFE
	subs r2, r0, r1
_0803FEFE:
	cmp r2, #0x63
	bhi _0803FF0C
	movs r0, #0xa
	b _0803FF3E
	.align 2, 0
_0803FF08: .4byte 0x03000490
_0803FF0C:
	ldr r0, _0803FF18 @ =0x000003E7
	cmp r2, r0
	bhi _0803FF1C
	movs r0, #0x10
	b _0803FF3E
	.align 2, 0
_0803FF18: .4byte 0x000003E7
_0803FF1C:
	ldr r0, _0803FF28 @ =0x0000270F
	cmp r2, r0
	bhi _0803FF2C
	movs r0, #0x14
	b _0803FF3E
	.align 2, 0
_0803FF28: .4byte 0x0000270F
_0803FF2C:
	ldr r0, _0803FF38 @ =0x0001869F
	cmp r2, r0
	bhi _0803FF3C
	movs r0, #0x1a
	b _0803FF3E
	.align 2, 0
_0803FF38: .4byte 0x0001869F
_0803FF3C:
	movs r0, #0x1e
_0803FF3E:
	strb r0, [r7]
	ldr r1, _0803FF80 @ =0x0300047B
	ldrb r0, [r7]
	strb r0, [r1]
	mov sl, r1
_0803FF48:
	mov sb, sl
	mov r1, sb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803FFD2
	ldr r0, _0803FF84 @ =0x0300048C
	ldr r4, [r0]
	cmp r4, #0
	beq _0803FFB0
	cmp r6, r4
	bhs _0803FF8E
	subs r0, r4, r6
	ldrb r5, [r7]
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FF88
	mov r1, sb
	ldrb r0, [r1]
	subs r0, r5, r0
	muls r0, r2, r0
	subs r6, r4, r0
	b _0803FFB0
	.align 2, 0
_0803FF80: .4byte 0x0300047B
_0803FF84: .4byte 0x0300048C
_0803FF88:
	mov r0, sb
	strb r2, [r0]
	b _0803FFB0
_0803FF8E:
	subs r0, r6, r4
	ldrb r5, [r7]
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FFAA
	mov r1, sb
	ldrb r0, [r1]
	subs r0, r5, r0
	muls r0, r2, r0
	adds r6, r4, r0
	b _0803FFD2
_0803FFAA:
	mov r0, sb
	strb r2, [r0]
	b _0803FFD2
_0803FFB0:
	ldr r0, _0803FFF8 @ =0x03000490
	ldr r5, [r0]
	mov r1, r8
	subs r0, r5, r1
	ldrb r4, [r7]
	adds r1, r4, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0803FFD2
	mov r1, sl
	ldrb r0, [r1]
	subs r0, r4, r0
	muls r0, r2, r0
	subs r5, r5, r0
	mov r8, r5
_0803FFD2:
	ldr r0, [sp]
	cmp r0, #0
	beq _0803FFDA
	str r6, [r0]
_0803FFDA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0803FFE4
	mov r0, r8
	str r0, [r1]
_0803FFE4:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FFF8: .4byte 0x03000490

	thumb_func_start sub_0803FFFC
sub_0803FFFC: @ 0x0803FFFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08040010 @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	beq _08040018
	ldr r0, _08040014 @ =gUnknown_030004A8
	b _0804001A
	.align 2, 0
_08040010: .4byte gMenuPage
_08040014: .4byte gUnknown_030004A8
_08040018:
	ldr r0, _08040070 @ =gUnknown_030004A4
_0804001A:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
	ldr r1, _08040074 @ =0x0300047B
	mov r8, r1
_08040024:
	movs r3, #0
	adds r4, r0, #1
_08040028:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040036
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_08040036:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08040028
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08040024
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0
	beq _08040112
	ldr r0, _08040078 @ =0x0300047C
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r2, r0
	bne _080400BA
	ldr r0, _0804007C @ =0x03000490
	ldr r0, [r0]
	subs r2, r5, r0
	cmp r5, r0
	bhs _08040068
	subs r2, r0, r5
_08040068:
	cmp r2, #0x63
	bhi _08040080
	movs r0, #0xa
	b _080400B2
	.align 2, 0
_08040070: .4byte gUnknown_030004A4
_08040074: .4byte 0x0300047B
_08040078: .4byte 0x0300047C
_0804007C: .4byte 0x03000490
_08040080:
	ldr r0, _0804008C @ =0x000003E7
	cmp r2, r0
	bhi _08040090
	movs r0, #0x10
	b _080400B2
	.align 2, 0
_0804008C: .4byte 0x000003E7
_08040090:
	ldr r0, _0804009C @ =0x0000270F
	cmp r2, r0
	bhi _080400A0
	movs r0, #0x14
	b _080400B2
	.align 2, 0
_0804009C: .4byte 0x0000270F
_080400A0:
	ldr r0, _080400AC @ =0x0001869F
	cmp r2, r0
	bhi _080400B0
	movs r0, #0x1a
	b _080400B2
	.align 2, 0
_080400AC: .4byte 0x0001869F
_080400B0:
	movs r0, #0x1e
_080400B2:
	strb r0, [r1]
	ldrb r0, [r1]
	mov r2, r8
	strb r0, [r2]
_080400BA:
	mov r7, r8
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08040112
	ldr r0, _080400EC @ =0x03000490
	ldr r4, [r0]
	cmp r5, r4
	bhs _080400F4
	subs r0, r4, r5
	ldrb r6, [r1]
	adds r1, r6, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _080400F0
	ldrb r0, [r7]
	subs r0, r6, r0
	muls r0, r2, r0
	subs r5, r4, r0
	b _08040112
	.align 2, 0
_080400EC: .4byte 0x03000490
_080400F0:
	strb r2, [r7]
	b _08040112
_080400F4:
	subs r0, r5, r4
	ldrb r6, [r1]
	adds r1, r6, #0
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _0804010E
	ldrb r0, [r7]
	subs r0, r6, r0
	muls r0, r2, r0
	adds r5, r4, r0
	b _08040112
_0804010E:
	mov r0, r8
	strb r2, [r0]
_08040112:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08040120
sub_08040120: @ 0x08040120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	ldrb r0, [r6, #2]
	cmp r0, #2
	beq _08040158
	cmp r0, #2
	bgt _08040140
	cmp r0, #1
	beq _0804014A
	b _08040174
_08040140:
	cmp r0, #3
	beq _08040168
	cmp r0, #6
	beq _08040170
	b _08040174
_0804014A:
	ldr r0, _08040154 @ =gMenuWeapons
	ldr r7, [r0]
	movs r1, #1
	mov sl, r1
	b _08040174
	.align 2, 0
_08040154: .4byte gMenuWeapons
_08040158:
	ldr r0, _08040164 @ =gMenuEquipment
	ldr r7, [r0]
	movs r0, #1
	mov sl, r0
	b _08040174
	.align 2, 0
_08040164: .4byte gMenuEquipment
_08040168:
	ldr r0, _0804016C @ =gMenuInventory
	b _08040172
	.align 2, 0
_0804016C: .4byte gMenuInventory
_08040170:
	ldr r0, _080401DC @ =gUnknown_030004A4
_08040172:
	ldr r7, [r0]
_08040174:
	ldrb r2, [r6, #2]
	cmp r2, #5
	bne _0804017C
	b _080402A0
_0804017C:
	ldrh r1, [r6, #2]
	ldr r0, _080401E0 @ =0x00000302
	cmp r1, r0
	bne _08040186
	b _080402A0
_08040186:
	cmp r2, #4
	bne _0804018C
	b _08040288
_0804018C:
	cmp r2, #6
	bne _0804023C
	ldr r0, _080401E4 @ =gMenuPage
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #5
	beq _0804023C
	movs r5, #0
	ldr r0, _080401E8 @ =gMenuInventory
	ldr r2, [r0]
	movs r0, #0
	ldrb r1, [r6, #3]
	mov r8, r1
_080401A6:
	movs r3, #0
	adds r4, r0, #1
_080401AA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080401B8
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_080401B8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _080401AA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080401A6
	mov ip, r5
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #5
	beq _080401F0
	ldr r0, _080401EC @ =gUnknown_030004A8
	b _080401F2
	.align 2, 0
_080401DC: .4byte gUnknown_030004A4
_080401E0: .4byte 0x00000302
_080401E4: .4byte gMenuPage
_080401E8: .4byte gMenuInventory
_080401EC: .4byte gUnknown_030004A8
_080401F0:
	ldr r0, _08040238 @ =gUnknown_030004A4
_080401F2:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
_080401F8:
	movs r3, #0
	adds r4, r0, #1
_080401FC:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _0804020A
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_0804020A:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080401FC
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080401F8
	mov r0, ip
	adds r4, r0, r5
	mov r1, r8
	lsls r0, r1, #2
	adds r0, r7, r0
	bl sub_08040DB0
	cmp r4, r0
	bhs _0804023C
	movs r0, #0x61
	bl PlaySE
	b _080402A0
	.align 2, 0
_08040238: .4byte gUnknown_030004A4
_0804023C:
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r2, r0, r7
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080402A0
	ldr r1, _08040268 @ =gMenuSelectedSlot
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, _0804026C @ =gMenuSelectedItem
	str r2, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040270
	movs r0, #0x63
	bl PlaySE
	b _08040284
	.align 2, 0
_08040268: .4byte gMenuSelectedSlot
_0804026C: .4byte gMenuSelectedItem
_08040270:
	mov r0, sl
	cmp r0, #0
	bne _0804027E
	movs r0, #0x5e
	bl PlaySE
	b _08040284
_0804027E:
	movs r0, #0x80
	bl PlaySE
_08040284:
	movs r0, #1
	b _080402A2
_08040288:
	ldrb r0, [r6, #3]
	ldr r1, _080402B0 @ =gUnknown_03000494
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _080402A0
	movs r0, #0
	strh r0, [r1]
	bl ApplyMenuChanges
_080402A0:
	movs r0, #0
_080402A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080402B0: .4byte gUnknown_03000494

	thumb_func_start sub_080402B4
sub_080402B4: @ 0x080402B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	mov sb, r1
	movs r0, #1
	mov r8, r0
	ldr r1, _080402EC @ =gMenuSelectedSlot
	ldrh r0, [r6, #2]
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _080402F4
	bl sub_08040C54
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080402F0
	movs r0, #0x80
	bl PlaySE
	b _08040860
	.align 2, 0
_080402EC: .4byte gMenuSelectedSlot
_080402F0:
	movs r0, #0x5e
	b _0804085C
_080402F4:
	movs r7, #0
	movs r1, #0
	str r1, [sp, #0x1c]
	ldrb r0, [r6, #2]
	cmp r0, #2
	beq _08040324
	cmp r0, #2
	bgt _0804030A
	cmp r0, #1
	beq _08040314
	b _08040340
_0804030A:
	cmp r0, #3
	beq _08040334
	cmp r0, #6
	beq _0804033C
	b _08040340
_08040314:
	ldr r0, _08040320 @ =gMenuWeapons
	ldr r7, [r0]
	movs r2, #1
	str r2, [sp, #0x1c]
	b _08040340
	.align 2, 0
_08040320: .4byte gMenuWeapons
_08040324:
	ldr r0, _08040330 @ =gMenuEquipment
	ldr r7, [r0]
	movs r3, #1
	str r3, [sp, #0x1c]
	b _08040340
	.align 2, 0
_08040330: .4byte gMenuEquipment
_08040334:
	ldr r0, _08040338 @ =gMenuInventory
	b _0804033E
	.align 2, 0
_08040338: .4byte gMenuInventory
_0804033C:
	ldr r0, _0804039C @ =gUnknown_030004A4
_0804033E:
	ldr r7, [r0]
_08040340:
	ldrb r0, [r6, #2]
	cmp r0, #4
	bne _08040348
	b _080406D6
_08040348:
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _0804035A
	b _080404C2
_0804035A:
	adds r0, r6, #0
	adds r1, r7, #0
	bl CanSwapItems
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804036A
	b _08040864
_0804036A:
	movs r4, #0
	ldr r0, _080403A0 @ =gMenuSelectedSlot
	mov sl, r0
	ldr r1, _080403A4 @ =gMenuPage
	mov ip, r1
	mov r5, sl
_08040376:
	ldrb r0, [r5, #2]
	cmp r0, #3
	bne _080403B6
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _080403B6
	ldr r0, _080403A8 @ =gUnknown_03000494
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r1, r0, r1
	ldrh r2, [r1]
	ldrb r0, [r5, #3]
	adds r3, r0, #1
	cmp r2, r3
	bne _080403AC
	ldrb r0, [r6, #3]
	adds r0, #1
	strh r0, [r1]
	b _080403B6
	.align 2, 0
_0804039C: .4byte gUnknown_030004A4
_080403A0: .4byte gMenuSelectedSlot
_080403A4: .4byte gMenuPage
_080403A8: .4byte gUnknown_03000494
_080403AC:
	ldrb r0, [r6, #3]
	adds r0, #1
	cmp r2, r0
	bne _080403B6
	strh r3, [r1]
_080403B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08040376
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #5
	bne _080403DE
	mov r3, sl
	ldrb r0, [r3, #2]
	cmp r0, #6
	beq _080403DE
	ldrb r0, [r6, #2]
	cmp r0, #6
	bne _080403DE
	bl sub_0804096C
	bl ApplyMenuChanges
_080403DE:
	ldr r4, _08040410 @ =gMenuSelectedItem
	ldr r0, [r4]
	ldrh r1, [r0]
	ldr r0, _08040414 @ =0x00003FF0
	ands r0, r1
	movs r1, #0xc2
	lsls r1, r1, #3
	cmp r0, r1
	bne _08040418
	adds r0, r7, #0
	bl sub_0804134C
	cmp r0, #0
	beq _08040418
	adds r0, r7, #0
	bl sub_0804137C
	ldr r0, [r4]
	movs r1, #4
	bl bzero
	movs r4, #0xa
	mov r8, r4
	b _08040776
	.align 2, 0
_08040410: .4byte gMenuSelectedItem
_08040414: .4byte 0x00003FF0
_08040418:
	ldr r1, _0804046C @ =gMenuSelectedItem
	ldr r5, [r1]
	ldr r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ldr r4, [r7]
	adds r2, r1, #0
	cmp r0, #7
	bne _080404B8
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080404B8
	lsrs r3, r4, #0xf
	mov r1, sb
	ldr r0, [r1, #0xc]
	adds r1, r3, r0
	ldr r0, _08040470 @ =0x000186A0
	cmp r1, r0
	bls _08040480
	subs r3, r0, r3
	ldr r1, _08040474 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r4
	ldr r2, _08040478 @ =0xC3500000
	orrs r0, r2
	str r0, [r7]
	ldr r2, [r5]
	lsrs r0, r2, #0xf
	subs r0, r0, r3
	lsls r0, r0, #0xf
	ands r1, r2
	orrs r1, r0
	str r1, [r5]
	mov r2, sb
	ldr r0, [r2, #0xc]
	subs r0, r0, r3
	str r0, [r2, #0xc]
	ldr r1, _0804047C @ =gMenuHeldCount
	str r0, [r1]
	b _08040864
	.align 2, 0
_0804046C: .4byte gMenuSelectedItem
_08040470: .4byte 0x000186A0
_08040474: .4byte 0x00007FFF
_08040478: .4byte 0xC3500000
_0804047C: .4byte gMenuHeldCount
_08040480:
	lsls r1, r1, #0xf
	ldr r3, _080404AC @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r4
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080404B0 @ =gUnknown_03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _080404B4
	ldr r2, [r5]
	lsrs r1, r2, #0xf
	mov r4, sb
	ldr r0, [r4, #0xc]
	subs r1, r1, r0
	lsls r1, r1, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	str r0, [r5]
	b _08040776
	.align 2, 0
_080404AC: .4byte 0x00007FFF
_080404B0: .4byte gUnknown_03000479
_080404B4:
	adds r0, r5, #0
	b _08040606
_080404B8:
	ldr r0, [r2]
	ldr r2, [r0]
	str r4, [r0]
	str r2, [r7]
	b _08040776
_080404C2:
	ldr r0, _08040570 @ =gMenuSelectedItem
	ldr r1, [r0]
	adds r0, r6, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080404D4
	b _08040864
_080404D4:
	movs r4, #0
	ldr r0, _08040574 @ =gMenuSelectedSlot
	mov sl, r0
	mov r3, sl
_080404DC:
	ldrb r0, [r3, #2]
	cmp r0, #3
	bne _08040500
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _08040500
	ldr r0, _08040578 @ =gUnknown_03000494
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r2, r0, r1
	ldrh r1, [r2]
	ldrb r0, [r3, #3]
	adds r0, #1
	cmp r1, r0
	bne _08040500
	ldrb r0, [r6, #3]
	adds r0, #1
	strh r0, [r2]
_08040500:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080404DC
	ldr r0, _0804057C @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	bne _08040528
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #6
	beq _08040528
	ldrb r0, [r6, #2]
	cmp r0, #6
	bne _08040528
	bl sub_0804096C
	bl ApplyMenuChanges
_08040528:
	ldr r1, _0804057C @ =gMenuPage
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r1
	cmp r0, #2
	bhi _08040580
	ldrb r0, [r6, #2]
	cmp r0, #3
	beq _08040546
	cmp r0, #1
	beq _08040546
	cmp r0, #2
	bne _08040580
_08040546:
	ldr r1, _08040574 @ =gMenuSelectedSlot
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _08040580
	movs r2, #3
	mov r8, r2
	ldrb r0, [r1, #3]
	cmp r0, #8
	bhi _0804055A
	b _08040860
_0804055A:
	mov r3, ip
	ldrb r0, [r3]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0804056A
	b _08040860
_0804056A:
	movs r4, #9
	mov r8, r4
	b _08040860
	.align 2, 0
_08040570: .4byte gMenuSelectedItem
_08040574: .4byte gMenuSelectedSlot
_08040578: .4byte gUnknown_03000494
_0804057C: .4byte gMenuPage
_08040580:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #5
	beq _080405B8
	ldrh r1, [r6, #2]
	ldr r0, _080405B0 @ =0x00000C06
	cmp r1, r0
	bne _080405B8
	ldr r1, _080405B4 @ =gMenuSelectedSlot
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _080405A2
	cmp r0, #2
	bne _080405AC
	ldrb r0, [r1, #3]
	cmp r0, #2
	bhi _080405AC
_080405A2:
	bl sub_080414C8
	cmp r0, #0
	bne _080405AC
	b _08040864
_080405AC:
	movs r0, #2
	b _0804086C
	.align 2, 0
_080405B0: .4byte 0x00000C06
_080405B4: .4byte gMenuSelectedSlot
_080405B8:
	ldr r1, _08040610 @ =gMenuSelectedItem
	ldr r4, [r1]
	ldr r3, [r4]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1d
	adds r2, r1, #0
	cmp r0, #7
	bne _0804061C
	ldr r0, _08040614 @ =gUnknown_03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804061C
	lsrs r1, r3, #0xf
	mov r2, sb
	ldr r0, [r2, #0xc]
	subs r1, r1, r0
	lsls r1, r1, #0xf
	ldr r2, _08040618 @ =0x00007FFF
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	str r0, [r4]
	str r0, [r7]
	mov r3, sb
	ldr r1, [r3, #0xc]
	lsls r1, r1, #0xf
	ands r2, r0
	orrs r2, r1
	str r2, [r7]
	ldrb r0, [r6, #2]
	cmp r0, #5
	beq _080405FA
	b _08040776
_080405FA:
	adds r0, r2, #0
	bl DropItem
	movs r4, #5
	mov r8, r4
	adds r0, r7, #0
_08040606:
	movs r1, #4
	bl bzero
	b _08040776
	.align 2, 0
_08040610: .4byte gMenuSelectedItem
_08040614: .4byte gUnknown_03000479
_08040618: .4byte 0x00007FFF
_0804061C:
	ldrb r0, [r6, #2]
	cmp r0, #5
	bne _08040658
	ldr r4, _08040654 @ =gMenuSelectedItem
	ldr r0, [r4]
	bl GetCategory5Record
	cmp r0, #0
	beq _08040640
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040640
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #2]
_08040640:
	ldr r0, _08040654 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	bl DropItem
	movs r2, #5
	mov r8, r2
	bl sub_08040EC0
	b _08040776
	.align 2, 0
_08040654: .4byte gMenuSelectedItem
_08040658:
	ldrh r1, [r6, #2]
	ldr r0, _0804066C @ =0x00000302
	cmp r1, r0
	beq _08040670
	ldr r1, [r2]
	ldr r2, [r1]
	ldr r0, [r7]
	str r0, [r1]
	str r2, [r7]
	b _08040776
	.align 2, 0
_0804066C: .4byte 0x00000302
_08040670:
	bl sub_08007544
	cmp r0, #0
	beq _08040686
	ldr r0, _080406C8 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	beq _080406CC
_08040686:
	ldr r4, _080406C8 @ =gMenuSelectedItem
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	bne _0804069C
	bl sub_08007638
	cmp r0, #0
	bne _080406CC
_0804069C:
	ldr r0, [r4]
	bl UseItem
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r3, #7
	mov r8, r3
	cmp r0, #6
	beq _080406BA
	movs r4, #6
	mov r8, r4
_080406BA:
	cmp r1, #0
	beq _08040776
	bl sub_0804096C
	bl sub_08040EC0
	b _08040776
	.align 2, 0
_080406C8: .4byte gMenuSelectedItem
_080406CC:
	movs r0, #0x61
	bl PlaySE
	movs r0, #1
	b _0804086C
_080406D6:
	movs r4, #0
	ldr r5, _0804074C @ =gUnknown_03000494
	ldr r2, [r5]
_080406DC:
	lsls r0, r4, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08040706
	ldr r1, _08040750 @ =gMenuInventory
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	ldr r0, _08040754 @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r1, r0
	bne _08040706
	b _08040864
_08040706:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080406DC
	ldrb r0, [r6, #3]
	adds r4, r5, #0
	ldr r1, [r4]
	lsls r0, r0, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	beq _08040758
	ldr r1, _08040750 @ =gMenuInventory
	lsls r0, r0, #2
	subs r0, #4
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08040776
	adds r0, r6, #0
	adds r1, r7, #0
	bl CanSwapItems
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040744
	b _08040864
_08040744:
	ldrb r1, [r6, #3]
	ldr r0, [r4]
	b _0804076A
	.align 2, 0
_0804074C: .4byte gUnknown_03000494
_08040750: .4byte gMenuInventory
_08040754: .4byte gMenuSelectedItem
_08040758:
	ldr r0, _080407C8 @ =gMenuSelectedItem
	ldr r0, [r0]
	bl sub_08014EB4
	cmp r0, #0
	bne _08040766
	b _08040864
_08040766:
	ldrb r1, [r6, #3]
	ldr r0, [r5]
_0804076A:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, _080407CC @ =gMenuSelectedSlot
	ldrb r0, [r0, #3]
	adds r0, #1
	strh r0, [r1]
_08040776:
	bl ApplyMenuChanges
	bl sub_08016DC0
	ldr r4, _080407C8 @ =gMenuSelectedItem
	ldr r0, [r4]
	bl GetCategory5Record
	cmp r0, #0
	beq _0804079C
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804079C
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #2]
_0804079C:
	mov r2, r8
	cmp r2, #1
	bne _080407B8
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080407B8
	ldr r0, _080407D0 @ =gPlayerStats
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r6, [r6, #3]
	cmp r0, r6
	beq _080407B8
	movs r3, #0xd
	mov r8, r3
_080407B8:
	bl sub_08040C54
	ldr r0, _080407D4 @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #5
	beq _080407DC
	ldr r0, _080407D8 @ =gUnknown_030004A8
	b _080407DE
	.align 2, 0
_080407C8: .4byte gMenuSelectedItem
_080407CC: .4byte gMenuSelectedSlot
_080407D0: .4byte gPlayerStats
_080407D4: .4byte gMenuPage
_080407D8: .4byte gUnknown_030004A8
_080407DC:
	ldr r0, _0804082C @ =gUnknown_030004A4
_080407DE:
	ldr r2, [r0]
	movs r5, #0
	movs r0, #0
	ldr r6, _08040830 @ =0x03000488
_080407E6:
	movs r3, #0
	adds r4, r0, #1
_080407EA:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _080407F8
	lsrs r0, r1, #0xf
	adds r5, r5, r0
_080407F8:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080407EA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080407E6
	str r5, [r6]
	mov r4, r8
	cmp r4, #1
	beq _0804081C
	cmp r4, #0xb
	beq _0804081C
	cmp r4, #0xd
	bne _08040846
_0804081C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _08040834
	movs r0, #0x5e
	bl PlaySE
	b _08040860
	.align 2, 0
_0804082C: .4byte gUnknown_030004A4
_08040830: .4byte 0x03000488
_08040834:
	movs r0, #0x80
	bl PlaySE
	mov r1, r8
	cmp r1, #0xd
	beq _08040860
	movs r2, #0xb
	mov r8, r2
	b _08040860
_08040846:
	mov r3, r8
	cmp r3, #5
	bne _08040854
	movs r0, #0x60
	bl PlaySE
	b _08040860
_08040854:
	mov r4, r8
	cmp r4, #0xa
	bne _08040860
	movs r0, #0x80
_0804085C:
	bl PlaySE
_08040860:
	mov r0, r8
	b _0804086C
_08040864:
	movs r0, #0x61
	bl PlaySE
	movs r0, #0
_0804086C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0804087C
sub_0804087C: @ 0x0804087C
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	cmp r0, #2
	beq _080408A0
	cmp r0, #2
	bgt _0804088E
	cmp r0, #1
	beq _08040898
	b _080408B4
_0804088E:
	cmp r0, #3
	beq _080408A8
	cmp r0, #6
	beq _080408B0
	b _080408B4
_08040898:
	ldr r0, _0804089C @ =gMenuWeapons
	b _080408B2
	.align 2, 0
_0804089C: .4byte gMenuWeapons
_080408A0:
	ldr r0, _080408A4 @ =gMenuEquipment
	b _080408B2
	.align 2, 0
_080408A4: .4byte gMenuEquipment
_080408A8:
	ldr r0, _080408AC @ =gMenuInventory
	b _080408B2
	.align 2, 0
_080408AC: .4byte gMenuInventory
_080408B0:
	ldr r0, _080408C8 @ =gUnknown_030004A4
_080408B2:
	ldr r1, [r0]
_080408B4:
	ldrb r0, [r2, #2]
	cmp r0, #5
	beq _080408FC
	cmp r0, #4
	beq _080408CC
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r1, r0, r1
	b _080408E6
	.align 2, 0
_080408C8: .4byte gUnknown_030004A4
_080408CC:
	ldrb r0, [r2, #3]
	ldr r1, _080408F4 @ =gUnknown_03000494
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	beq _080408FC
	ldr r1, _080408F8 @ =gMenuInventory
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	subs r1, r0, #4
_080408E6:
	ldr r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _080408FC
	adds r0, r1, #0
	b _080408FE
	.align 2, 0
_080408F4: .4byte gUnknown_03000494
_080408F8: .4byte gMenuInventory
_080408FC:
	movs r0, #0
_080408FE:
	bx lr

	thumb_func_start sub_08040900
sub_08040900: @ 0x08040900
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804091C @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #7
	bne _08040920
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800FE5C
	adds r2, r0, #0
	lsrs r2, r2, #1
	b _08040964
	.align 2, 0
_0804091C: .4byte gMenuPage
_08040920:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800FE5C
	adds r2, r0, #0
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08040948
	cmp r0, #3
	bgt _0804093E
	cmp r0, #2
	beq _08040948
	b _08040954
_0804093E:
	cmp r0, #4
	beq _08040948
	cmp r0, #5
	beq _0804094E
	b _08040954
_08040948:
	lsls r0, r1, #5
	lsrs r0, r0, #0x1f
	b _08040956
_0804094E:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1f
	b _08040956
_08040954:
	movs r0, #0
_08040956:
	cmp r0, #0
	bne _08040962
	cmp r2, #0xa
	bls _08040962
	lsrs r2, r2, #3
	b _08040964
_08040962:
	movs r2, #1
_08040964:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0804096C
sub_0804096C: @ 0x0804096C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _080409F0 @ =gMenuInventory
	ldr r2, [r0]
	movs r1, #0
	ldr r0, _080409F4 @ =gMenuSelectedSlot
	mov ip, r0
	ldr r0, _080409F8 @ =gUnknown_03000494
	mov r8, r0
_08040982:
	movs r3, #0
	adds r6, r1, #1
	lsls r0, r1, #2
	adds r4, r0, r1
_0804098A:
	ldr r1, [r2]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _080409BC
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	ldr r0, _080409FC @ =gMenuSelectedItem
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r1, r0
	bne _080409BC
	mov r1, ip
	ldrb r0, [r1, #3]
	adds r1, r3, r4
	cmp r0, r1
	beq _080409BC
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080409BC:
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0804098A
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08040982
	movs r3, #0
	mov r6, r8
	ldr r4, _080409F4 @ =gMenuSelectedSlot
_080409D6:
	ldr r1, [r6]
	lsls r0, r3, #1
	adds r2, r0, r1
	ldrh r1, [r2]
	ldrb r0, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bne _08040A02
	cmp r5, #0
	bne _08040A00
	strh r5, [r2]
	b _08040A02
	.align 2, 0
_080409F0: .4byte gMenuInventory
_080409F4: .4byte gMenuSelectedSlot
_080409F8: .4byte gUnknown_03000494
_080409FC: .4byte gMenuSelectedItem
_08040A00:
	strh r7, [r2]
_08040A02:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _080409D6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CanPutItemInSlot
CanPutItemInSlot: @ 0x08040A18
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl CanEquipItem
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r5, #2]
	subs r0, #1
	cmp r0, #5
	bhi _08040B24
	lsls r0, r0, #2
	ldr r1, _08040A3C @ =_08040A40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040A3C: .4byte _08040A40
_08040A40: @ jump table
	.4byte _08040A58 @ case 0
	.4byte _08040A70 @ case 1
	.4byte _08040A66 @ case 2
	.4byte _08040ADC @ case 3
	.4byte _08040A66 @ case 4
	.4byte _08040AFC @ case 5
_08040A58:
	ldr r0, [r4]
	ldr r1, _08040A6C @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x20
	bne _08040B24
	cmp r3, #0
	beq _08040B24
_08040A66:
	movs r0, #1
	b _08040B26
	.align 2, 0
_08040A6C: .4byte REG_SOUND3CNT_L
_08040A70:
	ldrb r0, [r5, #3]
	adds r2, r0, #0
	cmp r2, #0
	bne _08040A86
	ldr r0, [r4]
	ldr r1, _08040AD4 @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x40
	bne _08040A86
	cmp r3, #0
	bne _08040A66
_08040A86:
	cmp r2, #1
	bne _08040A98
	ldr r0, [r4]
	ldr r1, _08040AD4 @ =REG_SOUND3CNT_L
	ands r0, r1
	cmp r0, #0x30
	bne _08040A98
	cmp r3, #0
	bne _08040A66
_08040A98:
	cmp r2, #2
	bne _08040AA6
	ldrh r1, [r4]
	ldr r0, _08040AD8 @ =0x00008070
	ands r0, r1
	cmp r0, #0x50
	beq _08040A66
_08040AA6:
	cmp r2, #3
	bne _08040B24
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08040B24
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	subs r0, #0x15
	cmp r0, #5
	bls _08040B24
	bl sub_08007544
	cmp r0, #0
	beq _08040A66
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	cmp r0, #6
	beq _08040B24
	b _08040A66
	.align 2, 0
_08040AD4: .4byte REG_SOUND3CNT_L
_08040AD8: .4byte 0x00008070
_08040ADC:
	ldr r1, [r4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _08040B24
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x19
	subs r0, #0x15
	cmp r0, #5
	bls _08040B24
	adds r0, r4, #0
	bl sub_08014EB4
	cmp r0, #0
	beq _08040B24
	b _08040A66
_08040AFC:
	ldr r0, _08040B1C @ =gMenuPage
	ldrb r0, [r0]
	cmp r0, #2
	blt _08040B24
	cmp r0, #4
	bgt _08040B20
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08040B24
	ldrb r0, [r5, #3]
	cmp r0, #0xc
	bne _08040B24
	b _08040A66
	.align 2, 0
_08040B1C: .4byte gMenuPage
_08040B20:
	cmp r0, #5
	beq _08040A66
_08040B24:
	movs r0, #0
_08040B26:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08040B2C
sub_08040B2C: @ 0x08040B2C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _08040B4C @ =gMenuSelectedItem
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08040BEE
	movs r4, #0
	ldrb r0, [r2, #2]
	cmp r0, #2
	beq _08040B64
	cmp r0, #2
	bgt _08040B50
	cmp r0, #1
	beq _08040B5A
	b _08040B78
	.align 2, 0
_08040B4C: .4byte gMenuSelectedItem
_08040B50:
	cmp r0, #3
	beq _08040B6C
	cmp r0, #6
	beq _08040B74
	b _08040B78
_08040B5A:
	ldr r0, _08040B60 @ =gMenuWeapons
	b _08040B76
	.align 2, 0
_08040B60: .4byte gMenuWeapons
_08040B64:
	ldr r0, _08040B68 @ =gMenuEquipment
	b _08040B76
	.align 2, 0
_08040B68: .4byte gMenuEquipment
_08040B6C:
	ldr r0, _08040B70 @ =gMenuInventory
	b _08040B76
	.align 2, 0
_08040B70: .4byte gMenuInventory
_08040B74:
	ldr r0, _08040BCC @ =gUnknown_030004A4
_08040B76:
	ldr r4, [r0]
_08040B78:
	ldrb r0, [r2, #2]
	cmp r0, #4
	beq _08040BEE
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08040BDC
	ldr r1, [r5]
	adds r0, r2, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08040BC8
	ldr r0, _08040BD0 @ =gMenuSelectedSlot
	adds r1, r4, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08040BC8
	ldr r0, [r5]
	ldr r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08040BD8
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08040BD8
	ldr r0, _08040BD4 @ =gUnknown_03000479
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040BD8
_08040BC8:
	movs r0, #0
	b _08040BE6
	.align 2, 0
_08040BCC: .4byte gUnknown_030004A4
_08040BD0: .4byte gMenuSelectedSlot
_08040BD4: .4byte gUnknown_03000479
_08040BD8:
	movs r0, #1
	b _08040BE6
_08040BDC:
	ldr r1, [r5]
	adds r0, r2, #0
	bl CanPutItemInSlot
	lsls r0, r0, #0x18
_08040BE6:
	cmp r0, #0
	beq _08040BEE
	movs r0, #1
	b _08040BF0
_08040BEE:
	movs r0, #0
_08040BF0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
