	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_08023048
sub_08023048: @ 0x08023048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	mov r8, r3
	movs r6, #0
	movs r7, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bls _0802306C
	b _08023318
_0802306C:
	lsls r0, r0, #2
	ldr r1, _08023078 @ =_0802307C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023078: .4byte _0802307C
_0802307C: @ jump table
	.4byte _08023318 @ case 0
	.4byte _0802309C @ case 1
	.4byte _080230B6 @ case 2
	.4byte _080230EC @ case 3
	.4byte _0802310E @ case 4
	.4byte _08023144 @ case 5
	.4byte _0802315E @ case 6
	.4byte _08023178 @ case 7
_0802309C:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	b _0802318E
_080230B6:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	adds r1, r0, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	blt _0802312E
	lsls r0, r2, #6
	lsrs r7, r0, #0x1e
	cmp r7, #0
	bne _0802318E
	ldr r3, _080230E8 @ =0x0000015B
	adds r0, r1, r3
	ldrb r7, [r0]
	b _0802318E
	.align 2, 0
_080230E8: .4byte 0x0000015B
_080230EC:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	blt _0802312E
	b _0802313E
_0802310E:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl GetDataRecord
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r5, [r0]
	ldr r2, [r4]
	lsls r0, r2, #5
	cmp r0, #0
	bge _0802313E
_0802312E:
	adds r0, r5, #0
	adds r0, #0x70
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0802318E
_0802313E:
	lsls r0, r2, #6
	lsrs r7, r0, #0x1e
	b _0802318E
_08023144:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl GetDataRecord
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r5, [r0]
	b _0802318E
_0802315E:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r5, [r0]
	b _0802318E
_08023178:
	ldr r0, [r4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	movs r1, #0xb8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl GetDataRecord
	ldr r0, [r0, #0x78]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802318E:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08023224
	bl sub_08007544
	adds r3, r0, #0
	mov r2, sb
	asrs r7, r2, #0xc
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, sl
	asrs r6, r4, #0xc
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x1e
	movs r2, #0x10
	str r2, [sp]
	str r3, [sp, #4]
	add r2, sp, #0x1c
	adds r3, r4, #0
	bl sub_08005FC4
	add r0, sp, #0x1c
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080231D2
	b _08023318
_080231D2:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080231E0
	b _08023318
_080231E0:
	cmp r1, #0xa8
	ble _080231E6
	b _08023318
_080231E6:
	bl sub_08007544
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08006008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r1, sp, #0x1c
	movs r2, #0
	ldrsh r3, [r1, r2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	str r0, [sp]
	ldr r0, _08023220 @ =0x0300648C
	str r0, [sp, #4]
	subs r0, #0x1c
	ldr r2, [r0, #8]
	str r2, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08004418
	b _08023318
	.align 2, 0
_08023220: .4byte 0x0300648C
_08023224:
	movs r0, #2
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08023240
	cmp r6, #0
	bne _08023240
	ldr r0, _0802323C @ =gUnknown_03006470
	adds r0, #0x25
	movs r1, #0xa
	b _08023246
	.align 2, 0
_0802323C: .4byte gUnknown_03006470
_08023240:
	ldr r0, _080232EC @ =gUnknown_03006470
	adds r0, #0x25
	movs r1, #9
_08023246:
	strb r1, [r0]
	movs r0, #8
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0802327A
	cmp r7, #0
	beq _0802327A
	adds r3, r7, #0
	adds r3, #0xb
	ldr r2, _080232F0 @ =gUnknown_03006430
	mov r1, sl
	adds r1, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	mov r0, sb
	movs r2, #4
	bl sub_08003518
_0802327A:
	movs r0, #4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080232F4
	ldr r2, _080232EC @ =gUnknown_03006470
	ldrh r3, [r2, #0x2e]
	ldrh r4, [r2, #0x2c]
	adds r1, r3, r4
	strh r1, [r2, #0x2c]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _080232A4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x30
	ldrsh r1, [r2, r4]
	cmp r0, r1
	ble _080232A4
	rsbs r0, r3, #0
	strh r0, [r2, #0x2e]
_080232A4:
	ldrh r3, [r2, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080232BE
	movs r4, #0x2c
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _080232BE
	rsbs r0, r3, #0
	strh r0, [r2, #0x2e]
_080232BE:
	movs r1, #0
	str r1, [sp]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	movs r3, #0x2c
	ldrsh r0, [r2, r3]
	str r0, [sp, #0x10]
	movs r4, #0x2c
	ldrsh r0, [r2, r4]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r0, sb
	mov r1, sl
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003724
	b _08023310
	.align 2, 0
_080232EC: .4byte gUnknown_03006470
_080232F0: .4byte gUnknown_03006430
_080232F4:
	str r0, [sp]
	ldr r0, _08023328 @ =0x0300648C
	str r0, [sp, #4]
	subs r0, #0x1c
	ldr r1, [r0, #8]
	str r1, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	mov r0, sb
	mov r1, sl
	movs r2, #0
	adds r3, r5, #0
	bl sub_08003518
_08023310:
	ldr r0, _0802332C @ =gUnknown_03006430
	adds r0, #0x25
	movs r1, #9
	strb r1, [r0]
_08023318:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023328: .4byte 0x0300648C
_0802332C: .4byte gUnknown_03006430
