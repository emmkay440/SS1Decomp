	.include "asm/macros.inc"

	.syntax unified
	.text

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
	ldr r4, _0803F828 @ =gMenuStatBlock
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F82C @ =gMenuSavedStatPoints
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F830 @ =gMenuSkillBlock
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F834 @ =gMenuSavedSkillPoints
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
_0803F828: .4byte gMenuStatBlock
_0803F82C: .4byte gMenuSavedStatPoints
_0803F830: .4byte gMenuSkillBlock
_0803F834: .4byte gMenuSavedSkillPoints
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
	bl GetStorage
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
	ldr r4, _0803F8E8 @ =gMenuStatBlock
	movs r0, #0x1c
	bl Alloc
	str r0, [r4]
	movs r1, #0x1c
	bl bzero
	ldr r0, [r4]
	bl GetStatBlock
	ldr r1, _0803F8EC @ =gMenuSavedStatPoints
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	strh r0, [r1]
	ldr r4, _0803F8F0 @ =gMenuSkillBlock
	movs r0, #0x24
	bl Alloc
	str r0, [r4]
	movs r1, #0x24
	bl bzero
	ldr r0, [r4]
	bl GetSkillBlock
	ldr r1, _0803F8F4 @ =gMenuSavedSkillPoints
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r1]
	b _0803F912
	.align 2, 0
_0803F8E4: .4byte gMenuInventory
_0803F8E8: .4byte gMenuStatBlock
_0803F8EC: .4byte gMenuSavedStatPoints
_0803F8F0: .4byte gMenuSkillBlock
_0803F8F4: .4byte gMenuSavedSkillPoints
_0803F8F8:
	cmp r1, #9
	bne _0803F912
	ldr r4, _0803F920 @ =gUnknown_030004B8
	movs r0, #4
	bl Alloc
	str r0, [r4]
	movs r1, #4
	bl bzero
	ldr r0, [r4]
	bl GetOptions
_0803F912:
	bl sub_08040D44
	ldr r1, _0803F924 @ =gUnknown_03000488
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F920: .4byte gUnknown_030004B8
_0803F924: .4byte gUnknown_03000488

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
	bl SetStorage
	b _0803F9CA
	.align 2, 0
_0803F9AC: .4byte gUnknown_030004A4
_0803F9B0:
	ldrb r0, [r5]
	cmp r0, #9
	bne _0803F9CA
_0803F9B6:
	ldr r4, _0803F9D0 @ =gUnknown_030004B8
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
_0803F9D0: .4byte gUnknown_030004B8

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
