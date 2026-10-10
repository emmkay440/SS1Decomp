	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_0803BEFC
sub_0803BEFC: @ 0x0803BEFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803BF34 @ =0xFFFFFD90
	add sp, r4
	mov sl, r0
	ldr r0, _0803BF38 @ =gUnknown_030063D8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r6, #0
	ldr r0, [r0]
	ldrh r0, [r0, #0xc]
	movs r2, #0xfe
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x26c]
	cmp r6, r0
	bhs _0803BF4E
	adds r2, r0, #0
_0803BF26:
	ldrh r0, [r1, #2]
	cmp r0, #2
	bne _0803BF3C
	ldr r0, [r1, #4]
	adds r3, r1, r0
	b _0803BF46
	.align 2, 0
_0803BF34: .4byte 0xFFFFFD90
_0803BF38: .4byte gUnknown_030063D8
_0803BF3C:
	cmp r0, #3
	bne _0803BF46
	ldr r0, [r1, #4]
	adds r0, r1, r0
	str r0, [sp, #0x210]
_0803BF46:
	adds r6, #1
	adds r1, #8
	cmp r6, r2
	blo _0803BF26
_0803BF4E:
	ldrh r0, [r3, #4]
	bl sub_0800EA5C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r0, r1
	bl GetDataRecord
	str r0, [sp, #0x20c]
	bl sub_08001EC4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0
	movs r0, #0xff
	mov r3, sl
	strh r0, [r3, #2]
	movs r0, #0xbd
	lsls r0, r0, #0xc
	str r0, [r3, #0x10]
	movs r0, #0xd4
	lsls r0, r0, #0xa
	str r0, [r3, #0x14]
	ldr r0, _0803C174 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r3, #0x26]
	strh r2, [r3, #8]
	strh r2, [r3, #0xa]
	strh r2, [r3, #0xc]
	strh r2, [r3, #0x28]
	str r2, [r3, #0x30]
	mov r1, sl
	adds r1, #0x64
	ldr r0, [sp, #0x20c]
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r6, r7}
	stm r1!, {r6, r7}
	mov r0, sl
	adds r0, #0x48
	str r0, [sp, #0x234]
	strh r2, [r0]
	mov r1, sl
	adds r1, #0x4a
	str r1, [sp, #0x238]
	strh r2, [r1]
	movs r3, #0x4c
	add r3, sl
	mov r8, r3
	strh r2, [r3]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sl
	str r0, [r4, #0x2c]
	mov r7, sl
	adds r7, #0x72
	ldrh r4, [r7]
	ldr r6, _0803C178 @ =0x080FB740
	subs r5, #1
	lsls r5, r5, #2
	adds r0, r5, r6
	ldrh r0, [r0]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7]
	movs r0, #0x6e
	add r0, sl
	mov sb, r0
	ldrh r4, [r0]
	adds r6, #2
	adds r5, r5, r6
	ldrh r0, [r5]
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	mov r1, sb
	strh r4, [r1]
	ldrh r0, [r7]
	mov r2, sl
	strh r0, [r2, #0x38]
	mov r0, sl
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	ldr r3, [sp, #0x20c]
	ldr r0, [r3, #0x28]
	ldrh r1, [r3, #0x1a]
	bl sub_0800CAC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x218]
	ldr r4, [sp, #0x20c]
	ldr r1, [r4, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x20
	movs r2, #5
	bl sub_08026ADC
	ldr r0, [sp, #0x218]
	adds r0, #0x15
	ldrh r2, [r4, #0x1a]
	lsls r2, r2, #5
	ldr r1, [sp, #0x2c]
	adds r1, r1, r2
	movs r2, #2
	bl LoadPalette
	add r1, sp, #0x20
	ldr r0, [sp, #0x218]
	adds r0, #5
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x218]
	adds r0, #6
	strb r0, [r1, #0x1d]
	movs r6, #0
	ldr r7, [sp, #0x234]
	str r7, [sp, #0x254]
	ldr r0, [sp, #0x238]
	str r0, [sp, #0x258]
	mov sb, r8
	add r5, sp, #0x124
	ldr r7, _0803C17C @ =0x080FBD60
_0803C062:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	adds r4, r5, r4
	ldm r7!, {r1}
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08026ADC
	movs r0, #5
	strb r0, [r4, #0x1c]
	movs r0, #6
	strb r0, [r4, #0x1d]
	movs r0, #7
	strb r0, [r4, #0x1e]
	adds r4, #0x21
	movs r0, #0xd
	strb r0, [r4]
	adds r6, #1
	cmp r6, #2
	bls _0803C062
	bl sub_0803F060
	ldr r1, _0803C180 @ =0x03006820
	movs r0, #0x80
	str r0, [r1]
	ldr r1, _0803C184 @ =0x03006824
	movs r0, #0
	str r0, [r1]
	bl sub_08033DF4
	bl sub_08007544
	cmp r0, #0
	bne _0803C0EC
	bl sub_080075AC
	cmp r0, #0
	bne _0803C0EC
	ldr r5, _0803C188 @ =gPlayers
	movs r4, #0xd4
_0803C0B8:
	bl WaitFrame
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	bne _0803C0B8
	bl GetMultiplayerId
	ldr r5, _0803C188 @ =gPlayers
	movs r4, #0xd4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	ldrh r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #5
	strh r1, [r0, #0xa]
_0803C0EC:
	mov r0, sl
	bl sub_0803F0B0
	mov r0, sl
	bl sub_0803F0B0
	mov r0, sl
	bl sub_0803F0B0
	ldr r0, [sp, #0x26c]
	movs r1, #0x51
	bl sub_0802934C
	add r0, sp, #0x1fc
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C11A
	add r4, sp, #0x1fc
_0803C110:
	bl WaitFrame
	ldr r0, [r4]
	cmp r0, #0
	bne _0803C110
_0803C11A:
	ldr r1, _0803C18C @ =0x0000FFFF
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x220]
	movs r7, #0
_0803C124:
	movs r0, #9
	mov r3, sl
	strh r0, [r3, #0xa]
	bl sub_08007750
	cmp r0, #0
	beq _0803C134
	b _0803C3EC
_0803C134:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C13E
	b _0803C3EC
_0803C13E:
	ldr r0, _0803C190 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C150
	b _0803C3EC
_0803C150:
	bl sub_08007578
	cmp r0, #0
	beq _0803C15A
	b _0803C3EC
_0803C15A:
	bl sub_080271D0
	cmp r0, #0
	beq _0803C164
	b _0803C28A
_0803C164:
	cmp r7, #4
	bls _0803C16A
	b _0803C28A
_0803C16A:
	lsls r0, r7, #2
	ldr r1, _0803C194 @ =_0803C198
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C174: .4byte gMapLayer_03003910
_0803C178: .4byte 0x080FB740
_0803C17C: .4byte 0x080FBD60
_0803C180: .4byte 0x03006820
_0803C184: .4byte 0x03006824
_0803C188: .4byte gPlayers
_0803C18C: .4byte 0x0000FFFF
_0803C190: .4byte gUnknown_030063D8
_0803C194: .4byte _0803C198
_0803C198: @ jump table
	.4byte _0803C1AC @ case 0
	.4byte _0803C1DC @ case 1
	.4byte _0803C250 @ case 2
	.4byte _0803C25C @ case 3
	.4byte _0803C26C @ case 4
_0803C1AC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C1D2
	bl sub_080075AC
	cmp r0, #0
	bne _0803C1D2
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803C1D8 @ =0x00090080
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
_0803C1D2:
	movs r7, #1
	b _0803C28A
	.align 2, 0
_0803C1D8: .4byte 0x00090080
_0803C1DC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C22C
	bl sub_080075AC
	adds r4, r0, #0
	cmp r4, #0
	bne _0803C22C
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	beq _0803C28A
	bl GetMultiplayerId
	ldr r2, _0803C21C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803C220 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r2, _0803C224 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r0, _0803C228 @ =0x03006820
	str r4, [r0]
	b _0803C23C
	.align 2, 0
_0803C21C: .4byte gPlayers
_0803C220: .4byte 0x0000FFFE
_0803C224: .4byte gMapLayer_03003910
_0803C228: .4byte 0x03006820
_0803C22C:
	ldr r2, _0803C248 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	ldr r1, _0803C24C @ =0x03006820
	movs r0, #0
	str r0, [r1]
_0803C23C:
	ldr r0, [sp, #0x26c]
	movs r1, #0x52
	bl sub_0802934C
	movs r7, #2
	b _0803C28A
	.align 2, 0
_0803C248: .4byte gMapLayer_03003910
_0803C24C: .4byte 0x03006820
_0803C250:
	add r0, sp, #0x1fc
	ldr r0, [r0]
	cmp r0, #0
	bne _0803C28A
	movs r7, #3
	b _0803C28A
_0803C25C:
	ldr r0, _0803C268 @ =0x03006820
	ldr r0, [r0]
	cmp r0, #7
	bne _0803C28A
	movs r7, #4
	b _0803C28A
	.align 2, 0
_0803C268: .4byte 0x03006820
_0803C26C:
	bl sub_08007544
	cmp r0, #0
	bne _0803C282
	bl sub_080075AC
	cmp r0, #0
	bne _0803C282
	movs r0, #0x95
	bl PlaySE
_0803C282:
	movs r7, #5
	movs r0, #8
	mov r4, sl
	strh r0, [r4, #0xa]
_0803C28A:
	mov r6, sl
	ldrh r0, [r6, #0xa]
	cmp r0, #7
	bne _0803C2D2
	movs r0, #0x14
	mov r8, r0
	ldrh r1, [r6, #0x28]
	str r1, [sp, #0x224]
	movs r2, #0
	str r2, [sp, #0x228]
	mov r0, sl
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803C2CA
	movs r0, #8
	strh r0, [r6, #0xa]
	movs r3, #0
	str r3, [sp, #0x22c]
	ldrh r3, [r6, #2]
	ldr r4, [sp, #0x22c]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	b _0803C2D2
_0803C2CA:
	add r6, sp, #0x228
	ldrh r0, [r6]
	mov r6, sl
	strh r0, [r6, #0xa]
_0803C2D2:
	mov r0, r8
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803C344
	ldr r0, [sp, #0x224]
	cmp r0, #0
	bne _0803C2F8
	ldr r1, _0803C2F4 @ =0x0000FFFF
	mov r8, r1
	b _0803C348
	.align 2, 0
_0803C2F4: .4byte 0x0000FFFF
_0803C2F8:
	bl sub_08007544
	cmp r0, #0
	bne _0803C326
	bl sub_08007510
	cmp r0, #0
	bne _0803C326
	bl sub_08007604
	cmp r0, #0
	bne _0803C326
	bl sub_080075AC
	cmp r0, #0
	bne _0803C326
	ldr r3, [sp, #0x228]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x224]
	bl sub_0800EA74
_0803C326:
	movs r0, #2
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0803C348
	ldr r6, [sp, #0x228]
	lsls r0, r6, #0x10
	ldr r1, _0803C340 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x228]
	b _0803C348
	.align 2, 0
_0803C340: .4byte 0xFFFF0000
_0803C344:
	ldr r2, _0803C40C @ =0x0000FFFF
	mov r8, r2
_0803C348:
	mov r3, sl
	ldrh r0, [r3, #0xa]
	cmp r0, #8
	beq _0803C3E2
	ldr r4, [sp, #0x254]
	ldrh r1, [r4]
	ldr r6, [sp, #0x220]
	str r6, [sp]
	add r0, sp, #0x20
	ldr r2, [sp, #0x258]
	mov r3, sb
	bl sub_08026C40
	bl sub_08007510
	cmp r0, #0
	bne _0803C3E2
	bl sub_08007604
	cmp r0, #0
	bne _0803C3E2
	bl sub_08007544
	cmp r0, #0
	bne _0803C3E2
	bl sub_080075AC
	adds r6, r0, #0
	cmp r6, #0
	bne _0803C3E2
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #0xc
	ldr r1, [r1, #0x14]
	asrs r1, r1, #0xc
	movs r2, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x21c]
	mov r2, sl
	ldr r0, [r2, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r6, [sp, #0x254]
	ldrh r2, [r6]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	movs r4, #3
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C3E2:
	bl WaitFrame
	cmp r7, #5
	beq _0803C3EC
	b _0803C124
_0803C3EC:
	bl sub_080292D0
	mov r6, sl
	ldrh r3, [r6, #2]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
	bl sub_0803EC2C
	b _0803C414
	.align 2, 0
_0803C40C: .4byte 0x0000FFFF
_0803C410:
	bl WaitFrame
_0803C414:
	bl sub_080271D0
	cmp r0, #0
	bne _0803C410
	bl sub_08016FA0
	cmp r0, #0
	bne _0803C484
	bl sub_08007750
	cmp r0, #0
	bne _0803C484
	bl sub_08007544
	cmp r0, #0
	bne _0803C484
	bl sub_080074CC
	cmp r0, #0
	bne _0803C484
	ldr r0, _0803C460 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C484
	bl sub_08007578
	cmp r0, #0
	bne _0803C484
	bl sub_080075AC
	cmp r0, #0
	bne _0803C484
	b _0803C470
	.align 2, 0
_0803C460: .4byte gUnknown_030063D8
_0803C464:
	bl sub_08045F38
	bl sub_08007798
	bl WaitFrame
_0803C470:
	bl sub_08007510
	cmp r0, #0
	bne _0803C464
	bl sub_080076E0
	cmp r0, #0
	bne _0803C464
	bl sub_080077AC
_0803C484:
	bl sub_08016FA0
	cmp r0, #0
	beq _0803C490
	bl _0803E254
_0803C490:
	bl sub_080271D0
	cmp r0, #0
	beq _0803C49C
	bl _0803E254
_0803C49C:
	bl sub_08007750
	cmp r0, #0
	beq _0803C4A8
	bl _0803E254
_0803C4A8:
	bl sub_08007510
	cmp r0, #0
	beq _0803C4B4
	bl _0803E254
_0803C4B4:
	bl sub_08007544
	cmp r0, #0
	beq _0803C4C0
	bl _0803E254
_0803C4C0:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C4CC
	bl _0803E254
_0803C4CC:
	ldr r0, _0803C798 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C4E0
	bl _0803E254
_0803C4E0:
	bl sub_08007578
	cmp r0, #0
	beq _0803C4EC
	bl _0803E254
_0803C4EC:
	bl sub_080075AC
	cmp r0, #0
	beq _0803C4F8
	bl _0803E254
_0803C4F8:
	bl GetMultiplayerId
	ldr r2, _0803C79C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #0x21
	orrs r0, r2
	strh r0, [r1, #0x10]
	movs r7, #0
	str r7, [sp, #0x22c]
	mov r0, sp
	adds r0, #0x54
	str r0, [sp, #0x250]
	mov r1, sp
	adds r1, #0x88
	str r1, [sp, #0x25c]
	mov r2, sp
	adds r2, #0xbc
	str r2, [sp, #0x260]
	mov r7, sp
	adds r7, #0x7d
	movs r3, #0xa9
	add r3, sp
	mov r8, r3
	movs r4, #0xde
	add r4, sp
	mov sb, r4
	mov r6, sp
	adds r6, #0xf0
	str r6, [sp, #0x264]
	ldr r0, _0803C7A0 @ =0x00000119
	add r0, sp
	str r0, [sp, #0x268]
_0803C53E:
	bl GetMultiplayerId
	ldr r2, _0803C79C @ =gPlayers
	movs r1, #0xd4
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	movs r0, #0x21
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl sub_08007750
	cmp r0, #0
	beq _0803C55C
	b _0803C76A
_0803C55C:
	bl sub_080074CC
	cmp r0, #0
	beq _0803C566
	b _0803C76A
_0803C566:
	ldr r0, _0803C798 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803C578
	b _0803C76A
_0803C578:
	bl sub_08007578
	cmp r0, #0
	beq _0803C582
	b _0803C76A
_0803C582:
	bl sub_08007544
	cmp r0, #0
	beq _0803C58C
	b _0803C712
_0803C58C:
	bl sub_08007510
	cmp r0, #0
	beq _0803C596
	b _0803C712
_0803C596:
	bl sub_08007604
	cmp r0, #0
	beq _0803C5A0
	b _0803C712
_0803C5A0:
	bl sub_080075AC
	cmp r0, #0
	beq _0803C5AA
	b _0803C712
_0803C5AA:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	movs r0, #7
	ldr r1, [sp, #0x22c]
	ands r0, r1
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0
	beq _0803C5D4
	b _0803C712
_0803C5D4:
	movs r0, #0x28
	bl PlaySE
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C5F0
	adds r0, #0x3f
_0803C5F0:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C612
	adds r1, #0x1f
_0803C612:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C63E
	adds r0, #0x3f
_0803C63E:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C660
	adds r1, #0x1f
_0803C660:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C68C
	adds r0, #0x3f
_0803C68C:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C6AE
	adds r1, #0x1f
_0803C6AE:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803C6DA
	adds r0, #0x3f
_0803C6DA:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C6FC
	adds r1, #0x1f
_0803C6FC:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
_0803C712:
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r6, [sp, #0x258]
	ldrh r3, [r6]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
	ldr r0, _0803C7A4 @ =0x00000257
	ldr r6, [sp, #0x22c]
	cmp r6, r0
	bhi _0803C76A
	b _0803C53E
_0803C76A:
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803C7A8 @ =0x00090081
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	bl sub_08007798
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803C81C
	.align 2, 0
_0803C798: .4byte gUnknown_030063D8
_0803C79C: .4byte gPlayers
_0803C7A0: .4byte 0x00000119
_0803C7A4: .4byte 0x00000257
_0803C7A8: .4byte 0x00090081
_0803C7AC:
	bl sub_08007544
	cmp r0, #0
	bne _0803C80E
	bl sub_08007510
	cmp r0, #0
	bne _0803C80E
	bl sub_08007604
	cmp r0, #0
	bne _0803C80E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803C80E
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C80E:
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803C844
_0803C81C:
	bl sub_08007750
	cmp r0, #0
	bne _0803C844
	bl sub_080074CC
	cmp r0, #0
	bne _0803C844
	ldr r0, _0803C854 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C844
	bl sub_08007578
	cmp r0, #0
	beq _0803C7AC
_0803C844:
	movs r0, #0x1e
	bl sub_0800F3DC
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803C8BE
	.align 2, 0
_0803C854: .4byte gUnknown_030063D8
_0803C858:
	bl sub_08007544
	cmp r0, #0
	bne _0803C8BA
	bl sub_08007510
	cmp r0, #0
	bne _0803C8BA
	bl sub_08007604
	cmp r0, #0
	bne _0803C8BA
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803C8BA
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803C8BA:
	bl WaitFrame
_0803C8BE:
	bl sub_0800F298
	cmp r0, #0
	bne _0803C8EE
	bl sub_08007750
	cmp r0, #0
	bne _0803C8EE
	bl sub_080074CC
	cmp r0, #0
	bne _0803C8EE
	ldr r0, _0803C9D8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803C8EE
	bl sub_08007578
	cmp r0, #0
	beq _0803C858
_0803C8EE:
	ldr r1, _0803C9DC @ =0x0010000E
	ldr r0, [sp, #0x250]
	movs r2, #0xd
	movs r3, #1
	bl sub_08026ADC
	ldr r1, _0803C9E0 @ =0x00100007
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, [sp, #0x25c]
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r1, _0803C9E4 @ =0x0010000C
	ldr r0, [sp, #0x260]
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r6, [sp, #0x250]
	ldr r1, [r6, #0xc]
	movs r5, #0xd0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #0x1b
	movs r2, #1
	bl LoadPalette
	movs r0, #0xb
	strb r0, [r7]
	ldr r7, [sp, #0x25c]
	ldr r1, [r7, #0xc]
	adds r1, #0xa0
	movs r0, #0x17
	movs r2, #1
	bl LoadPalette
	movs r0, #7
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x260]
	ldr r1, [r2, #0xc]
	adds r1, #0xc0
	movs r0, #0x1e
	movs r2, #1
	bl LoadPalette
	movs r0, #0xe
	mov r3, sb
	strb r0, [r3]
	ldr r1, _0803C9E8 @ =0x00100063
	ldr r0, [sp, #0x264]
	movs r2, #8
	adds r3, r4, #0
	bl sub_08026ADC
	ldr r4, [sp, #0x264]
	ldr r1, [r4, #0xc]
	adds r1, r1, r5
	movs r0, #0x18
	movs r2, #1
	bl LoadPalette
	movs r0, #8
	ldr r6, [sp, #0x268]
	strb r0, [r6]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	ldr r6, _0803C9EC @ =gPlayers
	movs r5, #0xd4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x58
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r7, [sp, #0x210]
	adds r0, r0, r7
	ldrh r0, [r0, #0x2c]
	lsls r0, r0, #0xf
	str r0, [r2]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x5c
	adds r2, r2, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x2e]
	lsls r0, r0, #0xf
	str r0, [r2]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #4
	strh r1, [r0, #0xa]
	movs r0, #0x3c
	bl sub_0800F348
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r7, #0x30
	movs r0, #0
	mov r8, r0
	b _0803CB0E
	.align 2, 0
_0803C9D8: .4byte gUnknown_030063D8
_0803C9DC: .4byte 0x0010000E
_0803C9E0: .4byte 0x00100007
_0803C9E4: .4byte 0x0010000C
_0803C9E8: .4byte 0x00100063
_0803C9EC: .4byte gPlayers
_0803C9F0:
	bl sub_08007544
	cmp r0, #0
	bne _0803CA50
	bl sub_08007510
	cmp r0, #0
	bne _0803CA50
	bl sub_08007604
	cmp r0, #0
	bne _0803CA50
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CA50
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	str r7, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CA50:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	bl WaitFrame
_0803CB0E:
	bl sub_0800F298
	cmp r0, #0
	bne _0803CB40
	bl sub_08007750
	cmp r0, #0
	bne _0803CB40
	bl sub_080074CC
	cmp r0, #0
	bne _0803CB40
	ldr r0, _0803CB68 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CB40
	bl sub_08007578
	cmp r0, #0
	bne _0803CB40
	b _0803C9F0
_0803CB40:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803CB6C @ =0x00090082
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r7, #0x30
	movs r4, #0
	mov r8, r4
	b _0803CC98
	.align 2, 0
_0803CB68: .4byte gUnknown_030063D8
_0803CB6C: .4byte 0x00090082
_0803CB70:
	bl sub_08007544
	cmp r0, #0
	bne _0803CBD0
	bl sub_08007510
	cmp r0, #0
	bne _0803CBD0
	bl sub_08007604
	cmp r0, #0
	bne _0803CBD0
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CBD0
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	str r7, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CBD0:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	str r7, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803CCC2
_0803CC98:
	bl sub_08007750
	cmp r0, #0
	bne _0803CCC2
	bl sub_080074CC
	cmp r0, #0
	bne _0803CCC2
	ldr r0, _0803CF44 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CCC2
	bl sub_08007578
	cmp r0, #0
	bne _0803CCC2
	b _0803CB70
_0803CCC2:
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [sp, #0x230]
	movs r6, #0
	str r6, [sp, #0x22c]
	add r0, sp, #0x1e0
	strh r6, [r0, #8]
	add r0, sp, #0x1ec
	add r1, sp, #0x22c
	ldrh r1, [r1]
	strh r1, [r0, #8]
	movs r0, #0xa6
	bl PlaySE
	movs r2, #1
	str r2, [sp, #0x22c]
_0803CCE2:
	bl sub_08007750
	cmp r0, #0
	beq _0803CCEC
	b _0803CF06
_0803CCEC:
	bl sub_080074CC
	cmp r0, #0
	beq _0803CCF6
	b _0803CF06
_0803CCF6:
	ldr r0, _0803CF44 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803CD08
	b _0803CF06
_0803CD08:
	bl sub_08007578
	cmp r0, #0
	beq _0803CD12
	b _0803CF06
_0803CD12:
	bl sub_08007544
	cmp r0, #0
	bne _0803CD7C
	bl sub_08007510
	cmp r0, #0
	bne _0803CD7C
	bl sub_08007604
	cmp r0, #0
	bne _0803CD7C
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803CD7C
	mov r4, sl
	ldr r0, [r4, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r6, [sp, #0x21c]
	str r6, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CD7C:
	ldr r7, [sp, #0x210]
	ldrh r0, [r7, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r7, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	mov r8, r2
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0xf0
	lsls r3, r3, #1
	add r3, sp
	mov sb, r3
	movs r7, #1
	str r7, [sp]
	ldr r0, [sp, #0x250]
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r7, sb
	ldrh r3, [r7, #8]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r7, [sp, #0x250]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r7, [sp, #0x210]
	ldrh r0, [r7, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r7, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r7, [sp, #0x230]
	lsls r0, r7, #0x10
	ldr r1, _0803CF48 @ =0xFFFC0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x230]
	asrs r0, r0, #0x10
	movs r7, #0xc0
	lsls r7, r7, #1
	cmp r0, r7
	bgt _0803CE74
	str r7, [sp, #0x230]
_0803CE74:
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r3, [sp, #0x210]
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #1
	str r3, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	mov r4, sb
	ldrh r3, [r4, #6]
	str r6, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r4, [sp, #0x264]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r4, r2, #0x10
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	movs r6, #1
	str r6, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0x77
	bhi _0803CF00
	b _0803CCE2
_0803CF00:
	cmp r4, r7
	ble _0803CF06
	b _0803CCE2
_0803CF06:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803CF4C @ =0x00090083
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r0, sp, #0x1e0
	movs r1, #0
	strh r1, [r0, #8]
	add r0, sp, #0x1ec
	strh r1, [r0, #8]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	mov r8, r2
	movs r7, #0
	ldr r3, [sp, #0x25c]
	str r3, [sp, #0x23c]
	movs r4, #0xf0
	lsls r4, r4, #1
	add r4, sp
	mov sb, r4
	b _0803D106
	.align 2, 0
_0803CF44: .4byte gUnknown_030063D8
_0803CF48: .4byte 0xFFFC0000
_0803CF4C: .4byte 0x00090083
_0803CF50:
	bl sub_08007544
	cmp r0, #0
	bne _0803CFB2
	bl sub_08007510
	cmp r0, #0
	bne _0803CFB2
	bl sub_08007604
	cmp r0, #0
	bne _0803CFB2
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803CFB2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803CFB2:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r7, [sp]
	ldr r0, [sp, #0x23c]
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r3, [r2, #8]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r4, [sp, #0x23c]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r3, [sp, #0x260]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #1
	str r4, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	mov r3, sb
	ldrh r3, [r3, #6]
	mov ip, r3
	str r7, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r3, [sp, #0x264]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x230]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r2, #0
	mov r3, ip
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D130
_0803D106:
	bl sub_08007750
	cmp r0, #0
	bne _0803D130
	bl sub_080074CC
	cmp r0, #0
	bne _0803D130
	ldr r0, _0803D16C @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D130
	bl sub_08007578
	cmp r0, #0
	bne _0803D130
	b _0803CF50
_0803D130:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803D170 @ =0x00090084
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r0, sp, #0x1e0
	movs r1, #0
	strh r1, [r0, #8]
	add r0, sp, #0x1ec
	strh r1, [r0, #8]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r4, #0x30
	mov r8, r4
	movs r7, #0
	ldr r0, [sp, #0x260]
	mov sb, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x240]
	b _0803D32A
	.align 2, 0
_0803D16C: .4byte gUnknown_030063D8
_0803D170: .4byte 0x00090084
_0803D174:
	bl sub_08007544
	cmp r0, #0
	bne _0803D1D6
	bl sub_08007510
	cmp r0, #0
	bne _0803D1D6
	bl sub_08007604
	cmp r0, #0
	bne _0803D1D6
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803D1D6
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	mov r4, r8
	str r4, [sp]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D1D6:
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r3, [sp, #0x250]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x21c]
	str r2, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r3, [sp, #0x25c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	str r7, [sp]
	mov r0, sb
	movs r1, #1
	add r2, sp, #0x1e8
	add r3, sp, #0x1f4
	bl sub_08026C40
	ldr r4, [sp, #0x210]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r2, [sp, #0x240]
	ldrh r3, [r2, #8]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	mov r4, sb
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08004344
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r4, #1
	str r4, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	subs r1, #0x30
	ldr r3, [sp, #0x240]
	ldrh r3, [r3, #6]
	mov ip, r3
	str r7, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r3, [sp, #0x264]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x230]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
	movs r2, #0
	mov r3, ip
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D354
_0803D32A:
	bl sub_08007750
	cmp r0, #0
	bne _0803D354
	bl sub_080074CC
	cmp r0, #0
	bne _0803D354
	ldr r0, _0803D374 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D354
	bl sub_08007578
	cmp r0, #0
	bne _0803D354
	b _0803D174
_0803D354:
	movs r4, #0
	str r4, [sp, #0x22c]
	movs r6, #0x80
	lsls r6, r6, #3
	mov sb, r6
	add r7, sp, #0x1f8
	movs r6, #0xfd
	lsls r6, r6, #1
	add r6, sp
	mov r8, r4
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, sp
	str r0, [sp, #0x244]
	b _0803D584
	.align 2, 0
_0803D374: .4byte gUnknown_030063D8
_0803D378:
	bl sub_08007544
	cmp r0, #0
	bne _0803D3DA
	bl sub_08007510
	cmp r0, #0
	bne _0803D3DA
	bl sub_08007604
	cmp r0, #0
	bne _0803D3DA
	bl sub_080075AC
	adds r2, r0, #0
	cmp r2, #0
	bne _0803D3DA
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r3, #0x30
	str r3, [sp]
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D3DA:
	mov r1, sb
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803D4B4
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp sb, r0
	bls _0803D4B4
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x22]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r4, [sp, #0x250]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x28]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x2a]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r4, [sp, #0x25c]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
	ldr r1, [sp, #0x210]
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x26]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x21c]
	str r3, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	ldr r4, [sp, #0x260]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_08004344
_0803D4B4:
	ldr r0, [sp, #0x22c]
	adds r0, #4
	str r0, [sp, #0x22c]
	movs r0, #0x10
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	ldr r2, [sp, #0x210]
	ldrh r4, [r2, #0x22]
	lsls r4, r4, #0xf
	ldr r3, _0803D5F8 @ =0xFFFD0000
	adds r4, r4, r3
	bl GetMultiplayerId
	lsls r0, r0, #2
	ldr r1, [sp, #0x210]
	adds r0, r0, r1
	ldrh r2, [r0, #0x2e]
	lsls r2, r2, #0xf
	ldr r3, _0803D5F8 @ =0xFFFD0000
	adds r2, r2, r3
	ldr r0, [sp, #0x244]
	adds r1, r4, #0
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	add r5, sp, #0x204
	ldr r0, [sp, #0x210]
	ldrh r4, [r0, #0x20]
	lsls r4, r4, #0xf
	bl GetMultiplayerId
	lsls r0, r0, #2
	ldr r1, [sp, #0x210]
	adds r0, r0, r1
	ldrh r2, [r0, #0x2c]
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	ldr r0, [r5]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x244]
	ldr r1, [r2]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r3, #0x30
	str r3, [sp]
	mov r4, r8
	str r4, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x264]
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r4, [sp, #0x264]
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, r8
	str r2, [sp, #0x18]
	movs r4, #1
	str r4, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D584:
	ldr r0, _0803D5FC @ =0x000003FF
	ldr r1, [sp, #0x22c]
	cmp r1, r0
	bhi _0803D5B6
	bl sub_08007750
	cmp r0, #0
	bne _0803D5B6
	bl sub_080074CC
	cmp r0, #0
	bne _0803D5B6
	ldr r0, _0803D600 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D5B6
	bl sub_08007578
	cmp r0, #0
	bne _0803D5B6
	b _0803D378
_0803D5B6:
	ldr r2, _0803D604 @ =0x0000FFFF
	str r2, [sp, #0x22c]
	ldr r0, _0803D608 @ =gMPlayInfo_SE1
	movs r1, #2
	bl SndMPlayFadeOut
	ldr r0, _0803D60C @ =gMPlayInfo_SE2
	movs r1, #2
	bl SndMPlayFadeOut
	ldr r0, _0803D610 @ =gMPlayInfo_SE3
	movs r1, #2
	bl SndMPlayFadeOut
	bl GetMultiplayerId
	ldr r2, _0803D614 @ =gPlayers
	movs r1, #0xd4
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #5
	strh r1, [r0, #0xa]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r3, #0
	mov sb, r3
	ldr r7, [sp, #0x264]
	movs r4, #1
	mov r8, r4
	b _0803D708
	.align 2, 0
_0803D5F8: .4byte 0xFFFD0000
_0803D5FC: .4byte 0x000003FF
_0803D600: .4byte gUnknown_030063D8
_0803D604: .4byte 0x0000FFFF
_0803D608: .4byte gMPlayInfo_SE1
_0803D60C: .4byte gMPlayInfo_SE2
_0803D610: .4byte gMPlayInfo_SE3
_0803D614: .4byte gPlayers
_0803D618:
	bl sub_08007544
	cmp r0, #0
	bne _0803D67A
	bl sub_08007510
	cmp r0, #0
	bne _0803D67A
	bl sub_08007604
	cmp r0, #0
	bne _0803D67A
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D67A
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D67A:
	ldr r0, [sp, #0x22c]
	subs r0, #0x80
	str r0, [sp, #0x22c]
	movs r0, #0x10
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r4, [sp, #0x22c]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D708:
	movs r0, #0xd0
	lsls r0, r0, #8
	ldr r3, [sp, #0x22c]
	cmp r3, r0
	bls _0803D73C
	bl sub_08007750
	cmp r0, #0
	bne _0803D73C
	bl sub_080074CC
	cmp r0, #0
	bne _0803D73C
	ldr r0, _0803D768 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D73C
	bl sub_08007578
	cmp r0, #0
	bne _0803D73C
	b _0803D618
_0803D73C:
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803D76C @ =0x00090085
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r4, #0
	mov sb, r4
	ldr r7, [sp, #0x264]
	movs r0, #1
	mov r8, r0
	b _0803D862
	.align 2, 0
_0803D768: .4byte gUnknown_030063D8
_0803D76C: .4byte 0x00090085
_0803D770:
	bl sub_08007544
	cmp r0, #0
	bne _0803D7D2
	bl sub_08007510
	cmp r0, #0
	bne _0803D7D2
	bl sub_08007604
	cmp r0, #0
	bne _0803D7D2
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D7D2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D7D2:
	movs r0, #0x10
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	bne _0803D88C
_0803D862:
	bl sub_08007750
	cmp r0, #0
	bne _0803D88C
	bl sub_080074CC
	cmp r0, #0
	bne _0803D88C
	ldr r0, _0803D8A0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D88C
	bl sub_08007578
	cmp r0, #0
	bne _0803D88C
	b _0803D770
_0803D88C:
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r3, #0
	mov sb, r3
	ldr r7, [sp, #0x264]
	movs r4, #1
	mov r8, r4
	b _0803D98C
	.align 2, 0
_0803D8A0: .4byte gUnknown_030063D8
_0803D8A4:
	bl sub_08007544
	cmp r0, #0
	bne _0803D906
	bl sub_08007510
	cmp r0, #0
	bne _0803D906
	bl sub_08007604
	cmp r0, #0
	bne _0803D906
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803D906
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803D906:
	movs r0, #0x10
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r3, r8
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #3
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
_0803D98C:
	ldr r3, [sp, #0x22c]
	cmp r3, #0x77
	bhi _0803D9BC
	bl sub_08007750
	cmp r0, #0
	bne _0803D9BC
	bl sub_080074CC
	cmp r0, #0
	bne _0803D9BC
	ldr r0, _0803D9D8 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D9BC
	bl sub_08007578
	cmp r0, #0
	bne _0803D9BC
	b _0803D8A4
_0803D9BC:
	movs r4, #0
	str r4, [sp, #0x22c]
	movs r0, #0x7d
	bl StopSE
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	mov sb, r4
	ldr r7, [sp, #0x264]
	movs r0, #1
	mov r8, r0
	b _0803DB0E
	.align 2, 0
_0803D9D8: .4byte gUnknown_030063D8
_0803D9DC:
	bl sub_08007544
	cmp r0, #0
	bne _0803DA3E
	bl sub_08007510
	cmp r0, #0
	bne _0803DA3E
	bl sub_08007604
	cmp r0, #0
	bne _0803DA3E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DA3E
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r4, [sp, #0x21c]
	str r4, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DA3E:
	ldr r0, [sp, #0x22c]
	adds r0, #0x20
	str r0, [sp, #0x22c]
	ldr r1, [sp, #0x230]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x230]
	ldr r3, [sp, #0x210]
	ldrh r1, [r3, #0x2e]
	lsls r1, r1, #0xf
	ldr r4, _0803DB6C @ =0xFFFD0000
	adds r1, r1, r4
	mov r0, sl
	ldr r2, [r0, #0x14]
	add r0, sp, #0x200
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	ldr r2, [sp, #0x210]
	ldrh r1, [r2, #0x2c]
	lsls r1, r1, #0xf
	mov r3, sl
	ldr r2, [r3, #0x10]
	add r0, sp, #0x204
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	movs r0, #0x10
	str r0, [sp]
	mov r4, sb
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_080044E4
	add r0, sp, #0x204
	ldr r0, [r0]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	add r1, sp, #0x200
	ldr r1, [r1]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	add r4, sp, #0x1e0
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0xf3
	lsls r2, r2, #1
	add r2, sp
	movs r3, #0xf9
	lsls r3, r3, #1
	add r3, sp
	bl sub_08026C40
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #6]
	movs r2, #2
	str r2, [sp]
	add r2, sp, #0x10c
	str r2, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x230]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r2, #0xd0
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x1c]
	movs r2, #0
	bl sub_080039C8
	bl WaitFrame
	movs r0, #0xf8
	lsls r0, r0, #2
	ldr r3, [sp, #0x22c]
	cmp r3, r0
	bne _0803DB0E
	movs r0, #0x27
	bl PlaySE
_0803DB0E:
	ldr r0, _0803DB70 @ =0x000003FF
	ldr r4, [sp, #0x22c]
	cmp r4, r0
	bhi _0803DB40
	bl sub_08007750
	cmp r0, #0
	bne _0803DB40
	bl sub_080074CC
	cmp r0, #0
	bne _0803DB40
	ldr r0, _0803DB74 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DB40
	bl sub_08007578
	cmp r0, #0
	bne _0803DB40
	b _0803D9DC
_0803DB40:
	movs r0, #0x6e
	bl StopSE
	movs r0, #0x3c
	str r0, [sp]
	ldr r0, _0803DB78 @ =0x00090101
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl StartMessageWindow
	str r0, [sp, #0x214]
	movs r6, #0
	str r6, [sp, #0x22c]
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803DBE2
	.align 2, 0
_0803DB6C: .4byte 0xFFFD0000
_0803DB70: .4byte 0x000003FF
_0803DB74: .4byte gUnknown_030063D8
_0803DB78: .4byte 0x00090101
_0803DB7C:
	bl sub_08007544
	cmp r0, #0
	bne _0803DBDE
	bl sub_08007510
	cmp r0, #0
	bne _0803DBDE
	bl sub_08007604
	cmp r0, #0
	bne _0803DBDE
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DBDE
	mov r7, sl
	ldr r0, [r7, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DBDE:
	bl WaitFrame
_0803DBE2:
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0xb3
	bhi _0803DC16
	bl sub_08007750
	cmp r0, #0
	bne _0803DC16
	bl sub_080074CC
	cmp r0, #0
	bne _0803DC16
	ldr r0, _0803DC34 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DC16
	bl sub_08007578
	cmp r0, #0
	beq _0803DB7C
_0803DC16:
	movs r2, #0
	str r2, [sp, #0x22c]
	add r0, sp, #0x1fc
	str r2, [r0]
	str r2, [sp]
	str r2, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl sub_080044E4
	movs r0, #0x95
	bl PlaySE
	b _0803DE3E
	.align 2, 0
_0803DC34: .4byte gUnknown_030063D8
_0803DC38:
	bl sub_08007544
	cmp r0, #0
	beq _0803DC42
	b _0803DDC8
_0803DC42:
	bl sub_08007510
	cmp r0, #0
	beq _0803DC4C
	b _0803DDC8
_0803DC4C:
	bl sub_08007604
	cmp r0, #0
	beq _0803DC56
	b _0803DDC8
_0803DC56:
	bl sub_080075AC
	cmp r0, #0
	beq _0803DC60
	b _0803DDC8
_0803DC60:
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08005F60
	movs r0, #7
	ldr r3, [sp, #0x22c]
	ands r0, r3
	adds r3, #1
	str r3, [sp, #0x22c]
	cmp r0, #0
	beq _0803DC8A
	b _0803DDC8
_0803DC8A:
	movs r0, #0x28
	bl PlaySE
	bl Random
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DCA6
	adds r0, #0x3f
_0803DCA6:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DCC8
	adds r1, #0x1f
_0803DCC8:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DCF4
	adds r0, #0x3f
_0803DCF4:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DD16
	adds r1, #0x1f
_0803DD16:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r3, sl
	ldr r1, [r3, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DD42
	adds r0, #0x3f
_0803DD42:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r6, sl
	ldr r1, [r6, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DD64
	adds r1, #0x1f
_0803DD64:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
	bl Random
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0803DD90
	adds r0, #0x3f
_0803DD90:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, r0
	bl Random
	mov r2, sl
	ldr r1, [r2, #0x14]
	asrs r2, r1, #0xc
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0803DDB2
	adds r1, #0x1f
_0803DDB2:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #7
	bl sub_08033E6C
_0803DDC8:
	mov r3, sl
	ldr r0, [r3, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r3, [sp, #0x254]
	ldrh r2, [r3]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r6, [sp, #0x21c]
	str r6, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
	add r4, sp, #0x1fc
	ldr r0, [r4]
	cmp r0, #0
	bne _0803DE36
	ldr r0, [sp, #0x214]
	bl sub_0802294C
	cmp r0, #0
	beq _0803DE3E
	movs r0, #0xf0
	lsls r0, r0, #1
	bl sub_0800F244
	movs r0, #1
	str r0, [r4]
	b _0803DE3E
_0803DE36:
	bl sub_0800F298
	cmp r0, #0
	bne _0803DE68
_0803DE3E:
	bl sub_08007750
	cmp r0, #0
	bne _0803DE68
	bl sub_080074CC
	cmp r0, #0
	bne _0803DE68
	ldr r0, _0803DEA0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DE68
	bl sub_08007578
	cmp r0, #0
	bne _0803DE68
	b _0803DC38
_0803DE68:
	movs r7, #1
	str r7, [sp, #0x22c]
_0803DE6C:
	bl WaitFrame
	ldr r0, [sp, #0x22c]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x22c]
	cmp r0, #0x77
	bls _0803DE6C
	ldr r0, _0803DEA4 @ =gMapLayer_03003910
	ldr r1, [r0, #0x78]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x78]
	movs r0, #0x78
	bl sub_0800F1EC
	movs r0, #0
	movs r1, #0
	bl sub_08005F60
	add r6, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	b _0803DEEC
	.align 2, 0
_0803DEA0: .4byte gUnknown_030063D8
_0803DEA4: .4byte gMapLayer_03003910
_0803DEA8:
	mov r2, sl
	ldr r0, [r2, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r7, [sp, #0x254]
	ldrh r2, [r7]
	ldr r4, [sp, #0x258]
	ldrh r3, [r4]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
	bl WaitFrame
_0803DEEC:
	bl sub_0800F298
	cmp r0, #0
	bne _0803DF1E
	bl sub_08007750
	cmp r0, #0
	bne _0803DF1E
	bl sub_080074CC
	cmp r0, #0
	bne _0803DF1E
	ldr r0, _0803DF48 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DF1E
	bl sub_08007578
	adds r3, r0, #0
	cmp r3, #0
	beq _0803DEA8
_0803DF1E:
	movs r0, #0
	str r0, [sp, #0x22c]
	movs r0, #2
	bl FadeOutBGM
	movs r0, #0xa7
	bl PlaySE
	ldr r0, _0803DF4C @ =gMPlayInfo_SE1
	movs r1, #0x20
	bl SndMPlayFadeOut
	ldr r0, _0803DF50 @ =gMPlayInfo_SE2
	movs r1, #0x20
	bl SndMPlayFadeOut
	ldr r0, _0803DF54 @ =gMPlayInfo_SE3
	movs r1, #0x20
	bl SndMPlayFadeOut
	b _0803E07A
	.align 2, 0
_0803DF48: .4byte gUnknown_030063D8
_0803DF4C: .4byte gMPlayInfo_SE1
_0803DF50: .4byte gMPlayInfo_SE2
_0803DF54: .4byte gMPlayInfo_SE3
_0803DF58:
	bl sub_08007544
	cmp r0, #0
	bne _0803DFC2
	bl sub_08007510
	cmp r0, #0
	bne _0803DFC2
	bl sub_08007604
	cmp r0, #0
	bne _0803DFC2
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803DFC2
	mov r1, sl
	ldr r0, [r1, #0x10]
	lsls r0, r0, #4
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x14]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x1f8
	movs r5, #0xfd
	lsls r5, r5, #1
	add r5, sp
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x254]
	ldrh r2, [r4]
	ldr r6, [sp, #0x258]
	ldrh r3, [r6]
	ldr r7, [sp, #0x21c]
	str r7, [sp]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803DFC2:
	movs r6, #0
	ldr r0, [sp, #0x22c]
	adds r0, #4
	mov sb, r0
	add r5, sp, #0x208
	movs r1, #0x1f
	mov r8, r1
	adds r7, r5, #0
_0803DFD2:
	ldr r0, [sp, #0x2c]
	lsls r4, r6, #1
	adds r0, r4, r0
	ldrh r1, [r0, #0x20]
	ldr r0, _0803E11C @ =0xFFFF0000
	ldr r2, [sp, #0x248]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x248]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0xf
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r3, r8
	ands r0, r3
	movs r1, #0x20
	rsbs r1, r1, #0
	ldr r2, [sp, #0x24c]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x24c]
	ldr r3, [sp, #0x248]
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xc
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _0803E120 @ =0xFFFFFC1F
	ldr r2, [sp, #0x24c]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x24c]
	ldr r3, [sp, #0x248]
	lsls r1, r3, #0x11
	lsrs r1, r1, #0x1b
	lsls r1, r1, #0xc
	adds r0, r5, #0
	movs r2, #0
	ldr r3, [sp, #0x22c]
	bl Lerp1024
	ldr r0, [r7]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0xa
	ldr r1, _0803E124 @ =0xFFFF83FF
	ldr r2, [sp, #0x24c]
	ands r1, r2
	orrs r0, r1
	str r0, [sp, #0x24c]
	ldr r0, _0803E128 @ =gPaletteBuffer
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r4, r4, r0
	add r0, sp, #0x24c
	ldrh r0, [r0]
	strh r0, [r4]
	adds r6, #1
	cmp r6, #0xf
	bls _0803DFD2
	bl FlushPaletteBuffer
	mov r1, sb
	str r1, [sp, #0x22c]
	bl WaitFrame
_0803E07A:
	ldr r0, _0803E12C @ =0x000003FF
	ldr r2, [sp, #0x22c]
	cmp r2, r0
	bhi _0803E0AC
	bl sub_08007750
	cmp r0, #0
	bne _0803E0AC
	bl sub_080074CC
	cmp r0, #0
	bne _0803E0AC
	ldr r0, _0803E130 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E0AC
	bl sub_08007578
	cmp r0, #0
	bne _0803E0AC
	b _0803DF58
_0803E0AC:
	bl GetMultiplayerId
	ldr r6, _0803E134 @ =gPlayers
	movs r5, #0xd4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	ldr r0, _0803E138 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldrh r2, [r1, #0x10]
	movs r0, #0x24
	orrs r0, r2
	strh r0, [r1, #0x10]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x60
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x210]
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #3
	str r0, [r2]
	bl GetMultiplayerId
	adds r4, r0, #0
	bl GetMultiplayerId
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x64
	adds r2, r2, r1
	lsls r0, r0, #2
	ldr r4, [sp, #0x210]
	adds r0, r0, r4
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #3
	str r0, [r2]
	ldr r1, _0803E13C @ =gPlayerStats
	movs r0, #2
	strh r0, [r1, #0x2c]
	b _0803E144
	.align 2, 0
_0803E11C: .4byte 0xFFFF0000
_0803E120: .4byte 0xFFFFFC1F
_0803E124: .4byte 0xFFFF83FF
_0803E128: .4byte gPaletteBuffer
_0803E12C: .4byte 0x000003FF
_0803E130: .4byte gUnknown_030063D8
_0803E134: .4byte gPlayers
_0803E138: .4byte 0x0000FFFE
_0803E13C: .4byte gPlayerStats
_0803E140:
	bl WaitFrame
_0803E144:
	bl GetMultiplayerId
	movs r4, #0xd4
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r1, [r0, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803E140
	ldr r5, _0803E32C @ =gPlayerStats
	movs r0, #5
	strh r0, [r5, #0x2c]
	bl GetMultiplayerId
	ldr r2, _0803E330 @ =gPlayers
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r2
	ldrh r2, [r1, #0x10]
	ldr r0, _0803E334 @ =0x0000FFDF
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r2, _0803E338 @ =gMapLayer_03003910
	ldr r0, [r2, #0x78]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x78]
	bl sub_080077AC
	bl sub_08001F98
	cmp r0, #0
	bne _0803E18E
	movs r0, #0xd
	bl PlayBGM
_0803E18E:
	mov r6, sl
	ldrh r0, [r6, #0x36]
	cmp r0, #0
	beq _0803E254
	adds r0, r5, #0
	adds r0, #0x84
	bl GetCategory5Record
	adds r1, r0, #0
	cmp r1, #0
	beq _0803E1C8
	movs r7, #0xab
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E1C8
	adds r2, r5, #0
	adds r2, #0x86
	ldr r0, _0803E33C @ =0x00000157
	adds r1, r1, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803E1C8
	adds r0, #1
	strb r0, [r2]
	bl sub_08041498
_0803E1C8:
	ldr r4, _0803E330 @ =gPlayers
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	adds r4, #0xcc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x20c]
	bl CalcExpGain
	str r0, [sp, #0x220]
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [sp, #0x220]
	bl AddExp
	adds r4, r0, #0
	movs r1, #0x13
	mov sb, r1
	ldr r5, _0803E340 @ =0x0000FFFF
_0803E1F8:
	mov r2, sl
	ldr r0, [r2, #0x14]
	ldr r3, _0803E344 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	ldr r0, _0803E338 @ =gMapLayer_03003910
	ldr r0, [r0, #0x78]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0803E216
	mov r0, sl
	ldr r1, [sp, #0x220]
	bl sub_08024320
_0803E216:
	bl WaitFrame
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp sb, r5
	bne _0803E1F8
	cmp r4, #0
	beq _0803E254
	movs r0, #0x25
	bl PlaySE
	bl GetMultiplayerId
	movs r5, #0xd4
	muls r0, r5, r0
	ldr r4, _0803E330 @ =gPlayers
	adds r0, r0, r4
	bl sub_08024420
	bl GetMultiplayerId
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldrh r2, [r1, #0x10]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x10]
_0803E254:
	bl sub_08033E20
	bl sub_08007750
	cmp r0, #0
	bne _0803E2F8
	bl sub_080074CC
	cmp r0, #0
	bne _0803E2F8
	ldr r4, _0803E348 @ =gUnknown_030063D8
	ldr r0, [r4]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E2F8
	bl sub_08007578
	cmp r0, #0
	bne _0803E2F8
	ldr r0, _0803E34C @ =0x00000BB8
	bl SignalEvent
	ldr r0, [r4]
	adds r0, #0x9e
	movs r1, #1
	strh r1, [r0]
	ldr r3, _0803E350 @ =gUnknown_03003D08
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0803E2E6
	orrs r1, r2
	str r1, [r3]
	bl sub_080074F0
	cmp r0, #0
	bne _0803E2E2
	ldr r2, _0803E32C @ =gPlayerStats
	ldr r4, _0803E354 @ =0x00000272
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r1, r2, r6
	movs r0, #0
	strb r0, [r1]
	ldr r7, _0803E358 @ =0x00000275
	adds r2, r2, r7
	ldrb r3, [r2]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1d
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803E2E2:
	bl sub_0800F53C
_0803E2E6:
	ldr r4, _0803E35C @ =gUnknownThreadPtr_030063E4
	ldr r0, [r4]
	bl IsThreadInList
	cmp r0, #0
	beq _0803E2F8
	ldr r0, [r4]
	bl KillThread
_0803E2F8:
	ldr r2, _0803E360 @ =gActiveEnemyMask
	movs r1, #1
	mov r0, sl
	ldrh r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x218]
	bl sub_0800CB84
	bl sub_080292D0
	bl ThreadExit
	movs r3, #0x9c
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E32C: .4byte gPlayerStats
_0803E330: .4byte gPlayers
_0803E334: .4byte 0x0000FFDF
_0803E338: .4byte gMapLayer_03003910
_0803E33C: .4byte 0x00000157
_0803E340: .4byte 0x0000FFFF
_0803E344: .4byte 0xFFFFFE00
_0803E348: .4byte gUnknown_030063D8
_0803E34C: .4byte 0x00000BB8
_0803E350: .4byte gUnknown_03003D08
_0803E354: .4byte 0x00000272
_0803E358: .4byte 0x00000275
_0803E35C: .4byte gUnknownThreadPtr_030063E4
_0803E360: .4byte gActiveEnemyMask

	thumb_func_start sub_0803E364
sub_0803E364: @ 0x0803E364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	str r0, [sp, #0x4c]
	str r1, [sp, #0x50]
	ldr r1, _0803E41C @ =0x080FBD60
	ldr r2, [sp, #0x50]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08026ADC
	ldr r0, [sp, #0x4c]
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	movs r0, #6
	strb r0, [r1, #0x1d]
	movs r0, #7
	strb r0, [r1, #0x1e]
	adds r1, #0x21
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x48]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0x60]
	ldr r1, _0803E420 @ =gEnemies
	movs r0, #0x94
	muls r0, r4, r0
	adds r0, #0x94
	ldr r1, [r1]
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	strh r0, [r7, #2]
	str r2, [r7, #0x10]
	str r2, [r7, #0x14]
	ldr r0, _0803E424 @ =gMapLayer_03003910
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	strh r2, [r7, #8]
	strh r2, [r7, #0xa]
	strh r2, [r7, #0xc]
	strh r2, [r7, #0x28]
	str r2, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #0x64
	adds r0, r3, #0
	adds r0, #0x64
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x60]
	cmp r4, #1
	beq _0803E43C
	cmp r4, #1
	blo _0803E428
	cmp r4, #2
	beq _0803E458
	b _0803E476
	.align 2, 0
_0803E41C: .4byte 0x080FBD60
_0803E420: .4byte gEnemies
_0803E424: .4byte gMapLayer_03003910
_0803E428:
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #1
	strb r0, [r1]
	subs r1, #0xf
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa
	b _0803E46E
_0803E43C:
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x78
	movs r1, #0x32
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x7c
	movs r0, #0x5a
	b _0803E474
_0803E458:
	adds r0, r7, #0
	adds r0, #0x87
	add r5, sp, #0x60
	ldrb r5, [r5]
	strb r5, [r0]
	adds r1, r7, #0
	adds r1, #0x78
	movs r0, #0xa
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x5a
_0803E46E:
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x32
_0803E474:
	strh r0, [r1]
_0803E476:
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #2
	strh r0, [r1]
	ldr r0, [sp, #0x60]
	cmp r0, #2
	beq _0803E48C
	adds r0, r7, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	b _0803E492
_0803E48C:
	movs r1, #3
	adds r0, r7, #0
	adds r0, #0x8a
_0803E492:
	movs r2, #0
	mov r8, r2
	strh r1, [r0]
	movs r3, #0x72
	adds r3, r3, r7
	mov sb, r3
	ldrh r0, [r3]
	lsrs r0, r0, #1
	strh r0, [r3]
	strh r0, [r7, #0x38]
	bl sub_08001EC4
	adds r4, r0, #0
	mov r0, sb
	ldrh r5, [r0]
	ldr r6, _0803E574 @ =0x080FB740
	subs r4, #1
	lsls r4, r4, #2
	adds r0, r4, r6
	ldrh r0, [r0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	mov r1, sb
	strh r5, [r1]
	movs r2, #0x6e
	adds r2, r2, r7
	mov sl, r2
	ldrh r5, [r2]
	adds r6, #2
	adds r4, r4, r6
	ldrh r0, [r4]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	mov r3, sl
	strh r5, [r3]
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r7, #0x3a]
	adds r4, r7, #0
	adds r4, #0x48
	str r4, [sp, #0x90]
	mov r5, r8
	strh r5, [r4]
	movs r0, #0x4a
	adds r0, r0, r7
	mov sl, r0
	strh r5, [r0]
	adds r6, r7, #0
	adds r6, #0x4c
	strh r5, [r6]
	bl Random
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x2c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	strh r4, [r7]
	ldr r0, _0803E578 @ =0x080FBD6C
	ldr r1, [sp, #0x60]
	lsls r5, r1, #3
	adds r1, r5, r0
	ldr r1, [r1]
	str r1, [sp, #0x54]
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp, #0x48]
	movs r2, #1
	str r2, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x6c]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	movs r0, #1
	str r0, [sp, #0x5c]
	movs r1, #0
	str r1, [sp, #0x58]
	ldr r2, _0803E57C @ =0x0000FFFF
	str r2, [sp, #0x7c]
	str r3, [sp, #0x84]
	movs r0, #0
	str r0, [sp, #0x8c]
	str r1, [sp, #0x88]
	bl sub_080076A8
	movs r2, #0xe1
	lsls r2, r2, #3
	str r2, [sp, #0x80]
	mov r3, sb
	str r3, [sp, #0xa0]
	ldr r1, [sp, #0x90]
	mov sb, r1
	str r6, [sp, #0x9c]
	str r4, [sp, #0x94]
	str r5, [sp, #0x98]
	cmp r0, #0
	bne _0803E56C
	b _0803EBA0
_0803E56C:
	movs r2, #0x96
	lsls r2, r2, #2
	str r2, [sp, #0x80]
	b _0803EBA0
	.align 2, 0
_0803E574: .4byte 0x080FB740
_0803E578: .4byte 0x080FBD6C
_0803E57C: .4byte 0x0000FFFF
_0803E580:
	bl sub_080271D0
	movs r3, #0x4e
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0
	beq _0803E590
	b _0803E8E6
_0803E590:
	ldrh r0, [r7, #0xa]
	cmp r0, #9
	bls _0803E598
	b _0803E8E6
_0803E598:
	lsls r0, r0, #2
	ldr r1, _0803E5A4 @ =_0803E5A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E5A4: .4byte _0803E5A8
_0803E5A8: @ jump table
	.4byte _0803E5D0 @ case 0
	.4byte _0803E654 @ case 1
	.4byte _0803E738 @ case 2
	.4byte _0803E8E6 @ case 3
	.4byte _0803E8E6 @ case 4
	.4byte _0803E8E6 @ case 5
	.4byte _0803E77C @ case 6
	.4byte _0803E8C8 @ case 7
	.4byte _0803E7BC @ case 8
	.4byte _0803E830 @ case 9
_0803E5D0:
	movs r0, #0
	mov r4, sb
	strh r0, [r4]
	ldr r0, _0803E614 @ =0x03006820
	ldr r0, [r0]
	cmp r0, #0x80
	beq _0803E5EA
	ldr r5, [sp, #0x64]
	lsls r0, r5, #0x10
	ldr r1, _0803E618 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0803E5EA:
	ldr r2, [sp, #0x64]
	lsls r0, r2, #0x10
	movs r3, #0x4e
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0
	ble _0803E5FA
	b _0803E8E6
_0803E5FA:
	ldr r0, _0803E61C @ =0x03006824
	ldr r0, [r0]
	cmp r0, #0
	beq _0803E604
	b _0803E8E6
_0803E604:
	bl sub_080076A8
	cmp r0, #0
	beq _0803E620
	movs r4, #0
	str r4, [sp, #0x64]
	b _0803E62C
	.align 2, 0
_0803E614: .4byte 0x03006820
_0803E618: .4byte 0xFFFF0000
_0803E61C: .4byte 0x03006824
_0803E620:
	movs r0, #0x5a
	ldr r5, [sp, #0x94]
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_0803E62C:
	movs r0, #0
	movs r1, #1
	mov r2, sb
	strh r1, [r2]
	adds r2, r7, #0
	adds r2, #0x4e
	strh r0, [r2]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, sl
	strh r0, [r4]
	movs r5, #0
	str r5, [sp, #0x78]
	strh r1, [r7, #0xa]
	ldr r0, _0803E650 @ =0x03006824
	str r1, [r0]
	mov r8, r2
	b _0803E8E6
	.align 2, 0
_0803E650: .4byte 0x03006824
_0803E654:
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x4e
	adds r2, r2, r7
	mov r8, r2
	cmp r0, #1
	beq _0803E664
	b _0803E8E6
_0803E664:
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803E66C
	b _0803E8E6
_0803E66C:
	ldr r1, [sp, #0x88]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	ldr r3, [sp, #0x50]
	cmp r1, r3
	bls _0803E6BC
	bl sub_080076A8
	cmp r0, #0
	beq _0803E690
	ldr r1, _0803E68C @ =0x080FBDE4
	ldr r4, [sp, #0x60]
	lsls r0, r4, #2
	b _0803E696
	.align 2, 0
_0803E68C: .4byte 0x080FBDE4
_0803E690:
	ldr r1, _0803E6B8 @ =0x080FBDF0
	ldr r5, [sp, #0x60]
	lsls r0, r5, #2
_0803E696:
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0]
	ldrh r1, [r0]
	adds r0, r7, #0
	bl sub_0803F16C
	cmp r0, #0
	beq _0803E71A
	movs r0, #6
	strh r0, [r7, #0xa]
	movs r0, #0
	str r0, [sp, #0x88]
	b _0803E71A
	.align 2, 0
_0803E6B8: .4byte 0x080FBDF0
_0803E6BC:
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne _0803E710
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_0800C8F8
	ldr r4, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r3, _0803E704 @ =gPlayers
	movs r2, #0xd4
	muls r0, r2, r0
	adds r3, #0xd0
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r2, [r0]
	lsrs r2, r2, #4
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0800C9EC
	strh r0, [r7, #4]
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803E708
	movs r0, #3
	mov r2, sb
	strh r0, [r2]
	b _0803E716
	.align 2, 0
_0803E704: .4byte gPlayers
_0803E708:
	movs r0, #2
	mov r3, sb
	strh r0, [r3]
	b _0803E716
_0803E710:
	movs r0, #2
	mov r4, sb
	strh r0, [r4]
_0803E716:
	movs r0, #2
	strh r0, [r7, #0xa]
_0803E71A:
	ldr r0, [r7, #0x2c]
	adds r0, #1
	str r0, [r7, #0x2c]
	movs r0, #0
	mov r5, r8
	strh r0, [r5]
	ldr r1, [sp, #0x9c]
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	movs r3, #0
	str r3, [sp, #0x78]
	movs r4, #0
	str r4, [sp, #0x58]
	b _0803E8E6
_0803E738:
	adds r1, r7, #0
	adds r1, #0x4e
	ldrh r0, [r1]
	mov r8, r1
	cmp r0, #0
	bne _0803E746
	b _0803E8E6
_0803E746:
	ldr r0, [sp, #0x58]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0x58]
	cmp r0, #0x3c
	bgt _0803E754
	b _0803E8E6
_0803E754:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	mov r4, sl
	strh r0, [r4]
	movs r5, #1
	str r5, [sp, #0x78]
	strh r0, [r7, #0xa]
	str r0, [sp, #0x58]
	ldr r0, _0803E778 @ =0x03006824
	ldr r1, [sp, #0x58]
	str r1, [r0]
	b _0803E8E6
	.align 2, 0
_0803E778: .4byte 0x03006824
_0803E77C:
	ldr r1, [sp, #0x8c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	movs r2, #0x4e
	adds r2, r2, r7
	mov r8, r2
	cmp r1, #0xa
	bhi _0803E792
	b _0803E8E6
_0803E792:
	movs r0, #0
	mov r3, sb
	strh r0, [r3]
	strh r0, [r2]
	ldr r4, [sp, #0x9c]
	strh r0, [r4]
	mov r5, sl
	strh r0, [r5]
	movs r1, #1
	str r1, [sp, #0x78]
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x58]
	ldr r0, _0803E7B8 @ =0x03006824
	str r2, [r0]
	movs r3, #0
	str r3, [sp, #0x8c]
	b _0803E8E6
	.align 2, 0
_0803E7B8: .4byte 0x03006824
_0803E7BC:
	ldr r2, _0803E7DC @ =0x03006820
	movs r1, #1
	ldr r4, [sp, #0x60]
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r0, #7
	bne _0803E7E0
	movs r5, #0
	str r5, [sp, #0x5c]
	movs r0, #0x4e
	adds r0, r0, r7
	mov r8, r0
	b _0803E8E6
	.align 2, 0
_0803E7DC: .4byte 0x03006820
_0803E7E0:
	ldr r0, [sp, #0x6c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	movs r1, #0x4e
	adds r1, r1, r7
	mov r8, r1
	ldr r2, [sp, #0x80]
	cmp r0, r2
	bls _0803E8E6
	ldr r3, [sp, #0xa0]
	ldrh r0, [r3]
	cmp r0, #0
	beq _0803E8E6
	movs r0, #9
	strh r0, [r7, #0xa]
	ldr r0, _0803E82C @ =0xFFF60000
	str r0, [sp, #0x48]
	movs r4, #0
	str r4, [sp, #0x74]
	mov r5, sb
	strh r4, [r5]
	add r0, sp, #0x74
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, sp, #0x74
	ldrh r2, [r1]
	ldr r1, [sp, #0x9c]
	strh r2, [r1]
	add r2, sp, #0x74
	ldrh r3, [r2]
	mov r2, sl
	strh r3, [r2]
	movs r3, #0
	str r3, [sp, #0x84]
	b _0803E8E6
	.align 2, 0
_0803E82C: .4byte 0xFFF60000
_0803E830:
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r4, [sp, #0x74]
	subs r0, r5, r4
	movs r1, #5
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r0, #0
	bne _0803E84C
	movs r0, #1
	str r0, [sp, #0x6c]
_0803E84C:
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x6c]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r4, _0803E8B8 @ =0x000003FF
	cmp r0, r4
	bls _0803E860
	str r5, [sp, #0x74]
_0803E860:
	add r0, sp, #0x48
	ldr r1, _0803E8BC @ =0xFFF60000
	ldr r2, _0803E8C0 @ =0x080FBD6C
	adds r2, #4
	ldr r3, [sp, #0x98]
	adds r2, r3, r2
	ldr r2, [r2]
	ldr r3, [sp, #0x74]
	bl Lerp1024
	movs r5, #0x4e
	adds r5, r5, r7
	mov r8, r5
	ldr r0, [sp, #0x74]
	cmp r0, r4
	bls _0803E8E6
	ldr r2, _0803E8C4 @ =0x03006820
	movs r1, #1
	ldr r3, [sp, #0x60]
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, #0
	strh r0, [r7, #0xa]
	mov r4, sb
	strh r0, [r4]
	strh r0, [r5]
	ldr r5, [sp, #0x9c]
	strh r0, [r5]
	mov r1, sl
	strh r0, [r1]
	movs r2, #1
	str r2, [sp, #0x78]
	ldr r3, [sp, #0xa0]
	ldrh r0, [r3]
	strh r0, [r7, #0x38]
	ldrh r0, [r3]
	lsrs r0, r0, #1
	strh r0, [r3]
	movs r4, #0
	str r4, [sp, #0x84]
	b _0803E8E6
	.align 2, 0
_0803E8B8: .4byte 0x000003FF
_0803E8BC: .4byte 0xFFF60000
_0803E8C0: .4byte 0x080FBD6C
_0803E8C4: .4byte 0x03006820
_0803E8C8:
	ldr r1, [sp, #0x84]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	movs r5, #0x4e
	adds r5, r5, r7
	mov r8, r5
	cmp r1, #0x1e
	bls _0803E8E6
	ldr r1, _0803E918 @ =0x03006824
	movs r0, #0
	str r0, [r1]
	str r0, [sp, #0x84]
	strh r0, [r7, #0xa]
_0803E8E6:
	ldrh r0, [r7, #0xa]
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0803E920
	ldr r1, _0803E91C @ =0x080FBD84
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldr r3, [sp, #0x60]
	lsls r2, r3, #5
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #0x10]
	mov r4, sb
	ldrh r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	b _0803E924
	.align 2, 0
_0803E918: .4byte 0x03006824
_0803E91C: .4byte 0x080FBD84
_0803E920:
	movs r0, #0
	str r0, [r7, #0x10]
_0803E924:
	str r0, [r7, #0x14]
	bl GetMultiplayerId
	ldr r4, [r7, #0x10]
	asrs r4, r4, #0xc
	ldr r6, _0803EB44 @ =gPlayers
	movs r5, #0xd4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r4, r4, r0
	bl GetMultiplayerId
	ldr r2, [r7, #0x14]
	asrs r2, r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #0xc
	subs r2, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r7, #0xa]
	cmp r0, #2
	bne _0803E9EE
	ldr r0, _0803EB48 @ =0x080FBDFC
	ldr r3, [sp, #0x60]
	lsls r1, r3, #1
	adds r1, r1, r0
	mov r4, sl
	ldrh r0, [r4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0803E9EE
	cmp r2, #0x2f
	bhi _0803E9EE
	bl GetMultiplayerId
	ldrh r1, [r7]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x80
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	beq _0803E9EE
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803E9EE
	bl GetMultiplayerId
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0xc]
	cmp r0, #9
	beq _0803E9EE
	bl sub_08007544
	cmp r0, #0
	bne _0803E9EE
	bl GetMultiplayerId
	adds r4, r0, #0
	muls r4, r5, r4
	adds r4, r4, r6
	movs r0, #7
	strh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _0803EB4C @ =0x0000FFFE
	strh r0, [r1]
	adds r0, r7, #0
	adds r1, r4, #0
	bl CalcDamageToPlayer
	adds r1, r4, #0
	adds r1, #0x54
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r4, #0x80
	adds r4, r4, r0
	ldr r0, [r7, #0x2c]
	str r0, [r4]
_0803E9EE:
	mov r0, sb
	ldrh r1, [r0]
	ldr r2, [sp, #0x78]
	str r2, [sp]
	add r0, sp, #0x10
	mov r2, sl
	ldr r3, [sp, #0x9c]
	bl sub_08026C40
	mov r3, r8
	strh r0, [r3]
	bl sub_08007510
	cmp r0, #0
	bne _0803EA9E
	bl sub_08007604
	cmp r0, #0
	bne _0803EA9E
	bl sub_08007544
	cmp r0, #0
	bne _0803EA9E
	bl sub_080075AC
	adds r3, r0, #0
	cmp r3, #0
	bne _0803EA9E
	ldrh r0, [r7, #0xa]
	cmp r0, #8
	beq _0803EA9E
	ldr r4, [sp, #0x54]
	lsls r0, r4, #4
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x48]
	lsls r1, r1, #4
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x30
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005FC4
	movs r0, #1
	ldr r1, [sp, #0x84]
	ands r0, r1
	cmp r0, #0
	bne _0803EA7E
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sb
	ldrh r2, [r4]
	mov r5, sl
	ldrh r3, [r5]
	ldr r5, [sp, #0x60]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08004344
_0803EA7E:
	ldr r0, [sp, #0x4c]
	adds r0, #0x7e
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #3
	bl LoadPalette
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x1d
	movs r2, #1
	bl LoadPalette
_0803EA9E:
	ldrh r0, [r7, #0xa]
	cmp r0, #7
	bne _0803EB22
	ldr r0, [sp, #0x70]
	ldrh r1, [r7, #0x2a]
	cmp r0, r1
	beq _0803EAB8
	movs r2, #0x14
	str r2, [sp, #0x7c]
	ldrh r3, [r7, #0x2a]
	str r3, [sp, #0x70]
	movs r4, #0
	str r4, [sp, #0x68]
_0803EAB8:
	adds r0, r7, #0
	bl ApplyEnemyDamage
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EB22
	movs r0, #2
	mov r5, sb
	strh r0, [r5]
	movs r0, #3
	mov r1, sl
	strh r0, [r1]
	movs r0, #8
	strh r0, [r7, #0xa]
	movs r2, #0
	str r2, [sp, #0x6c]
	movs r3, #0
	str r3, [sp, #0x78]
	bl sub_08007544
	cmp r0, #0
	bne _0803EB02
	bl sub_08007510
	cmp r0, #0
	bne _0803EB02
	bl sub_08007604
	cmp r0, #0
	bne _0803EB02
	bl sub_080075AC
	cmp r0, #0
	bne _0803EB02
	movs r0, #0x95
	bl PlaySE
_0803EB02:
	ldrh r0, [r7]
	subs r0, #1
	bl sub_0803F11C
	ldr r0, _0803EB50 @ =0x03006824
	movs r1, #0
	str r1, [r0]
	ldrh r3, [r7, #2]
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_080274BC
_0803EB22:
	ldr r0, [sp, #0x7c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x7c]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0803EB98
	ldr r4, [sp, #0x70]
	cmp r4, #0
	bne _0803EB58
	ldr r5, _0803EB54 @ =0x0000FFFF
	str r5, [sp, #0x7c]
	b _0803EB9C
	.align 2, 0
_0803EB44: .4byte gPlayers
_0803EB48: .4byte 0x080FBDFC
_0803EB4C: .4byte 0x0000FFFE
_0803EB50: .4byte 0x03006824
_0803EB54: .4byte 0x0000FFFF
_0803EB58:
	bl sub_08007544
	cmp r0, #0
	bne _0803EB82
	bl sub_08007510
	cmp r0, #0
	bne _0803EB82
	bl sub_08007604
	cmp r0, #0
	bne _0803EB82
	bl sub_080075AC
	cmp r0, #0
	bne _0803EB82
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x68]
	bl sub_0800EA74
_0803EB82:
	movs r0, #2
	ldr r1, [sp, #0x7c]
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	b _0803EB9C
_0803EB98:
	ldr r2, _0803EBDC @ =0x0000FFFF
	str r2, [sp, #0x7c]
_0803EB9C:
	bl WaitFrame
_0803EBA0:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	beq _0803EBD0
	bl sub_08007750
	cmp r0, #0
	bne _0803EBD0
	bl sub_080074CC
	cmp r0, #0
	bne _0803EBD0
	ldr r0, _0803EBE0 @ =gUnknown_030063D8
	ldr r0, [r0]
	adds r0, #0x9c
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EBD0
	bl sub_08007578
	cmp r0, #0
	bne _0803EBD0
	b _0803E580
_0803EBD0:
	bl sub_08001F64
	cmp r0, #0
	beq _0803EC00
	movs r4, #0
	b _0803EBE8
	.align 2, 0
_0803EBDC: .4byte 0x0000FFFF
_0803EBE0: .4byte gUnknown_030063D8
_0803EBE4:
	bl WaitFrame
_0803EBE8:
	ldrh r3, [r7, #2]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080274BC
	cmp r0, #0
	beq _0803EBE4
_0803EC00:
	ldr r2, _0803EC28 @ =gActiveEnemyMask
	movs r1, #1
	ldrh r7, [r7]
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bl GetCurrentThread
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC28: .4byte gActiveEnemyMask
