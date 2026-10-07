	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08013AF8
sub_08013AF8: @ 0x08013AF8
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _08013B1C @ =0x03003D76
_08013B00:
	ldrh r0, [r3]
	lsls r1, r2, #1
	adds r1, r1, r4
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #2
	cmp r2, #2
	bls _08013B00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B1C: .4byte 0x03003D76

	thumb_func_start sub_08013B20
sub_08013B20: @ 0x08013B20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl GetPlayerClass
	lsls r2, r0, #3
	movs r3, #0
	movs r1, #2
	ldr r0, _08013B6C @ =0x03003D08
	movs r7, #1
	ldr r4, [r0]
_08013B36:
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08013B42
	adds r3, #1
_08013B42:
	adds r1, #1
	cmp r1, #7
	bls _08013B36
	adds r2, r2, r3
	movs r0, #0xe0
	lsls r0, r0, #0xc
	orrs r2, r0
	adds r0, r2, #0
	bl GetDataRecord
	adds r1, r0, #0
	cmp r5, #1
	beq _08013B7A
	cmp r5, #1
	blo _08013B70
	cmp r5, #2
	beq _08013B84
	movs r0, #0
	str r0, [r6]
	b _08013B8C
	.align 2, 0
_08013B6C: .4byte 0x03003D08
_08013B70:
	ldr r0, [r1, #4]
	adds r0, r0, r1
	str r0, [r6]
	ldrb r0, [r1]
	b _08013B8C
_08013B7A:
	ldr r0, [r1, #8]
	adds r0, r0, r1
	str r0, [r6]
	ldrb r0, [r1, #1]
	b _08013B8C
_08013B84:
	ldr r0, [r1, #0xc]
	adds r0, r0, r1
	str r0, [r6]
	ldrb r0, [r1, #2]
_08013B8C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013B94
sub_08013B94: @ 0x08013B94
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #1
	beq _08013BC0
	cmp r0, #1
	blo _08013BA6
	cmp r0, #2
	beq _08013BDC
	b _08013BF2
_08013BA6:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BB8
	ldr r0, _08013BB4 @ =0x030063AC
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BB4: .4byte 0x030063AC
_08013BB8:
	ldr r3, _08013BBC @ =0x03003EEC
	b _08013BF2
	.align 2, 0
_08013BBC: .4byte 0x03003EEC
_08013BC0:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BD4
	ldr r0, _08013BD0 @ =0x030063B8
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BD0: .4byte 0x030063B8
_08013BD4:
	ldr r3, _08013BD8 @ =0x03003F1C
	b _08013BF2
	.align 2, 0
_08013BD8: .4byte 0x03003F1C
_08013BDC:
	bl sub_080074F0
	cmp r0, #0
	beq _08013BF0
	ldr r0, _08013BEC @ =0x030063A8
	ldr r3, [r0]
	b _08013BF2
	.align 2, 0
_08013BEC: .4byte 0x030063A8
_08013BF0:
	ldr r3, _08013C08 @ =0x03003F4C
_08013BF2:
	movs r2, #0
	adds r1, r4, #0
_08013BF6:
	ldm r3!, {r0}
	stm r1!, {r0}
	adds r2, #1
	cmp r2, #0xb
	bls _08013BF6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013C08: .4byte 0x03003F4C
_08013C0C:
	.byte 0x01, 0x1C, 0x3B, 0x29
	.byte 0x00, 0xD9, 0x00, 0x21, 0x02, 0x48, 0x89, 0x00, 0xEC, 0x30, 0x09, 0x18, 0x08, 0x68, 0x70, 0x47
	.byte 0x10, 0x3D, 0x00, 0x03

	thumb_func_start GetStorage
GetStorage: @ 0x08013C24
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _08013C44 @ =0x03003DFC
_08013C2A:
	adds r0, r1, #0
	cmp r1, #0x3b
	bls _08013C32
	movs r0, #0
_08013C32:
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0x3b
	bls _08013C2A
	bx lr
	.align 2, 0
_08013C44: .4byte 0x03003DFC
_08013C48:
	.byte 0x0A, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x3B, 0x29
	.byte 0x00, 0xD9, 0x00, 0x21, 0x03, 0x48, 0x89, 0x00, 0xEC, 0x30, 0x09, 0x18, 0x10, 0x68, 0x08, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0x3D, 0x00, 0x03

	thumb_func_start SetStorage
SetStorage: @ 0x08013C68
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _08013C80 @ =gPlayerStats
	adds r3, r0, #0
	adds r3, #0xec
_08013C72:
	ldm r2!, {r0}
	stm r3!, {r0}
	adds r1, #1
	cmp r1, #0x3b
	bls _08013C72
	bx lr
	.align 2, 0
_08013C80: .4byte gPlayerStats

	thumb_func_start InitFieldItems
InitFieldItems: @ 0x08013C84
	push {r4, lr}
	ldr r4, _08013CCC @ =gFieldItems
	movs r0, #0xd2
	lsls r0, r0, #1
	bl Alloc
	str r0, [r4]
	ldr r4, _08013CD0 @ =0x030063AC
	movs r0, #0x30
	bl Alloc
	str r0, [r4]
	ldr r4, _08013CD4 @ =0x030063B8
	movs r0, #0x30
	bl Alloc
	str r0, [r4]
	ldr r4, _08013CD8 @ =0x030063A8
	movs r0, #0x30
	bl Alloc
	str r0, [r4]
	ldr r1, _08013CDC @ =0x030063B4
	movs r0, #1
	str r0, [r1]
	ldr r1, _08013CE0 @ =0x030063BC
	movs r0, #0
	str r0, [r1]
	bl sub_08013CE4
	bl sub_08014CB8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013CCC: .4byte gFieldItems
_08013CD0: .4byte 0x030063AC
_08013CD4: .4byte 0x030063B8
_08013CD8: .4byte 0x030063A8
_08013CDC: .4byte 0x030063B4
_08013CE0: .4byte 0x030063BC

	thumb_func_start sub_08013CE4
sub_08013CE4: @ 0x08013CE4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08013D2C @ =gFieldItems
	ldr r2, [r0]
	ldr r1, _08013D30 @ =0x030063B4
	movs r0, #1
	str r0, [r1]
	ldr r1, _08013D34 @ =0x030063BC
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	ldr r5, _08013D38 @ =0x7FFFFFFF
	movs r4, #0
	ldr r0, _08013D3C @ =0xFFFF8000
	mov ip, r0
	movs r7, #5
	ldr r6, _08013D40 @ =0x00007FFF
_08013D04:
	str r5, [r2]
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r7, [r2, #0x14]
	ldrh r0, [r2, #0x18]
	mov r1, ip
	ands r1, r0
	strh r1, [r2, #0x18]
	ldr r0, [r2, #0x18]
	ands r0, r6
	str r0, [r2, #0x18]
	adds r3, #1
	adds r2, #0x1c
	cmp r3, #0xe
	bls _08013D04
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D2C: .4byte gFieldItems
_08013D30: .4byte 0x030063B4
_08013D34: .4byte 0x030063BC
_08013D38: .4byte 0x7FFFFFFF
_08013D3C: .4byte 0xFFFF8000
_08013D40: .4byte 0x00007FFF

	thumb_func_start FindFieldItemNear
FindFieldItemNear: @ 0x08013D44
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r0, _08013D88 @ =gFieldItems
	ldr r3, [r0]
	movs r2, #0
_08013D52:
	ldr r0, [r3, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08013D8C
	ldr r0, [r3]
	subs r0, r6, r0
	asrs r1, r0, #0xc
	cmp r1, #0
	bge _08013D68
	rsbs r1, r1, #0
_08013D68:
	ldr r0, [r3, #4]
	subs r0, r5, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08013D74
	rsbs r0, r0, #0
_08013D74:
	cmp r1, #7
	bgt _08013D8C
	cmp r0, #7
	bgt _08013D8C
	ldr r0, [r3, #8]
	cmp r4, r0
	bne _08013D8C
	adds r0, r3, #0
	b _08013D96
	.align 2, 0
_08013D88: .4byte gFieldItems
_08013D8C:
	adds r2, #1
	adds r3, #0x1c
	cmp r2, #0xe
	bls _08013D52
	movs r0, #0
_08013D96:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013D9C
sub_08013D9C: @ 0x08013D9C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r0, _08013DF0 @ =gFieldItems
	ldr r1, [r0]
	movs r2, #0
	ldr r0, _08013DF4 @ =gFrameCounter
	ldr r4, [r0]
	movs r5, #1
	ands r4, r5
_08013DB2:
	adds r0, r2, #0
	ands r0, r5
	cmp r4, r0
	bne _08013DF8
	ldr r0, [r1, #0xc]
	ands r0, r5
	cmp r0, #0
	beq _08013DF8
	ldr r0, [r1]
	mov r3, ip
	subs r0, r3, r0
	asrs r3, r0, #0xc
	cmp r3, #0
	bge _08013DD0
	rsbs r3, r3, #0
_08013DD0:
	ldr r0, [r1, #4]
	subs r0, r7, r0
	asrs r0, r0, #0xc
	cmp r0, #0
	bge _08013DDC
	rsbs r0, r0, #0
_08013DDC:
	cmp r3, #7
	bgt _08013DF8
	cmp r0, #7
	bgt _08013DF8
	ldr r0, [r1, #8]
	cmp r6, r0
	bne _08013DF8
	adds r0, r1, #0
	b _08013E02
	.align 2, 0
_08013DF0: .4byte gFieldItems
_08013DF4: .4byte gFrameCounter
_08013DF8:
	adds r2, #1
	adds r1, #0x1c
	cmp r2, #0xe
	bls _08013DB2
	movs r0, #0
_08013E02:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08013E08:
	.byte 0x03, 0x49, 0x09, 0x68, 0x40, 0x1A, 0x03, 0x49
	.byte 0x48, 0x43, 0x80, 0x10, 0x70, 0x47, 0x00, 0x00, 0xB0, 0x63, 0x00, 0x03, 0xB7, 0x6D, 0xDB, 0xB6

	thumb_func_start sub_08013E20
sub_08013E20: @ 0x08013E20
	adds r2, r0, #0
	cmp r2, #0
	bne _08013E2A
	movs r0, #0
	b _08013E3E
_08013E2A:
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08013E3C
	movs r0, #0
	str r0, [r2, #0xc]
	movs r0, #5
	str r0, [r2, #0x14]
_08013E3C:
	movs r0, #1
_08013E3E:
	bx lr

	thumb_func_start sub_08013E40
sub_08013E40: @ 0x08013E40
	adds r3, r0, #0
	cmp r3, #0
	bne _08013E4A
	movs r0, #0
	b _08013E5E
_08013E4A:
	ldr r2, [r3, #0xc]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013E5C
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0xc]
	str r1, [r3, #0x14]
_08013E5C:
	movs r0, #1
_08013E5E:
	bx lr

	thumb_func_start sub_08013E60
sub_08013E60: @ 0x08013E60
	adds r2, r0, #0
	cmp r2, #0
	bne _08013E6A
	movs r0, #0
	b _08013E7E
_08013E6A:
	ldr r0, [r2, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013E7C
	movs r0, #1
	str r0, [r2, #0xc]
	movs r0, #5
	str r0, [r2, #0x14]
_08013E7C:
	movs r0, #1
_08013E7E:
	bx lr
_08013E80:
	.byte 0x05, 0x48, 0x00, 0x21, 0x02, 0x1C, 0x88, 0x32, 0x10, 0x78, 0x40, 0x06, 0x40, 0x0F, 0x00, 0x28
	.byte 0x04, 0xD1, 0x08, 0x1C, 0x08, 0xE0, 0x00, 0x00, 0x10, 0x3D, 0x00, 0x03, 0x04, 0x32, 0x01, 0x31
	.byte 0x18, 0x29, 0xF1, 0xD9, 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
