	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_8034C54
sub_8034C54: @ 8034C54
	push {r4-r7,lr}
	adds r4, r0, 0
	ldr r5, =gUnknown_02022E10
	ldr r0, [r5]
	cmp r0, 0
	beq _08034C64
	bl sub_8034CC8
_08034C64:
	movs r0, 0x8
	bl Alloc
	str r0, [r5]
	cmp r0, 0
	bne _08034C78
	movs r0, 0
	b _08034CC0
	.pool
_08034C78:
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	bl Alloc
	ldr r1, [r5]
	str r0, [r1, 0x4]
	cmp r0, 0
	bne _08034C94
	adds r0, r1, 0
	bl Free
	movs r0, 0
	b _08034CC0
_08034C94:
	str r4, [r1]
	movs r3, 0
	cmp r3, r4
	bcs _08034CBE
	movs r7, 0
	movs r6, 0xFF
	movs r2, 0
_08034CA2:
	ldr r0, [r5]
	ldr r0, [r0, 0x4]
	adds r0, r2, r0
	strb r7, [r0]
	ldr r0, [r5]
	ldr r1, [r0, 0x4]
	adds r1, r2, r1
	ldrb r0, [r1, 0x1]
	orrs r0, r6
	strb r0, [r1, 0x1]
	adds r2, 0x1C
	adds r3, 0x1
	cmp r3, r4
	bcc _08034CA2
_08034CBE:
	movs r0, 0x1
_08034CC0:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8034C54

	thumb_func_start sub_8034CC8
sub_8034CC8: @ 8034CC8
	push {r4,r5,lr}
	ldr r2, =gUnknown_02022E10
	ldr r1, [r2]
	cmp r1, 0
	beq _08034D08
	ldr r0, [r1, 0x4]
	cmp r0, 0
	beq _08034CFC
	movs r4, 0
	ldr r0, [r1]
	cmp r4, r0
	bcs _08034CF2
	adds r5, r2, 0
_08034CE2:
	adds r0, r4, 0
	bl sub_80353DC
	adds r4, 0x1
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r4, r0
	bcc _08034CE2
_08034CF2:
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r0, [r0, 0x4]
	bl Free
_08034CFC:
	ldr r4, =gUnknown_02022E10
	ldr r0, [r4]
	bl Free
	movs r0, 0
	str r0, [r4]
_08034D08:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8034CC8

	thumb_func_start sub_8034D14
sub_8034D14: @ 8034D14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r8, r0
	mov r10, r1
	adds r5, r2, 0
	ldr r6, =gUnknown_02022E10
	ldr r0, [r6]
	cmp r0, 0
	beq _08034DD4
	ldr r1, [r0, 0x4]
	mov r0, r8
	lsls r2, r0, 3
	subs r0, r2, r0
	lsls r4, r0, 2
	adds r1, r4, r1
	ldrb r0, [r1]
	mov r9, r2
	cmp r0, 0
	bne _08034DD4
	ldrb r0, [r5, 0x1]
	bl sub_8035518
	ldr r1, [r6]
	ldr r1, [r1, 0x4]
	adds r1, r4, r1
	strb r0, [r1, 0x1]
	ldr r0, [r6]
	ldr r0, [r0, 0x4]
	adds r0, r4, r0
	ldrb r0, [r0, 0x1]
	cmp r0, 0xFF
	beq _08034DD4
	ldr r0, [r5, 0x8]
	ldrh r0, [r0, 0x6]
	bl GetObjectTileRangeStartByTag
	ldr r2, [r6]
	ldr r1, [r2, 0x4]
	adds r1, r4, r1
	strh r0, [r1, 0xA]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	ldrh r1, [r0, 0xA]
	ldr r7, =0xffff0000
	lsrs r0, r7, 16
	cmp r1, r0
	bne _08034DE0
	ldr r2, [r5, 0x8]
	ldrh r0, [r2, 0x4]
	adds r1, r2, 0
	cmp r0, 0
	beq _08034D94
	adds r0, r1, 0
	bl LoadObjectPic
	b _08034DB4
	.pool
_08034D94:
	ldr r0, [r2]
	ldr r1, [r2, 0x4]
	str r0, [sp]
	str r1, [sp, 0x4]
	ldr r0, [r2]
	bl sub_8034974
	lsls r0, 16
	lsrs r0, 16
	ldr r1, [sp, 0x4]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, 0x4]
	mov r0, sp
	bl LoadCompressedObjectPic
_08034DB4:
	ldr r1, [r6]
	ldr r1, [r1, 0x4]
	adds r1, r4, r1
	strh r0, [r1, 0xA]
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0, 0xA]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _08034DE0
_08034DD4:
	movs r0, 0
	b _08034EE8
	.pool
_08034DE0:
	ldr r0, [r5, 0xC]
	ldrh r0, [r0, 0x4]
	bl IndexOfObjectPaletteTag
	ldr r6, =gUnknown_02022E10
	ldr r1, [r6]
	ldr r1, [r1, 0x4]
	mov r4, r9
	mov r3, r8
	subs r2, r4, r3
	lsls r4, r2, 2
	adds r1, r4, r1
	strb r0, [r1, 0x4]
	ldr r0, [r6]
	ldr r0, [r0, 0x4]
	adds r0, r4, r0
	ldrb r0, [r0, 0x4]
	cmp r0, 0xFF
	bne _08034E14
	ldr r0, [r5, 0xC]
	bl LoadTaggedObjectPalette
	ldr r1, [r6]
	ldr r1, [r1, 0x4]
	adds r1, r4, r1
	strb r0, [r1, 0x4]
_08034E14:
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	adds r1, r4, r1
	ldrb r0, [r5]
	lsls r0, 30
	lsrs r0, 30
	strb r0, [r1, 0x2]
	ldr r0, [r6]
	ldr r0, [r0, 0x4]
	adds r0, r4, r0
	ldrb r1, [r5, 0x1]
	strb r1, [r0, 0x3]
	ldr r2, [r6]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0, 0xC]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	ldrh r1, [r5, 0x6]
	strh r1, [r0, 0xE]
	ldr r1, [r2, 0x4]
	adds r1, r4, r1
	ldrb r0, [r5]
	lsls r0, 28
	lsrs r0, 30
	strb r0, [r1, 0x6]
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	adds r1, r4, r1
	ldrb r0, [r5]
	lsls r0, 26
	lsrs r0, 30
	strb r0, [r1, 0x5]
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	adds r1, r4, r1
	ldrb r0, [r5]
	lsrs r0, 6
	strb r0, [r1, 0x7]
	ldr r0, [r6]
	ldr r0, [r0, 0x4]
	adds r0, r4, r0
	ldrb r1, [r5, 0x2]
	strb r1, [r0, 0x8]
	ldrb r1, [r5]
	lsls r0, r1, 28
	lsrs r0, 30
	lsls r1, 26
	lsrs r1, 30
	bl sub_80355F8
	ldr r1, [r6]
	ldr r1, [r1, 0x4]
	adds r1, r4, r1
	strb r0, [r1, 0x9]
	ldr r2, [r6]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	ldr r1, [r5, 0x8]
	ldrh r1, [r1, 0x6]
	strh r1, [r0, 0x10]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	ldr r1, [r5, 0xC]
	ldrh r1, [r1, 0x4]
	strh r1, [r0, 0x12]
	ldr r0, [r2, 0x4]
	adds r0, r4, r0
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r0, [r0, 0x4]
	adds r0, r4, r0
	str r1, [r0, 0x14]
	movs r3, 0x1
	ldrb r0, [r5, 0x1]
	cmp r3, r0
	bcs _08034ECA
_08034EB2:
	ldr r0, [r6]
	ldr r2, [r0, 0x4]
	adds r2, r4, r2
	ldr r1, [r2, 0x14]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 1
	str r0, [r2, 0x14]
	adds r3, 0x1
	ldrb r2, [r5, 0x1]
	cmp r3, r2
	bcc _08034EB2
_08034ECA:
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	mov r3, r9
	mov r4, r8
	subs r1, r3, r4
	lsls r1, 2
	ldr r0, [r0, 0x4]
	adds r0, r1
	bl sub_8034EFC
	mov r0, r8
	mov r1, r10
	bl sub_8035044
	movs r0, 0x1
_08034EE8:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8034D14

	thumb_func_start sub_8034EFC
sub_8034EFC: @ 8034EFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r4, r0, 0
	ldrb r5, [r4, 0x1]
	movs r0, 0xC
	ldrsh r7, [r4, r0]
	ldrb r0, [r4, 0x3]
	adds r0, 0x1
	mov r8, r0
	mov r1, sp
	movs r0, 0
	strh r0, [r1]
	lsls r1, r5, 3
	ldr r2, =gUnknown_030022F8
	mov r9, r2
	add r1, r9
	mov r0, r8
	lsls r2, r0, 2
	movs r0, 0x80
	lsls r0, 17
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	movs r6, 0
	ldrb r5, [r4, 0x1]
	cmp r6, r8
	bcs _08034FCE
	movs r1, 0x3F
	mov r10, r1
	movs r2, 0xD
	negs r2, r2
	mov r9, r2
_08034F46:
	lsls r0, r5, 3
	ldr r1, =gMain
	adds r3, r0, r1
	ldrh r1, [r4, 0xE]
	adds r0, r3, 0
	adds r0, 0x38
	strb r1, [r0]
	ldr r2, =0x000001ff
	adds r0, r2, 0
	adds r1, r7, 0
	ands r1, r0
	ldrh r2, [r3, 0x3A]
	ldr r0, =0xfffffe00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, 0x3A]
	ldrb r1, [r4, 0x6]
	movs r0, 0x39
	adds r0, r3
	mov r12, r0
	lsls r1, 6
	ldrb r2, [r0]
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	ldrb r1, [r4, 0x5]
	movs r2, 0x3B
	adds r2, r3
	mov r12, r2
	lsls r1, 6
	ldrb r2, [r2]
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	ldrh r0, [r4, 0xA]
	ldr r1, =0x000003ff
	ands r1, r0
	ldrh r2, [r3, 0x3C]
	ldr r0, =0xfffffc00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, 0x3C]
	adds r3, 0x3D
	movs r0, 0x3
	ldrb r1, [r4, 0x7]
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	mov r0, r9
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r4, 0x4]
	lsls r2, 4
	movs r1, 0xF
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r4, 0x8]
	adds r7, r0
	adds r6, 0x1
	adds r5, 0x1
	cmp r6, r8
	bcc _08034F46
_08034FCE:
	subs r5, 0x1
	ldr r0, =gMain
	lsls r3, r5, 3
	adds r3, r0
	movs r2, 0xC
	ldrsh r1, [r4, r2]
	ldrb r0, [r4, 0x8]
	subs r1, r0
	ldr r2, =0x000001ff
	adds r0, r2, 0
	ands r1, r0
	ldrh r2, [r3, 0x3A]
	ldr r0, =0xfffffe00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, 0x3A]
	adds r2, r3, 0
	adds r2, 0x39
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, 0x9]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 1
	ldrh r4, [r4, 0xA]
	adds r1, r4
	ldr r2, =0x000003ff
	adds r0, r2, 0
	ands r1, r0
	ldrh r2, [r3, 0x3C]
	ldr r0, =0xfffffc00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, 0x3C]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8034EFC

	thumb_func_start sub_8035044
sub_8035044: @ 8035044
	push {r4-r6,lr}
	adds r3, r0, 0
	adds r4, r1, 0
	ldr r0, =gUnknown_02022E10
	ldr r1, [r0]
	adds r6, r0, 0
	cmp r1, 0
	beq _080350A8
	ldr r2, [r1, 0x4]
	lsls r1, r3, 3
	subs r0, r1, r3
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2]
	adds r5, r1, 0
	cmp r0, 0
	beq _080350A8
	str r4, [r2, 0x18]
	cmp r4, 0
	bge _08035078
	movs r2, 0x1
	negs r4, r4
	b _0803507A
	.pool
_08035078:
	movs r2, 0
_0803507A:
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	subs r0, r5, r3
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x2]
	cmp r3, 0x1
	beq _0803509A
	cmp r3, 0x1
	ble _08035092
	cmp r3, 0x2
	beq _080350A2
_08035092:
	adds r1, r4, 0
	bl sub_80350B0
	b _080350A8
_0803509A:
	adds r1, r4, 0
	bl sub_8035164
	b _080350A8
_080350A2:
	adds r1, r4, 0
	bl sub_80352C0
_080350A8:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8035044

	thumb_func_start sub_80350B0
sub_80350B0: @ 80350B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r8, r0
	mov r9, r1
	str r2, [sp]
	ldr r5, [r0, 0x14]
	ldrb r7, [r0, 0x1]
	ldr r0, =gMain
	mov r10, r0
	cmp r5, 0
	beq _0803511A
	lsls r0, r7, 3
	adds r0, 0x3C
	mov r1, r10
	adds r6, r0, r1
_080350D6:
	mov r0, r9
	adds r1, r5, 0
	bl __udivsi3
	adds r4, r0, 0
	adds r0, r4, 0
	muls r0, r5
	mov r2, r9
	subs r2, r0
	mov r9, r2
	adds r0, r5, 0
	movs r1, 0xA
	bl __udivsi3
	adds r5, r0, 0
	mov r1, r8
	ldrb r0, [r1, 0x9]
	adds r1, r4, 0
	muls r1, r0
	mov r2, r8
	ldrh r2, [r2, 0xA]
	adds r1, r2
	ldr r2, =0x000003ff
	adds r0, r2, 0
	ands r1, r0
	ldrh r0, [r6]
	ldr r2, =0xfffffc00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	adds r6, 0x8
	adds r7, 0x1
	cmp r5, 0
	bne _080350D6
_0803511A:
	ldr r0, [sp]
	cmp r0, 0
	beq _08035140
	lsls r0, r7, 3
	add r0, r10
	adds r0, 0x39
	ldrb r2, [r0]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	b _08035154
	.pool
_08035140:
	lsls r2, r7, 3
	add r2, r10
	adds r2, 0x39
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2]
_08035154:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80350B0

	thumb_func_start sub_8035164
sub_8035164: @ 8035164
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r6, r0, 0
	mov r8, r1
	str r2, [sp]
	ldr r5, [r6, 0x14]
	ldr r3, =gUnknown_03000DD4
	ldrb r0, [r6, 0x1]
	str r0, [r3]
	ldr r2, =gUnknown_03000DD8
	movs r0, 0
	str r0, [r2]
	ldr r1, =gUnknown_03000DDC
	subs r0, 0x1
	str r0, [r1]
	adds r7, r3, 0
	mov r10, r1
	ldr r0, =gMain
	mov r9, r0
	cmp r5, 0
	beq _0803524C
_08035196:
	mov r0, r8
	adds r1, r5, 0
	bl __udivsi3
	adds r4, r0, 0
	adds r0, r4, 0
	muls r0, r5
	mov r1, r8
	subs r1, r0
	mov r8, r1
	adds r0, r5, 0
	movs r1, 0xA
	bl __udivsi3
	adds r5, r0, 0
	cmp r4, 0
	bne _080351C8
	mov r2, r10
	ldr r1, [r2]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	bne _080351C8
	cmp r5, 0
	bne _08035224
_080351C8:
	ldr r2, [r7]
	lsls r2, 3
	add r2, r9
	ldrb r0, [r6, 0x9]
	adds r3, r4, 0
	muls r3, r0
	ldrh r4, [r6, 0xA]
	adds r3, r4
	ldr r1, =0x000003ff
	adds r0, r1, 0
	ands r3, r0
	ldrh r0, [r2, 0x3C]
	ldr r4, =0xfffffc00
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, 0x3C]
	adds r2, 0x39
	ldrb r0, [r2]
	movs r1, 0x4
	negs r1, r1
	ands r0, r1
	strb r0, [r2]
	mov r2, r10
	ldr r1, [r2]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	bne _0803523A
	ldr r4, =gUnknown_03000DD8
	ldr r0, [r4]
	str r0, [r2]
	b _0803523A
	.pool
_08035224:
	ldr r0, [r7]
	lsls r0, 3
	add r0, r9
	adds r0, 0x39
	ldrb r1, [r0]
	movs r2, 0x4
	negs r2, r2
	ands r1, r2
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
_0803523A:
	ldr r0, [r7]
	adds r0, 0x1
	str r0, [r7]
	ldr r4, =gUnknown_03000DD8
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	cmp r5, 0
	bne _08035196
_0803524C:
	ldr r0, [sp]
	cmp r0, 0
	beq _08035298
	ldr r1, [r7]
	lsls r1, 3
	add r1, r9
	adds r1, 0x39
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r3, [r7]
	lsls r3, 3
	add r3, r9
	movs r1, 0xC
	ldrsh r2, [r6, r1]
	mov r4, r10
	ldr r0, [r4]
	subs r0, 0x1
	ldrb r1, [r6, 0x8]
	muls r0, r1
	adds r2, r0
	ldr r1, =0x000001ff
	adds r0, r1, 0
	ands r2, r0
	ldrh r1, [r3, 0x3A]
	ldr r0, =0xfffffe00
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, 0x3A]
	b _080352AE
	.pool
_08035298:
	ldr r0, [r7]
	lsls r0, 3
	add r0, r9
	adds r0, 0x39
	ldrb r2, [r0]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
_080352AE:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8035164

	thumb_func_start sub_80352C0
sub_80352C0: @ 80352C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r8, r0
	mov r10, r1
	str r2, [sp]
	ldr r5, [r0, 0x14]
	ldrb r3, [r0, 0x1]
	movs r0, 0
	str r0, [sp, 0x4]
	mov r9, r0
	cmp r5, 0
	beq _0803535A
_080352E0:
	lsls r0, r3, 3
	adds r1, r0, 0
	adds r1, 0x39
	ldr r2, =gMain
	adds r7, r1, r2
	adds r0, 0x3C
	adds r6, r0, r2
_080352EE:
	mov r0, r10
	adds r1, r5, 0
	str r3, [sp, 0x8]
	bl __udivsi3
	adds r4, r0, 0
	adds r0, r4, 0
	muls r0, r5
	mov r1, r10
	subs r1, r0
	mov r10, r1
	adds r0, r5, 0
	movs r1, 0xA
	bl __udivsi3
	adds r5, r0, 0
	ldr r3, [sp, 0x8]
	cmp r4, 0
	bne _0803531E
	ldr r2, [sp, 0x4]
	cmp r2, 0
	bne _0803531E
	cmp r5, 0
	bne _080352E0
_0803531E:
	movs r0, 0x1
	str r0, [sp, 0x4]
	mov r1, r8
	ldrb r0, [r1, 0x9]
	adds r2, r4, 0
	muls r2, r0
	ldrh r4, [r1, 0xA]
	adds r2, r4
	ldr r1, =0x000003ff
	adds r0, r1, 0
	ands r2, r0
	ldrh r0, [r6]
	ldr r4, =0xfffffc00
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r2
	strh r0, [r6]
	ldrb r0, [r7]
	movs r2, 0x4
	negs r2, r2
	adds r1, r2, 0
	ands r0, r1
	strb r0, [r7]
	adds r7, 0x8
	adds r6, 0x8
	adds r3, 0x1
	movs r4, 0x1
	add r9, r4
	cmp r5, 0
	bne _080352EE
_0803535A:
	mov r0, r8
	ldrb r0, [r0, 0x3]
	cmp r9, r0
	bge _0803538A
	ldr r1, =gMain
	movs r5, 0x4
	negs r5, r5
	movs r4, 0x2
	lsls r0, r3, 3
	adds r0, 0x39
	adds r2, r0, r1
_08035370:
	ldrb r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, 0x8
	adds r3, 0x1
	movs r1, 0x1
	add r9, r1
	mov r0, r8
	ldrb r0, [r0, 0x3]
	cmp r9, r0
	blt _08035370
_0803538A:
	ldr r1, [sp]
	cmp r1, 0
	beq _080353B0
	lsls r0, r3, 3
	ldr r2, =gMain
	adds r0, r2
	adds r0, 0x39
	ldrb r2, [r0]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	b _080353C6
	.pool
_080353B0:
	lsls r2, r3, 3
	ldr r4, =gMain
	adds r2, r4
	adds r2, 0x39
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2]
_080353C6:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80352C0

	thumb_func_start sub_80353DC
sub_80353DC: @ 80353DC
	push {r4-r7,lr}
	adds r4, r0, 0
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	cmp r0, 0
	beq _0803546E
	ldr r2, [r0, 0x4]
	lsls r1, r4, 3
	subs r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2]
	adds r5, r1, 0
	cmp r0, 0
	beq _0803546E
	ldrb r3, [r2, 0x3]
	adds r0, r3, 0x1
	ldrb r2, [r2, 0x1]
	cmp r0, 0
	beq _08035426
	ldr r1, =gMain
	movs r7, 0x4
	negs r7, r7
	movs r6, 0x2
	adds r3, r0, 0
	lsls r0, r2, 3
	adds r0, 0x39
	adds r2, r0, r1
_08035414:
	ldrb r1, [r2]
	adds r0, r7, 0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	subs r3, 0x1
	adds r2, 0x8
	cmp r3, 0
	bne _08035414
_08035426:
	adds r0, r4, 0
	bl sub_8035570
	cmp r0, 0
	bne _08035442
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	subs r0, r5, r4
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x10]
	bl FreeObjectTilesByTag
_08035442:
	adds r0, r4, 0
	bl sub_80355B4
	cmp r0, 0
	bne _0803545E
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	subs r0, r5, r4
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x12]
	bl FreeObjectPaletteByTag
_0803545E:
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	subs r0, r5, r4
	lsls r0, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0803546E:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80353DC

	thumb_func_start sub_803547C
sub_803547C: @ 803547C
	push {r4-r7,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	ldr r0, =gUnknown_02022E10
	ldr r1, [r0]
	adds r7, r0, 0
	cmp r1, 0
	beq _0803550C
	ldr r2, [r1, 0x4]
	lsls r1, r4, 3
	subs r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2]
	adds r6, r1, 0
	cmp r0, 0
	beq _0803550C
	ldrb r3, [r2, 0x3]
	adds r1, r3, 0x1
	ldrb r0, [r2, 0x1]
	cmp r5, 0
	beq _080354D8
	cmp r1, 0
	beq _0803550C
	ldr r1, =gMain
	movs r5, 0x4
	negs r5, r5
	movs r4, 0x2
	adds r3, 0x1
	lsls r0, 3
	adds r0, 0x39
	adds r2, r0, r1
_080354BC:
	ldrb r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	subs r3, 0x1
	adds r2, 0x8
	cmp r3, 0
	bne _080354BC
	b _0803550C
	.pool
_080354D8:
	cmp r1, 0
	beq _080354FA
	ldr r1, =gMain
	movs r5, 0x4
	negs r5, r5
	adds r3, 0x1
	lsls r0, 3
	adds r0, 0x39
	adds r2, r0, r1
_080354EA:
	ldrb r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	strb r0, [r2]
	subs r3, 0x1
	adds r2, 0x8
	cmp r3, 0
	bne _080354EA
_080354FA:
	ldr r0, [r7]
	ldr r1, [r0, 0x4]
	subs r0, r6, r4
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0, 0x18]
	adds r0, r4, 0
	bl sub_8035044
_0803550C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803547C

	thumb_func_start sub_8035518
sub_8035518: @ 8035518
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r5, 0x40
	movs r3, 0
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r2, [r0]
	cmp r3, r2
	bcs _0803555A
	ldr r1, [r0, 0x4]
_0803552E:
	ldrb r0, [r1]
	cmp r0, 0
	bne _08035548
	ldrb r0, [r1, 0x1]
	cmp r0, 0xFF
	beq _08035552
	ldrb r0, [r1, 0x3]
	cmp r0, r4
	bhi _08035552
	ldrb r0, [r1, 0x1]
	b _0803556A
	.pool
_08035548:
	adds r0, r5, 0x1
	ldrb r5, [r1, 0x3]
	adds r0, r5
	lsls r0, 16
	lsrs r5, r0, 16
_08035552:
	adds r1, 0x1C
	adds r3, 0x1
	cmp r3, r2
	bcc _0803552E
_0803555A:
	adds r0, r5, r4
	adds r0, 0x1
	cmp r0, 0x80
	bgt _08035568
	lsls r0, r5, 24
	lsrs r0, 24
	b _0803556A
_08035568:
	movs r0, 0xFF
_0803556A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8035518

	thumb_func_start sub_8035570
sub_8035570: @ 8035570
	push {r4-r6,lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r4, [r0]
	cmp r2, r4
	bcs _080355AC
	ldr r1, [r0, 0x4]
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r5, r0, r1
_0803558A:
	ldrb r0, [r1]
	cmp r0, 0
	beq _080355A4
	cmp r2, r3
	beq _080355A4
	ldrh r0, [r1, 0x10]
	ldrh r6, [r5, 0x10]
	cmp r0, r6
	bne _080355A4
	movs r0, 0x1
	b _080355AE
	.pool
_080355A4:
	adds r1, 0x1C
	adds r2, 0x1
	cmp r2, r4
	bcc _0803558A
_080355AC:
	movs r0, 0
_080355AE:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8035570

	thumb_func_start sub_80355B4
sub_80355B4: @ 80355B4
	push {r4-r6,lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r0, =gUnknown_02022E10
	ldr r0, [r0]
	ldr r4, [r0]
	cmp r2, r4
	bcs _080355F0
	ldr r1, [r0, 0x4]
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r5, r0, r1
_080355CE:
	ldrb r0, [r1]
	cmp r0, 0
	beq _080355E8
	cmp r2, r3
	beq _080355E8
	ldrh r0, [r1, 0x12]
	ldrh r6, [r5, 0x12]
	cmp r0, r6
	bne _080355E8
	movs r0, 0x1
	b _080355F2
	.pool
_080355E8:
	adds r1, 0x1C
	adds r2, 0x1
	cmp r2, r4
	bcc _080355CE
_080355F0:
	movs r0, 0
_080355F2:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80355B4

	thumb_func_start sub_80355F8
sub_80355F8: @ 80355F8
	ldr r2, =gUnknown_082FF1C8
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_80355F8

	thumb_func_start sub_8035608
sub_8035608: @ 8035608
	push {lr}
	bl ResetAllObjectData
	ldr r0, =gUnknown_0831AC88
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02020630
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r0, =sub_8035648
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8035608

	thumb_func_start sub_8035648
sub_8035648: @ 8035648
	push {lr}
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	pop {r0}
	bx r0
	thumb_func_end sub_8035648

	thumb_func_start trs_config
trs_config: @ 8035658
	push {r4,lr}
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_0831AA08
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	beq _080356A4
	ldr r0, =gUnknown_02024474
	adds r0, 0x24
	movs r1, 0x1
	strb r1, [r0]
	ldr r4, =gUnknown_02023060
	ldr r1, [r4]
	movs r0, 0x1
	bl SetBgTilemapBuffer
	ldr r1, [r4]
	movs r0, 0x2
	bl SetBgTilemapBuffer
	b _080356AA
	.pool
_080356A4:
	ldr r0, =gUnknown_02024474
	adds r0, 0x24
	strb r1, [r0]
_080356AA:
	ldr r1, =gUnknown_0831ABA0
	ldr r0, =gUnknown_02024474
	adds r0, 0x24
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl InitWindows
	bl DeactivateAllTextPrinters
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end trs_config

	thumb_func_start c2_berry_program_update_menu
c2_berry_program_update_menu: @ 80356D0
	push {lr}
	movs r0, 0x2
	bl DisableInterrupts
	movs r0, 0xC5
	bl EnableInterrupts
	bl trs_config
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	ldr r1, =0x0000b040
	movs r0, 0
	bl SetGpuReg
	pop {r0}
	bx r0
	.pool
	thumb_func_end c2_berry_program_update_menu

	thumb_func_start sub_803570C
sub_803570C: @ 803570C
	push {lr}
	movs r0, 0x2
	movs r1, 0x12
	movs r2, 0x10
	bl sub_809882C
	movs r0, 0x2
	movs r1, 0x22
	movs r2, 0x10
	bl sub_809882C
	ldr r0, =gUnknown_08D85600
	movs r1, 0x50
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0803575A
	movs r0, 0x70
	bl sub_81978B0
	movs r0, 0
	movs r1, 0x30
	movs r2, 0x70
	bl copy_textbox_border_tile_patterns_to_vram
	ldr r0, =gPlttBufferUnfaded
	adds r0, 0xEC
	movs r1, 0
	strh r1, [r0]
	ldr r1, =gPlttBufferFaded + 0xEC
	movs r2, 0x1
	bl CpuSet
_0803575A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803570C

	thumb_func_start load_battle_oval_graphics
load_battle_oval_graphics: @ 8035770
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0902
	ands r0, r1
	cmp r0, 0
	beq _080357B0
	ldr r0, =gUnknown_08D7C440
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7CA28
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7C9EC
	b _08035A52
	.pool
_080357B0:
	movs r0, 0x80
	lsls r0, 21
	ands r0, r1
	cmp r0, 0
	beq _080357E4
	ldr r0, =gUnknown_08D7BB14
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7C154
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7DF30
	b _08035A52
	.pool
_080357E4:
	movs r0, 0x80
	lsls r0, 22
	ands r0, r1
	cmp r0, 0
	beq _08035818
	ldr r0, =gUnknown_08D7A108
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7A720
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7DEF4
	b _08035A52
	.pool
_08035818:
	movs r0, 0x80
	lsls r0, 23
	ands r0, r1
	cmp r0, 0
	beq _0803584C
	ldr r0, =gUnknown_08D7D590
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7DC04
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E234
	b _08035A52
	.pool
_0803584C:
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _080358C4
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x20
	bne _08035898
	ldr r0, =gUnknown_08D7C440
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7CA28
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7DFC4
	b _08035A52
	.pool
_08035898:
	cmp r0, 0x26
	bne _080358C4
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E1F8
	b _08035A52
	.pool
_080358C4:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bhi _08035904
	lsls r0, 2
	ldr r1, =_080358E0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080358E0:
	.4byte _08035904
	.4byte _08035950
	.4byte _08035978
	.4byte _080359A0
	.4byte _080359C8
	.4byte _080359F0
	.4byte _08035A18
	.4byte _08035A40
	.4byte _08035A70
_08035904:
	ldr r4, =gUnknown_0831ABA8
	ldr r5, =gUnknown_02022FF0
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0x4
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r4, 0x10
	adds r0, r4
	ldr r0, [r0]
	b _08035A52
	.pool
_08035950:
	ldr r0, =gUnknown_08D7C440
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7CA28
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7DF88
	b _08035A52
	.pool
_08035978:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E060
	b _08035A52
	.pool
_080359A0:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E000
	b _08035A52
	.pool
_080359C8:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E0CC
	b _08035A52
	.pool
_080359F0:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E11C
	b _08035A52
	.pool
_08035A18:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E164
	b _08035A52
	.pool
_08035A40:
	ldr r0, =gUnknown_08D7CCD8
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7D2E0
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7E1A8
_08035A52:
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
	b _08035A8A
	.pool
_08035A70:
	ldr r0, =gUnknown_08D7C440
	ldr r1, =0x06008000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7CA28
	ldr r1, =0x0600d000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7C9EC
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
_08035A8A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end load_battle_oval_graphics

	thumb_func_start sub_8035AA4
sub_8035AA4: @ 8035AA4
	push {lr}
	ldr r0, =gUnknown_08C00000
	movs r1, 0xC0
	lsls r1, 19
	bl LZDecompressVram
	ldr r1, =gUnknown_08C00524
	movs r0, 0
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r0, =gUnknown_08C004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	bl sub_803570C
	bl load_battle_oval_graphics
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8035AA4

	thumb_func_start sub_8035AE4
sub_8035AE4: @ 8035AE4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	ldr r4, [sp, 0x34]
	lsls r0, 24
	lsrs r6, r0, 24
	adds r7, r6, 0
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r12, r3
	lsls r4, 24
	lsrs r4, 24
	mov r9, r4
	movs r4, 0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08035BCC
	ldr r0, =gTasks
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r0
	movs r2, 0x12
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _08035B56
	cmp r5, 0x1
	beq _08035B7E
	cmp r5, 0x1
	bgt _08035B44
	cmp r5, 0
	beq _08035B4E
	b _08035B88
	.pool
_08035B44:
	cmp r5, 0x2
	beq _08035B52
	cmp r5, 0x3
	beq _08035B72
	b _08035B88
_08035B4E:
	ldrh r0, [r1, 0xE]
	b _08035B74
_08035B52:
	ldrh r1, [r1, 0xE]
	b _08035B80
_08035B56:
	cmp r5, 0x1
	beq _08035B72
	cmp r5, 0x1
	bgt _08035B64
	cmp r5, 0
	beq _08035B6E
	b _08035B88
_08035B64:
	cmp r5, 0x2
	beq _08035B7A
	cmp r5, 0x3
	beq _08035B7E
	b _08035B88
_08035B6E:
	ldrh r0, [r1, 0xE]
	b _08035B74
_08035B72:
	ldrh r0, [r1, 0x10]
_08035B74:
	movs r4, 0x3F
	ands r4, r0
	b _08035B88
_08035B7A:
	ldrh r1, [r1, 0xE]
	b _08035B80
_08035B7E:
	ldrh r1, [r1, 0x10]
_08035B80:
	movs r0, 0xFC
	lsls r0, 4
	ands r0, r1
	lsrs r4, r0, 6
_08035B88:
	movs r2, 0
	movs r6, 0x3
	ldr r0, =0x00006001
	adds r5, r0, 0
	add r3, sp, 0xC
_08035B92:
	lsls r1, r2, 1
	adds r0, r6, 0
	lsls r0, r1
	ands r0, r4
	asrs r0, r1
	adds r0, r5
	strh r0, [r3]
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, 0x2
	ble _08035B92
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	mov r0, r8
	add r1, sp, 0xC
	mov r2, r12
	mov r3, r9
	bl CopyToBgTilemapBufferRect_ChangePalette
	mov r0, r8
	bl CopyBgTilemapBufferToVram
	b _08035C36
	.pool
_08035BCC:
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r0, [r0]
	cmp r5, r0
	bne _08035BEC
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldrh r4, [r0, 0xE]
	b _08035BF8
	.pool
_08035BEC:
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldrh r4, [r0, 0x10]
_08035BF8:
	movs r2, 0
	movs r6, 0x3
	ldr r0, =0x00006001
	adds r5, r0, 0
	add r3, sp, 0xC
_08035C02:
	lsls r1, r2, 1
	adds r0, r6, 0
	lsls r0, r1
	ands r0, r4
	asrs r0, r1
	adds r0, r5
	strh r0, [r3]
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, 0x5
	ble _08035C02
	movs r0, 0x6
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	mov r0, r8
	add r1, sp, 0xC
	mov r2, r12
	mov r3, r9
	bl CopyToBgTilemapBufferRect_ChangePalette
	mov r0, r8
	bl CopyBgTilemapBufferToVram
_08035C36:
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8035AE4

	thumb_func_start sub_8035C4C
sub_8035C4C: @ 8035C4C
	push {lr}
	ldr r0, =gUnknown_0202433A
	ldrb r2, [r0]
	cmp r2, 0x3
	bne _08035C68
	ldr r0, =gUnknown_085CCBAD
	movs r1, 0x15
	bl battle_show_message_maybe
	b _08035D68
	.pool
_08035C68:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08035CE2
	cmp r2, 0x1
	bne _08035CAE
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _08035CFC
	cmp r0, 0x1
	bgt _08035CA4
	cmp r0, 0
	beq _08035D36
	b _08035D68
	.pool
_08035CA4:
	cmp r0, 0x2
	beq _08035D36
	cmp r0, 0x3
	bne _08035D68
	b _08035CFC
_08035CAE:
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _08035D36
	cmp r0, 0x1
	bgt _08035CD8
	cmp r0, 0
	beq _08035CFC
	b _08035D68
	.pool
_08035CD8:
	cmp r0, 0x2
	beq _08035CFC
	cmp r0, 0x3
	bne _08035D68
	b _08035D36
_08035CE2:
	cmp r2, 0x1
	bne _08035D20
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _08035D36
_08035CFC:
	ldr r0, =gUnknown_085CCB9E
	movs r1, 0x17
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCBA5
	movs r1, 0x16
	bl battle_show_message_maybe
	b _08035D68
	.pool
_08035D20:
	ldr r2, =gUnknown_020229E8
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _08035D58
_08035D36:
	ldr r0, =gUnknown_085CCB9E
	movs r1, 0x16
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCBA5
	movs r1, 0x17
	bl battle_show_message_maybe
	b _08035D68
	.pool
_08035D58:
	ldr r0, =gUnknown_085CCB9E
	movs r1, 0x17
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCBA5
	movs r1, 0x16
	bl battle_show_message_maybe
_08035D68:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8035C4C

	thumb_func_start task00_0800F6FC
task00_0800F6FC: @ 8035D74
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, =gTasks
	lsls r0, r7, 2
	mov r8, r0
	adds r0, r7
	lsls r0, 3
	adds r5, r0, r1
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	bne _08035D96
	b _08035EC4
_08035D96:
	cmp r0, 0x1
	bgt _08035DA4
	cmp r0, 0
	beq _08035DAC
	b _08036138
	.pool
_08035DA4:
	cmp r0, 0x2
	bne _08035DAA
	b _08035F64
_08035DAA:
	b _08036138
_08035DAC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08035E44
	movs r5, 0
	movs r6, 0x3
_08035DBC:
	ldr r0, =gUnknown_020229F0
	adds r1, r5, r0
	subs r0, 0x8
	adds r4, r5, r0
	ldrh r0, [r4, 0x18]
	cmp r0, 0x1
	beq _08035DF4
	cmp r0, 0x1
	bgt _08035DDC
	cmp r0, 0
	beq _08035DE6
	b _08035E3A
	.pool
_08035DDC:
	cmp r0, 0x2
	beq _08035E08
	cmp r0, 0x3
	beq _08035E22
	b _08035E3A
_08035DE6:
	adds r0, r1, 0
	movs r1, 0x11
	bl battle_show_message_maybe
	ldrb r1, [r4, 0x18]
	movs r0, 0x4
	b _08035E14
_08035DF4:
	adds r0, r1, 0
	movs r1, 0x12
	bl battle_show_message_maybe
	ldrb r1, [r4, 0x18]
	movs r0, 0x4
	str r0, [sp]
	adds r0, r7, 0
	movs r2, 0x2
	b _08035E1A
_08035E08:
	adds r0, r1, 0
	movs r1, 0x13
	bl battle_show_message_maybe
	ldrb r1, [r4, 0x18]
	movs r0, 0x8
_08035E14:
	str r0, [sp]
	adds r0, r7, 0
	movs r2, 0x1
_08035E1A:
	movs r3, 0x2
	bl sub_8035AE4
	b _08035E3A
_08035E22:
	adds r0, r1, 0
	movs r1, 0x14
	bl battle_show_message_maybe
	ldrb r1, [r4, 0x18]
	movs r0, 0x8
	str r0, [sp]
	adds r0, r7, 0
	movs r2, 0x2
	movs r3, 0x2
	bl sub_8035AE4
_08035E3A:
	adds r5, 0x1C
	subs r6, 0x1
	cmp r6, 0
	bge _08035DBC
	b _08035EA6
_08035E44:
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r5, [r0]
	movs r0, 0x1
	adds r6, r5, 0
	eors r6, r0
	adds r1, r6, 0
	ldr r4, =gUnknown_020229E8
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _08035E66
	adds r6, r5, 0
	adds r5, r1, 0
_08035E66:
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r4, 0x8
	adds r1, r0, r4
	adds r0, r1, 0
	movs r1, 0xF
	bl battle_show_message_maybe
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	adds r1, r0, r4
	adds r0, r1, 0
	movs r1, 0x10
	bl battle_show_message_maybe
	movs r4, 0x7
	str r4, [sp]
	adds r0, r7, 0
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0x2
	bl sub_8035AE4
	str r4, [sp]
	adds r0, r7, 0
	adds r1, r6, 0
	movs r2, 0x2
	movs r3, 0x2
	bl sub_8035AE4
_08035EA6:
	ldr r0, =gTasks
	mov r2, r8
	adds r1, r2, r7
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _08036138
	.pool
_08035EC4:
	ldr r0, =0x00002710
	bl AllocObjectPalette
	lsls r0, 24
	ldr r2, =gPlttBufferUnfaded
	lsrs r0, 19
	ldr r3, =0x0000021e
	adds r0, r3
	adds r2, r0, r2
	ldr r1, =gPlttBufferFaded
	adds r0, r1
	ldr r1, =0x00007fff
	strh r1, [r0]
	strh r1, [r2]
	ldr r0, =gUnknown_0831A9D0
	movs r1, 0x6F
	movs r2, 0x50
	movs r3, 0
	bl AddObjectToFront
	ldr r4, =gUnknown_0202449C
	ldr r1, [r4]
	adds r1, 0x7D
	strb r0, [r1]
	ldr r0, =gUnknown_0831A9E8
	movs r1, 0x81
	movs r2, 0x50
	movs r3, 0
	bl AddObjectToFront
	ldr r1, [r4]
	adds r1, 0x7E
	strb r0, [r1]
	ldr r3, =gUnknown_02020630
	ldr r0, [r4]
	adds r0, 0x7D
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x7E
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldrh r0, [r5, 0x8]
	adds r0, 0x1
	strh r0, [r5, 0x8]
	b _08036138
	.pool
_08035F64:
	movs r1, 0x12
	ldrsh r0, [r5, r1]
	cmp r0, 0
	beq _08035FCC
	ldr r4, =gUnknown_02022E18
	ldrh r0, [r5, 0xA]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08035F7E
	adds r0, 0x1F
_08035F7E:
	asrs r1, r0, 5
	movs r2, 0x14
	negs r2, r2
	adds r0, r2, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, =gUnknown_02022E1C
	ldrh r0, [r5, 0xC]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08035F9C
	adds r0, 0x1F
_08035F9C:
	asrs r1, r0, 5
	movs r3, 0x8C
	negs r3, r3
	adds r0, r3, 0
	subs r0, r1
	strh r0, [r4]
	ldr r0, =gUnknown_02022E1A
	ldr r2, =0x0000ffdc
	adds r1, r2, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r1, [r0]
	b _08036038
	.pool
_08035FCC:
	ldr r4, =gUnknown_02022E18
	ldrh r0, [r5, 0xA]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08035FDE
	adds r0, 0x1F
_08035FDE:
	asrs r1, r0, 5
	movs r3, 0x14
	negs r3, r3
	adds r0, r3, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, =gUnknown_02022E1A
	ldrh r0, [r5, 0xA]
	bl Cos2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08035FFC
	adds r0, 0x1F
_08035FFC:
	asrs r0, 5
	subs r0, 0xA4
	strh r0, [r4]
	ldr r4, =gUnknown_02022E1C
	ldrh r0, [r5, 0xC]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08036014
	adds r0, 0x1F
_08036014:
	asrs r1, r0, 5
	movs r2, 0x8C
	negs r2, r2
	adds r0, r2, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, =gUnknown_02022E1E
	ldrh r0, [r5, 0xC]
	bl Cos2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _08036032
	adds r0, 0x1F
_08036032:
	asrs r0, 5
	subs r0, 0xA4
	strh r0, [r4]
_08036038:
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r1, r0, r1
	ldrh r0, [r1, 0xC]
	movs r2, 0xC
	ldrsh r3, [r1, r2]
	mov r8, r3
	cmp r3, 0
	beq _08036070
	subs r0, 0x2
	strh r0, [r1, 0xC]
	ldrh r0, [r1, 0xA]
	adds r0, 0x2
	strh r0, [r1, 0xA]
	b _08036138
	.pool
_08036070:
	movs r3, 0x12
	ldrsh r0, [r1, r3]
	cmp r0, 0
	beq _0803607C
	bl sub_8035C4C
_0803607C:
	movs r0, 0x78
	bl audio_play
	adds r0, r7, 0
	bl DestroyTask
	ldr r4, =gUnknown_02020630
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	adds r0, 0x7D
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, 0x7E
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	ldr r5, [r5]
	adds r6, r5, 0
	adds r6, 0x7E
	ldrb r0, [r6]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r4
	ldrh r3, [r2, 0x4]
	lsls r1, r3, 22
	lsrs r1, 22
	adds r1, 0x40
	ldr r7, =0x000003ff
	adds r0, r7, 0
	ands r1, r0
	ldr r0, =0xfffffc00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, 0x4]
	adds r5, 0x7D
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	mov r1, r8
	strh r1, [r0, 0x2E]
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	strh r1, [r0, 0x2E]
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x20]
	strh r1, [r0, 0x30]
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x20]
	strh r1, [r0, 0x30]
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	mov r2, r8
	strh r2, [r0, 0x32]
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x32]
_08036138:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end task00_0800F6FC

	thumb_func_start sub_8036154
sub_8036154: @ 8036154
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08036208
	ldr r0, =gUnknown_08D778F0
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D77B0C
	ldr r1, =0x06010000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D77AE4
	movs r1, 0x60
	movs r2, 0x20
	bl LoadCompressedPalette
	movs r0, 0x1
	movs r1, 0x3
	movs r2, 0x1
	bl SetBgAttribute
	ldr r1, =0x00005c04
	movs r0, 0xA
	bl SetGpuReg
	ldr r4, =gUnknown_08D779D8
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	movs r0, 0x2
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	movs r0, 0x2
	bl CopyBgTilemapBufferToVram
	movs r0, 0x48
	movs r1, 0x36
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x36
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldr r2, =0x0000ff5c
	adds r1, r2, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r1, [r0]
	ldr r0, =gUnknown_0831AA00
	bl LoadCompressedObjectPicUsingHeap
	b _080363AC
	.pool
_08036208:
	ldr r0, =0x023f0902
	ands r0, r1
	cmp r0, 0
	beq _0803628C
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	beq _08036224
	ldr r0, =gUnknown_02038BCE
	ldrh r1, [r0]
	ldr r0, =0x00000c03
	cmp r1, r0
	bne _08036248
_08036224:
	ldr r0, =gUnknown_08D820D4
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D824E4
	b _08036382
	.pool
_08036248:
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x2
	bl SetBgAttribute
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0x2
	bl SetBgAttribute
	ldr r1, =gUnknown_08D857A8
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	ldr r1, =gUnknown_08D85A1C
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	movs r0, 0x2
	bl CopyBgTilemapBufferToVram
	b _080363AC
	.pool
_0803628C:
	movs r0, 0x80
	lsls r0, 21
	ands r0, r1
	cmp r0, 0
	beq _080362B0
	ldr r0, =gUnknown_08D81610
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D81E2C
	b _08036382
	.pool
_080362B0:
	movs r0, 0x80
	lsls r0, 22
	ands r0, r1
	cmp r0, 0
	beq _080362D4
	ldr r0, =gUnknown_08D7F9F8
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D7FEC4
	b _08036382
	.pool
_080362D4:
	movs r0, 0x80
	lsls r0, 23
	ands r0, r1
	cmp r0, 0
	beq _080362F8
	ldr r0, =gUnknown_08D82608
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D82C70
	b _08036382
	.pool
_080362F8:
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _08036350
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x20
	bne _08036334
	ldr r0, =gUnknown_08D820D4
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D824E4
	b _08036382
	.pool
_08036334:
	cmp r0, 0x26
	bne _08036350
	ldr r0, =gUnknown_08D820D4
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D824E4
	b _08036382
	.pool
_08036350:
	bl sav1_map_get_battletype
	lsls r0, 24
	cmp r0, 0
	bne _0803639C
	ldr r4, =gUnknown_0831ABA8
	ldr r5, =gUnknown_02022FF0
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x8
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r4, 0xC
	adds r0, r4
	ldr r0, [r0]
_08036382:
	ldr r1, =0x0600e000
	bl LZDecompressVram
	b _080363AC
	.pool
_0803639C:
	ldr r0, =gUnknown_08D820D4
	ldr r1, =0x06004000
	bl LZDecompressVram
	ldr r0, =gUnknown_08D824E4
	ldr r1, =0x0600e000
	bl LZDecompressVram
_080363AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8036154

	thumb_func_start sub_80363C4
sub_80363C4: @ 80363C4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0
	cmp r0, 0x6
	bls _080363D2
	b _08036756
_080363D2:
	lsls r0, 2
	ldr r1, =_080363E0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080363E0:
	.4byte _080363FC
	.4byte _0803640C
	.4byte _08036424
	.4byte _08036434
	.4byte _0803652C
	.4byte _08036638
	.4byte _08036750
_080363FC:
	ldr r0, =gUnknown_08C00000
	movs r1, 0xC0
	lsls r1, 19
	bl LZDecompressVram
	b _08036758
	.pool
_0803640C:
	ldr r1, =gUnknown_08C00524
	movs r0, 0
	movs r2, 0
	movs r3, 0
	bl CopyToBgTilemapBuffer
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	b _08036758
	.pool
_08036424:
	ldr r0, =gUnknown_08C004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _08036758
	.pool
_08036434:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0902
	ands r0, r1
	cmp r0, 0
	bne _08036518
	movs r0, 0x80
	lsls r0, 21
	ands r0, r1
	cmp r0, 0
	beq _0803645C
	ldr r0, =gUnknown_08D7BB14
	b _0803651A
	.pool
_0803645C:
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _0803648C
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x20
	beq _08036518
	cmp r0, 0x26
	bne _0803648C
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_0803648C:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bhi _080364CC
	lsls r0, 2
	ldr r1, =_080364A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080364A8:
	.4byte _080364CC
	.4byte _08036518
	.4byte _080364E8
	.4byte _080364F0
	.4byte _080364F8
	.4byte _08036500
	.4byte _08036508
	.4byte _08036510
	.4byte _08036518
_080364CC:
	ldr r2, =gUnknown_0831ABA8
	ldr r0, =gUnknown_02022FF0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	b _0803651A
	.pool
_080364E8:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_080364F0:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_080364F8:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_08036500:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_08036508:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_08036510:
	ldr r0, =gUnknown_08D7CCD8
	b _0803651A
	.pool
_08036518:
	ldr r0, =gUnknown_08D7C440
_0803651A:
	ldr r1, =0x06008000
	bl LZDecompressVram
	b _08036758
	.pool
_0803652C:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0902
	ands r0, r1
	cmp r0, 0
	beq _0803653A
	b _08036624
_0803653A:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _08036568
	ldr r0, =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _08036560
	ldr r0, =gUnknown_08D7C154
	b _08036626
	.pool
_08036560:
	ldr r0, =gUnknown_08D7A720
	b _08036626
	.pool
_08036568:
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _08036598
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x20
	beq _08036624
	cmp r0, 0x26
	bne _08036598
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_08036598:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bhi _080365D8
	lsls r0, 2
	ldr r1, =_080365B4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080365B4:
	.4byte _080365D8
	.4byte _08036624
	.4byte _080365F4
	.4byte _080365FC
	.4byte _08036604
	.4byte _0803660C
	.4byte _08036614
	.4byte _0803661C
	.4byte _08036624
_080365D8:
	ldr r2, =gUnknown_0831ABA8
	ldr r0, =gUnknown_02022FF0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r0, [r0]
	b _08036626
	.pool
_080365F4:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_080365FC:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_08036604:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_0803660C:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_08036614:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_0803661C:
	ldr r0, =gUnknown_08D7D2E0
	b _08036626
	.pool
_08036624:
	ldr r0, =gUnknown_08D7CA28
_08036626:
	ldr r1, =0x0600d000
	bl LZDecompressVram
	b _08036758
	.pool
_08036638:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0902
	ands r0, r1
	cmp r0, 0
	beq _08036646
	b _08036740
_08036646:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _08036674
	ldr r0, =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803666C
	ldr r0, =gUnknown_08D7DF30
	b _08036742
	.pool
_0803666C:
	ldr r0, =gUnknown_08D7DEF4
	b _08036742
	.pool
_08036674:
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _080366AC
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x20
	bne _080366A0
	ldr r0, =gUnknown_08D7DFC4
	b _08036742
	.pool
_080366A0:
	cmp r0, 0x26
	bne _080366AC
	ldr r0, =gUnknown_08D7E1F8
	b _08036742
	.pool
_080366AC:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bhi _080366EC
	lsls r0, 2
	ldr r1, =_080366C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080366C8:
	.4byte _080366EC
	.4byte _08036708
	.4byte _08036710
	.4byte _08036718
	.4byte _08036720
	.4byte _08036728
	.4byte _08036730
	.4byte _08036738
	.4byte _08036740
_080366EC:
	ldr r2, =gUnknown_0831ABA8
	ldr r0, =gUnknown_02022FF0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x10
	adds r0, r2
	ldr r0, [r0]
	b _08036742
	.pool
_08036708:
	ldr r0, =gUnknown_08D7DF88
	b _08036742
	.pool
_08036710:
	ldr r0, =gUnknown_08D7E060
	b _08036742
	.pool
_08036718:
	ldr r0, =gUnknown_08D7E000
	b _08036742
	.pool
_08036720:
	ldr r0, =gUnknown_08D7E0CC
	b _08036742
	.pool
_08036728:
	ldr r0, =gUnknown_08D7E11C
	b _08036742
	.pool
_08036730:
	ldr r0, =gUnknown_08D7E164
	b _08036742
	.pool
_08036738:
	ldr r0, =gUnknown_08D7E1A8
	b _08036742
	.pool
_08036740:
	ldr r0, =gUnknown_08D7C9EC
_08036742:
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
	b _08036758
	.pool
_08036750:
	bl sub_803570C
	b _08036758
_08036756:
	movs r4, 0x1
_08036758:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80363C4

	thumb_func_start sub_8036760
sub_8036760: @ 8036760
	push {lr}
	bl saveblock_randomize_and_relocate
	bl sub_8056F28
	bl dp11_init
	bl init_uns_table_pokemon_copy
	bl sub_8185F84
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080367CC
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	beq _08036798
	bl sub_80367D4
	b _080367BA
	.pool
_08036798:
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	bne _080367B4
	bl battle_wireless_setup_if_required_maybe
	ldr r0, =sub_8037ADC
	bl SetMainCallback2
	b _080367BA
	.pool
_080367B4:
	ldr r0, =intro_end
	bl SetMainCallback2
_080367BA:
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1]
	b _080367D0
	.pool
_080367CC:
	bl sub_80367D4
_080367D0:
	pop {r0}
	bx r0
	thumb_func_end sub_8036760

	thumb_func_start sub_80367D4
sub_80367D4: @ 80367D4
	push {r4,r5,lr}
	sub sp, 0x4
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	str r0, [sp]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	mov r0, sp
	bl CpuSet
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0xF0
	bl SetGpuReg
	ldr r1, =0x00005051
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	ldr r0, =gUnknown_02022E24
	movs r2, 0xF0
	strh r2, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _08036870
	ldr r0, =gUnknown_02038BCE
	ldrh r1, [r0]
	ldr r0, =0x00000c03
	cmp r1, r0
	beq _08036870
	ldr r1, =gUnknown_02022E26
	movs r0, 0x9F
	strh r0, [r1]
	ldr r0, =gUnknown_02022E28
	strh r2, [r0]
	ldr r1, =gUnknown_02022E2A
	movs r0, 0x20
	strh r0, [r1]
	b _080368BE
	.pool
_08036870:
	ldr r0, =gUnknown_02022E26
	ldr r2, =0x00005051
	adds r1, r2, 0
	strh r1, [r0]
	bl dp12_8087EA4
	ldr r0, =gUnknown_02038C28
	movs r3, 0xF0
	movs r5, 0xF0
	lsls r5, 3
	adds r2, r0, r5
	movs r1, 0x4F
_08036888:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	subs r1, 0x1
	cmp r1, 0
	bge _08036888
	movs r1, 0x50
	ldr r4, =gUnknown_0831AC70
	ldr r0, =gUnknown_02038C28
	ldr r3, =0x0000ff10
	movs r5, 0x82
	lsls r5, 4
	adds r2, r0, r5
	adds r0, 0xA0
_080368A6:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	adds r1, 0x1
	cmp r1, 0x9F
	ble _080368A6
	ldr r0, [r4]
	ldr r1, [r4, 0x4]
	ldr r2, [r4, 0x8]
	bl sub_80BA038
_080368BE:
	bl ResetPaletteFade
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r0, =gUnknown_02022E18
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1C
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r1, [r0]
	ldr r0, =gUnknown_02022E20
	strh r1, [r0]
	ldr r0, =gUnknown_02022E22
	strh r1, [r0]
	bl sub_80B0BD0
	ldr r2, =gUnknown_02022FF0
	strb r0, [r2]
	ldr r4, =gBattleTypeFlags
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _080368FE
	movs r0, 0x8
	strb r0, [r2]
_080368FE:
	bl c2_berry_program_update_menu
	bl sub_8035AA4
	bl ResetAllObjectData
	bl ResetTasks
	bl sub_8036154
	bl ResetObjectPaletteAllocator
	ldr r1, =gUnknown_0300301C
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, =vblank_cb_08078BB4
	bl SetVBlankCallback
	bl sub_803269C
	ldr r2, [r4]
	movs r1, 0xA0
	lsls r1, 1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	beq _0803693E
	ldr r1, =0x00400040
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	bne _08036994
_0803693E:
	ldr r0, =sub_8037458
	bl SetMainCallback2
	b _080369AE
	.pool
_08036994:
	movs r0, 0x40
	ands r2, r0
	cmp r2, 0
	beq _080369A8
	ldr r0, =sub_8037DF4
	bl SetMainCallback2
	b _080369AE
	.pool
_080369A8:
	ldr r0, =sub_8036FAC
	bl SetMainCallback2
_080369AE:
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	ldr r1, =0x01000002
	ands r0, r1
	cmp r0, 0
	bne _080369E8
	ldr r4, =gEnemyParty
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	bl LoadTrainerParty
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _080369E4
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, r1
	ldr r1, =gUnknown_02038BCC
	ldrh r1, [r1]
	movs r2, 0
	bl LoadTrainerParty
_080369E4:
	bl sub_806EA68
_080369E8:
	ldr r1, =gMain
	ldr r2, =0x00000439
	adds r1, r2
	ldrb r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r5, =0x00000ca9
	adds r1, r5
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, =gPlayerParty
	movs r0, 0xFA
	lsls r0, 1
	adds r5, r4, r0
_08036A10:
	adds r0, r4, 0
	movs r1, 0x3
	bl happiness_algorithm
	adds r4, 0x64
	cmp r4, r5
	ble _08036A10
	movs r1, 0
	ldr r0, =gUnknown_02024332
	strb r1, [r0]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80367D4

	thumb_func_start sub_8036A5C
sub_8036A5C: @ 8036A5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	mov r9, r6
	movs r0, 0xCE
	lsls r0, 1
	mov r10, r0
	mov r8, r6
_08036A72:
	movs r0, 0x64
	mov r4, r9
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _08036AEE
	cmp r5, r10
	beq _08036ABA
	cmp r7, 0
	beq _08036ABA
	cmp r1, 0
	bne _08036ABA
	movs r0, 0x1
	mov r2, r8
	lsls r0, r2
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_08036ABA:
	cmp r5, 0
	beq _08036AEE
	cmp r7, 0
	beq _08036AD6
	cmp r5, r10
	beq _08036ACA
	cmp r1, 0
	beq _08036AD6
_08036ACA:
	movs r0, 0x2
	mov r1, r8
	lsls r0, r1
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_08036AD6:
	cmp r5, 0
	beq _08036AEE
	cmp r5, r10
	beq _08036AEE
	cmp r7, 0
	bne _08036AEE
	movs r0, 0x3
	mov r2, r8
	lsls r0, r2
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_08036AEE:
	movs r0, 0x2
	add r8, r0
	movs r1, 0x1
	add r9, r1
	mov r2, r9
	cmp r2, 0x5
	ble _08036A72
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	movs r1, 0xC1
	lsls r1, 1
	adds r0, r1
	strb r6, [r0]
	ldr r0, [r4]
	ldr r5, =0x00000183
	adds r0, r5
	lsrs r1, r6, 8
	strb r1, [r0]
	ldr r0, =0x000008d2
	bl FlagGet
	ldr r1, [r4]
	adds r1, r5
	lsls r0, 7
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8036A5C

	thumb_func_start sub_8036B44
sub_8036B44: @ 8036B44
	push {r4-r7,lr}
	ldr r0, =gUnknown_0202449C
	ldr r5, [r0]
	movs r0, 0xC2
	lsls r0, 1
	adds r4, r5, r0
	bl sub_80E162C
	cmp r0, 0x1
	bne _08036BC0
	movs r2, 0
	ldr r7, =gSaveBlock1Ptr
	movs r1, 0xC6
	lsls r1, 1
	adds r5, r1
	adds r6, r7, 0
	ldr r3, =0x000031f8
_08036B66:
	adds r0, r4, r2
	ldr r1, [r6]
	adds r1, r3
	adds r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x5
	ble _08036B66
	adds r1, r4, r2
	movs r0, 0xFF
	strb r0, [r1]
	movs r2, 0
	adds r3, r5, 0
	ldr r6, =gSaveBlock1Ptr
	ldr r5, =0x00003214
_08036B86:
	adds r0, r3, r2
	ldr r1, [r6]
	adds r1, r5
	adds r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x11
	ble _08036B86
	ldr r0, [r7]
	ldr r1, =0x00003226
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4, 0x7]
	ldr r0, [r7]
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	b _08036C00
	.pool
_08036BC0:
	movs r0, 0xAF
	bl ItemIdToBerryType
	lsls r0, 24
	lsrs r0, 24
	bl GetBerryInfo
	adds r3, r0, 0
	movs r2, 0
	movs r0, 0xC6
	lsls r0, 1
	adds r5, r0
_08036BD8:
	adds r0, r4, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x5
	ble _08036BD8
	adds r1, r4, r2
	movs r0, 0xFF
	strb r0, [r1]
	adds r0, r5, 0
	movs r2, 0
	adds r1, r0, 0
	adds r1, 0x11
_08036BF4:
	strb r2, [r1]
	subs r1, 0x1
	cmp r1, r0
	bge _08036BF4
	movs r0, 0
	strb r0, [r4, 0x7]
_08036C00:
	strb r0, [r4, 0x1A]
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8036B44

	thumb_func_start berry_801017C
berry_801017C: @ 8036C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08036C20
	b _08036D4C
_08036C20:
	bl sub_80E162C
	cmp r0, 0x1
	bne _08036CDC
	movs r5, 0
	ldr r3, =gUnknown_02024404
	ldr r0, =gSaveBlock1Ptr
	mov r8, r0
	adds r6, r3, 0
	mov r4, r8
	ldr r2, =0x000031f8
	adds r7, r3, 0
	adds r7, 0x38
_08036C3A:
	adds r1, r5, r6
	ldr r0, [r4]
	adds r0, r2
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r5, r7
	ldr r0, [r4]
	adds r0, r2
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r5, 0x1
	cmp r5, 0x5
	ble _08036C3A
	adds r1, r5, r3
	movs r0, 0xFF
	strb r0, [r1]
	adds r0, r3, 0
	adds r0, 0x38
	adds r0, r5, r0
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	movs r5, 0
	adds r7, r3, 0
	adds r7, 0x8
	ldr r4, =gSaveBlock1Ptr
	ldr r2, =0x00003214
	adds r6, r3, 0
	adds r6, 0x40
_08036C78:
	adds r1, r5, r7
	ldr r0, [r4]
	adds r0, r2
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r5, r6
	ldr r0, [r4]
	adds r0, r2
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r5, 0x1
	cmp r5, 0x11
	ble _08036C78
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00003226
	adds r0, r2
	ldrb r1, [r0]
	strb r1, [r3, 0x7]
	ldrb r0, [r0]
	adds r1, r3, 0
	adds r1, 0x3F
	strb r0, [r1]
	mov r4, r8
	ldr r0, [r4]
	ldr r1, =0x00003227
	adds r0, r1
	ldrb r1, [r0]
	strb r1, [r3, 0x1A]
	ldrb r1, [r0]
	adds r0, r3, 0
	adds r0, 0x52
	strb r1, [r0]
	b _08036EA0
	.pool
_08036CDC:
	movs r0, 0xAF
	bl ItemIdToBerryType
	lsls r0, 24
	lsrs r0, 24
	bl GetBerryInfo
	adds r6, r0, 0
	movs r5, 0
	ldr r4, =gUnknown_02024404
	adds r7, r4, 0
	adds r7, 0x38
	adds r3, r4, 0
_08036CF6:
	adds r1, r5, r4
	adds r2, r6, r5
	ldrb r0, [r2]
	strb r0, [r1]
	adds r1, r5, r7
	ldrb r0, [r2]
	strb r0, [r1]
	adds r5, 0x1
	cmp r5, 0x5
	ble _08036CF6
	adds r1, r5, r3
	movs r0, 0xFF
	strb r0, [r1]
	adds r0, r3, 0
	adds r0, 0x38
	adds r0, r5, r0
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	movs r5, 0
	adds r4, r3, 0
	adds r4, 0x8
	movs r1, 0
	adds r2, r3, 0
	adds r2, 0x40
_08036D28:
	adds r0, r5, r4
	strb r1, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x11
	ble _08036D28
	movs r1, 0
	strb r1, [r3, 0x7]
	adds r0, r3, 0
	adds r0, 0x3F
	strb r1, [r0]
	strb r1, [r3, 0x1A]
	adds r0, 0x13
	strb r1, [r0]
	b _08036EA0
	.pool
_08036D4C:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08036DF0
	movs r0, 0x80
	lsls r0, 1
	ands r1, r0
	movs r2, 0x4
	mov r8, r2
	cmp r1, 0
	beq _08036D66
	movs r4, 0x2
	mov r8, r4
_08036D66:
	movs r5, 0
	cmp r5, r8
	blt _08036D6E
	b _08036EA0
_08036D6E:
	ldr r0, =gUnknown_020229E8
	mov r12, r0
	ldr r3, =gUnknown_02024404
	adds r6, r3, 0
	movs r1, 0x8
	adds r1, r6
	mov r9, r1
_08036D7C:
	lsls r1, r5, 8
	ldr r0, =gUnknown_020223C8
	adds r7, r1, r0
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	add r0, r12
	ldrb r3, [r0, 0x18]
	movs r4, 0
	adds r5, 0x1
	mov r10, r5
	lsls r1, r3, 3
	subs r0, r1, r3
	adds r5, r1, 0
	lsls r0, 2
	adds r1, r0, r6
_08036D9C:
	adds r0, r7, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, 0x1
	adds r4, 0x1
	cmp r4, 0x5
	ble _08036D9C
	subs r0, r5, r3
	lsls r0, 2
	adds r1, r4, r0
	adds r1, r6
	movs r2, 0xFF
	strb r2, [r1]
	movs r4, 0
	mov r2, r9
	adds r1, r0, r2
	adds r2, r7, 0
	adds r2, 0x8
_08036DC0:
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, 0x1
	adds r4, 0x1
	cmp r4, 0x11
	ble _08036DC0
	subs r0, r5, r3
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r7, 0x7]
	strb r1, [r0, 0x7]
	ldrb r1, [r7, 0x1A]
	strb r1, [r0, 0x1A]
	mov r5, r10
	cmp r5, r8
	blt _08036D7C
	b _08036EA0
	.pool
_08036DF0:
	movs r5, 0
	ldr r4, =gUnknown_02024404
	mov r9, r4
_08036DF6:
	lsls r0, r5, 8
	ldr r1, =gUnknown_020223C8
	adds r7, r0, r1
	movs r4, 0
	adds r2, r5, 0x1
	mov r10, r2
	lsls r0, r5, 3
	mov r8, r0
	adds r1, r5, 0x2
	mov r12, r1
	subs r1, r0, r5
	mov r2, r12
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	mov r2, r9
	adds r3, r0, r2
	lsls r1, 2
	adds r2, r1, r2
_08036E1C:
	adds r0, r7, r4
	ldrb r1, [r0]
	strb r1, [r2]
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, 0x1
	adds r2, 0x1
	adds r4, 0x1
	cmp r4, 0x5
	ble _08036E1C
	mov r0, r8
	subs r3, r0, r5
	lsls r3, 2
	adds r1, r4, r3
	add r1, r9
	ldrb r0, [r1]
	movs r2, 0xFF
	orrs r0, r2
	strb r0, [r1]
	mov r0, r12
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	adds r1, r4, r2
	add r1, r9
	ldrb r0, [r1]
	movs r4, 0xFF
	orrs r0, r4
	strb r0, [r1]
	movs r4, 0
	ldr r0, =gUnknown_02024404
	adds r0, 0x8
	adds r2, r0
	adds r3, r0
	adds r6, r7, 0
	adds r6, 0x8
_08036E64:
	adds r0, r6, r4
	ldrb r1, [r0]
	strb r1, [r3]
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, 0x1
	adds r3, 0x1
	adds r4, 0x1
	cmp r4, 0x11
	ble _08036E64
	mov r0, r8
	subs r2, r0, r5
	lsls r2, 2
	add r2, r9
	ldrb r0, [r7, 0x7]
	strb r0, [r2, 0x7]
	mov r1, r12
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r9
	ldrb r1, [r7, 0x7]
	strb r1, [r0, 0x7]
	ldrb r1, [r7, 0x1A]
	strb r1, [r2, 0x1A]
	ldrb r1, [r7, 0x1A]
	strb r1, [r0, 0x1A]
	mov r5, r10
	cmp r5, 0x1
	ble _08036DF6
_08036EA0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end berry_801017C

	thumb_func_start sub_8036EB8
sub_8036EB8: @ 8036EB8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	movs r6, 0
	ldr r0, =gUnknown_020223C4
	ldrh r2, [r0]
	movs r1, 0x80
	lsls r1, 1
	mov r12, r0
	cmp r2, r1
	bne _08036EFC
	cmp r3, 0
	bne _08036EEC
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0xC
	b _08036EF2
	.pool
_08036EEC:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x8
_08036EF2:
	orrs r1, r2
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08036EFC:
	cmp r6, 0
	bne _08036FA0
	movs r2, 0
	cmp r2, r4
	bge _08036F20
	ldr r1, =gUnknown_020223C4
	mov r8, r1
	movs r5, 0x80
	lsls r5, 1
_08036F0E:
	adds r1, r5
	adds r2, 0x1
	cmp r2, r4
	bge _08036F20
	mov r7, r8
	ldrh r0, [r7]
	ldrh r7, [r1]
	cmp r0, r7
	beq _08036F0E
_08036F20:
	cmp r2, r4
	bne _08036F48
	cmp r3, 0
	bne _08036F38
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0xC
	b _08036F3E
	.pool
_08036F38:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x8
_08036F3E:
	orrs r1, r2
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08036F48:
	cmp r6, 0
	bne _08036FA0
	movs r2, 0
	ldr r5, =gBattleTypeFlags
	cmp r2, r4
	bge _08036F8A
	mov r0, r12
	ldrh r1, [r0]
	movs r0, 0xC0
	lsls r0, 2
	cmp r1, r0
	beq _08036F82
_08036F60:
	lsls r0, r2, 8
	add r0, r12
	ldrh r0, [r0]
	movs r1, 0xC0
	lsls r1, 2
	cmp r0, r1
	bls _08036F72
	cmp r2, r3
	bne _08036F8A
_08036F72:
	adds r2, 0x1
	cmp r2, r4
	bge _08036F8A
	lsls r0, r2, 8
	add r0, r12
	ldrh r0, [r0]
	cmp r0, r1
	bne _08036F60
_08036F82:
	cmp r2, r3
	beq _08036F60
	cmp r2, r3
	bge _08036F60
_08036F8A:
	cmp r2, r4
	bne _08036F98
	ldr r0, [r5]
	movs r1, 0xC
	b _08036F9C
	.pool
_08036F98:
	ldr r0, [r5]
	movs r1, 0x8
_08036F9C:
	orrs r0, r1
	str r0, [r5]
_08036FA0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8036EB8

	thumb_func_start sub_8036FAC
sub_8036FAC: @ 8036FAC
	push {r4-r6,lr}
	bl RunTasks
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl link_get_multiplayer_id
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	strb r6, [r0]
	movs r0, 0x1
	adds r5, r6, 0
	eors r5, r0
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0]
	cmp r0, 0x12
	bls _08036FD8
	b _0803744C
_08036FD8:
	lsls r0, 2
	ldr r1, =_08036FF0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08036FF0:
	.4byte _0803703C
	.4byte _08037080
	.4byte _08037144
	.4byte _080371D8
	.4byte _08037200
	.4byte _0803742C
	.4byte _08037438
	.4byte _08037230
	.4byte _08037258
	.4byte _0803742C
	.4byte _08037438
	.4byte _08037288
	.4byte _080372B0
	.4byte _0803742C
	.4byte _08037438
	.4byte _08037318
	.4byte _08037378
	.4byte _080373A0
	.4byte _080373E0
_0803703C:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08037068
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
	bl sub_805EF14
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1]
_08037068:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037072
	b _0803744C
_08037072:
	bl sub_800E0E8
	b _0803744C
	.pool
_08037080:
	ldr r2, =gBattleTypeFlags
	ldr r1, [r2]
	movs r6, 0x2
	adds r0, r1, 0
	ands r0, r6
	cmp r0, 0
	beq _08037124
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037098
	b _0803744C
_08037098:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _080370EE
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	movs r5, 0xC0
	lsls r5, 1
	adds r0, r5
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, =0x00000181
	adds r1, r0, r2
	movs r0, 0x3
	strb r0, [r1]
	bl sub_8036A5C
	bl sub_8036B44
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	movs r0, 0xC0
	lsls r0, 4
	cmp r1, r0
	bne _080370D8
	ldr r0, =gUnknown_020229E8
	movs r1, 0
	strh r1, [r0, 0x18]
	movs r1, 0x1
	strh r1, [r0, 0x34]
_080370D8:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [r4]
	adds r1, r5
	movs r2, 0x20
	bl link_0800A448
	ldr r0, =gUnknown_02024332
	strb r6, [r0]
_080370EE:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _080370F8
	b _0803744C
_080370F8:
	movs r0, 0
	movs r1, 0
	bl sub_800DFB4
	b _0803744C
	.pool
_08037124:
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _08037134
	movs r0, 0x4
	orrs r1, r0
	str r1, [r2]
_08037134:
	ldr r1, =gUnknown_02024332
	movs r0, 0xF
	strb r0, [r1]
	bl berry_801017C
	b _0803744C
	.pool
_08037144:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _08037152
	b _0803744C
_08037152:
	bl sub_800A5B4
	movs r0, 0x2
	adds r1, r6, 0
	bl sub_8036EB8
	bl berry_801017C
	ldr r0, =task00_0800F6FC
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gTasks
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r2, r1
	movs r1, 0
	movs r0, 0x87
	lsls r0, 1
	strh r0, [r2, 0xA]
	movs r0, 0x5A
	strh r0, [r2, 0xC]
	strh r1, [r2, 0x12]
	ldr r0, =gUnknown_0202449C
	ldr r3, [r0]
	movs r4, 0xC1
	lsls r4, 1
	adds r0, r3, r4
	ldrb r1, [r0]
	adds r4, 0x1
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, 8
	orrs r1, r0
	strh r1, [r2, 0xE]
	ldr r1, =gUnknown_020223C4
	lsls r4, r5, 8
	adds r1, 0x2
	adds r4, r1
	ldrh r0, [r4]
	strh r0, [r2, 0x10]
	lsls r0, r6, 8
	adds r0, r1
	ldrh r0, [r0]
	bl sub_8185F90
	ldrh r0, [r4]
	bl sub_8185F90
	bl sub_8068AA4
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_080371D8:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _080371E4
	b _0803744C
_080371E4:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gPlayerParty
	movs r2, 0xC8
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_08037200:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _0803720E
	b _0803744C
_0803720E:
	bl sub_800A5B4
	ldr r0, =gEnemyParty
	lsls r1, r5, 8
	ldr r2, =gUnknown_020223C4
	adds r1, r2
	movs r2, 0xC8
	bl memcpy
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_08037230:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _0803723C
	b _0803744C
_0803723C:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_020245B4
	movs r2, 0xC8
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_08037258:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _08037266
	b _0803744C
_08037266:
	bl sub_800A5B4
	ldr r0, =gUnknown_0202480C
	lsls r1, r5, 8
	ldr r2, =gUnknown_020223C4
	adds r1, r2
	movs r2, 0xC8
	bl memcpy
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_08037288:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _08037294
	b _0803744C
_08037294:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202467C
	movs r2, 0xC8
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_080372B0:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _080372BE
	b _0803744C
_080372BE:
	bl sub_800A5B4
	ldr r4, =gUnknown_020248D4
	lsls r1, r5, 8
	ldr r0, =gUnknown_020223C4
	adds r1, r0
	adds r0, r4, 0
	movs r2, 0xC8
	bl memcpy
	ldr r1, =0xfffffe70
	adds r0, r4, r1
	bl shedinja_something
	ldr r2, =0xfffffed4
	adds r0, r4, r2
	bl shedinja_something
	adds r0, r4, 0
	subs r0, 0xC8
	bl shedinja_something
	adds r0, r4, 0
	subs r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_08037318:
	bl sub_8032768
	bl sub_8184E58
	ldr r2, =gUnknown_02024332
	movs r0, 0
	strb r0, [r2, 0x1]
	strb r0, [r2, 0x2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08037372
	movs r3, 0
	ldr r1, =gUnknown_020229E8
	ldrb r0, [r1]
	adds r5, r2, 0
	cmp r0, 0x3
	bne _08037356
	movs r4, 0xFF
	adds r2, r1, 0
_08037344:
	adds r2, 0x1C
	adds r3, 0x1
	cmp r3, 0x1
	bgt _08037356
	ldrh r1, [r2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0x3
	beq _08037344
_08037356:
	cmp r3, 0x2
	bne _0803736C
	movs r0, 0x10
	strb r0, [r5]
	b _0803744C
	.pool
_0803736C:
	movs r0, 0x12
	strb r0, [r5]
	b _0803744C
_08037372:
	movs r0, 0x12
	strb r0, [r2]
	b _0803744C
_08037378:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _0803744C
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203BD2C
	movs r2, 0x4
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_080373A0:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	bne _0803744C
	bl sub_800A5B4
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x4
	ands r0, r1
	cmp r0, 0
	bne _080373CA
	ldr r0, =gUnknown_0203BD2C
	lsls r1, r5, 8
	ldr r2, =gUnknown_020223C4
	adds r1, r2
	movs r2, 0x4
	bl memcpy
_080373CA:
	ldr r1, =gUnknown_02024332
	b _08037446
	.pool
_080373E0:
	ldr r0, =gUnknown_02024333
	adds r1, r0, 0x1
	bl battle_load_something
	lsls r0, 24
	cmp r0, 0
	beq _0803744C
	ldr r2, =gUnknown_03005D00
	ldr r1, =gMain
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, =sub_8039EF0
	str r0, [r1]
	ldr r0, =sub_8038420
	bl SetMainCallback2
	ldr r2, =gBattleTypeFlags
	ldr r1, [r2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803744C
	movs r0, 0x20
	orrs r1, r0
	str r1, [r2]
	b _0803744C
	.pool
_0803742C:
	ldr r0, =gUnknown_02024332
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	movs r1, 0x1
	strb r1, [r0, 0x1]
_08037438:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x1]
	subs r0, 0x1
	strb r0, [r1, 0x1]
	lsls r0, 24
	cmp r0, 0
	bne _0803744C
_08037446:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0803744C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8036FAC

	thumb_func_start sub_8037458
sub_8037458: @ 8037458
	push {r4-r7,lr}
	sub sp, 0x4
	bl RunTasks
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl link_get_multiplayer_id
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	strb r6, [r0]
	movs r0, 0x1
	adds r7, r6, 0
	eors r7, r0
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0]
	cmp r0, 0x10
	bls _08037486
	b _080379D6
_08037486:
	lsls r0, 2
	ldr r1, =_0803749C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803749C:
	.4byte _080374E0
	.4byte _08037518
	.4byte _0803761C
	.4byte _08037670
	.4byte _08037694
	.4byte _08037710
	.4byte _08037734
	.4byte _080377B0
	.4byte _080377CC
	.4byte _080377FC
	.4byte _08037818
	.4byte _08037848
	.4byte _08037864
	.4byte _08037908
	.4byte _0803793A
	.4byte _0803795C
	.4byte _080379A0
_080374E0:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0803750C
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
	bl sub_805EF14
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1]
_0803750C:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	beq _08037518
	bl sub_800E0E8
_08037518:
	ldr r2, =gBattleTypeFlags
	ldr r1, [r2]
	movs r3, 0x2
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _080375FC
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037530
	b _080379D6
_08037530:
	ldr r6, =gUnknown_020229E8
	movs r0, 0
	strh r0, [r6, 0x18]
	strh r3, [r6, 0x34]
	adds r1, r6, 0
	adds r1, 0x50
	movs r0, 0x1
	strh r0, [r1]
	adds r1, 0x1C
	movs r0, 0x3
	strh r0, [r1]
	adds r0, r6, 0
	adds r0, 0x40
	ldr r4, =gUnknown_02038BCA
	ldrh r1, [r4]
	bl sub_8162E20
	adds r0, r6, 0
	adds r0, 0x5C
	ldr r5, =gUnknown_02038BCC
	ldrh r1, [r5]
	bl sub_8162E20
	ldrh r1, [r4]
	mov r0, sp
	bl sub_8165B88
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r6, 0
	adds r1, 0x52
	strh r0, [r1]
	ldrh r1, [r5]
	mov r0, sp
	bl sub_8165B88
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r6, 0
	adds r0, 0x6E
	strh r1, [r0]
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _080375C4
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	movs r5, 0xC0
	lsls r5, 1
	adds r0, r5
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, =0x00000181
	adds r1, r0, r2
	movs r0, 0x3
	strb r0, [r1]
	bl sub_8036A5C
	bl sub_8036B44
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [r4]
	adds r1, r5
	movs r2, 0x20
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1]
_080375C4:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _080375CE
	b _080379D6
_080375CE:
	movs r0, 0
	movs r1, 0
	bl sub_800DFB4
	b _080379D6
	.pool
_080375FC:
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _0803760C
	movs r0, 0x4
	orrs r1, r0
	str r1, [r2]
_0803760C:
	ldr r1, =gUnknown_02024332
	movs r0, 0xD
	strb r0, [r1]
	bl berry_801017C
	b _080379D6
	.pool
_0803761C:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _0803762A
	b _080379D6
_0803762A:
	bl sub_800A5B4
	movs r0, 0x2
	adds r1, r6, 0
	bl sub_8036EB8
	bl berry_801017C
	ldr r0, =task00_0800F6FC
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	movs r0, 0x87
	lsls r0, 1
	strh r0, [r1, 0xA]
	movs r0, 0x5A
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x12]
	adds r0, 0xEB
	strh r0, [r1, 0xE]
	strh r0, [r1, 0x10]
	b _08037986
	.pool
_08037670:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _0803767C
	b _080379D6
_0803767C:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gPlayerParty
_08037686:
	movs r2, 0xC8
	bl link_0800A448
	b _08037986
	.pool
_08037694:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _080376A2
	b _080379D6
_080376A2:
	bl sub_800A5B4
	ldr r0, =gUnknown_020229E8
	lsls r1, r6, 3
	subs r1, r6
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x18]
	cmp r0, 0
	beq _080376E8
	ldr r4, =gPlayerParty
	lsls r1, r7, 8
	ldr r5, =gUnknown_020223C4
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0xC8
	bl memcpy
	movs r0, 0x96
	lsls r0, 1
	adds r4, r0
	lsls r1, r6, 8
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0xC8
	bl memcpy
	b _08037986
	.pool
_080376E8:
	ldr r4, =gPlayerParty
	lsls r1, r6, 8
	ldr r5, =gUnknown_020223C4
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0xC8
	bl memcpy
	movs r1, 0x96
	lsls r1, 1
	adds r4, r1
	lsls r1, r7, 8
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0xC8
	b _08037982
	.pool
_08037710:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _0803771C
	b _080379D6
_0803771C:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_020245B4
	movs r2, 0x64
	bl link_0800A448
	b _08037986
	.pool
_08037734:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _08037742
	b _080379D6
_08037742:
	bl sub_800A5B4
	ldr r0, =gUnknown_020229E8
	lsls r1, r6, 3
	subs r1, r6
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x18]
	cmp r0, 0
	beq _08037788
	ldr r4, =gUnknown_020245B4
	lsls r1, r7, 8
	ldr r5, =gUnknown_020223C4
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	movs r2, 0x96
	lsls r2, 1
	adds r4, r2
	lsls r1, r6, 8
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	b _08037986
	.pool
_08037788:
	ldr r4, =gUnknown_020245B4
	lsls r1, r6, 8
	ldr r5, =gUnknown_020223C4
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	movs r0, 0x96
	lsls r0, 1
	adds r4, r0
	lsls r1, r7, 8
	adds r1, r5
	adds r0, r4, 0
	movs r2, 0x64
	b _08037982
	.pool
_080377B0:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _080377BC
	b _080379D6
_080377BC:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gEnemyParty
	b _08037686
	.pool
_080377CC:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _080377DA
	b _080379D6
_080377DA:
	bl sub_800A5B4
	bl link_get_multiplayer_id
	lsls r0, 24
	cmp r0, 0
	bne _080377EA
	b _08037986
_080377EA:
	ldr r0, =gEnemyParty
	ldr r1, =gUnknown_020223C4
	movs r2, 0xC8
	b _08037982
	.pool
_080377FC:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _08037808
	b _080379D6
_08037808:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202480C
	b _08037686
	.pool
_08037818:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _08037826
	b _080379D6
_08037826:
	bl sub_800A5B4
	bl link_get_multiplayer_id
	lsls r0, 24
	cmp r0, 0
	bne _08037836
	b _08037986
_08037836:
	ldr r0, =gUnknown_0202480C
	ldr r1, =gUnknown_020223C4
	movs r2, 0xC8
	b _08037982
	.pool
_08037848:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _08037854
	b _080379D6
_08037854:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_020248D4
	b _08037686
	.pool
_08037864:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _08037872
	b _080379D6
_08037872:
	bl sub_800A5B4
	bl link_get_multiplayer_id
	lsls r0, 24
	cmp r0, 0
	beq _0803788A
	ldr r0, =gUnknown_020248D4
	ldr r1, =gUnknown_020223C4
	movs r2, 0xC8
	bl memcpy
_0803788A:
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	movs r2, 0xC8
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	movs r1, 0xFA
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	movs r2, 0x96
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	movs r1, 0xC8
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	movs r2, 0xFA
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	b _08037986
	.pool
_08037908:
	bl sub_8032768
	bl sub_8184E58
	ldr r2, =gUnknown_02024332
	movs r0, 0
	strb r0, [r2, 0x1]
	strb r0, [r2, 0x2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08037934
	movs r0, 0xE
	strb r0, [r2]
	b _080379D6
	.pool
_08037934:
	movs r0, 0x10
	strb r0, [r2]
	b _080379D6
_0803793A:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _080379D6
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203BD2C
	movs r2, 0x4
	bl link_0800A448
	b _08037986
	.pool
_0803795C:
	bl sub_800A550
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	bne _080379D6
	bl sub_800A5B4
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x4
	ands r0, r1
	cmp r0, 0
	bne _08037986
	ldr r0, =gUnknown_0203BD2C
	lsls r1, r7, 8
	ldr r2, =gUnknown_020223C4
	adds r1, r2
	movs r2, 0x4
_08037982:
	bl memcpy
_08037986:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080379D6
	.pool
_080379A0:
	ldr r0, =gUnknown_02024333
	adds r1, r0, 0x1
	bl battle_load_something
	lsls r0, 24
	cmp r0, 0
	beq _080379D6
	bl sub_8166188
	ldr r2, =gUnknown_03005D00
	ldr r1, =gMain
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, =sub_8039EF0
	str r0, [r1]
	ldr r0, =sub_8038420
	bl SetMainCallback2
	ldr r2, =gBattleTypeFlags
	ldr r1, [r2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080379D6
	movs r0, 0x20
	orrs r1, r0
	str r1, [r2]
_080379D6:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8037458

	thumb_func_start sub_80379F8
sub_80379F8: @ 80379F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	mov r8, r0
	ldr r6, =gUnknown_02022FF8
	mov r10, r6
_08037A12:
	ldr r1, [sp]
	add r1, r8
	movs r0, 0x64
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	mov r1, r8
	lsls r5, r1, 5
	strh r0, [r6]
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	strh r0, [r6, 0x2]
	movs r0, 0x4
	add r0, r10
	mov r9, r0
	adds r7, r5, r0
	adds r0, r4, 0
	movs r1, 0x2
	adds r2, r7, 0
	bl GetMonData
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	strb r0, [r6, 0xF]
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r6, 0x10]
	adds r0, r4, 0
	movs r1, 0x3A
	bl GetMonData
	strh r0, [r6, 0x12]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	mov r1, r10
	adds r1, 0x14
	adds r5, r1
	str r0, [r5]
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	str r0, [r6, 0x18]
	adds r0, r4, 0
	bl pokemon_get_gender
	strb r0, [r6, 0x1C]
	adds r0, r7, 0
	bl StripExtCtrlCodes
	adds r0, r4, 0
	movs r1, 0x3
	bl GetMonData
	cmp r0, 0x1
	beq _08037AA4
	adds r0, r7, 0
	movs r1, 0
	bl sub_81DB4DC
_08037AA4:
	adds r6, 0x20
	movs r1, 0x1
	add r8, r1
	mov r0, r8
	cmp r0, 0x2
	ble _08037A12
	ldr r0, =gUnknown_02023058
	ldr r0, [r0]
	mov r1, r9
	subs r1, 0x4
	movs r2, 0x60
	bl memcpy
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80379F8

	thumb_func_start sub_8037ADC
sub_8037ADC: @ 8037ADC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r0, 0x4
	mov r9, r0
	movs r4, 0xF
	ldr r6, =gBattleTypeFlags
	ldr r0, [r6]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	beq _08037B02
	movs r1, 0x2
	mov r9, r1
	movs r4, 0x3
_08037B02:
	bl link_get_multiplayer_id
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	movs r2, 0
	mov r8, r2
	strb r7, [r0]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r1, r0, 0
	adds r1, 0xB4
	str r1, [sp]
	adds r0, 0xAC
	mov r10, r0
	bl RunTasks
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5]
	cmp r0, 0x1
	beq _08037BA4
	cmp r0, 0x1
	bgt _08037B50
	cmp r0, 0
	beq _08037B5E
	b _08037D0A
	.pool
_08037B50:
	cmp r0, 0x2
	bne _08037B56
	b _08037C64
_08037B56:
	cmp r0, 0x3
	bne _08037B5C
	b _08037C9E
_08037B5C:
	b _08037D0A
_08037B5E:
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037B68
	b _08037D0A
_08037B68:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _08037B74
	b _08037D0A
_08037B74:
	ldr r4, =gUnknown_02023058
	movs r0, 0x60
	bl Alloc
	str r0, [r4]
	movs r0, 0
	bl sub_80379F8
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [r4]
	movs r2, 0x60
	bl link_0800A448
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _08037D0A
	.pool
_08037BA4:
	bl sub_800A550
	adds r1, r4, 0
	ands r1, r0
	cmp r1, r4
	beq _08037BB2
	b _08037D0A
_08037BB2:
	bl sub_800A5B4
	movs r5, 0
	cmp r8, r9
	bge _08037C2E
	lsls r0, r7, 3
	subs r0, r7
	lsls r6, r0, 2
	mov r8, r5
	ldr r4, =gUnknown_020223C4
_08037BC6:
	cmp r5, r7
	beq _08037C1E
	mov r2, r9
	cmp r2, 0x4
	bne _08037C14
	ldr r2, =gUnknown_020229E8
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _08037BF8
	adds r0, r6, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08037C04
	b _08037C1E
	.pool
_08037BF8:
	adds r0, r6, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08037C1E
_08037C04:
	ldr r0, =gUnknown_02022FF8
	adds r1, r4, 0
	movs r2, 0x60
	bl memcpy
	b _08037C1E
	.pool
_08037C14:
	ldr r0, =gUnknown_02022FF8
	adds r1, r4, 0
	movs r2, 0x60
	bl memcpy
_08037C1E:
	movs r2, 0x80
	lsls r2, 1
	adds r4, r2
	movs r0, 0x1C
	add r8, r0
	adds r5, 0x1
	cmp r5, r9
	blt _08037BC6
_08037C2E:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gMain
	ldr r0, [r1, 0x8]
	ldr r2, [sp]
	str r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r0, =sub_8037ADC
	str r0, [r1, 0x8]
	bl sub_81B9150
	b _08037D0A
	.pool
_08037C64:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _08037D0A
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08037D0A
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	beq _08037C98
	bl sub_800ADF8
	b _08037D0A
	.pool
_08037C98:
	bl sub_800AC34
	b _08037D0A
_08037C9E:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	beq _08037CE4
	bl sub_8010500
	lsls r0, 24
	cmp r0, 0
	beq _08037D0A
	mov r1, r10
	ldr r0, [r1]
	str r0, [r6]
	ldr r1, =gMain
	ldr r2, [sp]
	ldr r0, [r2]
	str r0, [r1, 0x8]
	ldr r0, =sub_80367D4
	bl SetMainCallback2
	ldr r4, =gUnknown_02023058
	ldr r0, [r4]
	bl Free
	mov r0, r8
	str r0, [r4]
	b _08037D0A
	.pool
_08037CE4:
	ldr r0, =gUnknown_03003124
	ldrb r5, [r0]
	cmp r5, 0
	bne _08037D0A
	mov r1, r10
	ldr r0, [r1]
	str r0, [r6]
	ldr r1, =gMain
	ldr r2, [sp]
	ldr r0, [r2]
	str r0, [r1, 0x8]
	ldr r0, =sub_80367D4
	bl SetMainCallback2
	ldr r4, =gUnknown_02023058
	ldr r0, [r4]
	bl Free
	str r5, [r4]
_08037D0A:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8037ADC

	thumb_func_start intro_end
intro_end: @ 8037D2C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0xB4
	adds r1, r0
	mov r8, r1
	adds r7, r0, 0
	adds r7, 0xAC
	bl RunTasks
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5]
	cmp r0, 0
	beq _08037D64
	cmp r0, 0x1
	beq _08037DA4
	b _08037DD6
	.pool
_08037D64:
	ldr r4, =gUnknown_02023058
	movs r0, 0x60
	bl Alloc
	str r0, [r4]
	movs r0, 0x3
	bl sub_80379F8
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r1, =gMain
	ldr r0, [r1, 0x8]
	mov r2, r8
	str r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	str r0, [r7]
	ldr r0, =intro_end
	str r0, [r1, 0x8]
	bl sub_81B9150
	b _08037DD6
	.pool
_08037DA4:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	bne _08037DD6
	movs r0, 0x2
	strb r0, [r5]
	ldr r1, =gBattleTypeFlags
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, =gMain
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1, 0x8]
	ldr r0, =sub_80367D4
	bl SetMainCallback2
	ldr r4, =gUnknown_02023058
	ldr r0, [r4]
	bl Free
	str r6, [r4]
_08037DD6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end intro_end

	thumb_func_start sub_8037DF4
sub_8037DF4: @ 8037DF4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	bl link_get_multiplayer_id
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	strb r7, [r0]
	bl RunTasks
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0]
	cmp r0, 0xA
	bls _08037E20
	b _080383F8
_08037E20:
	lsls r0, 2
	ldr r1, =_08037E38
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08037E38:
	.4byte _08037E64
	.4byte _08037EA8
	.4byte _08037F50
	.4byte _08038026
	.4byte _0803804C
	.4byte _08038140
	.4byte _08038164
	.4byte _080382CC
	.4byte _0803832C
	.4byte _0803836C
	.4byte _080383BC
_08037E64:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08037E90
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
	bl sub_805EF14
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1]
_08037E90:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037E9A
	b _080383F8
_08037E9A:
	bl sub_800E0E8
	b _080383F8
	.pool
_08037EA8:
	ldr r2, =gBattleTypeFlags
	ldr r1, [r2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08037F30
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037EBE
	b _080383F8
_08037EBE:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _08037F02
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	movs r5, 0xC0
	lsls r5, 1
	adds r0, r5
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, =0x00000181
	adds r1, r0, r2
	movs r0, 0x3
	strb r0, [r1]
	bl sub_8036A5C
	bl sub_8036B44
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [r4]
	adds r1, r5
	movs r2, 0x20
	bl link_0800A448
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08037F02:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _08037F0C
	b _080383F8
_08037F0C:
	movs r0, 0
	movs r1, 0
	bl sub_800DFB4
	b _080383F8
	.pool
_08037F30:
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _08037F40
	movs r0, 0x4
	orrs r1, r0
	str r1, [r2]
_08037F40:
	ldr r1, =gUnknown_02024332
	movs r0, 0x7
	strb r0, [r1]
	bl berry_801017C
	b _080383F8
	.pool
_08037F50:
	bl sub_800A550
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _08037F5E
	b _080383F8
_08037F5E:
	bl sub_800A5B4
	movs r0, 0x4
	adds r1, r7, 0
	bl sub_8036EB8
	bl berry_801017C
	bl sub_8068AA4
	ldr r0, =task00_0800F6FC
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	movs r2, 0
	movs r1, 0x87
	lsls r1, 1
	strh r1, [r0, 0xA]
	movs r1, 0x5A
	strh r1, [r0, 0xC]
	strh r2, [r0, 0x12]
	strh r2, [r0, 0xE]
	strh r2, [r0, 0x10]
	ldr r1, =gUnknown_020223C4
	adds r4, r0, 0
	adds r5, r1, 0x2
	movs r7, 0x3F
	movs r6, 0x3
_08037FA4:
	ldrh r0, [r5]
	str r2, [sp]
	bl sub_8185F90
	ldr r0, =gUnknown_020229E8
	ldr r2, [sp]
	adds r0, r2, r0
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _08037FE6
	cmp r0, 0x1
	bgt _08037FD4
	cmp r0, 0
	beq _08037FDE
	b _0803800C
	.pool
_08037FD4:
	cmp r0, 0x2
	beq _08037FEE
	cmp r0, 0x3
	beq _08037FFE
	b _0803800C
_08037FDE:
	ldrh r0, [r5]
	adds r1, r7, 0
	ands r1, r0
	b _08037FF6
_08037FE6:
	ldrh r0, [r5]
	adds r1, r7, 0
	ands r1, r0
	b _08038006
_08037FEE:
	ldrh r0, [r5]
	adds r1, r7, 0
	ands r1, r0
	lsls r1, 6
_08037FF6:
	ldrh r0, [r4, 0xE]
	orrs r1, r0
	strh r1, [r4, 0xE]
	b _0803800C
_08037FFE:
	ldrh r0, [r5]
	adds r1, r7, 0
	ands r1, r0
	lsls r1, 6
_08038006:
	ldrh r0, [r4, 0x10]
	orrs r1, r0
	strh r1, [r4, 0x10]
_0803800C:
	movs r0, 0x80
	lsls r0, 1
	adds r5, r0
	adds r2, 0x1C
	subs r6, 0x1
	cmp r6, 0
	bge _08037FA4
	bl zero_enemy_party_data
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08038026:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _08038032
	b _080383F8
_08038032:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gPlayerParty
	movs r2, 0xC8
	bl link_0800A448
	b _080383A6
	.pool
_0803804C:
	bl sub_800A550
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _0803805A
	b _080383F8
_0803805A:
	bl sub_800A5B4
	movs r6, 0
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	mov r8, r0
	ldr r4, =gUnknown_020223C4
	movs r5, 0
_0803806C:
	cmp r6, r7
	bne _080380A0
	ldr r0, =gUnknown_020229E8
	adds r0, r5, r0
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _0803808C
	cmp r0, 0x1
	bge _08038098
	cmp r0, 0
	beq _08038090
	b _0803812A
	.pool
_0803808C:
	cmp r0, 0x3
	bne _0803812A
_08038090:
	ldr r0, =gPlayerParty
	b _08038110
	.pool
_08038098:
	ldr r0, =gUnknown_02024618
	b _08038110
	.pool
_080380A0:
	ldr r2, =gUnknown_020229E8
	adds r0, r5, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080380C4
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _080380D2
	b _080380F8
	.pool
_080380C4:
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _080380F8
_080380D2:
	adds r0, r5, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _080380E4
	cmp r0, 0x1
	bge _080380F0
	cmp r0, 0
	beq _080380E8
	b _0803812A
_080380E4:
	cmp r0, 0x3
	bne _0803812A
_080380E8:
	ldr r0, =gPlayerParty
	b _08038110
	.pool
_080380F0:
	ldr r0, =gUnknown_02024618
	b _08038110
	.pool
_080380F8:
	adds r0, r5, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _0803810A
	cmp r0, 0x1
	bge _08038120
	cmp r0, 0
	beq _0803810E
	b _0803812A
_0803810A:
	cmp r0, 0x3
	bne _0803812A
_0803810E:
	ldr r0, =gEnemyParty
_08038110:
	adds r1, r4, 0
	movs r2, 0xC8
	bl memcpy
	b _0803812A
	.pool
_08038120:
	ldr r0, =gUnknown_02024870
	adds r1, r4, 0
	movs r2, 0xC8
	bl memcpy
_0803812A:
	movs r2, 0x80
	lsls r2, 1
	adds r4, r2
	adds r5, 0x1C
	adds r6, 0x1
	cmp r6, 0x3
	ble _0803806C
	b _080383A6
	.pool
_08038140:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	bne _0803814C
	b _080383F8
_0803814C:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_020245B4
	movs r2, 0x64
	bl link_0800A448
	b _080383A6
	.pool
_08038164:
	bl sub_800A550
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _08038172
	b _080383F8
_08038172:
	bl sub_800A5B4
	movs r6, 0
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	mov r8, r0
	ldr r4, =gUnknown_020223C4
	movs r5, 0
_08038184:
	cmp r6, r7
	bne _080381B8
	ldr r0, =gUnknown_020229E8
	adds r0, r5, r0
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _080381A4
	cmp r0, 0x1
	bge _080381B0
	cmp r0, 0
	beq _080381A8
	b _08038242
	.pool
_080381A4:
	cmp r0, 0x3
	bne _08038242
_080381A8:
	ldr r0, =gUnknown_020245B4
	b _08038228
	.pool
_080381B0:
	ldr r0, =gUnknown_020246E0
	b _08038228
	.pool
_080381B8:
	ldr r2, =gUnknown_020229E8
	adds r0, r5, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080381DC
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _080381EA
	b _08038210
	.pool
_080381DC:
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08038210
_080381EA:
	adds r0, r5, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _080381FC
	cmp r0, 0x1
	bge _08038208
	cmp r0, 0
	beq _08038200
	b _08038242
_080381FC:
	cmp r0, 0x3
	bne _08038242
_08038200:
	ldr r0, =gUnknown_020245B4
	b _08038228
	.pool
_08038208:
	ldr r0, =gUnknown_020246E0
	b _08038228
	.pool
_08038210:
	adds r0, r5, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _08038222
	cmp r0, 0x1
	bge _08038238
	cmp r0, 0
	beq _08038226
	b _08038242
_08038222:
	cmp r0, 0x3
	bne _08038242
_08038226:
	ldr r0, =gUnknown_0202480C
_08038228:
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	b _08038242
	.pool
_08038238:
	ldr r0, =gUnknown_02024938
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
_08038242:
	movs r2, 0x80
	lsls r2, 1
	adds r4, r2
	adds r5, 0x1C
	adds r6, 0x1
	cmp r6, 0x3
	ble _08038184
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	movs r2, 0xC8
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	movs r1, 0xFA
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	movs r2, 0x96
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	movs r1, 0xC8
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	movs r2, 0xFA
	lsls r2, 1
	adds r0, r4, r2
	bl shedinja_something
	b _080383A6
	.pool
_080382CC:
	bl sub_8032768
	bl sub_8184E58
	ldr r3, =gUnknown_02024332
	movs r0, 0
	strb r0, [r3, 0x1]
	strb r0, [r3, 0x2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08038326
	movs r6, 0
	ldr r0, =gUnknown_020229E8
	ldrb r1, [r0]
	adds r4, r3, 0
	adds r2, r0, 0
	cmp r1, 0x3
	bne _0803830A
	movs r3, 0xFF
_080382F8:
	adds r2, 0x1C
	adds r6, 0x1
	cmp r6, 0x3
	bgt _0803830A
	ldrh r1, [r2]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0x3
	beq _080382F8
_0803830A:
	cmp r6, 0x4
	bne _08038320
	movs r0, 0x8
	strb r0, [r4]
	b _080383F8
	.pool
_08038320:
	movs r0, 0xA
	strb r0, [r4]
	b _080383F8
_08038326:
	movs r0, 0xA
	strb r0, [r3]
	b _080383F8
_0803832C:
	bl sub_800A520
	lsls r0, 24
	cmp r0, 0
	beq _080383F8
	ldr r0, =gUnknown_0202449C
	ldr r4, [r0]
	movs r0, 0xC0
	lsls r0, 1
	adds r4, r0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, =gUnknown_0203BD2C
	ldr r0, [r0]
	str r0, [r4, 0x4]
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	movs r2, 0x8
	bl link_0800A448
	b _080383A6
	.pool
_0803836C:
	bl sub_800A550
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	bne _080383F8
	bl sub_800A5B4
	movs r2, 0
	b _08038386
_08038380:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
_08038386:
	cmp r2, 0x3
	bhi _080383A6
	ldr r4, =gUnknown_020223C4
	lsls r3, r2, 8
	adds r0, r3, r4
	ldrh r0, [r0]
	movs r1, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08038380
	adds r1, r4, 0x4
	adds r1, r3, r1
	ldr r0, =gUnknown_0203BD2C
	movs r2, 0x4
	bl memcpy
_080383A6:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080383F8
	.pool
_080383BC:
	ldr r0, =gUnknown_02024333
	adds r1, r0, 0x1
	bl battle_load_something
	lsls r0, 24
	cmp r0, 0
	beq _080383F8
	ldr r2, =gUnknown_03005D00
	ldr r1, =gMain
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, =sub_8039EF0
	str r0, [r1]
	ldr r0, =sub_8038420
	bl SetMainCallback2
	ldr r3, =gBattleTypeFlags
	ldr r2, [r3]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _080383F8
	ldr r0, =gUnknown_02038BCA
	movs r4, 0x80
	lsls r4, 4
	adds r1, r4, 0
	strh r1, [r0]
	movs r0, 0x20
	orrs r2, r0
	str r2, [r3]
_080383F8:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8037DF4

	thumb_func_start sub_8038420
sub_8038420: @ 8038420
	push {lr}
	sub sp, 0x4
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	ldr r0, =gMain
	ldrh r1, [r0, 0x2C]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08038482
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _08038482
	bl rfu_lacks_rfufunc
	lsls r0, 24
	cmp r0, 0
	beq _08038482
	ldr r2, =gUnknown_020375F0
	ldr r1, =gUnknown_0202433A
	movs r0, 0x5
	strb r0, [r1]
	movs r0, 0x5
	strh r0, [r2]
	bl ResetPaletteFadeControl
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, =sub_80384E4
	bl SetMainCallback2
_08038482:
	add sp, 0x4
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038420

	thumb_func_start sub_803849C
sub_803849C: @ 803849C
	push {lr}
	ldr r1, =gMain
	ldr r0, =gUnknown_03005D00
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, =gUnknown_02039B28
	movs r0, 0x3
	strb r0, [r2, 0x15]
	ldr r0, =0x00000439
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bl zero_enemy_party_data
	movs r0, 0x5A
	bl m4aSongNumStop
	bl sub_805F094
	bl dp11_free
	bl sub_8057028
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803849C

	thumb_func_start sub_80384E4
sub_80384E4: @ 80384E4
	push {lr}
	bl UpdatePaletteFade
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08038512
	ldr r0, =gMPlay_SE1
	bl m4aMPlayStop
	ldr r0, =gMPlay_SE2
	bl m4aMPlayStop
	bl sub_803849C
	bl FreeAllWindowBuffers
	ldr r0, =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
_08038512:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80384E4

	thumb_func_start sub_8038528
sub_8038528: @ 8038528
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldr r1, =sub_8038538
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_8038528

	thumb_func_start sub_8038538
sub_8038538: @ 8038538
	push {r4,r5,lr}
	adds r3, r0, 0
	ldr r5, =0x0201c000
	movs r0, 0x2E
	ldrsh r1, [r3, r0]
	cmp r1, 0x1
	beq _0803856C
	cmp r1, 0x1
	bgt _08038554
	cmp r1, 0
	beq _0803855A
	b _080385DC
	.pool
_08038554:
	cmp r1, 0x2
	beq _080385C8
	b _080385DC
_0803855A:
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	strh r1, [r3, 0x30]
	ldr r0, =0x00000281
	strh r0, [r3, 0x32]
	strh r1, [r3, 0x34]
	movs r0, 0x1
	strh r0, [r3, 0x36]
_0803856C:
	ldrh r0, [r3, 0x36]
	subs r0, 0x1
	strh r0, [r3, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _080385DC
	movs r0, 0x2
	strh r0, [r3, 0x36]
	movs r4, 0x30
	ldrsh r2, [r3, r4]
	movs r0, 0x34
	ldrsh r1, [r3, r0]
	lsls r1, 5
	adds r2, r1
	movs r4, 0x32
	ldrsh r0, [r3, r4]
	subs r0, r1
	movs r4, 0x3D
	lsls r0, 1
	adds r0, r5
	lsls r2, 1
	adds r2, r5
	movs r1, 0x1C
_0803859A:
	strh r4, [r2]
	strh r4, [r0]
	adds r0, 0x4
	adds r2, 0x4
	subs r1, 0x2
	cmp r1, 0
	bge _0803859A
	ldrh r0, [r3, 0x34]
	adds r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x15
	bne _080385DC
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	movs r0, 0x20
	strh r0, [r3, 0x30]
	b _080385DC
	.pool
_080385C8:
	ldrh r0, [r3, 0x30]
	subs r0, 0x1
	strh r0, [r3, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x14
	bne _080385DC
	ldr r0, =sub_8036760
	bl SetMainCallback2
_080385DC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038538

	thumb_func_start LoadTrainerParty
LoadTrainerParty: @ 80385E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	str r0, [sp, 0x10]
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0
	mov r9, r0
	movs r0, 0x80
	lsls r0, 3
	cmp r1, r0
	bne _08038610
	movs r0, 0
	b _080389E2
_08038610:
	ldr r4, =gBattleTypeFlags
	ldr r0, [r4]
	ldr r1, =0x043f0908
	ands r0, r1
	ldr r1, [sp, 0x14]
	lsls r1, 2
	str r1, [sp, 0x20]
	cmp r0, 0x8
	beq _08038624
	b _080389D2
_08038624:
	cmp r2, 0x1
	bne _0803862C
	bl zero_enemy_party_data
_0803862C:
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _08038668
	ldr r0, =gTrainers
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r1, r2, r3
	lsls r1, 3
	adds r1, r0
	adds r2, r1, 0
	adds r2, 0x20
	ldrb r1, [r2]
	movs r4, 0x3
	str r4, [sp, 0x1C]
	adds r4, r0, 0
	cmp r1, 0x3
	bhi _0803867C
	adds r2, r1, 0
	str r2, [sp, 0x1C]
	b _0803867C
	.pool
_08038668:
	ldr r1, =gTrainers
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r2, r3
	lsls r0, 3
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	str r0, [sp, 0x1C]
	adds r4, r1, 0
_0803867C:
	movs r0, 0
	str r0, [sp, 0x18]
	b _080389B4
	.pool
_08038688:
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r2, r3
	lsls r0, 3
	adds r1, r0, r4
	ldrb r0, [r1, 0x18]
	cmp r0, 0x1
	bne _0803869E
	movs r0, 0x80
	mov r10, r0
	b _080386B0
_0803869E:
	ldrb r1, [r1, 0x2]
	movs r0, 0x80
	ands r0, r1
	movs r1, 0x88
	mov r10, r1
	cmp r0, 0
	beq _080386B0
	movs r2, 0x78
	mov r10, r2
_080386B0:
	movs r6, 0
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r2, r3
	lsls r0, 3
	adds r1, r4, 0x4
	adds r0, r1
	ldrb r0, [r0]
	ldr r3, [sp, 0x18]
	adds r3, 0x1
	str r3, [sp, 0x24]
	cmp r0, 0xFF
	beq _080386E6
	adds r3, r1, 0
_080386CC:
	ldr r0, [sp, 0x14]
	adds r1, r2, r0
	lsls r1, 3
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _080386CC
_080386E6:
	ldr r1, [sp, 0x20]
	ldr r2, [sp, 0x14]
	adds r0, r1, r2
	lsls r1, r0, 3
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08038794
	cmp r0, 0x1
	bgt _08038700
	cmp r0, 0
	beq _0803870E
	b _080389AC
_08038700:
	cmp r0, 0x2
	bne _08038706
	b _08038854
_08038706:
	cmp r0, 0x3
	bne _0803870C
	b _080388E8
_0803870C:
	b _080389AC
_0803870E:
	adds r0, r4, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r4, [r0]
	movs r6, 0
	ldr r3, [sp, 0x18]
	lsls r2, r3, 3
	adds r0, r2, r4
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, 0xFF
	beq _08038750
	adds r3, r1, 0
	movs r7, 0xB
_08038734:
	adds r0, r2, r4
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r7
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _08038734
_08038750:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	adds r4, r5, r4
	ldrh r1, [r4]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x18]
	movs r1, 0x64
	adds r0, r3, 0
	muls r0, r1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldrh r1, [r4, 0x4]
	ldrb r2, [r4, 0x2]
	movs r3, 0x1
	str r3, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r3, 0x2
	str r3, [sp, 0x8]
	movs r3, 0
	str r3, [sp, 0xC]
	adds r3, r6, 0
	bl create_pokemon_set_level
	b _080389AC
	.pool
_08038794:
	adds r0, r4, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r7, [r0]
	movs r6, 0
	ldr r4, [sp, 0x18]
	lsls r2, r4, 4
	adds r0, r2, r7
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0xFF
	beq _080387D6
	adds r3, r1, 0
	movs r4, 0xB
_080387BA:
	adds r0, r2, r7
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r4
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _080387BA
_080387D6:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	mov r3, r8
	adds r4, r3, r7
	ldrh r1, [r4]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r5, r0, 0
	muls r5, r1
	ldr r2, [sp, 0x10]
	adds r5, r2, r5
	ldrh r1, [r4, 0x4]
	ldrb r2, [r4, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r5, 0
	adds r3, r6, 0
	bl create_pokemon_set_level
	movs r6, 0
	mov r0, r8
	adds r0, 0x6
	adds r4, r7, r0
_08038820:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r5, 0
	adds r2, r4, 0
	bl pokemon_setattr
	adds r1, r6, 0
	adds r1, 0x11
	ldrh r0, [r4]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, =gBattleMoves + 0x4 @ PP offset
	adds r2, r0
	adds r0, r5, 0
	bl pokemon_setattr
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _08038820
	b _080389AC
	.pool
_08038854:
	adds r0, r4, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r4, [r0]
	movs r6, 0
	ldr r0, [sp, 0x18]
	lsls r2, r0, 3
	adds r0, r2, r4
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, 0xFF
	beq _08038896
	adds r3, r1, 0
	movs r7, 0xB
_0803887A:
	adds r0, r2, r4
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r7
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0803887A
_08038896:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	adds r5, r4
	ldrh r1, [r5]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x18]
	movs r0, 0x64
	adds r4, r3, 0
	muls r4, r0
	ldr r1, [sp, 0x10]
	adds r4, r1, r4
	ldrh r1, [r5, 0x4]
	ldrb r2, [r5, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r3, r6, 0
	bl create_pokemon_set_level
	adds r5, 0x6
	adds r0, r4, 0
	movs r1, 0xC
	adds r2, r5, 0
	bl pokemon_setattr
	b _080389AC
	.pool
_080388E8:
	adds r0, r4, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r7, [r0]
	movs r6, 0
	ldr r4, [sp, 0x18]
	lsls r2, r4, 4
	adds r0, r2, r7
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0xFF
	beq _0803892A
	adds r3, r1, 0
	movs r4, 0xB
_0803890E:
	adds r0, r2, r7
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r4
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0803890E
_0803892A:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	mov r3, r8
	adds r5, r3, r7
	ldrh r1, [r5]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r4, r0, 0
	muls r4, r1
	ldr r2, [sp, 0x10]
	adds r4, r2, r4
	ldrh r1, [r5, 0x4]
	ldrb r2, [r5, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r3, r6, 0
	bl create_pokemon_set_level
	adds r5, 0x6
	adds r0, r4, 0
	movs r1, 0xC
	adds r2, r5, 0
	bl pokemon_setattr
	movs r6, 0
	adds r5, r4, 0
	mov r0, r8
	adds r0, 0x8
	adds r4, r7, r0
_08038982:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r5, 0
	adds r2, r4, 0
	bl pokemon_setattr
	adds r1, r6, 0
	adds r1, 0x11
	ldrh r0, [r4]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, =gBattleMoves + 0x4 @ PP offset
	adds r2, r0
	adds r0, r5, 0
	bl pokemon_setattr
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _08038982
_080389AC:
	ldr r4, [sp, 0x24]
	str r4, [sp, 0x18]
	ldr r4, =gTrainers
	ldr r0, [sp, 0x18]
_080389B4:
	ldr r1, [sp, 0x1C]
	cmp r0, r1
	bge _080389BC
	b _08038688
_080389BC:
	ldr r2, =gBattleTypeFlags
	ldr r1, =gTrainers
	ldr r3, [sp, 0x20]
	ldr r4, [sp, 0x14]
	adds r0, r3, r4
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x18]
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080389D2:
	ldr r0, =gTrainers
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r1, r2, r3
	lsls r1, 3
	adds r1, r0
	adds r1, 0x20
	ldrb r0, [r1]
_080389E2:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end LoadTrainerParty

	thumb_func_start sub_8038A04
sub_8038A04: @ 8038A04
	push {lr}
	ldr r0, =0x04000006
	ldrh r0, [r0]
	subs r0, 0x6F
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x30
	bhi _08038A1E
	movs r1, 0x98
	lsls r1, 8
	movs r0, 0x8
	bl SetGpuReg
_08038A1E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038A04

	thumb_func_start vblank_cb_08078BB4
vblank_cb_08078BB4: @ 8038A28
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x013f0102
	ands r0, r1
	cmp r0, 0
	bne _08038A3A
	bl Random
_08038A3A:
	ldr r0, =gUnknown_02022E14
	ldrh r1, [r0]
	movs r0, 0x10
	bl SetGpuReg
	ldr r0, =gUnknown_02022E16
	ldrh r1, [r0]
	movs r0, 0x12
	bl SetGpuReg
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldrh r1, [r0]
	movs r0, 0x16
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1C
	ldrh r1, [r0]
	movs r0, 0x18
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1E
	ldrh r1, [r0]
	movs r0, 0x1A
	bl SetGpuReg
	ldr r0, =gUnknown_02022E20
	ldrh r1, [r0]
	movs r0, 0x1C
	bl SetGpuReg
	ldr r0, =gUnknown_02022E22
	ldrh r1, [r0]
	movs r0, 0x1E
	bl SetGpuReg
	ldr r0, =gUnknown_02022E24
	ldrh r1, [r0]
	movs r0, 0x40
	bl SetGpuReg
	ldr r0, =gUnknown_02022E26
	ldrh r1, [r0]
	movs r0, 0x44
	bl SetGpuReg
	ldr r0, =gUnknown_02022E28
	ldrh r1, [r0]
	movs r0, 0x42
	bl SetGpuReg
	ldr r0, =gUnknown_02022E2A
	ldrh r1, [r0]
	movs r0, 0x46
	bl SetGpuReg
	bl LoadOamFromSprites
	bl ProcessObjectCopyRequests
	bl TransferPlttBuffer
	bl sub_80BA0A8
	pop {r0}
	bx r0
	.pool
	thumb_func_end vblank_cb_08078BB4

	thumb_func_start nullsub_17
nullsub_17: @ 8038B00
	bx lr
	thumb_func_end nullsub_17

	thumb_func_start sub_8038B04
sub_8038B04: @ 8038B04
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r5, r1]
	cmp r0, 0
	beq _08038B24
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0xFF
	lsls r1, 8
	ands r0, r1
	lsrs r0, 8
	ldrh r1, [r5, 0x30]
	adds r0, r1
	strh r0, [r5, 0x20]
	b _08038B36
_08038B24:
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0xFF
	lsls r1, 8
	ands r0, r1
	asrs r0, 8
	ldrh r1, [r5, 0x30]
	subs r1, r0
	strh r1, [r5, 0x20]
_08038B36:
	movs r1, 0xC0
	lsls r1, 1
	adds r0, r1, 0
	ldrh r1, [r5, 0x32]
	adds r0, r1
	strh r0, [r5, 0x32]
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08038B6A
	ldr r4, =0x00002710
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
	adds r0, r5, 0
	bl obj_free_rotscale_entry
	adds r0, r5, 0
	bl RemoveObjectAndFreeTiles
_08038B6A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038B04

	thumb_func_start sub_8038B74
sub_8038B74: @ 8038B74
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x1
	bl StartObjectRotScalAnim
	ldr r0, =sub_8038B04
	str r0, [r4, 0x1C]
	movs r0, 0x68
	bl audio_play
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038B74

	thumb_func_start sub_8038B94
sub_8038B94: @ 8038B94
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	ldr r0, =gUnknown_02024474
	adds r0, 0x25
	ldrb r2, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08038C04
	ldr r1, =gUnknown_020229E8
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _08038BF0
	cmp r0, 0x1
	bgt _08038BE8
	cmp r0, 0
	beq _08038C04
	b _08038C0C
	.pool
_08038BE8:
	cmp r0, 0x2
	beq _08038C04
	cmp r0, 0x3
	bne _08038C0C
_08038BF0:
	ldr r0, =gEnemyParty
	str r0, [sp, 0x4]
	ldr r1, =gPlayerParty
	str r1, [sp, 0x8]
	b _08038C0C
	.pool
_08038C04:
	ldr r2, =gPlayerParty
	str r2, [sp, 0x4]
	ldr r3, =gEnemyParty
	str r3, [sp, 0x8]
_08038C0C:
	movs r7, 0
	movs r0, 0
	mov r8, r0
	ldr r1, [sp]
	lsls r1, 2
	str r1, [sp, 0xC]
	movs r2, 0xCE
	lsls r2, 1
	mov r10, r2
	mov r9, r0
_08038C20:
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r3, [sp, 0x4]
	adds r4, r3, r4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _08038C90
	cmp r5, r10
	beq _08038C64
	cmp r6, 0
	beq _08038C64
	cmp r1, 0
	bne _08038C64
	movs r0, 0x1
	mov r2, r9
	lsls r0, r2
	orrs r7, r0
_08038C64:
	cmp r5, 0
	beq _08038C90
	cmp r6, 0
	beq _08038C7C
	cmp r5, r10
	beq _08038C74
	cmp r1, 0
	beq _08038C7C
_08038C74:
	movs r0, 0x2
	mov r3, r9
	lsls r0, r3
	orrs r7, r0
_08038C7C:
	cmp r5, 0
	beq _08038C90
	cmp r5, r10
	beq _08038C90
	cmp r6, 0
	bne _08038C90
	movs r0, 0x3
	mov r1, r9
	lsls r0, r1
	orrs r7, r0
_08038C90:
	movs r2, 0x2
	add r9, r2
	movs r3, 0x1
	add r8, r3
	mov r0, r8
	cmp r0, 0x5
	ble _08038C20
	ldr r1, =gTasks
	ldr r2, [sp, 0xC]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0xE]
	movs r7, 0
	movs r0, 0
	mov r8, r0
	movs r1, 0xCE
	lsls r1, 1
	mov r10, r1
	mov r9, r0
_08038CBA:
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r2, [sp, 0x8]
	adds r4, r2, r4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _08038D2A
	cmp r5, r10
	beq _08038CFE
	cmp r6, 0
	beq _08038CFE
	cmp r1, 0
	bne _08038CFE
	movs r0, 0x1
	mov r3, r9
	lsls r0, r3
	orrs r7, r0
_08038CFE:
	cmp r5, 0
	beq _08038D2A
	cmp r6, 0
	beq _08038D16
	cmp r5, r10
	beq _08038D0E
	cmp r1, 0
	beq _08038D16
_08038D0E:
	movs r0, 0x2
	mov r1, r9
	lsls r0, r1
	orrs r7, r0
_08038D16:
	cmp r5, 0
	beq _08038D2A
	cmp r5, r10
	beq _08038D2A
	cmp r6, 0
	bne _08038D2A
	movs r0, 0x3
	mov r2, r9
	lsls r0, r2
	orrs r7, r0
_08038D2A:
	movs r3, 0x2
	add r9, r3
	movs r0, 0x1
	add r8, r0
	mov r1, r8
	cmp r1, 0x5
	ble _08038CBA
	ldr r1, =gTasks
	ldr r2, [sp, 0xC]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0x10]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038B94

	thumb_func_start sub_8038D64
sub_8038D64: @ 8038D64
	push {r4,lr}
	sub sp, 0x4
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x21
	negs r2, r2
	ands r1, r2
	str r1, [r0]
	ldr r0, =0x003f0100
	ands r0, r1
	cmp r0, 0
	beq _08038DAC
	ldr r0, =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
	bl sub_8057028
	bl dp11_free
	bl sub_805F094
	b _08038EB6
	.pool
_08038DAC:
	str r0, [sp]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	mov r0, sp
	bl CpuSet
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0xF0
	bl SetGpuReg
	ldr r4, =0x00005051
	movs r0, 0x44
	adds r1, r4, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	ldr r1, =gUnknown_02022E24
	movs r0, 0xF0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E26
	strh r4, [r0]
	bl dp12_8087EA4
	ldr r0, =gUnknown_02038C28
	movs r3, 0xF0
	movs r1, 0xF0
	lsls r1, 3
	adds r2, r0, r1
	movs r1, 0x4F
_08038DFE:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	subs r1, 0x1
	cmp r1, 0
	bge _08038DFE
	movs r1, 0x50
	ldr r0, =gUnknown_02038C28
	ldr r3, =0x0000ff10
	movs r4, 0x82
	lsls r4, 4
	adds r2, r0, r4
	adds r0, 0xA0
_08038E1A:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	adds r1, 0x1
	cmp r1, 0x9F
	ble _08038E1A
	bl ResetPaletteFade
	ldr r0, =gUnknown_02022E14
	movs r4, 0
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	ldr r0, =gUnknown_02022E20
	strh r4, [r0]
	ldr r0, =gUnknown_02022E22
	strh r4, [r0]
	bl c2_berry_program_update_menu
	ldr r0, =gUnknown_08C004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	bl sub_803570C
	bl ResetAllObjectData
	bl ResetTasks
	bl sub_8036154
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	bl ResetObjectPaletteAllocator
	ldr r1, =gUnknown_0300301C
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, =vblank_cb_08078BB4
	bl SetVBlankCallback
	ldr r0, =task00_0800F6FC
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x87
	lsls r2, 1
	strh r2, [r1, 0xA]
	movs r2, 0x5A
	strh r2, [r1, 0xC]
	movs r2, 0x1
	strh r2, [r1, 0x12]
	bl sub_8038B94
	ldr r0, =sub_8038F14
	bl SetMainCallback2
	ldr r0, =gUnknown_02024332
	strb r4, [r0]
_08038EB6:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038D64

	thumb_func_start sub_8038F14
sub_8038F14: @ 8038F14
	push {lr}
	bl sub_8038F34
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_8038F14

	thumb_func_start sub_8038F34
sub_8038F34: @ 8038F34
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r0, =gUnknown_02024332
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x9
	bls _08038F44
	b _080391C6
_08038F44:
	lsls r0, r1, 2
	ldr r1, =_08038F58
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08038F58:
	.4byte _08038F80
	.4byte _08038FA0
	.4byte _08038FC2
	.4byte _080390C8
	.4byte _08039100
	.4byte _08039118
	.4byte _0803912C
	.4byte _0803914C
	.4byte _08039166
	.4byte _08039184
_08038F80:
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	ldr r1, =gUnknown_02024332
	movs r0, 0xFF
	strb r0, [r1, 0x1]
	b _08039174
	.pool
_08038FA0:
	ldrb r0, [r4, 0x1]
	subs r0, 0x1
	strb r0, [r4, 0x1]
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _08038FB0
	b _080391C6
_08038FB0:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _0803910C
_08038FC2:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08038FD0
	b _080391C6
_08038FD0:
	bl sub_8185FAC
	ldr r2, =gMain
	ldr r1, =0x00000439
	adds r2, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	movs r3, 0x2
	cmp r0, 0
	beq _08038FFC
	movs r3, 0x4
_08038FFC:
	movs r4, 0
	ldr r6, =gSaveBlock2Ptr
	cmp r4, r3
	bge _08039022
	ldr r1, =gUnknown_020229E8
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _08039022
	movs r5, 0xFF
	adds r2, r1, 0
_08039010:
	adds r2, 0x1C
	adds r4, 0x1
	cmp r4, r3
	bge _08039022
	ldrh r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0x3
	beq _08039010
_08039022:
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _080390AC
	cmp r4, r3
	bne _080390AC
	ldr r0, =0x000008d2
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08039074
	bl FreeAllWindowBuffers
	ldr r0, =sub_80392A8
	bl SetMainCallback2
	b _080391C6
	.pool
_08039074:
	ldr r2, =gMain
	ldr r1, =0x00000439
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _08039090
	ldr r0, [r2, 0x8]
	b _080390B0
	.pool
_08039090:
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08039172
	ldr r0, =sub_80B3AF8
	movs r1, 0x5
	bl CreateTask
	b _08039172
	.pool
_080390AC:
	ldr r0, =gMain
	ldr r0, [r0, 0x8]
_080390B0:
	bl SetMainCallback2
	bl sub_8057028
	bl dp11_free
	bl sub_805F094
	b _080391C6
	.pool
_080390C8:
	movs r0, 0
	str r0, [sp, 0x4]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x4
	bl CpuSet
	movs r4, 0
_080390DA:
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_80363C4
	adds r4, 0x1
	cmp r4, 0x1
	ble _080390DA
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	b _08039172
	.pool
_08039100:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080391C6
_0803910C:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _080391C6
	.pool
_08039118:
	ldr r0, =sub_80B3AF8
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	bne _080391C6
	b _08039172
	.pool
_0803912C:
	bl sub_800A520
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080391C6
	bl sub_800ADF8
	ldr r0, =gUnknown_0824978D
	movs r1, 0
	bl battle_show_message_maybe
	b _08039172
	.pool
_0803914C:
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	cmp r0, 0
	bne _080391C6
	bl sub_800A520
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080391C6
	b _08039172
_08039166:
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _08039172
	bl sub_800AC34
_08039172:
	ldr r1, =gUnknown_02024332
_08039174:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080391C6
	.pool
_08039184:
	ldr r2, =gMain
	ldr r1, =0x00000439
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	adds r3, r2, 0
	cmp r0, 0
	beq _080391A6
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _080391A6
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _080391C6
_080391A6:
	ldr r0, =0x00000439
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r3, 0x8]
	bl SetMainCallback2
	bl sub_8057028
	bl dp11_free
	bl sub_805F094
_080391C6:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8038F34

	thumb_func_start sub_80391E0
sub_80391E0: @ 80391E0
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0
	cmp r1, 0x6
	bhi _080392A0
	lsls r0, r1, 2
	ldr r1, =_08039200
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08039200:
	.4byte _0803921C
	.4byte _08039230
	.4byte _08039244
	.4byte _08039258
	.4byte _0803926C
	.4byte _08039280
	.4byte _08039294
_0803921C:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	lsrs r0, 30
	b _080392A0
	.pool
_08039230:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 28
	lsrs r0, 30
	b _080392A0
	.pool
_08039244:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrh r0, [r1]
	lsls r0, 23
	lsrs r0, 27
	b _080392A0
	.pool
_08039258:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 29
	lsrs r0, 30
	b _080392A0
	.pool
_0803926C:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 28
	lsrs r0, 31
	b _080392A0
	.pool
_08039280:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 26
	lsrs r0, 30
	b _080392A0
	.pool
_08039294:
	ldr r0, =gUnknown_0831AA08
	lsls r1, r2, 2
	adds r1, r0
	ldr r0, [r1]
	lsls r0, 8
	lsrs r0, 22
_080392A0:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80391E0

	thumb_func_start sub_80392A8
sub_80392A8: @ 80392A8
	push {r4,lr}
	sub sp, 0x8
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r4, 0
	str r4, [sp, 0x4]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x4
	bl CpuSet
	bl ResetPaletteFade
	ldr r0, =gUnknown_02022E14
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	ldr r0, =gUnknown_02022E20
	strh r4, [r0]
	ldr r0, =gUnknown_02022E22
	strh r4, [r0]
	bl c2_berry_program_update_menu
	movs r1, 0x82
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	bl sub_803570C
_080392FE:
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_80363C4
	adds r4, 0x1
	cmp r4, 0x1
	ble _080392FE
	bl ResetAllObjectData
	bl ResetTasks
	bl ResetObjectPaletteAllocator
	ldr r1, =gUnknown_0300301C
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, =vblank_cb_08078BB4
	bl SetVBlankCallback
	ldr r0, =sub_803937C
	bl SetMainCallback2
	movs r0, 0x1
	negs r0, r0
	movs r4, 0
	str r4, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, =gUnknown_02024332
	strb r4, [r0]
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80392A8

	thumb_func_start sub_803937C
sub_803937C: @ 803937C
	push {lr}
	bl sub_803939C
	bl CallObjectCallbacks
	bl PrepareSpritesForOamLoad
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_803937C

	thumb_func_start sub_803939C
sub_803939C: @ 803939C
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024332
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0xC
	bls _080393AC
	b _0803975E
_080393AC:
	lsls r0, r1, 2
	ldr r1, =_080393C0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080393C0:
	.4byte _080393F4
	.4byte _08039414
	.4byte _08039450
	.4byte _08039470
	.4byte _0803949C
	.4byte _080394D8
	.4byte _0803957C
	.4byte _08039704
	.4byte _080395CC
	.4byte _08039610
	.4byte _08039678
	.4byte _080396A8
	.4byte _08039704
_080393F4:
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_08039414:
	ldr r0, =gMain
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08039434
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _08039434
	ldr r0, =sub_80B3AF8
	movs r1, 0x5
	bl CreateTask
_08039434:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_08039450:
	ldr r0, =sub_80B3AF8
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	beq _0803945E
	b _0803975E
_0803945E:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_08039470:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0803947E
	b _0803975E
_0803947E:
	ldr r0, =gUnknown_085CD28F
	movs r1, 0
	bl battle_show_message_maybe
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_0803949C:
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	beq _080394AC
	b _0803975E
_080394AC:
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gUnknown_085CCABB
	movs r1, 0xC
	bl battle_show_message_maybe
	ldr r4, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_8056B74
	b _080396EA
	.pool
_080394D8:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08039500
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _080394EC
	b _0803975E
_080394EC:
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0
	b _0803951E
	.pool
_08039500:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08039526
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08039510
	b _0803975E
_08039510:
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0x1
_0803951E:
	strb r0, [r4, 0x1]
	bl sub_8056B74
	b _0803975E
_08039526:
	movs r5, 0x1
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _08039560
	movs r0, 0x5
	bl audio_play
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08039540
	b _080396EA
_08039540:
	str r5, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	bl sub_8185338
	strb r0, [r4, 0x1]
	movs r0, 0xA
	strb r0, [r4]
	b _0803975E
	.pool
_08039560:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0803956A
	b _0803975E
_0803956A:
	movs r0, 0x5
	bl audio_play
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_0803957C:
	bl sub_800A520
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0803958A
	b _0803975E
_0803958A:
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gMain
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080395B4
	bl sub_800ADF8
	ldr r0, =gUnknown_0824978D
	movs r1, 0
	bl battle_show_message_maybe
_080395B4:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_080395CC:
	ldrb r0, [r4, 0x1]
	subs r0, 0x1
	strb r0, [r4, 0x1]
	lsls r0, 24
	cmp r0, 0
	beq _080395DA
	b _0803975E
_080395DA:
	ldr r0, =gMain
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080395F6
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _080395F6
	bl sub_800AC34
_080395F6:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	b _0803975C
	.pool
_08039610:
	ldr r2, =gMain
	ldr r1, =0x00000439
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	adds r3, r2, 0
	cmp r0, 0
	beq _08039634
	ldr r0, =gLinkVSyncDisabled
	ldrb r0, [r0]
	cmp r0, 0
	bne _08039634
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08039634
	b _0803975E
_08039634:
	ldr r0, =0x00000439
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08039650
	b _0803975E
_08039650:
	ldr r0, [r3, 0x8]
	bl SetMainCallback2
	bl sub_8057028
	bl dp11_free
	bl sub_805F094
	b _0803975E
	.pool
_08039678:
	ldrb r0, [r4, 0x1]
	cmp r0, 0x1
	bne _080396A0
	movs r0, 0x37
	bl audio_play
	ldr r0, =gUnknown_085CD2CB
_08039686:
	bl get_battle_strings_
	ldr r0, =gUnknown_02022E2C
	movs r1, 0
	bl battle_show_message_maybe
	movs r0, 0x80
	strb r0, [r4, 0x1]
	b _080396EA
	.pool
_080396A0:
	ldr r0, =gUnknown_08242481
	b _08039686
	.pool
_080396A8:
	bl sub_800A520
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803975E
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	cmp r0, 0
	bne _0803975E
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	subs r0, 0x1
	strb r0, [r4, 0x1]
	lsls r0, 24
	cmp r0, 0
	bne _0803975E
	ldr r0, =gMain
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080396EA
	bl sub_800ADF8
	ldr r0, =gUnknown_0824978D
	movs r1, 0
	bl battle_show_message_maybe
_080396EA:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _0803975E
	.pool
_08039704:
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	bne _0803975E
	ldr r0, =gMain
	ldr r1, =0x00000439
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _08039744
	bl sub_800A520
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803975E
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	b _0803974A
	.pool
_08039744:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
_0803974A:
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gUnknown_02024332
	movs r0, 0x20
	strb r0, [r1, 0x1]
	movs r0, 0x8
_0803975C:
	strb r0, [r1]
_0803975E:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803939C

	thumb_func_start shedinja_something
shedinja_something: @ 803976C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	add r5, sp, 0xC
	movs r0, 0x1
	strb r0, [r5]
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	ldr r1, =0x0000012f
	cmp r0, r1
	bne _080397B4
	adds r0, r4, 0
	movs r1, 0x3
	bl GetMonData
	ldrb r1, [r5]
	cmp r0, r1
	beq _080397B4
	adds r0, r4, 0
	movs r1, 0x2
	mov r2, sp
	bl GetMonData
	ldr r1, =gUnknown_0831ACA0
	mov r0, sp
	bl StringCompareWithoutExtCtrlCodes
	cmp r0, 0
	bne _080397B4
	adds r0, r4, 0
	movs r1, 0x3
	adds r2, r5, 0
	bl pokemon_setattr
_080397B4:
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end shedinja_something

	thumb_func_start sub_80397C4
sub_80397C4: @ 80397C4
	ldr r2, =gUnknown_0831ABA0
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	lsls r1, 3
	adds r1, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 3
	bx lr
	.pool
	thumb_func_end sub_80397C4

	thumb_func_start oac_poke_opponent
oac_poke_opponent: @ 80397DC
	push {lr}
	sub sp, 0x4
	ldr r1, =sub_803980C
	str r1, [r0, 0x1C]
	movs r1, 0
	bl StartObjectImageAnimIfDifferent
	movs r0, 0x80
	lsls r0, 10
	ldr r1, =0x00002108
	str r1, [sp]
	movs r1, 0
	movs r2, 0xA
	movs r3, 0xA
	bl BeginNormalPaletteFade
	add sp, 0x4
	pop {r0}
	bx r0
	.pool
	thumb_func_end oac_poke_opponent

	thumb_func_start sub_803980C
sub_803980C: @ 803980C
	push {lr}
	adds r2, r0, 0
	ldr r0, =gUnknown_020243FC
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0803982C
	ldrh r0, [r2, 0x24]
	adds r0, 0x2
	strh r0, [r2, 0x24]
	lsls r0, 16
	cmp r0, 0
	bne _0803982C
	ldr r0, =sub_8039838
	str r0, [r2, 0x1C]
_0803982C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803980C

	thumb_func_start sub_8039838
sub_8039838: @ 8039838
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08039880
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8076918
	ldr r1, =gUnknown_03005D70
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_80729D0
	ldr r0, =sub_8039894
	str r0, [r4, 0x1C]
	adds r0, r4, 0
	movs r1, 0
	bl StartObjectImageAnimIfDifferent
	movs r0, 0x80
	lsls r0, 10
	ldr r1, =0x00002108
	str r1, [sp]
	movs r1, 0
	movs r2, 0xA
	movs r3, 0
	bl BeginNormalPaletteFade
_08039880:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039838

	thumb_func_start sub_8039894
sub_8039894: @ 8039894
	push {lr}
	adds r2, r0, 0
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080398B0
	ldrh r1, [r2, 0x32]
	adds r0, r2, 0
	movs r2, 0
	movs r3, 0x1
	bl sub_806ECEC
_080398B0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039894

	thumb_func_start nullsub_18
nullsub_18: @ 80398B8
	bx lr
	thumb_func_end nullsub_18

	thumb_func_start sub_80398BC
sub_80398BC: @ 80398BC
	movs r1, 0x6
	strh r1, [r0, 0x34]
	movs r1, 0x1
	strh r1, [r0, 0x36]
	ldr r1, =sub_80398D0
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_80398BC

	thumb_func_start sub_80398D0
sub_80398D0: @ 80398D0
	push {r4,lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x36]
	subs r0, 0x1
	strh r0, [r3, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _08039924
	movs r0, 0x8
	strh r0, [r3, 0x36]
	movs r0, 0x3E
	adds r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r4, 0x5
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	ldrh r0, [r3, 0x34]
	subs r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	bne _08039924
	ldrb r1, [r1]
	adds r0, r4, 0
	ands r0, r1
	mov r1, r12
	strb r0, [r1]
	ldr r0, =nullsub_18
	str r0, [r3, 0x1C]
	ldr r0, =gUnknown_02022F88
	str r2, [r0]
_08039924:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80398D0

	thumb_func_start sub_8039934
sub_8039934: @ 8039934
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	ldrh r0, [r0, 0x2E]
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r6, 2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	beq _0803995C
	adds r4, r0, 0
	b _08039960
	.pool
_0803995C:
	mov r0, r9
	ldrh r4, [r0, 0x32]
_08039960:
	ldr r1, =gUnknown_0202406E
	lsls r0, r6, 1
	adds r5, r0, r1
	ldrh r0, [r5]
	movs r1, 0x64
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	ldr r7, =gEnemyParty
	adds r0, r7
	movs r1, 0
	bl GetMonData
	cmp r4, 0xC9
	bne _080399E4
	ldrh r0, [r5]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0
	bl GetMonData
	adds r2, r0, 0
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _080399D0
	movs r0, 0xC9
	b _080399DA
	.pool
_080399D0:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_080399DA:
	ldr r1, =gUnknown_08300D38
	lsls r0, 2
	b _08039A1C
	.pool
_080399E4:
	ldr r0, =0x00000181
	cmp r4, r0
	bne _08039A08
	ldr r0, =gUnknown_08525F78
	ldr r1, =gUnknown_020244E4
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	b _08039A20
	.pool
_08039A08:
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	bls _08039A18
	ldr r0, =gUnknown_08300D38
	b _08039A1E
	.pool
_08039A18:
	ldr r1, =gUnknown_08300D38
	lsls r0, r4, 2
_08039A1C:
	adds r0, r1
_08039A1E:
	ldrb r0, [r0, 0x1]
_08039A20:
	lsrs r1, r0, 3
	movs r0, 0x8
	subs r0, r1
	mov r1, r9
	strh r0, [r1, 0x34]
	movs r0, 0x1
	strh r0, [r1, 0x36]
	ldr r0, =sub_8039A48
	str r0, [r1, 0x1C]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039934

	thumb_func_start sub_8039A48
sub_8039A48: @ 8039A48
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x36]
	subs r0, 0x1
	strh r0, [r4, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _08039AC8
	movs r0, 0x2
	strh r0, [r4, 0x36]
	ldrh r0, [r4, 0x26]
	adds r0, 0x8
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	lsls r0, 16
	cmp r0, 0
	bge _08039A7C
	adds r0, r4, 0
	bl obj_free_rotscale_entry
	adds r0, r4, 0
	bl RemoveObjectAndFreeTiles
	b _08039AC8
_08039A7C:
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_per_side_status
	ldr r1, =gUnknown_020244D4
	ldr r1, [r1]
	lsls r0, 24
	lsrs r0, 22
	adds r1, 0x4
	adds r1, r0
	ldr r2, =gUnknown_020244E4
	movs r3, 0x2E
	ldrsh r0, [r4, r3]
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 11
	ldr r1, [r1]
	adds r1, r0
	movs r2, 0x34
	ldrsh r0, [r4, r2]
	lsls r0, 8
	adds r1, r0
	movs r2, 0
	movs r0, 0xFF
_08039AAE:
	strb r2, [r1]
	adds r1, 0x1
	subs r0, 0x1
	cmp r0, 0
	bge _08039AAE
	ldr r0, =gUnknown_020244E4
	movs r3, 0x2E
	ldrsh r1, [r4, r3]
	adds r1, r0
	ldrb r1, [r1]
	adds r0, r4, 0
	bl StartObjectImageAnim
_08039AC8:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039A48

	thumb_func_start sub_8039AD8
sub_8039AD8: @ 8039AD8
	movs r1, 0x8
	strh r1, [r0, 0x34]
	adds r1, r0, 0
	adds r1, 0x3E
	ldrb r1, [r1]
	lsls r1, 29
	lsrs r1, 31
	strh r1, [r0, 0x36]
	ldr r1, =sub_8039AF4
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_8039AD8

	thumb_func_start sub_8039AF4
sub_8039AF4: @ 8039AF4
	push {lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x34]
	subs r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	cmp r0, 0
	bne _08039B26
	movs r0, 0x3E
	adds r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	movs r0, 0x8
	strh r0, [r3, 0x34]
_08039B26:
	pop {r0}
	bx r0
	thumb_func_end sub_8039AF4

	thumb_func_start sub_8039B2C
sub_8039B2C: @ 8039B2C
	movs r1, 0x3E
	adds r1, r0
	mov r12, r1
	movs r1, 0x1
	ldrh r2, [r0, 0x36]
	ands r2, r1
	lsls r2, 2
	mov r1, r12
	ldrb r3, [r1]
	movs r1, 0x5
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	movs r1, 0
	strh r1, [r0, 0x36]
	ldr r1, =nullsub_18
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_8039B2C

	thumb_func_start sub_8039B58
sub_8039B58: @ 8039B58
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08039BA0
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08039B80
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _08039B94
_08039B80:
	ldrh r0, [r4, 0x32]
	bl sub_806F0D4
	lsls r0, 24
	cmp r0, 0
	beq _08039B94
	adds r0, r4, 0
	movs r1, 0x1
	bl StartObjectImageAnim
_08039B94:
	ldrh r1, [r4, 0x32]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_806ECEC
_08039BA0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039B58

	thumb_func_start sub_8039BB4
sub_8039BB4: @ 8039BB4
	ldr r1, =oac_poke_ally_
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_8039BB4

	thumb_func_start oac_poke_ally_
oac_poke_ally_: @ 8039BC0
	push {lr}
	adds r2, r0, 0
	ldr r0, =gUnknown_020243FC
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08039BE4
	ldrh r0, [r2, 0x24]
	subs r0, 0x2
	strh r0, [r2, 0x24]
	lsls r0, 16
	asrs r1, r0, 16
	cmp r1, 0
	bne _08039BE4
	ldr r0, =nullsub_19
	str r0, [r2, 0x1C]
	strh r1, [r2, 0x30]
_08039BE4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end oac_poke_ally_

	thumb_func_start sub_8039BF0
sub_8039BF0: @ 8039BF0
	ldr r1, =nullsub_19
	str r1, [r0, 0x1C]
	bx lr
	.pool
	thumb_func_end sub_8039BF0

	thumb_func_start nullsub_19
nullsub_19: @ 8039BFC
	bx lr
	thumb_func_end nullsub_19

	thumb_func_start sub_8039C00
sub_8039C00: @ 8039C00
	push {lr}
	adds r2, r0, 0
	ldr r0, =gUnknown_020243FC
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08039C20
	ldrh r0, [r2, 0x30]
	ldrh r1, [r2, 0x24]
	adds r0, r1
	strh r0, [r2, 0x24]
	ldrh r0, [r2, 0x32]
	ldrh r1, [r2, 0x26]
	adds r0, r1
	strh r0, [r2, 0x26]
_08039C20:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039C00

	thumb_func_start dp11b_obj_instanciate
dp11b_obj_instanciate: @ 8039C28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	mov r10, r3
	cmp r1, 0
	beq _08039C64
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	lsls r2, r4, 1
	adds r0, r2, r4
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x2
	b _08039C76
	.pool
_08039C64:
	ldr r0, =gUnknown_020244D0
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	lsls r2, r4, 1
	adds r0, r2, r4
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
_08039C76:
	ands r0, r1
	adds r6, r2, 0
	cmp r0, 0
	bne _08039D2C
	ldr r0, =objc_dp11b_pingpong
	bl CreateInvisibleSpriteWithCallback
	lsls r0, 24
	lsrs r5, r0, 24
	mov r0, r8
	cmp r0, 0x1
	bne _08039CD0
	ldr r0, =gUnknown_03005D70
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r2, =gUnknown_020244D0
	ldr r0, [r2]
	ldr r0, [r0, 0x4]
	adds r1, r6, r4
	lsls r1, 2
	adds r0, r1, r0
	strb r5, [r0, 0x2]
	ldr r0, [r2]
	ldr r0, [r0, 0x4]
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1]
	ldr r2, =gUnknown_02020630
	lsls r3, r5, 4
	adds r0, r3, r5
	lsls r0, 2
	adds r0, r2
	movs r1, 0x80
	b _08039CFE
	.pool
_08039CD0:
	ldr r0, =gUnknown_020241E4
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r2, =gUnknown_020244D0
	ldr r0, [r2]
	ldr r0, [r0, 0x4]
	adds r1, r6, r4
	lsls r1, 2
	adds r0, r1, r0
	strb r5, [r0, 0x3]
	ldr r0, [r2]
	ldr r0, [r0, 0x4]
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r2, =gUnknown_02020630
	lsls r3, r5, 4
	adds r0, r3, r5
	lsls r0, 2
	adds r0, r2
	movs r1, 0xC0
_08039CFE:
	strh r1, [r0, 0x2E]
	adds r4, r2, 0
	adds r1, r3, r5
	lsls r1, 2
	adds r1, r4
	mov r2, r9
	lsls r0, r2, 24
	asrs r0, 24
	movs r2, 0
	strh r0, [r1, 0x30]
	mov r3, r10
	lsls r0, r3, 24
	asrs r0, 24
	strh r0, [r1, 0x32]
	strh r7, [r1, 0x34]
	mov r0, r8
	strh r0, [r1, 0x36]
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x24]
	strh r2, [r0, 0x26]
_08039D2C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp11b_obj_instanciate

	thumb_func_start dp11b_obj_free
dp11b_obj_free: @ 8039D48
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	bne _08039D9C
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r5, r0, 2
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08039DEA
	ldr r2, =gUnknown_02020630
	ldrb r1, [r3, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r0, 0x34]
	lsls r1, 24
	lsrs r4, r1, 24
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	adds r1, r5, r1
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	b _08039DD6
	.pool
_08039D9C:
	ldr r6, =gUnknown_020244D0
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	lsls r0, r2, 1
	adds r0, r2
	lsls r5, r0, 2
	adds r3, r5, r1
	ldrb r1, [r3]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08039DEA
	ldr r2, =gUnknown_02020630
	ldrb r1, [r3, 0x3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r0, 0x34]
	lsls r1, 24
	lsrs r4, r1, 24
	bl RemoveObjectAndFreeTiles
	ldr r0, [r6]
	ldr r1, [r0, 0x4]
	adds r1, r5, r1
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
_08039DD6:
	ands r0, r2
	strb r0, [r1]
	ldr r0, =gUnknown_02020630
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	movs r0, 0
	strh r0, [r1, 0x24]
	strh r0, [r1, 0x26]
_08039DEA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp11b_obj_free

	thumb_func_start objc_dp11b_pingpong
objc_dp11b_pingpong: @ 8039DF8
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x34]
	lsls r0, 24
	lsrs r5, r0, 24
	movs r1, 0x36
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _08039E10
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	b _08039E14
_08039E10:
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
_08039E14:
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	bl Sin
	ldr r2, =gUnknown_02020630
	lsls r1, r5, 4
	adds r1, r5
	lsls r1, 2
	adds r1, r2
	ldrh r2, [r4, 0x32]
	adds r0, r2
	strh r0, [r1, 0x26]
	ldrh r0, [r4, 0x30]
	ldrh r1, [r4, 0x2E]
	adds r0, r1
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r4, 0x2E]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end objc_dp11b_pingpong

	thumb_func_start sub_8039E44
sub_8039E44: @ 8039E44
	push {lr}
	adds r2, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08039E5C
	ldrh r1, [r2, 0x32]
	adds r0, r2, 0
	bl sub_806EEB4
_08039E5C:
	pop {r0}
	bx r0
	thumb_func_end sub_8039E44

	thumb_func_start sub_8039E60
sub_8039E60: @ 8039E60
	push {r4,lr}
	adds r4, r0, 0
	bl sub_8039E9C
	adds r0, r4, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08039E7A
	ldr r0, =nullsub_19
	str r0, [r4, 0x1C]
_08039E7A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039E60

	thumb_func_start sub_8039E84
sub_8039E84: @ 8039E84
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x1
	bl StartObjectImageAnim
	ldr r0, =sub_8039E60
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039E84

	thumb_func_start sub_8039E9C
sub_8039E9C: @ 8039E9C
	push {lr}
	adds r2, r0, 0
	adds r0, 0x2C
	ldrb r1, [r0]
	movs r0, 0x3F
	ands r0, r1
	cmp r0, 0
	bne _08039EBE
	ldr r1, =gUnknown_0831ACE0
	adds r0, r2, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r2, 0
	adds r0, 0x28
	strb r1, [r0]
_08039EBE:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039E9C

	thumb_func_start nullsub_20
nullsub_20: @ 8039EC8
	bx lr
	thumb_func_end nullsub_20

	thumb_func_start sub_8039ECC
sub_8039ECC: @ 8039ECC
	push {lr}
	bl sub_8039F40
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x1]
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_8012FAC
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039ECC

	thumb_func_start sub_8039EF0
sub_8039EF0: @ 8039EF0
	push {r4,r5,lr}
	ldr r0, =gUnknown_03005D04
	ldr r0, [r0]
	bl _call_via_r0
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r0, 0
	beq _08039F2A
	ldr r5, =gUnknown_03005D60
	adds r4, r1, 0
_08039F0C:
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08039F0C
_08039F2A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039EF0

	thumb_func_start sub_8039F40
sub_8039F40: @ 8039F40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	bl sub_803D580
	bl sub_803D6A0
	movs r2, 0
	movs r3, 0
	ldr r0, =gUnknown_02024260
	mov r10, r0
	ldr r1, =gUnknown_02024258
	mov r9, r1
	ldr r0, =gUnknown_02024250
	mov r8, r0
	ldr r1, =gUnknown_02024248
	mov r12, r1
	ldr r5, =gUnknown_020242BC
	movs r4, 0
	ldr r7, =gUnknown_02024240
	ldr r6, =gUnknown_02024268
_08039F70:
	ldr r0, =gUnknown_020242AC
	adds r0, r4, r0
	str r3, [r0]
	movs r1, 0
_08039F78:
	adds r0, r5, r1
	strb r3, [r0]
	adds r1, 0x1
	cmp r1, 0x1B
	bls _08039F78
	movs r0, 0x2
	strb r0, [r5, 0x16]
	ldr r1, =gUnknown_02024284
	adds r0, r2, r1
	strb r3, [r0]
	mov r0, r12
	strh r3, [r0]
	mov r1, r8
	strh r3, [r1]
	mov r0, r9
	strh r3, [r0]
	mov r1, r10
	strh r3, [r1]
	ldr r0, =gUnknown_02024270
	adds r1, r2, r0
	movs r0, 0xFF
	strb r0, [r1]
	strh r3, [r6]
	strh r3, [r7]
	ldr r1, =gUnknown_020244A8
	ldr r0, [r1]
	ldr r0, [r0, 0x4]
	adds r0, r4
	str r3, [r0]
	ldr r1, =gUnknown_02024230
	adds r0, r4, r1
	str r3, [r0]
	movs r0, 0x2
	add r10, r0
	add r9, r0
	add r8, r0
	add r12, r0
	adds r5, 0x1C
	adds r4, 0x4
	adds r7, 0x2
	adds r6, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _08039F70
	movs r5, 0
	ldr r3, =gUnknown_02024294
	ldr r4, =gUnknown_0202428E
	movs r2, 0x1
_08039FD8:
	strh r5, [r4]
	movs r1, 0
_08039FDC:
	adds r0, r3, r1
	strb r5, [r0]
	adds r1, 0x1
	cmp r1, 0xB
	bls _08039FDC
	adds r3, 0xC
	adds r4, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08039FD8
	movs r1, 0
	ldr r2, =gUnknown_0202420B
	strb r1, [r2]
	ldr r0, =gEnemyMonIndex
	strb r1, [r0]
	ldr r2, =gBattleWeather
	strh r1, [r2]
	ldr r1, =gUnknown_020243D0
	movs r2, 0
	movs r3, 0
_0803A004:
	adds r0, r1, r2
	strb r3, [r0]
	adds r2, 0x1
	cmp r2, 0x2B
	bls _0803A004
	ldr r2, =gUnknown_02024280
	movs r0, 0
	str r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _0803A090
	movs r0, 0x2
	ands r1, r0
	cmp r1, 0
	bne _0803A0AE
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r1, [r0, 0x15]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0803A0AE
	movs r0, 0x80
	b _0803A0AC
	.pool
_0803A090:
	ldr r0, =0x02000002
	ands r1, r0
	cmp r1, 0
	bne _0803A0AE
	bl sub_8185FB8
	lsls r0, 24
	cmp r0, 0
	beq _0803A0AE
	ldr r1, =gUnknown_02024280
	ldr r0, [r1]
	movs r1, 0x80
	orrs r0, r1
	ldr r2, =gUnknown_02024280
_0803A0AC:
	str r0, [r2]
_0803A0AE:
	ldr r3, =gUnknown_02024474
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	lsls r0, 30
	lsrs r0, 31
	movs r1, 0
	strb r0, [r3, 0x1D]
	ldr r0, =gUnknown_02024212
	strb r1, [r0]
	ldr r0, =gUnknown_0202433A
	strb r1, [r0]
	ldr r0, =gUnknown_02024068
	str r1, [r0]
	ldr r0, =gUnknown_0202432E
	movs r2, 0
	strh r1, [r0]
	ldr r1, =gUnknown_020244A8
	ldr r0, [r1]
	ldr r0, [r0, 0x8]
	adds r0, 0x20
	strb r2, [r0]
	ldr r0, [r1]
	ldr r0, [r0, 0xC]
	adds r0, 0x20
	strb r2, [r0]
	ldr r5, =gUnknown_0202432C
	ldr r6, =gBattleMoveDamage
	ldr r7, =gUnknown_020243FC
	ldr r0, =gUnknown_03005D54
	mov r8, r0
	ldr r1, =gUnknown_02024210
	mov r9, r1
	ldr r2, =gEnemyParty
	mov r10, r2
	ldr r1, =gUnknown_02024332
	movs r2, 0
	adds r0, r1, 0x7
_0803A0FA:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _0803A0FA
	movs r4, 0
	strh r4, [r5]
	movs r0, 0
	str r0, [r6]
	strh r0, [r7]
	strb r4, [r3, 0x18]
	strb r4, [r3, 0x19]
	mov r0, r8
	strb r4, [r0]
	mov r1, r9
	strb r4, [r1]
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	adds r0, 0x6C
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, 0x79
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, 0x7A
	strb r4, [r0]
	mov r0, r10
	movs r1, 0xB
	bl GetMonData
	ldr r6, [r5]
	adds r6, 0x7C
	ldr r2, =gBaseStats
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r1, [r1, 0x8]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =0x000004fb
	bl __divsi3
	strb r0, [r6]
	ldr r0, [r5]
	adds r0, 0x7B
	movs r1, 0x3
	strb r1, [r0]
	ldr r0, [r5]
	strb r4, [r0, 0x12]
	ldr r0, [r5]
	adds r0, 0x4A
	movs r1, 0x1
	strb r1, [r0]
	movs r2, 0
	movs r1, 0
	adds r6, r5, 0
_0803A16A:
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0x98
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xB8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xC8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xD0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xE0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xE8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xF0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, 0xF8
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x7
	ble _0803A16A
	movs r2, 0
	ldr r4, =gUnknown_0202449C
	movs r3, 0xA5
	lsls r3, 2
	movs r1, 0x6
_0803A1BA:
	ldr r0, [r4]
	adds r0, r2, r0
	adds r0, r3
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x3
	ble _0803A1BA
	ldr r0, [r6]
	adds r0, 0xDF
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, 0x92
	strb r1, [r0]
	bl Random
	ldr r1, =gUnknown_02024330
	strh r0, [r1]
	ldr r1, =gUnknown_03005D10
	movs r2, 0
	movs r3, 0
_0803A1E4:
	adds r0, r1, r2
	strb r3, [r0]
	adds r2, 0x1
	cmp r2, 0x43
	bls _0803A1E4
	ldr r0, =gEnemyParty
	bl sub_806EBA4
	ldr r3, =gUnknown_03005D10
	movs r1, 0x1
	ands r1, r0
	lsls r1, 6
	ldrb r2, [r3, 0x5]
	movs r0, 0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, =0x000002a1
	adds r0, r2
	strb r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8039F40

	thumb_func_start sub_803A284
sub_803A284: @ 803A284
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, =gUnknown_020242BC
	ldr r5, =gUnknown_02024064
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r1, sp
	adds r0, r4
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, =gBattleMoves
	ldr r3, =gUnknown_020241EA
	ldrh r1, [r3]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	mov r12, r4
	mov r9, r5
	ldr r6, =gUnknown_020242AC
	mov r10, r6
	cmp r0, 0x7F
	beq _0803A35C
	movs r5, 0
	mov r6, r9
	movs r4, 0x58
	ldr r2, =gBattleMons
	adds r2, 0x18
	movs r1, 0x6
_0803A2D4:
	ldrb r0, [r6]
	muls r0, r4
	adds r0, r5, r0
	adds r0, r2
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _0803A2D4
	movs r5, 0
	ldr r7, =gUnknown_0202406C
	ldrb r7, [r7]
	cmp r5, r7
	bge _0803A348
	ldr r0, =gUnknown_020240D4
	mov r8, r0
	ldr r4, =gUnknown_020242BC
	ldr r3, =gUnknown_020242AC
_0803A2F6:
	movs r0, 0x58
	muls r0, r5
	mov r1, r8
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 19
	ands r0, r1
	cmp r0, 0
	beq _0803A31A
	ldrb r0, [r4, 0x14]
	ldr r6, =gUnknown_02024064
	ldrb r6, [r6]
	cmp r0, r6
	bne _0803A31A
	ldr r0, =0xfbffffff
	ands r1, r0
	str r1, [r2]
_0803A31A:
	ldr r1, [r3]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _0803A33A
	ldrb r0, [r4, 0x15]
	ldr r7, =gUnknown_02024064
	ldrb r7, [r7]
	cmp r0, r7
	bne _0803A33A
	movs r0, 0x19
	negs r0, r0
	ands r1, r0
	str r1, [r3]
	movs r0, 0
	strb r0, [r4, 0x15]
_0803A33A:
	adds r4, 0x1C
	adds r3, 0x4
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803A2F6
_0803A348:
	ldr r1, =gUnknown_020241EA
	ldrh r0, [r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	ldr r2, =gBattleMoves
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0x7F
	bne _0803A414
_0803A35C:
	mov r3, r9
	ldrb r1, [r3]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	ldr r0, =gBattleMons
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0x15100007
	ands r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	lsls r1, 2
	add r1, r10
	ldr r0, [r1]
	ldr r2, =0x0003043f
	ands r0, r2
	str r0, [r1]
	movs r5, 0
	ldr r6, =gUnknown_0202406C
	ldrb r6, [r6]
	cmp r5, r6
	bge _0803A430
	mov r7, r9
	movs r6, 0
_0803A390:
	ldrb r0, [r7]
	bl battle_side_get_owner
	adds r4, r0, 0
	lsls r0, r5, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803A3D0
	ldr r1, =gUnknown_020242AC
	lsls r0, r5, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _0803A3D0
	ldr r0, =gUnknown_020242BC
	adds r0, r6, r0
	ldrb r0, [r0, 0x15]
	ldrb r3, [r7]
	cmp r0, r3
	bne _0803A3D0
	movs r0, 0x19
	negs r0, r0
	ands r1, r0
	movs r0, 0x10
	orrs r1, r0
	str r1, [r2]
_0803A3D0:
	adds r6, 0x1C
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803A390
	ldr r6, =gUnknown_020242BC
	mov r12, r6
	ldr r7, =gUnknown_02024064
	mov r9, r7
	b _0803A430
	.pool
_0803A414:
	mov r0, r9
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gBattleMons
	adds r1, 0x50
	adds r0, r1
	movs r1, 0
	str r1, [r0]
	mov r2, r9
	ldrb r0, [r2]
	lsls r0, 2
	add r0, r10
	str r1, [r0]
_0803A430:
	movs r5, 0
	ldr r3, =gUnknown_0202449C
	mov r8, r3
	ldr r6, =gUnknown_020244AC
	mov r10, r6
	ldr r7, =gUnknown_0202406C
	ldrb r7, [r7]
	cmp r5, r7
	bge _0803A490
	ldr r3, =gUnknown_020240D4
	ldr r7, =gBitTable
	ldr r6, =gUnknown_02024064
_0803A448:
	movs r0, 0x58
	muls r0, r5
	adds r4, r0, r3
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r7
	ldr r0, [r0]
	lsls r2, r0, 16
	ldr r1, [r4]
	adds r0, r1, 0
	ands r0, r2
	cmp r0, 0
	beq _0803A466
	bics r1, r2
	str r1, [r4]
_0803A466:
	ldr r1, [r4]
	movs r0, 0xE0
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	beq _0803A486
	mov r2, r8
	ldr r0, [r2]
	adds r0, r5, r0
	ldrb r0, [r0, 0x14]
	ldrb r2, [r6]
	cmp r0, r2
	bne _0803A486
	ldr r0, =0xffff1fff
	ands r1, r0
	str r1, [r4]
_0803A486:
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803A448
_0803A490:
	mov r1, r9
	ldrb r0, [r1]
	add r0, r10
	movs r1, 0
	strb r1, [r0]
	mov r2, r9
	ldrb r0, [r2]
	ldr r3, =gUnknown_020244B0
	adds r0, r3
	strb r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r6, r12
	adds r1, r0, r6
	movs r5, 0
	movs r2, 0
_0803A4B4:
	adds r0, r1, r5
	strb r2, [r0]
	adds r5, 0x1
	cmp r5, 0x1B
	bls _0803A4B4
	ldr r7, =gUnknown_020241EA
	ldrh r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	ldr r0, =gBattleMoves
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x7F
	bne _0803A540
	mov r2, r9
	ldrb r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	mov r1, sp
	ldrb r1, [r1, 0xA]
	strb r1, [r0, 0xA]
	ldrb r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	mov r1, sp
	ldrb r1, [r1, 0x15]
	strb r1, [r0, 0x15]
	ldrb r0, [r2]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	mov r0, sp
	ldrb r2, [r0, 0xF]
	lsls r2, 28
	movs r4, 0xF
	lsrs r2, 28
	ldrb r3, [r1, 0xF]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xF]
	mov r3, r9
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	mov r1, sp
	ldrb r1, [r1, 0xF]
	lsrs r1, 4
	lsls r1, 4
	ldrb r2, [r0, 0xF]
	ands r4, r2
	orrs r4, r1
	strb r4, [r0, 0xF]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	mov r1, sp
	ldrb r1, [r1, 0x14]
	strb r1, [r0, 0x14]
_0803A540:
	movs r0, 0
	ldr r6, =gBattleMoveFlags
	strb r0, [r6]
	mov r7, r9
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	movs r4, 0
	movs r1, 0x2
	strb r1, [r0, 0x16]
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	mov r0, sp
	ldrb r0, [r0, 0x18]
	movs r2, 0x2
	ands r2, r0
	ldrb r3, [r1, 0x18]
	movs r0, 0x3
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x18]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, =gUnknown_02024248
	adds r0, r1
	movs r2, 0
	strh r4, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r3, =gUnknown_02024250
	adds r0, r3
	strh r4, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r6, =gUnknown_02024258
	adds r0, r6
	strh r4, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r7, =gUnknown_02024260
	adds r0, r7
	strh r4, [r0]
	mov r1, r9
	ldrb r0, [r1]
	lsls r0, 1
	ldr r3, =gUnknown_02024240
	adds r0, r3
	strh r4, [r0]
	ldrb r0, [r1]
	ldr r6, =gUnknown_02024270
	adds r0, r6
	movs r1, 0xFF
	strb r1, [r0]
	mov r7, r9
	ldrb r0, [r7]
	mov r3, r8
	ldr r1, [r3]
	lsls r0, 1
	adds r0, r1
	adds r0, 0x98
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 1
	adds r0, r1
	adds r0, 0x99
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE0
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE1
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE2
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE3
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE4
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE5
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE6
	strb r2, [r0]
	ldrb r0, [r7]
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE7
	strb r2, [r0]
	ldr r1, [r3]
	adds r1, 0x92
	ldrb r0, [r7]
	lsls r0, 2
	ldr r6, =gBitTable
	adds r0, r6
	ldr r2, [r0]
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	movs r5, 0
	ldr r7, =gUnknown_0202406C
	ldrb r7, [r7]
	cmp r5, r7
	bge _0803A6B4
	mov r3, r9
	mov r7, r8
	movs r6, 0
_0803A656:
	ldrb r0, [r3]
	cmp r5, r0
	beq _0803A68C
	lsls r0, r5, 24
	lsrs r0, 24
	str r3, [sp, 0x1C]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r3, [sp, 0x1C]
	ldrb r0, [r3]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	ldr r3, [sp, 0x1C]
	cmp r4, r0
	beq _0803A68C
	ldr r0, [r7]
	lsls r1, r5, 1
	adds r0, r1, r0
	adds r0, 0x98
	strb r6, [r0]
	ldr r0, [r7]
	adds r1, r0
	adds r1, 0x99
	strb r6, [r1]
_0803A68C:
	ldrb r0, [r3]
	ldr r1, [r7]
	lsls r0, 1
	lsls r2, r5, 3
	adds r0, r2
	adds r0, r1
	adds r0, 0xE0
	strb r6, [r0]
	ldrb r0, [r3]
	ldr r1, [r7]
	lsls r0, 1
	adds r0, r2
	adds r0, r1
	adds r0, 0xE1
	strb r6, [r0]
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803A656
_0803A6B4:
	mov r1, r9
	ldrb r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	movs r2, 0
	strb r2, [r0]
	mov r3, r9
	ldrb r0, [r3]
	mov r6, r8
	ldr r1, [r6]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	strb r2, [r0]
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	ldrb r0, [r3]
	lsls r0, 2
	adds r1, r0
	movs r2, 0
	str r2, [r1]
	ldr r0, =gUnknown_020241EA
	strh r2, [r0]
	ldr r0, [r6]
	adds r0, 0xDA
	movs r1, 0xFF
	strb r1, [r0]
	ldrb r0, [r3]
	bl sub_81310F0
	mov r7, r9
	ldrb r0, [r7]
	bl sub_8131130
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803A284

	thumb_func_start sub_803A75C
sub_803A75C: @ 803A75C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r5, 0
	ldr r6, =gBattleMons
	ldr r0, =gUnknown_020242AC
	mov r8, r0
	ldr r1, =gUnknown_0202449C
	mov r12, r1
	ldr r2, =gUnknown_020244AC
	mov r9, r2
	ldr r3, =gUnknown_020244B0
	mov r10, r3
	ldr r7, =gUnknown_0202433C
	ldr r4, =gUnknown_02024064
	movs r3, 0x58
	adds r2, r6, 0
	adds r2, 0x18
	movs r1, 0x6
_0803A788:
	ldrb r0, [r4]
	muls r0, r3
	adds r0, r5, r0
	adds r0, r2
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _0803A788
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r2, r6, 0
	adds r2, 0x50
	adds r0, r2
	movs r1, 0
	str r1, [r0]
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 2
	add r0, r8
	str r1, [r0]
	movs r5, 0
	ldr r6, =gUnknown_0202406C
	ldrb r6, [r6]
	cmp r5, r6
	bge _0803A830
	adds r3, r2, 0
	movs r4, 0
	ldr r0, =gBitTable
	mov r8, r0
_0803A7C6:
	ldr r1, [r3]
	movs r0, 0x80
	lsls r0, 19
	ands r0, r1
	cmp r0, 0
	beq _0803A7E6
	ldr r2, =gUnknown_020242BC
	adds r0, r4, r2
	ldrb r0, [r0, 0x14]
	ldr r6, =gUnknown_02024064
	ldrb r6, [r6]
	cmp r0, r6
	bne _0803A7E6
	ldr r0, =0xfbffffff
	ands r1, r0
	str r1, [r3]
_0803A7E6:
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	lsls r0, 2
	add r0, r8
	ldr r0, [r0]
	lsls r2, r0, 16
	ldr r1, [r3]
	adds r0, r1, 0
	ands r0, r2
	cmp r0, 0
	beq _0803A800
	bics r1, r2
	str r1, [r3]
_0803A800:
	ldr r1, [r3]
	movs r0, 0xE0
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	beq _0803A822
	mov r2, r12
	ldr r0, [r2]
	adds r0, r5, r0
	ldrb r0, [r0, 0x14]
	ldr r6, =gUnknown_02024064
	ldrb r6, [r6]
	cmp r0, r6
	bne _0803A822
	ldr r0, =0xffff1fff
	ands r1, r0
	str r1, [r3]
_0803A822:
	adds r3, 0x58
	adds r4, 0x1C
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803A7C6
_0803A830:
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	add r0, r9
	movs r1, 0
	strb r1, [r0]
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	add r0, r10
	strb r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r3, =gUnknown_020242BC
	adds r1, r0, r3
	movs r5, 0
	movs r2, 0
_0803A852:
	adds r0, r1, r5
	strb r2, [r0]
	adds r5, 0x1
	cmp r5, 0x1B
	bls _0803A852
	ldr r6, =gUnknown_02024064
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	mov r9, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r3, 0x3
	negs r3, r3
	mov r8, r3
	mov r0, r8
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r6, 0x5
	negs r6, r6
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	subs r3, 0x6
	mov r10, r3
	mov r0, r10
	ands r0, r2
	strb r0, [r1]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r2, =gUnknown_02024064
	ldrb r1, [r2]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r5, 0x21
	negs r5, r5
	adds r0, r5, 0
	ands r0, r2
	strb r0, [r1]
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r4, 0x41
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r3, 0x7F
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1, 0x1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_02024064
	ldrb r1, [r2]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1, 0x1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1, 0x1]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_02024064
	ldrb r1, [r2]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x1]
	ands r5, r1
	strb r5, [r0, 0x1]
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x1]
	ands r4, r1
	strb r4, [r0, 0x1]
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x1]
	ands r3, r1
	strb r3, [r0, 0x1]
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x2]
	mov r3, r9
	ands r3, r1
	strb r3, [r0, 0x2]
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x2]
	mov r2, r8
	ands r2, r1
	strb r2, [r0, 0x2]
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x2]
	ands r6, r1
	strb r6, [r0, 0x2]
	ldrb r0, [r3]
	lsls r0, 4
	adds r0, r7
	ldrb r1, [r0, 0x2]
	mov r6, r10
	ands r6, r1
	strb r6, [r0, 0x2]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_020242BC
	adds r0, r1
	movs r2, 0
	movs r1, 0x2
	strb r1, [r0, 0x16]
	ldrb r0, [r3]
	lsls r0, 1
	ldr r3, =gUnknown_02024248
	adds r0, r3
	movs r3, 0
	strh r2, [r0]
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	lsls r0, 1
	ldr r1, =gUnknown_02024250
	adds r0, r1
	strh r2, [r0]
	ldrb r0, [r6]
	lsls r0, 1
	ldr r6, =gUnknown_02024258
	adds r0, r6
	strh r2, [r0]
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	lsls r0, 1
	ldr r6, =gUnknown_02024260
	adds r0, r6
	strh r2, [r0]
	ldrb r0, [r1]
	lsls r0, 1
	ldr r1, =gUnknown_02024240
	adds r0, r1
	strh r2, [r0]
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	ldr r6, =gUnknown_02024270
	adds r0, r6
	movs r1, 0xFF
	strb r1, [r0]
	ldrb r0, [r2]
	mov r2, r12
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	strb r3, [r0]
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0x98
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0x99
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE0
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE1
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE2
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE3
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE4
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE5
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE6
	strb r3, [r0]
	ldrb r0, [r6]
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	adds r0, 0xE7
	strb r3, [r0]
	ldr r1, [r2]
	adds r1, 0x92
	ldrb r0, [r6]
	lsls r0, 2
	ldr r2, =gBitTable
	adds r0, r2
	ldr r2, [r0]
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	movs r5, 0
	ldr r3, =gUnknown_0202406C
	ldrb r3, [r3]
	cmp r5, r3
	bge _0803AB02
	adds r3, r6, 0
	mov r7, r12
	movs r6, 0
_0803AAA4:
	ldrb r0, [r3]
	cmp r5, r0
	beq _0803AADA
	lsls r0, r5, 24
	lsrs r0, 24
	str r3, [sp]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r3, [sp]
	ldrb r0, [r3]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	ldr r3, [sp]
	cmp r4, r0
	beq _0803AADA
	ldr r0, [r7]
	lsls r1, r5, 1
	adds r0, r1, r0
	adds r0, 0x98
	strb r6, [r0]
	ldr r0, [r7]
	adds r1, r0
	adds r1, 0x99
	strb r6, [r1]
_0803AADA:
	ldrb r0, [r3]
	ldr r1, [r7]
	lsls r0, 1
	lsls r2, r5, 3
	adds r0, r2
	adds r0, r1
	adds r0, 0xE0
	strb r6, [r0]
	ldrb r0, [r3]
	ldr r1, [r7]
	lsls r0, 1
	adds r0, r2
	adds r0, r1
	adds r0, 0xE1
	strb r6, [r0]
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803AAA4
_0803AB02:
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r1, [r0, 0x4]
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	lsls r0, 2
	adds r1, r0
	movs r0, 0
	str r0, [r1]
	ldr r4, =gBattleMons
	ldrb r0, [r2]
	movs r3, 0x58
	adds r2, r0, 0
	muls r2, r3
	b _0803AB6C
	.pool
_0803AB6C:
	adds r2, r4
	ldr r5, =gBaseStats
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x6]
	adds r2, 0x21
	strb r0, [r2]
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r3
	adds r1, r4
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x7]
	adds r1, 0x22
	strb r0, [r1]
	ldrb r0, [r6]
	bl sub_81310F0
	ldrb r0, [r6]
	bl sub_8131130
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803A75C

	thumb_func_start bc_8012FAC
bc_8012FAC: @ 803ABC0
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5]
	cmp r0, 0
	beq _0803ABD4
	cmp r0, 0x1
	beq _0803ABF8
	b _0803AC2E
	.pool
_0803ABD4:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r5, 0x1]
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0803AC2E
	.pool
_0803ABF8:
	ldr r0, =gUnknown_02024068
	ldr r2, [r0]
	cmp r2, 0
	bne _0803AC2E
	ldrb r0, [r5, 0x1]
	adds r0, 0x1
	strb r0, [r5, 0x1]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0803AC2C
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_load_battlefield
	str r0, [r1]
	b _0803AC2E
	.pool
_0803AC2C:
	strb r2, [r5]
_0803AC2E:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end bc_8012FAC

	thumb_func_start bc_load_battlefield
bc_load_battlefield: @ 803AC34
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r5, [r0]
	cmp r5, 0
	bne _0803AC64
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gUnknown_02022FF0
	ldrb r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x2E_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803AC84
	str r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r5, [r0]
	strb r5, [r0, 0x1]
_0803AC64:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_load_battlefield

	thumb_func_start sub_803AC84
sub_803AC84: @ 803AC84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_02024068
	ldr r1, [r0]
	cmp r1, 0
	beq _0803AC98
	b _0803AF4E
_0803AC98:
	ldr r2, =gUnknown_02024064
	strb r1, [r2]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0803ACA6
	b _0803AF48
_0803ACA6:
	movs r7, 0x58
	ldr r0, =gBattleMons
	mov r8, r0
	mov r9, r2
	movs r1, 0x48
	add r1, r8
	mov r10, r1
_0803ACB4:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0803ACFC
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803ACFC
	ldrb r0, [r4]
	muls r0, r7
	mov r2, r8
	adds r3, r0, r2
	movs r2, 0
	movs r1, 0
_0803ACDA:
	adds r0, r3, r2
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _0803ACDA
	b _0803ADCA
	.pool
_0803ACFC:
	mov r1, r9
	ldrb r0, [r1]
	muls r0, r7
	mov r2, r8
	adds r3, r0, r2
	movs r2, 0
	ldr r6, =gBaseStats
	ldr r5, =gUnknown_02023864
	ldr r4, =gUnknown_02024064
_0803AD0E:
	adds r0, r3, r2
	ldrb r1, [r4]
	lsls r1, 9
	adds r1, 0x4
	adds r1, r2, r1
	adds r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _0803AD0E
	mov r1, r9
	ldrb r0, [r1]
	adds r2, r0, 0
	muls r2, r7
	add r2, r8
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x6]
	adds r2, 0x21
	strb r0, [r2]
	mov r2, r9
	ldrb r0, [r2]
	adds r2, r0, 0
	muls r2, r7
	add r2, r8
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x7]
	adds r2, 0x22
	strb r0, [r2]
	mov r1, r9
	ldrb r0, [r1]
	adds r1, r0, 0
	muls r1, r7
	add r1, r8
	ldrh r0, [r1]
	ldrb r1, [r1, 0x17]
	lsrs r1, 7
	bl sub_806B694
	mov r2, r9
	ldrb r1, [r2]
	muls r1, r7
	add r1, r8
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r2]
	bl battle_side_get_owner
	ldr r1, =gUnknown_0202449C
	lsls r0, 24
	lsrs r0, 23
	adds r0, 0xA8
	ldr r1, [r1]
	adds r1, r0
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r7
	add r0, r8
	ldrh r0, [r0, 0x28]
	strh r0, [r1]
	movs r2, 0
	ldr r4, =gUnknown_02024064
	movs r5, 0x58
	ldr r1, =gUnknown_0202409C
	adds r6, r4, 0
	movs r0, 0x18
	negs r0, r0
	adds r0, r1
	mov r12, r0
	movs r3, 0x6
_0803ADAA:
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r2, r0
	adds r0, r1
	strb r3, [r0]
	adds r2, 0x1
	cmp r2, 0x7
	ble _0803ADAA
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r7
	mov r0, r12
	adds r0, 0x50
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_0803ADCA:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _0803ADE4
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803ADE4:
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0803AE60
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803AE0A
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803AE0A:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803AEC0
	ldr r0, [r5]
	ldr r1, =0x063f0902
	ands r0, r1
	cmp r0, 0
	bne _0803AEC0
	ldrb r0, [r4]
	muls r0, r7
	add r0, r8
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r4]
	muls r1, r7
	add r1, r10
	ldr r2, [r1]
	movs r1, 0x2
	bl SetPokedexFlag
	b _0803AEC0
	.pool
_0803AE60:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803AEC0
	ldr r0, [r5]
	ldr r1, =0x063f0902
	ands r0, r1
	cmp r0, 0
	bne _0803AE96
	ldrb r0, [r4]
	muls r0, r7
	add r0, r8
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r4]
	muls r1, r7
	add r1, r10
	ldr r2, [r1]
	movs r1, 0x2
	bl SetPokedexFlag
_0803AE96:
	movs r0, 0
	bl dp01_build_cmdbuf_x04_4_4_4
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	ldr r1, =gUnknown_03005D10
	strh r0, [r1, 0x20]
_0803AEC0:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803AEF6
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	beq _0803AEEA
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bne _0803AEF6
_0803AEEA:
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803AEF6:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _0803AF20
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bne _0803AF20
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803AF20:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0803AF32
	bl sub_81A56B4
_0803AF32:
	mov r1, r9
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0803AF48
	b _0803ACB4
_0803AF48:
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_801333C
	str r0, [r1]
_0803AF4E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803AC84

	thumb_func_start bc_801333C
bc_801333C: @ 803AF80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x30
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0803AF92
	b _0803B10C
_0803AF92:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0803AFA0
	b _0803B0AC
_0803AFA0:
	movs r7, 0
	add r0, sp, 0x4
	mov r8, r0
	mov r6, r8
	mov r5, sp
_0803AFAA:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0803AFD0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _0803AFE8
_0803AFD0:
	ldr r0, =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0803AFFA
	.pool
_0803AFE8:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0803AFFA:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _0803AFAA
	movs r0, 0x1
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	mov r1, sp
	movs r2, 0x80
	bl dp01_build_cmdbuf_x30_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r7, 0
	mov r6, r8
	mov r5, sp
_0803B026:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0803B04C
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _0803B060
_0803B04C:
	ldr r0, =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0803B072
	.pool
_0803B060:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0803B072:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _0803B026
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	mov r1, sp
	movs r2, 0x80
	bl dp01_build_cmdbuf_x30_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_battle_begin_message
	b _0803B10A
	.pool
_0803B0AC:
	movs r7, 0
	add r6, sp, 0x4
	mov r5, sp
_0803B0B2:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0803B0D8
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _0803B0E8
_0803B0D8:
	ldr r0, =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0803B0FA
	.pool
_0803B0E8:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0803B0FA:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _0803B0B2
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_8013568
_0803B10A:
	str r0, [r1]
_0803B10C:
	add sp, 0x30
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_801333C

	thumb_func_start bc_battle_begin_message
bc_battle_begin_message: @ 803B120
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B142
	movs r0, 0x1
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldrb r1, [r1]
	movs r0, 0
	bl b_std_message
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B180
	str r0, [r1]
_0803B142:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_battle_begin_message

	thumb_func_start bc_8013568
bc_8013568: @ 803B158
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B170
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B3CC
	str r0, [r1]
	movs r0, 0
	movs r1, 0
	bl b_std_message
_0803B170:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_8013568

	thumb_func_start sub_803B180
sub_803B180: @ 803B180
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B1D0
	ldr r0, =gBattleTypeFlags
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r2
	cmp r0, 0
	beq _0803B1B8
	movs r0, 0x80
	lsls r0, 18
	ands r0, r2
	cmp r0, 0
	beq _0803B1B8
	movs r1, 0x80
	lsls r1, 24
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	b _0803B1BA
	.pool
_0803B1B8:
	movs r0, 0x1
_0803B1BA:
	bl battle_get_side_with_given_state
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	bl b_std_message
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B25C
	str r0, [r1]
_0803B1D0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B180

	thumb_func_start sub_803B1DC
sub_803B1DC: @ 803B1DC
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	beq _0803B1FC
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0803B1FC
	movs r5, 0x2
	cmp r1, 0
	bge _0803B1FE
_0803B1FC:
	movs r5, 0x3
_0803B1FE:
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803B23A
	adds r4, r1, 0
_0803B20E:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	bne _0803B228
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803B228:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B20E
_0803B23A:
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_801362C
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B1DC

	thumb_func_start sub_803B25C
sub_803B25C: @ 803B25C
	push {r4-r6,lr}
	ldr r0, =gBattleTypeFlags
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r2
	cmp r0, 0
	beq _0803B298
	movs r0, 0x80
	lsls r0, 18
	ands r0, r2
	cmp r0, 0
	beq _0803B298
	movs r1, 0x80
	lsls r1, 24
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, 31
	b _0803B29A
	.pool
_0803B288:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B1DC
	b _0803B2F0
	.pool
_0803B298:
	movs r5, 0x1
_0803B29A:
	ldr r0, =gUnknown_02024068
	ldr r2, [r0]
	cmp r2, 0
	bne _0803B2F2
	ldr r0, =gUnknown_02024064
	strb r2, [r0]
	ldr r1, =gUnknown_0202406C
	adds r4, r0, 0
	ldrb r1, [r1]
	cmp r2, r1
	bcs _0803B2EC
	adds r6, r4, 0
_0803B2B2:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	bne _0803B2D8
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x00008040
	ands r0, r1
	cmp r0, 0
	bne _0803B288
_0803B2D8:
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldr r4, =gUnknown_02024064
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B2B2
_0803B2EC:
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_801362C
_0803B2F0:
	str r0, [r1]
_0803B2F2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B25C

	thumb_func_start bc_801362C
bc_801362C: @ 803B314
	push {r4-r7,lr}
	ldr r0, =gUnknown_02024068
	ldr r1, [r0]
	cmp r1, 0
	bne _0803B384
	ldr r2, =gUnknown_02024064
	strb r1, [r2]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0803B37E
	adds r4, r2, 0
	ldr r6, =gBattleMons
	movs r5, 0x58
	adds r7, r6, 0
	adds r7, 0x48
_0803B334:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803B36C
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x063f0902
	ands r0, r1
	cmp r0, 0
	bne _0803B36C
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r4]
	muls r1, r5
	adds r1, r7
	ldr r2, [r1]
	movs r1, 0x2
	bl SetPokedexFlag
_0803B36C:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B334
_0803B37E:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B3CC
	str r0, [r1]
_0803B384:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_801362C

	thumb_func_start sub_803B3AC
sub_803B3AC: @ 803B3AC
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B3BC
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B3CC
	str r0, [r1]
_0803B3BC:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B3AC

	thumb_func_start sub_803B3CC
sub_803B3CC: @ 803B3CC
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B418
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r2
	cmp r0, 0
	beq _0803B3F4
	movs r0, 0x80
	lsls r0, 18
	ands r0, r2
	cmp r0, 0
	beq _0803B3F4
	movs r3, 0x1
	cmp r2, 0
	bge _0803B3F6
_0803B3F4:
	movs r3, 0
_0803B3F6:
	ldr r0, [r1]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0803B412
	adds r0, r3, 0
	bl battle_get_side_with_given_state
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	bl b_std_message
_0803B412:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B4C8
	str r0, [r1]
_0803B418:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B3CC

	thumb_func_start sub_803B42C
sub_803B42C: @ 803B42C
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	beq _0803B44C
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0803B44C
	movs r5, 0x3
	cmp r1, 0
	bge _0803B44E
_0803B44C:
	movs r5, 0x2
_0803B44E:
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803B48A
	adds r4, r1, 0
_0803B45E:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	bne _0803B478
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803B478:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B45E
_0803B48A:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0x4C
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, 0xD9
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, 0xD1
	lsls r2, 1
	adds r0, r2
	strb r1, [r0]
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B628
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B42C

	thumb_func_start sub_803B4C8
sub_803B4C8: @ 803B4C8
	push {r4-r6,lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	beq _0803B500
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0803B500
	movs r6, 0x1
	cmp r1, 0
	bge _0803B502
	b _0803B500
	.pool
_0803B4F0:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B42C
	b _0803B572
	.pool
_0803B500:
	movs r6, 0
_0803B502:
	ldr r0, =gUnknown_02024068
	ldr r2, [r0]
	cmp r2, 0
	bne _0803B574
	ldr r0, =gUnknown_02024064
	strb r2, [r0]
	ldr r1, =gUnknown_0202406C
	adds r4, r0, 0
	ldrb r1, [r1]
	cmp r2, r1
	bcs _0803B554
	adds r5, r4, 0
_0803B51A:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r6
	bne _0803B540
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0803B4F0
_0803B540:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldr r4, =gUnknown_02024064
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B51A
_0803B554:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0x4C
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, 0xD9
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, 0xD1
	lsls r2, 1
	adds r0, r2
	strb r1, [r0]
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B628
_0803B572:
	str r0, [r1]
_0803B574:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B4C8

	thumb_func_start sub_803B598
sub_803B598: @ 803B598
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r1, [r0]
	cmp r1, 0
	bne _0803B606
	ldr r2, =gUnknown_02024064
	strb r1, [r2]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0803B5E6
	adds r4, r2, 0
	ldr r5, =gUnknown_0202406E
_0803B5B2:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803B5D4
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	movs r2, 0
	bl dp01_build_cmdbuf_x05_a_b_c
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803B5D4:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B5B2
_0803B5E6:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0x4C
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, 0xD9
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, 0xD1
	lsls r2, 1
	adds r0, r2
	strb r1, [r0]
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B628
	str r0, [r1]
_0803B606:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B598

	thumb_func_start sub_803B628
sub_803B628: @ 803B628
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r0, 0
	mov r9, r0
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0803B642
	b _0803B8B2
_0803B642:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4C
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803B6C2
	movs r5, 0
	ldr r1, =gUnknown_0202406C
	mov r10, r1
	ldrb r3, [r1]
	cmp r5, r3
	bge _0803B668
	ldr r2, =gUnknown_0202407E
_0803B65C:
	adds r0, r5, r2
	strb r5, [r0]
	adds r5, 0x1
	ldrb r0, [r1]
	cmp r5, r0
	blt _0803B65C
_0803B668:
	movs r5, 0
	b _0803B6B8
	.pool
_0803B67C:
	adds r4, r5, 0x1
	mov r8, r4
	ldrb r1, [r1]
	cmp r8, r1
	bge _0803B6B6
	ldr r6, =gUnknown_0202407E
	ldr r1, =gUnknown_0202406C
	mov r10, r1
	lsls r7, r5, 24
_0803B68E:
	adds r0, r5, r6
	ldrb r0, [r0]
	adds r1, r4, r6
	ldrb r1, [r1]
	movs r2, 0x1
	bl b_first_side
	lsls r0, 24
	cmp r0, 0
	beq _0803B6AC
	lsls r1, r4, 24
	lsrs r1, 24
	lsrs r0, r7, 24
	bl sub_803CEDC
_0803B6AC:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803B68E
_0803B6B6:
	mov r5, r8
_0803B6B8:
	mov r1, r10
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _0803B67C
_0803B6C2:
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	movs r4, 0xD1
	lsls r4, 1
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803B6FC
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0xFF
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0803B6FC
	ldr r0, [r5]
	adds r0, r4
	movs r1, 0x1
	strb r1, [r0]
	b _0803B8B2
	.pool
_0803B6FC:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0x4C
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0803B756
	ldr r5, =gUnknown_0202407E
	adds r4, r2, 0
_0803B710:
	ldr r0, [r4]
	adds r0, 0x4C
	ldrb r0, [r0]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0803B736
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0803B736:
	ldr r1, [r4]
	adds r1, 0x4C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r3, r9
	cmp r3, 0
	beq _0803B748
	b _0803B8B2
_0803B748:
	ldr r0, [r4]
	adds r0, 0x4C
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B710
_0803B756:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _0803B770
	b _0803B8B2
_0803B770:
	str r0, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0803B786
	b _0803B8B2
_0803B786:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0xD9
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0803B7DA
	ldr r5, =gUnknown_0202407E
	adds r4, r2, 0
_0803B79A:
	ldr r0, [r4]
	adds r0, 0xD9
	ldrb r0, [r0]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	movs r2, 0
	bl berry_effects_maybe
	lsls r0, 24
	cmp r0, 0
	beq _0803B7BC
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0803B7BC:
	ldr r1, [r4]
	adds r1, 0xD9
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r0, r9
	cmp r0, 0
	bne _0803B8B2
	ldr r0, [r4]
	adds r0, 0xD9
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803B79A
_0803B7DA:
	movs r5, 0
	ldr r1, =gUnknown_0202449C
	mov r8, r1
	movs r7, 0x6
	ldr r6, =gUnknown_0202421C
	ldr r2, =gUnknown_02024274
	movs r4, 0xFF
	movs r3, 0
_0803B7EA:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r5, r0
	adds r0, 0x5C
	strb r7, [r0]
	adds r1, r5, r6
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	strh r3, [r2]
	adds r2, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _0803B7EA
	movs r0, 0
	bl sub_803D580
	bl sub_803D6A0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x91
	ldr r1, =gUnknown_02024210
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, =gUnknown_085CC23E
	movs r1, 0
	bl battle_show_message_maybe
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803BE74
	str r0, [r1]
	bl sub_803F988
	ldr r1, =gUnknown_02024332
	movs r2, 0
	adds r0, r1, 0x7
_0803B834:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _0803B834
	movs r5, 0
	ldr r3, =gUnknown_0202406C
	ldr r2, =gUnknown_0202449C
	ldr r6, =gUnknown_02024474
	ldr r7, =gBattleMoveFlags
	ldrb r0, [r3]
	cmp r5, r0
	bge _0803B866
	ldr r0, =gBattleMons
	movs r4, 0x9
	negs r4, r4
	adds r1, r0, 0
	adds r1, 0x50
_0803B856:
	ldr r0, [r1]
	ands r0, r4
	str r0, [r1]
	adds r1, 0x58
	adds r5, 0x1
	ldrb r0, [r3]
	cmp r5, r0
	blt _0803B856
_0803B866:
	ldr r0, [r2]
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x1]
	ldr r0, [r2]
	movs r3, 0xD0
	lsls r3, 1
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	adds r3, 0x1
	adds r0, r3
	strb r1, [r0]
	movs r1, 0
	strb r1, [r6, 0x14]
	ldr r0, [r2]
	adds r0, 0x4D
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x3]
	strb r1, [r7]
	bl Random
	ldr r1, =gUnknown_02024330
	strh r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0803B8B2
	bl sub_80A369C
	ldr r0, =gUnknown_082DB8BE
	bl b_call_bc_move_exec
_0803B8B2:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B628

	thumb_func_start bc_8013B1C
bc_8013B1C: @ 803B904
	push {r4-r6,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803B994
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803B9BC
	str r0, [r1]
	ldr r3, =gUnknown_0202406C
	ldr r1, =gUnknown_02024332
	movs r2, 0
	adds r0, r1, 0x7
_0803B91C:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _0803B91C
	movs r4, 0
	ldrb r3, [r3]
	cmp r4, r3
	bge _0803B96E
	ldr r5, =gBattleMons
	adds r6, r5, 0
	adds r6, 0x4C
_0803B932:
	movs r0, 0x58
	adds r2, r4, 0
	muls r2, r0
	adds r1, r5, 0
	adds r1, 0x50
	adds r1, r2, r1
	ldr r3, [r1]
	subs r0, 0x61
	ands r3, r0
	str r3, [r1]
	adds r2, r6
	ldr r0, [r2]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0803B964
	movs r0, 0x80
	lsls r0, 5
	ands r3, r0
	cmp r3, 0
	beq _0803B964
	lsls r0, r4, 24
	lsrs r0, 24
	bl b_cancel_multi_turn_move_maybe
_0803B964:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803B932
_0803B96E:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x1]
	ldr r0, [r2]
	movs r3, 0xD0
	lsls r3, 1
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	adds r3, 0x1
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, 0x3]
	ldr r0, =gBattleMoveFlags
	strb r1, [r0]
_0803B994:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_8013B1C

	thumb_func_start sub_803B9BC
sub_803B9BC: @ 803B9BC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0x1
	bl sub_803D580
	ldr r0, =gUnknown_0202433A
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803B9EA
	bl sub_80401D0
	lsls r0, 24
	cmp r0, 0
	beq _0803B9DE
	b _0803BB78
_0803B9DE:
	bl sub_8040924
	lsls r0, 24
	cmp r0, 0
	beq _0803B9EA
	b _0803BB78
_0803B9EA:
	bl sub_8041728
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _0803B9F8
	b _0803BB78
_0803B9F8:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4D
	strb r1, [r0]
	bl sub_8041364
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0803BA0E
	b _0803BB78
_0803BA0E:
	movs r0, 0
	bl sub_803D580
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffdff
	ands r0, r1
	ldr r1, =0xfff7ffff
	ands r0, r1
	ldr r1, =0xffbfffff
	ands r0, r1
	ldr r1, =0xffefffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x18]
	strb r4, [r0, 0x19]
	strb r4, [r0, 0x14]
	ldr r0, =gBattleMoveDamage
	str r4, [r0]
	ldr r0, =gBattleMoveFlags
	strb r4, [r0]
	ldr r1, =gUnknown_02024332
	movs r2, 0
	adds r0, r1, 0x4
_0803BA40:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _0803BA40
	ldr r0, =gUnknown_0202433A
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803BA98
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	strb r0, [r1]
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_bs_exec
	str r0, [r1]
	b _0803BB78
	.pool
_0803BA98:
	ldr r1, =gUnknown_03005D10
	ldrb r0, [r1, 0x13]
	ldr r2, =gUnknown_0202449C
	mov r8, r2
	cmp r0, 0xFE
	bhi _0803BAB2
	adds r0, 0x1
	strb r0, [r1, 0x13]
	ldr r1, [r2]
	adds r1, 0xDA
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0803BAB2:
	movs r2, 0
	ldr r4, =gUnknown_0202406C
	ldr r0, =gUnknown_02024210
	mov r12, r0
	ldr r1, =gUnknown_085CC23E
	mov r9, r1
	ldrb r0, [r4]
	cmp r2, r0
	bge _0803BAE0
	ldr r7, =gUnknown_0202421C
	movs r6, 0xFF
	movs r5, 0
	ldr r3, =gUnknown_02024274
_0803BACC:
	adds r1, r2, r7
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	strh r5, [r3]
	adds r3, 0x2
	adds r2, 0x1
	ldrb r1, [r4]
	cmp r2, r1
	blt _0803BACC
_0803BAE0:
	movs r2, 0
	ldr r3, =gUnknown_0202449C
	movs r1, 0x6
_0803BAE6:
	ldr r0, [r3]
	adds r0, r2, r0
	adds r0, 0x5C
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x3
	ble _0803BAE6
	mov r2, r8
	ldr r0, [r2]
	adds r0, 0x91
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	mov r0, r9
	movs r1, 0
	bl battle_show_message_maybe
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803BE74
	str r0, [r1]
	bl Random
	ldr r1, =gUnknown_02024330
	strh r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 10
	ands r0, r1
	cmp r0, 0
	beq _0803BB5C
	ldr r0, =gUnknown_082DB881
	bl b_call_bc_move_exec
	b _0803BB78
	.pool
_0803BB5C:
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	beq _0803BB78
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0xDA
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803BB78
	ldr r0, =gUnknown_082DB8BE
	bl b_call_bc_move_exec
_0803BB78:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803B9BC

	thumb_func_start sub_803BB88
sub_803BB88: @ 803BB88
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0803BBB8
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x7]
	b _0803BBC2
	.pool
_0803BBB8:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r2, r0, 24
_0803BBC2:
	ldr r1, =gUnknown_0202420F
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	strb r0, [r1]
	cmp r2, 0x25
	bne _0803BBD0
	b _0803BD4C
_0803BBD0:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803BBDE
	b _0803BD4C
_0803BBDE:
	ldr r1, =gBattleMons
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x32
	bne _0803BBF2
	b _0803BD4C
_0803BBF2:
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	bge _0803BC86
	movs r7, 0
_0803BC08:
	lsrs r4, r7, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0803BC2C
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r0, r1
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r0, [r2]
	cmp r0, 0x17
	bne _0803BC2C
	b _0803BD54
_0803BC2C:
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0803BC76
	ldr r3, =gBattleMons
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	movs r2, 0x58
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	beq _0803BC76
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803BC76
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803BC76
	adds r0, r5, 0
	muls r0, r2
	adds r0, r3
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r0, [r2]
	cmp r0, 0x47
	bne _0803BC76
	b _0803BD70
_0803BC76:
	movs r0, 0x80
	lsls r0, 17
	adds r7, r0
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803BC08
_0803BC86:
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xF
	movs r2, 0x2A
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	beq _0803BCF8
	ldr r6, =gBattleMons
	ldrb r0, [r4]
	movs r3, 0x58
	muls r0, r3
	adds r1, r0, r6
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _0803BCBE
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _0803BCF8
_0803BCBE:
	ldr r0, =gUnknown_02024474
	subs r1, r5, 0x1
	strb r1, [r0, 0x17]
	ldr r2, =gUnknown_0202420A
	adds r0, r1, 0
	muls r0, r3
	adds r0, r6
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _0803BD90
	.pool
_0803BCF8:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x0400e000
	ands r0, r1
	cmp r0, 0
	bne _0803BD22
	ldr r1, =gUnknown_020242AC
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _0803BD40
_0803BD22:
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	movs r0, 0x1
	b _0803BD92
	.pool
_0803BD40:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0803BD8C
_0803BD4C:
	movs r0, 0
	b _0803BD92
	.pool
_0803BD54:
	ldr r0, =gUnknown_02024474
	strb r5, [r0, 0x17]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _0803BD90
	.pool
_0803BD70:
	ldr r0, =gUnknown_02024474
	strb r5, [r0, 0x17]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _0803BD90
	.pool
_0803BD8C:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
_0803BD90:
	strb r0, [r1, 0x5]
_0803BD92:
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_803BB88

	thumb_func_start sub_803BDA0
sub_803BDA0: @ 803BDA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r0, =gUnknown_0202406E
	mov r8, r0
	ldr r1, =gUnknown_0203CF00
	mov r12, r1
	ldr r7, =gUnknown_0202449C
	lsls r0, r5, 1
	adds r4, r0, r5
	adds r6, r0, 0
_0803BDBC:
	mov r0, r12
	adds r2, r3, r0
	ldr r1, [r7]
	adds r0, r4, r3
	adds r0, r1
	adds r0, 0x60
	ldrb r0, [r0]
	strb r0, [r2]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BDBC
	mov r1, r8
	adds r0, r6, r1
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r7, =gUnknown_0202449C
	ldr r0, [r7]
	adds r0, r5, r0
	adds r0, 0x5C
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_81B8FB0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803BE4C
	movs r3, 0
	adds r4, r7, 0
	adds r6, r5
	movs r0, 0x2
	adds r1, r5, 0
	eors r1, r0
	ldr r7, =gUnknown_0203CF00
	lsls r0, r1, 1
	adds r5, r0, r1
_0803BE1A:
	ldr r0, [r4]
	adds r1, r6, r3
	adds r1, r0
	adds r1, 0x60
	adds r2, r3, r7
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r5, r3
	adds r0, r1
	adds r0, 0x60
	ldrb r1, [r2]
	strb r1, [r0]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BE1A
	b _0803BE66
	.pool
_0803BE4C:
	movs r3, 0
	adds r2, r6, r5
	ldr r4, =gUnknown_0203CF00
_0803BE52:
	ldr r0, [r7]
	adds r1, r2, r3
	adds r1, r0
	adds r1, 0x60
	adds r0, r3, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BE52
_0803BE66:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803BDA0

	thumb_func_start sub_803BE74
sub_803BE74: @ 803BE74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	ldr r0, =gUnknown_02024332
	movs r1, 0
	strb r1, [r0, 0x4]
	ldr r0, =gUnknown_02024064
	strb r1, [r0]
	ldr r0, =gUnknown_0202406C
	bl _0803CD12
	.pool
_0803BE9C:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gUnknown_02024332
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x8
	bls _0803BEB8
	bl _0803CD04
_0803BEB8:
	lsls r0, 2
	ldr r1, =_0803BED0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803BED0:
	.4byte _0803BEF4
	.4byte _0803BF0C
	.4byte _0803C02C
	.4byte _0803C7D8
	.4byte _0803CAD0
	.4byte _0803CB84
	.4byte _0803CBC8
	.4byte _0803CBF4
	.4byte _0803CC38
_0803BEF4:
	bl sub_8185FD0
	ldr r1, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	bl _0803CC20
	.pool
_0803BF0C:
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	adds r1, r0
	adds r1, 0x5C
	movs r0, 0x6
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0803BF68
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	beq _0803BF68
	eors r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	ldr r1, [r4]
	adds r1, 0x91
	ldrb r1, [r1]
	ldr r2, =gBitTable
	lsls r0, 24
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803BF68
	ldr r4, =gUnknown_02024332
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _0803BF68
	bl _0803CD04
_0803BF68:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x91
	ldrb r3, [r0]
	ldr r1, =gBitTable
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	beq _0803BFD0
	ldr r0, =gUnknown_0202421C
	adds r0, r2, r0
	movs r1, 0xD
	strb r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0803BFBC
	ldr r0, =gUnknown_02024332
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x5
	strb r0, [r1]
	bl _0803CD04
	.pool
_0803BFBC:
	ldr r0, =gUnknown_02024332
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x4
	strb r0, [r1]
	bl _0803CD04
	.pool
_0803BFD0:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _0803BFF0
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	beq _0803C00C
_0803BFF0:
	ldr r0, =gUnknown_0202421C
	adds r0, r2, r0
	strb r3, [r0]
	ldr r1, =gUnknown_02024332
	ldrb r0, [r4]
	bl _0803CC72
	.pool
_0803C00C:
	ldr r0, =gUnknown_0202421C
	ldrb r1, [r0]
	ldr r0, =gUnknown_02023864
	ldrb r2, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r2, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x12_a_bb
	bl _0803CB68
	.pool
_0803C02C:
	ldr r3, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r6, =gUnknown_02024064
	ldrb r5, [r6]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803C058
	bl _0803CD04
_0803C058:
	ldr r4, =gUnknown_02023864
	lsls r0, r5, 9
	adds r4, 0x1
	adds r0, r4
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_8184FBC
	ldr r1, =gUnknown_0202421C
	ldrb r0, [r6]
	adds r1, r0, r1
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0xC
	bls _0803C084
	b _0803C6C4
_0803C084:
	lsls r0, 2
	ldr r1, =_0803C0A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803C0A8:
	.4byte _0803C0DC
	.4byte _0803C230
	.4byte _0803C268
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C440
	.4byte _0803C48C
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C4B4
_0803C0DC:
	bl sub_80400C8
	lsls r0, 24
	cmp r0, 0
	beq _0803C134
	ldr r0, =gUnknown_02024332
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	adds r1, r0
	movs r4, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r4, [r1]
	ldrb r1, [r3]
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x4
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, [r2]
	adds r2, r1, r2
	ldr r0, =gUnknown_02023864
	lsls r1, 9
	adds r0, 0x3
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2, 0xC]
	bl _0803CD70
	.pool
_0803C134:
	ldr r3, =gUnknown_020242BC
	ldr r5, =gUnknown_02024064
	ldrb r4, [r5]
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r3
	ldrh r2, [r0, 0x6]
	cmp r2, 0
	beq _0803C188
	ldr r1, =gUnknown_02024274
	lsls r0, r4, 1
	adds r0, r1
	strh r2, [r0]
	ldrb r2, [r5]
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, r2, r1
	adds r1, 0x80
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0xC]
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	ldrb r0, [r5]
	adds r0, r1
	movs r1, 0x4
	strb r1, [r0]
	bl _0803CD70
	.pool
_0803C188:
	add r2, sp, 0x4
	ldr r3, =gBattleMons
	movs r1, 0x58
	adds r0, r4, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2, 0x10]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x21
	ldrb r0, [r0]
	strb r0, [r2, 0x12]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x22
	ldrb r0, [r0]
	strb r0, [r2, 0x13]
	movs r4, 0
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x18]
	add r2, sp, 0x10
	mov r10, r2
	mov r8, r3
	adds r7, r5, 0
	movs r6, 0x58
	movs r0, 0xC
	add r0, r8
	mov r9, r0
	add r5, sp, 0x4
_0803C1CA:
	lsls r2, r4, 1
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r2, r0
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r1, [sp, 0x18]
	adds r3, r1, r4
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r4, r0
	mov r1, r8
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	adds r2, r1
	add r2, r9
	ldrh r0, [r2]
	add r1, r8
	adds r1, 0x3B
	ldrb r1, [r1]
	lsls r2, r4, 24
	lsrs r2, 24
	bl CalcPPWithPPUps
	mov r2, r10
	adds r1, r2, r4
	strb r0, [r1]
	adds r5, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _0803C1CA
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r1, r0
	movs r0, 0
	movs r2, 0
	add r3, sp, 0x4
	bl sub_8033E30
	b _0803C42E
	.pool
_0803C230:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x021f0902
	ands r0, r1
	cmp r0, 0
	bne _0803C23E
	b _0803C48C
_0803C23E:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	movs r1, 0x1
	bl sub_8185008
	ldr r1, =gUnknown_02024220
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB879
	b _0803C784
	.pool
_0803C268:
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	ldr r3, =gUnknown_0202449C
	ldr r1, [r3]
	adds r1, r0, r1
	adds r1, 0x58
	ldr r2, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r7, =gBattleMons
	ldrb r2, [r5]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =0x0400e000
	ands r1, r0
	cmp r1, 0
	bne _0803C2B8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	bne _0803C2B8
	ldr r0, =gUnknown_020242AC
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x80
	lsls r0, 3
	ands r1, r0
	cmp r1, 0
	beq _0803C2EC
_0803C2B8:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, 0x60
	ldr r0, [r3]
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0x6
	b _0803C400
	.pool
_0803C2EC:
	str r1, [sp]
	movs r0, 0xC
	adds r1, r2, 0
	movs r2, 0x17
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0803C374
	ldrb r1, [r5]
	str r4, [sp]
	movs r0, 0xC
	movs r2, 0x47
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0803C33C
	ldrb r0, [r5]
	muls r0, r6
	adds r1, r0, r7
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803C33C
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803C33C
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	bne _0803C374
_0803C33C:
	ldr r5, =gUnknown_02024064
	ldrb r1, [r5]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xF
	movs r2, 0x2A
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0803C3B0
	ldr r2, =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _0803C374
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _0803C3B0
_0803C374:
	subs r1, r4, 0x1
	lsls r1, 4
	movs r0, 0x4
	orrs r1, r0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, =gUnknown_0202420A
	ldrb r3, [r0]
	ldr r4, =gUnknown_0202449C
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r2, r0, 1
	adds r2, r0
	adds r2, 0x60
	ldr r0, [r4]
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r2, 0x6
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	b _0803C42E
	.pool
_0803C3B0:
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x2
	bne _0803C3D8
	ldr r0, =gUnknown_0202421C
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803C3D8
	ldr r0, =gUnknown_0202449C
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0x5C
	b _0803C3EE
	.pool
_0803C3D8:
	ldrb r0, [r4]
	cmp r0, 0x3
	bne _0803C410
	ldr r0, =gUnknown_0202421C
	ldrb r0, [r0, 0x1]
	cmp r0, 0x2
	bne _0803C410
	ldr r0, =gUnknown_0202449C
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0x5D
_0803C3EE:
	ldrb r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, 0x60
	adds r3, r0
	str r3, [sp]
	movs r0, 0
	movs r1, 0
_0803C400:
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	b _0803C42E
	.pool
_0803C410:
	ldr r2, =gUnknown_0202449C
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, 0x60
	ldr r0, [r2]
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x6
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
_0803C42E:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0803C6C4
	.pool
_0803C440:
	bl sub_806B8B0
	lsls r0, 24
	cmp r0, 0
	bne _0803C44C
	b _0803C6C4
_0803C44C:
	ldr r1, =gUnknown_02024220
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DAB11
	str r1, [r0]
	ldr r0, =gUnknown_02024332
	ldrb r1, [r3]
	adds r1, r0
	movs r4, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r4, [r1]
	ldrb r1, [r3]
	b _0803C7A0
	.pool
_0803C48C:
	ldr r2, =gUnknown_0202449C
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, 0x60
	ldr r1, [r2]
	adds r1, r0
	movs r0, 0
	bl sub_8033E6C
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0803C6C4
	.pool
_0803C4B4:
	ldr r4, =gUnknown_02024332
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	adds r0, r4
	movs r1, 0x7
	strb r1, [r0]
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r6, 0x2
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r5]
	bl sub_8185008
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r1, =gBattleMons
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0x58
	muls r0, r7
	adds r4, r1, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _0803C532
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	muls r0, r7
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0803C550
_0803C532:
	movs r0, 0
	bl dp01_build_cmdbuf_x32_32_32_32
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	bl _0803CD70
	.pool
_0803C550:
	ldr r4, =gUnknown_0202421C
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803C590
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x2
	bl sub_8185008
	b _0803C6AE
	.pool
_0803C590:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803C5B6
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	b _0803C668
_0803C5B6:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803C628
	ldr r4, =gUnknown_0202433C
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 20
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _0803C616
	ldr r4, =gUnknown_020242BC
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrh r0, [r1, 0x6]
	cmp r0, 0
	beq _0803C628
_0803C616:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	eors r0, r6
	b _0803C668
	.pool
_0803C628:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803C690
	ldr r4, =gUnknown_0202421C
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl battle_get_per_side_status
	movs r5, 0x2
	eors r0, r5
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803C690
	ldr r1, =gRngValue
	ldr r0, =gUnknown_0203BD30
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r6]
	bl battle_get_per_side_status
	eors r0, r5
_0803C668:
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_8185008
	b _0803C6AE
	.pool
_0803C690:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x3
	bl sub_8185008
_0803C6AE:
	movs r0, 0
	bl dp01_build_cmdbuf_x32_32_32_32
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0803CD70
	.pool
_0803C6C4:
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	movs r5, 0x8
	adds r0, r2, 0
	ands r0, r5
	adds r3, r1, 0
	cmp r0, 0
	beq _0803C720
	ldr r0, =0x043f0100
	ands r2, r0
	cmp r2, 0
	beq _0803C720
	ldr r0, =gUnknown_02023864
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C720
	ldr r1, =gUnknown_02024220
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB9BA
	str r1, [r0]
	ldr r1, =gUnknown_02024332
	ldrb r0, [r4]
	adds r0, r1
	movs r3, 0
	strb r5, [r0]
	b _0803C792
	.pool
_0803C720:
	ldr r0, [r3]
	ldr r1, =0x0200000a
	ands r0, r1
	cmp r0, 0x8
	bne _0803C760
	ldr r0, =gUnknown_02023864
	ldr r4, =gUnknown_02024064
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C760
	ldr r0, =gUnknown_082DAAFE
	bl b_call_bc_move_exec
	ldr r1, =gUnknown_02024332
	ldrb r0, [r4]
	adds r0, r1
	b _0803CC20
	.pool
_0803C760:
	bl sub_803BB88
	lsls r0, 24
	cmp r0, 0
	beq _0803C7C4
	ldr r0, =gUnknown_02023864
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C7C4
	ldr r1, =gUnknown_02024220
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, =gUnknown_082DAB0B
_0803C784:
	str r1, [r0]
	ldr r0, =gUnknown_02024332
	ldrb r1, [r4]
	adds r1, r0
	movs r3, 0
	movs r0, 0x6
	strb r0, [r1]
_0803C792:
	ldrb r1, [r4]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r3, [r1]
	ldrb r1, [r4]
_0803C7A0:
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x1
	strb r0, [r1]
	b _0803CD70
	.pool
_0803C7C4:
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803C7D8:
	ldr r4, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r3, =gUnknown_02024064
	ldrb r5, [r3]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r0, r2, 4
	movs r1, 0xF0
	lsls r1, 24
	orrs r0, r1
	orrs r0, r2
	lsls r1, r2, 8
	orrs r0, r1
	lsls r2, 12
	orrs r0, r2
	ldr r1, [r4]
	ands r1, r0
	adds r4, r3, 0
	cmp r1, 0
	beq _0803C804
	b _0803CD04
_0803C804:
	ldr r1, =gUnknown_0202421C
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0x9
	bls _0803C812
	b _0803CD04
_0803C812:
	lsls r0, 2
	ldr r1, =_0803C830
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803C830:
	.4byte _0803C858
	.4byte _0803C99C
	.4byte _0803C9D4
	.4byte _0803CA0A
	.4byte _0803CA2C
	.4byte _0803CA40
	.4byte _0803CA54
	.4byte _0803CA84
	.4byte _0803CA98
	.4byte _0803CABC
_0803C858:
	ldr r1, =gUnknown_02023864
	ldrb r3, [r4]
	lsls r0, r3, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r1, [r0]
	cmp r1, 0x3
	blt _0803C88A
	cmp r1, 0x9
	ble _0803C878
	cmp r1, 0xF
	beq _0803C87E
	b _0803C88A
	.pool
_0803C878:
	adds r0, r3, r2
	strb r1, [r0]
	b _0803CD70
_0803C87E:
	adds r1, r3, r2
	movs r0, 0x2
	strb r0, [r1]
	bl sub_803CDF8
	b _0803CD70
_0803C88A:
	movs r0, 0x2
	bl sub_818603C
	ldr r4, =gUnknown_02023864
	ldr r6, =gUnknown_02024064
	ldrb r3, [r6]
	lsls r1, r3, 9
	adds r5, r4, 0x2
	adds r0, r1, r5
	ldrb r2, [r0]
	adds r7, r4, 0x3
	adds r1, r7
	ldrb r0, [r1]
	lsls r0, 8
	orrs r2, r0
	ldr r0, =0x0000ffff
	cmp r2, r0
	bne _0803C8D0
	ldr r0, =gUnknown_02024332
	adds r0, r3, r0
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r6]
	bl sub_8185008
	b _0803CD04
	.pool
_0803C8D0:
	bl sub_803FB4C
	lsls r0, 24
	cmp r0, 0
	beq _0803C91C
	ldrb r0, [r6]
	movs r1, 0x1
	bl sub_8185008
	ldr r0, =gUnknown_02024332
	ldrb r1, [r6]
	adds r1, r0
	movs r3, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r6]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r3, [r1]
	ldrb r0, [r6]
	lsls r0, 9
	adds r1, r4, 0x1
	adds r0, r1
	strb r3, [r0]
	ldrb r1, [r6]
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x2
	strb r0, [r1]
	b _0803CD70
	.pool
_0803C91C:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	bne _0803C942
	ldrb r0, [r6]
	lsls r1, r0, 9
	adds r1, r5
	ldrb r1, [r1]
	bl sub_8184FBC
	ldrb r0, [r6]
	lsls r1, r0, 9
	adds r1, r7
	ldrb r1, [r1]
	bl sub_8184FBC
_0803C942:
	ldrb r0, [r6]
	ldr r4, =gUnknown_0202449C
	ldr r1, [r4]
	adds r1, r0, r1
	adds r1, 0x80
	lsls r0, 9
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gUnknown_02024274
	ldrb r2, [r6]
	lsls r5, r2, 1
	adds r5, r0
	ldr r3, =gBattleMons
	ldr r4, [r4]
	adds r0, r2, r4
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	adds r4, r0, r4
	lsls r0, 9
	adds r0, r7
	ldrb r0, [r0]
	strb r0, [r4, 0xC]
	ldr r0, =gUnknown_02024332
	ldrb r1, [r6]
	b _0803CB72
	.pool
_0803C99C:
	ldr r2, =gUnknown_02023864
	ldr r5, =gUnknown_02024064
	ldrb r4, [r5]
	lsls r1, r4, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	bne _0803C9BA
	b _0803CC1C
_0803C9BA:
	ldr r0, =gUnknown_02024208
	strh r3, [r0]
	ldr r0, =gUnknown_02024332
	ldrb r1, [r5]
	b _0803CB72
	.pool
_0803C9D4:
	ldr r0, =gUnknown_02023864
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x6
	bne _0803CA04
	ldr r0, =gUnknown_02024332
	adds r0, r2, r0
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r4]
	bl sub_8185008
	b _0803CD04
	.pool
_0803CA04:
	bl sub_803CDF8
	b _0803CB6E
_0803CA0A:
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA2C:
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA40:
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA54:
	ldr r3, =gUnknown_02023864
	ldr r0, =gUnknown_02024064
	ldrb r4, [r0]
	lsls r1, r4, 9
	adds r0, r3, 0x1
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r3, 0x2
	adds r1, r3
	ldrb r0, [r1]
	lsls r0, 8
	orrs r2, r0
	cmp r2, 0
	bne _0803CA72
	b _0803CC1C
_0803CA72:
	ldr r1, =gUnknown_02024332
	adds r1, r4, r1
	b _0803CB74
	.pool
_0803CA84:
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA98:
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CABC:
	ldr r2, =gUnknown_02024332
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CAD0:
	ldr r3, =gUnknown_02024068
	ldr r6, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r6
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803CAFA
	b _0803CD04
_0803CAFA:
	bl sub_803CDB8
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r4, r1, 31
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x41
	ands r0, r1
	cmp r0, 0x1
	bne _0803CB3C
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	bne _0803CB3C
	adds r0, r5, 0
	eors r0, r1
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r1, 0x91
	ldrb r1, [r1]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r6
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803CB5C
_0803CB3C:
	movs r0, 0
	movs r1, 0
	adds r2, r4, 0
	bl sub_8034464
	b _0803CB66
	.pool
_0803CB5C:
	movs r0, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl sub_8034464
_0803CB66:
	ldr r4, =gUnknown_02024064
_0803CB68:
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803CB6E:
	ldr r0, =gUnknown_02024332
	ldrb r1, [r4]
_0803CB72:
	adds r1, r0
_0803CB74:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0803CD04
	.pool
_0803CB84:
	ldr r3, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803CBAE
	b _0803CD04
_0803CBAE:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _0803CD04
	.pool
_0803CBC8:
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r1, r2, r0
	adds r0, r1, 0
	adds r0, 0x54
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803CCB4
	ldr r0, =gUnknown_02024332
	adds r0, r2, r0
	adds r1, 0x84
	ldrb r1, [r1]
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CBF4:
	ldr r3, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r4, [r0]
	lsls r0, r4, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _0803CD04
_0803CC1C:
	ldr r0, =gUnknown_02024332
	adds r0, r4, r0
_0803CC20:
	movs r1, 0x1
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CC38:
	ldr r5, =gUnknown_02024064
	ldrb r2, [r5]
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	adds r0, r2, r0
	adds r0, 0x54
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803CCB4
	ldr r0, =gUnknown_02023864
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xD
	bne _0803CC94
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_0202421C
	ldrb r0, [r5]
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
	ldr r1, =gUnknown_02024332
	ldrb r0, [r5]
_0803CC72:
	adds r0, r1
	movs r1, 0x4
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CC94:
	adds r0, r2, 0
	movs r1, 0x1
	bl sub_8185008
	ldr r2, =gUnknown_02024332
	ldrb r0, [r5]
	adds r2, r0, r2
	ldr r1, [r4]
	adds r0, r1
	adds r0, 0x84
	ldrb r0, [r0]
	strb r0, [r2]
	b _0803CD04
	.pool
_0803CCB4:
	ldr r0, =gUnknown_0202420B
	strb r2, [r0]
	ldr r7, =gUnknown_02024214
	ldr r6, =gUnknown_02024220
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r4, [r0]
	str r4, [r7]
	ldr r3, =gUnknown_02024068
	ldr r1, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _0803CCFA
	ldr r0, =gUnknown_0831BD10
	ldrb r1, [r4]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_0803CCFA:
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r7]
	str r1, [r0]
_0803CD04:
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, =gUnknown_0202406C
	lsls r1, 24
	lsrs r1, 24
_0803CD12:
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r1, r0
	bcs _0803CD1E
	bl _0803BE9C
_0803CD1E:
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x4]
	ldrb r1, [r5]
	cmp r0, r1
	bne _0803CD70
	movs r0, 0x1
	bl sub_818603C
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803D2E8
	str r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0803CD70
	movs r4, 0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803CD70
_0803CD4A:
	ldr r0, =gUnknown_0202421C
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803CD66
	lsls r0, r4, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r1, r4, r1
	adds r1, 0x5C
	ldrb r1, [r1]
	bl sub_80571DC
_0803CD66:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803CD4A
_0803CD70:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803BE74

	thumb_func_start sub_803CDB8
sub_803CDB8: @ 803CDB8
	push {r4,r5,lr}
	movs r3, 0
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	adds r5, r0, 0
	cmp r3, r2
	bge _0803CDDA
	ldr r4, =gUnknown_02024332
_0803CDCA:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _0803CDD4
	adds r3, 0x1
_0803CDD4:
	adds r1, 0x1
	cmp r1, r2
	blt _0803CDCA
_0803CDDA:
	adds r0, r3, 0x1
	ldrb r5, [r5]
	cmp r0, r5
	beq _0803CDF0
	movs r0, 0
	b _0803CDF2
	.pool
_0803CDF0:
	movs r0, 0x1
_0803CDF2:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_803CDB8

	thumb_func_start sub_803CDF8
sub_803CDF8: @ 803CDF8
	push {r4-r7,lr}
	ldr r7, =gUnknown_02024064
	ldrb r0, [r7]
	ldr r6, =gUnknown_0202449C
	ldr r1, [r6]
	adds r1, r0, r1
	adds r1, 0x5C
	ldr r4, =gUnknown_02023864
	lsls r0, 9
	adds r2, r4, 0x1
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r1, r2
	ldrb r1, [r1]
	bl sub_8184FBC
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x42
	ands r0, r1
	cmp r0, 0x42
	bne _0803CEC6
	ldrb r0, [r7]
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	lsls r0, 9
	adds r5, r4, 0x2
	adds r0, r5
	ldrb r2, [r0]
	movs r3, 0xF0
	adds r0, r3, 0
	ands r0, r2
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	ldr r2, [r6]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, r2
	adds r0, 0x61
	lsls r1, 9
	adds r4, 0x3
	mov r12, r4
	add r1, r12
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r7]
	movs r4, 0x2
	eors r0, r4
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	eors r0, r4
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r0, [r7]
	lsls r0, 9
	adds r0, r5
	ldrb r0, [r0]
	ands r3, r0
	lsrs r3, 4
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r7]
	eors r4, r0
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r1, r4
	adds r1, r0
	adds r1, 0x62
	ldrb r0, [r7]
	lsls r0, 9
	add r0, r12
	ldrb r0, [r0]
	strb r0, [r1]
_0803CEC6:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803CDF8

	thumb_func_start sub_803CEDC
sub_803CEDC: @ 803CEDC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r2, =gUnknown_0202407A
	adds r4, r0, r2
	ldrb r5, [r4]
	adds r2, r1, r2
	ldrb r3, [r2]
	strb r3, [r4]
	strb r5, [r2]
	ldr r2, =gUnknown_0202407E
	adds r0, r2
	ldrb r5, [r0]
	adds r1, r2
	ldrb r2, [r1]
	strb r2, [r0]
	strb r5, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803CEDC

	thumb_func_start b_first_side
b_first_side: @ 803CF10
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0803CFD8
	ldr r1, [sp, 0x8]
	str r1, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0803CFD8
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r3, [r0]
	cmp r3, 0x21
	bne _0803CF7C
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803CF8C
_0803CF7C:
	cmp r3, 0x22
	bne _0803CF98
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0803CF98
_0803CF8C:
	movs r3, 0x2
	b _0803CF9A
	.pool
_0803CF98:
	movs r3, 0x1
_0803CF9A:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	ldr r2, =gBattleMons
	adds r0, r2
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x21
	bne _0803CFBA
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803CFCA
_0803CFBA:
	cmp r2, 0x22
	bne _0803CFDA
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0803CFDA
_0803CFCA:
	movs r7, 0x2
	b _0803CFDC
	.pool
_0803CFD8:
	movs r3, 0x1
_0803CFDA:
	movs r7, 0x1
_0803CFDC:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	muls r3, r0
	ldr r2, =gUnknown_08329D2E
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	mov r8, r0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _0803D02C
	ldr r1, =gUnknown_02024404
	mov r3, r9
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _0803D040
	.pool
_0803D02C:
	ldrh r0, [r4, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r5, r0, 24
_0803D040:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0102
	ands r0, r1
	cmp r0, 0
	bne _0803D074
	ldr r0, =0x00000869
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0803D074
	mov r0, r9
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803D074
	movs r0, 0x6E
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0x64
	bl __udivsi3
	mov r8, r0
_0803D074:
	cmp r6, 0x18
	bne _0803D07E
	mov r2, r8
	lsrs r2, 1
	mov r8, r2
_0803D07E:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803D09C
	mov r0, r8
	lsrs r0, 2
	mov r8, r0
_0803D09C:
	cmp r6, 0x1A
	bne _0803D0B8
	ldr r0, =gUnknown_02024330
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _0803D0B8
	movs r1, 0x1
	negs r1, r1
	mov r8, r1
_0803D0B8:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	adds r3, r0, 0
	muls r3, r7
	ldr r2, =gUnknown_08329D2E
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	adds r7, r0, 0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _0803D118
	ldr r1, =gUnknown_02024404
	mov r3, r10
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _0803D12C
	.pool
_0803D118:
	ldrh r0, [r4, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r5, r0, 24
_0803D12C:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0102
	ands r0, r1
	cmp r0, 0
	bne _0803D15C
	ldr r0, =0x00000869
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0803D15C
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803D15C
	movs r0, 0x6E
	muls r0, r7
	movs r1, 0x64
	bl __udivsi3
	adds r7, r0, 0
_0803D15C:
	cmp r6, 0x18
	bne _0803D162
	lsrs r7, 1
_0803D162:
	ldr r2, =gBattleMons
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803D17E
	lsrs r7, 2
_0803D17E:
	cmp r6, 0x1A
	bne _0803D198
	ldr r0, =gUnknown_02024330
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _0803D198
	movs r7, 0x1
	negs r7, r7
_0803D198:
	ldr r2, [sp, 0x4]
	cmp r2, 0
	beq _0803D1B8
	movs r3, 0
	b _0803D254
	.pool
_0803D1B8:
	ldr r0, =gUnknown_0202421C
	mov r3, r9
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r2, r0, 0
	cmp r1, 0
	bne _0803D208
	ldr r0, =gUnknown_0202433C
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _0803D1E0
	movs r3, 0xA5
	b _0803D20A
	.pool
_0803D1E0:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	add r0, r9
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r3, r9
	muls r3, r1
	adds r1, r3, 0
	adds r0, r1
	ldr r1, =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r3, [r0]
	b _0803D20A
	.pool
_0803D208:
	movs r3, 0
_0803D20A:
	mov r1, r10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803D254
	ldr r0, =gUnknown_0202433C
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _0803D22C
	movs r2, 0xA5
	b _0803D256
	.pool
_0803D22C:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	add r0, r10
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r2, r10
	muls r2, r1
	adds r1, r2, 0
	adds r0, r1
	ldr r1, =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r2, [r0]
	b _0803D256
	.pool
_0803D254:
	movs r2, 0
_0803D256:
	ldr r4, =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r4
	movs r1, 0x7
	ldrsb r1, [r0, r1]
	lsls r3, r2, 1
	cmp r1, 0
	bne _0803D27A
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0803D2B8
_0803D27A:
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r1, r0
	bne _0803D2AE
	cmp r8, r7
	bne _0803D2A4
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803D2A4
	movs r3, 0x2
	b _0803D2D4
	.pool
_0803D2A4:
	cmp r8, r7
	bcs _0803D2D6
	movs r0, 0x1
	str r0, [sp, 0x8]
	b _0803D2D6
_0803D2AE:
	cmp r1, r0
	bge _0803D2D6
	movs r1, 0x1
	str r1, [sp, 0x8]
	b _0803D2D6
_0803D2B8:
	cmp r8, r7
	bne _0803D2CE
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803D2CE
	movs r2, 0x2
	str r2, [sp, 0x8]
	b _0803D2D6
_0803D2CE:
	cmp r8, r7
	bcs _0803D2D6
	movs r3, 0x1
_0803D2D4:
	str r3, [sp, 0x8]
_0803D2D6:
	ldr r0, [sp, 0x8]
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end b_first_side

	thumb_func_start sub_803D2E8
sub_803D2E8: @ 803D2E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r3, 0
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0803D354
	ldr r0, =gUnknown_02024064
	strb r3, [r0]
	ldr r4, =gUnknown_0202406C
	mov r8, r0
	ldrb r0, [r4]
	cmp r3, r0
	bcc _0803D310
	b _0803D54A
_0803D310:
	ldr r7, =gUnknown_0202407A
	ldr r6, =gUnknown_0202421C
	mov r2, r8
	ldr r5, =gUnknown_0202407E
_0803D318:
	adds r1, r3, r7
	ldrb r0, [r2]
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r3, r5
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	cmp r0, r1
	bcc _0803D318
	b _0803D54A
	.pool
_0803D354:
	movs r2, 0x2
	ands r1, r2
	cmp r1, 0
	beq _0803D3A4
	ldr r0, =gUnknown_02024064
	strb r3, [r0]
	ldr r1, =gUnknown_0202406C
	mov r8, r0
	adds r2, r1, 0
	ldrb r2, [r2]
	cmp r3, r2
	bcs _0803D3C0
	ldr r0, =gUnknown_0202421C
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x3
	beq _0803D3BE
_0803D376:
	mov r7, r8
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0803D3C0
	ldrb r0, [r7]
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803D376
	b _0803D3BE
	.pool
_0803D3A4:
	ldr r1, =gUnknown_0202421C
	ldrb r0, [r1]
	ldr r4, =gUnknown_02024064
	mov r8, r4
	cmp r0, 0x3
	bne _0803D3B4
	strb r3, [r4]
	movs r3, 0x5
_0803D3B4:
	ldrb r0, [r1, 0x2]
	cmp r0, 0x3
	bne _0803D3C0
	mov r7, r8
	strb r2, [r7]
_0803D3BE:
	movs r3, 0x5
_0803D3C0:
	cmp r3, 0x5
	bne _0803D448
	ldr r6, =gUnknown_0202407A
	ldr r1, =gUnknown_0202421C
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r2, =gUnknown_0202407E
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r2]
	movs r3, 0x1
	movs r5, 0
	adds r4, r1, 0
	ldr r7, =gUnknown_03005D04
	mov r10, r7
	ldr r0, =bc_80154A0
	mov r12, r0
	ldr r1, =gUnknown_0202449C
	mov r9, r1
	ldr r7, =gUnknown_0202406C
	ldrb r7, [r7]
	cmp r5, r7
	bge _0803D41A
	adds r7, r6, 0
	adds r6, r4, 0
	adds r4, r2, 0
	ldr r2, =gUnknown_0202406C
_0803D3FC:
	mov r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	beq _0803D412
	adds r1, r3, r7
	adds r0, r5, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r4
	strb r5, [r0]
	adds r3, 0x1
_0803D412:
	adds r5, 0x1
	ldrb r1, [r2]
	cmp r5, r1
	blt _0803D3FC
_0803D41A:
	mov r2, r12
	mov r3, r10
	str r2, [r3]
	mov r4, r9
	ldr r0, [r4]
	b _0803D554
	.pool
_0803D448:
	movs r0, 0
	mov r7, r8
	strb r0, [r7]
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803D48E
	ldr r6, =gUnknown_0202421C
	mov r2, r8
	ldr r5, =gUnknown_0202407A
	ldr r4, =gUnknown_0202407E
_0803D45E:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _0803D47C
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_0803D47C:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D45E
_0803D48E:
	movs r0, 0
	mov r2, r8
	strb r0, [r2]
	ldr r4, =gUnknown_0202406C
	ldrb r0, [r4]
	cmp r0, 0
	beq _0803D4D2
	ldr r6, =gUnknown_0202421C
	ldr r5, =gUnknown_0202407A
	ldr r4, =gUnknown_0202407E
_0803D4A2:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0803D4C0
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_0803D4C0:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D4A2
_0803D4D2:
	movs r5, 0
	b _0803D540
	.pool
_0803D4E8:
	adds r4, r5, 0x1
	adds r7, r4, 0
	ldrb r1, [r1]
	cmp r7, r1
	bge _0803D53E
	ldr r6, =gUnknown_0202407A
	lsls r2, r5, 24
	mov r8, r2
_0803D4F8:
	ldr r0, =gUnknown_0202407E
	adds r1, r5, r0
	ldrb r3, [r1]
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, r6
	ldrb r2, [r0]
	cmp r2, 0x1
	beq _0803D534
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0803D534
	cmp r2, 0x2
	beq _0803D534
	cmp r0, 0x2
	beq _0803D534
	adds r0, r3, 0
	movs r2, 0
	bl b_first_side
	lsls r0, 24
	cmp r0, 0
	beq _0803D534
	lsls r1, r4, 24
	lsrs r1, 24
	mov r3, r8
	lsrs r0, r3, 24
	bl sub_803CEDC
_0803D534:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803D4F8
_0803D53E:
	adds r5, r7, 0
_0803D540:
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _0803D4E8
_0803D54A:
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_80154A0
	str r0, [r1]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
_0803D554:
	adds r0, 0x48
	movs r1, 0
	strb r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803D2E8

	thumb_func_start sub_803D580
sub_803D580: @ 803D580
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	adds r5, r1, 0
	cmp r2, 0
	beq _0803D678
	ldr r7, =gUnknown_0202433C
	adds r6, r5, 0
	ldr r0, =gUnknown_020240D4
	mov r12, r0
	ldr r1, =gUnknown_020242BC
	mov r8, r1
	mov r10, r8
_0803D5AE:
	mov r2, r9
	cmp r2, 0
	beq _0803D5EC
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _0803D648
	.pool
_0803D5EC:
	ldrb r0, [r6]
	lsls r0, 4
	adds r2, r0, r7
	movs r1, 0
	mov r4, r10
	movs r3, 0
_0803D5F8:
	adds r0, r2, r1
	strb r3, [r0]
	adds r1, 0x1
	cmp r1, 0xF
	bls _0803D5F8
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x16]
	cmp r0, 0
	beq _0803D616
	subs r0, 0x1
	strb r0, [r1, 0x16]
_0803D616:
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x19]
	cmp r0, 0
	beq _0803D648
	subs r0, 0x1
	strb r0, [r1, 0x19]
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x19]
	cmp r0, 0
	bne _0803D648
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, =0xffbfffff
	ands r0, r1
	str r0, [r2]
_0803D648:
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	bne _0803D666
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, =0xfeffffff
	ands r0, r1
	str r0, [r2]
_0803D666:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D5AE
_0803D678:
	movs r0, 0
	ldr r2, =gUnknown_02024294
	strb r0, [r2, 0x8]
	strb r0, [r2, 0x14]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803D580

	thumb_func_start sub_803D6A0
sub_803D6A0: @ 803D6A0
	push {r4-r6,lr}
	ldr r2, =gUnknown_02024064
	movs r0, 0
	strb r0, [r2]
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	adds r6, r0, 0
	cmp r1, 0
	beq _0803D6DE
	adds r3, r2, 0
	movs r4, 0
	ldr r5, =gUnknown_0202437C
_0803D6B8:
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, r0, r5
	movs r1, 0
_0803D6C4:
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, 0x1
	cmp r1, 0x13
	bls _0803D6C4
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6]
	cmp r0, r1
	bcc _0803D6B8
_0803D6DE:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803D6A0

	thumb_func_start bc_80154A0
bc_80154A0: @ 803D6F0
	push {r4-r7,lr}
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	bne _0803D7AE
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r0, 0x48
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	mov r12, r2
	adds r6, r1, 0
	ldrb r1, [r6]
	cmp r0, r1
	bcs _0803D7AE
	ldr r5, =gUnknown_02024064
	ldr r4, =gUnknown_0202420B
	movs r7, 0x84
	lsls r7, 1
_0803D71C:
	ldr r1, [r2]
	adds r1, 0x48
	ldrb r0, [r1]
	strb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_02024274
	ldrb r3, [r5]
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r7
	bne _0803D7A0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803D7A0
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _0803D7A0
	ldr r0, =gUnknown_0202433C
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	blt _0803D7A0
	ldr r0, =gUnknown_082DB1FF
	bl b_call_bc_move_exec
	b _0803D7E8
	.pool
_0803D7A0:
	mov r2, r12
	ldr r0, [r2]
	adds r0, 0x48
	ldrb r0, [r0]
	ldrb r1, [r6]
	cmp r0, r1
	bcc _0803D71C
_0803D7AE:
	bl b_clear_atk_up_if_hit_flag_unless_enraged
	ldr r1, =gUnknown_02024082
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gUnknown_02024083
	ldr r0, =gUnknown_0202407A
	movs r3, 0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gUnknown_02024400
	movs r2, 0
	strh r3, [r0]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	strb r2, [r0, 0x13]
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_bs_exec
	str r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x4]
	ldr r0, =gUnknown_02024474
	strb r2, [r0, 0x16]
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r0, [r0, 0x8]
	adds r0, 0x20
	strb r2, [r0]
_0803D7E8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_80154A0

	thumb_func_start bc_bs_exec
bc_bs_exec: @ 803D818
	push {r4-r6,lr}
	ldr r6, =gUnknown_0202433A
	ldrb r0, [r6]
	ldr r2, =gUnknown_02024083
	cmp r0, 0
	beq _0803D828
	movs r0, 0xC
	strb r0, [r2]
_0803D828:
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	adds r0, 0x4B
	ldr r4, =gUnknown_02024082
	ldrb r1, [r4]
	strb r1, [r0]
	ldr r1, =gUnknown_0831BC0C
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0803D894
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xffefffff
	ands r0, r1
	str r0, [r2]
	ldr r3, =gUnknown_03005D04
	ldr r2, =gUnknown_0831BC44
	ldrb r1, [r6]
	movs r0, 0x7F
	ands r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	str r0, [r3]
	b _0803D8AC
	.pool
_0803D894:
	ldr r0, [r5]
	adds r0, 0x4B
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803D8AC
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffdff
	ands r0, r1
	ldr r1, =0xfff7ffff
	ands r0, r1
	str r0, [r2]
_0803D8AC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_bs_exec

	thumb_func_start sub_803D8C0
sub_803D8C0: @ 803D8C0
	push {r4,lr}
	ldr r1, =gUnknown_02024083
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x02000002
	ands r0, r2
	cmp r0, 0
	beq _0803D920
	ldr r1, =gUnknown_020375F0
	ldr r4, =gUnknown_0202433A
	ldrb r0, [r4]
	strh r0, [r1]
	ldr r1, =gUnknown_02022F58
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_0202420B
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAA35
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _0803DAA4
	.pool
_0803D920:
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _0803D95C
	ldr r0, =0x043f0900
	ands r2, r0
	cmp r2, 0
	beq _0803D95C
	bl sub_805EA60
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAA87
	str r0, [r1]
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _0803D946
	b _0803DA8A
_0803D946:
	b _0803DA94
	.pool
_0803D95C:
	ldr r0, [r1]
	movs r1, 0xA
	ands r0, r1
	cmp r0, 0x8
	beq _0803D968
	b _0803DA9E
_0803D968:
	bl sub_805EA60
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DA92D
	str r0, [r1]
	ldr r2, =gTrainers
	ldr r0, =gUnknown_02038BCA
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	subs r0, 0x3
	cmp r0, 0x32
	bls _0803D98A
	b _0803DA94
_0803D98A:
	lsls r0, 2
	ldr r1, =_0803D9A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803D9A8:
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA74
	.4byte _0803DA8A
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA74
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
_0803DA74:
	ldr r0, =0x00000163
	bl song_play_for_text
	b _0803DAA4
	.pool
_0803DA80:
	movs r0, 0xD4
	lsls r0, 1
	bl song_play_for_text
	b _0803DAA4
_0803DA8A:
	movs r0, 0xB1
	lsls r0, 1
	bl song_play_for_text
	b _0803DAA4
_0803DA94:
	movs r0, 0xCE
	lsls r0, 1
	bl song_play_for_text
	b _0803DAA4
_0803DA9E:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DA96A
	str r0, [r1]
_0803DAA4:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803DCD8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803D8C0

	thumb_func_start sub_803DAC0
sub_803DAC0: @ 803DAC0
	push {r4,lr}
	ldr r1, =gUnknown_02024083
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _0803DB7C
	ldr r0, =0x003f0100
	ands r1, r0
	cmp r1, 0
	beq _0803DB44
	ldr r3, =gUnknown_0202433A
	ldrb r2, [r3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _0803DB2C
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB9C8
	str r0, [r1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	b _0803DB82
	.pool
_0803DB2C:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAA0B
	str r0, [r1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3]
	b _0803DB82
	.pool
_0803DB44:
	ldr r1, =gUnknown_02022F58
	ldr r4, =gUnknown_0202433A
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_0202420B
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAA35
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _0803DB82
	.pool
_0803DB7C:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DA96D
	str r0, [r1]
_0803DB82:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803DCD8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DAC0

	thumb_func_start sub_803DBA0
sub_803DBA0: @ 803DBA0
	push {lr}
	ldr r1, =gUnknown_02024083
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x003f0100
	ands r0, r2
	cmp r0, 0
	beq _0803DBFC
	movs r0, 0x8
	ands r2, r0
	cmp r2, 0
	beq _0803DBFC
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB9C1
	str r0, [r1]
	ldr r1, =gUnknown_0202433A
	movs r0, 0x9
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	b _0803DC6A
	.pool
_0803DBFC:
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	beq _0803DC24
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB9C1
	str r0, [r1]
	ldr r1, =gUnknown_0202433A
	movs r0, 0x9
	strb r0, [r1]
	b _0803DC6A
	.pool
_0803DC24:
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 27
	lsrs r0, 30
	cmp r0, 0x1
	beq _0803DC54
	cmp r0, 0x2
	beq _0803DC64
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAAF0
	b _0803DC68
	.pool
_0803DC54:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAADB
	b _0803DC68
	.pool
_0803DC64:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAAE9
_0803DC68:
	str r0, [r1]
_0803DC6A:
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803DCD8
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DBA0

	thumb_func_start bc_80158BC
bc_80158BC: @ 803DC84
	ldr r1, =gUnknown_02024083
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, =gUnknown_0202406E
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAAF7
	str r0, [r1]
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803DCD8
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end bc_80158BC

	thumb_func_start sub_803DCD8
sub_803DCD8: @ 803DCD8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gUnknown_02024083
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0803DCEE
	b _0803DE10
_0803DCEE:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0b92
	ands r1, r0
	cmp r1, 0
	bne _0803DDB6
	ldr r2, =gUnknown_02024064
	strb r1, [r2]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0803DDB2
	adds r5, r2, 0
	ldr r0, =gUnknown_0202406E
	mov r8, r0
	movs r7, 0x64
	ldr r6, =gPlayerParty
_0803DD10:
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803DDA0
	ldr r4, =gUnknown_03005D10
	ldrh r0, [r4, 0x6]
	cmp r0, 0
	bne _0803DD74
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	strh r0, [r4, 0x6]
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0x2
	adds r2, r4, 0
	adds r2, 0x8
	bl GetMonData
	b _0803DDA0
	.pool
_0803DD74:
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	strh r0, [r4, 0x26]
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0x2
	adds r2, r4, 0
	adds r2, 0x14
	bl GetMonData
_0803DDA0:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803DD10
_0803DDB2:
	bl sub_80EC728
_0803DDB6:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0b9a
	ands r0, r1
	cmp r0, 0
	bne _0803DDD2
	ldr r0, =gUnknown_03005D10
	ldrb r1, [r0, 0x5]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803DDD2
	bl sub_80EE184
_0803DDD2:
	bl sub_8186444
	movs r0, 0x3
	bl BeginFastPaletteFade
	movs r0, 0x5
	bl sub_80A2F50
	ldr r1, =gUnknown_03005D04
	ldr r0, =sub_803DE40
	str r0, [r1]
	ldr r1, =gUnknown_030061E8
	ldr r0, =sub_8038420
	str r0, [r1]
	b _0803DE2A
	.pool
_0803DE10:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803DE2A
	ldr r1, =gUnknown_0831BD10
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803DE2A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DCD8

	thumb_func_start sub_803DE40
sub_803DE40: @ 803DE40
	push {lr}
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0803DE86
	bl ResetAllObjectData
	ldr r0, =gUnknown_03005D54
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803DE62
	ldr r0, =gUnknown_0202433A
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0803DE80
_0803DE62:
	ldr r1, =gUnknown_03005D04
	ldr r0, =c4_overworld
	str r0, [r1]
	b _0803DEA2
	.pool
_0803DE80:
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_evolution_cutscene
	str r0, [r1]
_0803DE86:
	bl FreeAllWindowBuffers
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0803DEA2
	bl sub_805F094
	bl sub_8057028
	bl dp11_free
_0803DEA2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DE40

	thumb_func_start bc_evolution_cutscene
bc_evolution_cutscene: @ 803DEB4
	push {r4-r6,lr}
	ldr r0, =gUnknown_03005D54
	ldrb r1, [r0]
	adds r3, r0, 0
	cmp r1, 0
	beq _0803DF2E
_0803DEC0:
	movs r6, 0
_0803DEC2:
	ldrb r2, [r3]
	ldr r0, =gBitTable
	lsls r1, r6, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0803DF20
	bics r2, r1
	strb r2, [r3]
	movs r0, 0x64
	adds r1, r6, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0
	bl GetEvolutionTargetSpecies
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _0803DF20
	bl FreeAllWindowBuffers
	ldr r0, =gUnknown_03005D04
	ldr r1, =sub_803DF48
	str r1, [r0]
	lsls r3, r6, 24
	lsrs r3, 24
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl evolution_cutscene
	b _0803DF34
	.pool
_0803DF20:
	adds r6, 0x1
	ldr r3, =gUnknown_03005D54
	cmp r6, 0x5
	ble _0803DEC2
	ldrb r0, [r3]
	cmp r0, 0
	bne _0803DEC0
_0803DF2E:
	ldr r1, =gUnknown_03005D04
	ldr r0, =c4_overworld
	str r0, [r1]
_0803DF34:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_evolution_cutscene

	thumb_func_start sub_803DF48
sub_803DF48: @ 803DF48
	push {lr}
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =sub_8038420
	cmp r1, r0
	bne _0803DF5A
	ldr r1, =gUnknown_03005D04
	ldr r0, =bc_evolution_cutscene
	str r0, [r1]
_0803DF5A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DF48

	thumb_func_start c4_overworld
c4_overworld: @ 803DF70
	push {r4-r6,lr}
	ldr r6, =gBattleTypeFlags
	ldr r0, [r6]
	movs r5, 0x2
	ands r0, r5
	cmp r0, 0
	bne _0803DF8C
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	bl sub_806DCB4
	adds r0, r4, 0
	bl sub_806DEC4
_0803DF8C:
	ldr r4, [r6]
	adds r0, r4, 0
	ands r0, r5
	cmp r0, 0
	beq _0803DF9E
	ldr r0, =gUnknown_03003124
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803DFEC
_0803DF9E:
	ldr r1, =gUnknown_020375F0
	ldr r5, =gUnknown_0202433A
	ldrb r0, [r5]
	strh r0, [r1]
	ldr r3, =gMain
	ldr r0, =0x00000439
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, =gUnknown_03005D00
	ldr r0, [r0]
	str r0, [r3]
	movs r0, 0x80
	lsls r0, 3
	ands r4, r0
	cmp r4, 0
	beq _0803DFDE
	ldr r0, =gEnemyParty
	bl sub_8161F18
	ldrb r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0803DFDA
	cmp r1, 0x7
	bne _0803DFDE
_0803DFDA:
	bl sub_8161F4C
_0803DFDE:
	movs r0, 0x5A
	bl m4aSongNumStop
	ldr r0, =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
_0803DFEC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end c4_overworld

	thumb_func_start bc_move_exec_returning
bc_move_exec_returning: @ 803E018
	push {lr}
	ldr r0, =gUnknown_02024083
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _0803E060
	ldr r3, =gUnknown_020244A8
	ldr r0, [r3]
	ldr r0, [r0, 0xC]
	adds r1, r0, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803E03C
	subs r0, 0x1
	strb r0, [r1]
_0803E03C:
	ldr r2, =gUnknown_03005D04
	ldr r0, [r3]
	ldr r1, [r0, 0xC]
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0803E07A
	.pool
_0803E060:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803E07A
	ldr r1, =gUnknown_0831BD10
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803E07A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_move_exec_returning

	thumb_func_start sub_803E08C
sub_803E08C: @ 803E08C
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0803E0A8
	ldr r1, =gUnknown_0831BD10
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803E0A8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E08C

	thumb_func_start sub_803E0B8
sub_803E0B8: @ 803E0B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r0, 0x4
	str r0, [sp]
	ldr r6, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r1, =gUnknown_0202449C
	ldr r3, [r1]
	adds r0, r3, 0
	adds r0, 0x91
	ldrb r2, [r0]
	ldr r1, =gBitTable
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	beq _0803E110
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	b _0803E83C
	.pool
_0803E110:
	ldr r1, =gCritMultiplier
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_02024474
	movs r0, 0x1
	strb r0, [r1, 0xE]
	ldr r5, =0x000001a3
	adds r0, r3, r5
	strb r2, [r0]
	ldr r0, =gBattleMoveFlags
	strb r2, [r0]
	ldr r0, =gUnknown_02024212
	strb r2, [r0]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x6]
	ldr r2, =gUnknown_020241E8
	ldr r0, =gUnknown_020241E9
	mov r9, r0
	ldrb r0, [r6]
	ldr r3, =gUnknown_0202449C
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0x80
	ldrb r0, [r0]
	mov r5, r9
	strb r0, [r5]
	strb r0, [r2]
	ldr r1, =gUnknown_0202433C
	ldrb r4, [r6]
	lsls r0, r4, 4
	adds r3, r0, r1
	ldrb r1, [r3]
	lsls r0, r1, 29
	mov r8, r2
	cmp r0, 0
	bge _0803E1BC
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	ldr r2, =gUnknown_020241EA
	ldr r1, =gUnknown_020241EC
	movs r0, 0xA5
	strh r0, [r1]
	strh r0, [r2]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 4
	orrs r0, r1
	str r0, [r2]
	movs r0, 0xA5
	movs r1, 0
	bl sub_80458E0
	ldrb r1, [r6]
	ldr r3, =gUnknown_0202449C
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E1BC:
	ldr r5, =gBattleMons
	mov r10, r5
	movs r0, 0x58
	adds r5, r4, 0
	muls r5, r0
	mov r0, r10
	adds r0, 0x50
	adds r0, r5, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _0803E1E2
	movs r7, 0x80
	lsls r7, 15
	ands r7, r1
	cmp r7, 0
	beq _0803E204
_0803E1E2:
	ldr r3, =gUnknown_020241EA
	ldr r2, =gUnknown_020241EC
	ldr r1, =gUnknown_02024268
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	strh r0, [r3]
	b _0803E33C
	.pool
_0803E204:
	ldr r1, =gUnknown_020242BC
	mov r12, r1
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	add r0, r12
	ldrh r3, [r0, 0x6]
	adds r1, r3, 0
	cmp r1, 0
	beq _0803E2DC
	ldrb r2, [r0, 0xC]
	lsls r0, r2, 1
	adds r0, r5
	mov r4, r10
	adds r4, 0xC
	adds r0, r4
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803E268
	ldr r2, =gUnknown_020241EA
	ldr r0, =gUnknown_020241EC
	strh r3, [r0]
	strh r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xC]
	mov r3, r9
	strb r0, [r3]
	mov r5, r8
	strb r0, [r5]
	ldrh r0, [r2]
	movs r1, 0
	bl sub_80458E0
	ldrb r1, [r6]
	ldr r3, =gUnknown_0202449C
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E268:
	cmp r1, 0
	beq _0803E2DC
	cmp r1, r0
	beq _0803E2DC
	mov r5, r9
	strb r2, [r5]
	mov r0, r8
	strb r2, [r0]
	ldr r3, =gUnknown_020241EA
	ldr r2, =gUnknown_020241EC
	ldrb r0, [r0]
	lsls r0, 1
	ldrb r1, [r6]
	movs r5, 0x58
	muls r1, r5
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	movs r2, 0
	strh r7, [r0, 0x6]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	strb r2, [r0, 0xC]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	ldrb r2, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xE]
	ldrh r0, [r3]
	movs r1, 0
	bl sub_80458E0
	ldrb r1, [r6]
	ldr r3, =gUnknown_0202449C
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E2DC:
	ldr r3, =gBattleMons
	mov r5, r8
	ldrb r0, [r5]
	lsls r0, 1
	ldr r4, =gUnknown_0202420B
	ldrb r2, [r4]
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldr r1, =gUnknown_02024274
	lsls r2, 1
	adds r2, r1
	ldrh r3, [r0]
	ldrh r2, [r2]
	cmp r3, r2
	beq _0803E334
	ldr r1, =gUnknown_020241EA
	ldr r0, =gUnknown_020241EC
	strh r3, [r0]
	strh r3, [r1]
	ldrh r0, [r1]
	movs r1, 0
	bl sub_80458E0
	ldrb r1, [r4]
	ldr r2, =gUnknown_0202449C
	ldr r2, [r2]
_0803E316:
	adds r1, r2
	strb r0, [r1, 0xC]
	b _0803E33C
	.pool
_0803E334:
	ldr r1, =gUnknown_020241EA
	ldr r0, =gUnknown_020241EC
	strh r3, [r0]
	strh r3, [r1]
_0803E33C:
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_0202420B
	ldrb r3, [r1]
	movs r0, 0x58
	muls r0, r3
	adds r0, r2
	ldrh r0, [r0, 0x28]
	mov r8, r1
	cmp r0, 0
	beq _0803E384
	adds r0, r3, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803E37C
	ldr r0, =gUnknown_03005D10
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0, 0x22]
	b _0803E384
	.pool
_0803E37C:
	ldr r0, =gUnknown_03005D10
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0, 0x24]
_0803E384:
	mov r1, r8
	ldrb r0, [r1]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gUnknown_02024294
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r5, r0, r1
	ldrb r0, [r5, 0x8]
	cmp r0, 0
	beq _0803E400
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	bne _0803E400
	mov r3, r8
	ldrb r0, [r3]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5, 0x9]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E400
	ldr r1, =gBattleMons
	ldrb r2, [r5, 0x9]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0803E400
	ldr r0, =gEnemyMonIndex
	strb r2, [r0]
	b _0803E76A
	.pool
_0803E400:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	ldr r5, =gUnknown_0202420B
	mov r8, r5
	cmp r0, 0
	bne _0803E412
	b _0803E6E0
_0803E412:
	ldr r1, =gUnknown_02024294
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x8]
	cmp r5, 0
	beq _0803E424
	b _0803E630
_0803E424:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _0803E440
	ldrb r0, [r4, 0x6]
	cmp r0, 0x10
	bne _0803E440
	b _0803E630
_0803E440:
	ldr r3, =gBattleMons
	ldr r2, =gUnknown_0202420B
	ldrb r6, [r2]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, r6, r0
	ldrb r1, [r0, 0xC]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0x1F
	bne _0803E460
	b _0803E630
_0803E460:
	ldrb r0, [r4, 0x2]
	cmp r0, 0xD
	beq _0803E468
	b _0803E630
_0803E468:
	adds r0, r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gUnknown_02024064
	strb r5, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	bcs _0803E4E0
	adds r4, r1, 0
_0803E480:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0803E4CE
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r1, r0
	ldrb r0, [r1, 0xC]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0803E4CE
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1F
	bne _0803E4CE
	adds r0, r2, 0
	bl sub_8048728
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [sp]
	cmp r0, r3
	bcs _0803E4CE
	ldrb r0, [r4]
	bl sub_8048728
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
_0803E4CE:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803E480
_0803E4E0:
	ldr r5, [sp]
	cmp r5, 0x4
	beq _0803E4E8
	b _0803E5E2
_0803E4E8:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EC
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	ands r5, r0
	cmp r5, 0
	beq _0803E568
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803E548
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803E544
	movs r0, 0x1
	b _0803E55A
	.pool
_0803E544:
	movs r0, 0x3
	b _0803E55A
_0803E548:
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803E558
	movs r0, 0
	b _0803E55A
_0803E558:
	movs r0, 0x2
_0803E55A:
	bl battle_get_side_with_given_state
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	b _0803E578
	.pool
_0803E568:
	ldr r2, =gEnemyMonIndex
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r2]
_0803E578:
	ldr r7, =gUnknown_02024210
	ldrb r0, [r7]
	ldr r1, =gBitTable
	mov r8, r1
	ldr r5, =gEnemyMonIndex
	ldrb r1, [r5]
	lsls r1, 2
	add r1, r8
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0803E592
	b _0803E76A
_0803E592:
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E5C4
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E5C4:
	ldrb r0, [r6]
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
	ldrb r1, [r7]
	ldrb r2, [r5]
	lsls r0, r2, 2
	add r0, r8
	b _0803E74E
_0803E5E2:
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202407E
	ldr r3, [sp]
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r4]
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r1, r2
	adds r1, 0x20
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r4]
	strb r0, [r1]
	b _0803E76A
	.pool
_0803E630:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r4, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0803E6E0
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EC
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0803E6E0
	mov r5, r8
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803E684
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0803E680
	movs r0, 0x1
	b _0803E696
	.pool
_0803E680:
	movs r0, 0x3
	b _0803E696
_0803E684:
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0803E694
	movs r0, 0
	b _0803E696
_0803E694:
	movs r0, 0x2
_0803E696:
	bl battle_get_side_with_given_state
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E76A
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E6E0:
	ldr r5, =gEnemyMonIndex
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r5]
	ldr r6, =gUnknown_02024210
	ldrb r1, [r6]
	ldr r7, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	ldrb r0, [r2]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E730
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E730:
	mov r1, r8
	ldrb r0, [r1]
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
	ldrb r1, [r6]
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r7
_0803E74E:
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	adds r0, r2, 0
_0803E758:
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
_0803E76A:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 10
	ands r1, r2
	adds r5, r0, 0
	cmp r1, 0
	beq _0803E808
	ldr r0, =gUnknown_0202433C
	ldr r4, =gUnknown_0202420B
	ldrb r2, [r4]
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	lsls r0, 27
	cmp r0, 0
	bge _0803E808
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0803E7B4
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	b _0803E83C
	.pool
_0803E7B4:
	ldr r3, =gUnknown_02024230
	lsls r0, r2, 2
	adds r0, r3
	ldr r0, [r0]
	cmp r0, 0
	beq _0803E7EC
	ldr r1, =gUnknown_02024332
	movs r2, 0
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3
	str r2, [r0]
	b _0803E824
	.pool
_0803E7EC:
	ldr r1, =gUnknown_02024332
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6AD
	str r0, [r1]
	b _0803E824
	.pool
_0803E808:
	ldr r4, =gUnknown_02024214
	ldr r3, =gUnknown_082D86A8
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
_0803E824:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0803E838
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl sub_81A56E8
_0803E838:
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
_0803E83C:
	strb r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E0B8

	thumb_func_start bs2_8016374
bs2_8016374: @ 803E868
	push {r4,lr}
	ldr r3, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, =gUnknown_02022E14
	movs r2, 0
	strh r2, [r0]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r1, =gUnknown_020244AC
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r1, =gUnknown_020244B0
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r2, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x7
	strb r0, [r2, 0x1]
	ldrb r4, [r3]
	strb r4, [r2, 0x2]
	ldrb r0, [r3]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	adds r0, 0x58
	ldrb r0, [r0]
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAB15
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, =gUnknown_03005D10
	ldrb r0, [r1, 0x2]
	cmp r0, 0xFE
	bhi _0803E8CE
	adds r0, 0x1
	strb r0, [r1, 0x2]
_0803E8CE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bs2_8016374

	thumb_func_start sub_803E90C
sub_803E90C: @ 803E90C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, =gUnknown_0202420B
	ldr r2, =gEnemyMonIndex
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r4]
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldrb r0, [r4]
	bl sub_8045868
	ldr r5, =gUnknown_02024208
	ldr r2, =gUnknown_02023864
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	strh r3, [r5]
	cmp r3, 0xC
	bhi _0803E998
	ldr r2, =gUnknown_02024214
	ldr r1, =gUnknown_082DBD08
	ldrh r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, =gUnknown_02024083
	mov r10, r0
	b _0803EBF6
	.pool
_0803E998:
	adds r0, r3, 0
	subs r0, 0x50
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _0803E9C0
	ldr r0, =gUnknown_02024214
	ldr r1, =gUnknown_082DBD54
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, =gUnknown_02024083
	mov r10, r1
	b _0803EBF6
	.pool
_0803E9C0:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803E9E8
	ldr r0, =gUnknown_02024214
	ldr r1, =gUnknown_082DBD3C
	ldr r1, [r1]
	str r1, [r0]
	ldr r2, =gUnknown_02024083
	mov r10, r2
	b _0803EBF6
	.pool
_0803E9E8:
	ldr r3, =gUnknown_02024474
	ldrb r0, [r4]
	strb r0, [r3, 0x17]
	lsls r0, 24
	lsrs r0, 25
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r0, r1
	adds r0, 0xC4
	ldrb r0, [r0]
	subs r0, 0x1
	mov r8, r4
	ldr r1, =gUnknown_02024214
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	mov r12, r3
	adds r7, r2, 0
	ldr r2, =gUnknown_02024083
	mov r10, r2
	cmp r0, 0x4
	bls _0803EA14
	b _0803EBDE
_0803EA14:
	lsls r0, 2
	ldr r1, =_0803EA38
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803EA38:
	.4byte _0803EBDE
	.4byte _0803EBDE
	.4byte _0803EA4C
	.4byte _0803EAE0
	.4byte _0803EBB0
_0803EA4C:
	ldr r5, =gUnknown_02024332
	movs r0, 0
	strb r0, [r5, 0x5]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	mov r8, r2
	cmp r0, 0
	beq _0803EA98
	movs r0, 0x3E
	ands r0, r1
	ldr r1, =gUnknown_02024214
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r2, =gUnknown_02024083
	mov r10, r2
	cmp r0, 0
	bne _0803EA7E
	b _0803EBDE
_0803EA7E:
	movs r0, 0x5
	strb r0, [r5, 0x5]
	b _0803EBDE
	.pool
_0803EA98:
	ldr r0, =gUnknown_02024214
	mov r9, r0
	ldr r6, =gUnknown_082DBD3C
	ldr r1, =gUnknown_02024083
	mov r10, r1
	mov r4, r8
	adds r3, r7, 0
	adds r2, r5, 0
_0803EAA8:
	ldrb r1, [r4]
	lsrs r1, 1
	ldr r0, [r3]
	adds r1, r0
	adds r1, 0xC6
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	ldrb r0, [r2, 0x5]
	adds r0, 0x1
	strb r0, [r2, 0x5]
	ldrb r0, [r4]
	lsrs r0, 1
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803EAA8
	b _0803EBDE
	.pool
_0803EAE0:
	ldr r3, =gUnknown_02024332
	movs r0, 0x4
	strb r0, [r3, 0x5]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r6, r0, 0
	adds r6, 0xC6
	ldrb r1, [r6]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	mov r8, r2
	cmp r5, 0
	beq _0803EB28
	movs r0, 0x5
	strb r0, [r3, 0x5]
	ldr r2, =gUnknown_02024214
	mov r9, r2
	ldr r6, =gUnknown_082DBD3C
	ldr r0, =gUnknown_02024083
	mov r10, r0
	b _0803EBDE
	.pool
_0803EB28:
	ldr r3, =gUnknown_02022F58
	movs r4, 0xFD
	strb r4, [r3]
	movs r0, 0x5
	strb r0, [r3, 0x1]
	movs r2, 0x1
	strb r2, [r3, 0x2]
	movs r0, 0xFF
	strb r0, [r3, 0x3]
	ldr r1, =gUnknown_02022F68
	strb r4, [r1]
	strb r5, [r1, 0x1]
	movs r0, 0xD2
	strb r0, [r1, 0x2]
	strb r5, [r1, 0x3]
	subs r0, 0xD3
	strb r0, [r1, 0x4]
	ldrb r0, [r6]
	ands r2, r0
	ldr r1, =gUnknown_02024214
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r0, =gUnknown_02024083
	mov r10, r0
	cmp r2, 0
	bne _0803EB8C
	mov r5, r8
	adds r4, r7, 0
	adds r2, r3, 0
_0803EB62:
	ldrb r1, [r5]
	lsrs r1, 1
	ldr r0, [r4]
	adds r1, r0
	adds r1, 0xC6
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	ldrb r0, [r2, 0x2]
	adds r0, 0x1
	strb r0, [r2, 0x2]
	ldrb r0, [r5]
	lsrs r0, 1
	ldr r1, [r4]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803EB62
_0803EB8C:
	ldrb r0, [r3, 0x2]
	adds r0, 0xE
	movs r1, 0
	mov r2, r12
	strb r0, [r2, 0x10]
	strb r1, [r2, 0x11]
	b _0803EBDE
	.pool
_0803EBB0:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803EBCC
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0803EBD0
	.pool
_0803EBCC:
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
_0803EBD0:
	ldr r0, =gUnknown_0202420B
	mov r8, r0
	ldr r1, =gUnknown_02024214
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r2, =gUnknown_02024083
	mov r10, r2
_0803EBDE:
	mov r1, r8
	ldrb r0, [r1]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r0, 0xC4
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
_0803EBF6:
	movs r0, 0xA
	mov r1, r10
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E90C

	thumb_func_start sub_803EC20
sub_803EC20: @ 803EC20
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r7, 0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0803EC54
	ldr r1, =gUnknown_02024404
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x7]
	b _0803EC5E
	.pool
_0803EC54:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r1, r0, 24
_0803EC5E:
	ldr r0, =gUnknown_0202420F
	strb r5, [r0]
	cmp r1, 0x25
	bne _0803EC9C
	ldr r2, =gUnknown_02024208
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r2]
	ldr r0, =gUnknown_0202433C
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803EC9C:
	ldr r0, =gBattleMons
	mov r10, r0
	movs r2, 0x58
	mov r9, r2
	mov r0, r9
	muls r0, r5
	add r0, r10
	mov r8, r0
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x32
	bne _0803ED5C
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _0803ED38
	ldr r4, =gUnknown_0202449C
	ldr r1, [r4]
	adds r1, 0x6C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	bl sub_81A9E28
	lsls r0, 24
	lsrs r1, r0, 24
	mov r2, r8
	ldrh r0, [r2, 0x6]
	muls r0, r1
	movs r2, 0x1
	adds r1, r5, 0
	eors r1, r2
	mov r2, r9
	muls r2, r1
	adds r1, r2, 0
	add r1, r10
	ldrh r1, [r1, 0x6]
	bl __divsi3
	ldr r1, [r4]
	adds r1, 0x6C
	ldrb r2, [r1]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	movs r1, 0xFF
	ands r1, r0
	cmp r4, r1
	bhi _0803ED0C
	b _0803EE12
_0803ED0C:
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	ldr r0, =gUnknown_0202433C
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803ED38:
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	ldr r0, =gUnknown_0202433C
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803ED5C:
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x043f0100
	ands r0, r2
	cmp r0, 0
	beq _0803ED80
	movs r0, 0x8
	ands r2, r0
	cmp r2, 0
	beq _0803ED80
_0803ED70:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	b _0803EE12
	.pool
_0803ED80:
	ldr r0, [r1]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0803EE06
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _0803EDBC
	bl sub_81A9E28
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r4, =gBattleMons
	movs r3, 0x58
	adds r0, r5, 0
	muls r0, r3
	adds r0, r4
	ldrh r0, [r0, 0x6]
	muls r0, r1
	movs r2, 0x1
	adds r1, r5, 0
	eors r1, r2
	muls r1, r3
	adds r1, r4
	b _0803EDDA
	.pool
_0803EDBC:
	ldr r3, =gBattleMons
	movs r2, 0x58
	adds r0, r5, 0
	muls r0, r2
	adds r4, r0, r3
	movs r1, 0x1
	adds r0, r5, 0
	eors r0, r1
	muls r0, r2
	adds r1, r0, r3
	ldrh r0, [r4, 0x6]
	ldrh r2, [r1, 0x6]
	cmp r0, r2
	bcs _0803EE00
	lsls r0, 7
_0803EDDA:
	ldrh r1, [r1, 0x6]
	bl __divsi3
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r1, 0x6C
	ldrb r2, [r1]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	movs r1, 0xFF
	ands r1, r0
	cmp r4, r1
	bls _0803EE06
_0803EE00:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0803EE06:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, 0x6C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0803EE12:
	cmp r7, 0
	beq _0803EE24
	ldr r1, =gUnknown_02024082
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, =gUnknown_0202433A
	movs r0, 0x4
	strb r0, [r1]
_0803EE24:
	adds r0, r7, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_803EC20

	thumb_func_start sub_803EE48
sub_803EE48: @ 803EE48
	push {r4-r6,lr}
	ldr r4, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r5, =gUnknown_02024082
	ldrb r0, [r5]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _0803EF0C
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	strb r1, [r5]
	ldr r2, =gUnknown_02024064
	movs r0, 0
	strb r0, [r2]
	lsls r1, 24
	cmp r1, 0
	beq _0803EEE0
	adds r4, r2, 0
	ldr r6, =gUnknown_0202421C
	ldr r5, =gUnknown_0202433A
_0803EE7C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803EEBC
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803EECE
	ldrb r0, [r5]
	movs r1, 0x2
	b _0803EECA
	.pool
_0803EEBC:
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803EECE
	ldrb r0, [r5]
	movs r1, 0x1
_0803EECA:
	orrs r0, r1
	strb r0, [r5]
_0803EECE:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803EE7C
_0803EEE0:
	ldr r2, =gUnknown_0202433A
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	b _0803EF96
	.pool
_0803EF0C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0803EF4C
	ldrb r0, [r4]
	bl sub_803EC20
	lsls r0, 24
	cmp r0, 0
	bne _0803EF98
	ldrb r0, [r4]
	bl sub_8045868
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAB02
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	b _0803EF96
	.pool
_0803EF4C:
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x0400e000
	ands r0, r1
	cmp r0, 0
	beq _0803EF8C
	ldr r1, =gUnknown_02024332
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAB02
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	b _0803EF96
	.pool
_0803EF8C:
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r1, =gUnknown_0202433A
	movs r0, 0x6
_0803EF96:
	strb r0, [r1]
_0803EF98:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803EE48

	thumb_func_start sub_803EFA8
sub_803EFA8: @ 803EFA8
	ldr r2, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_803EFA8

	thumb_func_start bs5_8016AC0
bs5_8016AC0: @ 803EFF0
	ldr r2, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r1, =gUnknown_0203A04C
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_02024208
	movs r0, 0x5
	strh r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD08
	ldr r0, [r0, 0x14]
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end bs5_8016AC0

	thumb_func_start sub_803F050
sub_803F050: @ 803F050
	push {r4-r6,lr}
	ldr r3, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r6, =gUnknown_02024332
	ldr r2, =gUnknown_02023864
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	subs r0, 0x1
	strb r0, [r6, 0x5]
	ldr r1, =gUnknown_02024208
	ldrb r0, [r3]
	lsls r0, 9
	adds r2, 0x2
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, =gUnknown_03005D10
	ldrb r0, [r1, 0x1F]
	cmp r0, 0xFE
	bhi _0803F096
	adds r0, 0x1
	strb r0, [r1, 0x1F]
_0803F096:
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	adds r1, r0, 0
	adds r1, 0x7A
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0803F0A8
	adds r0, 0x1
	strb r0, [r1]
_0803F0A8:
	ldr r0, [r2]
	adds r3, r0, 0
	adds r3, 0x7B
	ldrb r5, [r3]
	adds r4, r5, 0
	cmp r4, 0x1
	bls _0803F100
	ldr r2, =gUnknown_0831BCE0
	adds r0, 0x7A
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	ldrb r6, [r6, 0x5]
	adds r0, r6
	adds r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0803F0FC
	movs r0, 0x1
	b _0803F0FE
	.pool
_0803F0FC:
	subs r0, r5, r0
_0803F0FE:
	strb r0, [r3]
_0803F100:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0x8]
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F050

	thumb_func_start sub_803F120
sub_803F120: @ 803F120
	push {r4,lr}
	ldr r2, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gUnknown_02022E14
	movs r4, 0
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r3, =gUnknown_0202449C
	ldr r0, [r3]
	adds r2, r0, 0
	adds r2, 0x7C
	ldr r1, =gUnknown_0831BCEF
	adds r0, 0x79
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x7C
	ldrb r0, [r1]
	cmp r0, 0x14
	bls _0803F162
	movs r0, 0x14
	strb r0, [r1]
_0803F162:
	ldr r0, [r3]
	adds r2, r0, 0
	adds r2, 0x7B
	ldr r1, =gUnknown_0831BCF3
	adds r0, 0x79
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x7B
	ldrb r0, [r1]
	cmp r0, 0x14
	bls _0803F188
	movs r0, 0x14
	strb r0, [r1]
_0803F188:
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x79
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0803F1C4
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	b _0803F1CA
	.pool
_0803F1C4:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
_0803F1CA:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0x4]
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F120

	thumb_func_start bs8_exit_by_flight
bs8_exit_by_flight: @ 803F1F0
	push {r4,lr}
	ldr r2, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r4, =gUnknown_02024082
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0x11
	bl audio_play
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, =gUnknown_0202433A
	movs r0, 0x4
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bs8_exit_by_flight

	thumb_func_start bs9_8016C9C
bs9_8016C9C: @ 803F22C
	ldr r3, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r0, =gUnknown_02024082
	ldrb r0, [r0]
	adds r0, r1
	ldrb r2, [r0]
	strb r2, [r3]
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0xC]
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, =gUnknown_0202407A
	movs r0, 0xC
	strb r0, [r1, 0x1]
	bx lr
	.pool
	thumb_func_end bs9_8016C9C

	thumb_func_start bsB_exit_by_move
bsB_exit_by_move: @ 803F2A4
	push {lr}
	bl sub_8041728
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _0803F2C0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4D
	strb r1, [r0]
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	strb r0, [r1]
_0803F2C0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bsB_exit_by_move

	thumb_func_start bsD_proceed
bsD_proceed: @ 803F2CC
	ldr r1, =gUnknown_02024082
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r3, =gUnknown_02024083
	ldr r2, =gUnknown_0202407A
	ldrb r0, [r1]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xf1e892af
	ands r0, r1
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end bsD_proceed

	thumb_func_start bsC_8016D70
bsC_8016D70: @ 803F300
	push {r4-r6,lr}
	ldr r1, =gUnknown_0202407E
	ldr r2, =gUnknown_02024082
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	ldr r6, =gUnknown_0202449C
	ldr r1, [r6]
	adds r0, r1
	adds r0, 0x5C
	movs r1, 0x6
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	ldr r3, =gUnknown_02024083
	ldr r1, =gUnknown_0202407A
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	bl sub_803D6A0
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xf1e892af
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_020241EA
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattleMoveDamage
	movs r4, 0
	str r4, [r0]
	ldr r0, =gBattleMoveFlags
	strb r1, [r0]
	ldr r5, =gUnknown_02024474
	strb r1, [r5, 0x18]
	strb r1, [r5, 0x19]
	ldr r2, =gUnknown_02024250
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	strh r4, [r0]
	ldr r2, =gUnknown_02024258
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	strh r4, [r0]
	ldr r0, [r6]
	strb r1, [r0, 0x13]
	ldr r0, =gUnknown_02024400
	strh r4, [r0]
	strb r1, [r5, 0x14]
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x3]
	strb r1, [r0, 0x4]
	strb r1, [r5, 0x16]
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r0, [r0, 0x8]
	adds r0, 0x20
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bsC_8016D70

	thumb_func_start get_battle_side_of_something
get_battle_side_of_something: @ 803F3CC
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	movs r0, 0
	cmp r1, 0xE
	bhi _0803F47A
	lsls r0, r1, 2
	ldr r1, =_0803F3E8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803F3E8:
	.4byte _0803F424
	.4byte _0803F430
	.4byte _0803F43C
	.4byte _0803F458
	.4byte _0803F464
	.4byte _0803F458
	.4byte _0803F464
	.4byte _0803F448
	.4byte _0803F464
	.4byte _0803F464
	.4byte _0803F44C
	.4byte _0803F464
	.4byte _0803F468
	.4byte _0803F46C
	.4byte _0803F470
_0803F424:
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F430:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F43C:
	ldr r0, =gUnknown_0202420E
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F448:
	movs r0, 0
	b _0803F47A
_0803F44C:
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0x17]
	b _0803F47A
	.pool
_0803F458:
	ldr r0, =gUnknown_0202420D
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F464:
	movs r0, 0
	b _0803F472
_0803F468:
	movs r0, 0x1
	b _0803F472
_0803F46C:
	movs r0, 0x2
	b _0803F472
_0803F470:
	movs r0, 0x3
_0803F472:
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
_0803F47A:
	pop {r1}
	bx r1
	thumb_func_end get_battle_side_of_something

	thumb_func_start sub_803F480
sub_803F480: @ 803F480
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 16
	lsrs r2, 16
	ldr r1, =gBattleMons
	movs r4, 0x58
	muls r0, r4
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, 0x2E
	bne _0803F532
	movs r3, 0
	adds r0, r5, 0
	muls r0, r4
	adds r1, 0xC
	adds r1, r0, r1
	b _0803F4BC
	.pool
_0803F4B4:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	bgt _0803F4C2
_0803F4BC:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0803F4B4
_0803F4C2:
	cmp r3, 0x4
	beq _0803F532
	movs r7, 0x58
	adds r2, r5, 0
	muls r2, r7
	adds r0, r3, r2
	mov r6, r12
	adds r6, 0x24
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F4DE
	subs r0, 0x1
	strb r0, [r1]
_0803F4DE:
	mov r0, r12
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F532
	ldr r1, =gUnknown_020242BC
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F532
	ldr r4, =gUnknown_02024064
	strb r5, [r4]
	adds r1, r3, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r7
	adds r0, r6
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803F532:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F480

	thumb_func_start sub_803F548
sub_803F548: @ 803F548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x4
	mov r8, r0
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803F5F0
	ldr r1, =gBattleMons
	movs r0, 0x58
	adds r7, r5, 0
	muls r7, r0
	adds r1, 0xC
	mov r10, r1
_0803F57E:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r6, r4, 0x1
	cmp r9, r0
	beq _0803F5E6
	ldr r0, =gBattleMons
	movs r3, 0x58
	adds r1, r4, 0
	muls r1, r3
	adds r1, r0
	adds r1, 0x20
	ldrb r1, [r1]
	adds r4, r0, 0
	cmp r1, 0x2E
	bne _0803F5E6
	movs r2, 0
	adds r0, r5, 0
	muls r0, r3
	adds r1, r4, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x8F
	lsls r1, 1
	cmp r0, r1
	beq _0803F5CE
	adds r3, r1, 0
	mov r0, r10
	adds r1, r7, r0
_0803F5C0:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _0803F5CE
	ldrh r0, [r1]
	cmp r0, r3
	bne _0803F5C0
_0803F5CE:
	cmp r2, 0x4
	beq _0803F5E6
	mov r8, r2
	adds r1, r2, r7
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F5E6
	subs r0, 0x1
	strb r0, [r1]
_0803F5E6:
	adds r4, r6, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803F57E
_0803F5F0:
	mov r1, r8
	cmp r1, 0x4
	beq _0803F658
	ldr r6, =gBattleMons
	movs r3, 0x58
	adds r0, r5, 0
	muls r0, r3
	adds r1, r6, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F658
	ldr r1, =gUnknown_020242BC
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	mov r4, r8
	lsls r0, r4, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F658
	ldr r4, =gUnknown_02024064
	strb r5, [r4]
	mov r1, r8
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r3
	adds r2, r6, 0
	adds r2, 0x24
	adds r0, r2
	add r0, r8
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803F658:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F548

	thumb_func_start sub_803F67C
sub_803F67C: @ 803F67C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r3, r0, 24
	movs r6, 0x4
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	mov r8, r0
	ldrb r0, [r0]
	cmp r1, r0
	bge _0803F6FE
	ldr r7, =gBattleMons
	movs r2, 0x58
	mov r12, r2
	mov r5, r12
	muls r5, r3
	adds r0, r7, 0
	adds r0, 0xC
	adds r2, r5, r0
	mov r10, r2
	mov r9, r5
_0803F6AE:
	mov r0, r12
	muls r0, r1
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	adds r4, r1, 0x1
	cmp r0, 0x2E
	bne _0803F6F4
	cmp r1, r3
	beq _0803F6F4
	movs r2, 0
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, 0xC3
	beq _0803F6DE
	ldr r1, =gUnknown_02024090
	add r1, r9
_0803F6D0:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _0803F6DE
	ldrh r0, [r1]
	cmp r0, 0xC3
	bne _0803F6D0
_0803F6DE:
	cmp r2, 0x4
	beq _0803F6F4
	adds r6, r2, 0
	adds r0, r6, r5
	ldr r2, =gUnknown_020240A8
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F6F4
	subs r0, 0x1
	strb r0, [r1]
_0803F6F4:
	adds r1, r4, 0
	mov r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	blt _0803F6AE
_0803F6FE:
	cmp r6, 0x4
	beq _0803F762
	ldr r7, =gBattleMons
	movs r5, 0x58
	adds r0, r3, 0
	muls r0, r5
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F762
	ldr r1, =gUnknown_020242BC
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r6, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F762
	ldr r4, =gUnknown_02024064
	strb r3, [r4]
	adds r1, r6, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r5
	adds r2, r7, 0
	adds r2, 0x24
	adds r0, r2
	adds r0, r6
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0803F762:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F67C

	thumb_func_start sub_803F790
sub_803F790: @ 803F790
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803F7D0
	movs r2, 0
	ldr r4, =gUnknown_0202406C
	ldrb r0, [r4]
	cmp r2, r0
	bge _0803F7EE
	ldr r3, =gUnknown_02024068
	ldr r5, =gBitTable
_0803F7AC:
	ldm r5!, {r1}
	lsls r1, 28
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _0803F7AC
	b _0803F7EE
	.pool
_0803F7D0:
	movs r2, 0
	ldr r4, =gUnknown_0202406C
	ldrb r0, [r4]
	cmp r2, r0
	bge _0803F7EE
	ldr r3, =gUnknown_02024068
	ldr r5, =gBitTable
_0803F7DE:
	ldr r0, [r3]
	ldm r5!, {r1}
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _0803F7DE
_0803F7EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F790

	thumb_func_start dp01_battle_side_mark_buffer_for_execution
dp01_battle_side_mark_buffer_for_execution: @ 803F800
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803F834
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0803F844
	.pool
_0803F834:
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r2]
_0803F844:
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp01_battle_side_mark_buffer_for_execution

	thumb_func_start sub_803F850
sub_803F850: @ 803F850
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r4, 0
	ldr r5, =gUnknown_02024068
	ldr r1, =gBitTable
	lsls r0, r7, 2
	adds r6, r0, r1
	b _0803F87A
	.pool
_0803F86C:
	lsls r0, r4, 2
	ldr r1, [r6]
	lsls r1, r0
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	adds r4, 0x1
_0803F87A:
	bl sub_8009FCC
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	blt _0803F86C
	ldr r2, =gUnknown_02024068
	movs r1, 0x80
	lsls r1, 21
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F850

	thumb_func_start b_cancel_multi_turn_move_maybe
b_cancel_multi_turn_move_maybe: @ 803F8A0
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleMons
	movs r2, 0x58
	adds r3, r0, 0
	muls r3, r2
	adds r1, 0x50
	adds r3, r1
	ldr r1, [r3]
	ldr r2, =0xffffefff
	ands r1, r2
	ldr r2, =0xfffff3ff
	ands r1, r2
	movs r2, 0x71
	negs r2, r2
	ands r1, r2
	ldr r2, =0xfffffcff
	ands r1, r2
	str r1, [r3]
	ldr r1, =gUnknown_020242AC
	lsls r2, r0, 2
	adds r2, r1
	ldr r1, [r2]
	ldr r3, =0xfffbff3f
	ands r1, r3
	str r1, [r2]
	ldr r2, =gUnknown_020242BC
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x11]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x11]
	movs r0, 0
	strb r0, [r1, 0x10]
	bx lr
	.pool
	thumb_func_end b_cancel_multi_turn_move_maybe

	thumb_func_start sub_803F90C
sub_803F90C: @ 803F90C
	push {lr}
	lsls r0, 24
	ldr r1, =gUnknown_0202433C
	lsrs r0, 20
	adds r1, r0, r1
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	bne _0803F952
	ldrb r2, [r1, 0x1]
	lsls r0, r2, 30
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 26
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 25
	cmp r0, 0
	blt _0803F952
	lsrs r0, r2, 7
	cmp r0, 0
	bne _0803F952
	ldrb r1, [r1, 0x2]
	lsls r0, r1, 31
	cmp r0, 0
	bne _0803F952
	lsls r0, r1, 30
	cmp r0, 0
	blt _0803F952
	lsls r0, r1, 29
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 31
	cmp r0, 0
	beq _0803F95C
_0803F952:
	movs r0, 0x1
	b _0803F95E
	.pool
_0803F95C:
	movs r0, 0
_0803F95E:
	pop {r1}
	bx r1
	thumb_func_end sub_803F90C

	thumb_func_start b_std_message
b_std_message: @ 803F964
	push {r4,lr}
	adds r2, r0, 0
	lsls r2, 16
	lsrs r2, 16
	ldr r4, =gUnknown_02024064
	strb r1, [r4]
	movs r0, 0
	adds r1, r2, 0
	bl dp01_build_cmdbuf_x10_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_std_message

	thumb_func_start sub_803F988
sub_803F988: @ 803F988
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, =gUnknown_020243FE
	strb r3, [r0]
	strb r3, [r0, 0x1]
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	adds r6, r0, 0
	cmp r1, r2
	bge _0803F9B6
	ldr r5, =gBitTable
	adds r4, r2, 0
	ldr r2, =gUnknown_0202406E
_0803F9A4:
	ldrh r0, [r2]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	orrs r3, r0
	adds r2, 0x4
	adds r1, 0x2
	cmp r1, r4
	blt _0803F9A4
_0803F9B6:
	movs r1, 0x1
	adds r2, r6, 0
	ldrb r0, [r2]
	cmp r1, r0
	bge _0803F9D6
	ldr r5, =gUnknown_020243FE
	movs r4, 0x2
_0803F9C4:
	adds r0, r1, 0
	ands r0, r4
	asrs r0, 1
	adds r0, r5
	strb r3, [r0]
	adds r1, 0x2
	ldrb r0, [r2]
	cmp r1, r0
	blt _0803F9C4
_0803F9D6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F988

	thumb_func_start sub_803F9EC
sub_803F9EC: @ 803F9EC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803FA50
	movs r0, 0x2
	ands r0, r5
	lsls r0, 24
	lsrs r0, 25
	mov r12, r0
	ldr r1, =gUnknown_020243FE
	adds r0, r1
	strb r4, [r0]
	adds r5, r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	mov r8, r1
	cmp r4, r2
	bge _0803FA4A
	ldr r0, =gUnknown_02024210
	ldrb r7, [r0]
	ldr r1, =gBitTable
	adds r6, r2, 0
	ldr r3, =gUnknown_0202406E
	adds r2, r1, 0
_0803FA2E:
	ldr r0, [r2]
	ands r0, r7
	cmp r0, 0
	bne _0803FA40
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	orrs r4, r0
_0803FA40:
	adds r3, 0x4
	adds r2, 0x8
	adds r5, 0x2
	cmp r5, r6
	blt _0803FA2E
_0803FA4A:
	mov r0, r12
	add r0, r8
	strb r4, [r0]
_0803FA50:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F9EC

	thumb_func_start sub_803FA70
sub_803FA70: @ 803FA70
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803FA8C
	adds r0, r4, 0
	bl sub_803F9EC
	b _0803FAC2
_0803FA8C:
	movs r3, 0x1
	ldr r5, =gUnknown_0202406C
	ldrb r0, [r5]
	cmp r3, r0
	bge _0803FAC2
	ldr r0, =gUnknown_020243FE
	mov r12, r0
	movs r7, 0x2
	ldr r6, =gBitTable
	ldr r1, =gUnknown_0202406E
	lsls r0, r4, 1
	adds r4, r0, r1
_0803FAA4:
	adds r2, r3, 0
	ands r2, r7
	asrs r2, 1
	add r2, r12
	ldrh r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r3, 0x1
	ldrb r0, [r5]
	cmp r3, r0
	blt _0803FAA4
_0803FAC2:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803FA70

	thumb_func_start b_movescr_stack_push
b_movescr_stack_push: @ 803FAD8
	push {r4,lr}
	ldr r1, =gUnknown_020244A8
	ldr r1, [r1]
	ldr r3, [r1, 0x8]
	adds r4, r3, 0
	adds r4, 0x20
	ldrb r1, [r4]
	adds r2, r1, 0x1
	strb r2, [r4]
	lsls r1, 24
	lsrs r1, 22
	adds r3, r1
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_movescr_stack_push

	thumb_func_start b_movescr_stack_push_cursor
b_movescr_stack_push_cursor: @ 803FAFC
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r2, [r0, 0x8]
	adds r3, r2, 0
	adds r3, 0x20
	ldrb r0, [r3]
	adds r1, r0, 0x1
	strb r1, [r3]
	lsls r0, 24
	lsrs r0, 22
	adds r2, r0
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end b_movescr_stack_push_cursor

	thumb_func_start b_movescr_stack_pop_cursor
b_movescr_stack_pop_cursor: @ 803FB24
	ldr r3, =gUnknown_02024214
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r1, [r0, 0x8]
	adds r2, r1, 0
	adds r2, 0x20
	ldrb r0, [r2]
	subs r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 22
	adds r1, r0
	ldr r0, [r1]
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end b_movescr_stack_pop_cursor

	thumb_func_start sub_803FB4C
sub_803FB4C: @ 803FB4C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_02023864
	ldr r3, =gUnknown_02024064
	ldrb r4, [r3]
	lsls r0, r4, 9
	adds r1, 0x2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	muls r1, r4
	adds r0, r1
	adds r2, 0xC
	adds r0, r2
	ldrh r5, [r0]
	ldr r1, =gUnknown_0202449C
	lsls r0, r4, 1
	adds r0, 0xC8
	ldr r1, [r1]
	adds r1, r0
	mov r8, r1
	ldr r1, =gUnknown_020242BC
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x4]
	adds r7, r3, 0
	adds r3, r1, 0
	cmp r0, r5
	bne _0803FC06
	cmp r5, 0
	beq _0803FC06
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x17]
	ldr r0, =gUnknown_020241EA
	strh r5, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803FBF8
	ldr r1, =gUnknown_02024230
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DAE2A
	str r1, [r0]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FC06
	.pool
_0803FBF8:
	ldr r0, =gUnknown_02024220
	ldrb r1, [r7]
	lsls r1, 2
	adds r1, r0
	ldr r0, =gUnknown_082DAE1F
	str r0, [r1]
	movs r6, 0x1
_0803FC06:
	ldr r1, =gUnknown_02024248
	ldrb r2, [r7]
	lsls r0, r2, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r5, r0
	bne _0803FC90
	cmp r5, 0xA5
	beq _0803FC90
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	bge _0803FC90
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803FC7C
	ldr r1, =gUnknown_02024230
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB098
	str r1, [r0]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FC8E
	.pool
_0803FC7C:
	ldr r1, =gUnknown_02024220
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB089
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0803FC8E:
	ldr r3, =gUnknown_020242BC
_0803FC90:
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r1, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _0803FD1A
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _0803FD1A
	ldr r0, =gUnknown_020241EA
	strh r5, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803FD08
	ldr r1, =gUnknown_02024230
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB0AF
	str r1, [r0]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FD1A
	.pool
_0803FD08:
	ldr r1, =gUnknown_02024220
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB0A0
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0803FD1A:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r1, r5, 0
	bl sub_8040130
	lsls r0, 24
	cmp r0, 0
	beq _0803FD8E
	ldr r0, =gUnknown_020241EA
	strh r5, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803FD7C
	ldr r1, =gUnknown_02024230
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB185
	str r1, [r0]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r4]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FD8E
	.pool
_0803FD7C:
	ldr r1, =gUnknown_02024220
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB181
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0803FD8E:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_02024064
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0803FDC4
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	b _0803FDCE
	.pool
_0803FDC4:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
_0803FDCE:
	ldr r2, =gUnknown_0202420F
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r0, =gBattleMons
	mov r12, r0
	adds r7, r1, 0
	cmp r4, 0x1D
	bne _0803FE58
	mov r0, r8
	ldrh r1, [r0]
	adds r2, r1, 0
	cmp r2, 0
	beq _0803FE58
	ldr r0, =0x0000ffff
	cmp r2, r0
	beq _0803FE58
	cmp r2, r5
	beq _0803FE58
	ldr r0, =gUnknown_020241EA
	strh r1, [r0]
	ldr r2, =gUnknown_02024208
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	ldrh r0, [r0, 0x2E]
	strh r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 10
	ands r1, r0
	ldrb r2, [r7]
	cmp r1, 0
	beq _0803FE48
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FE58
	.pool
_0803FE48:
	ldr r1, =gUnknown_02024220
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB812
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0803FE58:
	ldr r0, =gUnknown_02023864
	ldrb r3, [r7]
	lsls r1, r3, 9
	adds r0, 0x2
	adds r1, r0
	movs r0, 0x58
	muls r0, r3
	ldrb r1, [r1]
	adds r0, r1
	mov r1, r12
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803FEB8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803FEA8
	ldr r0, =gUnknown_0202433C
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1, 0x2]
	b _0803FEB8
	.pool
_0803FEA8:
	ldr r1, =gUnknown_02024220
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB076
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0803FEB8:
	adds r0, r6, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_803FB4C

	thumb_func_start sub_803FECC
sub_803FECC: @ 803FECC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	lsls r2, 24
	lsrs r3, r2, 24
	ldr r1, =gUnknown_0202449C
	lsls r0, r7, 1
	adds r0, 0xC8
	ldr r1, [r1]
	adds r1, r0
	str r1, [sp, 0x4]
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0803FF1C
	ldr r2, =gUnknown_02024404
	lsls r1, r7, 3
	subs r0, r1, r7
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x7]
	str r0, [sp]
	b _0803FF2E
	.pool
_0803FF1C:
	ldrh r0, [r1, 0x2E]
	str r3, [sp, 0x14]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, r7, 3
	ldr r3, [sp, 0x14]
_0803FF2E:
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	movs r0, 0
	mov r9, r0
	lsls r2, r7, 1
	str r2, [sp, 0xC]
	ldr r5, =gUnknown_020242BC
	mov r12, r5
	ldr r0, =gBattleMons
	movs r2, 0x58
	adds r6, r7, 0
	muls r6, r2
	str r6, [sp, 0x8]
	ldr r2, =gUnknown_02024090
	adds r5, r6, r2
	movs r6, 0
	str r6, [sp, 0x10]
	mov r10, r0
	subs r0, r1, r7
	lsls r0, 2
	mov r8, r0
	ldr r6, =gBitTable
_0803FF5A:
	ldrh r0, [r5]
	cmp r0, 0
	bne _0803FF70
	movs r0, 0x1
	ands r0, r3
	cmp r0, 0
	beq _0803FF70
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0803FF70:
	ldr r0, [sp, 0x8]
	add r0, r9
	mov r1, r10
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803FF90
	movs r0, 0x2
	ands r0, r3
	cmp r0, 0
	beq _0803FF90
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0803FF90:
	mov r1, r8
	add r1, r12
	ldrh r0, [r5]
	ldrh r1, [r1, 0x4]
	cmp r0, r1
	bne _0803FFAC
	movs r0, 0x4
	ands r0, r3
	cmp r0, 0
	beq _0803FFAC
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0803FFAC:
	movs r0, 0x58
	adds r2, r7, 0
	muls r2, r0
	ldr r1, [sp, 0x10]
	adds r0, r1, r2
	ldr r1, =gUnknown_02024090
	adds r0, r1
	mov r12, r0
	ldr r1, =gUnknown_02024248
	ldr r0, [sp, 0xC]
	adds r1, r0, r1
	str r1, [sp, 0x18]
	mov r1, r12
	ldrh r1, [r1]
	mov r12, r1
	ldr r0, [sp, 0x18]
	ldrh r0, [r0]
	cmp r12, r0
	bne _0803FFEE
	movs r0, 0x8
	ands r0, r3
	cmp r0, 0
	beq _0803FFEE
	mov r0, r10
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bge _0803FFEE
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0803FFEE:
	ldr r0, =gUnknown_020242BC
	add r0, r8
	ldrb r0, [r0, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _0804001C
	movs r0, 0x10
	ands r0, r3
	cmp r0, 0
	beq _0804001C
	ldr r2, =gBattleMoves
	ldrh r1, [r5]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0804001C
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804001C:
	ldrh r1, [r5]
	adds r0, r7, 0
	str r3, [sp, 0x14]
	bl sub_8040130
	lsls r0, 24
	ldr r3, [sp, 0x14]
	cmp r0, 0
	beq _0804003E
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	beq _0804003E
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804003E:
	ldr r1, =gUnknown_020242BC
	mov r0, r8
	adds r2, r0, r1
	ldrb r0, [r2, 0xE]
	lsls r0, 28
	mov r12, r1
	cmp r0, 0
	beq _0804005E
	ldrh r0, [r2, 0x6]
	ldrh r1, [r5]
	cmp r0, r1
	beq _0804005E
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804005E:
	ldr r2, [sp]
	cmp r2, 0x1D
	bne _08040080
	ldr r0, [sp, 0x4]
	ldrh r1, [r0]
	cmp r1, 0
	beq _08040080
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _08040080
	ldrh r2, [r5]
	cmp r1, r2
	beq _08040080
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08040080:
	adds r6, 0x4
	adds r5, 0x2
	ldr r0, [sp, 0x10]
	adds r0, 0x2
	str r0, [sp, 0x10]
	movs r1, 0x1
	add r9, r1
	mov r2, r9
	cmp r2, 0x3
	bgt _08040096
	b _0803FF5A
_08040096:
	adds r0, r4, 0
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_803FECC

	thumb_func_start sub_80400C8
sub_80400C8: @ 80400C8
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	movs r1, 0
	movs r2, 0xFF
	bl sub_803FECC
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0xF
	bne _0804010C
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r4]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024220
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB072
	str r1, [r0]
	b _0804011E
	.pool
_0804010C:
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r4]
	lsls r1, 4
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_0804011E:
	movs r0, 0
	cmp r3, 0xF
	bne _08040126
	movs r0, 0x1
_08040126:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80400C8

	thumb_func_start sub_8040130
sub_8040130: @ 8040130
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	movs r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	bge _080401B4
	ldr r7, =gUnknown_02024090
	mov r8, r7
_0804015A:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r9, r0
	beq _080401AA
	ldr r1, =gUnknown_020242AC
	lsls r0, r4, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _080401AA
	movs r2, 0
	movs r0, 0x58
	adds r1, r4, 0
	muls r1, r0
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r5, r0
	beq _080401A0
	mov r4, r8
	adds r0, r1, r4
_08040192:
	adds r0, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _080401AA
	ldrh r1, [r0]
	cmp r5, r1
	bne _08040192
_080401A0:
	cmp r2, 0x3
	bgt _080401AA
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_080401AA:
	adds r4, r3, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804015A
_080401B4:
	adds r0, r6, 0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8040130

	thumb_func_start sub_80401D0
sub_80401D0: @ 80401D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	mov r9, r0
	ldr r1, =gUnknown_0202420B
	mov r2, r9
	strb r2, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r4, [r0]
	adds r6, r1, 0
	mov r10, r0
	ldr r7, =gEnemyMonIndex
	ldr r3, =gUnknown_0202449C
	mov r12, r3
	cmp r9, r4
	bcs _08040224
	ldr r2, =gUnknown_02024210
	ldrb r1, [r2]
	ldr r5, =gBitTable
	ldr r0, [r5]
	ands r1, r0
	cmp r1, 0
	beq _08040224
	adds r3, r6, 0
_08040206:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcs _08040224
	ldrb r0, [r2]
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _08040206
_08040224:
	movs r0, 0
	strb r0, [r7]
	mov r0, r10
	ldrb r4, [r0]
	cmp r4, 0
	beq _0804025E
	ldr r2, =gUnknown_02024210
	ldrb r1, [r2]
	ldr r5, =gBitTable
	ldr r0, [r5]
	ands r1, r0
	cmp r1, 0
	beq _0804025E
	adds r3, r7, 0
_08040240:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcs _0804025E
	ldrb r0, [r2]
	ldrb r1, [r7]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _08040240
_0804025E:
	mov r1, r12
	ldr r0, [r1]
	ldrb r0, [r0, 0x3]
	cmp r0, 0xA
	bls _0804026A
	b _080408F6
_0804026A:
	lsls r0, 2
	ldr r1, =_08040290
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08040290:
	.4byte _080402BC
	.4byte _08040342
	.4byte _08040408
	.4byte _080404D4
	.4byte _080405B0
	.4byte _08040668
	.4byte _0804071C
	.4byte _080407A0
	.4byte _08040810
	.4byte _08040868
	.4byte _080408EC
_080402BC:
	movs r5, 0
	ldr r1, =gUnknown_0202406C
	mov r10, r1
	ldrb r2, [r1]
	cmp r5, r2
	bge _080402D6
	ldr r2, =gUnknown_0202407E
_080402CA:
	adds r0, r5, r2
	strb r5, [r0]
	adds r5, 0x1
	ldrb r3, [r1]
	cmp r5, r3
	blt _080402CA
_080402D6:
	movs r5, 0
	b _08040324
	.pool
_080402E4:
	adds r4, r5, 0x1
	adds r6, r4, 0
	ldrb r1, [r1]
	cmp r6, r1
	bge _08040322
	ldr r7, =gUnknown_0202407E
	ldr r0, =gUnknown_0202406C
	mov r10, r0
	lsls r1, r5, 24
	mov r8, r1
_080402F8:
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r1, r4, r7
	ldrb r1, [r1]
	movs r2, 0
	bl b_first_side
	lsls r0, 24
	cmp r0, 0
	beq _08040318
	lsls r1, r4, 24
	lsrs r1, 24
	mov r2, r8
	lsrs r0, r2, 24
	bl sub_803CEDC
_08040318:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _080402F8
_08040322:
	adds r5, r6, 0
_08040324:
	mov r1, r10
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _080402E4
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	ldrb r0, [r1, 0x3]
	adds r0, 0x1
	strb r0, [r1, 0x3]
	ldr r0, [r2]
	adds r0, 0xDB
	movs r1, 0
	strb r1, [r0]
	mov r12, r2
_08040342:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _08040350
	b _0804062C
_08040350:
	ldr r3, =gUnknown_02024064
	mov r8, r3
	movs r7, 0
	ldr r6, =gUnknown_0202420B
	ldr r5, =gUnknown_02022F58
_0804035A:
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r4, [r0]
	ldr r2, =gUnknown_02024294
	lsls r1, r4, 1
	adds r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2, 0x1]
	strb r0, [r6]
	mov r3, r8
	strb r0, [r3]
	ldr r0, =gUnknown_0202428E
	adds r3, r1, r0
	ldrh r1, [r3]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080403BC
	ldrb r0, [r2]
	subs r0, 0x1
	strb r0, [r2]
	movs r4, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _080403BC
	ldrh r0, [r3]
	ldr r2, =0x0000fffe
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, =gUnknown_082DACFA
	bl b_call_bc_move_exec
	movs r0, 0xFD
	strb r0, [r5]
	movs r0, 0x2
	strb r0, [r5, 0x1]
	movs r0, 0x73
	strb r0, [r5, 0x2]
	strb r7, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r4
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080403BC:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0xDB
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	mov r3, r9
	cmp r3, 0
	beq _080403D2
	b _080408FE
_080403D2:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _0804035A
	b _0804062C
	.pool
_08040408:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _08040416
	b _08040570
_08040416:
	movs r0, 0x2
	mov r10, r0
	movs r2, 0
	mov r8, r2
	ldr r7, =gUnknown_0202420B
	ldr r5, =gUnknown_02022F58
_08040422:
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r4, [r0]
	ldr r2, =gUnknown_02024294
	lsls r1, r4, 1
	adds r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2, 0x3]
	strb r0, [r7]
	ldr r3, =gUnknown_02024064
	strb r0, [r3]
	ldr r0, =gUnknown_0202428E
	adds r3, r1, r0
	ldrh r1, [r3]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0804048A
	ldrb r0, [r2, 0x2]
	subs r0, 0x1
	strb r0, [r2, 0x2]
	movs r6, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _0804048A
	ldrh r0, [r3]
	ldr r2, =0x0000fffd
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, =gUnknown_082DACFA
	bl b_call_bc_move_exec
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	movs r0, 0xFD
	strb r0, [r5]
	mov r3, r10
	strb r3, [r5, 0x1]
	movs r0, 0x71
	strb r0, [r5, 0x2]
	mov r0, r8
	strb r0, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r6
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0804048A:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0xDB
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	mov r1, r9
	cmp r1, 0
	beq _080404A0
	b _080408FE
_080404A0:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _08040422
	b _08040570
	.pool
_080404D4:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bhi _08040570
	ldr r0, =gUnknown_02024064
	mov r10, r0
	movs r2, 0
	mov r8, r2
	ldr r7, =gUnknown_0202420B
	ldr r5, =gUnknown_02022F58
_080404EC:
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r4, [r0]
	ldr r1, =gUnknown_02024294
	lsls r3, r4, 1
	adds r0, r3, r4
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x5]
	strb r0, [r7]
	mov r2, r10
	strb r0, [r2]
	ldrb r0, [r1, 0x4]
	cmp r0, 0
	beq _0804054E
	subs r0, 0x1
	strb r0, [r1, 0x4]
	movs r6, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _0804054E
	ldr r2, =gUnknown_0202428E
	adds r2, r3, r2
	ldrh r0, [r2]
	ldr r3, =0x0000feff
	adds r1, r3, 0
	ands r0, r1
	strh r0, [r2]
	ldr r0, =gUnknown_082DACFA
	bl b_call_bc_move_exec
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	movs r0, 0xFD
	strb r0, [r5]
	movs r0, 0x2
	strb r0, [r5, 0x1]
	movs r0, 0x36
	strb r0, [r5, 0x2]
	mov r0, r8
	strb r0, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r6
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0804054E:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0xDB
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	mov r1, r9
	cmp r1, 0
	beq _08040564
	b _080408FE
_08040564:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _080404EC
_08040570:
	mov r2, r9
	cmp r2, 0
	beq _08040578
	b _080408FE
_08040578:
	mov r3, r12
	ldr r0, [r3]
	ldrb r1, [r0, 0x3]
	adds r1, 0x1
	strb r1, [r0, 0x3]
	ldr r0, [r3]
	adds r0, 0xDB
	strb r2, [r0]
	b _080408F6
	.pool
_080405B0:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bhi _0804062C
	ldr r6, =gUnknown_02024064
	ldr r5, =gUnknown_0202420B
_080405C0:
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r4, [r0]
	ldr r2, =gUnknown_02024294
	lsls r1, r4, 1
	adds r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2, 0x7]
	strb r0, [r5]
	strb r0, [r6]
	ldr r0, =gUnknown_0202428E
	adds r3, r1, r0
	ldrh r1, [r3]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0804060A
	ldrb r0, [r2, 0x6]
	subs r0, 0x1
	strb r0, [r2, 0x6]
	lsls r0, 24
	cmp r0, 0
	bne _0804060A
	ldrh r0, [r3]
	ldr r2, =0x0000ffdf
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, =gUnknown_082DAD0B
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0804060A:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0xDB
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	mov r3, r9
	cmp r3, 0
	beq _08040620
	b _080408FE
_08040620:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0xDB
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _080405C0
_0804062C:
	mov r0, r9
	cmp r0, 0
	beq _08040634
	b _080408FE
_08040634:
	mov r1, r12
	ldr r0, [r1]
	ldrb r1, [r0, 0x3]
	adds r1, 0x1
	strb r1, [r0, 0x3]
	mov r2, r12
	ldr r0, [r2]
	adds r0, 0xDB
	mov r3, r9
	strb r3, [r0]
	b _080408F6
	.pool
_08040668:
	mov r2, r12
	ldr r0, [r2]
	adds r0, 0xDB
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _080406E8
	ldr r4, =gUnknown_02024064
	ldr r5, =gUnknown_0202407E
_0804067C:
	ldr r0, [r2]
	adds r0, 0xDB
	ldrb r0, [r0]
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x20
	ldrb r2, [r4]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _080406C4
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080406C4
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _080406C4
	ldr r0, =gEnemyMonIndex
	strb r2, [r0]
	ldr r0, =gUnknown_082DB0B7
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080406C4:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0xDB
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	mov r3, r9
	cmp r3, 0
	beq _080406DA
	b _080408FE
_080406DA:
	ldr r0, [r2]
	adds r0, 0xDB
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0804067C
_080406E8:
	mov r0, r9
	cmp r0, 0
	beq _080406F0
	b _080408FE
_080406F0:
	mov r2, r12
	ldr r1, [r2]
	ldrb r0, [r1, 0x3]
	adds r0, 0x1
	strb r0, [r1, 0x3]
	b _080408F6
	.pool
_0804071C:
	ldr r3, =gBattleWeather
	ldrh r2, [r3]
	movs r0, 0x7
	ands r0, r2
	cmp r0, 0
	bne _0804072A
	b _080408C8
_0804072A:
	movs r0, 0x4
	ands r0, r2
	cmp r0, 0
	bne _08040776
	ldr r1, =gUnknown_020243D0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _08040768
	ldr r0, =0x0000fffe
	ands r0, r2
	ldr r1, =0x0000fffd
	ands r0, r1
	strh r0, [r3]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08040794
	.pool
_08040768:
	movs r0, 0x2
	ands r0, r2
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	bne _08040782
	b _08040790
_08040776:
	movs r0, 0x2
	ands r0, r2
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	beq _08040790
_08040782:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08040794
	.pool
_08040790:
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
_08040794:
	ldr r0, =gUnknown_082DAC2C
	b _080408BA
	.pool
_080407A0:
	ldr r3, =gBattleWeather
	ldrh r2, [r3]
	movs r0, 0x18
	ands r0, r2
	cmp r0, 0
	bne _080407AE
	b _080408C8
_080407AE:
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	bne _080407E8
	ldr r1, =gUnknown_020243D0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080407E8
	ldr r0, =0x0000fff7
	ands r0, r2
	strh r0, [r3]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DACC9
	b _080407EC
	.pool
_080407E8:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAC47
_080407EC:
	str r0, [r1]
	adds r3, r1, 0
	ldr r1, =gUnknown_02024474
	movs r2, 0
	movs r0, 0xC
	strb r0, [r1, 0x10]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x5]
	b _080408B8
	.pool
_08040810:
	ldr r3, =gBattleWeather
	ldrh r2, [r3]
	movs r0, 0x60
	ands r0, r2
	cmp r0, 0
	beq _080408C8
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	bne _08040854
	ldr r1, =gUnknown_020243D0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _08040854
	ldr r0, =0x0000ffdf
	ands r0, r2
	strh r0, [r3]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DACE0
	b _08040858
	.pool
_08040854:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DACD2
_08040858:
	str r0, [r1]
	adds r3, r1, 0
	b _080408B8
	.pool
_08040868:
	ldr r3, =gBattleWeather
	ldrh r2, [r3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _080408C8
	ldr r1, =gUnknown_020243D0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080408A4
	ldr r0, =0x0000ff7f
	ands r0, r2
	strh r0, [r3]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DACC9
	b _080408A8
	.pool
_080408A4:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAC47
_080408A8:
	str r0, [r1]
	adds r3, r1, 0
	ldr r1, =gUnknown_02024474
	movs r0, 0xD
	strb r0, [r1, 0x10]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
_080408B8:
	ldr r0, [r3]
_080408BA:
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080408C8:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	ldrb r0, [r1, 0x3]
	adds r0, 0x1
	strb r0, [r1, 0x3]
	mov r12, r2
	b _080408F6
	.pool
_080408EC:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080408F6:
	mov r3, r9
	cmp r3, 0
	bne _080408FE
	b _0804025E
_080408FE:
	ldr r0, =gUnknown_03005D04
	ldr r1, [r0]
	ldr r0, =sub_803B9BC
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80401D0

	thumb_func_start sub_8040924
sub_8040924: @ 8040924
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r0, 0
	mov r9, r0
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0x01000020
	orrs r0, r1
	str r0, [r2]
	ldr r5, =gUnknown_0202449C
	ldr r2, [r5]
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r2, 0x1]
	adds r7, r5, 0
	mov r8, r0
	ldrb r3, [r0]
	cmp r1, r3
	bcc _08040954
	bl _08041338
_08040954:
	bl _0804132E
	.pool
_08040968:
	ldr r3, =gUnknown_02024064
	ldr r4, =gUnknown_0202420B
	ldr r1, =gUnknown_0202407E
	ldr r5, [r5]
	ldrb r0, [r5, 0x1]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	strb r0, [r3]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	adds r6, r3, 0
	cmp r1, 0
	beq _080409B0
	ldrb r0, [r5, 0x1]
	adds r0, 0x1
	strb r0, [r5, 0x1]
	bl _0804131C
	.pool
_080409B0:
	ldrb r0, [r5]
	cmp r0, 0x13
	bls _080409BA
	bl _08041312
_080409BA:
	lsls r0, 2
	ldr r1, =_080409C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080409C8:
	.4byte _08040A18
	.4byte _08040A78
	.4byte _08040A96
	.4byte _08040AC6
	.4byte _08040B44
	.4byte _08040B8C
	.4byte _08040C0C
	.4byte _08040C54
	.4byte _08040CB8
	.4byte _08040D00
	.4byte _08040E60
	.4byte _08040F7C
	.4byte _08041024
	.4byte _080410E8
	.4byte _0804119C
	.4byte _080411BC
	.4byte _08041208
	.4byte _08041238
	.4byte _08040AAE
	.4byte _08041304
_08040A18:
	ldr r1, =gUnknown_020242AC
	ldrb r3, [r6]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	bne _08040A30
	bl _080412DE
_08040A30:
	ldr r0, =gBattleMons
	movs r1, 0x58
	muls r1, r3
	adds r0, r1, r0
	ldrh r2, [r0, 0x28]
	ldrh r5, [r0, 0x2C]
	cmp r2, r5
	bne _08040A44
	bl _080412DE
_08040A44:
	cmp r2, 0
	bne _08040A4C
	bl _080412DE
_08040A4C:
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r0, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08040A5C
	movs r0, 0x1
	str r0, [r1]
_08040A5C:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldr r0, =gUnknown_082DB0EE
	bl _080412D0
	.pool
_08040A78:
	ldrb r1, [r6]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08040A92
	bl _080412DE
_08040A92:
	bl _080412D4
_08040A96:
	ldrb r1, [r6]
	movs r0, 0x1
	movs r2, 0
	bl berry_effects_maybe
	lsls r0, 24
	cmp r0, 0
	bne _08040AAA
	bl _080412DE
_08040AAA:
	bl _080412D4
_08040AAE:
	ldrb r1, [r6]
	movs r0, 0x1
	movs r2, 0x1
	bl berry_effects_maybe
	lsls r0, 24
	cmp r0, 0
	bne _08040AC2
	bl _080412DE
_08040AC2:
	bl _080412D4
_08040AC6:
	ldr r0, =gUnknown_020242AC
	ldrb r2, [r6]
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _08040ADC
	bl _080412DE
_08040ADC:
	ldr r3, =gBattleMons
	movs r5, 0x3
	ands r5, r1
	movs r1, 0x58
	adds r0, r5, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08040AF4
	bl _080412DE
_08040AF4:
	adds r0, r2, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08040B04
	bl _080412DE
_08040B04:
	ldr r0, =gEnemyMonIndex
	strb r5, [r0]
	ldr r2, =gBattleMoveDamage
	ldrb r0, [r6]
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _08040B1E
	movs r0, 0x1
	str r0, [r2]
_08040B1E:
	ldr r1, =gUnknown_02024474
	strb r5, [r1, 0x10]
	ldrb r0, [r4]
	strb r0, [r1, 0x11]
	ldr r0, =gUnknown_082DAD15
	b _080412D0
	.pool
_08040B44:
	ldr r2, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08040B60
	b _080412DE
_08040B60:
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _08040B6A
	b _080412DE
_08040B6A:
	ldr r2, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _08040B7A
	movs r0, 0x1
	str r0, [r2]
_08040B7A:
	ldr r0, =gUnknown_082DB23D
	b _080412D0
	.pool
_08040B8C:
	ldr r4, =gBattleMons
	ldrb r0, [r6]
	movs r7, 0x58
	mov r8, r7
	mov r2, r8
	muls r2, r0
	adds r3, r4, 0
	adds r3, 0x4C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08040BAA
	b _080412DE
_08040BAA:
	adds r1, r2, r4
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _08040BB4
	b _080412DE
_08040BB4:
	ldr r5, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 4
	str r0, [r5]
	cmp r0, 0
	bne _08040BC4
	movs r0, 0x1
	str r0, [r5]
_08040BC4:
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r2, r0, r3
	ldr r1, [r2]
	movs r4, 0xF0
	lsls r4, 4
	adds r0, r1, 0
	ands r0, r4
	cmp r0, r4
	beq _08040BE4
	movs r7, 0x80
	lsls r7, 1
	adds r0, r1, r7
	str r0, [r2]
_08040BE4:
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r3
	ldr r0, [r0]
	ands r0, r4
	lsrs r0, 8
	ldr r1, [r5]
	muls r0, r1
	str r0, [r5]
	ldr r0, =gUnknown_082DB23D
	b _080412D0
	.pool
_08040C0C:
	ldr r2, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08040C28
	b _080412DE
_08040C28:
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _08040C32
	b _080412DE
_08040C32:
	ldr r2, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _08040C42
	movs r0, 0x1
	str r0, [r2]
_08040C42:
	ldr r0, =gUnknown_082DB25F
	b _080412D0
	.pool
_08040C54:
	ldr r4, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	muls r1, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r5, r1, r0
	ldr r2, [r5]
	movs r0, 0x80
	lsls r0, 20
	ands r0, r2
	cmp r0, 0
	bne _08040C70
	b _080412DE
_08040C70:
	adds r3, r1, r4
	ldrh r0, [r3, 0x28]
	cmp r0, 0
	bne _08040C7A
	b _080412DE
_08040C7A:
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08040CAC
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r3, 0x2C]
	lsrs r0, 2
	str r0, [r1]
	cmp r0, 0
	bne _08040C9A
	movs r0, 0x1
	str r0, [r1]
_08040C9A:
	ldr r0, =gUnknown_082DB33F
	b _080412D0
	.pool
_08040CAC:
	ldr r0, =0xf7ffffff
	ands r2, r0
	str r2, [r5]
	b _080412DE
	.pool
_08040CB8:
	ldr r2, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 21
	ands r0, r1
	cmp r0, 0
	bne _08040CD6
	b _080412DE
_08040CD6:
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _08040CE0
	b _080412DE
_08040CE0:
	ldr r2, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 2
	str r0, [r2]
	cmp r0, 0
	bne _08040CF0
	movs r0, 0x1
	str r0, [r2]
_08040CF0:
	ldr r0, =gUnknown_082DB350
	b _080412D0
	.pool
_08040D00:
	ldr r3, =gBattleMons
	mov r8, r3
	ldrb r0, [r6]
	movs r3, 0x58
	adds r1, r0, 0
	muls r1, r3
	movs r5, 0x50
	add r5, r8
	mov r10, r5
	adds r4, r1, r5
	ldr r2, [r4]
	movs r5, 0xE0
	lsls r5, 8
	adds r0, r2, 0
	ands r0, r5
	cmp r0, 0
	bne _08040D24
	b _080412DE
_08040D24:
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08040D30
	b _080412DE
_08040D30:
	ldr r1, =0xffffe000
	adds r0, r2, r1
	str r0, [r4]
	ldrb r4, [r6]
	adds r0, r4, 0
	muls r0, r3
	add r0, r10
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	beq _08040DC0
	ldr r1, =gUnknown_02024474
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	lsls r0, r4, 1
	adds r0, r2
	ldrb r0, [r0, 0x4]
	strb r0, [r1, 0x10]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r2
	ldrb r0, [r0, 0x5]
	strb r0, [r1, 0x11]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r2
	ldrb r0, [r0, 0x4]
	strb r0, [r1, 0x2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r2
	ldrb r0, [r0, 0x5]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB30E
	str r0, [r1]
	ldr r2, =gBattleMoveDamage
	ldrb r0, [r6]
	muls r0, r3
	add r0, r8
	ldrh r0, [r0, 0x2C]
	lsrs r0, 4
	str r0, [r2]
	cmp r0, 0
	bne _08040DEC
	movs r0, 0x1
	str r0, [r2]
	b _08040DEC
	.pool
_08040DC0:
	ldr r2, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x2
	strb r0, [r2, 0x1]
	ldrb r1, [r6]
	ldr r0, =gUnknown_0202449C
	ldr r3, [r0]
	lsls r1, 1
	adds r1, r3
	ldrb r0, [r1, 0x4]
	strb r0, [r2, 0x2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r3
	ldrb r0, [r0, 0x5]
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB320
	str r0, [r1]
_08040DEC:
	ldr r0, [r1]
	b _080412D0
	.pool
_08040E00:
	movs r0, 0x8
	negs r0, r0
	ands r3, r0
	str r3, [r2]
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	mov r0, r10
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r0, =gUnknown_082DB234
	bl b_call_bc_move_exec
	ldr r4, =gUnknown_02024064
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r4]
	mov r3, r8
	muls r3, r0
	adds r0, r3, 0
	add r0, r9
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08040EC8
	.pool
_08040E60:
	ldr r2, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	muls r0, r1
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x70
	ands r1, r0
	adds r7, r2, 0
	cmp r1, 0
	beq _08040F6A
	movs r0, 0
	strb r0, [r4]
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, 0
	beq _08040EC8
	mov r10, r7
	adds r6, r4, 0
	movs r1, 0x58
	mov r8, r1
	movs r3, 0x4C
	adds r3, r7
	mov r9, r3
	str r0, [sp, 0x4]
	movs r5, 0x7
	mov r12, r5
_08040E9A:
	ldrb r4, [r6]
	mov r1, r8
	muls r1, r4
	mov r0, r9
	adds r2, r1, r0
	ldr r3, [r2]
	adds r0, r3, 0
	mov r5, r12
	ands r0, r5
	cmp r0, 0
	beq _08040EBA
	adds r0, r1, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2B
	bne _08040E00
_08040EBA:
	adds r0, r4, 0x1
	strb r0, [r6]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [sp, 0x4]
	cmp r0, r1
	bcc _08040E9A
_08040EC8:
	ldr r2, =gUnknown_0202420B
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08040EE8
	movs r3, 0x2
	mov r9, r3
	b _08041318
	.pool
_08040EE8:
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	strb r0, [r2]
	ldr r2, =gBattleMons
	ldrb r0, [r5]
	movs r7, 0x58
	adds r1, r0, 0
	muls r1, r7
	adds r6, r2, 0
	adds r6, 0x50
	adds r1, r6
	ldr r0, [r1]
	subs r0, 0x10
	str r0, [r1]
	ldrb r0, [r5]
	bl sub_803F90C
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08040F2C
	ldrb r0, [r5]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08040F60
	.pool
_08040F2C:
	ldrb r3, [r5]
	adds r0, r3, 0
	muls r0, r7
	adds r2, r0, r6
	ldr r0, [r2]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	beq _08040F54
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	b _08040F60
	.pool
_08040F54:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	adds r0, r3, 0
	bl b_cancel_multi_turn_move_maybe
_08040F60:
	ldr r0, =gUnknown_082DB2A6
	bl b_call_bc_move_exec
	movs r5, 0x1
	mov r9, r5
_08040F6A:
	mov r7, r9
	cmp r7, 0x2
	bne _08040F72
	b _08041312
_08040F72:
	b _080412DE
	.pool
_08040F7C:
	ldr r1, =gBattleMons
	ldrb r0, [r6]
	movs r7, 0x58
	muls r0, r7
	adds r5, r1, 0
	adds r5, 0x50
	adds r2, r0, r5
	ldr r1, [r2]
	movs r4, 0xC0
	lsls r4, 4
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	bne _08040F9A
	b _080412DE
_08040F9A:
	ldr r3, =0xfffffc00
	adds r0, r1, r3
	str r0, [r2]
	ldrb r0, [r6]
	bl sub_803F90C
	lsls r0, 24
	cmp r0, 0
	beq _08040FBC
	ldrb r0, [r6]
	bl b_cancel_multi_turn_move_maybe
	b _080412DE
	.pool
_08040FBC:
	ldrb r0, [r6]
	muls r0, r7
	adds r2, r0, r5
	ldr r1, [r2]
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	beq _08040FCE
	b _080412DE
_08040FCE:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _08040FDA
	b _080412DE
_08040FDA:
	ldr r0, =0xffffefff
	ands r1, r0
	str r1, [r2]
	ldrb r0, [r6]
	muls r0, r7
	adds r0, r5
	ldr r0, [r0]
	movs r4, 0x7
	ands r0, r4
	cmp r0, 0
	beq _08040FF2
	b _080412DE
_08040FF2:
	ldr r1, =gUnknown_02024332
	movs r0, 0x47
	strb r0, [r1, 0x3]
	movs r0, 0x1
	movs r1, 0
	bl sub_8048760
	ldrb r0, [r6]
	muls r0, r7
	adds r0, r5
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	bne _08041010
	b _080412D4
_08041010:
	ldr r0, =gUnknown_082DB2AF
	bl b_call_bc_move_exec
	b _080412D4
	.pool
_08041024:
	ldr r0, =gUnknown_020242BC
	ldrb r3, [r6]
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r5, r1, r0
	ldrb r1, [r5, 0xB]
	lsls r1, 28
	adds r7, r0, 0
	cmp r1, 0
	bne _0804103C
	b _080412DE
_0804103C:
	movs r4, 0
	ldr r2, =gBattleMons
	movs r0, 0x58
	adds r1, r3, 0
	muls r1, r0
	adds r2, 0xC
	adds r1, r2
	ldrh r0, [r5, 0x4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0804107A
	mov r12, r7
	mov r8, r2
	adds r5, r6, 0
	movs r3, 0x58
_0804105A:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0804107A
	ldrb r2, [r5]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r12
	lsls r0, r4, 1
	muls r2, r3
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0804105A
_0804107A:
	cmp r4, 0x4
	bne _080410AC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	strh r1, [r0, 0x4]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xB]
	b _080412DE
	.pool
_080410AC:
	ldrb r0, [r6]
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	adds r2, r7
	ldrb r3, [r2, 0xB]
	lsls r1, r3, 28
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0xB]
	adds r2, r1, 0
	cmp r2, 0
	beq _080410D4
	b _080412DE
_080410D4:
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	strh r2, [r0, 0x4]
	ldr r0, =gUnknown_082DAE23
	b _080412D0
	.pool
_080410E8:
	ldr r3, =gUnknown_020242BC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r2, r0, r3
	ldrb r5, [r2, 0xE]
	lsls r4, r5, 28
	cmp r4, 0
	bne _080410FE
	b _080412DE
_080410FE:
	ldr r7, =gBattleMons
	mov r8, r7
	ldrb r0, [r2, 0xC]
	lsls r0, 1
	movs r7, 0x58
	muls r1, r7
	adds r0, r1
	mov r1, r8
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, 0x6]
	cmp r0, r1
	beq _0804113C
	movs r0, 0
	strh r0, [r2, 0x6]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r2, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xE]
	b _080412DE
	.pool
_0804113C:
	lsrs r1, r4, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r5
	orrs r0, r1
	strb r0, [r2, 0xE]
	cmp r1, 0
	beq _08041172
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	muls r1, r7
	ldrb r0, [r0, 0xC]
	adds r1, r0
	mov r0, r8
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _08041172
	b _080412DE
_08041172:
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x6]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r2, [r1, 0xE]
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1, 0xE]
	ldr r0, =gUnknown_082DAE37
	b _080412D0
	.pool
_0804119C:
	ldr r0, =gUnknown_020242AC
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x18
	ands r0, r2
	cmp r0, 0
	beq _080411B4
	adds r0, r2, 0
	subs r0, 0x8
	str r0, [r1]
_080411B4:
	ldr r1, [r7]
	b _080412E2
	.pool
_080411BC:
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r3, r0, r2
	ldrb r2, [r3, 0x12]
	lsls r1, r2, 28
	cmp r1, 0
	beq _080411F6
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x12]
	cmp r1, 0
	bne _080411F6
	ldr r0, =gUnknown_020242AC
	ldrb r2, [r6]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xfffffdff
	ands r0, r1
	str r0, [r2]
_080411F6:
	ldr r1, [r7]
	b _080412E2
	.pool
_08041208:
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r3, r0, r2
	ldrb r2, [r3, 0x13]
	lsls r1, r2, 28
	cmp r1, 0
	beq _0804122E
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x13]
_0804122E:
	ldr r1, [r7]
	b _080412E2
	.pool
_08041238:
	ldr r4, =gUnknown_020242AC
	ldrb r0, [r6]
	lsls r0, 2
	adds r2, r0, r4
	ldr r1, [r2]
	movs r3, 0xC0
	lsls r3, 5
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _080412DE
	ldr r5, =0xfffff800
	adds r0, r1, r5
	str r0, [r2]
	ldrb r2, [r6]
	lsls r0, r2, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r3
	cmp r0, 0
	bne _080412DE
	ldr r3, =gBattleMons
	movs r5, 0x58
	adds r1, r2, 0
	muls r1, r5
	adds r4, r3, 0
	adds r4, 0x4C
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _080412DE
	adds r0, r1, r3
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	beq _080412DE
	cmp r0, 0xF
	beq _080412DE
	adds r0, r2, 0
	bl sub_8050650
	lsls r0, 24
	cmp r0, 0
	bne _080412DE
	ldrb r0, [r6]
	bl b_cancel_multi_turn_move_maybe
	bl Random
	ldrb r1, [r6]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r4
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_0202420E
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r0, =gUnknown_082DB378
_080412D0:
	bl b_call_bc_move_exec
_080412D4:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080412DE:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
_080412E2:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08041312
	.pool
_08041304:
	ldr r1, [r7]
	movs r0, 0
	strb r0, [r1]
	ldr r1, [r7]
	ldrb r0, [r1, 0x1]
	adds r0, 0x1
	strb r0, [r1, 0x1]
_08041312:
	mov r7, r9
	cmp r7, 0
	beq _0804131C
_08041318:
	mov r0, r9
	b _08041344
_0804131C:
	ldr r5, =gUnknown_0202449C
	ldr r2, [r5]
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r2, 0x1]
	adds r7, r5, 0
	mov r8, r0
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08041338
_0804132E:
	ldrb r0, [r2]
	cmp r0, 0x13
	bhi _08041338
	bl _08040968
_08041338:
	ldr r0, =gUnknown_02024280
	ldr r1, [r0]
	ldr r2, =0xfeffffdf
	ands r1, r2
	str r1, [r0]
	movs r0, 0
_08041344:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8040924

	thumb_func_start sub_8041364
sub_8041364: @ 8041364
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0x01000020
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_0202449C
	ldr r3, [r1]
	movs r4, 0xD0
	lsls r4, 1
	adds r0, r3, r4
	ldrb r0, [r0]
	mov r10, r2
	adds r6, r1, 0
	cmp r0, 0x1
	bne _0804138E
	b _08041548
_0804138E:
	cmp r0, 0x1
	bgt _080413A4
	cmp r0, 0
	beq _080413AC
	b _08041708
	.pool
_080413A4:
	cmp r0, 0x2
	bne _080413AA
	b _0804169A
_080413AA:
	b _08041708
_080413AC:
	ldr r2, =0x000001a1
	adds r0, r3, r2
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	mov r8, r1
	ldrb r7, [r1]
	cmp r0, r7
	bcc _080413BE
	b _08041532
_080413BE:
	ldr r4, =gUnknown_02024064
	ldr r5, =gUnknown_02022F58
	ldr r7, =gUnknown_020243D0
	movs r0, 0x18
	adds r0, r7
	mov r12, r0
_080413CA:
	ldr r0, [r6]
	adds r3, r0, r2
	ldrb r0, [r3]
	strb r0, [r4]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0804140C
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	b _08041520
	.pool
_0804140C:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	ldr r1, =gUnknown_020243D0
	ldrb r0, [r4]
	adds r2, r0, r1
	ldrb r0, [r2]
	mov r9, r1
	cmp r0, 0
	bne _08041422
	b _08041520
_08041422:
	subs r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	bne _08041520
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08041520
	lsls r0, r2, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r0, 0xF8
	bne _0804145C
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
	b _08041462
	.pool
_0804145C:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
_08041462:
	movs r0, 0xFD
	strb r0, [r5]
	movs r6, 0x2
	movs r0, 0x2
	strb r0, [r5, 0x1]
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	strb r0, [r5, 0x2]
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r5, 0x3]
	movs r0, 0xFF
	strb r0, [r5, 0x4]
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r4]
	strb r0, [r5]
	ldr r1, =gUnknown_0202420B
	adds r0, r7, 0x4
	ldrb r2, [r4]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, =gBattleMoveDamage
	ldrb r0, [r4]
	lsls r0, 2
	adds r1, r7, 0
	adds r1, 0x8
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r1, =0x0000ffff
	str r1, [r0]
	ldr r0, =gUnknown_082DAFE4
	bl b_call_bc_move_exec
	ldrb r1, [r4]
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, 0
	beq _080414CC
	b _08041664
_080414CC:
	eors r1, r6
	mov r3, r9
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _080414DA
	b _08041664
_080414DA:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	ldr r2, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	ands r0, r1
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	ldr r4, =0x0000ffbf
	adds r2, r4, 0
	ands r1, r2
	strh r1, [r0]
	b _08041664
	.pool
_08041520:
	ldr r0, [r6]
	ldr r2, =0x000001a1
	adds r0, r2
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08041532
	b _080413CA
_08041532:
	ldr r0, [r6]
	movs r2, 0xD0
	lsls r2, 1
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, =0x000001a1
	adds r1, r0, r3
	movs r0, 0
	strb r0, [r1]
_08041548:
	adds r3, r6, 0
	ldr r0, [r6]
	ldr r2, =0x000001a1
	adds r0, r2
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r0]
	mov r8, r1
	ldrb r4, [r1]
	cmp r0, r4
	bcc _0804155E
	b _08041684
_0804155E:
	ldr r5, =gUnknown_02024064
	ldr r4, =gUnknown_02022F58
	ldr r7, =gUnknown_020242BC
	mov r12, r7
	ldr r0, =gUnknown_0202420B
	mov r9, r0
_0804156A:
	ldr r1, =gUnknown_0202407E
	ldr r0, [r3]
	adds r3, r0, r2
	ldrb r0, [r3]
	adds r0, r1
	ldrb r0, [r0]
	mov r1, r9
	strb r0, [r1]
	strb r0, [r5]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080415BC
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	b _08041670
	.pool
_080415BC:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	ldr r7, =gUnknown_020242AC
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08041670
	movs r0, 0xFD
	strb r0, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
	strb r0, [r4, 0x3]
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xF]
	lsls r0, 28
	lsrs r0, 28
	strb r0, [r4, 0x4]
	movs r0, 0xFF
	strb r0, [r4, 0x5]
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	mov r3, r12
	adds r4, r0, r3
	ldrb r3, [r4, 0xF]
	lsls r1, r3, 28
	cmp r1, 0
	bne _08041644
	lsls r2, 2
	adds r2, r7
	ldr r0, [r2]
	movs r1, 0x21
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldr r3, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	str r0, [r3]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAF05
	b _0804165C
	.pool
_08041644:
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r7, 0x10
	negs r7, r7
	adds r0, r7, 0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, 0xF]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAF20
_0804165C:
	str r0, [r1]
	ldr r0, [r1]
	bl b_call_bc_move_exec
_08041664:
	movs r0, 0x1
	b _08041714
	.pool
_08041670:
	adds r3, r6, 0
	ldr r0, [r6]
	ldr r2, =0x000001a1
	adds r0, r2
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08041684
	b _0804156A
_08041684:
	ldr r0, [r6]
	movs r2, 0xD0
	lsls r2, 1
	adds r0, r2
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, =0x000001a1
	adds r1, r0, r3
	movs r0, 0
	strb r0, [r1]
_0804169A:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _08041708
	ldr r0, [r6]
	adds r0, 0xDA
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _08041708
	ldr r1, =gBattleMons
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08041708
	adds r0, r1, 0
	adds r0, 0x80
	ldrh r0, [r0]
	cmp r0, 0
	beq _08041708
	movs r4, 0
_080416C6:
	lsls r0, r4, 24
	lsrs r0, 24
	bl b_cancel_multi_turn_move_maybe
	adds r4, 0x1
	cmp r4, 0x1
	ble _080416C6
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB8F3
	str r0, [r1]
	bl b_call_bc_move_exec
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r4, 0xD0
	lsls r4, 1
	adds r1, r4
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08041664
	.pool
_08041708:
	mov r7, r10
	ldr r0, [r7]
	ldr r1, =0xfeffffdf
	ands r0, r1
	str r0, [r7]
	movs r0, 0
_08041714:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8041364

	thumb_func_start sub_8041728
sub_8041728: @ 8041728
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08041770
	b _08041A0A
	.pool
_08041744:
	ldr r0, =gUnknown_082DA7C4
	bl b_call_bc_move_exec
	ldr r0, [r5]
	adds r0, 0x4D
	movs r1, 0x2
	b _08041764
	.pool
_08041758:
	ldr r0, =gUnknown_082DA7CD
	bl b_call_bc_move_exec
	ldr r0, [r5]
	adds r0, 0x4D
	movs r1, 0x5
_08041764:
	strb r1, [r0]
_08041766:
	movs r0, 0x1
	b _08041A0C
	.pool
_08041770:
	ldr r0, =gUnknown_0202449C
	mov r8, r0
_08041774:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x4D
	ldrb r0, [r0]
	cmp r0, 0x7
	bls _08041782
	b _080419FC
_08041782:
	lsls r0, 2
	ldr r1, =_08041794
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08041794:
	.4byte _080417B4
	.4byte _08041806
	.4byte _080418A0
	.4byte _080418E2
	.4byte _080418F6
	.4byte _08041960
	.4byte _08041994
	.4byte _080419FC
_080417B4:
	mov r4, r8
	ldr r0, [r4]
	adds r0, 0x4E
	movs r1, 0
	strb r1, [r0]
	ldr r1, [r4]
	adds r1, 0x4D
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r5, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	bge _08041806
	ldr r6, =gUnknown_02024210
_080417D4:
	ldrb r0, [r6]
	ldr r2, =gBitTable
	lsls r1, r5, 2
	adds r1, r2
	ldr r4, [r1]
	ands r0, r4
	cmp r0, 0
	beq _080417FC
	lsls r0, r5, 24
	lsrs r0, 24
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	bne _080417FC
	ldrb r0, [r6]
	bics r0, r4
	strb r0, [r6]
_080417FC:
	adds r5, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r5, r0
	blt _080417D4
_08041806:
	ldr r0, =gUnknown_0202449C
	mov r8, r0
	ldr r1, =gUnknown_0202420D
	mov r12, r1
	ldr r2, =gEnemyMonIndex
	mov r5, r8
	ldr r7, =gBattleMons
	ldr r6, =gUnknown_0202406E
_08041816:
	ldr r3, [r5]
	adds r1, r3, 0
	adds r1, 0x4E
	ldrb r0, [r1]
	strb r0, [r2]
	mov r4, r12
	strb r0, [r4]
	ldrb r4, [r1]
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0804185E
	adds r0, r3, 0
	adds r0, 0xDF
	ldrb r1, [r0]
	ldr r3, =gBitTable
	lsls r0, r4, 1
	adds r0, r6
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804185E
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	lsls r0, r4, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804185E
	b _08041744
_0804185E:
	ldr r0, [r5]
	adds r0, 0x4E
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, =gUnknown_0202406C
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r0]
	cmp r1, r0
	bne _08041816
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x4D
	movs r1, 0x3
	strb r1, [r0]
	b _080419FC
	.pool
_080418A0:
	ldr r0, =gUnknown_0202420D
	ldrb r0, [r0]
	bl sub_803F9EC
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0x4E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080418D8
	ldr r0, [r2]
	adds r0, 0x4D
	movs r1, 0x3
	strb r1, [r0]
	b _080419FA
	.pool
_080418D8:
	ldr r0, [r2]
	adds r0, 0x4D
	movs r1, 0x1
	strb r1, [r0]
	b _080419FA
_080418E2:
	mov r4, r8
	ldr r0, [r4]
	adds r0, 0x4E
	movs r1, 0
	strb r1, [r0]
	ldr r1, [r4]
	adds r1, 0x4D
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_080418F6:
	ldr r0, =gUnknown_0202420D
	mov r12, r0
	ldr r7, =gEnemyMonIndex
	ldr r5, =gUnknown_0202449C
	ldr r2, =gBattleMons
	ldr r6, =gBitTable
_08041902:
	ldr r0, [r5]
	adds r4, r0, 0
	adds r4, 0x4E
	ldrb r0, [r4]
	strb r0, [r7]
	mov r1, r12
	strb r0, [r1]
	ldrb r3, [r4]
	movs r0, 0x58
	muls r0, r3
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08041930
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	lsls r0, r3, 2
	adds r0, r6
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08041930
	b _08041758
_08041930:
	adds r0, r3, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _08041902
	b _08041978
	.pool
_08041960:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x4E
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, =gUnknown_0202406C
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r0]
	cmp r1, r0
	bne _08041988
_08041978:
	mov r4, r8
	ldr r0, [r4]
	adds r0, 0x4D
	movs r1, 0x6
	strb r1, [r0]
	b _080419FC
	.pool
_08041988:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x4D
	movs r1, 0x4
	strb r1, [r0]
	b _080419FC
_08041994:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _080419AE
	b _08041766
_080419AE:
	str r0, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _080419C4
	b _08041766
_080419C4:
	movs r0, 0x1
	movs r1, 0
	movs r2, 0x1
	bl berry_effects_maybe
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _080419D8
	b _08041766
_080419D8:
	str r0, [sp]
	movs r0, 0x6
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _080419EE
	b _08041766
_080419EE:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0x4D
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_080419FA:
	mov r8, r2
_080419FC:
	mov r4, r8
	ldr r0, [r4]
	adds r0, 0x4D
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _08041A0A
	b _08041774
_08041A0A:
	movs r0, 0
_08041A0C:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8041728

	thumb_func_start b_clear_atk_up_if_hit_flag_unless_enraged
b_clear_atk_up_if_hit_flag_unless_enraged: @ 8041A1C
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, =gUnknown_0202406C
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r3, r0
	bge _08041A54
	ldr r4, =gUnknown_02024274
	movs r6, 0x80
	lsls r6, 16
	ldr r2, =gUnknown_020240D4
_08041A32:
	ldr r1, [r2]
	adds r0, r1, 0
	ands r0, r6
	cmp r0, 0
	beq _08041A48
	ldrh r0, [r4]
	cmp r0, 0x63
	beq _08041A48
	ldr r0, =0xff7fffff
	ands r1, r0
	str r1, [r2]
_08041A48:
	adds r4, 0x2
	adds r2, 0x58
	adds r3, 0x1
	ldrb r0, [r5]
	cmp r3, r0
	blt _08041A32
_08041A54:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_clear_atk_up_if_hit_flag_unless_enraged

	thumb_func_start sub_8041A6C
sub_8041A6C: @ 8041A6C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	movs r0, 0
	mov r9, r0
	ldr r1, =gUnknown_02024478
	mov r10, r1
	ldr r2, =gUnknown_0202449C
	mov r8, r2
	b _08041A9A
	.pool
_08041A90:
	mov r3, r9
	cmp r3, 0
	beq _08041A9A
	bl _08042388
_08041A9A:
	mov r4, r8
	ldr r0, [r4]
	ldr r7, =0x000001a3
	adds r0, r7
	ldrb r0, [r0]
	cmp r0, 0xE
	bls _08041AAC
	bl _08042376
_08041AAC:
	lsls r0, 2
	ldr r1, =_08041AC0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08041AC0:
	.4byte _08041AFC
	.4byte _08041B48
	.4byte _08041C90
	.4byte _08041D50
	.4byte _08041DC4
	.4byte _08041E40
	.4byte _08041EB8
	.4byte _08041F38
	.4byte _08041FC0
	.4byte _08042028
	.4byte _08042114
	.4byte _08042194
	.4byte _08042234
	.4byte _0804231C
	.4byte _08042376
_08041AFC:
	ldr r1, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	ldr r1, =0xfdffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_020242AC
	ldrb r2, [r3]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xffffbfff
	ands r0, r1
	str r0, [r2]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x000001a3
	adds r1, r0, r2
	bl _08042370
	.pool
_08041B48:
	ldr r7, =gBattleMons
	ldr r4, =gUnknown_0202420B
	ldrb r1, [r4]
	movs r5, 0x58
	adds r0, r1, 0
	muls r0, r5
	adds r6, r7, 0
	adds r6, 0x4C
	adds r0, r6
	ldr r0, [r0]
	movs r3, 0x7
	mov r8, r3
	ands r0, r3
	cmp r0, 0
	bne _08041B68
	b _08041C6E
_08041B68:
	adds r0, r1, 0
	bl sub_8050650
	lsls r0, 24
	cmp r0, 0
	beq _08041BC8
	ldrb r0, [r4]
	adds r2, r0, 0
	muls r2, r5
	adds r2, r6
	ldr r0, [r2]
	movs r1, 0x8
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r4]
	adds r2, r0, 0
	muls r2, r5
	adds r0, r7, 0
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB220
	str r0, [r1]
	movs r4, 0x2
	mov r9, r4
	b _08041C6E
	.pool
_08041BC8:
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r0, r1, r7
	adds r0, 0x20
	ldrb r0, [r0]
	movs r3, 0x1
	cmp r0, 0x30
	bne _08041BDC
	movs r3, 0x2
_08041BDC:
	adds r2, r1, r6
	ldr r1, [r2]
	adds r0, r1, 0
	mov r7, r8
	ands r0, r7
	cmp r0, r3
	bcs _08041BF4
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	b _08041BF8
_08041BF4:
	subs r0, r1, r3
	str r0, [r2]
_08041BF8:
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r4, [r0]
	movs r0, 0x7
	ands r4, r0
	cmp r4, 0
	beq _08041C50
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xAD
	beq _08041C6E
	cmp r0, 0xD6
	beq _08041C6E
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB213
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x2
	mov r9, r0
	b _08041C6E
	.pool
_08041C50:
	adds r2, 0x50
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB220
	str r0, [r1]
	movs r1, 0x2
	mov r9, r1
_08041C6E:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r3, =0x000001a3
	adds r2, r0, r3
	b _0804216A
	.pool
_08041C90:
	ldr r1, =gBattleMons
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	movs r6, 0x58
	muls r0, r6
	adds r5, r1, 0
	adds r5, 0x4C
	adds r0, r5
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08041D30
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _08041D08
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7D
	bne _08041CD6
	b _08042162
_08041CD6:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB26A
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 2
	orrs r0, r1
	str r0, [r2]
	b _08041D28
	.pool
_08041D08:
	ldrb r0, [r7]
	adds r2, r0, 0
	muls r2, r6
	adds r2, r5
	ldr r0, [r2]
	movs r1, 0x21
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB277
	str r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
_08041D28:
	movs r7, 0x2
	mov r9, r7
	ldr r0, =gUnknown_0202449C
	mov r8, r0
_08041D30:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x000001a3
	adds r1, r0, r2
	b _08042370
	.pool
_08041D50:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x36
	beq _08041D66
	b _08042162
_08041D66:
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _08041D7A
	b _08042162
_08041D7A:
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6AD
	str r0, [r1]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	b _0804215E
	.pool
_08041DC4:
	ldr r1, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 15
	ands r0, r1
	cmp r0, 0
	beq _08041E10
	ldr r0, =0xffbfffff
	ands r1, r0
	str r1, [r2]
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x19]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D9462
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r7, 0x1
	mov r9, r7
_08041E10:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r3, =0x000001a3
	adds r2, r0, r3
	b _0804216A
	.pool
_08041E40:
	ldr r1, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08041E8C
	movs r0, 0x9
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	ldr r0, =gUnknown_0202433C
	ldrb r2, [r3]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB29B
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r4, 0x1
	mov r9, r4
_08041E8C:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r7, =0x000001a3
	adds r2, r0, r7
	b _0804216A
	.pool
_08041EB8:
	ldr r0, =gUnknown_020242BC
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r1, 0x4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08041F04
	cmp r1, 0
	beq _08041F04
	ldr r0, =gUnknown_0202433C
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldr r1, =gUnknown_02024474
	ldrb r0, [r3]
	strb r0, [r1, 0x17]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAE14
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x1
	mov r9, r0
_08041F04:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r3, =0x000001a3
	adds r2, r0, r3
	b _0804216A
	.pool
_08041F38:
	ldr r0, =gUnknown_020242BC
	ldr r4, =gUnknown_0202420B
	ldrb r3, [r4]
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _08041F8C
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _08041F8C
	ldr r0, =gUnknown_0202433C
	lsls r2, r3, 4
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB0A4
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r4, 0x1
	mov r9, r4
_08041F8C:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r7, =0x000001a3
	adds r2, r0, r7
	b _0804216A
	.pool
_08041FC0:
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	bl sub_8040130
	lsls r0, 24
	cmp r0, 0
	beq _08041FFE
	ldr r0, =gUnknown_0202433C
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB176
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x1
	mov r9, r0
_08041FFE:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r3, =0x000001a3
	adds r2, r0, r3
	b _0804216A
	.pool
_08042028:
	ldr r7, =gBattleMons
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	movs r6, 0x58
	muls r0, r6
	adds r4, r7, 0
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r3, 0x7
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _080420FA
	subs r0, r1, 0x1
	str r0, [r2]
	ldrb r0, [r5]
	muls r0, r6
	adds r0, r4
	ldr r0, [r0]
	ands r0, r3
	cmp r0, 0
	beq _080420E8
	bl Random
	movs r1, 0x1
	movs r2, 0x1
	ands r2, r0
	cmp r2, 0
	beq _0804207C
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	bl b_movescr_stack_push_cursor
	b _080420C6
	.pool
_0804207C:
	ldr r0, =gUnknown_02024332
	movs r4, 0x1
	strb r1, [r0, 0x5]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r5]
	strb r0, [r1]
	ldrb r0, [r5]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r7
	movs r0, 0x28
	str r0, [sp]
	str r2, [sp, 0x4]
	ldrb r0, [r5]
	str r0, [sp, 0x8]
	ldrb r0, [r5]
	str r0, [sp, 0xC]
	adds r0, r1, 0
	movs r2, 0x1
	movs r3, 0
	bl sub_806957C
	ldr r1, =gBattleMoveDamage
	str r0, [r1]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	orrs r0, r4
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
_080420C6:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB2BD
	b _080420F0
	.pool
_080420E8:
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB300
_080420F0:
	str r0, [r1]
	movs r4, 0x1
	mov r9, r4
	ldr r7, =gUnknown_0202449C
	mov r8, r7
_080420FA:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x000001a3
	adds r1, r0, r2
	b _08042370
	.pool
_08042114:
	ldr r1, =gBattleMons
	ldr r4, =gUnknown_0202420B
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08042162
	bl Random
	lsls r0, 16
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r0
	cmp r1, 0
	bne _08042162
	ldr r0, =gUnknown_0202433C
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB28B
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
_0804215E:
	movs r3, 0x1
	mov r9, r3
_08042162:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldr r4, =0x000001a3
	adds r2, r0, r4
_0804216A:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	mov r8, r1
	b _08042376
	.pool
_08042194:
	ldr r1, =gBattleMons
	ldr r4, =gUnknown_0202420B
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0xF0
	lsls r0, 12
	ands r1, r0
	cmp r1, 0
	beq _0804220E
	lsrs r0, r1, 16
	bl CountTrailingZeroBits
	ldr r1, =gUnknown_02024474
	strb r0, [r1, 0x17]
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _080421D8
	bl b_movescr_stack_push_cursor
	b _08042200
	.pool
_080421D8:
	ldr r0, =gUnknown_082DB334
	bl b_movescr_stack_push
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_0202433C
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
_08042200:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB327
	str r0, [r1]
	movs r7, 0x1
	mov r9, r7
	ldr r0, =gUnknown_0202449C
	mov r8, r0
_0804220E:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x000001a3
	adds r1, r0, r2
	b _08042370
	.pool
_08042234:
	ldr r1, =gBattleMons
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	movs r5, 0x58
	muls r0, r5
	adds r1, 0x50
	adds r3, r0, r1
	ldr r2, [r3]
	movs r4, 0xC0
	lsls r4, 2
	adds r0, r2, 0
	ands r0, r4
	cmp r0, 0
	beq _08042306
	ldr r7, =0xffffff00
	adds r0, r2, r7
	str r0, [r3]
	ldrb r2, [r6]
	adds r0, r2, 0
	muls r0, r5
	adds r0, r1
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08042280
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAD71
	b _08042300
	.pool
_08042280:
	ldr r3, =gUnknown_020241F8
	lsls r0, r2, 2
	adds r0, r3
	ldr r0, [r0]
	cmp r0, 0
	beq _080422FC
	ldr r1, =gUnknown_020241EA
	movs r0, 0x75
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	lsls r0, 1
	mov r1, r10
	str r0, [r1]
	ldr r4, =gEnemyMonIndex
	ldr r1, =gUnknown_02024288
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080422CA
	movs r0, 0x75
	movs r1, 0x1
	bl sub_80458E0
	strb r0, [r4]
_080422CA:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAD7C
	str r0, [r1]
	ldr r2, =gUnknown_0202449C
	mov r8, r2
	b _08042302
	.pool
_080422FC:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DADC4
_08042300:
	str r0, [r1]
_08042302:
	movs r3, 0x1
	mov r9, r3
_08042306:
	mov r4, r8
	ldr r0, [r4]
	ldr r7, =0x000001a3
	adds r1, r0, r7
	b _08042370
	.pool
_0804231C:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r4, r0, r1
	ldr r3, [r4]
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	beq _08042368
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7D
	bne _08042360
	movs r0, 0x21
	negs r0, r0
	ands r3, r0
	str r3, [r4]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB277
	str r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
_08042360:
	movs r0, 0x2
	mov r9, r0
	ldr r1, =gUnknown_0202449C
	mov r8, r1
_08042368:
	mov r2, r8
	ldr r0, [r2]
	ldr r3, =0x000001a3
	adds r1, r0, r3
_08042370:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08042376:
	mov r4, r8
	ldr r0, [r4]
	ldr r7, =0x000001a3
	adds r0, r7
	ldrb r0, [r0]
	cmp r0, 0xE
	beq _08042388
	bl _08041A90
_08042388:
	mov r0, r9
	cmp r0, 0x2
	bne _080423B4
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gUnknown_020240D0
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080423B4:
	mov r0, r9
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8041A6C

	thumb_func_start sub_80423F4
sub_80423F4: @ 80423F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08042424
	movs r0, 0
	b _080426A0
	.pool
_08042424:
	movs r0, 0x80
	lsls r0, 15
	ands r0, r1
	cmp r0, 0
	beq _0804249C
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _08042442
	ldr r2, =gPlayerParty
	mov r8, r2
_08042442:
	movs r0, 0x2
	ands r0, r4
	lsls r0, 24
	lsrs r6, r0, 25
	lsls r0, r6, 1
	adds r4, r0, r6
	adds r0, r4, 0x3
	cmp r4, r0
	bge _0804248C
	adds r7, r0, 0
_08042456:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08042486
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08042486
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _0804248C
_08042486:
	adds r4, 0x1
	cmp r4, r7
	blt _08042456
_0804248C:
	movs r1, 0
	lsls r0, r6, 1
	adds r0, r6
	b _08042556
	.pool
_0804249C:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804256C
	movs r0, 0x80
	lsls r0, 16
	ands r1, r0
	cmp r1, 0
	beq _080424E4
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080424D0
	ldr r2, =gPlayerParty
	mov r8, r2
	adds r0, r4, 0
	bl sub_806D864
	lsls r0, 24
	lsrs r7, r0, 24
	b _08042502
	.pool
_080424D0:
	ldr r0, =gEnemyParty
	mov r8, r0
	movs r1, 0x1
	eors r1, r4
	negs r0, r1
	orrs r0, r1
	lsrs r6, r0, 31
	b _0804250C
	.pool
_080424E4:
	adds r0, r4, 0
	bl sub_806D864
	lsls r0, 24
	lsrs r7, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _08042502
	ldr r2, =gPlayerParty
	mov r8, r2
_08042502:
	adds r0, r7, 0
	bl sub_806D82C
	lsls r0, 24
	lsrs r6, r0, 24
_0804250C:
	lsls r0, r6, 1
	adds r4, r0, r6
	adds r1, r4, 0x3
	mov r9, r0
	cmp r4, r1
	bge _08042550
	adds r7, r1, 0
_0804251A:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804254A
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0804254A
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _08042550
_0804254A:
	adds r4, 0x1
	cmp r4, r7
	blt _0804251A
_08042550:
	movs r1, 0
	mov r2, r9
	adds r0, r2, r6
_08042556:
	adds r0, 0x3
	cmp r4, r0
	bne _0804255E
	movs r1, 0x1
_0804255E:
	adds r0, r1, 0
	b _080426A0
	.pool
_0804256C:
	movs r0, 0x80
	lsls r0, 8
	ands r1, r0
	cmp r1, 0
	beq _080425DA
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080425DA
	ldr r0, =gEnemyParty
	mov r8, r0
	movs r6, 0x3
	cmp r4, 0x1
	bne _08042590
	movs r6, 0
_08042590:
	adds r4, r6, 0
	adds r6, r4, 0x3
	b _0804259E
	.pool
_0804259C:
	adds r4, 0x1
_0804259E:
	cmp r4, r6
	bge _080425D2
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804259C
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0804259C
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	beq _0804259C
_080425D2:
	movs r0, 0
	cmp r4, r6
	bne _080426A0
	b _0804269E
_080425DA:
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08042608
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, =gEnemyParty
	mov r8, r2
	b _08042620
	.pool
_08042608:
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gPlayerParty
	mov r8, r0
_08042620:
	mov r1, r10
	cmp r1, 0x6
	bne _08042630
	ldr r1, =gUnknown_0202406E
	lsls r0, r7, 1
	adds r0, r1
	ldrb r0, [r0]
	mov r10, r0
_08042630:
	mov r2, r9
	cmp r2, 0x6
	bne _08042640
	ldr r1, =gUnknown_0202406E
	lsls r0, r6, 1
	adds r0, r1
	ldrb r0, [r0]
	mov r9, r0
_08042640:
	movs r4, 0
_08042642:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08042692
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08042692
	adds r0, r5, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	beq _08042692
	cmp r4, r10
	beq _08042692
	cmp r4, r9
	beq _08042692
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r0, r7, r1
	adds r0, 0x5C
	ldrb r0, [r0]
	cmp r4, r0
	beq _08042692
	adds r0, r6, r1
	adds r0, 0x5C
	ldrb r0, [r0]
	cmp r4, r0
	bne _08042698
_08042692:
	adds r4, 0x1
	cmp r4, 0x5
	ble _08042642
_08042698:
	movs r0, 0
	cmp r4, 0x6
	bne _080426A0
_0804269E:
	movs r0, 0x1
_080426A0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80423F4

	thumb_func_start castform_switch
castform_switch: @ 80426BC
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r4, r0, r1
	ldrh r1, [r4]
	ldr r0, =0x00000181
	cmp r1, r0
	bne _08042760
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3B
	bne _08042760
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	beq _08042760
	str r5, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0804270E
	str r5, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _08042734
_0804270E:
	adds r2, r4, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0
	beq _08042734
	adds r1, r4, 0
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0
	beq _08042734
	strb r5, [r2]
	strb r5, [r1]
	movs r0, 0x1
	b _08042818
	.pool
_08042734:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _08042760
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _08042764
_08042760:
	movs r0, 0
	b _08042818
_08042764:
	ldr r1, =gBattleWeather
	ldrh r0, [r1]
	movs r2, 0xE7
	ands r2, r0
	adds r4, r1, 0
	cmp r2, 0
	bne _08042792
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r3, r1, 0
	adds r3, 0x21
	ldrb r0, [r3]
	cmp r0, 0
	beq _08042792
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0
	beq _08042792
	strb r2, [r3]
	strb r2, [r1]
	movs r5, 0x1
_08042792:
	ldrh r1, [r4]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _080427BE
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xA
	beq _080427BE
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xA
	beq _080427BE
	movs r0, 0xA
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x2
_080427BE:
	ldrh r1, [r4]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _080427EA
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xB
	beq _080427EA
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xB
	beq _080427EA
	movs r0, 0xB
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x3
_080427EA:
	ldrh r1, [r4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08042816
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xF
	beq _08042816
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xF
	beq _08042816
	movs r0, 0xF
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x4
_08042816:
	adds r0, r5, 0
_08042818:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end castform_switch

	thumb_func_start ability_something
ability_something: @ 8042828
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r4, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 16
	lsrs r4, 16
	movs r0, 0
	mov r9, r0
	ldr r5, =gUnknown_0202420B
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08042864
	mov r1, r10
	strb r1, [r5]
_08042864:
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08042894
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _080428A4
	.pool
_08042894:
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_080428A4:
	adds r7, r1, r0
	ldr r5, =gEnemyMonIndex
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080428B6
	mov r2, r10
	strb r2, [r5]
_080428B6:
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080428E8
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _080428F8
	.pool
_080428E8:
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_080428F8:
	adds r5, r1, r0
	adds r0, r7, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x10]
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0xC]
	adds r0, r5, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x14]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804293A
	bl _0804443A
_0804293A:
	mov r3, r8
	cmp r3, 0
	beq _08042958
	ldr r0, =gUnknown_0202420A
	strb r3, [r0]
	adds r7, r0, 0
	b _0804296E
	.pool
_08042958:
	ldr r2, =gUnknown_0202420A
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r5, r10
	muls r5, r0
	adds r0, r5, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r2]
	adds r7, r2, 0
_0804296E:
	cmp r4, 0
	beq _08042980
	adds r5, r4, 0
	b _08042984
	.pool
_08042980:
	ldr r0, =gUnknown_020241EA
	ldrh r5, [r0]
_08042984:
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldrb r0, [r0, 0x13]
	mov r8, r1
	cmp r0, 0
	beq _080429A0
	movs r3, 0x3F
	ands r3, r0
	b _080429AC
	.pool
_080429A0:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x2]
_080429AC:
	ldr r0, [sp, 0x4]
	cmp r0, 0x13
	bls _080429B6
	bl _0804441E
_080429B6:
	lsls r0, 2
	ldr r1, =_080429C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080429C8:
	.4byte _08042A18
	.4byte _08042CDC
	.4byte _08042EF8
	.4byte _08042F8C
	.4byte _080431AC
	.4byte _08043908
	.4byte _08043C6C
	.4byte _08043CBC
	.4byte _08043D40
	.4byte _08043DC4
	.4byte _08043FE4
	.4byte _08043E08
	.4byte _08044028
	.4byte _08044084
	.4byte _080440E0
	.4byte _080441DC
	.4byte _08044220
	.4byte _0804427C
	.4byte _080443EC
	.4byte _08044196
_08042A18:
	ldr r2, =gUnknown_0202420B
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r2]
	adds r5, r0, 0
	ldrb r3, [r5]
	cmp r1, r3
	bcc _08042A2A
	mov r0, r10
	strb r0, [r2]
_08042A2A:
	ldrb r0, [r7]
	cmp r0, 0x2D
	bne _08042A32
	b _08042BA8
_08042A32:
	cmp r0, 0x2D
	bgt _08042A64
	cmp r0, 0xD
	bne _08042A3C
	b _08042CA4
_08042A3C:
	cmp r0, 0xD
	bgt _08042A54
	cmp r0, 0x2
	bne _08042A46
	b _08042B78
_08042A46:
	bl _0804441E
	.pool
_08042A54:
	cmp r0, 0x16
	bne _08042A5A
	b _08042C08
_08042A5A:
	cmp r0, 0x24
	bne _08042A60
	b _08042C68
_08042A60:
	bl _0804441E
_08042A64:
	cmp r0, 0x46
	bne _08042A6A
	b _08042BD8
_08042A6A:
	cmp r0, 0x46
	bgt _08042A78
	cmp r0, 0x3B
	bne _08042A74
	b _08042C3C
_08042A74:
	bl _0804441E
_08042A78:
	cmp r0, 0x4D
	bne _08042A7E
	b _08042CA4
_08042A7E:
	cmp r0, 0xFF
	beq _08042A86
	bl _0804441E
_08042A86:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _08042B4C
	bl weather_get_current
	lsls r0, 24
	lsrs r0, 24
	subs r0, 0x3
	cmp r0, 0xA
	bhi _08042B4C
	lsls r0, 2
	ldr r1, =_08042AB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08042AB4:
	.4byte _08042AE0
	.4byte _08042B4C
	.4byte _08042AE0
	.4byte _08042B4C
	.4byte _08042B4C
	.4byte _08042B04
	.4byte _08042B4C
	.4byte _08042B4C
	.4byte _08042B4C
	.4byte _08042B28
	.4byte _08042AE0
_08042AE0:
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _08042B4C
	movs r0, 0x5
	strh r0, [r2]
	ldr r1, =gUnknown_02024474
	movs r0, 0xA
	strb r0, [r1, 0x10]
	mov r2, r10
	strb r2, [r1, 0x17]
	b _08042B42
	.pool
_08042B04:
	ldr r3, =gBattleWeather
	ldrh r1, [r3]
	movs r2, 0x18
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08042B4C
	strh r2, [r3]
	ldr r1, =gUnknown_02024474
	movs r0, 0xC
	strb r0, [r1, 0x10]
	mov r3, r10
	strb r3, [r1, 0x17]
	b _08042B42
	.pool
_08042B28:
	ldr r3, =gBattleWeather
	ldrh r1, [r3]
	movs r2, 0x60
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08042B4C
	strh r2, [r3]
	ldr r1, =gUnknown_02024474
	movs r0, 0xB
	strb r0, [r1, 0x10]
	mov r5, r10
	strb r5, [r1, 0x17]
_08042B42:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08042B4C:
	mov r0, r9
	cmp r0, 0
	bne _08042B56
	bl _0804443A
_08042B56:
	bl weather_get_current
	ldr r1, =gUnknown_02024332
	strb r0, [r1, 0x5]
	ldr r0, =gUnknown_082DACE7
	bl b_push_move_exec
	bl _0804441E
	.pool
_08042B78:
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08042B88
	bl _0804441E
_08042B88:
	movs r0, 0x5
	strh r0, [r2]
	ldr r0, =gUnknown_082DB430
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	mov r1, r10
	strb r1, [r0, 0x17]
	bl _080443D0
	.pool
_08042BA8:
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08042BB8
	bl _0804441E
_08042BB8:
	movs r0, 0x18
	strh r0, [r2]
	ldr r0, =gUnknown_082DB470
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	mov r2, r10
	strb r2, [r0, 0x17]
	bl _080443D0
	.pool
_08042BD8:
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08042BE8
	bl _0804441E
_08042BE8:
	movs r0, 0x60
	strh r0, [r2]
	ldr r0, =gUnknown_082DB52A
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	mov r3, r10
	strb r3, [r0, 0x17]
	bl _080443D0
	.pool
_08042C08:
	ldr r0, =gUnknown_0202437C
	mov r5, r10
	lsls r2, r5, 2
	adds r1, r2, r5
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3]
	lsls r0, 28
	cmp r0, 0
	bge _08042C20
	bl _0804441E
_08042C20:
	ldr r1, =gUnknown_020242AC
	adds r1, r2, r1
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 12
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r3]
	movs r1, 0x8
	b _08042C92
	.pool
_08042C3C:
	mov r0, r10
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	bne _08042C50
	bl _0804443A
_08042C50:
	ldr r0, =gUnknown_082DB4A9
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	mov r1, r10
	strb r1, [r0, 0x17]
	bl _080442E2
	.pool
_08042C68:
	ldr r0, =gUnknown_0202437C
	mov r3, r10
	lsls r2, r3, 2
	adds r1, r2, r3
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3]
	lsls r0, 27
	cmp r0, 0
	bge _08042C80
	bl _0804441E
_08042C80:
	ldr r1, =gUnknown_020242AC
	adds r1, r2, r1
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 13
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r3]
	movs r1, 0x10
_08042C92:
	orrs r0, r1
	strb r0, [r3]
	bl _0804441E
	.pool
_08042CA4:
	movs r6, 0
	ldrb r5, [r5]
	cmp r6, r5
	bcc _08042CB0
	bl _0804441E
_08042CB0:
	adds r0, r6, 0
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	beq _08042CC4
	bl _080442D8
_08042CC4:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	bcc _08042CB0
	bl _0804441E
	.pool
_08042CDC:
	ldr r5, =gBattleMons
	mov r8, r5
	movs r0, 0x58
	mov r6, r10
	muls r6, r0
	adds r4, r6, r5
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	bne _08042CF2
	bl _0804441E
_08042CF2:
	ldr r0, =gUnknown_0202420B
	mov r1, r10
	strb r1, [r0]
	ldrb r5, [r7]
	cmp r5, 0x2C
	beq _08042D22
	cmp r5, 0x2C
	bgt _08042D14
	cmp r5, 0x3
	bne _08042D08
	b _08042E84
_08042D08:
	bl _0804441E
	.pool
_08042D14:
	cmp r5, 0x36
	bne _08042D1A
	b _08042ED0
_08042D1A:
	cmp r5, 0x3D
	beq _08042DA0
	bl _0804441E
_08042D22:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08042D3E
	bl _0804441E
_08042D3E:
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _08042D56
	bl _0804441E
_08042D56:
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _08042D66
	bl _0804441E
_08042D66:
	ldrh r0, [r4, 0x2C]
	ldrh r2, [r4, 0x28]
	cmp r0, r2
	bhi _08042D72
	bl _0804441E
_08042D72:
	strb r5, [r7]
	ldr r0, =gUnknown_082DB45C
	bl b_push_move_exec
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r4, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08042D8A
	movs r0, 0x1
	str r0, [r1]
_08042D8A:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	bl _080443D0
	.pool
_08042DA0:
	mov r0, r8
	adds r0, 0x4C
	adds r5, r6, r0
	ldrb r0, [r5]
	cmp r0, 0
	bne _08042DB0
	bl _0804441E
_08042DB0:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _08042DCA
	bl _0804441E
_08042DCA:
	ldr r0, [r5]
	movs r1, 0x88
	ands r0, r1
	cmp r0, 0
	beq _08042DDC
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC70
	bl StringCopy
_08042DDC:
	ldr r0, [r5]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08042DEE
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC78
	bl StringCopy
_08042DEE:
	ldr r0, [r5]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08042E00
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC80
	bl StringCopy
_08042E00:
	ldr r0, [r5]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08042E12
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC88
	bl StringCopy
_08042E12:
	ldr r0, [r5]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08042E24
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC90
	bl StringCopy
_08042E24:
	str r4, [r5]
	mov r1, r8
	adds r1, 0x50
	adds r1, r6, r1
	ldr r0, [r1]
	ldr r2, =0xf7ffffff
	ands r0, r2
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	ldr r4, =gUnknown_02024064
	mov r3, r10
	strb r3, [r4]
	strb r3, [r0, 0x17]
	ldr r0, =gUnknown_082DB484
	bl b_push_move_exec
	str r5, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl _080443D0
	.pool
_08042E84:
	ldrb r2, [r4, 0x1B]
	movs r0, 0x1B
	ldrsb r0, [r4, r0]
	cmp r0, 0xB
	ble _08042E92
	bl _0804441E
_08042E92:
	ldr r0, =gUnknown_020242BC
	mov r5, r10
	lsls r1, r5, 3
	subs r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x16]
	cmp r0, 0x2
	bne _08042EA8
	bl _0804441E
_08042EA8:
	adds r0, r2, 0x1
	movs r1, 0
	strb r0, [r4, 0x1B]
	ldr r4, =gUnknown_02024474
	movs r0, 0x11
	strb r0, [r4, 0x10]
	strb r1, [r4, 0x11]
	ldr r0, =gUnknown_082DB444
	bl b_push_move_exec
	strb r5, [r4, 0x17]
	bl _080443D0
	.pool
_08042ED0:
	ldr r2, =gUnknown_020242BC
	ldrb r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r3, [r1, 0x18]
	lsls r0, r3, 31
	lsrs r0, 31
	movs r2, 0x1
	eors r2, r0
	movs r0, 0x2
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x18]
	bl _0804441E
	.pool
_08042EF8:
	ldrb r0, [r7]
	cmp r0, 0x2B
	beq _08042F02
	bl _0804441E
_08042F02:
	movs r4, 0
	ldr r0, =gUnknown_0831BCF8
	ldrh r2, [r0]
	ldr r3, =0x0000ffff
	adds r1, r0, 0
	cmp r2, r3
	bne _08042F14
	bl _0804441E
_08042F14:
	cmp r2, r5
	beq _08042F2C
	adds r2, r1, 0
_08042F1A:
	adds r2, 0x2
	adds r4, 0x1
	ldrh r0, [r2]
	cmp r0, r3
	bne _08042F28
	bl _0804441E
_08042F28:
	cmp r0, r5
	bne _08042F1A
_08042F2C:
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _08042F3C
	bl _0804441E
_08042F3C:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	beq _08042F62
	ldr r0, =gUnknown_02024280
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 4
	orrs r1, r2
	str r1, [r0]
_08042F62:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB61F
	str r0, [r1]
	movs r0, 0x1
	mov r9, r0
	bl _08044424
	.pool
_08042F8C:
	cmp r5, 0
	bne _08042F94
	bl _0804441E
_08042F94:
	ldrb r0, [r7]
	cmp r0, 0xB
	beq _08043004
	cmp r0, 0xB
	bgt _08042FA4
	cmp r0, 0xA
	beq _08042FAA
	b _08043126
_08042FA4:
	cmp r0, 0x12
	beq _0804305C
	b _08043126
_08042FAA:
	cmp r3, 0xD
	beq _08042FB0
	b _08043126
_08042FB0:
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08042FC2
	b _08043126
_08042FC2:
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08042FF0
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB56F
	b _08042FF4
	.pool
_08042FF0:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB56E
_08042FF4:
	str r0, [r1]
	movs r1, 0x1
	b _08043124
	.pool
_08043004:
	cmp r3, 0xB
	beq _0804300A
	b _08043126
_0804300A:
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _0804301C
	b _08043126
_0804301C:
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08043048
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB56F
	b _0804304C
	.pool
_08043048:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB56E
_0804304C:
	str r0, [r1]
	movs r2, 0x1
	mov r9, r2
	b _08043126
	.pool
_0804305C:
	cmp r3, 0xA
	bne _08043126
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08043126
	ldr r2, =gUnknown_020244A8
	ldr r0, [r2]
	ldr r0, [r0, 0x4]
	mov r5, r10
	lsls r1, r5, 2
	adds r0, r1
	ldr r3, [r0]
	movs r4, 0x1
	ands r3, r4
	adds r5, r1, 0
	cmp r3, 0
	bne _080430EC
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _080430C8
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5A8
	b _080430CC
	.pool
_080430C8:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5A7
_080430CC:
	str r0, [r1]
	ldr r0, [r2]
	ldr r1, [r0, 0x4]
	adds r1, r5
	ldr r0, [r1]
	movs r2, 0x1
	orrs r0, r2
	str r0, [r1]
	movs r0, 0x2
	mov r9, r0
	b _08043126
	.pool
_080430EC:
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _0804311C
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5A8
	b _08043120
	.pool
_0804311C:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5A7
_08043120:
	str r0, [r1]
	movs r1, 0x2
_08043124:
	mov r9, r1
_08043126:
	mov r2, r9
	cmp r2, 0x1
	beq _08043130
	bl _0804441E
_08043130:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r0, r1
	ldrh r0, [r1, 0x2C]
	ldrh r5, [r1, 0x28]
	cmp r0, r5
	bne _0804318C
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08043178
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB592
	str r0, [r1]
	bl _0804441E
	.pool
_08043178:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB591
	str r0, [r1]
	bl _0804441E
	.pool
_0804318C:
	ldr r2, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 2
	str r0, [r2]
	cmp r0, 0
	bne _0804319C
	mov r0, r9
	str r0, [r2]
_0804319C:
	ldr r0, [r2]
	negs r0, r0
	str r0, [r2]
	bl _0804441E
	.pool
_080431AC:
	ldrb r0, [r7]
	subs r0, 0x9
	cmp r0, 0x2F
	bls _080431B8
	bl _0804441E
_080431B8:
	lsls r0, 2
	ldr r1, =_080431C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080431C8:
	.4byte _080435E4
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _08043288
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _08043350
	.4byte _0804441E
	.4byte _0804441E
	.4byte _08043410
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _08043508
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _080436C0
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804441E
	.4byte _0804379C
_08043288:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08043298
	bl _0804441E
_08043298:
	cmp r5, 0xA5
	bne _080432A0
	bl _0804441E
_080432A0:
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _080432B4
	bl _0804441E
_080432B4:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080432DC
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080432DC
	bl _0804441E
_080432DC:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r1, r0, r1
	adds r4, r1, 0
	adds r4, 0x21
	ldrb r0, [r4]
	cmp r0, r3
	bne _080432F6
	bl _0804441E
_080432F6:
	adds r2, r1, 0
	adds r2, 0x22
	ldrb r0, [r2]
	cmp r0, r3
	bne _08043304
	bl _0804441E
_08043304:
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _0804330E
	bl _0804441E
_0804330E:
	strb r3, [r4]
	strb r3, [r2]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r3, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB64D
	str r0, [r1]
	bl _080443D0
	.pool
_08043350:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08043360
	bl _0804441E
_08043360:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r3, r0, r1
	ldrh r0, [r3, 0x28]
	cmp r0, 0
	bne _08043376
	bl _0804441E
_08043376:
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08043388
	bl _0804441E
_08043388:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080433B0
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080433B0
	bl _0804441E
_080433B0:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r2, 0x1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _080433CA
	bl _0804441E
_080433CA:
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r3, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _080433D8
	str r2, [r1]
_080433D8:
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB654
	str r0, [r1]
	bl _080443D0
	.pool
_08043410:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08043420
	bl _0804441E
_08043420:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08043436
	bl _0804441E
_08043436:
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08043448
	bl _0804441E
_08043448:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043470
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043470
	bl _0804441E
_08043470:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08043488
	bl _0804441E
_08043488:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _080434A0
	bl _0804441E
_080434A0:
	ldr r5, =gUnknown_02024332
	movs r4, 0x3
_080434A4:
	bl Random
	ands r0, r4
	strb r0, [r5, 0x3]
	cmp r0, 0
	beq _080434A4
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x3]
	cmp r0, 0x3
	bne _080434BC
	adds r0, 0x2
	strb r0, [r1, 0x3]
_080434BC:
	ldrb r0, [r1, 0x3]
	adds r0, 0x40
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67C
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _080443D0
	.pool
_08043508:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08043518
	bl _0804441E
_08043518:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0804352E
	bl _0804441E
_0804352E:
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08043540
	bl _0804441E
_08043540:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043568
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043568
	bl _0804441E
_08043568:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08043580
	bl _0804441E
_08043580:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08043598
	bl _0804441E
_08043598:
	ldr r1, =gUnknown_02024332
	movs r0, 0x42
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67C
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _080443D0
	.pool
_080435E4:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _080435F4
	bl _0804441E
_080435F4:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0804360A
	bl _0804441E
_0804360A:
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _0804361C
	bl _0804441E
_0804361C:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043644
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043644
	bl _0804441E
_08043644:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0804365C
	bl _0804441E
_0804365C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08043674
	bl _0804441E
_08043674:
	ldr r1, =gUnknown_02024332
	movs r0, 0x45
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67C
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _080443D0
	.pool
_080436C0:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _080436D0
	bl _0804441E
_080436D0:
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _080436E6
	bl _0804441E
_080436E6:
	ldr r0, =gUnknown_0202433C
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _080436F8
	bl _0804441E
_080436F8:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08043710
	bl _0804441E
_08043710:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043738
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043738
	bl _0804441E
_08043738:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08043750
	bl _0804441E
_08043750:
	ldr r1, =gUnknown_02024332
	movs r0, 0x43
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67C
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _080443D0
	.pool
_0804379C:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _080437AC
	bl _0804441E
_080437AC:
	ldr r6, =gBattleMons
	ldr r3, =gUnknown_0202420B
	mov r8, r3
	ldrb r1, [r3]
	movs r7, 0x58
	adds r0, r1, 0
	muls r0, r7
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _080437C6
	bl _0804441E
_080437C6:
	ldr r0, =gUnknown_0202433C
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _080437D8
	bl _0804441E
_080437D8:
	ldr r1, =gBattleMoves
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080437F0
	bl _0804441E
_080437F0:
	ldr r3, =gUnknown_0202437C
	ldr r5, =gEnemyMonIndex
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r2, r0, 2
	adds r0, r3, 0
	adds r0, 0x8
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043818
	adds r0, r3, 0
	adds r0, 0xC
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08043818
	bl _0804441E
_08043818:
	adds r0, r1, 0
	muls r0, r7
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08043828
	bl _0804441E
_08043828:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08043840
	bl _0804441E
_08043840:
	mov r1, r8
	ldrb r0, [r1]
	muls r0, r7
	adds r0, r6
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0xC
	bne _08043854
	bl _0804441E
_08043854:
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	bl pokemon_species_get_gender_info
	adds r4, r0, 0
	ldr r0, [sp, 0xC]
	ldr r1, [sp, 0x14]
	bl pokemon_species_get_gender_info
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	bne _08043872
	bl _0804441E
_08043872:
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r7
	adds r4, r6, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	beq _0804388E
	bl _0804441E
_0804388E:
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	bl pokemon_species_get_gender_info
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080438A2
	bl _0804441E
_080438A2:
	ldr r0, [sp, 0xC]
	ldr r1, [sp, 0x14]
	bl pokemon_species_get_gender_info
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080438B6
	bl _0804441E
_080438B6:
	mov r3, r8
	ldrb r0, [r3]
	adds r2, r0, 0
	muls r2, r7
	adds r2, r4
	ldr r1, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 16
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB66F
	str r0, [r1]
	bl _080443D0
	.pool
_08043908:
	movs r5, 0
	mov r10, r5
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08043918
	bl _0804441E
_08043918:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	subs r0, 0x7
	adds r2, r1, 0
	cmp r0, 0x41
	bls _08043932
	b _08043B96
_08043932:
	lsls r0, 2
	ldr r1, =_08043948
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08043948:
	.4byte _08043AAC
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B70
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043AD4
	.4byte _08043B96
	.4byte _08043A50
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043A7C
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B40
	.4byte _08043B10
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043B96
	.4byte _08043AD4
_08043A50:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x00000f88
	ands r0, r1
	cmp r0, 0
	bne _08043A6A
	b _08043B96
_08043A6A:
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC70
	b _08043B5C
	.pool
_08043A7C:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _08043A96
	b _08043B96
_08043A96:
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC98
	bl StringCopy
	movs r2, 0x2
	mov r9, r2
	b _08043B9C
	.pool
_08043AAC:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08043B96
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC80
	b _08043B5C
	.pool
_08043AD4:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08043B96
	adds r2, 0x50
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC78
	bl StringCopy
	movs r0, 0x1
	mov r9, r0
	b _08043B9C
	.pool
_08043B10:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08043B96
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC88
	bl StringCopy
	movs r2, 0x1
	mov r9, r2
	b _08043B9C
	.pool
_08043B40:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08043B96
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC90
_08043B5C:
	bl StringCopy
	movs r5, 0x1
	mov r9, r5
	b _08043B9C
	.pool
_08043B70:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	beq _08043B96
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BCA0
	bl StringCopy
	movs r2, 0x3
	mov r9, r2
_08043B96:
	mov r3, r9
	cmp r3, 0
	beq _08043C50
_08043B9C:
	mov r5, r9
	cmp r5, 0x2
	beq _08043BD0
	cmp r5, 0x2
	bgt _08043BB4
	cmp r5, 0x1
	beq _08043BBC
	b _08043BFC
	.pool
_08043BB4:
	mov r0, r9
	cmp r0, 0x3
	beq _08043BE8
	b _08043BFC
_08043BBC:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x4C
	adds r2, r1
	movs r0, 0
	b _08043BFA
	.pool
_08043BD0:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x8
	negs r1, r1
	b _08043BF8
	.pool
_08043BE8:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	ldr r1, =0xfff0ffff
_08043BF8:
	ands r0, r1
_08043BFA:
	str r0, [r2]
_08043BFC:
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB68C
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	mov r1, r10
	strb r1, [r0, 0x17]
	ldr r4, =gUnknown_02024064
	strb r1, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gUnknown_020240D0
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl _0804443A
	.pool
_08043C50:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r10, r0
	bcs _08043C64
	b _08043918
_08043C64:
	bl _0804441E
	.pool
_08043C6C:
	movs r2, 0
	mov r10, r2
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08043C7A
	b _0804441E
_08043C7A:
	ldr r4, =gBattleMons
_08043C7C:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r0, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3B
	bne _08043CA0
	mov r0, r10
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	beq _08043CA0
	b _080442FC
_08043CA0:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08043C7C
	b _0804441E
	.pool
_08043CBC:
	ldrb r0, [r7]
	cmp r0, 0x1C
	beq _08043CC4
	b _0804441E
_08043CC4:
	ldr r4, =gUnknown_02024280
	ldr r1, [r4]
	movs r0, 0x80
	lsls r0, 7
	ands r0, r1
	cmp r0, 0
	bne _08043CD4
	b _0804441E
_08043CD4:
	ldr r0, =0xffffbfff
	ands r1, r0
	str r1, [r4]
	mov r5, r8
	ldr r1, [r5]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r1, r0, 0
	adds r1, 0xB2
	ldrb r0, [r1]
	cmp r0, 0x6
	bne _08043CF8
	movs r0, 0x2
	strb r0, [r1]
_08043CF8:
	ldr r1, =gUnknown_02024332
	mov r2, r8
	ldr r0, [r2]
	adds r0, 0xB2
	ldrb r0, [r0]
	adds r0, 0x40
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024474
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	strb r0, [r1, 0x17]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67F
	str r0, [r1]
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r4]
	b _080443D0
	.pool
_08043D40:
	ldrb r0, [r7]
	cmp r0, 0x1C
	beq _08043D48
	b _0804441E
_08043D48:
	ldr r4, =gUnknown_02024280
	ldr r1, [r4]
	movs r0, 0x80
	lsls r0, 7
	ands r0, r1
	cmp r0, 0
	bne _08043D58
	b _0804441E
_08043D58:
	ldr r0, =0xffffbfff
	ands r1, r0
	str r1, [r4]
	mov r3, r8
	ldr r1, [r3]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0xB2
	ldrb r0, [r1]
	cmp r0, 0x6
	bne _08043D7C
	movs r0, 0x2
	strb r0, [r1]
_08043D7C:
	ldr r1, =gUnknown_02024332
	mov r3, r8
	ldr r0, [r3]
	adds r0, 0xB2
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024474
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r1, 0x17]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB67F
	str r0, [r1]
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r4]
	b _080443D0
	.pool
_08043DC4:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	cmp r4, r1
	blt _08043DD0
	b _0804441E
_08043DD0:
	ldr r0, =gBattleMons
	adds r5, r1, 0
	ldr r2, =gUnknown_020242AC
	adds r3, r0, 0
	adds r3, 0x20
	movs r6, 0x80
	lsls r6, 12
_08043DDE:
	ldrb r1, [r3]
	cmp r1, 0x16
	bne _08043DEE
	ldr r0, [r2]
	ands r0, r6
	cmp r0, 0
	beq _08043DEE
	b _08044324
_08043DEE:
	adds r2, 0x4
	adds r3, 0x58
	adds r4, 0x1
	cmp r4, r5
	blt _08043DDE
	b _0804441E
	.pool
_08043E08:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08043E14
	b _0804441E
_08043E14:
	ldr r5, =gUnknown_02024064
	mov r8, r5
	ldr r0, =gBattleMons
	adds r0, 0x20
	str r0, [sp, 0x1C]
	movs r1, 0
	str r1, [sp, 0x20]
_08043E22:
	ldr r2, [sp, 0x1C]
	ldrb r0, [r2]
	cmp r0, 0x24
	beq _08043E2C
	b _08043FBE
_08043E2C:
	ldr r0, =gUnknown_020242AC
	ldr r3, [sp, 0x20]
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 13
	ands r1, r0
	str r3, [sp, 0x18]
	cmp r1, 0
	bne _08043E42
	b _08043FBE
_08043E42:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_get_per_side_status
	movs r1, 0x1
	adds r5, r0, 0
	eors r5, r1
	ands r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r5, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	bne _08043E74
	b _08043F84
_08043E74:
	movs r1, 0x58
	adds r0, r6, 0
	muls r0, r1
	ldr r3, =gBattleMons
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08043F40
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08043EFC
	movs r1, 0x58
	adds r0, r7, 0
	muls r0, r1
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08043EFC
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08043EFC
	str r2, [sp, 0x24]
	bl Random
	ldr r2, [sp, 0x24]
	adds r1, r2, 0
	ands r1, r0
	lsls r1, 1
	orrs r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	ldr r5, =gBattleMons
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	ldr r1, [sp, 0x1C]
	strb r0, [r1]
	ldrb r0, [r2]
	muls r0, r3
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	ldr r2, =gUnknown_0202420A
	strb r0, [r2]
	b _08043FAC
	.pool
_08043EFC:
	ldr r3, =gBattleMons
	movs r2, 0x58
	adds r0, r6, 0
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08043F40
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08043F40
	mov r5, r8
	strb r6, [r5]
	adds r1, r4, 0
	muls r1, r2
	adds r1, r3
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	b _08043FA8
	.pool
_08043F40:
	ldr r3, =gBattleMons
	movs r2, 0x58
	adds r0, r7, 0
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08043FB6
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08043FB6
	mov r5, r8
	strb r7, [r5]
	adds r1, r4, 0
	muls r1, r2
	adds r1, r3
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	b _08043FA8
	.pool
_08043F84:
	mov r2, r8
	strb r6, [r2]
	movs r3, 0x58
	adds r0, r6, 0
	muls r0, r3
	ldr r5, =gBattleMons
	adds r0, r5
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r1, [r2]
	cmp r1, 0
	beq _08043FB6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08043FB6
	ldr r0, [sp, 0x1C]
	strb r1, [r0]
	ldrb r0, [r2]
_08043FA8:
	ldr r1, =gUnknown_0202420A
	strb r0, [r1]
_08043FAC:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08043FB6:
	mov r2, r9
	cmp r2, 0
	beq _08043FBE
	b _08044340
_08043FBE:
	ldr r3, [sp, 0x1C]
	adds r3, 0x58
	str r3, [sp, 0x1C]
	ldr r5, [sp, 0x20]
	adds r5, 0x4
	str r5, [sp, 0x20]
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	bge _08043FD6
	b _08043E22
_08043FD6:
	b _0804441E
	.pool
_08043FE4:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	cmp r4, r1
	blt _08043FF0
	b _0804441E
_08043FF0:
	ldr r0, =gBattleMons
	adds r5, r1, 0
	ldr r2, =gUnknown_020242AC
	adds r3, r0, 0
	adds r3, 0x20
	movs r6, 0x80
	lsls r6, 12
_08043FFE:
	ldrb r1, [r3]
	cmp r1, 0x16
	bne _0804400E
	ldr r0, [r2]
	ands r0, r6
	cmp r0, 0
	beq _0804400E
	b _080443B4
_0804400E:
	adds r2, 0x4
	adds r3, 0x58
	adds r4, 0x1
	cmp r4, r5
	blt _08043FFE
	b _0804441E
	.pool
_08044028:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804403E
	b _0804441E
_0804403E:
	ldr r7, =gBattleMons
_08044040:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r0, r5
	beq _0804406A
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _0804406A
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_0804406A:
	adds r4, r3, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044040
	b _0804441E
	.pool
_08044084:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804409A
	b _0804441E
_0804409A:
	ldr r7, =gBattleMons
_0804409C:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r0, r5
	bne _080440C6
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _080440C6
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_080440C6:
	adds r4, r3, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804409C
	b _0804441E
	.pool
_080440E0:
	ldrb r0, [r7]
	cmp r0, 0xFD
	beq _08044104
	cmp r0, 0xFE
	beq _0804413C
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r4, r0
	blt _080440F8
	b _0804441E
_080440F8:
	ldr r2, =gBattleMons
	b _08044174
	.pool
_08044104:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044110
	b _0804441E
_08044110:
	ldr r5, =gUnknown_020242AC
	movs r2, 0x80
	lsls r2, 9
	adds r1, r0, 0
_08044118:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	ands r0, r2
	adds r3, r4, 0x1
	cmp r0, 0
	beq _0804412C
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_0804412C:
	adds r4, r3, 0
	cmp r4, r1
	blt _08044118
	b _0804441E
	.pool
_0804413C:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044148
	b _0804441E
_08044148:
	ldr r5, =gUnknown_020242AC
	movs r2, 0x80
	lsls r2, 10
	adds r1, r0, 0
_08044150:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	ands r0, r2
	adds r3, r4, 0x1
	cmp r0, 0
	beq _08044164
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08044164:
	adds r4, r3, 0
	cmp r4, r1
	blt _08044150
	b _0804441E
	.pool
_08044174:
	movs r0, 0x58
	muls r0, r4
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _0804418C
	strb r6, [r7]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_0804418C:
	adds r4, r3, 0
	ldrb r1, [r5]
	cmp r4, r1
	blt _08044174
	b _0804441E
_08044196:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _080441A2
	b _0804441E
_080441A2:
	ldr r2, =gBattleMons
	mov r8, r2
	adds r2, r0, 0
	movs r5, 0x58
_080441AA:
	adds r0, r4, 0
	muls r0, r5
	mov r3, r8
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _080441CC
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _080441CC
	strb r6, [r7]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_080441CC:
	adds r4, r3, 0
	cmp r4, r2
	blt _080441AA
	b _0804441E
	.pool
_080441DC:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _080441E8
	b _0804441E
_080441E8:
	ldr r7, =gBattleMons
	adds r1, r0, 0
	movs r5, 0x58
	ldr r2, =gUnknown_0202420A
_080441F0:
	adds r0, r4, 0
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _0804420C
	cmp r4, r10
	beq _0804420C
	strb r6, [r2]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_0804420C:
	adds r4, r3, 0
	cmp r4, r1
	blt _080441F0
	b _0804441E
	.pool
_08044220:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044236
	b _0804441E
_08044236:
	ldr r7, =gBattleMons
_08044238:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	beq _08044264
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _08044264
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08044264:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044238
	b _0804441E
	.pool
_0804427C:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044292
	b _0804441E
_08044292:
	ldr r7, =gBattleMons
_08044294:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	bne _080442C0
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _080442C0
	ldr r0, =gUnknown_0202420A
	strb r6, [r0]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080442C0:
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _08044294
	b _0804441E
	.pool
_080442D8:
	ldr r0, =gUnknown_082DB4A9
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	strb r6, [r0, 0x17]
_080442E2:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x7F
	mov r1, r9
	subs r1, 0x1
	strb r1, [r0]
	b _0804441E
	.pool
_080442FC:
	ldr r0, =gUnknown_082DB4A9
	bl b_push_move_exec
	ldr r0, =gUnknown_02024474
	mov r5, r10
	strb r5, [r0, 0x17]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x7F
	mov r1, r9
	subs r1, 0x1
	strb r1, [r0]
	b _0804443A
	.pool
_08044324:
	strb r1, [r7]
	ldr r0, [r2]
	ldr r1, =0xfff7ffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_082DB4B8
	bl b_push_move_exec
	b _080443C8
	.pool
_08044340:
	ldr r0, =gUnknown_082DB452
	bl b_push_move_exec
	ldr r1, =gUnknown_020242AC
	ldr r0, [sp, 0x18]
	adds r1, r0, r1
	ldr r0, [r1]
	ldr r2, =0xffefffff
	ands r0, r2
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x17]
	ldr r1, =gUnknown_02022F58
	movs r4, 0xFD
	strb r4, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, =gUnknown_0202406E
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02022F68
	strb r4, [r1]
	movs r0, 0x9
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_0202420A
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x3]
	b _0804441E
	.pool
_080443B4:
	strb r1, [r7]
	ldr r0, [r2]
	ldr r1, =0xfff7ffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB4C1
	str r0, [r1]
_080443C8:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xD8
	strb r4, [r0]
_080443D0:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	b _0804441E
	.pool
_080443EC:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	cmp r4, r1
	bge _0804441E
	ldr r0, =gBattleMons
	adds r2, r1, 0
	adds r1, r0, 0
	adds r1, 0x20
	ldr r3, =gUnknown_0202420A
_08044400:
	ldrb r0, [r1]
	cmp r0, r6
	bne _08044416
	cmp r4, r10
	beq _08044416
	strb r6, [r3]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08044416:
	adds r1, 0x58
	adds r4, 0x1
	cmp r4, r2
	blt _08044400
_0804441E:
	mov r1, r9
	cmp r1, 0
	beq _0804443A
_08044424:
	ldr r2, [sp, 0x4]
	cmp r2, 0xB
	bhi _0804443A
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0804443A
	adds r1, r0, 0
	mov r0, r10
	bl b_history__record_ability_usage_of_player
_0804443A:
	mov r0, r9
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ability_something

	thumb_func_start b_call_bc_move_exec
b_call_bc_move_exec: @ 8044458
	ldr r1, =gUnknown_02024214
	str r0, [r1]
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r2, [r0, 0xC]
	adds r3, r2, 0
	adds r3, 0x20
	ldrb r0, [r3]
	adds r1, r0, 0x1
	strb r1, [r3]
	lsls r0, 24
	lsrs r0, 22
	adds r2, r0
	ldr r1, =gUnknown_03005D04
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, =bc_move_exec_returning
	str r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end b_call_bc_move_exec

	thumb_func_start b_push_move_exec
b_push_move_exec: @ 8044498
	push {r4,lr}
	adds r4, r0, 0
	bl b_movescr_stack_push_cursor
	ldr r0, =gUnknown_02024214
	str r4, [r0]
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r2, [r0, 0xC]
	adds r3, r2, 0
	adds r3, 0x20
	ldrb r0, [r3]
	adds r1, r0, 0x1
	strb r1, [r3]
	lsls r0, 24
	lsrs r0, 22
	adds r2, r0
	ldr r1, =gUnknown_03005D04
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, =sub_803E08C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_push_move_exec

	thumb_func_start berry_effects_maybe
berry_effects_maybe: @ 80444DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	movs r0, 0
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0xC]
	add r0, sp, 0x4
	strb r1, [r0]
	ldr r4, =gUnknown_02024208
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _08044534
	ldr r1, =gUnknown_02024404
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	ldrb r0, [r0, 0x1A]
	b _08044548
	.pool
_08044534:
	ldrh r0, [r4]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r5, r0, 24
	ldrh r0, [r4]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r0, 24
_08044548:
	mov r9, r0
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	str r0, [sp, 0x14]
	cmp r0, 0xAF
	bne _0804457C
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x7]
	mov r8, r3
	ldrb r0, [r0, 0x1A]
	b _08044592
	.pool
_0804457C:
	ldr r0, [sp, 0x14]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, [sp, 0x14]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r0, 24
_08044592:
	str r0, [sp, 0x10]
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r4, [r0, 0x2E]
	cmp r4, 0xAF
	beq _080445B2
	adds r0, r4, 0
	bl itemid_get_x12
	adds r0, r4, 0
	bl itemid_get_quality
_080445B2:
	ldr r0, [sp, 0x8]
	cmp r0, 0x4
	bls _080445BC
	bl _0804582A
_080445BC:
	lsls r0, 2
	ldr r1, =_080445D4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080445D4:
	.4byte _080445E8
	.4byte _08044688
	.4byte _0804582A
	.4byte _08045280
	.4byte _080456D0
_080445E8:
	cmp r5, 0x17
	beq _08044618
	cmp r5, 0x20
	beq _080445F4
	bl _0804582A
_080445F4:
	adds r0, r7, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _08044604
	bl _0804582A
_08044604:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4A
	movs r1, 0x2
	strb r1, [r0]
	bl _0804582A
	.pool
_08044618:
	ldr r1, =gBattleMons
	mov r8, r1
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r3, 0x7
	mov r10, r3
_0804462E:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _0804463C
	strb r2, [r1]
	movs r5, 0x5
	str r5, [sp, 0xC]
_0804463C:
	adds r1, 0x1
	movs r0, 0x1
	negs r0, r0
	add r10, r0
	mov r3, r10
	cmp r3, 0
	bge _0804462E
	ldr r5, [sp, 0xC]
	cmp r5, 0
	bne _08044654
	bl _0804582A
_08044654:
	ldr r0, =gUnknown_02024474
	strb r7, [r0, 0x17]
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	ldr r1, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	strb r7, [r0]
	strb r7, [r1]
	ldr r0, =gUnknown_082DB7AE
	bl b_call_bc_move_exec
	bl _0804582A
	.pool
_08044688:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x28]
	mov r8, r1
	cmp r0, 0
	bne _0804469C
	bl _0804582A
_0804469C:
	subs r0, r5, 0x1
	cmp r0, 0x2A
	bls _080446A6
	bl _080451D6
_080446A6:
	lsls r0, 2
	ldr r1, =_080446B8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080446B8:
	.4byte _08044764
	.4byte _08044F44
	.4byte _08045008
	.4byte _08044F74
	.4byte _08044FA8
	.4byte _08044FD8
	.4byte _080447B0
	.4byte _08045044
	.4byte _08045074
	.4byte _0804497C
	.4byte _080449FC
	.4byte _08044A78
	.4byte _08044B0C
	.4byte _08044BA0
	.4byte _08044C34
	.4byte _08044C9C
	.4byte _08044CF0
	.4byte _08044D44
	.4byte _08044DAC
	.4byte _08044E10
	.4byte _08044E5C
	.4byte _080451D6
	.4byte _080448B0
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451A0
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _080451D6
	.4byte _0804491C
_08044764:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r2, r0, r1
	ldrh r0, [r2, 0x2C]
	ldrh r1, [r2, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0804477A
	bl _080451D6
_0804477A:
	cmp r6, 0
	beq _08044782
	bl _080451D6
_08044782:
	ldr r4, =gBattleMoveDamage
	mov r3, r9
	str r3, [r4]
	ldrh r3, [r2, 0x28]
	mov r5, r9
	adds r0, r3, r5
	ldrh r1, [r2, 0x2C]
	cmp r0, r1
	ble _08044798
	subs r0, r1, r3
	str r0, [r4]
_08044798:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	ldr r0, =gUnknown_082DB7C4
	bl b_call_bc_move_exec
	b _08044B02
	.pool
_080447B0:
	cmp r6, 0
	beq _080447B8
	bl _080451D6
_080447B8:
	adds r0, r7, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080447DC
	ldr r1, =gUnknown_0202406E
	lsls r0, r7, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _080447EA
	.pool
_080447DC:
	ldr r1, =gUnknown_0202406E
	lsls r0, r7, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_080447EA:
	adds r4, r1, r0
	movs r1, 0
	mov r10, r1
	add r5, sp, 0x4
_080447F2:
	mov r1, r10
	adds r1, 0xD
	adds r0, r4, 0
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	mov r1, r10
	adds r1, 0x11
	adds r0, r4, 0
	bl GetMonData
	strb r0, [r5]
	adds r0, r4, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r6, 0
	beq _08044822
	ldrb r0, [r5]
	cmp r0, 0
	beq _0804482C
_08044822:
	movs r2, 0x1
	add r10, r2
	mov r3, r10
	cmp r3, 0x3
	ble _080447F2
_0804482C:
	mov r5, r10
	cmp r5, 0x4
	bne _08044836
	bl _080451D6
_08044836:
	lsls r2, r5, 24
	lsrs r2, 24
	adds r0, r6, 0
	bl CalcPPWithPPUps
	lsls r0, 24
	lsrs r2, r0, 24
	add r0, sp, 0x4
	ldrb r0, [r0]
	mov r3, r9
	adds r1, r0, r3
	cmp r1, r2
	ble _08044860
	add r0, sp, 0x4
	strb r2, [r0]
	b _08044864
	.pool
_08044860:
	add r0, sp, 0x4
	strb r1, [r0]
_08044864:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	strb r6, [r1, 0x2]
	lsrs r0, r6, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_082DB7E1
	bl b_call_bc_move_exec
	mov r1, r10
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	add r5, sp, 0x4
	str r5, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r0, 0x3
	str r0, [sp, 0xC]
	bl _080451DE
	.pool
_080448B0:
	ldr r0, =gBattleMons
	movs r1, 0x58
	muls r1, r7
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r3, 0x7
	mov r10, r3
_080448C0:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _080448CE
	strb r2, [r1]
	movs r5, 0x5
	str r5, [sp, 0xC]
_080448CE:
	adds r1, 0x1
	movs r0, 0x1
	negs r0, r0
	add r10, r0
	mov r3, r10
	cmp r3, 0
	bge _080448C0
	movs r5, 0x8
	mov r10, r5
	ldr r0, [sp, 0xC]
	cmp r0, 0
	bne _080448EA
	bl _0804582A
_080448EA:
	ldr r0, =gUnknown_02024474
	strb r7, [r0, 0x17]
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	ldr r1, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	strb r7, [r0]
	strb r7, [r1]
	ldr r0, =gUnknown_082DB7AE
	bl b_call_bc_move_exec
	bl _080451D6
	.pool
_0804491C:
	movs r0, 0x58
	muls r0, r7
	mov r2, r8
	adds r1, r0, r2
	ldrh r0, [r1, 0x28]
	ldrh r3, [r1, 0x2C]
	cmp r0, r3
	bcc _08044930
	bl _080451D6
_08044930:
	cmp r6, 0
	beq _08044938
	bl _080451D6
_08044938:
	ldr r3, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	lsrs r0, 4
	str r0, [r3]
	cmp r0, 0
	bne _08044948
	movs r0, 0x1
	str r0, [r3]
_08044948:
	ldrh r2, [r1, 0x28]
	ldr r0, [r3]
	adds r0, r2, r0
	ldrh r1, [r1, 0x2C]
	cmp r0, r1
	ble _08044958
	subs r0, r1, r2
	str r0, [r3]
_08044958:
	ldr r0, [r3]
	negs r0, r0
	str r0, [r3]
	ldr r0, =gUnknown_082DB7F1
	bl b_call_bc_move_exec
	movs r0, 0x4
	str r0, [sp, 0xC]
	adds r0, r7, 0
	adds r1, r5, 0
	bl b_history__record_item_x12_of_player
	bl _080451D6
	.pool
_0804497C:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	str r1, [sp, 0x18]
	adds r4, r1, 0
	add r4, r8
	ldrh r0, [r4, 0x2C]
	ldrh r1, [r4, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _08044996
	bl _080451D6
_08044996:
	cmp r6, 0
	beq _0804499E
	bl _080451D6
_0804499E:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	strb r6, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r5, =gBattleMoveDamage
	ldrh r0, [r4, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _080449C2
	movs r0, 0x1
	str r0, [r5]
_080449C2:
	ldrh r2, [r4, 0x28]
	ldr r0, [r5]
	adds r0, r2, r0
	ldrh r1, [r4, 0x2C]
	cmp r0, r1
	ble _080449D2
	subs r0, r1, r2
	str r0, [r5]
_080449D2:
	ldr r0, [r5]
	negs r0, r0
	str r0, [r5]
	mov r0, r8
	adds r0, 0x48
	ldr r2, [sp, 0x18]
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0
	bl sub_806E880
	lsls r0, 24
	cmp r0, 0
	bge _080449F0
	b _08044B7C
_080449F0:
	b _08044B90
	.pool
_080449FC:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	str r5, [sp, 0x1C]
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _08044A14
	bl _080451D6
_08044A14:
	cmp r6, 0
	beq _08044A1C
	bl _080451D6
_08044A1C:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r6, 0x1
	strb r6, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, =gBattleMoveDamage
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08044A40
	str r6, [r4]
_08044A40:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _08044A50
	subs r0, r1, r2
	str r0, [r4]
_08044A50:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r1, [sp, 0x1C]
	adds r0, r1, r0
	ldr r0, [r0]
	movs r1, 0x1
	bl sub_806E880
	lsls r0, 24
	cmp r0, 0
	bge _08044A6E
	b _08044C0E
_08044A6E:
	b _08044C24
	.pool
_08044A78:
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	str r3, [sp, 0x20]
	adds r5, r3, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _08044A90
	b _080451D6
_08044A90:
	cmp r6, 0
	beq _08044A96
	b _080451D6
_08044A96:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, =gBattleMoveDamage
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08044ABC
	movs r0, 0x1
	str r0, [r4]
_08044ABC:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _08044ACC
	subs r0, r1, r2
	str r0, [r4]
_08044ACC:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r5, [sp, 0x20]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x2
	bl sub_806E880
	lsls r0, 24
	cmp r0, 0
	bge _08044AFC
	ldr r0, =gUnknown_082DB824
	bl b_call_bc_move_exec
	b _08044B02
	.pool
_08044AFC:
	ldr r0, =gUnknown_082DB7C4
	bl b_call_bc_move_exec
_08044B02:
	movs r0, 0x4
	str r0, [sp, 0xC]
	b _080451DE
	.pool
_08044B0C:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	str r1, [sp, 0x24]
	adds r5, r1, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _08044B24
	b _080451D6
_08044B24:
	cmp r6, 0
	beq _08044B2A
	b _080451D6
_08044B2A:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x3
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, =gBattleMoveDamage
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08044B50
	movs r0, 0x1
	str r0, [r4]
_08044B50:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _08044B60
	subs r0, r1, r2
	str r0, [r4]
_08044B60:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r2, [sp, 0x24]
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x3
	bl sub_806E880
	lsls r0, 24
	cmp r0, 0
	bge _08044B90
_08044B7C:
	ldr r0, =gUnknown_082DB824
	bl b_call_bc_move_exec
	b _08044B96
	.pool
_08044B90:
	ldr r0, =gUnknown_082DB7C4
	bl b_call_bc_move_exec
_08044B96:
	movs r3, 0x4
	str r3, [sp, 0xC]
	b _080451DE
	.pool
_08044BA0:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	str r5, [sp, 0x28]
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _08044BB6
	b _080451D6
_08044BB6:
	cmp r6, 0
	beq _08044BBC
	b _080451D6
_08044BBC:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, =gBattleMoveDamage
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08044BE2
	movs r0, 0x1
	str r0, [r4]
_08044BE2:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _08044BF2
	subs r0, r1, r2
	str r0, [r4]
_08044BF2:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r1, [sp, 0x28]
	adds r0, r1, r0
	ldr r0, [r0]
	movs r1, 0x4
	bl sub_806E880
	lsls r0, 24
	cmp r0, 0
	bge _08044C24
_08044C0E:
	ldr r0, =gUnknown_082DB824
	bl b_call_bc_move_exec
	b _08044C2A
	.pool
_08044C24:
	ldr r0, =gUnknown_082DB7C4
	bl b_call_bc_move_exec
_08044C2A:
	movs r2, 0x4
	str r2, [sp, 0xC]
	b _080451DE
	.pool
_08044C34:
	movs r0, 0x58
	muls r0, r7
	mov r3, r8
	adds r5, r0, r3
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044C4C
	b _080451D6
_08044C4C:
	cmp r6, 0
	beq _08044C52
	b _080451D6
_08044C52:
	movs r0, 0x19
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _08044C5C
	b _080451D6
_08044C5C:
	ldr r1, =gUnknown_02022F58
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x1
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02022F68
	strb r2, [r1]
	strb r6, [r1, 0x1]
	movs r0, 0xD2
	strb r0, [r1, 0x2]
	strb r6, [r1, 0x3]
	subs r0, 0xD3
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	movs r0, 0x11
	strb r0, [r1, 0x1A]
	movs r0, 0xF
	b _08044DF0
	.pool
_08044C9C:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044CB4
	b _080451D6
_08044CB4:
	cmp r6, 0
	beq _08044CBA
	b _080451D6
_08044CBA:
	movs r0, 0x1A
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _08044CC4
	b _080451D6
_08044CC4:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	movs r0, 0x12
	strb r0, [r1, 0x1A]
	movs r0, 0x10
	b _08044D8A
	.pool
_08044CF0:
	movs r0, 0x58
	muls r0, r7
	mov r3, r8
	adds r5, r0, r3
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044D08
	b _080451D6
_08044D08:
	cmp r6, 0
	beq _08044D0E
	b _080451D6
_08044D0E:
	movs r0, 0x1B
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _08044D18
	b _080451D6
_08044D18:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x3
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	movs r0, 0x13
	strb r0, [r1, 0x1A]
	movs r0, 0x11
	b _08044DF0
	.pool
_08044D44:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044D5C
	b _080451D6
_08044D5C:
	cmp r6, 0
	beq _08044D62
	b _080451D6
_08044D62:
	movs r0, 0x1C
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _08044D6C
	b _080451D6
_08044D6C:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	movs r0, 0x14
	strb r0, [r1, 0x1A]
	movs r0, 0x12
_08044D8A:
	strb r0, [r1, 0x10]
	strb r6, [r1, 0x11]
	ldr r0, =gUnknown_082DB84E
	bl b_call_bc_move_exec
	movs r2, 0x5
	str r2, [sp, 0xC]
	b _080451DE
	.pool
_08044DAC:
	movs r0, 0x58
	muls r0, r7
	mov r3, r8
	adds r5, r0, r3
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044DC4
	b _080451D6
_08044DC4:
	cmp r6, 0
	beq _08044DCA
	b _080451D6
_08044DCA:
	movs r0, 0x1D
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _08044DD4
	b _080451D6
_08044DD4:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	movs r0, 0x15
	strb r0, [r1, 0x1A]
	movs r0, 0x13
_08044DF0:
	strb r0, [r1, 0x10]
	strb r6, [r1, 0x11]
	ldr r0, =gUnknown_082DB84E
	bl b_call_bc_move_exec
	movs r5, 0x5
	str r5, [sp, 0xC]
	b _080451DE
	.pool
_08044E10:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r1, r8
	adds r0, r5, r1
	ldrh r4, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044E2A
	b _080451D6
_08044E2A:
	cmp r6, 0
	beq _08044E30
	b _080451D6
_08044E30:
	mov r0, r8
	adds r0, 0x50
	adds r1, r5, r0
	ldr r2, [r1]
	movs r3, 0x80
	lsls r3, 13
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08044E46
	b _080451D6
_08044E46:
	orrs r2, r3
	str r2, [r1]
	ldr r0, =gUnknown_082DB869
	bl b_call_bc_move_exec
	movs r2, 0x2
	str r2, [sp, 0xC]
	b _080451DE
	.pool
_08044E5C:
	cmp r6, 0
	beq _08044E62
	b _080451D6
_08044E62:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r3, r8
	adds r0, r5, r3
	ldrh r4, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _08044E7C
	b _080451D6
_08044E7C:
	movs r0, 0
	mov r10, r0
	adds r0, r5, 0x1
	mov r1, r8
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xB
	ble _08044EAC
	mov r0, r8
	adds r0, 0x19
	adds r1, r5, r0
_08044E98:
	adds r1, 0x1
	movs r2, 0x1
	add r10, r2
	mov r3, r10
	cmp r3, 0x4
	bgt _08044EAC
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0xB
	bgt _08044E98
_08044EAC:
	mov r5, r10
	cmp r5, 0x5
	bne _08044EB4
	b _080451D6
_08044EB4:
	movs r0, 0x58
	muls r0, r7
	adds r4, r0, 0x1
	ldr r5, =gUnknown_0202409C
_08044EBC:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	adds r0, r4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xC
	beq _08044EBC
	ldr r1, =gUnknown_02022F58
	movs r2, 0
	movs r3, 0xFD
	strb r3, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	mov r0, r10
	adds r0, 0x1
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, =gUnknown_02022F68
	strb r3, [r0]
	strb r2, [r0, 0x1]
	movs r1, 0xD1
	strb r1, [r0, 0x2]
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x4]
	movs r1, 0xD2
	strb r1, [r0, 0x5]
	strb r2, [r0, 0x6]
	subs r1, 0xD3
	strb r1, [r0, 0x7]
	ldr r0, =gUnknown_0202420E
	strb r7, [r0]
	ldr r1, =gUnknown_02024474
	mov r0, r10
	adds r0, 0x21
	strb r0, [r1, 0x1A]
	adds r0, 0x6
	strb r0, [r1, 0x10]
	strb r2, [r1, 0x11]
	ldr r0, =gUnknown_082DB84E
	bl b_call_bc_move_exec
	movs r0, 0x5
	str r0, [sp, 0xC]
	b _080451DE
	.pool
_08044F44:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	bne _08044F5C
	b _080451D6
_08044F5C:
	movs r0, 0x41
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_082DB706
	bl b_call_bc_move_exec
	movs r1, 0x1
	str r1, [sp, 0xC]
	b _080451DE
	.pool
_08044F74:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x88
	ands r0, r2
	cmp r0, 0
	bne _08044F8C
	b _080451D6
_08044F8C:
	ldr r0, =0xfffff077
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_082DB71E
	bl b_call_bc_move_exec
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _080451DE
	.pool
_08044FA8:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	bne _08044FC0
	b _080451D6
_08044FC0:
	movs r0, 0x11
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_082DB736
	bl b_call_bc_move_exec
	movs r3, 0x1
	str r3, [sp, 0xC]
	b _080451DE
	.pool
_08044FD8:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	bne _08044FF0
	b _080451D6
_08044FF0:
	movs r0, 0x21
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_082DB74E
	bl b_call_bc_move_exec
	movs r5, 0x1
	str r5, [sp, 0xC]
	b _080451DE
	.pool
_08045008:
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	mov r0, r8
	adds r0, 0x4C
	adds r2, r3, r0
	ldr r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _08045020
	b _080451D6
_08045020:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	mov r1, r8
	adds r1, 0x50
	adds r1, r3, r1
	ldr r0, [r1]
	ldr r2, =0xf7ffffff
	ands r0, r2
	str r0, [r1]
	ldr r0, =gUnknown_082DB766
	b _0804518A
	.pool
_08045044:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x50
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x7
	ands r0, r2
	cmp r0, 0
	bne _0804505C
	b _080451D6
_0804505C:
	movs r0, 0x8
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_082DB77E
	bl b_call_bc_move_exec
	movs r1, 0x2
	str r1, [sp, 0xC]
	b _080451DE
	.pool
_08045074:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r0, r8
	adds r0, 0x4C
	adds r4, r5, r0
	ldr r2, [r4]
	ldrb r0, [r4]
	cmp r0, 0
	bne _0804509A
	mov r0, r8
	adds r0, 0x50
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0804509A
	b _080451D6
_0804509A:
	movs r3, 0
	mov r10, r3
	movs r0, 0x88
	ands r2, r0
	cmp r2, 0
	beq _080450B2
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC70
	bl StringCopy
	movs r0, 0x1
	mov r10, r0
_080450B2:
	ldr r0, [r4]
	movs r1, 0x7
	mov r9, r1
	ands r0, r1
	mov r6, r8
	adds r6, 0x50
	cmp r0, 0
	beq _080450D8
	adds r2, r5, r6
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC78
	bl StringCopy
	movs r2, 0x1
	add r10, r2
_080450D8:
	ldr r0, [r4]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080450EE
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC80
	bl StringCopy
	movs r3, 0x1
	add r10, r3
_080450EE:
	ldr r0, [r4]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08045104
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC88
	bl StringCopy
	movs r0, 0x1
	add r10, r0
_08045104:
	ldr r0, [r4]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0804511A
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC90
	bl StringCopy
	movs r1, 0x1
	add r10, r1
_0804511A:
	adds r0, r5, r6
	ldr r0, [r0]
	mov r2, r9
	ands r0, r2
	cmp r0, 0
	beq _08045132
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC98
	bl StringCopy
	movs r3, 0x1
	add r10, r3
_08045132:
	mov r5, r10
	cmp r5, 0x1
	bgt _08045164
	ldr r1, =gUnknown_02024332
	movs r0, 0
	b _08045168
	.pool
_08045164:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
_08045168:
	strb r0, [r1, 0x5]
	ldr r2, =gBattleMons
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	movs r1, 0
	str r1, [r0]
	adds r2, 0x50
	adds r3, r2
	ldr r0, [r3]
	subs r1, 0x8
	ands r0, r1
	str r0, [r3]
	ldr r0, =gUnknown_082DB794
_0804518A:
	bl b_call_bc_move_exec
	movs r0, 0x1
	str r0, [sp, 0xC]
	b _080451DE
	.pool
_080451A0:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x50
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0xF0
	lsls r0, 12
	ands r0, r2
	cmp r0, 0
	beq _080451D6
	ldr r0, =0xfff0ffff
	ands r2, r0
	str r2, [r1]
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BCA0
	bl StringCopy
	ldr r0, =gUnknown_082DB794
	bl b_call_bc_move_exec
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	movs r1, 0x2
	str r1, [sp, 0xC]
_080451D6:
	ldr r2, [sp, 0xC]
	cmp r2, 0
	bne _080451DE
	b _0804582A
_080451DE:
	ldr r0, =gUnknown_02024474
	strb r7, [r0, 0x17]
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	strb r7, [r0]
	strb r7, [r4]
	ldr r3, [sp, 0xC]
	cmp r3, 0x1
	beq _08045220
	cmp r3, 0x3
	beq _08045226
	b _0804582A
	.pool
_08045220:
	movs r0, 0x58
	muls r0, r7
	b _0804568C
_08045226:
	ldr r4, =gBattleMons
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	beq _08045242
	b _0804582A
_08045242:
	ldr r1, =gUnknown_020242BC
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	mov r5, r10
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08045262
	b _0804582A
_08045262:
	adds r1, r5, r3
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	add r0, sp, 0x4
	ldrb r0, [r0]
	strb r0, [r1]
	b _0804582A
	.pool
_08045280:
	movs r7, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r7, r0
	bcc _0804528C
	b _0804582A
_0804528C:
	ldr r4, =gUnknown_02024208
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _080452C0
	ldr r1, =gUnknown_02024404
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	b _080452D0
	.pool
_080452C0:
	ldrh r0, [r4]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r5, r0, 24
	ldrh r0, [r4]
	bl itemid_get_quality
_080452D0:
	subs r0, r5, 0x2
	cmp r0, 0x1A
	bls _080452D8
	b _08045674
_080452D8:
	lsls r0, 2
	ldr r1, =_080452E8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080452E8:
	.4byte _08045354
	.4byte _08045444
	.4byte _08045390
	.4byte _080453CC
	.4byte _08045408
	.4byte _08045674
	.4byte _0804548C
	.4byte _08045520
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045614
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _08045674
	.4byte _080454C8
_08045354:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0804536A
	b _08045674
_0804536A:
	movs r0, 0x41
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB70C
	str r0, [r1]
	movs r0, 0x1
	str r0, [sp, 0xC]
	b _0804567A
	.pool
_08045390:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x88
	ands r0, r1
	cmp r0, 0
	bne _080453A6
	b _08045674
_080453A6:
	ldr r0, =0xfffff077
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB724
	str r0, [r1]
	movs r1, 0x1
	str r1, [sp, 0xC]
	b _0804567A
	.pool
_080453CC:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _080453E2
	b _08045674
_080453E2:
	movs r0, 0x11
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB73C
	str r0, [r1]
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _0804567A
	.pool
_08045408:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0804541E
	b _08045674
_0804541E:
	movs r0, 0x21
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB754
	str r0, [r1]
	movs r3, 0x1
	str r3, [sp, 0xC]
	b _0804567A
	.pool
_08045444:
	ldr r2, =gBattleMons
	movs r0, 0x58
	adds r4, r7, 0
	muls r4, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r3, r4, r0
	ldr r1, [r3]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0804545E
	b _08045674
_0804545E:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r3]
	adds r2, 0x50
	adds r2, r4, r2
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB76C
	b _080455DC
	.pool
_0804548C:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _080454A2
	b _08045674
_080454A2:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB784
	str r0, [r1]
	movs r0, 0x2
	str r0, [sp, 0xC]
	b _0804567A
	.pool
_080454C8:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0xF0
	lsls r0, 12
	ands r0, r1
	cmp r0, 0
	bne _080454E0
	b _08045674
_080454E0:
	ldr r0, =0xfff0ffff
	ands r1, r0
	str r1, [r2]
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BCA0
	bl StringCopy
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB79A
	str r0, [r1]
	movs r1, 0x2
	str r1, [sp, 0xC]
	b _0804567A
	.pool
_08045520:
	ldr r4, =gBattleMons
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	adds r0, r4, 0
	adds r0, 0x4C
	adds r6, r5, r0
	ldr r2, [r6]
	ldrb r0, [r6]
	cmp r0, 0
	bne _08045548
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _08045548
	b _08045674
_08045548:
	movs r0, 0x88
	ands r2, r0
	cmp r2, 0
	beq _08045558
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC70
	bl StringCopy
_08045558:
	ldr r0, [r6]
	movs r2, 0x7
	mov r8, r2
	ands r0, r2
	adds r4, 0x50
	cmp r0, 0
	beq _08045578
	adds r2, r5, r4
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC78
	bl StringCopy
_08045578:
	ldr r0, [r6]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804558A
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC80
	bl StringCopy
_0804558A:
	ldr r0, [r6]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0804559C
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC88
	bl StringCopy
_0804559C:
	ldr r0, [r6]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080455AE
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC90
	bl StringCopy
_080455AE:
	adds r5, r4
	ldr r0, [r5]
	mov r3, r8
	ands r0, r3
	cmp r0, 0
	beq _080455C2
	ldr r0, =gUnknown_02022F58
	ldr r1, =gUnknown_0831BC98
	bl StringCopy
_080455C2:
	movs r4, 0
	str r4, [r6]
	ldr r0, [r5]
	movs r1, 0x8
	negs r1, r1
	ands r0, r1
	str r0, [r5]
	bl b_movescr_stack_push_cursor
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB79A
_080455DC:
	str r0, [r1]
	movs r5, 0x1
	str r5, [sp, 0xC]
	b _0804567A
	.pool
_08045614:
	ldr r0, =gBattleMons
	mov r8, r0
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r3, 0x7
	mov r10, r3
_0804562A:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _08045638
	strb r2, [r1]
	movs r5, 0x5
	str r5, [sp, 0xC]
_08045638:
	adds r1, 0x1
	movs r0, 0x1
	negs r0, r0
	add r10, r0
	mov r3, r10
	cmp r3, 0
	bge _0804562A
	ldr r5, [sp, 0xC]
	cmp r5, 0
	beq _080456B8
	ldr r0, =gUnknown_02024474
	strb r7, [r0, 0x17]
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB7B4
	str r0, [r1]
	b _0804582A
	.pool
_08045674:
	ldr r0, [sp, 0xC]
	cmp r0, 0
	beq _080456B8
_0804567A:
	ldr r0, =gUnknown_02024474
	strb r7, [r0, 0x17]
	ldr r0, =gUnknown_0202420F
	strb r7, [r0]
	ldr r4, =gUnknown_02024064
	strb r7, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
_0804568C:
	ldr r1, =gUnknown_020240D0
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804582A
	.pool
_080456B8:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r7, r0
	bcs _080456C8
	b _0804528C
_080456C8:
	b _0804582A
	.pool
_080456D0:
	ldr r7, =gBattleMoveDamage
	ldr r0, [r7]
	cmp r0, 0
	bne _080456DA
	b _0804582A
_080456DA:
	mov r1, r8
	cmp r1, 0x1E
	beq _080456EC
	cmp r1, 0x3E
	beq _08045794
	b _0804582A
	.pool
_080456EC:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _080456FA
	b _0804582A
_080456FA:
	ldr r2, =gUnknown_0202437C
	ldr r4, =gEnemyMonIndex
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08045720
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08045720
	b _0804582A
_08045720:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	ldr r2, [sp, 0x10]
	cmp r0, r2
	bcs _0804582A
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0804582A
	ldr r2, =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0804582A
	ldr r1, =gUnknown_02024332
	movs r0, 0x8
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	movs r0, 0
	movs r1, 0
	bl sub_8048760
	bl b_movescr_stack_pop_cursor
	b _0804582A
	.pool
_08045794:
	ldr r0, =gBattleMoveFlags
	ldrb r0, [r0]
	movs r5, 0x29
	ands r5, r0
	cmp r5, 0
	bne _0804582A
	ldr r1, =gUnknown_0202437C
	ldr r4, =gEnemyMonIndex
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 2
	adds r6, r1, 0x4
	adds r0, r6
	ldr r1, [r0]
	cmp r1, 0
	beq _0804582A
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0804582A
	ldr r0, =gUnknown_0202420B
	ldrb r3, [r0]
	cmp r3, r2
	beq _0804582A
	ldr r2, =gBattleMons
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	beq _0804582A
	cmp r1, 0
	beq _0804582A
	ldr r0, =gUnknown_02024208
	mov r1, sp
	ldrh r1, [r1, 0x14]
	strh r1, [r0]
	ldr r0, =gUnknown_0202420F
	strb r3, [r0]
	ldr r0, =gUnknown_02024474
	strb r3, [r0, 0x17]
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldr r1, [sp, 0x10]
	bl __divsi3
	negs r0, r0
	str r0, [r7]
	ldrb r1, [r4]
	cmp r0, 0
	bne _0804580C
	movs r0, 0x1
	negs r0, r0
	str r0, [r7]
_0804580C:
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	str r5, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB7F7
	str r0, [r1]
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0xC]
_0804582A:
	ldr r0, [sp, 0xC]
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end berry_effects_maybe

	thumb_func_start sub_8045868
sub_8045868: @ 8045868
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_020242BC
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	movs r2, 0
	strb r2, [r1, 0x10]
	ldr r1, =gBattleMons
	movs r2, 0x58
	adds r3, r0, 0
	muls r3, r2
	adds r1, 0x50
	adds r3, r1
	ldr r1, [r3]
	ldr r2, =0xfdffffff
	ands r1, r2
	str r1, [r3]
	ldr r1, =gUnknown_020242AC
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r2, =0xffffbfff
	ands r1, r2
	str r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_8045868

	thumb_func_start sub_80458B4
sub_80458B4: @ 80458B4
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _080458D0
	ldr r1, =gUnknown_0831BD10
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_080458D0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80458B4

	thumb_func_start sub_80458E0
sub_80458E0: @ 80458E0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 24
	lsrs r0, r1, 24
	movs r5, 0
	cmp r0, 0
	beq _080458FE
	subs r0, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	b _0804590A
_080458FE:
	ldr r1, =gBattleMoves
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x6]
_0804590A:
	cmp r6, 0x40
	bls _08045910
	b _08045C20
_08045910:
	lsls r0, r6, 2
	ldr r1, =_08045924
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08045924:
	.4byte _08045A28
	.4byte _08045B28
	.4byte _08045C1C
	.4byte _08045C20
	.4byte _08045B40
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045B28
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C1C
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045B28
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045C20
	.4byte _08045B28
_08045A28:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_02024294
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r2, r0, r1
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _08045A5A
	ldr r1, =gBattleMons
	ldrb r4, [r2, 0x9]
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08045A5A
	b _08045B70
_08045A5A:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r7, 1
	mov r8, r0
_08045A6A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	bl __modsi3
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r6, =gUnknown_0202420B
	ldrb r3, [r6]
	cmp r5, r3
	beq _08045A6A
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _08045A6A
	ldr r0, =gUnknown_02024210
	ldrb r2, [r0]
	ldr r1, =gBitTable
	lsls r0, r5, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	bne _08045A6A
	ldr r0, =gBattleMoves
	mov r3, r8
	adds r1, r3, r7
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x2]
	cmp r0, 0xD
	beq _08045AB8
	b _08045C20
_08045AB8:
	ldrb r1, [r6]
	str r2, [sp]
	movs r0, 0x10
	movs r2, 0x1F
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08045ACE
	b _08045C20
_08045ACE:
	ldr r2, =gBattleMons
	movs r1, 0x58
	adds r0, r5, 0
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1F
	bne _08045AE2
	b _08045C20
_08045AE2:
	movs r4, 0x2
	eors r5, r4
	adds r0, r5, 0
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r1, [r0]
	adds r0, r5, 0
	bl b_history__record_ability_usage_of_player
	ldr r1, =gUnknown_0202437C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	b _08045C20
	.pool
_08045B28:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	adds r1, r0, 0
	movs r2, 0x1
	movs r0, 0x1
	ands r0, r1
	eors r0, r2
	b _08045BD2
	.pool
_08045B40:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_02024294
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r2, r0, r1
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _08045B80
	ldr r1, =gBattleMons
	ldrb r4, [r2, 0x9]
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08045B80
_08045B70:
	adds r5, r4, 0
	b _08045C20
	.pool
_08045B80:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r4, 0x1
	ands r0, r4
	cmp r0, 0
	beq _08045BFC
	movs r0, 0x4
	ands r6, r0
	cmp r6, 0
	beq _08045BFC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08045BC0
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _08045BBC
	movs r0, 0x1
	b _08045BD2
	.pool
_08045BBC:
	movs r0, 0x3
	b _08045BD2
_08045BC0:
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _08045BD0
	movs r0, 0
	b _08045BD2
_08045BD0:
	movs r0, 0x2
_08045BD2:
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08045C20
	movs r0, 0x2
	eors r5, r0
	b _08045C20
	.pool
_08045BFC:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	adds r1, r0, 0
	movs r2, 0x1
	movs r0, 0x1
	ands r0, r1
	eors r0, r2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r5, r0, 24
	b _08045C20
	.pool
_08045C1C:
	ldr r0, =gUnknown_0202420B
	ldrb r5, [r0]
_08045C20:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	strb r5, [r0, 0xC]
	adds r0, r5, 0
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80458E0

	thumb_func_start sub_8045C44
sub_8045C44: @ 8045C44
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _08045C8A
	ldr r0, =gUnknown_0202406E
	lsls r4, 1
	adds r5, r4, r0
	ldrh r0, [r5]
	movs r7, 0x64
	muls r0, r7
	ldr r6, =gPlayerParty
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	movs r1, 0xCD
	lsls r1, 1
	cmp r0, r1
	beq _08045C98
	ldrh r0, [r5]
	muls r0, r7
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	cmp r0, 0x97
	beq _08045C98
_08045C8A:
	movs r0, 0x1
	b _08045CAE
	.pool
_08045C98:
	ldr r0, =gUnknown_0202406E
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x50
	movs r2, 0
	bl GetMonData
_08045CAE:
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8045C44

	thumb_func_start sub_8045CBC
sub_8045CBC: @ 8045CBC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	movs r6, 0
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	bne _08045DAC
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _08045DAC
	ldrb r0, [r4]
	bl sub_8045C44
	cmp r0, 0
	beq _08045D76
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _08045D08
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	beq _08045DAC
_08045D08:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x003f0100
	ands r0, r1
	cmp r0, 0
	bne _08045DAC
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	cmp r1, 0
	bne _08045DAC
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x54
	adds r0, r1, r0
	ldr r0, [r0]
	adds r2, 0x3C
	adds r1, r2
	bl sub_806E8D4
	lsls r0, 24
	cmp r0, 0
	beq _08045DAC
	ldr r0, =0x0000086e
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _08045DAC
	movs r6, 0xA
	ldr r0, =0x00000868
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08045D5A
	movs r6, 0x1E
_08045D5A:
	ldr r0, =0x0000086a
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08045D68
	movs r6, 0x32
_08045D68:
	ldr r0, =0x0000086c
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08045D76
	movs r6, 0x46
_08045D76:
	ldr r5, =gBattleMons
	ldr r0, =gUnknown_0202420B
	mov r8, r0
	ldrb r0, [r0]
	movs r7, 0x58
	muls r0, r7
	adds r0, r5
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, r6
	bls _08045DAC
	bl Random
	movs r1, 0xFF
	ands r1, r0
	mov r2, r8
	ldrb r0, [r2]
	adds r2, r0, 0
	muls r2, r7
	adds r0, r2, r5
	adds r0, 0x2A
	ldrb r0, [r0]
	adds r0, r6
	muls r0, r1
	asrs r4, r0, 8
	cmp r4, r6
	bge _08045DD4
_08045DAC:
	movs r0, 0
	b _08045FD0
	.pool
_08045DD4:
	ldr r3, =gUnknown_020241EA
	ldrh r0, [r3]
	cmp r0, 0x63
	bne _08045DEA
	adds r0, r5, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r2, =0xff7fffff
	ands r1, r2
	str r1, [r0]
_08045DEA:
	mov r1, r8
	ldrb r0, [r1]
	muls r0, r7
	adds r1, r5, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08045E20
	ldrh r0, [r3]
	cmp r0, 0xAD
	beq _08045E0A
	cmp r0, 0xD6
	bne _08045E20
_08045E0A:
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB695
	b _08045F7A
	.pool
_08045E20:
	bl Random
	movs r5, 0xFF
	adds r1, r5, 0
	ands r1, r0
	ldr r7, =gBattleMons
	ldr r2, =gUnknown_0202420B
	mov r9, r2
	ldrb r3, [r2]
	movs r0, 0x58
	mov r8, r0
	mov r0, r8
	muls r0, r3
	adds r0, r7
	adds r0, 0x2A
	ldrb r2, [r0]
	adds r0, r2, r6
	muls r0, r1
	asrs r4, r0, 8
	cmp r4, r6
	bge _08045EE8
	ldr r6, =gBitTable
	ldr r5, =gUnknown_020241E8
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	adds r0, r3, 0
	movs r2, 0xFF
	bl sub_803FECC
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xF
	bne _08045E68
	b _08045F6A
_08045E68:
	ldr r1, =gUnknown_020241E9
	mov r8, r1
	movs r7, 0x3
_08045E6E:
	bl Random
	ands r0, r7
	mov r2, r8
	strb r0, [r2]
	strb r0, [r5]
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	bne _08045E6E
	ldr r4, =gUnknown_020241EE
	ldr r3, =gBattleMons
	ldr r0, =gUnknown_020241E8
	ldrb r0, [r0]
	lsls r0, 1
	ldr r1, =gUnknown_0202420B
	ldrb r2, [r1]
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6A5
	str r0, [r1]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 14
	b _08045FCA
	.pool
_08045EE8:
	subs r0, r2, r6
	lsls r0, 24
	lsrs r6, r0, 24
	bl Random
	adds r4, r5, 0
	ands r4, r0
	cmp r4, r6
	bge _08045F64
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r7, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	bne _08045F64
	adds r0, r1, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	beq _08045F64
	cmp r0, 0xF
	beq _08045F64
	movs r2, 0
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r0]
	mov r8, r0
	cmp r2, r3
	bge _08045F4A
	ldr r0, [r7, 0x50]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	bne _08045F4A
	adds r1, r7, 0
	adds r1, 0x50
	movs r5, 0x70
_08045F3A:
	adds r1, 0x58
	adds r2, 0x1
	cmp r2, r3
	bge _08045F4A
	ldr r0, [r1]
	ands r0, r5
	cmp r0, 0
	beq _08045F3A
_08045F4A:
	mov r0, r8
	ldrb r0, [r0]
	cmp r2, r0
	bne _08045F64
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6D9
	b _08045F7A
	.pool
_08045F64:
	subs r4, r6
	cmp r4, r6
	blt _08045F8C
_08045F6A:
	bl Random
	ldr r2, =gUnknown_02024332
	movs r1, 0x3
	ands r1, r0
	strb r1, [r2, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6AD
_08045F7A:
	str r0, [r1]
	movs r0, 0x1
	b _08045FD0
	.pool
_08045F8C:
	ldr r4, =gUnknown_0202420B
	ldrb r1, [r4]
	movs r0, 0x58
	muls r1, r0
	ldr r0, =gBattleMons
	adds r1, r0
	movs r0, 0x28
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	ldrb r0, [r4]
	str r0, [sp, 0x8]
	ldrb r0, [r4]
	str r0, [sp, 0xC]
	adds r0, r1, 0
	movs r2, 0x1
	movs r3, 0
	bl sub_806957C
	ldr r1, =gBattleMoveDamage
	str r0, [r1]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB6F0
	str r0, [r1]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
_08045FCA:
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x2
_08045FD0:
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8045CBC

	thumb_func_start atk00_attackcanceler
atk00_attackcanceler: @ 8045FFC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r0, =gUnknown_0202433A
	ldrb r0, [r0]
	cmp r0, 0
	beq _08046020
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	strb r0, [r1]
	b _08046398
	.pool
_08046020:
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08046064
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	bne _08046064
	movs r0, 0x80
	lsls r0, 12
	orrs r1, r0
	str r1, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D8A4E
	b _08046396
	.pool
_08046064:
	bl sub_8041A6C
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _08046072
	b _08046398
_08046072:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	str r2, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0804608A
	b _08046398
_0804608A:
	ldr r4, =gBattleMons
	ldr r0, =gUnknown_020241E8
	ldrb r1, [r0]
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	movs r0, 0x58
	muls r2, r0
	adds r1, r2
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	ldr r5, =gUnknown_02024280
	cmp r0, 0
	bne _08046108
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xA5
	beq _08046108
	ldr r0, [r5]
	ldr r1, =0x00800200
	ands r0, r1
	cmp r0, 0
	bne _08046108
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _08046108
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB07A
	str r0, [r1]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	b _08046398
	.pool
_08046108:
	ldr r0, [r5]
	ldr r1, =0xff7fffff
	ands r0, r1
	str r0, [r5]
	movs r6, 0x80
	lsls r6, 18
	ands r0, r6
	cmp r0, 0
	bne _08046160
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r1, r4, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _08046160
	bl sub_8045CBC
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _08046160
	cmp r2, 0x2
	bne _08046150
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	b _08046398
	.pool
_08046150:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08046398
	.pool
_08046160:
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 18
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_0202433C
	ldr r1, =gEnemyMonIndex
	ldrb r3, [r1]
	lsls r0, r3, 4
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 27
	mov r8, r1
	mov r9, r2
	cmp r0, 0
	bge _080461E8
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080461E8
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r2, =0x00000115
	adds r1, r3, 0
	bl sub_803F480
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, 4
	add r1, r9
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB194
	b _08046396
	.pool
_080461E8:
	movs r2, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r2, r0
	bge _0804622A
	ldr r6, =gUnknown_0202433C
	ldr r1, =gBattleMoves
	mov r12, r1
	adds r5, r0, 0
	ldr r7, =gUnknown_0202407E
_080461FC:
	adds r4, r2, r7
	ldrb r3, [r4]
	lsls r0, r3, 4
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _08046224
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r1, [r0, 0x8]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08046224
	b _08046350
_08046224:
	adds r2, 0x1
	cmp r2, r5
	blt _080461FC
_0804622A:
	ldr r0, =gUnknown_0202437C
	mov r1, r8
	ldrb r2, [r1]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r3, [r1]
	lsls r0, r3, 30
	cmp r0, 0
	bge _08046288
	movs r0, 0x3
	negs r0, r0
	ands r0, r3
	strb r0, [r1]
	ldr r4, =gUnknown_0202420A
	movs r0, 0x1F
	strb r0, [r4]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB53E
	str r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	ldrb r1, [r4]
	bl b_history__record_ability_usage_of_player
	b _08046398
	.pool
_08046288:
	lsls r0, r2, 4
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	bne _08046296
	b _08046390
_08046296:
	ldr r1, =gBattleMoves
	ldr r2, =gUnknown_020241EA
	ldrh r3, [r2]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	adds r4, r2, 0
	cmp r0, 0
	beq _08046390
	cmp r3, 0xAE
	bne _080462D4
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _080462D4
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _08046390
_080462D4:
	ldrh r0, [r4]
	bl sub_8052F48
	lsls r0, 24
	cmp r0, 0
	beq _080462FA
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	beq _08046390
_080462FA:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl b_cancel_multi_turn_move_maybe
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024250
	ldr r3, =gEnemyMonIndex
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, =gUnknown_02024258
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x6]
	b _08046390
	.pool
_08046350:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r2, =0x00000121
	adds r1, r3, 0
	bl sub_803F480
	ldrb r1, [r4]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024474
	ldrb r0, [r4]
	strb r0, [r1, 0x17]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB1AC
	b _08046396
	.pool
_08046390:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
_08046396:
	str r0, [r1]
_08046398:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk00_attackcanceler

	thumb_func_start mcmd_jump_if_move_not_executed
mcmd_jump_if_move_not_executed: @ 80463AC
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r6, r1, 16
	ldr r1, =gUnknown_02024214
	ldr r5, [r1]
	adds r4, r5, r0
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0804640C
	ldr r1, =gUnknown_02024250
	ldr r3, =gEnemyMonIndex
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, =gUnknown_02024258
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldrb r4, [r5, 0x1]
	ldrb r0, [r5, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r5, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r5, 0x4]
	lsls r0, 24
	orrs r4, r0
	b _08046426
	.pool
_0804640C:
	bl b_feature_update_destiny_bond
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	str r6, [sp]
	movs r0, 0x3
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0804642A
_08046426:
	ldr r0, =gUnknown_02024214
	str r4, [r0]
_0804642A:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end mcmd_jump_if_move_not_executed

	thumb_func_start atk40_801DBA0
atk40_801DBA0: @ 804643C
	push {lr}
	ldr r1, =gUnknown_0202433C
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _0804649C
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0804649C
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x5
	movs r1, 0
	bl mcmd_jump_if_move_not_executed
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x6]
	b _080464A4
	.pool
_0804649C:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080464A4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk40_801DBA0

	thumb_func_start sub_80464AC
sub_80464AC: @ 80464AC
	push {r4,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r4, 0
	ldr r1, =gUnknown_0202433C
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _080464F8
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080464F8
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x7
	adds r1, r3, 0
	bl mcmd_jump_if_move_not_executed
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x6]
	movs r4, 0x1
_080464F8:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80464AC

	thumb_func_start sub_8046518
sub_8046518: @ 8046518
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r2, =gUnknown_020242AC
	ldr r3, =gEnemyMonIndex
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r1, [r0]
	movs r0, 0x18
	ands r1, r0
	adds r6, r2, 0
	cmp r1, 0
	beq _0804654A
	ldr r1, =gUnknown_020242BC
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r0, 0x15]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08046634
_0804654A:
	ldr r0, =gUnknown_02024280
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 9
	ands r1, r2
	adds r2, r0, 0
	cmp r1, 0
	bne _08046590
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08046590
_0804656A:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08046634
	.pool
_08046590:
	ldr r0, [r2]
	ldr r1, =0xfffeffff
	ands r0, r1
	str r0, [r2]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	bne _080465B2
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0804656A
_080465B2:
	ldr r0, [r2]
	ldr r1, =0xfffdffff
	ands r0, r1
	str r0, [r2]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	bne _080465D2
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ands r0, r1
	cmp r0, 0
	bne _0804656A
_080465D2:
	ldr r0, [r2]
	ldr r1, =0xfffbffff
	ands r0, r1
	str r0, [r2]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r5, 1
	cmp r0, 0
	bne _08046622
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08046622
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08046622
	ldr r0, =gBattleMoves
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x98
	beq _08046634
_08046622:
	ldr r1, =gBattleMoves
	adds r0, r4, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x11
	beq _08046634
	cmp r0, 0x4E
	bne _08046654
_08046634:
	movs r0, 0x7
	adds r1, r5, 0
	bl mcmd_jump_if_move_not_executed
	movs r0, 0x1
	b _08046656
	.pool
_08046654:
	movs r0, 0
_08046656:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8046518

	thumb_func_start atk01_accuracycheck
atk01_accuracycheck: @ 8046660
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	ldr r0, =gUnknown_02024214
	ldr r5, [r0]
	ldrb r6, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	lsls r1, 8
	orrs r6, r1
	adds r1, r6, 0x2
	lsls r1, 16
	lsrs r1, 16
	adds r7, r0, 0
	cmp r1, 0x1
	bhi _0804671C
	ldr r2, =gUnknown_020242AC
	ldr r3, =gEnemyMonIndex
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r1, [r0]
	movs r0, 0x18
	ands r1, r0
	cmp r1, 0
	beq _080466D0
	ldr r0, =0x0000ffff
	cmp r6, r0
	bne _080466D0
	ldr r1, =gUnknown_020242BC
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r0, 0x15]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080466D0
	adds r0, r5, 0x7
	str r0, [r7]
	b _080469D2
	.pool
_080466D0:
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _08046700
	ldr r2, [r7]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r7]
	b _080469D2
	.pool
_08046700:
	movs r0, 0
	bl sub_80464AC
	lsls r0, 24
	cmp r0, 0
	beq _0804670E
	b _080469D2
_0804670E:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x7
	str r0, [r1]
	b _080469D2
	.pool
_0804671C:
	cmp r6, 0
	bne _08046724
	ldr r0, =gUnknown_020241EA
	ldrh r6, [r0]
_08046724:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r0, [r0, 0x13]
	cmp r0, 0
	beq _08046744
	movs r1, 0x3F
	mov r10, r1
	mov r2, r10
	ands r2, r0
	mov r10, r2
	b _08046752
	.pool
_08046744:
	ldr r1, =gBattleMoves
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	mov r10, r0
_08046752:
	adds r0, r6, 0
	bl sub_80464AC
	lsls r0, 24
	cmp r0, 0
	beq _08046760
	b _080469D2
_08046760:
	adds r0, r6, 0
	bl sub_8046518
	lsls r0, 24
	cmp r0, 0
	beq _0804676E
	b _080469D2
_0804676E:
	ldr r3, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	movs r2, 0x58
	adds r4, r0, 0
	muls r4, r2
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _080467A8
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	ldrb r5, [r0, 0x1E]
	b _080467BE
	.pool
_080467A8:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	ldrb r0, [r0, 0x1E]
	adds r0, 0x6
	adds r1, r4, r3
	ldrb r1, [r1, 0x1F]
	subs r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
_080467BE:
	lsls r0, r5, 24
	cmp r0, 0
	bge _080467C6
	movs r5, 0
_080467C6:
	lsls r0, r5, 24
	asrs r0, 24
	cmp r0, 0xC
	ble _080467D0
	movs r5, 0xC
_080467D0:
	ldr r1, =gBattleMoves
	lsls r4, r6, 1
	adds r0, r4, r6
	lsls r0, 2
	adds r7, r0, r1
	ldrb r3, [r7, 0x3]
	mov r8, r3
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	str r4, [sp, 0x4]
	cmp r0, 0
	bne _08046822
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08046822
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _08046822
	ldrb r0, [r7]
	cmp r0, 0x98
	bne _08046822
	movs r0, 0x32
	mov r8, r0
_08046822:
	ldr r1, =gUnknown_0831C0F4
	lsls r0, r5, 24
	asrs r0, 22
	adds r0, r1
	ldrb r1, [r0]
	mov r4, r8
	muls r4, r1
	ldrb r1, [r0, 0x1]
	adds r0, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r7, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	movs r5, 0x58
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0xE
	bne _08046860
	lsls r0, r4, 6
	adds r0, r4
	lsls r0, 1
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_08046860:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _080468B8
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _080468B8
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _080468B8
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _080468B8
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_080468B8:
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r9, r2
	cmp r0, 0x37
	bne _080468E4
	mov r1, r10
	cmp r1, 0x8
	bhi _080468E4
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_080468E4:
	ldr r2, =gEnemyMonIndex
	mov r8, r2
	ldrb r2, [r2]
	movs r7, 0x58
	adds r0, r2, 0
	muls r0, r7
	mov r3, r9
	adds r1, r0, r3
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08046928
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	ldrb r2, [r0, 0x1A]
	b _08046944
	.pool
_08046928:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r5, r0, 24
	mov r1, r8
	ldrb r0, [r1]
	muls r0, r7
	add r0, r9
	ldrh r0, [r0, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r2, r0, 24
_08046944:
	ldr r0, =gUnknown_0202420F
	ldr r1, =gEnemyMonIndex
	ldrb r1, [r1]
	strb r1, [r0]
	cmp r5, 0x16
	bne _08046960
	movs r0, 0x64
	subs r0, r2
	muls r0, r4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_08046960:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0x1
	cmp r0, r4
	ble _080469CA
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080469C0
	ldr r1, =gBattleMoves
	ldr r2, [sp, 0x4]
	adds r0, r2, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x6]
	cmp r0, 0x8
	beq _080469A2
	cmp r0, 0x20
	bne _080469C0
_080469A2:
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _080469C4
	.pool
_080469C0:
	ldr r1, =gUnknown_02024332
	movs r0, 0
_080469C4:
	strb r0, [r1, 0x6]
	bl b_wonderguard_and_levitate
_080469CA:
	movs r0, 0x7
	adds r1, r6, 0
	bl mcmd_jump_if_move_not_executed
_080469D2:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk01_accuracycheck

	thumb_func_start atk02_attackstring
atk02_attackstring: @ 80469E8
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r5, [r0]
	cmp r5, 0
	bne _08046A20
	ldr r4, =gUnknown_02024280
	ldr r0, [r4]
	movs r1, 0xC0
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	bne _08046A14
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x4
	bl b_std_message
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 3
	orrs r0, r1
	str r0, [r4]
_08046A14:
	ldr r0, =gUnknown_02024214
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	ldr r0, =gUnknown_02024332
	strb r5, [r0, 0x7]
_08046A20:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk02_attackstring

	thumb_func_start atk03_ppreduce
atk03_ppreduce: @ 8046A3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r6, 0x1
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _08046A54
	b _08046BEE
_08046A54:
	ldr r1, =gUnknown_0202437C
	ldr r2, =gUnknown_0202420B
	ldrb r3, [r2]
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r4, r0, 31
	mov r9, r2
	cmp r4, 0
	bne _08046AF6
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	cmp r0, 0x20
	beq _08046AA6
	cmp r0, 0x20
	bgt _08046AA0
	cmp r0, 0x8
	beq _08046ABC
	b _08046AD6
	.pool
_08046AA0:
	cmp r0, 0x40
	beq _08046ABC
	b _08046AD6
_08046AA6:
	str r4, [sp]
	movs r0, 0x12
	adds r1, r3, 0
	movs r2, 0x2E
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0x1
	b _08046AF6
_08046ABC:
	mov r0, r9
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x10
	movs r2, 0x2E
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0
	b _08046AF6
_08046AD6:
	ldr r1, =gEnemyMonIndex
	mov r2, r9
	ldrb r0, [r2]
	ldrb r7, [r1]
	cmp r0, r7
	beq _08046AF6
	ldr r2, =gBattleMons
	ldrb r1, [r1]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2E
	bne _08046AF6
	adds r6, 0x1
_08046AF6:
	ldr r0, =gUnknown_02024280
	ldr r4, [r0]
	movs r0, 0xA0
	lsls r0, 4
	ands r4, r0
	cmp r4, 0
	bne _08046BDC
	ldr r2, =gBattleMons
	ldr r3, =gUnknown_020241E8
	ldr r1, =gUnknown_0202420B
	ldrb r5, [r1]
	movs r0, 0x58
	mov r8, r0
	mov r0, r8
	muls r0, r5
	ldrb r7, [r3]
	adds r0, r7
	movs r7, 0x24
	adds r7, r2
	mov r12, r7
	add r0, r12
	ldrb r0, [r0]
	mov r9, r1
	mov r10, r2
	adds r7, r3, 0
	cmp r0, 0
	beq _08046BDC
	ldr r0, =gUnknown_0202433C
	lsls r1, r5, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1, 0x2]
	mov r1, r9
	ldrb r0, [r1]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	ldrb r1, [r7]
	adds r0, r1
	mov r1, r12
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r6
	ble _08046B70
	subs r0, r6
	strb r0, [r2]
	b _08046B72
	.pool
_08046B70:
	strb r4, [r2]
_08046B72:
	mov r2, r9
	ldrb r3, [r2]
	movs r4, 0x58
	adds r0, r3, 0
	muls r0, r4
	mov r1, r10
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08046BDC
	ldr r1, =gUnknown_020242BC
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08046BDC
	ldr r0, =gUnknown_02024064
	strb r3, [r0]
	ldrb r1, [r7]
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r4
	mov r2, r10
	adds r2, 0x24
	adds r0, r2
	ldrb r7, [r7]
	adds r0, r7
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	mov r7, r9
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
_08046BDC:
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffff7ff
	ands r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08046BEE:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk03_ppreduce

	thumb_func_start atk04_critcalc
atk04_critcalc: @ 8046C18
	push {r4-r7,lr}
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	cmp r0, 0xAF
	bne _08046C48
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	b _08046C50
	.pool
_08046C48:
	bl itemid_get_x12
	lsls r0, 24
	lsrs r6, r0, 24
_08046C50:
	ldr r1, =gUnknown_0202420F
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r4, =gBattleMons
	ldrb r1, [r3]
	movs r0, 0x58
	adds r7, r1, 0
	muls r7, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r7, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	negs r0, r0
	asrs r5, r0, 31
	movs r0, 0x2
	ands r5, r0
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	mov r12, r3
	cmp r1, 0x2B
	bne _08046C90
	adds r5, 0x1
_08046C90:
	adds r0, r5, 0
	cmp r1, 0x4B
	bne _08046C98
	adds r0, 0x1
_08046C98:
	cmp r1, 0xC8
	bne _08046C9E
	adds r0, 0x1
_08046C9E:
	adds r2, r0, 0
	cmp r1, 0xD1
	bne _08046CA6
	adds r2, 0x1
_08046CA6:
	movs r1, 0
	cmp r6, 0x3F
	bne _08046CB6
	adds r0, r7, r4
	ldrh r0, [r0]
	cmp r0, 0x71
	bne _08046CB6
	movs r1, 0x1
_08046CB6:
	lsls r5, r1, 1
	movs r3, 0
	cmp r6, 0x42
	bne _08046CD0
	mov r0, r12
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0x53
	bne _08046CD0
	movs r3, 0x1
_08046CD0:
	lsls r1, r3, 1
	cmp r6, 0x29
	bne _08046CF0
	adds r0, r5, 0x1
	adds r0, r2, r0
	b _08046CF2
	.pool
_08046CF0:
	adds r0, r2, r5
_08046CF2:
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	adds r5, r0, 0
	cmp r5, 0x4
	bls _08046D00
	movs r5, 0x4
_08046D00:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r4
	adds r0, 0x20
	ldrb r4, [r0]
	cmp r4, 0x4
	beq _08046D70
	cmp r4, 0x4B
	beq _08046D70
	ldr r1, =gUnknown_020242AC
	mov r2, r12
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	bne _08046D70
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x84
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	bne _08046D70
	bl Random
	ldr r2, =gUnknown_0831C128
	lsls r1, r5, 1
	adds r1, r2
	lsls r0, 16
	lsrs r0, 16
	ldrh r1, [r1]
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _08046D70
	ldr r1, =gCritMultiplier
	movs r0, 0x2
	b _08046D74
	.pool
_08046D70:
	ldr r1, =gCritMultiplier
	movs r0, 0x1
_08046D74:
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk04_critcalc

	thumb_func_start atk05_cmd5
atk05_cmd5: @ 8046D8C
	push {r4-r7,lr}
	sub sp, 0x10
	ldr r4, =gUnknown_0202428E
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	movs r4, 0x58
	muls r0, r4
	ldr r2, =gBattleMons
	adds r0, r2
	ldrb r1, [r5]
	muls r1, r4
	adds r1, r2
	ldr r7, =gUnknown_020241EA
	ldrh r2, [r7]
	ldr r4, =gUnknown_02024400
	ldrh r4, [r4]
	str r4, [sp]
	ldr r4, =gUnknown_0202449C
	ldr r4, [r4]
	ldrb r4, [r4, 0x13]
	str r4, [sp, 0x4]
	ldrb r4, [r6]
	str r4, [sp, 0x8]
	ldrb r4, [r5]
	str r4, [sp, 0xC]
	bl sub_806957C
	ldr r4, =gBattleMoveDamage
	ldr r1, =gCritMultiplier
	ldrb r1, [r1]
	muls r1, r0
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0xE]
	adds r3, r1, 0
	muls r3, r0
	str r3, [r4]
	ldr r1, =gUnknown_020242AC
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _08046E10
	ldr r2, =gBattleMoves
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _08046E10
	lsls r0, r3, 1
	str r0, [r4]
_08046E10:
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _08046E32
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_08046E32:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x10
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk05_cmd5

	thumb_func_start sub_8046E7C
sub_8046E7C: @ 8046E7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	adds r5, r1, 0
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, =gUnknown_0202428E
	adds r0, r5, 0
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	movs r1, 0x58
	adds r0, r7, 0
	muls r0, r1
	ldr r2, =gBattleMons
	adds r0, r2
	muls r1, r5
	adds r1, r2
	ldr r2, =gUnknown_020241EA
	mov r8, r2
	ldrh r2, [r2]
	ldr r6, =gUnknown_02024400
	ldrh r4, [r6]
	str r4, [sp]
	ldr r4, =gUnknown_0202449C
	ldr r4, [r4]
	ldrb r4, [r4, 0x13]
	str r4, [sp, 0x4]
	str r7, [sp, 0x8]
	str r5, [sp, 0xC]
	bl sub_806957C
	ldr r4, =gBattleMoveDamage
	movs r1, 0
	strh r1, [r6]
	ldr r1, =gCritMultiplier
	ldrb r1, [r1]
	muls r1, r0
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0xE]
	adds r3, r1, 0
	muls r3, r0
	str r3, [r4]
	ldr r1, =gUnknown_020242AC
	lsls r0, r7, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _08046F0A
	ldr r2, =gBattleMoves
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _08046F0A
	lsls r0, r3, 1
	str r0, [r4]
_08046F0A:
	ldr r0, =gUnknown_0202433C
	lsls r1, r7, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 28
	cmp r0, 0
	bge _08046F28
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_08046F28:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8046E7C

	thumb_func_start battle_attack_damage_modulate_by_effectivity
battle_attack_damage_modulate_by_effectivity: @ 8046F60
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, =gBattleMoveDamage
	ldr r0, [r5]
	muls r0, r4
	movs r1, 0xA
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _08046F80
	cmp r4, 0
	beq _08046F80
	movs r0, 0x1
	str r0, [r5]
_08046F80:
	cmp r4, 0x5
	beq _08046FB0
	cmp r4, 0x5
	bgt _08046F94
	cmp r4, 0
	beq _08046F9A
	b _08047032
	.pool
_08046F94:
	cmp r4, 0x14
	beq _08046FF0
	b _08047032
_08046F9A:
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	movs r1, 0xFB
	ands r0, r1
	movs r1, 0xFD
	ands r0, r1
	b _08047030
	.pool
_08046FB0:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08047032
	ldr r2, =gBattleMoveFlags
	ldrb r1, [r2]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08047032
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08046FEC
	movs r0, 0xFD
	ands r0, r1
	b _08047030
	.pool
_08046FEC:
	movs r0, 0x4
	b _0804702E
_08046FF0:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08047032
	ldr r2, =gBattleMoveFlags
	ldrb r1, [r2]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08047032
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0804702C
	movs r0, 0xFB
	ands r0, r1
	b _08047030
	.pool
_0804702C:
	movs r0, 0x2
_0804702E:
	orrs r0, r1
_08047030:
	strb r0, [r2]
_08047032:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end battle_attack_damage_modulate_by_effectivity

	thumb_func_start sub_8047038
sub_8047038: @ 8047038
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	movs r3, 0
	ldr r1, =gUnknown_020241EA
	ldrh r0, [r1]
	cmp r0, 0xA5
	bne _0804704C
	b _08047260
_0804704C:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r0, [r0, 0x13]
	cmp r0, 0
	beq _08047068
	movs r1, 0x3F
	mov r8, r1
	ands r1, r0
	mov r8, r1
	b _08047078
	.pool
_08047068:
	ldr r2, =gBattleMoves
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r8, r0
_08047078:
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, r8
	beq _0804709A
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r8
	bne _080470B0
_0804709A:
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	str r0, [r4]
	movs r1, 0xA
	str r3, [sp, 0x4]
	bl __divsi3
	str r0, [r4]
	ldr r3, [sp, 0x4]
_080470B0:
	ldr r2, =gEnemyMonIndex
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	adds r4, r2, 0
	cmp r0, 0x1A
	bne _08047128
	mov r1, r8
	cmp r1, 0x4
	bne _08047128
	ldr r3, =gUnknown_0202420A
	strb r0, [r3]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x9
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024250
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, =gUnknown_02024258
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r0, =gUnknown_02024332
	mov r1, r8
	strb r1, [r0, 0x6]
	ldrb r0, [r4]
	ldrb r1, [r3]
	bl b_history__record_ability_usage_of_player
	b _080471C4
	.pool
_08047128:
	ldr r1, =gUnknown_0831ACE8
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	b _080471A4
	.pool
_08047138:
	adds r3, 0x3
	b _080471A0
_0804713C:
	ldr r5, =gUnknown_0831ACE8
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, r8
	bne _08047198
	adds r1, r3, 0x1
	adds r1, r5
	ldr r2, =gBattleMons
	ldr r7, =gEnemyMonIndex
	ldrb r0, [r7]
	movs r6, 0x58
	muls r0, r6
	adds r0, r2
	adds r0, 0x21
	ldrb r4, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bne _08047172
	adds r0, r3, 0x2
	adds r0, r5
	ldrb r0, [r0]
	str r2, [sp]
	str r3, [sp, 0x4]
	bl battle_attack_damage_modulate_by_effectivity
	ldr r3, [sp, 0x4]
	ldr r2, [sp]
_08047172:
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r1, [r1]
	cmp r4, r1
	bne _08047198
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r4
	beq _08047198
	adds r0, r3, 0x2
	adds r0, r5
	ldrb r0, [r0]
	str r3, [sp, 0x4]
	bl battle_attack_damage_modulate_by_effectivity
	ldr r3, [sp, 0x4]
_08047198:
	adds r3, 0x3
	ldr r5, =gBattleMons
	ldr r4, =gEnemyMonIndex
	ldr r2, =gUnknown_0831ACE8
_080471A0:
	adds r0, r3, r2
	ldrb r0, [r0]
_080471A4:
	cmp r0, 0xFF
	beq _080471C4
	cmp r0, 0xFE
	bne _0804713C
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r1, r5, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _08047138
_080471C4:
	ldr r2, =gBattleMons
	ldr r5, =gEnemyMonIndex
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x19
	bne _08047242
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r7, =gUnknown_020241EA
	ldrh r1, [r7]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08047242
	ldr r1, =gBattleMoveFlags
	mov r8, r1
	ldrb r4, [r1]
	ands r0, r4
	cmp r0, 0
	beq _08047200
	movs r0, 0x6
	ands r0, r4
	cmp r0, 0x6
	bne _08047242
_08047200:
	ldr r2, =gBattleMoves
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08047242
	ldr r3, =gUnknown_0202420A
	strb r6, [r3]
	movs r0, 0x1
	orrs r0, r4
	mov r1, r8
	strb r0, [r1]
	ldr r1, =gUnknown_02024250
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, =gUnknown_02024258
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
	strb r0, [r1, 0x6]
	ldrb r0, [r5]
	ldrb r1, [r3]
	bl b_history__record_ability_usage_of_player
_08047242:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08047260
	ldr r2, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r2
	ldrb r0, [r1, 0x1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1, 0x1]
_08047260:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8047038

	thumb_func_start b_wonderguard_and_levitate
b_wonderguard_and_levitate: @ 80472A8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	movs r5, 0
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	mov r9, r0
	cmp r1, 0xA5
	bne _080472C0
	b _08047508
_080472C0:
	ldr r2, =gBattleMoves
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r2
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _080472D2
	b _08047508
_080472D2:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r0, [r0, 0x13]
	cmp r0, 0
	beq _080472F4
	movs r1, 0x3F
	mov r12, r1
	mov r2, r12
	ands r2, r0
	mov r12, r2
	b _080472F8
	.pool
_080472F4:
	ldrb r1, [r1, 0x2]
	mov r12, r1
_080472F8:
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r1, [r0]
	adds r7, r2, 0
	mov r8, r3
	cmp r1, 0x1A
	bne _0804733C
	mov r0, r12
	cmp r0, 0x4
	bne _0804733C
	ldr r0, =gUnknown_0202420A
	strb r1, [r0]
	ldr r0, =gUnknown_02024332
	mov r1, r12
	strb r1, [r0, 0x6]
	ldrb r0, [r3]
	movs r1, 0x1A
	bl b_history__record_ability_usage_of_player
	b _08047508
	.pool
_0804733C:
	ldr r1, =gUnknown_0831ACE8
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r4, r1, 0
	b _0804748E
	.pool
_0804734C:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, r12
	beq _08047356
	b _08047488
_08047356:
	adds r2, r5, 0x1
	adds r3, r2, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r3]
	adds r3, r2, 0
	ldrb r0, [r0]
	cmp r1, r0
	bne _08047396
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _08047396
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	lsls r2, 4
	adds r2, r1
	ldrb r0, [r2, 0x1]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x1]
_08047396:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _080473DC
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _080473DC
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _080473DC
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	lsls r2, 4
	adds r2, r1
	ldrb r0, [r2, 0x1]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x1]
_080473DC:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08047400
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _08047400
	movs r0, 0x1
	orrs r6, r0
_08047400:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0804742E
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0804742E
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0804742E
	movs r0, 0x1
	orrs r6, r0
_0804742E:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08047456
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _08047456
	movs r0, 0x2
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_08047456:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _08047488
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _08047488
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _08047488
	movs r0, 0x2
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_08047488:
	adds r5, 0x3
	adds r0, r5, r4
	ldrb r0, [r0]
_0804748E:
	cmp r0, 0xFF
	beq _080474B2
	cmp r0, 0xFE
	beq _08047498
	b _0804734C
_08047498:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _08047488
_080474B2:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x20
	ldrb r4, [r0]
	cmp r4, 0x19
	bne _08047508
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	mov r2, r9
	ldrh r1, [r2]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08047508
	movs r0, 0x3
	ands r6, r0
	cmp r6, 0x1
	beq _08047508
	ldr r2, =gBattleMoves
	mov r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08047508
	ldr r0, =gUnknown_0202420A
	strb r4, [r0]
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
	strb r0, [r1, 0x6]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x19
	bl b_history__record_ability_usage_of_player
_08047508:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_wonderguard_and_levitate

	thumb_func_start b_attack_effectivity_adapt
b_attack_effectivity_adapt: @ 804752C
	push {r4-r7,lr}
	adds r6, r2, 0
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	ldr r7, =gBattleMoveDamage
	ldr r0, [r7]
	muls r0, r4
	movs r1, 0xA
	bl __divsi3
	str r0, [r7]
	cmp r0, 0
	bne _08047552
	cmp r4, 0
	beq _08047552
	movs r0, 0x1
	str r0, [r7]
_08047552:
	cmp r4, 0x5
	beq _0804757A
	cmp r4, 0x5
	bgt _08047564
	cmp r4, 0
	beq _0804756A
	b _080475DE
	.pool
_08047564:
	cmp r4, 0x14
	beq _080475AC
	b _080475DE
_0804756A:
	ldrb r0, [r6]
	movs r1, 0x8
	orrs r0, r1
	movs r1, 0xFB
	ands r0, r1
	movs r1, 0xFD
	ands r0, r1
	b _080475DC
_0804757A:
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _080475DE
	ldrb r1, [r6]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _080475DE
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080475A8
	movs r0, 0xFD
	ands r0, r1
	b _080475DC
	.pool
_080475A8:
	movs r0, 0x4
	b _080475DA
_080475AC:
	ldr r0, =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _080475DE
	ldrb r1, [r6]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _080475DE
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080475D8
	movs r0, 0xFB
	ands r0, r1
	b _080475DC
	.pool
_080475D8:
	movs r0, 0x2
_080475DA:
	orrs r0, r1
_080475DC:
	strb r0, [r6]
_080475DE:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end b_attack_effectivity_adapt

	thumb_func_start move_effectiveness_something
move_effectiveness_something: @ 80475E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	movs r0, 0
	mov r8, r0
	mov r0, sp
	mov r1, r8
	strb r1, [r0]
	mov r2, r10
	cmp r2, 0xA5
	bne _08047616
	movs r0, 0
	b _0804779E
_08047616:
	ldr r1, =gBattleMoves
	mov r3, r10
	lsls r2, r3, 1
	adds r0, r2, r3
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x8]
	ldr r1, =gBattleMons
	movs r0, 0x58
	ldr r3, [sp, 0x4]
	muls r0, r3
	adds r3, r0, r1
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r0, [r0]
	str r2, [sp, 0xC]
	adds r5, r1, 0
	ldr r1, [sp, 0x8]
	cmp r0, r1
	beq _0804764A
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	bne _0804765C
_0804764A:
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	str r0, [r4]
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0804765C:
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	bne _08047690
	ldr r3, [sp, 0x8]
	cmp r3, 0x4
	bne _08047690
	movs r1, 0x9
	mov r0, sp
	ldrb r0, [r0]
	orrs r0, r1
	mov r1, sp
	strb r0, [r1]
	b _08047740
	.pool
_08047690:
	ldr r1, =gUnknown_0831ACE8
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0xFF
	beq _08047740
	cmp r0, 0xFE
	bne _080476B6
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	b _0804772E
	.pool
_080476B0:
	movs r0, 0x3
	add r8, r0
	b _08047718
_080476B6:
	ldr r7, =gUnknown_0831ACE8
	mov r1, r8
	adds r0, r1, r7
	ldrb r0, [r0]
	ldr r2, [sp, 0x8]
	cmp r0, r2
	bne _08047710
	adds r1, 0x1
	adds r1, r7
	ldr r2, =gBattleMons
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r5, r0, r2
	adds r6, r5, 0
	adds r6, 0x21
	ldrb r4, [r1]
	ldrb r0, [r6]
	cmp r4, r0
	bne _080476F0
	mov r0, r8
	adds r0, 0x2
	adds r0, r7
	ldrb r0, [r0]
	mov r1, r10
	mov r2, sp
	bl b_attack_effectivity_adapt
_080476F0:
	adds r0, r5, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r4, r0
	bne _08047710
	ldrb r0, [r6]
	cmp r0, r4
	beq _08047710
	mov r0, r8
	adds r0, 0x2
	adds r0, r7
	ldrb r0, [r0]
	mov r1, r10
	mov r2, sp
	bl b_attack_effectivity_adapt
_08047710:
	movs r1, 0x3
	add r8, r1
	ldr r5, =gBattleMons
	ldr r2, =gUnknown_0831ACE8
_08047718:
	mov r3, r8
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _08047740
	cmp r0, 0xFE
	bne _080476B6
	movs r0, 0x58
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
_0804772E:
	adds r1, r5, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _080476B0
_08047740:
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x19
	bne _0804779A
	mov r0, sp
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0804779A
	ldr r0, [sp, 0x4]
	mov r1, r10
	bl move_weather_interaction
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _0804779A
	mov r0, sp
	ldrb r3, [r0]
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _08047782
	movs r0, 0x6
	ands r0, r3
	cmp r0, 0x6
	bne _0804779A
_08047782:
	ldr r0, =gBattleMoves
	ldr r1, [sp, 0xC]
	add r1, r10
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0804779A
	mov r0, sp
	movs r1, 0x1
	orrs r1, r3
	strb r1, [r0]
_0804779A:
	mov r0, sp
	ldrb r0, [r0]
_0804779E:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end move_effectiveness_something

	thumb_func_start ai_rate_move
ai_rate_move: @ 80477BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4]
	movs r7, 0
	mov r0, sp
	strb r7, [r0]
	ldr r2, =gBaseStats
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	mov r9, r1
	ldrb r0, [r0, 0x7]
	mov r8, r0
	cmp r6, 0xA5
	bne _080477FC
	movs r0, 0
	b _080478A0
	.pool
_080477FC:
	ldr r2, =gBattleMoves
	lsls r1, r6, 1
	adds r0, r1, r6
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r10, r0
	str r1, [sp, 0x8]
	ldr r3, [sp, 0x4]
	cmp r3, 0x1A
	bne _08047824
	cmp r0, 0x4
	bne _08047824
	movs r1, 0x9
	mov r0, sp
	strb r1, [r0]
	b _0804786A
	.pool
_08047824:
	ldr r0, =gUnknown_0831ACE8
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0804786A
	adds r4, r1, 0
_08047830:
	ldrb r0, [r4]
	cmp r0, 0xFE
	beq _0804785C
	cmp r0, r10
	bne _0804785C
	ldrb r5, [r4, 0x1]
	cmp r5, r9
	bne _0804784A
	ldrb r0, [r4, 0x2]
	adds r1, r6, 0
	mov r2, sp
	bl b_attack_effectivity_adapt
_0804784A:
	cmp r5, r8
	bne _0804785C
	cmp r9, r8
	beq _0804785C
	ldrb r0, [r4, 0x2]
	adds r1, r6, 0
	mov r2, sp
	bl b_attack_effectivity_adapt
_0804785C:
	adds r4, 0x3
	adds r7, 0x3
	ldr r1, =gUnknown_0831ACE8
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _08047830
_0804786A:
	ldr r3, [sp, 0x4]
	cmp r3, 0x19
	bne _0804789C
	mov r0, sp
	ldrb r2, [r0]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _08047884
	movs r0, 0x6
	ands r0, r2
	cmp r0, 0x6
	bne _0804789C
_08047884:
	ldr r0, =gBattleMoves
	ldr r3, [sp, 0x8]
	adds r1, r3, r6
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0804789C
	mov r0, sp
	movs r1, 0x8
	orrs r1, r2
	strb r1, [r0]
_0804789C:
	mov r0, sp
	ldrb r0, [r0]
_080478A0:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ai_rate_move

	thumb_func_start sub_80478B8
sub_80478B8: @ 80478B8
	push {r4,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, =gBattleMoveDamage
	ldr r0, [r4]
	cmp r0, 0
	beq _080478EA
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _080478EA
	movs r0, 0x1
	str r0, [r4]
_080478EA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80478B8

	thumb_func_start atk07_cmd7
atk07_cmd7: @ 80478F4
	push {r4-r7,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, =gBattleMoveDamage
	ldr r0, [r4]
	cmp r0, 0
	beq _08047926
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08047926
	movs r0, 0x1
	str r0, [r4]
_08047926:
	ldr r7, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0804795C
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _08047976
	.pool
_0804795C:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r6, r0, 24
_08047976:
	ldr r1, =gUnknown_0202420F
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _080479B4
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _080479B4
	ldrb r0, [r5]
	movs r1, 0x27
	bl b_history__record_item_x12_of_player
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_080479B4:
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r4, [r3]
	movs r0, 0x58
	muls r0, r4
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	adds r5, r2, 0
	cmp r1, 0
	bne _08047A84
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x65
	beq _08047A06
	ldr r0, =gUnknown_0202433C
	lsls r1, r4, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	blt _08047A06
	ldr r0, =gUnknown_0202437C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08047A84
_08047A06:
	ldrb r0, [r3]
	movs r4, 0x58
	muls r0, r4
	adds r0, r5
	ldrh r1, [r0, 0x28]
	ldr r2, =gBattleMoveDamage
	ldr r0, [r2]
	cmp r1, r0
	bgt _08047A84
	subs r0, r1, 0x1
	str r0, [r2]
	ldr r1, =gUnknown_0202433C
	ldrb r3, [r3]
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _08047A5C
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08047A84
	.pool
_08047A5C:
	ldr r0, =gUnknown_0202437C
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08047A84
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024208
	adds r0, r3, 0
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_08047A84:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk07_cmd7

	thumb_func_start atk08_cmd8
atk08_cmd8: @ 8047AA4
	push {r4-r7,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, =gBattleMoveDamage
	ldr r0, [r4]
	cmp r0, 0
	beq _08047AD6
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08047AD6
	movs r0, 0x1
	str r0, [r4]
_08047AD6:
	ldr r7, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08047B0C
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _08047B26
	.pool
_08047B0C:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r6, r0, 24
_08047B26:
	ldr r1, =gUnknown_0202420F
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _08047B64
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _08047B64
	ldrb r0, [r5]
	movs r1, 0x27
	bl b_history__record_item_x12_of_player
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_08047B64:
	ldr r4, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r7, 0x58
	adds r3, r2, 0
	muls r3, r7
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _08047C10
	ldr r5, =gUnknown_0202433C
	lsls r0, r2, 4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	blt _08047BA2
	ldr r0, =gUnknown_0202437C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08047C10
_08047BA2:
	adds r0, r3, r4
	ldrh r1, [r0, 0x28]
	ldr r2, =gBattleMoveDamage
	ldr r0, [r2]
	cmp r1, r0
	bgt _08047C10
	subs r0, r1, 0x1
	str r0, [r2]
	ldrb r3, [r6]
	lsls r0, r3, 4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _08047BE8
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08047C10
	.pool
_08047BE8:
	ldr r0, =gUnknown_0202437C
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08047C10
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024208
	adds r0, r3, 0
	muls r0, r7
	adds r0, r4
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_08047C10:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk08_cmd8

	thumb_func_start atk09_attackanimation
atk09_attackanimation: @ 8047C30
	push {r4-r7,lr}
	sub sp, 0x10
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _08047C3E
	b _08047DB6
_08047C3E:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	ldr r5, =gUnknown_020241EA
	cmp r0, 0
	beq _08047C8C
	ldrh r0, [r5]
	cmp r0, 0x90
	beq _08047C8C
	cmp r0, 0xA4
	beq _08047C8C
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DABB9
	str r0, [r4]
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x18]
	adds r0, 0x1
	strb r0, [r1, 0x18]
	ldrb r0, [r1, 0x19]
	adds r0, 0x1
	strb r0, [r1, 0x19]
	b _08047DB6
	.pool
_08047C8C:
	ldr r2, =gBattleMoves
	ldrh r1, [r5]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08047CB2
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08047CB2
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08047CBA
_08047CB2:
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0x19]
	cmp r0, 0
	bne _08047D88
_08047CBA:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08047DA8
	ldr r1, =gUnknown_02024064
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	adds r7, r3, 0
	mov r12, r2
	cmp r1, 0
	beq _08047D18
	ldr r0, =gUnknown_02024212
	ldrb r6, [r0]
	b _08047D42
	.pool
_08047D18:
	ldr r3, =gUnknown_02024212
	ldrb r0, [r3]
	cmp r0, 0x1
	bls _08047D40
	mov r1, r12
	adds r0, r4, r1
	ldrh r2, [r0, 0x28]
	ldr r0, =gBattleMoveDamage
	ldr r1, [r0]
	movs r6, 0x1
	adds r4, r0, 0
	cmp r2, r1
	ble _08047D44
	ldrb r6, [r3]
	b _08047D44
	.pool
_08047D40:
	ldrb r6, [r3]
_08047D42:
	ldr r4, =gBattleMoveDamage
_08047D44:
	ldrh r1, [r5]
	ldr r5, =gUnknown_02024474
	ldrb r2, [r5, 0x18]
	ldr r0, =gUnknown_020244E0
	ldrh r3, [r0]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r4, [r7]
	movs r0, 0x58
	muls r0, r4
	add r0, r12
	adds r0, 0x2B
	ldrb r0, [r0]
	str r0, [sp, 0x4]
	ldrb r4, [r7]
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	ldr r4, =gUnknown_020242BC
	adds r0, r4
	str r0, [sp, 0x8]
	str r6, [sp, 0xC]
	movs r0, 0
	bl dp01_build_cmdbuf_x0F_aa_b_cc_dddd_e_mlc_weather_00_x1Cbytes
	ldrb r0, [r5, 0x18]
	adds r0, 0x1
	strb r0, [r5, 0x18]
	ldrb r0, [r5, 0x19]
	adds r0, 0x1
	strb r0, [r5, 0x19]
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
_08047D88:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	b _08047DB6
	.pool
_08047DA8:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DABB9
	str r0, [r4]
_08047DB6:
	add sp, 0x10
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk09_attackanimation

	thumb_func_start sub_8047DC8
sub_8047DC8: @ 8047DC8
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _08047DDA
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08047DDA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8047DC8

	thumb_func_start atk0B_graphicalhpupdate
atk0B_graphicalhpupdate: @ 8047DE8
	push {r4,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _08047EAA
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08047EA2
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r2, =gUnknown_02024064
	strb r0, [r2]
	ldr r1, =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _08047E68
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	beq _08047E68
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	bne _08047E68
	movs r0, 0x80
	adds r1, r2, 0
	bl b_std_message
	b _08047EA2
	.pool
_08047E68:
	ldr r0, =gBattleMoveDamage
	ldr r0, [r0]
	ldr r1, =0x00002710
	cmp r0, r1
	bgt _08047E76
	lsls r0, 16
	lsrs r1, r0, 16
_08047E76:
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08047EA2
	ldr r0, =gBattleMoveDamage
	ldr r0, [r0]
	cmp r0, 0
	ble _08047EA2
	ldr r0, =gUnknown_03005D10
	ldrb r1, [r0, 0x5]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0, 0x5]
_08047EA2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08047EAA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk0B_graphicalhpupdate

	thumb_func_start atk0C_datahpupdate
atk0C_datahpupdate: @ 8047EC4
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _08047ED2
	b _080482A2
_08047ED2:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x13]
	cmp r1, 0
	beq _08047EF4
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08047EF4
	movs r6, 0x3F
	ands r6, r1
	b _08047F04
	.pool
_08047EF4:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r6, [r0, 0x2]
_08047F04:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08047F12
	b _08048274
_08047F12:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r7, =gUnknown_02024064
	strb r0, [r7]
	ldr r1, =gBattleMons
	ldrb r2, [r7]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _08048028
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r4, r1, r0
	ldrb r1, [r4, 0xA]
	mov r12, r0
	cmp r1, 0
	beq _08048028
	ldr r0, =gUnknown_02024280
	ldr r3, [r0]
	movs r0, 0x80
	lsls r0, 1
	ands r3, r0
	cmp r3, 0
	bne _08048028
	adds r5, r1, 0
	ldr r6, =gBattleMoveDamage
	ldr r4, [r6]
	cmp r5, r4
	blt _08047FBC
	ldr r0, =gUnknown_0202437C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _08047F76
	str r4, [r1]
_08047F76:
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	ldr r2, [r6]
	ldrb r0, [r1, 0xA]
	subs r0, r2
	strb r0, [r1, 0xA]
	ldr r1, =gUnknown_020241F4
	ldr r0, [r6]
	str r0, [r1]
	b _08047FEC
	.pool
_08047FBC:
	ldr r0, =gUnknown_0202437C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _08047FD0
	str r5, [r1]
_08047FD0:
	ldr r2, =gUnknown_020241F4
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xA]
	str r0, [r2]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	strb r3, [r0, 0xA]
_08047FEC:
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	beq _08048000
	b _0804829A
_08048000:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	bl b_movescr_stack_push_cursor
	ldr r0, =gUnknown_082DB6FB
	str r0, [r4]
	b _080482A2
	.pool
_08048028:
	ldr r0, =gUnknown_02024280
	ldr r2, [r0]
	ldr r1, =0xfffffeff
	ands r2, r1
	str r2, [r0]
	ldr r1, =gBattleMoveDamage
	ldr r5, [r1]
	mov r12, r0
	adds r7, r1, 0
	cmp r5, 0
	bge _0804807C
	ldr r4, =gBattleMons
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	movs r3, 0x58
	adds r1, r0, 0
	muls r1, r3
	adds r1, r4
	ldrh r0, [r1, 0x28]
	subs r0, r5
	strh r0, [r1, 0x28]
	ldrb r0, [r2]
	muls r0, r3
	adds r1, r0, r4
	ldrh r3, [r1, 0x2C]
	ldrh r0, [r1, 0x28]
	adds r5, r2, 0
	cmp r0, r3
	bhi _08048064
	b _0804823A
_08048064:
	strh r3, [r1, 0x28]
	b _0804823A
	.pool
_0804807C:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	beq _08048098
	movs r0, 0x21
	negs r0, r0
	ands r2, r0
	mov r0, r12
	str r2, [r0]
	ldr r5, =gUnknown_02024064
	b _080480E0
	.pool
_08048098:
	ldr r0, =gUnknown_020241F8
	ldr r2, =gUnknown_02024064
	ldrb r1, [r2]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	adds r0, r5
	str r0, [r1]
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	adds r5, r2, 0
	cmp r0, 0
	bne _080480D4
	ldr r1, =gUnknown_02024288
	ldrb r0, [r5]
	adds r0, r1
	ldr r1, =gUnknown_0202420B
	b _080480DC
	.pool
_080480D4:
	ldr r1, =gUnknown_02024288
	ldrb r0, [r5]
	adds r0, r1
	ldr r1, =gEnemyMonIndex
_080480DC:
	ldrb r1, [r1]
	strb r1, [r0]
_080480E0:
	ldr r4, =gBattleMons
	ldrb r0, [r5]
	movs r3, 0x58
	muls r0, r3
	adds r2, r0, r4
	ldrh r0, [r2, 0x28]
	ldr r1, [r7]
	cmp r0, r1
	ble _08048110
	subs r0, r1
	strh r0, [r2, 0x28]
	ldr r0, =gUnknown_020241F4
	str r1, [r0]
	adds r7, r0, 0
	b _08048120
	.pool
_08048110:
	ldr r2, =gUnknown_020241F4
	str r0, [r2]
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r4
	movs r1, 0
	strh r1, [r0, 0x28]
	adds r7, r2, 0
_08048120:
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r2, 0x4
	adds r3, r0, r1
	ldr r0, [r3]
	adds r4, r2, 0
	cmp r0, 0
	bne _08048148
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _08048148
	ldr r0, [r7]
	str r0, [r3]
_08048148:
	cmp r6, 0x8
	bhi _080481D0
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _080481CC
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xDC
	beq _080481CC
	ldr r3, =gUnknown_0202433C
	ldrb r0, [r5]
	lsls r0, 4
	adds r1, r3, 0x4
	adds r0, r1
	ldr r2, [r7]
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x8
	adds r0, r1
	str r2, [r0]
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _080481AC
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, =gUnknown_0202420B
	b _080481B4
	.pool
_080481AC:
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, =gEnemyMonIndex
_080481B4:
	ldrb r1, [r2]
	strb r1, [r0, 0xC]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r2]
	strb r1, [r0, 0x10]
	b _0804823A
	.pool
_080481CC:
	cmp r6, 0x8
	bls _0804823A
_080481D0:
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _0804823A
	ldr r3, =gUnknown_0202433C
	ldrb r0, [r5]
	lsls r0, 4
	adds r1, r3, 0
	adds r1, 0x8
	adds r0, r1
	ldr r2, [r7]
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0xC
	adds r0, r1
	str r2, [r0]
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _08048220
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, =gUnknown_0202420B
	b _08048228
	.pool
_08048220:
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, =gEnemyMonIndex
_08048228:
	ldrb r1, [r2]
	strb r1, [r0, 0xD]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r2]
	strb r1, [r0, 0x11]
_0804823A:
	mov r1, r12
	ldr r0, [r1]
	ldr r1, =0xffefffff
	ands r0, r1
	mov r1, r12
	str r0, [r1]
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gUnknown_020240AC
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2A
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804829A
	.pool
_08048274:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r1]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, 0
	bne _0804829A
	ldr r0, =0x0000ffff
	str r0, [r1]
_0804829A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_080482A2:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk0C_datahpupdate

	thumb_func_start atk0D_critmessage
atk0D_critmessage: @ 80482BC
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _080482F2
	ldr r0, =gCritMultiplier
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _080482EA
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _080482EA
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0xD9
	bl b_std_message
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x7]
_080482EA:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_080482F2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk0D_critmessage

	thumb_func_start atk0E_missmessage
atk0E_missmessage: @ 8048310
	push {r4,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _080483D0
	ldr r4, =gUnknown_02024064
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, =gBattleMoveFlags
	ldrb r2, [r1]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	bne _080483C8
	movs r0, 0xFE
	ands r0, r2
	cmp r0, 0x10
	beq _08048382
	cmp r0, 0x10
	bgt _0804835E
	cmp r0, 0x4
	beq _08048372
	cmp r0, 0x4
	bgt _08048358
	cmp r0, 0x2
	beq _0804836C
	b _08048382
	.pool
_08048358:
	cmp r0, 0x8
	beq _080483C8
	b _08048382
_0804835E:
	cmp r0, 0x40
	beq _08048382
	cmp r0, 0x40
	bgt _08048382
	cmp r0, 0x20
	beq _080483C8
	b _08048382
_0804836C:
	movs r0, 0
	movs r1, 0xE
	b _08048376
_08048372:
	movs r0, 0
	movs r1, 0xC
_08048376:
	bl dp01_build_cmdbuf_x2B_aa_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _080483C8
_08048382:
	ldrb r1, [r1]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08048392
	movs r0, 0
	movs r1, 0xE
	b _0804839E
_08048392:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080483B0
	movs r0, 0
	movs r1, 0xC
_0804839E:
	bl dp01_build_cmdbuf_x2B_aa_0
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _080483C8
	.pool
_080483B0:
	movs r0, 0x28
	ands r0, r1
	cmp r0, 0
	bne _080483C8
	movs r0, 0
	movs r1, 0xD
	bl dp01_build_cmdbuf_x2B_aa_0
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_080483C8:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_080483D0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk0E_missmessage

	thumb_func_start atk0F_resultmessage
atk0F_resultmessage: @ 80483E0
	push {r4-r7,lr}
	movs r3, 0
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _080483EE
	b _08048580
_080483EE:
	ldr r1, =gBattleMoveFlags
	ldrb r2, [r1]
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r2
	adds r6, r1, 0
	ldr r7, =gUnknown_02024332
	cmp r0, 0
	beq _0804842C
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _0804840E
	ldrb r0, [r7, 0x6]
	cmp r0, 0x2
	bls _0804842C
_0804840E:
	ldr r1, =gUnknown_085CC834
	ldrb r0, [r7, 0x6]
	lsls r0, 1
	adds r0, r1
	ldrh r3, [r0]
	strb r4, [r7, 0x7]
	b _0804856A
	.pool
_0804842C:
	movs r0, 0x1
	strb r0, [r7, 0x7]
	ldrb r5, [r6]
	movs r0, 0xFE
	ands r0, r5
	cmp r0, 0x10
	beq _08048470
	cmp r0, 0x10
	bgt _08048452
	cmp r0, 0x4
	beq _0804846C
	cmp r0, 0x4
	bgt _0804844C
	cmp r0, 0x2
	beq _08048468
	b _080484B8
_0804844C:
	cmp r0, 0x8
	beq _080484C4
	b _080484B8
_08048452:
	cmp r0, 0x40
	beq _08048474
	cmp r0, 0x40
	bgt _08048462
	cmp r0, 0x20
	bne _08048460
	b _08048564
_08048460:
	b _080484B8
_08048462:
	cmp r0, 0x80
	beq _08048478
	b _080484B8
_08048468:
	movs r3, 0xDE
	b _0804856E
_0804846C:
	movs r3, 0xDD
	b _0804856E
_08048470:
	movs r3, 0xDA
	b _0804856E
_08048474:
	movs r3, 0x99
	b _0804856E
_08048478:
	ldr r4, =gUnknown_02024208
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	ldr r1, =gUnknown_0202420F
	ldrb r0, [r3]
	strb r0, [r1]
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r6]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB816
	b _0804857E
	.pool
_080484B8:
	adds r2, r6, 0
	ldrb r5, [r2]
	movs r0, 0x8
	ands r0, r5
	cmp r0, 0
	beq _080484C8
_080484C4:
	movs r3, 0x1B
	b _0804856E
_080484C8:
	movs r0, 0x10
	ands r0, r5
	cmp r0, 0
	beq _080484F0
	movs r0, 0xEF
	ands r0, r5
	movs r1, 0xFD
	ands r0, r1
	movs r1, 0xFB
	ands r0, r1
	strb r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB1CE
	b _0804857E
	.pool
_080484F0:
	movs r0, 0x40
	ands r0, r5
	cmp r0, 0
	beq _08048510
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB1C7
	b _0804857E
	.pool
_08048510:
	movs r0, 0x80
	ands r0, r5
	cmp r0, 0
	beq _08048558
	ldr r4, =gUnknown_02024208
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	ldr r1, =gUnknown_0202420F
	ldrb r0, [r3]
	strb r0, [r1]
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r6]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB816
	b _0804857E
	.pool
_08048558:
	movs r0, 0x20
	ands r0, r5
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08048568
_08048564:
	movs r3, 0xE5
	b _0804856E
_08048568:
	strb r0, [r7, 0x7]
_0804856A:
	cmp r3, 0
	beq _08048578
_0804856E:
	adds r0, r3, 0
	ldr r1, =gUnknown_0202420B
	ldrb r1, [r1]
	bl b_std_message
_08048578:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
_0804857E:
	str r0, [r1]
_08048580:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk0F_resultmessage

	thumb_func_start atk10_printstring
atk10_printstring: @ 8048590
	push {r4,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _080485BA
	ldr r4, =gUnknown_02024214
	ldr r1, [r4]
	ldrb r0, [r1, 0x1]
	ldrb r1, [r1, 0x2]
	lsls r1, 8
	orrs r0, r1
	ldr r1, =gUnknown_0202420B
	ldrb r1, [r1]
	bl b_std_message
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x7]
_080485BA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk10_printstring

	thumb_func_start atk11_printstring2
atk11_printstring2: @ 80485D0
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x11_TODO
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x7]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk11_printstring2

	thumb_func_start atk12_waitmessage
atk12_waitmessage: @ 8048614
	push {r4-r6,lr}
	ldr r0, =gUnknown_02024068
	ldr r4, [r0]
	cmp r4, 0
	bne _08048662
	ldr r6, =gUnknown_02024332
	ldrb r0, [r6, 0x7]
	cmp r0, 0
	bne _0804863C
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
	b _08048662
	.pool
_0804863C:
	ldr r5, =gUnknown_02024214
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldr r3, =gUnknown_0202432C
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r1
	bcc _08048662
	movs r1, 0
	strh r4, [r3]
	adds r0, r2, 0x3
	str r0, [r5]
	strb r1, [r6, 0x7]
_08048662:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk12_waitmessage

	thumb_func_start atk13_printfromtable
atk13_printfromtable: @ 8048670
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _080486AE
	ldr r4, =gUnknown_02024214
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0202420B
	ldrb r1, [r1]
	bl b_std_message
	ldr r0, [r4]
	adds r0, 0x5
	str r0, [r4]
	movs r0, 0x1
	strb r0, [r5, 0x7]
_080486AE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk13_printfromtable

	thumb_func_start atk14_printfromtable2
atk14_printfromtable2: @ 80486C4
	push {r4-r6,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804870E
	ldr r5, =gUnknown_02024214
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	ldr r6, =gUnknown_02024332
	ldrb r0, [r6, 0x5]
	lsls r0, 1
	adds r1, r0
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	ldrh r1, [r1]
	movs r0, 0
	bl dp01_build_cmdbuf_x11_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x5
	str r0, [r5]
	movs r0, 0x1
	strb r0, [r6, 0x7]
_0804870E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk14_printfromtable2

	thumb_func_start sub_8048728
sub_8048728: @ 8048728
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r0]
	cmp r1, r3
	bge _0804874E
	ldr r4, =gUnknown_0202407E
	ldrb r0, [r4]
	cmp r0, r2
	beq _0804874E
_08048740:
	adds r1, 0x1
	cmp r1, r3
	bge _0804874E
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, r2
	bne _08048740
_0804874E:
	lsls r0, r1, 24
	lsrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8048728

	thumb_func_start sub_8048760
sub_8048760: @ 8048760
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	movs r0, 0
	mov r10, r0
	movs r7, 0
	movs r1, 0x1
	str r1, [sp, 0x4]
	ldr r1, =gUnknown_02024332
	ldrb r3, [r1, 0x3]
	movs r0, 0x40
	ands r0, r3
	cmp r0, 0
	beq _080487B8
	ldr r2, =gUnknown_0202420E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0xBF
	ands r0, r3
	adds r3, r1, 0
	strb r0, [r3, 0x3]
	movs r7, 0x40
	ldr r1, =gUnknown_02024474
	ldr r0, =gEnemyMonIndex
	b _080487C4
	.pool
_080487B8:
	ldr r2, =gUnknown_0202420E
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, =gUnknown_02024474
	ldr r0, =gUnknown_0202420B
_080487C4:
	ldrb r0, [r0]
	strb r0, [r1, 0x17]
	mov r9, r2
	ldr r2, =gBattleMons
	mov r4, r9
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x13
	bne _08048828
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	bne _08048828
	cmp r5, 0
	bne _08048828
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x3]
	cmp r0, 0x9
	bhi _08048828
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r2, =gUnknown_02024332
	strb r5, [r2, 0x3]
	bl _080499B8
	.pool
_08048828:
	mov r3, r9
	ldrb r0, [r3]
	bl battle_get_per_side_status
	ldr r2, =gUnknown_0202428E
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r2
	ldrh r1, [r1]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08048880
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	bne _08048880
	cmp r5, 0
	bne _08048880
	ldr r0, =gUnknown_02024332
	ldrb r1, [r0, 0x3]
	cmp r1, 0x7
	bhi _08048880
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r4, =gUnknown_02024332
	strb r5, [r4, 0x3]
	bl _080499B8
	.pool
_08048880:
	ldr r3, =gBattleMons
	ldr r2, =gUnknown_0202420E
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	ldrh r4, [r0, 0x28]
	mov r9, r2
	mov r8, r3
	cmp r4, 0
	bne _080488C4
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x3]
	cmp r0, 0xB
	beq _080488C4
	cmp r0, 0x1F
	beq _080488C4
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r2, =gUnknown_02024332
	strb r4, [r2, 0x3]
	bl _080499B8
	.pool
_080488C4:
	mov r3, r9
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	mov r1, r8
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _080488FC
	cmp r7, 0x40
	beq _080488FC
	ldr r0, =gUnknown_02024214
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	movs r0, 0
	ldr r4, =gUnknown_02024332
	strb r0, [r4, 0x3]
	bl _080499B8
	.pool
_080488FC:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x3]
	cmp r0, 0x6
	bls _08048906
	b _08048F40
_08048906:
	ldr r1, =gUnknown_0831C134
	ldr r2, =gUnknown_02024332
	ldrb r0, [r2, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0x10
	bne _08048918
	b _08048AFC
_08048918:
	cmp r0, 0x10
	bhi _08048930
	cmp r0, 0x7
	beq _0804894A
	cmp r0, 0x8
	beq _08048A00
	b _08048DF4
	.pool
_08048930:
	cmp r0, 0x40
	bne _08048936
	b _08048C84
_08048936:
	cmp r0, 0x40
	bhi _08048942
	cmp r0, 0x20
	bne _08048940
	b _08048BEA
_08048940:
	b _08048DF4
_08048942:
	cmp r0, 0x80
	bne _08048948
	b _08048D02
_08048948:
	b _08048DF4
_0804894A:
	mov r3, r9
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	add r0, r8
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2B
	beq _080489AC
	ldr r0, =gUnknown_02024064
	movs r1, 0
	strb r1, [r0]
	ldr r1, =gUnknown_0202406C
	ldrb r3, [r1]
	adds r7, r0, 0
	mov r12, r1
	cmp r3, 0
	beq _080489B8
	mov r4, r8
	ldr r0, [r4, 0x50]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	bne _080489B8
	adds r1, r7, 0
	mov r6, r8
	adds r6, 0x50
	movs r5, 0x58
	movs r4, 0x70
_08048984:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r3
	bcs _080489B8
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r6
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08048984
	b _080489B8
	.pool
_080489AC:
	ldr r0, =gUnknown_02024064
	ldr r2, =gUnknown_0202406C
	ldrb r1, [r2]
	strb r1, [r0]
	adds r7, r0, 0
	mov r12, r2
_080489B8:
	mov r0, r9
	ldrb r2, [r0]
	movs r0, 0x58
	adds r1, r2, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _080489D0
	b _08048DF4
_080489D0:
	ldrb r0, [r7]
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	beq _080489DC
	b _08048DF4
_080489DC:
	mov r4, r8
	adds r0, r1, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	bne _080489EA
	b _08048DF4
_080489EA:
	cmp r0, 0xF
	bne _080489F0
	b _08048DF4
_080489F0:
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	b _08048DE4
	.pool
_08048A00:
	mov r2, r9
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	add r0, r8
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x11
	bne _08048A70
	cmp r5, 0x1
	beq _08048A1A
	cmp r6, 0x80
	bne _08048A70
_08048A1A:
	ldr r0, =gUnknown_0202420A
	strb r1, [r0]
	mov r3, r9
	ldrb r0, [r3]
	movs r1, 0x11
	bl b_history__record_ability_usage_of_player
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB5E9
	str r0, [r4]
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	bne _08048A46
	b _08048D20
_08048A46:
	movs r0, 0x1
	ldr r4, =gUnknown_02024332
	strb r0, [r4, 0x5]
_08048A4C:
	ldr r0, =0xffffdfff
	ands r1, r0
	str r1, [r2]
	bl _080499B2
	.pool
_08048A70:
	mov r2, r9
	ldrb r0, [r2]
	movs r1, 0x58
	muls r0, r1
	add r0, r8
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r1, 0x3
	beq _08048A94
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _08048A94
	cmp r1, 0x8
	beq _08048A94
	cmp r0, 0x8
	bne _08048AAE
_08048A94:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _08048AAE
	cmp r5, 0x1
	bne _08048AA8
	b _08048D66
_08048AA8:
	cmp r6, 0x80
	bne _08048AAE
	b _08048D66
_08048AAE:
	mov r3, r9
	ldrb r1, [r3]
	movs r0, 0x58
	muls r1, r0
	mov r4, r8
	adds r3, r1, r4
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r4, [r0]
	cmp r4, 0x3
	bne _08048AC6
	b _08048DF4
_08048AC6:
	adds r0, 0x1
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _08048AD0
	b _08048DF4
_08048AD0:
	cmp r4, 0x8
	bne _08048AD6
	b _08048DF4
_08048AD6:
	cmp r0, 0x8
	bne _08048ADC
	b _08048DF4
_08048ADC:
	mov r0, r8
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _08048AEA
	b _08048DF4
_08048AEA:
	adds r0, r3, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x11
	bne _08048AF6
	b _08048DF4
_08048AF6:
	b _08048DE4
	.pool
_08048AFC:
	mov r2, r9
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	add r0, r8
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x29
	bne _08048B54
	cmp r5, 0x1
	beq _08048B16
	cmp r6, 0x80
	bne _08048B54
_08048B16:
	ldr r0, =gUnknown_0202420A
	strb r1, [r0]
	mov r3, r9
	ldrb r0, [r3]
	movs r1, 0x29
	bl b_history__record_ability_usage_of_player
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB5D1
	str r0, [r4]
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _08048B42
	b _08048A46
_08048B42:
	b _08048D20
	.pool
_08048B54:
	mov r2, r9
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	mov r3, r8
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xA
	beq _08048B74
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _08048BA4
_08048B74:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _08048BA4
	cmp r5, 0x1
	beq _08048B8A
	cmp r6, 0x80
	bne _08048BA4
_08048B8A:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB5D1
	b _08048D72
	.pool
_08048BA4:
	mov r4, r9
	ldrb r0, [r4]
	movs r1, 0x58
	adds r2, r0, 0
	muls r2, r1
	mov r0, r8
	adds r1, r2, r0
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _08048BBE
	b _08048DF4
_08048BBE:
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _08048BCA
	b _08048DF4
_08048BCA:
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x29
	bne _08048BD6
	b _08048DF4
_08048BD6:
	mov r0, r8
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _08048BE4
	b _08048DF4
_08048BE4:
	movs r1, 0x1
	mov r10, r1
	b _08048DF4
_08048BEA:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _08048C26
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08048C26
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _08048C26
	movs r2, 0
	str r2, [sp, 0x4]
_08048C26:
	ldr r4, =gBattleMons
	ldr r0, =gUnknown_0202420E
	ldrb r3, [r0]
	movs r0, 0x58
	adds r2, r3, 0
	muls r2, r0
	adds r1, r2, r4
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xF
	bne _08048C40
	b _08048DF4
_08048C40:
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xF
	bne _08048C4C
	b _08048DF4
_08048C4C:
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _08048C5A
	b _08048DF4
_08048C5A:
	ldr r4, [sp, 0x4]
	cmp r4, 0
	bne _08048C62
	b _08048DF4
_08048C62:
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x28
	bne _08048C6E
	b _08048DF4
_08048C6E:
	adds r0, r3, 0
	bl b_cancel_multi_turn_move_maybe
	b _08048DE4
	.pool
_08048C84:
	mov r2, r9
	ldrb r1, [r2]
	movs r0, 0x58
	muls r1, r0
	mov r3, r8
	adds r0, r1, r3
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x7
	bne _08048CF4
	cmp r5, 0x1
	beq _08048CA2
	cmp r6, 0x80
	beq _08048CA2
	b _08048DF4
_08048CA2:
	ldr r0, =gUnknown_0202420A
	strb r2, [r0]
	mov r4, r9
	ldrb r0, [r4]
	movs r1, 0x7
	bl b_history__record_ability_usage_of_player
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB5DD
	str r0, [r4]
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _08048CE8
	movs r0, 0x1
	ldr r3, =gUnknown_02024332
	strb r0, [r3, 0x5]
	b _08048A4C
	.pool
_08048CE8:
	ldr r4, =gUnknown_02024332
	strb r0, [r4, 0x5]
	bl _080499B2
	.pool
_08048CF4:
	mov r0, r8
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08048DF4
	b _08048DE4
_08048D02:
	mov r2, r9
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	add r0, r8
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x11
	bne _08048D2C
	cmp r5, 0x1
	bne _08048D1A
	b _08048A1A
_08048D1A:
	cmp r6, 0x80
	bne _08048D2C
	b _08048A1A
_08048D20:
	ldr r1, =gUnknown_02024332
	strb r0, [r1, 0x5]
	bl _080499B2
	.pool
_08048D2C:
	mov r2, r9
	ldrb r0, [r2]
	movs r1, 0x58
	muls r0, r1
	add r0, r8
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r1, 0x3
	beq _08048D50
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _08048D50
	cmp r1, 0x8
	beq _08048D50
	cmp r0, 0x8
	bne _08048D94
_08048D50:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _08048D94
	cmp r5, 0x1
	beq _08048D66
	cmp r6, 0x80
	bne _08048D94
_08048D66:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB5E9
_08048D72:
	str r0, [r4]
	ldr r1, =gUnknown_02024332
	movs r2, 0
	movs r0, 0x2
	strb r0, [r1, 0x5]
	strb r2, [r1, 0x3]
	bl _080499B8
	.pool
_08048D94:
	mov r3, r9
	ldrb r0, [r3]
	movs r6, 0x58
	muls r0, r6
	mov r2, r8
	adds r2, 0x4C
	adds r5, r0, r2
	ldr r4, [r5]
	cmp r4, 0
	bne _08048DF4
	mov r3, r8
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r3, [r0]
	cmp r3, 0x3
	beq _08048DEA
	adds r0, 0x1
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _08048DEA
	cmp r3, 0x8
	beq _08048DEA
	cmp r0, 0x8
	beq _08048DEA
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x11
	beq _08048DF4
	mov r4, r9
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x9
	negs r2, r2
	ands r0, r2
	str r0, [r1]
_08048DE4:
	movs r0, 0x1
	mov r10, r0
	b _08048DF4
_08048DEA:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0]
_08048DF4:
	mov r1, r10
	cmp r1, 0x1
	beq _08048DFC
	b _08048F1C
_08048DFC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C134
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r3, [r0]
	cmp r3, 0x7
	bne _08048E50
	bl Random
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_0202420E
	ldrb r3, [r1]
	movs r1, 0x58
	muls r3, r1
	adds r2, 0x4C
	adds r3, r2
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	b _08048E64
	.pool
_08048E50:
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420E
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r2, 0x4C
	adds r1, r2
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_08048E64:
	ldr r2, =gUnknown_02024214
	ldr r1, =gUnknown_0831C224
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, =gUnknown_02024064
	ldr r1, =gUnknown_0202420E
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r1, [r1]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gUnknown_020240D0
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _08048ED8
	movs r0, 0x1
	strb r0, [r5, 0x5]
	ldr r0, =0xffffdfff
	ands r1, r0
	str r1, [r2]
	b _08048EDA
	.pool
_08048ED8:
	strb r0, [r5, 0x5]
_08048EDA:
	ldr r0, =gUnknown_02024332
	ldrb r2, [r0, 0x3]
	cmp r2, 0x2
	beq _08048EF2
	cmp r2, 0x6
	beq _08048EF2
	cmp r2, 0x5
	beq _08048EF2
	cmp r2, 0x3
	beq _08048EF2
	bl _080499B8
_08048EF2:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB2
	ldr r2, =gUnknown_02024332
	ldrb r1, [r2, 0x3]
	strb r1, [r0]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 7
	orrs r0, r1
	str r0, [r2]
	bl _080499B8
	.pool
_08048F1C:
	mov r3, r10
	cmp r3, 0
	beq _08048F26
	bl _080499B8
_08048F26:
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bl _080499B8
	.pool
_08048F40:
	mov r4, r9
	ldrb r1, [r4]
	movs r0, 0x58
	muls r1, r0
	mov r0, r8
	adds r0, 0x50
	adds r1, r0
	ldr r2, =gUnknown_0831C134
	ldr r0, =gUnknown_02024332
	ldrb r3, [r0, 0x3]
	lsls r0, r3, 2
	adds r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08048F66
	bl _08049994
_08048F66:
	subs r0, r3, 0x7
	cmp r0, 0x34
	bls _08048F70
	bl _080499B2
_08048F70:
	lsls r0, 2
	ldr r1, =_08048F88
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08048F88:
	.4byte _0804905C
	.4byte _080490D0
	.4byte _08049244
	.4byte _0804915C
	.4byte _080491D8
	.4byte _0804927C
	.4byte _080492C4
	.4byte _08049390
	.4byte _080493D4
	.4byte _080493D4
	.4byte _080493D4
	.4byte _080493D4
	.4byte _080493D4
	.4byte _080493D4
	.4byte _080493D4
	.4byte _0804941C
	.4byte _0804941C
	.4byte _0804941C
	.4byte _0804941C
	.4byte _0804941C
	.4byte _0804941C
	.4byte _0804941C
	.4byte _080494FC
	.4byte _08049544
	.4byte _08049564
	.4byte _08049720
	.4byte _0804975C
	.4byte _08049778
	.4byte _08049790
	.4byte _080497A8
	.4byte _08049808
	.4byte _08049820
	.4byte _08049468
	.4byte _08049468
	.4byte _08049468
	.4byte _08049468
	.4byte _08049468
	.4byte _08049468
	.4byte _08049468
	.4byte _080494B0
	.4byte _080494B0
	.4byte _080494B0
	.4byte _080494B0
	.4byte _080494B0
	.4byte _080494B0
	.4byte _080494B0
	.4byte _08049864
	.4byte _080498C0
	.4byte _080499B2
	.4byte _080499B2
	.4byte _080499B2
	.4byte _080499B2
	.4byte _080499A4
_0804905C:
	mov r1, r9
	ldrb r0, [r1]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	mov r2, r8
	adds r0, r1, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _08049076
	bl _08049994
_08049076:
	mov r4, r8
	adds r4, 0x50
	adds r0, r1, r4
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0804908A
	bl _08049994
_0804908A:
	bl Random
	mov r3, r9
	ldrb r1, [r3]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	lsls r0, 16
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r0
	lsrs r1, 16
	adds r1, 0x2
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _080499B0
	.pool
_080490D0:
	mov r4, r9
	ldrb r2, [r4]
	movs r4, 0x58
	adds r0, r2, 0
	muls r0, r4
	add r0, r8
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x27
	bne _08049114
	cmp r5, 0x1
	beq _080490F0
	cmp r6, 0x80
	beq _080490F0
	bl _08049994
_080490F0:
	ldr r0, =gUnknown_0202420A
	strb r1, [r0]
	mov r1, r9
	ldrb r0, [r1]
	movs r1, 0x27
	bl b_history__record_ability_usage_of_player
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB603
	str r0, [r1]
	bl _080499B2
	.pool
_08049114:
	adds r0, r2, 0
	bl sub_8048728
	ldr r1, =gUnknown_02024082
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0804912A
	bl _08049994
_0804912A:
	mov r2, r9
	ldrb r0, [r2]
	adds r2, r0, 0
	muls r2, r4
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r1, =gUnknown_0831C134
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r2]
	bl _08049994
	.pool
_0804915C:
	mov r3, r9
	ldrb r0, [r3]
	movs r5, 0x58
	muls r0, r5
	mov r4, r8
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r0, 0x70
	ands r0, r1
	cmp r0, 0
	beq _08049178
	bl _08049994
_08049178:
	movs r0, 0x80
	lsls r0, 5
	orrs r1, r0
	str r1, [r2]
	ldr r1, =gUnknown_02024268
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0]
	bl Random
	mov r2, r9
	ldrb r1, [r2]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	lsls r1, 4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _080499B0
	.pool
_080491D8:
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	bne _08049210
	ldr r4, =gUnknown_0202432E
	ldrh r3, [r4]
	ldr r2, =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	adds r0, r3, r0
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r3, r0
	bls _08049210
	ldr r3, =0x0000ffff
	adds r0, r3, 0
	strh r0, [r4]
_08049210:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	b _080499B0
	.pool
_08049244:
	mov r4, r9
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	mov r1, r8
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	beq _0804925A
	b _08049994
_0804925A:
	bl Random
	ldr r4, =gUnknown_02024332
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	adds r0, 0x3
	strb r0, [r4, 0x3]
	movs r0, 0
	movs r1, 0
	bl sub_8048760
	b _080499B2
	.pool
_0804927C:
	mov r0, r9
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024268
	mov r2, r9
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r2]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1, 0x1]
	b _08049994
	.pool
_080492C4:
	mov r3, r9
	ldrb r0, [r3]
	movs r6, 0x58
	muls r0, r6
	mov r4, r8
	adds r4, 0x50
	adds r0, r4
	ldr r5, [r0]
	movs r0, 0xE0
	lsls r0, 8
	ands r5, r0
	cmp r5, 0
	beq _080492E0
	b _08049994
_080492E0:
	bl Random
	mov r2, r9
	ldrb r1, [r2]
	adds r2, r1, 0
	muls r2, r6
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x3
	lsls r1, 13
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	mov r3, r9
	ldrb r1, [r3]
	ldr r2, =gUnknown_0202449C
	ldr r0, [r2]
	lsls r1, 1
	adds r1, r0
	ldr r6, =gUnknown_020241EA
	ldrh r0, [r6]
	strb r0, [r1, 0x4]
	ldrb r1, [r3]
	ldr r0, [r2]
	lsls r1, 1
	adds r1, r0
	ldrh r0, [r6]
	lsrs r0, 8
	strb r0, [r1, 0x5]
	ldrb r1, [r3]
	ldr r0, [r2]
	adds r1, r0
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r1, 0x14]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r2, =gUnknown_02024332
	ldrb r0, [r2, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strb r5, [r2, 0x5]
	ldr r3, =gUnknown_085CC982
	ldrh r0, [r3]
	ldrh r4, [r6]
	cmp r0, r4
	bne _0804934E
	b _080499B2
_0804934E:
	adds r1, r2, 0
	adds r2, r6, 0
_08049352:
	ldrb r0, [r1, 0x5]
	adds r0, 0x1
	strb r0, [r1, 0x5]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	bls _08049362
	b _080499B2
_08049362:
	ldrb r0, [r1, 0x5]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	ldrh r4, [r2]
	cmp r0, r4
	bne _08049352
	b _080499B2
	.pool
_08049390:
	ldr r1, =gBattleMoveDamage
	ldr r0, =gUnknown_020241F4
	ldr r0, [r0]
	cmp r0, 0
	bge _0804939C
	adds r0, 0x3
_0804939C:
	asrs r0, 2
	str r0, [r1]
	cmp r0, 0
	bne _080493A8
	movs r0, 0x1
	str r0, [r1]
_080493A8:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	b _080499B0
	.pool
_080493D4:
	ldr r4, =gUnknown_02024332
	ldrb r1, [r4, 0x3]
	adds r1, 0xF2
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x10
	adds r2, r7, 0
	movs r3, 0
	bl sub_8050A1C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _080493F2
	b _08049994
_080493F2:
	ldr r2, =gUnknown_02024474
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x10]
	strb r3, [r2, 0x11]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082D8CD4
	b _080499B0
	.pool
_0804941C:
	movs r0, 0x70
	negs r0, r0
	ldr r4, =gUnknown_02024332
	ldrb r1, [r4, 0x3]
	adds r1, 0xEB
	lsls r1, 24
	lsrs r1, 24
	adds r2, r7, 0
	movs r3, 0
	bl sub_8050A1C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0804943C
	b _08049994
_0804943C:
	ldr r2, =gUnknown_02024474
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x10]
	strb r3, [r2, 0x11]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082D8D65
	b _080499B0
	.pool
_08049468:
	ldr r4, =gUnknown_02024332
	ldrb r1, [r4, 0x3]
	adds r1, 0xDA
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x20
	adds r2, r7, 0
	movs r3, 0
	bl sub_8050A1C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _08049486
	b _08049994
_08049486:
	ldr r2, =gUnknown_02024474
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x10]
	strb r3, [r2, 0x11]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082D8CD4
	b _080499B0
	.pool
_080494B0:
	movs r0, 0x60
	negs r0, r0
	ldr r4, =gUnknown_02024332
	ldrb r1, [r4, 0x3]
	adds r1, 0xD3
	lsls r1, 24
	lsrs r1, 24
	adds r2, r7, 0
	movs r3, 0
	bl sub_8050A1C
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _080494D0
	b _08049994
_080494D0:
	ldr r2, =gUnknown_02024474
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x10]
	strb r3, [r2, 0x11]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082D8D65
	b _080499B0
	.pool
_080494FC:
	mov r0, r9
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 15
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_020242BC
	mov r3, r9
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x2
	strb r1, [r0, 0x19]
	ldr r1, =gUnknown_02024268
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0]
	b _08049994
	.pool
_08049544:
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 16
_0804955A:
	orrs r0, r1
	str r0, [r2]
	b _08049994
	.pool
_08049564:
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	beq _08049574
	b _08049994
_08049574:
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080495A8
	ldr r0, [r5]
	ldr r1, =0x0a3f0902
	ands r0, r1
	cmp r0, 0
	bne _080495D4
	b _08049994
	.pool
_080495A8:
	ldr r0, [r5]
	ldr r1, =0x0a3f0902
	ands r0, r1
	cmp r0, 0
	bne _080495D4
	ldr r0, =gUnknown_020243D0
	adds r0, 0x29
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r3, =gBitTable
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080495D4
	b _08049994
_080495D4:
	ldr r2, =gBattleMons
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r1]
	movs r5, 0x58
	muls r0, r5
	adds r4, r0, r2
	ldrh r0, [r4, 0x2E]
	adds r7, r1, 0
	mov r8, r2
	cmp r0, 0
	beq _0804963C
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3C
	bne _0804963C
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB682
	str r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r7]
	muls r0, r5
	add r0, r8
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	b _080499B2
	.pool
_0804963C:
	ldr r4, =gUnknown_0202420B
	mov r10, r4
	ldrb r2, [r4]
	movs r0, 0x58
	mov r9, r0
	mov r0, r9
	muls r0, r2
	add r0, r8
	ldrh r4, [r0, 0x2E]
	cmp r4, 0
	beq _08049654
	b _08049994
_08049654:
	ldrb r0, [r7]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	ldrh r3, [r0, 0x2E]
	adds r1, r3, 0
	cmp r1, 0xAF
	bne _08049668
	b _08049994
_08049668:
	adds r0, r3, 0
	subs r0, 0x79
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xB
	bhi _08049676
	b _08049994
_08049676:
	cmp r1, 0
	bne _0804967C
	b _08049994
_0804967C:
	ldr r5, =gUnknown_0202449C
	lsls r0, r2, 1
	adds r0, 0xD0
	ldr r1, [r5]
	adds r1, r0
	ldr r2, =gUnknown_02024208
	strh r3, [r1]
	strh r3, [r2]
	ldrb r0, [r7]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	add r0, r8
	movs r6, 0
	strh r4, [r0, 0x2E]
	ldr r4, =gUnknown_02024064
	mov r1, r10
	ldrb r0, [r1]
	strb r0, [r4]
	str r2, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	mov r2, r10
	ldrb r0, [r2]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r7]
	strb r0, [r4]
	ldrb r0, [r7]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	mov r1, r8
	adds r1, 0x2E
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB422
	str r0, [r4]
	ldrb r0, [r7]
	ldr r1, [r5]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	strb r6, [r0]
	ldrb r0, [r7]
	ldr r1, [r5]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	strb r6, [r0]
	b _080499B2
	.pool
_08049720:
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 19
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, =gUnknown_0202420B
	ldrb r1, [r1]
	strb r1, [r0, 0x14]
	b _08049994
	.pool
_0804975C:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 20
	b _0804955A
	.pool
_08049778:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DAF27
	b _080499B0
	.pool
_08049790:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DAFC3
	b _080499B0
	.pool
_080497A8:
	ldr r6, =gEnemyMonIndex
	ldrb r0, [r6]
	movs r2, 0x58
	muls r0, r2
	mov r1, r8
	adds r1, 0x4C
	adds r5, r0, r1
	ldr r4, [r5]
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	bne _080497C2
	b _08049994
_080497C2:
	movs r0, 0x41
	negs r0, r0
	ands r4, r0
	str r4, [r5]
	ldr r4, =gUnknown_02024064
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r4]
	muls r0, r2
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB361
	b _080499B0
	.pool
_08049808:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB117
	b _080499B0
	.pool
_08049820:
	ldr r4, =gBattleMoveDamage
	ldr r0, =gUnknown_020241F4
	ldr r0, [r0]
	movs r1, 0x3
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _08049836
	movs r0, 0x1
	str r0, [r4]
_08049836:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, =gUnknown_0831C224
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	b _080499B0
	.pool
_08049864:
	mov r4, r9
	ldrb r0, [r4]
	movs r5, 0x58
	muls r0, r5
	mov r4, r8
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r0, 0xC0
	lsls r0, 4
	ands r0, r1
	cmp r0, 0
	beq _08049880
	b _08049994
_08049880:
	movs r0, 0x80
	lsls r0, 5
	orrs r1, r0
	str r1, [r2]
	ldr r1, =gUnknown_02024268
	mov r2, r9
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	strh r1, [r0]
	bl Random
	mov r3, r9
	ldrb r1, [r3]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x1
	ands r1, r0
	adds r1, 0x2
	lsls r1, 10
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _080499B2
	.pool
_080498C0:
	mov r4, r9
	ldrb r3, [r4]
	movs r5, 0x58
	adds r0, r3, 0
	muls r0, r5
	mov r2, r8
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x3C
	bne _08049900
	ldrh r0, [r1, 0x2E]
	cmp r0, 0
	beq _08049994
	ldr r0, =gUnknown_0202420A
	strb r2, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB63F
	str r0, [r1]
	ldrb r0, [r4]
	movs r1, 0x3C
	bl b_history__record_ability_usage_of_player
	b _080499B2
	.pool
_08049900:
	ldrh r0, [r1, 0x2E]
	cmp r0, 0
	beq _08049994
	adds r0, r3, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_02024208
	mov r3, r9
	ldrb r0, [r3]
	muls r0, r5
	add r0, r8
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	ldrb r0, [r3]
	muls r0, r5
	add r0, r8
	movs r5, 0
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldr r2, =gUnknown_020243D0
	adds r2, 0x29
	adds r2, r4, r2
	ldr r3, =gBitTable
	ldr r1, =gUnknown_0202406E
	mov r4, r9
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB168
	str r0, [r4]
	mov r1, r9
	ldrb r0, [r1]
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	strb r5, [r0]
	mov r3, r9
	ldrb r0, [r3]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	strb r5, [r0]
	b _080499B2
	.pool
_08049994:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	b _080499B2
	.pool
_080499A4:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB1D5
_080499B0:
	str r0, [r4]
_080499B2:
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x3]
_080499B8:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8048760

	thumb_func_start atk15_seteffectwithchancetarget
atk15_seteffectwithchancetarget: @ 80499D4
	push {r4,lr}
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x20
	bne _08049A10
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x5]
	lsls r4, r0, 1
	b _08049A20
	.pool
_08049A10:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r4, [r0, 0x5]
_08049A20:
	ldr r3, =gUnknown_02024332
	ldrb r2, [r3, 0x3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _08049A50
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08049A50
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3, 0x3]
	b _08049A7E
	.pool
_08049A50:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r4
	bcs _08049A9A
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	beq _08049A9A
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08049A9A
	cmp r4, 0x63
	bls _08049A90
_08049A7E:
	movs r0, 0
	movs r1, 0x80
	bl sub_8048760
	b _08049AA2
	.pool
_08049A90:
	movs r0, 0
	movs r1, 0
	bl sub_8048760
	b _08049AA2
_08049A9A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08049AA2:
	ldr r0, =gUnknown_02024332
	movs r1, 0
	strb r1, [r0, 0x3]
	ldr r0, =gUnknown_02024474
	strb r1, [r0, 0x16]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk15_seteffectwithchancetarget

	thumb_func_start sub_8049AC0
sub_8049AC0: @ 8049AC0
	push {lr}
	movs r0, 0x1
	movs r1, 0
	bl sub_8048760
	pop {r0}
	bx r0
	thumb_func_end sub_8049AC0

	thumb_func_start sub_8049AD0
sub_8049AD0: @ 8049AD0
	push {lr}
	movs r0, 0
	movs r1, 0
	bl sub_8048760
	pop {r0}
	bx r0
	thumb_func_end sub_8049AD0

	thumb_func_start sub_8049AE0
sub_8049AE0: @ 8049AE0
	push {lr}
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r2, =gUnknown_02024064
	strb r0, [r2]
	ldr r3, =gUnknown_02024332
	ldrb r0, [r3, 0x3]
	cmp r0, 0x6
	bhi _08049B14
	ldr r1, =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x4C
	b _08049B1E
	.pool
_08049B14:
	ldr r1, =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
_08049B1E:
	adds r2, r1
	ldr r1, =gUnknown_0831C134
	ldrb r0, [r3, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_02024332
	movs r2, 0
	strb r2, [r0, 0x3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	strb r2, [r0, 0x16]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8049AE0

	thumb_func_start atk19_faintpokemon
atk19_faintpokemon: @ 8049B5C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r0, =gUnknown_02024214
	ldr r2, [r0]
	ldrb r1, [r2, 0x2]
	adds r6, r0, 0
	cmp r1, 0
	beq _08049BE0
	ldrb r0, [r2, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r2, =gUnknown_02024280
	ldr r1, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _08049B94
	b _08049E2C
_08049B94:
	ldr r1, [r6]
	ldrb r4, [r1, 0x3]
	ldrb r0, [r1, 0x4]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x6]
	lsls r0, 24
	orrs r4, r0
	bl b_movescr_stack_pop_cursor
	str r4, [r6]
	ldrb r0, [r5]
	bl battle_side_get_owner
	ldr r1, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 23
	adds r0, r1
	ldrh r2, [r0]
	ldr r1, =0x0000fdff
	ands r1, r2
	strh r1, [r0]
	b _08049E32
	.pool
_08049BE0:
	ldrb r0, [r2, 0x1]
	cmp r0, 0x1
	bne _08049C08
	ldr r1, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	mov r9, r0
	ldr r4, =gUnknown_082DA7AA
	b _08049C18
	.pool
_08049C08:
	ldr r1, =gUnknown_02024064
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	mov r9, r0
	ldr r4, =gUnknown_082DA7B7
_08049C18:
	mov r8, r1
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	mov r7, r8
	ldrb r3, [r7]
	lsls r0, r3, 2
	adds r0, r2
	ldr r2, [r0]
	ands r1, r2
	cmp r1, 0
	beq _08049C32
	b _08049E2C
_08049C32:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08049C42
	b _08049E2C
_08049C42:
	ldr r5, =gUnknown_02024280
	lsls r1, r2, 28
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r6]
	adds r0, 0x7
	bl b_movescr_stack_push
	str r4, [r6]
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08049CA4
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	orrs r0, r1
	str r0, [r5]
	ldr r1, =gUnknown_03005D10
	ldrb r0, [r1]
	cmp r0, 0xFE
	bhi _08049C78
	adds r0, 0x1
	strb r0, [r1]
_08049C78:
	ldrb r0, [r7]
	bl sub_80570F4
	b _08049CCE
	.pool
_08049CA4:
	ldr r4, =gUnknown_03005D10
	ldrb r0, [r4, 0x1]
	cmp r0, 0xFE
	bhi _08049CB0
	adds r0, 0x1
	strb r0, [r4, 0x1]
_08049CB0:
	ldr r1, =gUnknown_0202406E
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	strh r0, [r4, 0x20]
_08049CCE:
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08049D0C
	ldr r6, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08049D0C
	movs r0, 0x41
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	bl b_movescr_stack_push
	ldr r1, =gBattleMoveDamage
	mov r0, r9
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x28]
	str r0, [r1]
	ldr r0, =gUnknown_082DAE3E
	str r0, [r4]
_08049D0C:
	ldr r1, =gUnknown_020242AC
	ldr r6, =gEnemyMonIndex
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 7
	ands r0, r1
	cmp r0, 0
	bne _08049D24
	b _08049E32
_08049D24:
	ldr r0, =gUnknown_02024280
	ldr r5, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r5, r0
	cmp r5, 0
	beq _08049D34
	b _08049E32
_08049D34:
	ldr r3, =gUnknown_0202420B
	mov r8, r3
	ldrb r0, [r3]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _08049E32
	ldr r0, =gBattleMons
	mov r9, r0
	mov r2, r8
	ldrb r1, [r2]
	movs r7, 0x58
	adds r2, r1, 0
	muls r2, r7
	adds r0, r2, r0
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08049E32
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xA5
	beq _08049E32
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, 0x80
	ldrb r4, [r0]
	adds r0, r4, r2
	mov r6, r9
	adds r6, 0x24
	adds r0, r6
	strb r5, [r0]
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB18D
	str r0, [r5]
	ldr r5, =gUnknown_02024064
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r4, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r5]
	muls r0, r7
	adds r0, r6
	adds r0, r4
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	lsls r4, 1
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r7
	adds r0, r4, r0
	mov r2, r9
	adds r2, 0xC
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	mov r3, r8
	ldrb r0, [r3]
	muls r0, r7
	adds r4, r0
	adds r4, r2
	ldrh r0, [r4]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	b _08049E32
	.pool
_08049E2C:
	ldr r0, [r6]
	adds r0, 0x7
	str r0, [r6]
_08049E32:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk19_faintpokemon

	thumb_func_start sub_8049E40
sub_8049E40: @ 8049E40
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _08049E6A
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x0A_A_A_A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_08049E6A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8049E40

	thumb_func_start sub_8049E7C
sub_8049E7C: @ 8049E7C
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024068
	ldr r5, [r0]
	cmp r5, 0
	bne _08049EE8
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _08049EB4
	ldr r2, =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08049EDC
_08049EB4:
	ldr r1, =gBattleMons
	ldrb r0, [r4]
	movs r2, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	str r5, [r0]
	ldrb r0, [r4]
	muls r0, r2
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08049EDC:
	bl sub_803A75C
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08049EE8:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8049E7C

	thumb_func_start atk1C_jumpifstatus
atk1C_jumpifstatus: @ 8049F04
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [r5]
	ldrb r4, [r2, 0x2]
	ldrb r1, [r2, 0x3]
	lsls r1, 8
	adds r4, r1
	ldrb r1, [r2, 0x4]
	lsls r1, 16
	adds r4, r1
	ldrb r1, [r2, 0x5]
	lsls r1, 24
	adds r4, r1
	ldrb r3, [r2, 0x6]
	ldrb r1, [r2, 0x7]
	lsls r1, 8
	adds r3, r1
	ldrb r1, [r2, 0x8]
	lsls r1, 16
	adds r3, r1
	ldrb r1, [r2, 0x9]
	lsls r1, 24
	adds r3, r1
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08049F68
	adds r0, r1, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08049F68
	str r3, [r5]
	b _08049F70
	.pool
_08049F68:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
_08049F70:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk1C_jumpifstatus

	thumb_func_start atk1D_jumpifsecondarystatus
atk1D_jumpifsecondarystatus: @ 8049F7C
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [r5]
	ldrb r4, [r2, 0x2]
	ldrb r1, [r2, 0x3]
	lsls r1, 8
	adds r4, r1
	ldrb r1, [r2, 0x4]
	lsls r1, 16
	adds r4, r1
	ldrb r1, [r2, 0x5]
	lsls r1, 24
	adds r4, r1
	ldrb r3, [r2, 0x6]
	ldrb r1, [r2, 0x7]
	lsls r1, 8
	adds r3, r1
	ldrb r1, [r2, 0x8]
	lsls r1, 16
	adds r3, r1
	ldrb r1, [r2, 0x9]
	lsls r1, 24
	adds r3, r1
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08049FE0
	adds r0, r1, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08049FE0
	str r3, [r5]
	b _08049FE8
	.pool
_08049FE0:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
_08049FE8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk1D_jumpifsecondarystatus

	thumb_func_start atk1E_jumpifability
atk1E_jumpifability: @ 8049FF4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r6, =gUnknown_02024214
	ldr r2, [r6]
	ldrb r5, [r2, 0x2]
	mov r8, r5
	ldrb r1, [r2, 0x3]
	ldrb r0, [r2, 0x4]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x6]
	lsls r0, 24
	adds r7, r1, r0
	ldrb r0, [r2, 0x1]
	cmp r0, 0x8
	bne _0804A054
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xD
	adds r2, r5, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0804A0C8
	ldr r1, =gUnknown_0202420A
	strb r5, [r1]
	str r7, [r6]
	subs r4, 0x1
	lsls r0, r4, 24
	lsrs r0, 24
	ldrb r1, [r1]
	b _0804A0B0
	.pool
_0804A054:
	cmp r0, 0x9
	bne _0804A08C
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	adds r2, r5, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0804A0C8
	ldr r1, =gUnknown_0202420A
	strb r5, [r1]
	str r7, [r6]
	subs r4, 0x1
	lsls r0, r4, 24
	lsrs r0, 24
	ldrb r1, [r1]
	b _0804A0B0
	.pool
_0804A08C:
	ldrb r0, [r2, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, r8
	bne _0804A0C8
	ldr r0, =gUnknown_0202420A
	strb r1, [r0]
	str r7, [r6]
	ldrb r1, [r0]
	adds r0, r4, 0
_0804A0B0:
	bl b_history__record_ability_usage_of_player
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x15]
	b _0804A0CE
	.pool
_0804A0C8:
	ldr r0, [r6]
	adds r0, 0x7
	str r0, [r6]
_0804A0CE:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk1E_jumpifability

	thumb_func_start sub_804A0DC
sub_804A0DC: @ 804A0DC
	push {r4-r6,lr}
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r4, [r0, 0x1]
	cmp r4, 0x1
	bne _0804A0FC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	b _0804A106
	.pool
_0804A0FC:
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r4, 0x1
_0804A106:
	ands r4, r0
	ldr r6, =gUnknown_02024214
	ldr r3, [r6]
	ldrb r2, [r3, 0x2]
	ldrb r0, [r3, 0x3]
	lsls r0, 8
	orrs r2, r0
	ldrb r1, [r3, 0x4]
	ldrb r0, [r3, 0x5]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x6]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x7]
	lsls r0, 24
	adds r5, r1, r0
	ldr r1, =gUnknown_0202428E
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	ands r2, r0
	cmp r2, 0
	beq _0804A148
	str r5, [r6]
	b _0804A14E
	.pool
_0804A148:
	adds r0, r3, 0
	adds r0, 0x8
	str r0, [r6]
_0804A14E:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_804A0DC

	thumb_func_start sub_804A154
sub_804A154: @ 804A154
	push {r4,r5,lr}
	movs r5, 0
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gBattleMons
	ldr r3, [r4]
	movs r1, 0x58
	muls r0, r1
	ldrb r1, [r3, 0x3]
	adds r0, r1
	adds r2, 0x18
	adds r0, r2
	ldrb r2, [r0]
	ldrb r0, [r3, 0x2]
	cmp r0, 0x5
	bhi _0804A212
	lsls r0, 2
	ldr r1, =_0804A194
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804A194:
	.4byte _0804A1AC
	.4byte _0804A1BC
	.4byte _0804A1CC
	.4byte _0804A1DC
	.4byte _0804A1EC
	.4byte _0804A200
_0804A1AC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bne _0804A212
	b _0804A20C
	.pool
_0804A1BC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	beq _0804A212
	b _0804A20C
	.pool
_0804A1CC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bls _0804A212
	b _0804A20C
	.pool
_0804A1DC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bcs _0804A212
	b _0804A20C
	.pool
_0804A1EC:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	ands r2, r0
	cmp r2, 0
	beq _0804A212
	b _0804A20C
	.pool
_0804A200:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	ands r2, r0
	cmp r2, 0
	bne _0804A212
_0804A20C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_0804A212:
	cmp r5, 0
	beq _0804A238
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	b _0804A240
	.pool
_0804A238:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x9
	str r0, [r1]
_0804A240:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804A154

	thumb_func_start atk21_jumpifspecialstatusflag
atk21_jumpifspecialstatusflag: @ 804A24C
	push {r4-r6,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r2, [r4]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	adds r6, r1, r0
	ldrb r1, [r2, 0x7]
	ldrb r0, [r2, 0x8]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x9]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0xA]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r0, [r2, 0x6]
	cmp r0, 0
	beq _0804A2AC
	ldr r0, =gUnknown_020242AC
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	ands r0, r6
	cmp r0, 0
	bne _0804A2C4
	b _0804A2BC
	.pool
_0804A2AC:
	ldr r0, =gUnknown_020242AC
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	ands r0, r6
	cmp r0, 0
	beq _0804A2C4
_0804A2BC:
	str r3, [r4]
	b _0804A2CA
	.pool
_0804A2C4:
	adds r0, r2, 0
	adds r0, 0xB
	str r0, [r4]
_0804A2CA:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk21_jumpifspecialstatusflag

	thumb_func_start sub_804A2D0
sub_804A2D0: @ 804A2D0
	push {r4-r6,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [r4]
	ldrb r5, [r3, 0x2]
	ldrb r2, [r3, 0x3]
	ldrb r1, [r3, 0x4]
	lsls r1, 8
	adds r2, r1
	ldrb r1, [r3, 0x5]
	lsls r1, 16
	adds r2, r1
	ldrb r1, [r3, 0x6]
	lsls r1, 24
	adds r6, r2, r1
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r5
	beq _0804A314
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r5
	bne _0804A320
_0804A314:
	str r6, [r4]
	b _0804A324
	.pool
_0804A320:
	adds r0, r3, 0x7
	str r0, [r4]
_0804A324:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_804A2D0

	thumb_func_start sub_804A32C
sub_804A32C: @ 804A32C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x50
	mov r9, r0
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_0202420D
	strb r0, [r1]
	ldr r2, =gUnknown_020243FE
	movs r1, 0x2
	ands r1, r0
	lsls r1, 24
	lsrs r1, 25
	adds r1, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0x1C]
	cmp r0, 0x6
	bls _0804A368
	bl _0804ACB2
_0804A368:
	lsls r0, 2
	ldr r1, =_0804A38C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804A38C:
	.4byte _0804A3A8
	.4byte _0804A414
	.4byte _0804A52E
	.4byte _0804A850
	.4byte _0804A954
	.4byte _0804AC40
	.4byte _0804AC88
_0804A3A8:
	ldr r4, =gUnknown_0202420D
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0804A3BC
	bl _0804AC7C
_0804A3BC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x063f0982
	ands r0, r1
	cmp r0, 0
	beq _0804A3CC
	bl _0804AC7C
_0804A3CC:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1C]
	adds r0, 0x1
	strb r0, [r1, 0x1C]
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	adds r2, 0xDF
	ldr r3, =gBitTable
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bl _0804ACB2
	.pool
_0804A414:
	movs r5, 0
	movs r7, 0
_0804A418:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804A486
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804A486
	ldr r0, =gBitTable
	lsls r1, r7, 2
	adds r1, r0
	ldr r0, [r1]
	mov r1, r8
	ands r0, r1
	cmp r0, 0
	beq _0804A44C
	adds r5, 0x1
_0804A44C:
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0804A478
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00003226
	adds r0, r2
	ldrb r4, [r0]
	b _0804A480
	.pool
_0804A478:
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
_0804A480:
	cmp r4, 0x19
	bne _0804A486
	adds r6, 0x1
_0804A486:
	adds r7, 0x1
	cmp r7, 0x5
	ble _0804A418
	ldr r3, =gBaseStats
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420D
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r2, [r0, 0x9]
	adds r1, 0x2A
	ldrb r0, [r1]
	muls r0, r2
	movs r1, 0x7
	bl __divsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r6, 0
	beq _0804A4FC
	lsrs r4, r0, 17
	adds r0, r4, 0
	adds r1, r5, 0
	bl __divsi3
	mov r1, r9
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bne _0804A4D2
	movs r0, 0x1
	strh r0, [r1]
_0804A4D2:
	ldr r5, =gUnknown_02024402
	adds r0, r4, 0
	adds r1, r6, 0
	bl __divsi3
	strh r0, [r5]
	lsls r0, 16
	cmp r0, 0
	bne _0804A516
	movs r0, 0x1
	strh r0, [r5]
	b _0804A516
	.pool
_0804A4FC:
	adds r0, r1, 0
	adds r1, r5, 0
	bl __divsi3
	mov r2, r9
	strh r0, [r2]
	lsls r0, 16
	cmp r0, 0
	bne _0804A512
	movs r0, 0x1
	strh r0, [r2]
_0804A512:
	ldr r0, =gUnknown_02024402
	strh r6, [r0]
_0804A516:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1C]
	adds r0, 0x1
	movs r2, 0
	strb r0, [r1, 0x1C]
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	strb r2, [r0, 0x10]
	ldr r0, [r1]
	adds r0, 0x53
	mov r4, r8
	strb r4, [r0]
_0804A52E:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0804A538
	b _0804ACB2
_0804A538:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0804A57C
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00003226
	adds r0, r1
	ldrb r4, [r0]
	b _0804A584
	.pool
_0804A57C:
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
_0804A584:
	ldr r5, =gUnknown_0202449C
	cmp r4, 0x19
	beq _0804A5AC
	ldr r0, [r5]
	adds r1, r0, 0
	adds r1, 0x53
	ldrb r0, [r1]
	movs r2, 0x1
	ands r2, r0
	cmp r2, 0
	bne _0804A5AC
	lsrs r0, 1
	strb r0, [r1]
	ldr r1, =gUnknown_02024474
	b _0804A5D0
	.pool
_0804A5AC:
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x38
	bl GetMonData
	cmp r0, 0x64
	bne _0804A5E8
	ldr r1, [r5]
	adds r1, 0x53
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	ldr r1, =gUnknown_02024474
	movs r2, 0
_0804A5D0:
	movs r0, 0x5
	strb r0, [r1, 0x1C]
	ldr r0, =gBattleMoveDamage
	str r2, [r0]
	b _0804ACB2
	.pool
_0804A5E8:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0804A616
	ldr r0, =gBattleMons
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0804A616
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	cmp r0, 0
	bne _0804A616
	bl sub_805EA60
	ldr r0, =0x00000161
	bl song_play_for_text
	ldr r1, [r5]
	ldrb r0, [r1, 0x12]
	adds r0, 0x1
	strb r0, [r1, 0x12]
_0804A616:
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _0804A630
	b _0804A824
_0804A630:
	ldr r0, [r5]
	adds r0, 0x53
	ldrb r0, [r0]
	movs r3, 0x1
	ands r3, r0
	cmp r3, 0
	beq _0804A664
	ldr r1, =gBattleMoveDamage
	mov r2, r9
	ldrh r0, [r2]
	str r0, [r1]
	mov r9, r1
	b _0804A66A
	.pool
_0804A664:
	ldr r0, =gBattleMoveDamage
	str r3, [r0]
	mov r9, r0
_0804A66A:
	cmp r4, 0x19
	bne _0804A67A
	ldr r0, =gUnknown_02024402
	ldrh r1, [r0]
	mov r2, r9
	ldr r0, [r2]
	adds r0, r1
	str r0, [r2]
_0804A67A:
	cmp r4, 0x28
	bne _0804A68E
	mov r4, r9
	ldr r1, [r4]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
_0804A68E:
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0804A6AA
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
_0804A6AA:
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	bl sub_806E8A8
	lsls r0, 24
	cmp r0, 0
	beq _0804A714
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0804A6F8
	ldr r0, [r4]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x2
	bls _0804A6F8
	ldr r7, =0x00000149
	ldr r0, =gBattleMoveDamage
	mov r9, r0
	b _0804A71A
	.pool
_0804A6F8:
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	movs r7, 0xA5
	lsls r7, 1
	mov r9, r4
	b _0804A71A
	.pool
_0804A714:
	ldr r7, =0x00000149
	ldr r1, =gBattleMoveDamage
	mov r9, r1
_0804A71A:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0804A786
	ldr r0, =gUnknown_0202406E
	ldr r1, =gUnknown_0202449C
	ldr r4, [r1]
	ldrh r0, [r0, 0x4]
	adds r5, r1, 0
	ldr r3, =gBitTable
	ldr r2, =gUnknown_02024210
	ldrb r1, [r4, 0x10]
	cmp r0, r1
	bne _0804A76C
	ldrb r1, [r2]
	ldr r0, [r3, 0x8]
	ands r1, r0
	cmp r1, 0
	bne _0804A76C
	adds r1, r4, 0
	adds r1, 0x8F
	movs r0, 0x2
	strb r0, [r1]
	b _0804A78E
	.pool
_0804A76C:
	ldrb r2, [r2]
	ldr r0, [r3]
	ands r2, r0
	cmp r2, 0
	bne _0804A77E
	ldr r0, [r5]
	adds r0, 0x8F
	strb r2, [r0]
	b _0804A78E
_0804A77E:
	ldr r0, [r5]
	adds r0, 0x8F
	movs r1, 0x2
	b _0804A78C
_0804A786:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x8F
_0804A78C:
	strb r1, [r0]
_0804A78E:
	ldr r1, =gUnknown_02022F58
	movs r2, 0
	mov r12, r2
	movs r3, 0xFD
	strb r3, [r1]
	movs r5, 0x4
	strb r5, [r1, 0x1]
	ldr r6, =gUnknown_0202449C
	ldr r2, [r6]
	movs r4, 0x8F
	adds r4, r2
	mov r8, r4
	ldrb r0, [r4]
	strb r0, [r1, 0x2]
	ldrb r0, [r2, 0x10]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02022F68
	strb r3, [r1]
	mov r0, r12
	strb r0, [r1, 0x1]
	strb r7, [r1, 0x2]
	movs r4, 0xFF
	lsls r4, 8
	ands r7, r4
	asrs r0, r7, 8
	strb r0, [r1, 0x3]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02022F78
	strb r3, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	strb r5, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	mov r0, r9
	ldr r2, [r0]
	strb r2, [r1, 0x4]
	adds r0, r2, 0
	ands r0, r4
	asrs r0, 8
	strb r0, [r1, 0x5]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r2
	asrs r0, 16
	strb r0, [r1, 0x6]
	lsrs r2, 24
	strb r2, [r1, 0x7]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x8]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0xD
	bl b_std_message
	ldr r0, [r6]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r3, =gBattleMons
	ldr r1, =gUnknown_0202420D
	ldrb r2, [r1]
	movs r1, 0x58
	muls r1, r2
	adds r1, r3
	ldrh r1, [r1]
	bl sub_806DADC
_0804A824:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, 0x53
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	b _0804A92A
	.pool
_0804A850:
	ldr r0, =gUnknown_02024068
	ldr r2, [r0]
	cmp r2, 0
	beq _0804A85A
	b _0804ACB2
_0804A85A:
	ldr r1, =gUnknown_02023864
	ldr r7, =gUnknown_0202449C
	ldr r0, [r7]
	adds r0, 0x8F
	ldrb r0, [r0]
	lsls r0, 9
	adds r0, r1
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	movs r6, 0x64
	muls r0, r6
	ldr r5, =gPlayerParty
	adds r0, r5
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804A92A
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x38
	bl GetMonData
	cmp r0, 0x64
	beq _0804A92A
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3A
	bl GetMonData
	ldr r4, =gUnknown_020244A8
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3B
	bl GetMonData
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1, 0x2]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3C
	bl GetMonData
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1, 0x4]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3D
	bl GetMonData
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1, 0x6]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3E
	bl GetMonData
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1, 0x8]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3F
	bl GetMonData
	ldr r1, [r4]
	ldr r1, [r1, 0x10]
	strh r0, [r1, 0xA]
	ldr r4, =gUnknown_02024064
	ldr r1, [r7]
	adds r0, r1, 0
	adds r0, 0x8F
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r1, [r1, 0x10]
	ldr r0, =gBattleMoveDamage
	ldrh r2, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x19_a_bb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804A92A:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1C]
	adds r0, 0x1
	strb r0, [r1, 0x1C]
	b _0804ACB2
	.pool
_0804A954:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0804A95E
	b _0804ACB2
_0804A95E:
	ldr r1, =gUnknown_02024064
	ldr r0, =gUnknown_0202449C
	ldr r4, [r0]
	adds r0, r4, 0
	adds r0, 0x8F
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r3, =gUnknown_02023864
	ldrb r2, [r1]
	lsls r1, r2, 9
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0x21
	beq _0804A97C
	b _0804AC28
_0804A97C:
	adds r0, r3, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, 0xB
	beq _0804A988
	b _0804AC28
_0804A988:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0804A9B2
	ldr r0, =gUnknown_0202406E
	lsls r1, r2, 1
	adds r1, r0
	ldrh r0, [r1]
	ldrb r4, [r4, 0x10]
	cmp r0, r4
	bne _0804A9B2
	adds r1, r0, 0
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	adds r1, r2, 0
	bl sub_805E990
_0804A9B2:
	ldr r1, =gUnknown_02022F58
	movs r3, 0xFD
	strb r3, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	strb r0, [r1, 0x2]
	ldr r4, =gUnknown_0202449C
	mov r9, r4
	ldr r2, [r4]
	ldrb r0, [r2, 0x10]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r4, =gUnknown_02022F68
	strb r3, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
	movs r0, 0x3
	strb r0, [r4, 0x3]
	ldrb r0, [r2, 0x10]
	movs r1, 0x64
	mov r8, r1
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	ldr r7, =gPlayerParty
	adds r0, r7
	movs r1, 0x38
	bl GetMonData
	strb r0, [r4, 0x4]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r4, 0x5]
	bl b_movescr_stack_push_cursor
	ldr r2, =gUnknown_03005D54
	ldr r1, =gBitTable
	mov r4, r9
	ldr r5, [r4]
	ldrb r0, [r5, 0x10]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DABBD
	str r0, [r1]
	ldr r4, =gBattleMoveDamage
	ldr r2, =gUnknown_02023864
	ldrb r1, [r6]
	lsls r1, 9
	adds r0, r2, 0x2
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x3
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	str r3, [r4]
	ldrb r0, [r5, 0x10]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0
	bl happiness_algorithm
	ldr r1, =gUnknown_0202406E
	mov r2, r9
	ldr r0, [r2]
	ldrb r2, [r0, 0x10]
	ldrh r0, [r1]
	cmp r0, r2
	bne _0804AB1E
	ldr r4, =gBattleMons
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	beq _0804AB1E
	mov r0, r8
	muls r0, r2
	adds r0, r7
	movs r1, 0x38
	bl GetMonData
	adds r1, r4, 0
	adds r1, 0x2A
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x39
	bl GetMonData
	strh r0, [r4, 0x28]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3A
	bl GetMonData
	strh r0, [r4, 0x2C]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3B
	bl GetMonData
	strh r0, [r4, 0x2]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3C
	bl GetMonData
	strh r0, [r4, 0x4]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3D
	bl GetMonData
	strh r0, [r4, 0x6]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3D
	bl GetMonData
	strh r0, [r4, 0x6]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3E
	bl GetMonData
	strh r0, [r4, 0x8]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3F
	bl GetMonData
	strh r0, [r4, 0xA]
_0804AB1E:
	ldr r0, =gUnknown_0202406E
	ldr r7, =gUnknown_0202449C
	ldr r1, [r7]
	ldrb r2, [r1, 0x10]
	ldrh r0, [r0, 0x4]
	cmp r0, r2
	beq _0804AB2E
	b _0804AC2E
_0804AB2E:
	ldr r6, =gBattleMons
	movs r4, 0xD8
	adds r4, r6
	mov r8, r4
	ldrh r0, [r4]
	cmp r0, 0
	beq _0804AC2E
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804AC2E
	movs r5, 0x64
	adds r0, r2, 0
	muls r0, r5
	ldr r4, =gPlayerParty
	adds r0, r4
	movs r1, 0x38
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xDA
	strb r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x39
	bl GetMonData
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3A
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xDC
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3B
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB2
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3C
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB4
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3D
	bl GetMonData
	movs r2, 0xB6
	adds r2, r6
	mov r8, r2
	strh r0, [r2]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3D
	bl GetMonData
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3E
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB8
	strh r0, [r1]
	b _0804AC2E
	.pool
_0804AC28:
	ldr r1, =gBattleMoveDamage
	movs r0, 0
	str r0, [r1]
_0804AC2E:
	ldr r1, =gUnknown_02024474
	movs r0, 0x5
	strb r0, [r1, 0x1C]
	b _0804ACB2
	.pool
_0804AC40:
	ldr r0, =gBattleMoveDamage
	ldr r0, [r0]
	cmp r0, 0
	beq _0804AC58
	ldr r1, =gUnknown_02024474
	movs r0, 0x3
	strb r0, [r1, 0x1C]
	b _0804ACB2
	.pool
_0804AC58:
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	ldrb r0, [r1, 0x10]
	adds r0, 0x1
	strb r0, [r1, 0x10]
	ldr r0, [r2]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x5
	bhi _0804AC7C
	ldr r1, =gUnknown_02024474
	movs r0, 0x2
	strb r0, [r1, 0x1C]
	b _0804ACB2
	.pool
_0804AC7C:
	ldr r1, =gUnknown_02024474
	movs r0, 0x6
	strb r0, [r1, 0x1C]
	b _0804ACB2
	.pool
_0804AC88:
	ldr r0, =gUnknown_02024068
	ldr r5, [r0]
	cmp r5, 0
	bne _0804ACB2
	ldr r4, =gBattleMons
	ldr r2, =gUnknown_0202420D
	ldrb r0, [r2]
	movs r1, 0x58
	muls r0, r1
	adds r0, r4
	movs r3, 0
	strh r5, [r0, 0x2E]
	ldrb r0, [r2]
	muls r0, r1
	adds r0, r4
	adds r0, 0x20
	strb r3, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0804ACB2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804A32C

	thumb_func_start sub_804ACD0
sub_804ACD0: @ 804ACD0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0804ACE2
	b _0804AF22
_0804ACE2:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0804AD48
	ldr r0, =gUnknown_02038BCE
	ldrh r1, [r0]
	ldr r0, =0x00000c03
	cmp r1, r0
	bne _0804AD48
	movs r5, 0
_0804ACFC:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804AD2C
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804AD2C
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	adds r0, r6, r0
	lsls r0, 16
	lsrs r6, r0, 16
_0804AD2C:
	adds r5, 0x1
	cmp r5, 0x2
	ble _0804ACFC
	b _0804ADA8
	.pool
_0804AD48:
	movs r5, 0
_0804AD4A:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804ADA2
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804ADA2
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0804AD94
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r1, [r0]
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804ADA2
_0804AD94:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	adds r0, r6, r0
	lsls r0, 16
	lsrs r6, r0, 16
_0804ADA2:
	adds r5, 0x1
	cmp r5, 0x5
	ble _0804AD4A
_0804ADA8:
	cmp r6, 0
	bne _0804ADB6
	ldr r0, =gUnknown_0202433A
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
_0804ADB6:
	movs r6, 0
	movs r5, 0
_0804ADBA:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gEnemyParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804AE10
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804AE10
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0804AE02
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldr r1, =0x000002a1
	adds r0, r1
	ldrb r1, [r0]
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804AE10
_0804AE02:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	adds r0, r6, r0
	lsls r0, 16
	lsrs r6, r0, 16
_0804AE10:
	adds r5, 0x1
	cmp r5, 0x5
	ble _0804ADBA
	ldr r2, =gUnknown_0202433A
	cmp r6, 0
	bne _0804AE24
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
_0804AE24:
	ldrb r0, [r2]
	cmp r0, 0
	bne _0804AF1A
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r2, =0x02000002
	ands r1, r2
	mov r8, r0
	cmp r1, 0
	beq _0804AF1A
	movs r3, 0
	movs r5, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	mov r12, r0
	ldr r7, =gUnknown_02024214
	cmp r3, r1
	bge _0804AE70
	ldr r0, =gUnknown_02024280
	movs r6, 0x80
	lsls r6, 21
	ldr r4, [r0]
	adds r2, r1, 0
	ldr r1, =gUnknown_0202437C
_0804AE54:
	adds r0, r6, 0
	lsls r0, r5
	ands r0, r4
	cmp r0, 0
	beq _0804AE68
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804AE68
	adds r3, 0x1
_0804AE68:
	adds r1, 0x28
	adds r5, 0x2
	cmp r5, r2
	blt _0804AE54
_0804AE70:
	movs r2, 0
	movs r5, 0x1
	mov r4, r12
	ldrb r1, [r4]
	cmp r5, r1
	bge _0804AEAA
	ldr r0, =gUnknown_02024280
	movs r4, 0x80
	lsls r4, 21
	mov r12, r4
	ldr r6, [r0]
	ldr r0, =gUnknown_0202437C
	adds r4, r1, 0
	adds r1, r0, 0
	adds r1, 0x14
_0804AE8E:
	mov r0, r12
	lsls r0, r5
	ands r0, r6
	cmp r0, 0
	beq _0804AEA2
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804AEA2
	adds r2, 0x1
_0804AEA2:
	adds r1, 0x28
	adds r5, 0x2
	cmp r5, r4
	blt _0804AE8E
_0804AEAA:
	mov r1, r8
	ldr r0, [r1]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804AEF0
	adds r0, r2, r3
	cmp r0, 0x1
	bgt _0804AEF8
	b _0804AF12
	.pool
_0804AEF0:
	cmp r2, 0
	beq _0804AF12
	cmp r3, 0
	beq _0804AF12
_0804AEF8:
	ldr r2, [r7]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r7]
	b _0804AF22
_0804AF12:
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	b _0804AF22
_0804AF1A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0804AF22:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804ACD0

	thumb_func_start sub_804AF30
sub_804AF30: @ 804AF30
	ldr r1, =gBattleMoveFlags
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_02024474
	movs r2, 0
	movs r1, 0x1
	strb r1, [r0, 0xE]
	ldr r0, =gCritMultiplier
	strb r1, [r0]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x6]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	subs r1, 0x42
	ands r0, r1
	ldr r1, =0xffffbfff
	ands r0, r1
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_804AF30

	thumb_func_start atk25_cmd25
atk25_cmd25: @ 804AF70
	push {lr}
	bl sub_804AF30
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk25_cmd25

	thumb_func_start atk26_80225F0_storebyteforjump
atk26_80225F0_storebyteforjump: @ 804AF88
	ldr r3, =gUnknown_02024212
	ldr r2, =gUnknown_02024214
	ldr r0, [r2]
	ldrb r1, [r0, 0x1]
	strb r1, [r3]
	adds r0, 0x2
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end atk26_80225F0_storebyteforjump

	thumb_func_start atk27_cmd27
atk27_cmd27: @ 804AFA0
	push {lr}
	ldr r1, =gUnknown_02024212
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _0804AFC4
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0804AFDE
	.pool
_0804AFC4:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
_0804AFDE:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk27_cmd27

	thumb_func_start atk28_goto
atk28_goto: @ 804AFE8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	bx lr
	.pool
	thumb_func_end atk28_goto

	thumb_func_start atk29_jumpifbyte
atk29_jumpifbyte: @ 804B008
	push {r4-r6,lr}
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r2, [r1, 0x7]
	ldrb r0, [r1, 0x8]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x9]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xB
	str r1, [r3]
	cmp r6, 0x5
	bhi _0804B0A0
	lsls r0, r6, 2
	ldr r1, =_0804B054
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804B054:
	.4byte _0804B06C
	.4byte _0804B074
	.4byte _0804B07C
	.4byte _0804B084
	.4byte _0804B08C
	.4byte _0804B096
_0804B06C:
	ldrb r0, [r5]
	cmp r0, r4
	bne _0804B0A0
	b _0804B09E
_0804B074:
	ldrb r0, [r5]
	cmp r0, r4
	beq _0804B0A0
	b _0804B09E
_0804B07C:
	ldrb r0, [r5]
	cmp r0, r4
	bls _0804B0A0
	b _0804B09E
_0804B084:
	ldrb r0, [r5]
	cmp r0, r4
	bcs _0804B0A0
	b _0804B09E
_0804B08C:
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, 0
	beq _0804B0A0
	b _0804B09E
_0804B096:
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, 0
	bne _0804B0A0
_0804B09E:
	str r2, [r3]
_0804B0A0:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk29_jumpifbyte

	thumb_func_start sub_804B0A8
sub_804B0A8: @ 804B0A8
	push {r4-r6,lr}
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r0, [r1, 0x7]
	lsls r0, 8
	orrs r4, r0
	ldrb r2, [r1, 0x8]
	ldrb r0, [r1, 0x9]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xC
	str r1, [r3]
	cmp r6, 0x5
	bhi _0804B148
	lsls r0, r6, 2
	ldr r1, =_0804B0FC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804B0FC:
	.4byte _0804B114
	.4byte _0804B11C
	.4byte _0804B124
	.4byte _0804B12C
	.4byte _0804B134
	.4byte _0804B13E
_0804B114:
	ldrh r0, [r5]
	cmp r0, r4
	bne _0804B148
	b _0804B146
_0804B11C:
	ldrh r0, [r5]
	cmp r0, r4
	beq _0804B148
	b _0804B146
_0804B124:
	ldrh r0, [r5]
	cmp r0, r4
	bls _0804B148
	b _0804B146
_0804B12C:
	ldrh r0, [r5]
	cmp r0, r4
	bcs _0804B148
	b _0804B146
_0804B134:
	ldrh r0, [r5]
	ands r4, r0
	cmp r4, 0
	beq _0804B148
	b _0804B146
_0804B13E:
	ldrh r0, [r5]
	ands r4, r0
	cmp r4, 0
	bne _0804B148
_0804B146:
	str r2, [r3]
_0804B148:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_804B0A8

	thumb_func_start sub_804B150
sub_804B150: @ 804B150
	push {r4-r6,lr}
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r0, [r1, 0x7]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x9]
	lsls r0, 24
	orrs r4, r0
	ldrb r2, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xE
	str r1, [r3]
	cmp r6, 0x5
	bhi _0804B1FC
	lsls r0, r6, 2
	ldr r1, =_0804B1B0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804B1B0:
	.4byte _0804B1C8
	.4byte _0804B1D0
	.4byte _0804B1D8
	.4byte _0804B1E0
	.4byte _0804B1E8
	.4byte _0804B1F2
_0804B1C8:
	ldr r0, [r5]
	cmp r0, r4
	bne _0804B1FC
	b _0804B1FA
_0804B1D0:
	ldr r0, [r5]
	cmp r0, r4
	beq _0804B1FC
	b _0804B1FA
_0804B1D8:
	ldr r0, [r5]
	cmp r0, r4
	bls _0804B1FC
	b _0804B1FA
_0804B1E0:
	ldr r0, [r5]
	cmp r0, r4
	bcs _0804B1FC
	b _0804B1FA
_0804B1E8:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, 0
	beq _0804B1FC
	b _0804B1FA
_0804B1F2:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, 0
	bne _0804B1FC
_0804B1FA:
	str r2, [r3]
_0804B1FC:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_804B150

	thumb_func_start sub_804B204
sub_804B204: @ 804B204
	push {r4-r7,lr}
	ldr r2, =gUnknown_02024214
	ldr r3, [r2]
	ldrb r1, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r5, r1, r0
	ldrb r1, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x8]
	lsls r0, 24
	adds r4, r1, r0
	ldrb r6, [r3, 0x9]
	ldrb r1, [r3, 0xA]
	ldrb r0, [r3, 0xB]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0xC]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0xD]
	lsls r0, 24
	adds r1, r0
	mov r12, r1
	movs r1, 0
	cmp r1, r6
	bcs _0804B27C
	ldrb r0, [r5]
	ldrb r7, [r4]
	cmp r0, r7
	beq _0804B260
	adds r0, r3, 0
	b _0804B278
	.pool
_0804B260:
	adds r5, 0x1
	adds r4, 0x1
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r6
	bcs _0804B27C
	ldrb r0, [r5]
	ldrb r3, [r4]
	cmp r0, r3
	beq _0804B260
	ldr r0, [r2]
_0804B278:
	adds r0, 0xE
	str r0, [r2]
_0804B27C:
	cmp r1, r6
	bne _0804B284
	mov r7, r12
	str r7, [r2]
_0804B284:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_804B204

	thumb_func_start sub_804B28C
sub_804B28C: @ 804B28C
	push {r4-r7,lr}
	movs r7, 0
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r4, r2, r0
	ldrb r6, [r1, 0x9]
	ldrb r2, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	adds r2, r0
	mov r12, r2
	movs r1, 0
	cmp r7, r6
	bcs _0804B2F6
_0804B2DA:
	ldrb r0, [r5]
	ldrb r2, [r4]
	cmp r0, r2
	bne _0804B2E8
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0804B2E8:
	adds r5, 0x1
	adds r4, 0x1
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r6
	bcc _0804B2DA
_0804B2F6:
	cmp r7, r6
	beq _0804B304
	mov r0, r12
	b _0804B308
	.pool
_0804B304:
	ldr r0, [r3]
	adds r0, 0xE
_0804B308:
	str r0, [r3]
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_804B28C

	thumb_func_start sub_804B310
sub_804B310: @ 804B310
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r2, 0x5]
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end sub_804B310

	thumb_func_start sub_804B338
sub_804B338: @ 804B338
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r2, 0x5]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end sub_804B338

	thumb_func_start sub_804B364
sub_804B364: @ 804B364
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r2, 0x5]
	subs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end sub_804B364

	thumb_func_start atk31_copyarray
atk31_copyarray: @ 804B390
	push {r4-r6,lr}
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r6, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x9]
	movs r2, 0
	cmp r2, r4
	bge _0804B3D4
_0804B3C6:
	adds r0, r6, r2
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, r4
	blt _0804B3C6
_0804B3D4:
	ldr r0, [r3]
	adds r0, 0xA
	str r0, [r3]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk31_copyarray

	thumb_func_start atk32_memcpy_with_offset
atk32_memcpy_with_offset: @ 804B3E4
	push {r4-r7,lr}
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r7, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r6, r2, r0
	ldrb r2, [r1, 0x9]
	ldrb r0, [r1, 0xA]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0xD]
	movs r2, 0
	cmp r2, r4
	bge _0804B440
_0804B42E:
	adds r0, r7, r2
	ldrb r1, [r5]
	adds r1, r2, r1
	adds r1, r6, r1
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, r4
	blt _0804B42E
_0804B440:
	ldr r0, [r3]
	adds r0, 0xE
	str r0, [r3]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk32_memcpy_with_offset

	thumb_func_start atk33_orbyte
atk33_orbyte: @ 804B450
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r2, 0x5]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end atk33_orbyte

	thumb_func_start atk34_orhalfword
atk34_orhalfword: @ 804B47C
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r3, [r4]
	ldrb r2, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r2, r0
	ldrb r1, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	orrs r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk34_orhalfword

	thumb_func_start atk35_orword
atk35_orword: @ 804B4B4
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r2, [r4]
	ldrb r3, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r3, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r3, r0
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r4]
	adds r0, 0x9
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk35_orword

	thumb_func_start atk36_bicbyte
atk36_bicbyte: @ 804B4F8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r2, [r2, 0x5]
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.pool
	thumb_func_end atk36_bicbyte

	thumb_func_start atk37_bichalfword
atk37_bichalfword: @ 804B524
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r3, [r4]
	ldrb r1, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r2, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	orrs r2, r0
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk37_bichalfword

	thumb_func_start atk38_bicword
atk38_bicword: @ 804B55C
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r2, [r4]
	ldrb r3, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r3, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r3, r0
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	ldr r0, [r4]
	adds r0, 0x9
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk38_bicword

	thumb_func_start atk39_pause
atk39_pause: @ 804B5A0
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r4, [r0]
	cmp r4, 0
	bne _0804B5CC
	ldr r5, =gUnknown_02024214
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldr r3, =gUnknown_0202432C
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r1
	bcc _0804B5CC
	strh r4, [r3]
	adds r0, r2, 0x3
	str r0, [r5]
_0804B5CC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk39_pause

	thumb_func_start sub_804B5E0
sub_804B5E0: @ 804B5E0
	push {lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804B5F2
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0804B5F2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804B5E0

	thumb_func_start atk3B_8022C68
atk3B_8022C68: @ 804B600
	push {lr}
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0804B620
	ldr r0, =gUnknown_02024064
	ldr r1, =gEnemyMonIndex
	b _0804B624
	.pool
_0804B620:
	ldr r0, =gUnknown_02024064
	ldr r1, =gUnknown_0202420B
_0804B624:
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, =gBattleMoveDamage
	ldrh r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk3B_8022C68

	thumb_func_start atk3C_return
atk3C_return: @ 804B658
	push {lr}
	bl b_movescr_stack_pop_cursor
	pop {r0}
	bx r0
	thumb_func_end atk3C_return

	thumb_func_start sub_804B664
sub_804B664: @ 804B664
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0804B67C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl sub_81A5718
_0804B67C:
	ldr r0, =gBattleMoveFlags
	movs r1, 0
	strb r1, [r0]
	ldr r0, =gUnknown_02024064
	strb r1, [r0]
	ldr r1, =gUnknown_02024083
	movs r0, 0xB
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804B664

	thumb_func_start atk3E_end2
atk3E_end2: @ 804B6A4
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gUnknown_02024083
	movs r0, 0xB
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end atk3E_end2

	thumb_func_start atk3F_end3
atk3F_end3: @ 804B6BC
	push {lr}
	bl b_movescr_stack_pop_cursor
	ldr r3, =gUnknown_020244A8
	ldr r0, [r3]
	ldr r0, [r0, 0xC]
	adds r1, r0, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	beq _0804B6D6
	subs r0, 0x1
	strb r0, [r1]
_0804B6D6:
	ldr r2, =gUnknown_03005D04
	ldr r0, [r3]
	ldr r1, [r0, 0xC]
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r0
	ldr r0, [r1]
	str r0, [r2]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk3F_end3

	thumb_func_start atk41_call
atk41_call: @ 804B6F8
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x5
	bl b_movescr_stack_push
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk41_call

	thumb_func_start atk42_jumpiftype2
atk42_jumpiftype2: @ 804B728
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [r4]
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r0, r1
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r2, [r3, 0x2]
	ldrb r1, [r1]
	cmp r2, r1
	beq _0804B756
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	bne _0804B778
_0804B756:
	ldrb r1, [r3, 0x3]
	ldrb r0, [r3, 0x4]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r3, 0x5]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r3, 0x6]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _0804B77C
	.pool
_0804B778:
	adds r0, r3, 0x7
	str r0, [r4]
_0804B77C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end atk42_jumpiftype2

	thumb_func_start sub_804B784
sub_804B784: @ 804B784
	push {r4,lr}
	sub sp, 0x4
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r2, [r0, 0x1]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0804B7C0
	ldr r2, [r4]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _0804B7C6
	.pool
_0804B7C0:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_0804B7C6:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_804B784

	thumb_func_start sub_804B7D0
sub_804B7D0: @ 804B7D0
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	adds r0, 0x54
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_804B7D0

	thumb_func_start atk46_cmd46
atk46_cmd46: @ 804B7EC
	push {r4-r6,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r6, =gUnknown_02024064
	strb r0, [r6]
	ldr r2, [r5]
	ldrb r1, [r2, 0x3]
	ldrb r0, [r2, 0x4]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x6]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r4, [r2, 0x2]
	adds r0, r4, 0
	cmp r0, 0x1
	beq _0804B822
	cmp r0, 0x11
	beq _0804B822
	cmp r0, 0x2
	bne _0804B848
_0804B822:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r1, [r0, 0x2]
	ldrh r2, [r3]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	b _0804B8AA
	.pool
_0804B848:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804B868
	adds r0, r2, 0x7
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DABB9
	b _0804B8A8
	.pool
_0804B868:
	adds r0, r4, 0
	subs r0, 0xA
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _0804B894
	ldr r1, =gUnknown_020242AC
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _0804B894
	adds r0, r2, 0x7
	b _0804B8A8
	.pool
_0804B894:
	ldrb r1, [r2, 0x2]
	ldrh r2, [r3]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x7
_0804B8A8:
	str r0, [r5]
_0804B8AA:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk46_cmd46

	thumb_func_start sub_804B8B0
sub_804B8B0: @ 804B8B0
	push {r4-r7,lr}
	ldr r6, =gUnknown_02024214
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r7, =gUnknown_02024064
	strb r0, [r7]
	ldr r2, [r6]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r1, [r2, 0x6]
	ldrb r0, [r2, 0x7]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x9]
	lsls r0, 24
	adds r4, r1, r0
	ldrb r5, [r3]
	adds r0, r5, 0
	cmp r0, 0x1
	beq _0804B8FA
	cmp r0, 0x11
	beq _0804B8FA
	cmp r0, 0x2
	bne _0804B920
_0804B8FA:
	ldrb r1, [r3]
	ldrh r2, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
	b _0804B976
	.pool
_0804B920:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804B934
	adds r0, r2, 0
	b _0804B972
	.pool
_0804B934:
	adds r0, r5, 0
	subs r0, 0xA
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _0804B960
	ldr r1, =gUnknown_020242AC
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _0804B960
	adds r0, r2, 0
	b _0804B972
	.pool
_0804B960:
	ldrb r1, [r3]
	ldrh r2, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
_0804B972:
	adds r0, 0xA
	str r0, [r6]
_0804B976:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_804B8B0

	thumb_func_start sub_804B97C
sub_804B97C: @ 804B97C
	push {r4,lr}
	movs r3, 0
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1A]
	movs r2, 0xF0
	ands r2, r0
	adds r4, r1, 0
	cmp r2, 0x20
	beq _0804B9AA
	cmp r2, 0x20
	bgt _0804B99C
	cmp r2, 0x10
	beq _0804B9A6
	b _0804B9B4
	.pool
_0804B99C:
	cmp r2, 0x90
	beq _0804B9AE
	cmp r2, 0xA0
	beq _0804B9B2
	b _0804B9B4
_0804B9A6:
	movs r3, 0xF
	b _0804B9B4
_0804B9AA:
	movs r3, 0x27
	b _0804B9B4
_0804B9AE:
	movs r3, 0x16
	b _0804B9B4
_0804B9B2:
	movs r3, 0x2E
_0804B9B4:
	ldrb r1, [r4, 0x1A]
	movs r0, 0xF
	ands r0, r1
	adds r0, r3, r0
	subs r0, 0x1
	movs r1, 0
	strb r0, [r4, 0x10]
	strb r1, [r4, 0x11]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804B97C

	thumb_func_start atk48_playstatchangeanimation
atk48_playstatchangeanimation: @ 804B9D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r7, 0
	movs r0, 0
	mov r8, r0
	movs r3, 0
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	str r3, [sp]
	bl get_battle_side_of_something
	ldr r2, =gUnknown_02024064
	strb r0, [r2]
	ldr r0, [r5]
	ldrb r4, [r0, 0x2]
	ldrb r1, [r0, 0x3]
	movs r0, 0x1
	ands r0, r1
	ldr r3, [sp]
	cmp r0, 0
	beq _0804BAEC
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x15
	cmp r0, 0
	beq _0804BA18
	movs r1, 0x2D
_0804BA18:
	cmp r4, 0
	beq _0804BAC0
	movs r0, 0x1
	mov r10, r0
	ldr r0, =gUnknown_0202409C
	mov r9, r0
	lsls r5, r1, 16
_0804BA26:
	adds r0, r4, 0
	mov r1, r10
	ands r0, r1
	cmp r0, 0
	beq _0804BAB2
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0804BA58
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7, r0
	b _0804BAA0
	.pool
_0804BA58:
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	str r3, [sp]
	bl battle_get_per_side_status
	mov r1, r10
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02024294
	adds r0, r1
	ldrb r0, [r0, 0x4]
	ldr r3, [sp]
	cmp r0, 0
	bne _0804BAB2
	ldr r0, =gBattleMons
	ldrb r2, [r6]
	movs r1, 0x58
	muls r2, r1
	adds r0, r2, r0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1D
	beq _0804BAB2
	cmp r0, 0x49
	beq _0804BAB2
	cmp r0, 0x33
	bne _0804BA96
	cmp r7, 0x6
	beq _0804BAB2
_0804BA96:
	cmp r0, 0x34
	bne _0804BA9E
	cmp r7, 0x1
	beq _0804BAB2
_0804BA9E:
	adds r0, r7, r2
_0804BAA0:
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _0804BAB2
	lsrs r0, r5, 16
	mov r8, r0
	adds r3, 0x1
_0804BAB2:
	lsrs r4, 1
	movs r1, 0x80
	lsls r1, 9
	adds r5, r1
	adds r7, 0x1
	cmp r4, 0
	bne _0804BA26
_0804BAC0:
	ldr r0, =gUnknown_02024214
	mov r9, r0
	cmp r3, 0x1
	ble _0804BB4E
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x39
	mov r8, r1
	cmp r0, 0
	beq _0804BB4E
	movs r0, 0x3A
	b _0804BB4C
	.pool
_0804BAEC:
	movs r0, 0x2
	ands r0, r1
	movs r1, 0xE
	cmp r0, 0
	beq _0804BAF8
	movs r1, 0x26
_0804BAF8:
	mov r9, r5
	cmp r4, 0
	beq _0804BB34
	ldr r6, =gUnknown_0202409C
	adds r5, r2, 0
	lsls r2, r1, 16
_0804BB04:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0804BB26
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7, r0
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xB
	bgt _0804BB26
	lsrs r1, r2, 16
	mov r8, r1
	adds r3, 0x1
_0804BB26:
	lsrs r4, 1
	movs r0, 0x80
	lsls r0, 9
	adds r2, r0
	adds r7, 0x1
	cmp r4, 0
	bne _0804BB04
_0804BB34:
	cmp r3, 0x1
	ble _0804BB4E
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, 0x3]
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x37
	mov r8, r1
	cmp r0, 0
	beq _0804BB4E
	movs r0, 0x38
_0804BB4C:
	mov r8, r0
_0804BB4E:
	mov r1, r9
	ldr r2, [r1]
	ldrb r1, [r2, 0x3]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0804BB6C
	cmp r3, 0x1
	bgt _0804BB6C
	adds r0, r2, 0x4
	mov r1, r9
	b _0804BBBA
	.pool
_0804BB6C:
	cmp r3, 0
	beq _0804BBB4
	ldr r4, =gUnknown_02024474
	ldrb r0, [r4, 0x1B]
	cmp r0, 0
	bne _0804BBB4
	movs r0, 0
	movs r1, 0x1
	mov r2, r8
	str r3, [sp]
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x4
	ands r0, r1
	ldr r3, [sp]
	cmp r0, 0
	beq _0804BBA4
	cmp r3, 0x1
	ble _0804BBA4
	movs r0, 0x1
	strb r0, [r4, 0x1B]
_0804BBA4:
	ldr r1, =gUnknown_02024214
	b _0804BBB6
	.pool
_0804BBB4:
	mov r1, r9
_0804BBB6:
	ldr r0, [r1]
	adds r0, 0x4
_0804BBBA:
	str r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk48_playstatchangeanimation

	thumb_func_start sub_804BBCC
sub_804BBCC: @ 804BBCC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	movs r0, 0
	mov r10, r0
	ldr r2, =gUnknown_020241EC
	ldrh r1, [r2]
	ldr r0, =0x0000ffff
	movs r3, 0
	str r3, [sp, 0x18]
	cmp r1, r0
	beq _0804BBEE
	ldrh r2, [r2]
	str r2, [sp, 0x18]
_0804BBEE:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r4, [r0, 0x1]
	str r4, [sp, 0x10]
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x14]
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0804BC34
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x7]
	b _0804BC3E
	.pool
_0804BC34:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r0, 24
_0804BC3E:
	str r0, [sp, 0x8]
	ldr r1, =gUnknown_0202449C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, 0xC8
	ldr r1, [r1]
	adds r0, r1, r0
	str r0, [sp, 0xC]
	ldrb r0, [r1, 0x13]
	cmp r0, 0
	beq _0804BCF0
	movs r5, 0x3F
	ands r5, r0
	str r5, [sp, 0x4]
	b _0804BD02
	.pool
_0804BC68:
	ldr r4, =gUnknown_02024064
	strb r2, [r4]
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804C15A
	.pool
_0804BC80:
	ldr r4, =gUnknown_02024064
	strb r2, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r5
	ldr r0, [r1]
	ldr r2, =0xfffbff3f
	ands r0, r2
	str r0, [r1]
	b _0804C15A
	.pool
_0804BCAC:
	strb r2, [r7]
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	ldr r0, =gUnknown_02024474
	strb r4, [r0, 0x14]
	bl sub_804AF30
	ldr r2, =gUnknown_082D86A8
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB87D
	bl _0804C5B8
	.pool
_0804BCF0:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x4]
_0804BD02:
	ldr r1, =gUnknown_02024474
	mov r12, r1
	b _0804BD1E
	.pool
_0804BD14:
	mov r2, r10
	cmp r2, 0
	beq _0804BD1E
	bl _0804C5A4
_0804BD1E:
	mov r3, r12
	ldrb r0, [r3, 0x14]
	cmp r0, 0x11
	bls _0804BD2A
	bl _0804C570
_0804BD2A:
	lsls r0, 2
	ldr r1, =_0804BD38
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804BD38:
	.4byte _0804BD80
	.4byte _0804BE5C
	.4byte _0804BF18
	.4byte _0804BF3C
	.4byte _0804BF54
	.4byte _0804BF7C
	.4byte _0804BFA0
	.4byte _0804C048
	.4byte _0804C0BE
	.4byte _0804C0F4
	.4byte _0804C194
	.4byte _0804C088
	.4byte _0804C0A8
	.4byte _0804C1D8
	.4byte _0804C21C
	.4byte _0804C3FC
	.4byte _0804C4E4
	.4byte _0804C570
_0804BD80:
	ldr r6, =gBattleMons
	ldr r5, =gEnemyMonIndex
	ldrb r3, [r5]
	movs r7, 0x58
	adds r2, r3, 0
	muls r2, r7
	adds r0, r6, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 16
	ands r0, r1
	cmp r0, 0
	bne _0804BDA0
	b _0804C184
_0804BDA0:
	adds r0, r2, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0804BDAA
	b _0804C184
_0804BDAA:
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	cmp r1, r3
	bne _0804BDB4
	b _0804C184
_0804BDB4:
	adds r0, r1, 0
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	bne _0804BDCC
	b _0804C184
_0804BDCC:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0804BDDA
	b _0804C184
_0804BDDA:
	ldr r2, =gUnknown_0202437C
	ldrb r3, [r5]
	lsls r0, r3, 2
	adds r0, r3
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0804BDFE
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0804BDFE
	b _0804C184
_0804BDFE:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0804BE14
	b _0804C184
_0804BE14:
	adds r0, r3, 0
	muls r0, r7
	adds r1, r0, r6
	ldrb r2, [r1, 0x19]
	movs r0, 0x19
	ldrsb r0, [r1, r0]
	cmp r0, 0xB
	ble _0804BE26
	b _0804C184
_0804BE26:
	adds r0, r2, 0x1
	strb r0, [r1, 0x19]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAE0D
	str r0, [r1]
	b _0804C0B8
	.pool
_0804BE5C:
	ldr r4, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r5, 0x58
	mov r12, r5
	mov r1, r12
	muls r1, r2
	adds r7, r4, 0
	adds r7, 0x4C
	adds r5, r1, r7
	ldr r3, [r5]
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	bne _0804BE7C
	b _0804C184
_0804BE7C:
	adds r0, r1, r4
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0804BE86
	b _0804C184
_0804BE86:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	cmp r0, r2
	bne _0804BE90
	b _0804C184
_0804BE90:
	ldr r0, =gUnknown_0202437C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r0, 0xC
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _0804BEA4
	b _0804C184
_0804BEA4:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0804BEB2
	b _0804C184
_0804BEB2:
	ldr r0, [sp, 0x4]
	cmp r0, 0xA
	beq _0804BEBA
	b _0804C184
_0804BEBA:
	movs r0, 0x21
	negs r0, r0
	ands r3, r0
	str r3, [r5]
	ldr r4, =gUnknown_02024064
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r6]
	mov r1, r12
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB282
	str r0, [r1]
	movs r2, 0x1
	mov r10, r2
	b _0804C184
	.pool
_0804BF18:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x7
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0804BF32
	b _0804C184
_0804BF32:
	movs r3, 0x1
	mov r10, r3
	b _0804C184
	.pool
_0804BF3C:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	movs r2, 0
	movs r3, 0
	bl ability_something
	b _0804C0B2
	.pool
_0804BF54:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0804BF6C
	b _0804C184
_0804BF6C:
	movs r5, 0x1
	mov r10, r5
	ldr r0, =gUnknown_02024474
	mov r12, r0
	b _0804C570
	.pool
_0804BF7C:
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _0804BF96
	b _0804C184
_0804BF96:
	movs r1, 0x1
	mov r10, r1
	b _0804C184
	.pool
_0804BFA0:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _0804BFE4
	ldr r2, [sp, 0x8]
	cmp r2, 0x1D
	bne _0804BFE4
	ldr r0, =gUnknown_020241EC
	ldrh r2, [r0]
	adds r3, r0, 0
	cmp r2, 0xA5
	beq _0804BFE4
	ldr r4, [sp, 0xC]
	ldrh r1, [r4]
	cmp r1, 0
	beq _0804BFCC
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _0804BFE4
_0804BFCC:
	cmp r2, 0xE2
	bne _0804BFDE
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0804BFDE
	b _0804C4B6
_0804BFDE:
	ldrh r0, [r3]
	ldr r1, [sp, 0xC]
	strh r0, [r1]
_0804BFE4:
	movs r4, 0
	ldr r2, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r2, 0xC
	adds r0, r2
	ldrh r0, [r0]
	ldr r5, [sp, 0xC]
	ldrh r1, [r5]
	mov r9, r3
	cmp r0, r1
	beq _0804C01C
	mov r6, r9
	movs r3, 0x58
	adds r5, r1, 0
_0804C006:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0804C01C
	lsls r0, r4, 1
	ldrb r1, [r6]
	muls r1, r3
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, r5
	bne _0804C006
_0804C01C:
	cmp r4, 0x4
	bne _0804C026
	movs r0, 0
	ldr r1, [sp, 0xC]
	strh r0, [r1]
_0804C026:
	mov r2, r12
	ldrb r0, [r2, 0x14]
	adds r0, 0x1
	strb r0, [r2, 0x14]
	b _0804C570
	.pool
_0804C048:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r0]
	cmp r4, r3
	blt _0804C054
	b _0804C202
_0804C054:
	ldr r7, =gUnknown_0202449C
	movs r6, 0
	movs r3, 0xD0
	adds r5, r0, 0
	ldr r2, =gBattleMons
_0804C05E:
	ldr r0, [r7]
	adds r0, r3
	ldrh r1, [r0]
	cmp r1, 0
	beq _0804C06C
	strh r1, [r2, 0x2E]
	strh r6, [r0]
_0804C06C:
	adds r3, 0x2
	adds r2, 0x58
	adds r4, 0x1
	ldrb r0, [r5]
	cmp r4, r0
	blt _0804C05E
	b _0804C202
	.pool
_0804C088:
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl berry_effects_maybe
	lsls r0, 24
	cmp r0, 0
	beq _0804C184
	movs r2, 0x1
	mov r10, r2
	ldr r3, =gUnknown_02024474
	mov r12, r3
	b _0804C570
	.pool
_0804C0A8:
	movs r0, 0x4
	movs r1, 0
	movs r2, 0
	bl berry_effects_maybe
_0804C0B2:
	lsls r0, 24
	cmp r0, 0
	beq _0804C184
_0804C0B8:
	movs r4, 0x1
	mov r10, r4
	b _0804C184
_0804C0BE:
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0804C0D4
	b _0804C4B6
_0804C0D4:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804C0E2
	b _0804BC68
_0804C0E2:
	b _0804C4B6
	.pool
_0804C0F4:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0804C120
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _0804C120
	adds r0, r2, 0
	bl sub_803F90C
	lsls r0, 24
	cmp r0, 0
	beq _0804C184
_0804C120:
	ldr r4, =gUnknown_02024064
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, =gUnknown_020242AC
	ldrb r2, [r5]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xfffbff3f
	ands r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0804C15A:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x14]
	adds r0, 0x1
	strb r0, [r1, 0x14]
	b _0804C5BA
	.pool
_0804C184:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x14]
	adds r0, 0x1
	strb r0, [r1, 0x14]
	mov r12, r1
	b _0804C570
	.pool
_0804C194:
	ldr r0, =gUnknown_0202437C
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	lsls r3, r2, 2
	adds r1, r3, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	blt _0804C202
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0804C202
	ldr r5, =gUnknown_020242AC
	adds r0, r3, r5
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0804C1C2
	b _0804BC80
_0804C1C2:
	b _0804C202
	.pool
_0804C1D8:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r2, [r0]
	cmp r4, r2
	bge _0804C202
	ldr r2, =gUnknown_020242BC
	ldr r5, =0xfeffffff
	adds r3, r0, 0
	ldr r1, =gUnknown_020240D4
_0804C1EA:
	ldrb r0, [r2, 0xA]
	cmp r0, 0
	bne _0804C1F6
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
_0804C1F6:
	adds r2, 0x1C
	adds r1, 0x58
	adds r4, 0x1
	ldrb r0, [r3]
	cmp r4, r0
	blt _0804C1EA
_0804C202:
	mov r1, r12
	ldrb r0, [r1, 0x14]
	adds r0, 0x1
	strb r0, [r1, 0x14]
	b _0804C570
	.pool
_0804C21C:
	ldr r1, =gUnknown_02024280
	ldr r3, [r1]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r3
	ldr r2, =gUnknown_0202420B
	mov r9, r2
	adds r5, r1, 0
	cmp r0, 0
	beq _0804C246
	ldr r0, =gUnknown_02024064
	ldrb r2, [r2]
	strb r2, [r0]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r1]
	mov r4, r9
	strb r0, [r4]
	strb r2, [r1]
	ldr r0, =0xffffefff
	ands r3, r0
	str r3, [r5]
_0804C246:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _0804C262
	ldr r0, =gUnknown_02024240
	mov r2, r9
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldr r0, =gUnknown_020241EC
	ldrh r0, [r0]
	strh r0, [r1]
_0804C262:
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	mov r3, r9
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r3, [r0]
	ands r1, r3
	adds r6, r2, 0
	cmp r1, 0
	beq _0804C27C
	b _0804C3E8
_0804C27C:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, 0x91
	ldrb r1, [r1]
	ands r1, r3
	adds r7, r0, 0
	cmp r1, 0
	beq _0804C28E
	b _0804C3E8
_0804C28E:
	ldr r0, =gBattleMoves
	ldr r2, [sp, 0x18]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, 0x7F
	bne _0804C2A4
	b _0804C3E8
_0804C2A4:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _0804C308
	ldr r0, =gUnknown_02024248
	lsls r1, r4, 1
	adds r1, r0
	ldr r0, =gUnknown_020241EC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, =gUnknown_02024260
	mov r3, r9
	ldrb r1, [r3]
	lsls r1, 1
	adds r1, r0
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	strh r0, [r1]
	b _0804C322
	.pool
_0804C308:
	ldr r1, =gUnknown_02024248
	lsls r0, r4, 1
	adds r0, r1
	ldr r1, =0x0000ffff
	strh r1, [r0]
	ldr r1, =gUnknown_02024260
	mov r4, r9
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	movs r1, 0x1
	negs r1, r1
	strh r1, [r0]
_0804C322:
	ldr r2, =gEnemyMonIndex
	ldrb r3, [r2]
	lsls r0, r3, 2
	adds r0, r6
	ldr r0, [r0]
	lsls r0, 28
	ldr r1, [r5]
	ands r1, r0
	cmp r1, 0
	bne _0804C340
	ldr r0, =gUnknown_02024270
	adds r0, r3, r0
	mov r3, r9
	ldrb r1, [r3]
	strb r1, [r0]
_0804C340:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _0804C3DC
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0804C3DC
	ldr r0, =gUnknown_020241EC
	ldrh r3, [r0]
	ldr r0, =0x0000ffff
	cmp r3, r0
	bne _0804C390
	ldr r1, =gUnknown_02024250
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	strh r3, [r0]
	b _0804C3E8
	.pool
_0804C390:
	ldr r0, =gUnknown_02024250
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldr r4, =gUnknown_020241EA
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, [r7]
	ldrb r3, [r0, 0x13]
	cmp r3, 0
	beq _0804C3C0
	ldr r0, =gUnknown_02024258
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	movs r0, 0x3F
	ands r0, r3
	b _0804C3E6
	.pool
_0804C3C0:
	ldr r0, =gUnknown_02024258
	ldrb r2, [r2]
	lsls r2, 1
	adds r2, r0
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x2]
	strh r0, [r2]
	b _0804C3E8
	.pool
_0804C3DC:
	ldr r0, =gUnknown_02024250
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldr r0, =0x0000ffff
_0804C3E6:
	strh r0, [r1]
_0804C3E8:
	mov r4, r12
	ldrb r0, [r4, 0x14]
	adds r0, 0x1
	strb r0, [r4, 0x14]
	b _0804C570
	.pool
_0804C3FC:
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r7, =gBitTable
	ldr r2, =gUnknown_0202420B
	ldrb r3, [r2]
	lsls r0, r3, 2
	adds r0, r7
	ldr r4, [r0]
	ands r1, r4
	mov r9, r2
	cmp r1, 0
	bne _0804C4B6
	ldr r6, =gUnknown_0202449C
	ldr r5, [r6]
	adds r0, r5, 0
	adds r0, 0x91
	ldrb r0, [r0]
	ands r0, r4
	cmp r0, 0
	bne _0804C4B6
	ldr r1, =gBattleMoves
	ldr r2, [sp, 0x18]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0804C4B6
	ldr r0, =gUnknown_02024280
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0804C4B6
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	cmp r3, r0
	beq _0804C4B6
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r7
	ldr r0, [r0]
	lsls r0, 28
	ands r1, r0
	cmp r1, 0
	bne _0804C4B6
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0804C4B6
	lsls r1, r2, 1
	adds r1, r5
	adds r1, 0x98
	ldr r3, =gUnknown_020241EC
	ldrh r0, [r3]
	strb r0, [r1]
	ldrb r1, [r4]
	ldr r0, [r6]
	lsls r1, 1
	adds r1, r0
	adds r1, 0x99
	ldrh r0, [r3]
	lsrs r0, 8
	strb r0, [r1]
	ldrb r0, [r4]
	mov r2, r9
	ldrb r1, [r2]
	ldr r2, [r6]
	lsls r0, 3
	lsls r1, 1
	adds r0, r1
	adds r0, r2
	adds r0, 0xE0
	ldrh r1, [r3]
	strb r1, [r0]
	ldrb r1, [r4]
	mov r4, r9
	ldrb r0, [r4]
	ldr r2, [r6]
	lsls r1, 3
	lsls r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0xE1
	ldrh r0, [r3]
	lsrs r0, 8
	strb r0, [r1]
_0804C4B6:
	mov r5, r12
	ldrb r0, [r5, 0x14]
	adds r0, 0x1
	strb r0, [r5, 0x14]
	b _0804C570
	.pool
_0804C4E4:
	ldr r5, =gUnknown_02024280
	ldr r2, [r5]
	movs r0, 0x80
	lsls r0, 12
	ands r0, r2
	cmp r0, 0
	bne _0804C568
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804C568
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 29
	cmp r0, 0
	blt _0804C568
	ldr r0, =gBattleMoves
	mov r9, r0
	ldr r1, =gUnknown_020241EA
	mov r8, r1
	ldrh r0, [r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	add r1, r9
	ldrb r0, [r1, 0x6]
	cmp r0, 0x8
	bne _0804C568
	movs r6, 0x80
	lsls r6, 2
	adds r4, r6, 0
	ands r4, r2
	cmp r4, 0
	bne _0804C568
	ldr r7, =gEnemyMonIndex
	ldrb r0, [r7]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0804C55E
	bl _0804BCAC
_0804C55E:
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	ldr r2, =gUnknown_02024474
	mov r12, r2
_0804C568:
	mov r3, r12
	ldrb r0, [r3, 0x14]
	adds r0, 0x1
	strb r0, [r3, 0x14]
_0804C570:
	ldr r4, [sp, 0x10]
	cmp r4, 0x1
	bne _0804C582
	mov r5, r10
	cmp r5, 0
	bne _0804C582
	movs r0, 0x11
	mov r1, r12
	strb r0, [r1, 0x14]
_0804C582:
	ldr r2, [sp, 0x10]
	cmp r2, 0x2
	bne _0804C598
	ldr r4, [sp, 0x14]
	mov r3, r12
	ldrb r3, [r3, 0x14]
	cmp r4, r3
	bne _0804C598
	movs r0, 0x11
	mov r4, r12
	strb r0, [r4, 0x14]
_0804C598:
	mov r5, r12
	ldrb r0, [r5, 0x14]
	cmp r0, 0x11
	beq _0804C5A4
	bl _0804BD14
_0804C5A4:
	mov r1, r12
	ldrb r0, [r1, 0x14]
	cmp r0, 0x11
	bne _0804C5BA
	mov r2, r10
	cmp r2, 0
	bne _0804C5BA
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x3
_0804C5B8:
	str r0, [r1]
_0804C5BA:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804BBCC

	thumb_func_start atk4A_damagecalc2
atk4A_damagecalc2: @ 804C5F4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r4, 0
	movs r5, 0
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r8, r0
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r12, r2
	adds r7, r3, 0
	cmp r0, 0x1A
	bne _0804C688
	mov r1, r8
	cmp r1, 0x4
	bne _0804C688
	ldr r3, =gUnknown_0202420A
	strb r0, [r3]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x9
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024250
	ldrb r0, [r7]
	lsls r0, 1
	adds r0, r1
	strh r4, [r0]
	ldr r0, =gUnknown_02024332
	mov r2, r8
	strb r2, [r0, 0x6]
	ldrb r0, [r7]
	ldrb r1, [r3]
	bl b_history__record_ability_usage_of_player
	b _0804C76A
	.pool
_0804C678:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0]
	b _0804C76A
	.pool
_0804C688:
	ldr r1, =gUnknown_0831ACE8
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r6, r1, 0
	b _0804C74A
	.pool
_0804C698:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, r8
	bne _0804C744
	adds r2, r5, 0x1
	adds r3, r2, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r0, 0x21
	ldrb r1, [r3]
	adds r3, r2, 0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0804C6D6
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r1, [r0]
	cmp r1, 0
	beq _0804C678
	cmp r1, 0x5
	bne _0804C6CA
	movs r0, 0x4
	orrs r4, r0
_0804C6CA:
	cmp r1, 0x14
	bne _0804C6D6
	movs r0, 0x2
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804C6D6:
	adds r2, r3, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0804C744
	adds r0, 0x21
	ldrb r1, [r0]
	cmp r1, r2
	beq _0804C6FE
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0
	beq _0804C678
_0804C6FE:
	cmp r1, r2
	beq _0804C714
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _0804C714
	movs r0, 0x4
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804C714:
	adds r2, r3, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0804C744
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0804C744
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0804C744
	movs r0, 0x2
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0804C744:
	adds r5, 0x3
	adds r0, r5, r6
	ldrb r0, [r0]
_0804C74A:
	cmp r0, 0xFF
	beq _0804C76A
	cmp r0, 0xFE
	bne _0804C698
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	mov r1, r12
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0804C744
_0804C76A:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	mov r8, r0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x19
	bne _0804C7E6
	movs r5, 0x29
	ands r5, r4
	cmp r5, 0
	bne _0804C7E6
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	ldr r7, =gUnknown_020241EA
	ldrh r1, [r7]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _0804C7E6
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0804C7AC
	movs r0, 0x6
	ands r4, r0
	cmp r4, 0x6
	bne _0804C7E6
_0804C7AC:
	ldr r2, =gBattleMoves
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0804C7E6
	ldr r3, =gUnknown_0202420A
	strb r6, [r3]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024250
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	strh r5, [r0]
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
	strb r0, [r1, 0x6]
	ldrb r0, [r2]
	ldrb r1, [r3]
	bl b_history__record_ability_usage_of_player
_0804C7E6:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0804C804
	ldr r2, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r2
	ldrb r0, [r1, 0x1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1, 0x1]
_0804C804:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk4A_damagecalc2

	thumb_func_start atk4B_cmd4b
atk4B_cmd4b: @ 804C844
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r2, =gUnknown_02024280
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _0804C872
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x06_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804C872:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk4B_cmd4b

	thumb_func_start atk4C_switch1
atk4C_switch1: @ 804C894
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804C8E4
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r3, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r2, r0, 1
	adds r2, r3
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	adds r0, 0x5C
	ldrb r0, [r0]
	strh r0, [r2]
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_0804C8E4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk4C_switch1

	thumb_func_start sub_804C904
sub_804C904: @ 804C904
	push {r4-r7,lr}
	sub sp, 0x58
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0804C912
	b _0804CAA4
_0804C912:
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r6, =gBattleMons
	ldrb r0, [r4]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	adds r1, r6
	mov r0, sp
	movs r2, 0x58
	bl memcpy
	ldrb r0, [r4]
	muls r0, r5
	adds r3, r0, r6
	movs r2, 0
	ldr r5, =gUnknown_02023864
_0804C93E:
	adds r0, r3, r2
	ldrb r1, [r4]
	lsls r1, 9
	adds r1, 0x4
	adds r1, r2, r1
	adds r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _0804C93E
	ldr r4, =gBattleMons
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	movs r7, 0x58
	adds r2, r0, 0
	muls r2, r7
	adds r2, r4
	ldr r3, =gBaseStats
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x6]
	adds r2, 0x21
	strb r0, [r2]
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r7
	adds r1, r4
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x7]
	adds r1, 0x22
	strb r0, [r1]
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r7
	adds r1, r4
	ldrh r0, [r1]
	ldrb r1, [r1, 0x17]
	lsrs r1, 7
	bl sub_806B694
	ldrb r1, [r6]
	muls r1, r7
	adds r1, r4
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_020243D0
	adds r0, 0x29
	adds r0, r2, r0
	ldrb r1, [r0]
	ldr r3, =gBitTable
	ldr r2, =gUnknown_0202406E
	ldrb r5, [r6]
	lsls r0, r5, 1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	mov r12, r4
	cmp r1, 0
	beq _0804C9DE
	adds r0, r5, 0
	muls r0, r7
	add r0, r12
	movs r1, 0
	strh r1, [r0, 0x2E]
_0804C9DE:
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7F
	bne _0804CA26
	movs r2, 0
	adds r4, r6, 0
	movs r6, 0x58
	mov r5, r12
	adds r5, 0x18
	add r3, sp, 0x18
_0804C9FE:
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r2, r1
	adds r1, r5
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, 0x7
	ble _0804C9FE
	ldr r0, =gUnknown_02024064
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	mov r1, r12
	adds r1, 0x50
	adds r0, r1
	ldr r1, [sp, 0x50]
	str r1, [r0]
_0804CA26:
	bl sub_803A284
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0804CA78
	ldr r4, =gBattleMons
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	movs r0, 0x58
	adds r2, r3, 0
	muls r2, r0
	adds r1, r2, r4
	ldrh r0, [r1, 0x2C]
	lsrs r0, 1
	ldrh r1, [r1, 0x28]
	cmp r0, r1
	bcc _0804CA78
	cmp r1, 0
	beq _0804CA78
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0804CA78
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	adds r2, 0x92
	ldr r1, =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0804CA78:
	ldr r0, =gUnknown_02024474
	ldr r3, =gUnknown_02024064
	ldrb r2, [r3]
	strb r2, [r0, 0x17]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0804CAA4:
	add sp, 0x58
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804C904

	thumb_func_start atk4E_switch3
atk4E_switch3: @ 804CAE8
	push {r4-r6,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804CB86
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r6, =gUnknown_02024064
	strb r0, [r6]
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0804CB3E
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x063f0902
	ands r0, r1
	cmp r0, 0
	bne _0804CB3E
	ldr r4, =gBattleMons
	ldrb r0, [r6]
	movs r5, 0x58
	muls r0, r5
	adds r0, r4
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r6]
	muls r1, r5
	adds r4, 0x48
	adds r1, r4
	ldr r2, [r1]
	movs r1, 0x2
	bl SetPokedexFlag
_0804CB3E:
	ldr r2, =gUnknown_02024210
	ldr r1, =gBitTable
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrb r1, [r0]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r2, [r0, 0x2]
	movs r0, 0
	bl dp01_build_cmdbuf_x05_a_b_c
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0804CB86
	bl sub_81A56B4
_0804CB86:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk4E_switch3

	thumb_func_start atk4F_jumpifcannotswitch
atk4F_jumpifcannotswitch: @ 804CBB0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	movs r0, 0x7F
	ands r0, r1
	bl get_battle_side_of_something
	ldr r3, =gUnknown_02024064
	strb r0, [r3]
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0804CC28
	ldr r1, =gBattleMons
	ldrb r3, [r3]
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x0400e000
	ands r0, r1
	cmp r0, 0
	bne _0804CBFC
	ldr r1, =gUnknown_020242AC
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _0804CC28
_0804CBFC:
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _0804CF00
	.pool
_0804CC28:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 15
	ands r0, r1
	cmp r0, 0
	beq _0804CCC0
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gPlayerParty
	mov r8, r1
	cmp r0, 0x1
	bne _0804CC4E
	ldr r0, =gEnemyParty
	mov r8, r0
_0804CC4E:
	movs r4, 0
	ldrb r1, [r5]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0804CC5C
	movs r4, 0x3
_0804CC5C:
	adds r6, r4, 0x3
	cmp r4, r6
	bge _0804CCA4
	ldr r7, =gUnknown_0202406E
_0804CC64:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804CC9E
	adds r0, r5, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804CC9E
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804CC9E
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0804CCA4
_0804CC9E:
	adds r4, 0x1
	cmp r4, r6
	blt _0804CC64
_0804CCA4:
	cmp r4, r6
	bne _0804CCAA
	b _0804CED0
_0804CCAA:
	b _0804CEF8
	.pool
_0804CCC0:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804CD8C
	movs r0, 0x80
	lsls r0, 16
	ands r1, r0
	cmp r1, 0
	beq _0804CD00
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0804CCEC
	ldr r0, =gPlayerParty
	b _0804CD16
	.pool
_0804CCEC:
	ldr r1, =gEnemyParty
	mov r8, r1
	ldrb r0, [r5]
	movs r4, 0x3
	cmp r0, 0x1
	bne _0804CD32
	movs r4, 0
	b _0804CD32
	.pool
_0804CD00:
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gPlayerParty
	mov r8, r1
	cmp r0, 0x1
	bne _0804CD18
	ldr r0, =gEnemyParty
_0804CD16:
	mov r8, r0
_0804CD18:
	movs r4, 0
	ldrb r0, [r5]
	bl sub_806D864
	lsls r0, 24
	lsrs r0, 24
	bl sub_806D82C
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _0804CD32
	movs r4, 0x3
_0804CD32:
	adds r6, r4, 0x3
	cmp r4, r6
	bge _0804CCA4
	ldr r7, =gUnknown_0202406E
_0804CD3A:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804CD74
	adds r0, r5, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804CD74
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804CD74
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0804CCA4
_0804CD74:
	adds r4, 0x1
	cmp r4, r6
	blt _0804CD3A
	b _0804CCA4
	.pool
_0804CD8C:
	movs r0, 0x80
	lsls r0, 8
	ands r1, r0
	cmp r1, 0
	beq _0804CE10
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0804CE10
	ldr r0, =gEnemyParty
	mov r8, r0
	movs r4, 0
	ldrb r0, [r5]
	cmp r0, 0x3
	bne _0804CDB4
	movs r4, 0x3
_0804CDB4:
	adds r6, r4, 0x3
	cmp r4, r6
	blt _0804CDBC
	b _0804CCA4
_0804CDBC:
	ldr r7, =gUnknown_0202406E
_0804CDBE:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804CDFA
	adds r0, r5, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804CDFA
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804CDFA
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, r4
	beq _0804CDFA
	b _0804CCA4
_0804CDFA:
	adds r4, 0x1
	cmp r4, r6
	blt _0804CDBE
	b _0804CCA4
	.pool
_0804CE10:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bne _0804CE54
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _0804CE48
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	b _0804CE4A
	.pool
_0804CE48:
	adds r6, r7, 0
_0804CE4A:
	ldr r0, =gEnemyParty
	mov r8, r0
	b _0804CE82
	.pool
_0804CE54:
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804CE7C
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	b _0804CE7E
	.pool
_0804CE7C:
	adds r6, r7, 0
_0804CE7E:
	ldr r1, =gPlayerParty
	mov r8, r1
_0804CE82:
	movs r4, 0
_0804CE84:
	movs r0, 0x64
	muls r0, r4
	mov r1, r8
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0804CEC6
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0804CEC6
	adds r0, r5, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0804CEC6
	ldr r1, =gUnknown_0202406E
	lsls r0, r7, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	beq _0804CEC6
	lsls r0, r6, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _0804CECC
_0804CEC6:
	adds r4, 0x1
	cmp r4, 0x5
	ble _0804CE84
_0804CECC:
	cmp r4, 0x6
	bne _0804CEF8
_0804CED0:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0804CF00
	.pool
_0804CEF8:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
_0804CF00:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk4F_jumpifcannotswitch

	thumb_func_start sub_804CF10
sub_804CF10: @ 804CF10
	push {r4,r5,lr}
	sub sp, 0x4
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r5, =gUnknown_02024064
	ldrb r0, [r5]
	ldr r4, =gUnknown_0202449C
	ldr r1, [r4]
	adds r1, r0, r1
	adds r1, 0x58
	ldr r3, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r0, [r5]
	ldr r1, [r4]
	adds r0, r1
	adds r0, 0x5C
	movs r1, 0x6
	strb r1, [r0]
	ldr r1, [r4]
	adds r1, 0x93
	ldr r3, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r3
	ldr r3, [r0]
	ldrb r0, [r1]
	bics r0, r3
	strb r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, 0x60
	ldr r0, [r4]
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x1
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804CF10

	thumb_func_start atk50_openpartyscreen
atk50_openpartyscreen: @ 804CF88
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r7, 0
	movs r0, 0
	mov r9, r0
	ldr r6, =gUnknown_02024214
	ldr r2, [r6]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	mov r8, r1
	ldrb r1, [r2, 0x1]
	adds r0, r1, 0
	mov r12, r6
	cmp r0, 0x5
	beq _0804CFBE
	b _0804D464
_0804CFBE:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x41
	ands r1, r0
	cmp r1, 0x1
	beq _0804D0B0
	ldr r1, =gUnknown_02024064
	strb r7, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r7, r0
	bcc _0804CFD8
	b _0804D450
_0804CFD8:
	ldr r7, =gUnknown_02024280
	ldr r6, =gBitTable
	adds r4, r1, 0
	ldr r2, =gUnknown_02024210
	mov r8, r2
_0804CFE2:
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	ands r0, r1
	cmp r0, 0
	beq _0804D088
	adds r0, r2, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D054
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	bics r0, r1
	str r0, [r7]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D098
	.pool
_0804D054:
	ldr r5, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D098
	movs r0, 0x6
	bl sub_804CF10
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804D098
	.pool
_0804D088:
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D098:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0804CFE2
	b _0804D450
	.pool
_0804D0B0:
	ands r0, r1
	cmp r0, 0
	bne _0804D0B8
	b _0804D450
_0804D0B8:
	ldr r0, =gUnknown_02024280
	mov r8, r0
	ldr r0, [r0]
	lsrs r5, r0, 28
	ldr r6, =gBitTable
	ldr r0, [r6]
	ands r0, r5
	cmp r0, 0
	beq _0804D170
	ldr r4, =gUnknown_02024064
	strb r7, [r4]
	movs r0, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D120
	ldr r2, =gUnknown_02024210
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	mov r2, r8
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D170
	.pool
_0804D120:
	ldr r6, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D15C
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5E
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804D170
	.pool
_0804D15C:
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r0, 0x1
	mov r9, r0
_0804D170:
	ldr r6, =gBitTable
	ldr r0, [r6, 0x8]
	ands r0, r5
	cmp r0, 0
	beq _0804D22E
	ldr r0, [r6]
	ands r0, r5
	cmp r0, 0
	bne _0804D22E
	ldr r4, =gUnknown_02024064
	movs r0, 0x2
	strb r0, [r4]
	movs r0, 0x2
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D1D8
	ldr r2, =gUnknown_02024210
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, =gUnknown_02024280
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D22E
	.pool
_0804D1D8:
	ldr r6, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D214
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5C
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804D22E
	.pool
_0804D214:
	movs r0, 0x1
	mov r1, r9
	ands r0, r1
	cmp r0, 0
	bne _0804D22E
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D22E:
	ldr r6, =gBitTable
	ldr r0, [r6, 0x4]
	ands r0, r5
	cmp r0, 0
	beq _0804D2E4
	ldr r4, =gUnknown_02024064
	movs r0, 0x1
	strb r0, [r4]
	movs r0, 0x1
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D290
	ldr r2, =gUnknown_02024210
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, =gUnknown_02024280
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D2E4
	.pool
_0804D290:
	ldr r6, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D2CC
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5F
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804D2E4
	.pool
_0804D2CC:
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r0, 0x2
	mov r2, r9
	orrs r2, r0
	mov r9, r2
_0804D2E4:
	ldr r6, =gBitTable
	ldr r0, [r6, 0xC]
	ands r0, r5
	cmp r0, 0
	beq _0804D3A2
	ldr r0, [r6, 0x4]
	ands r0, r5
	cmp r0, 0
	bne _0804D3A2
	ldr r4, =gUnknown_02024064
	movs r0, 0x3
	strb r0, [r4]
	movs r0, 0x3
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D34C
	ldr r2, =gUnknown_02024210
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, =gUnknown_02024280
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D3A2
	.pool
_0804D34C:
	ldr r6, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D388
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5D
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804D3A2
	.pool
_0804D388:
	movs r0, 0x2
	mov r1, r9
	ands r1, r0
	cmp r1, 0
	bne _0804D3A2
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D3A2:
	ldr r1, =gUnknown_0202437C
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D3FA
	adds r0, r1, 0
	adds r0, 0x28
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _0804D3FA
	cmp r5, 0
	beq _0804D3FA
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r0, =gBitTable
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0804D3E4
	ldr r1, =gUnknown_02024064
	movs r0, 0x2
	strb r0, [r1]
	b _0804D3E8
	.pool
_0804D3E4:
	ldr r0, =gUnknown_02024064
	strb r1, [r0]
_0804D3E8:
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D3FA:
	ldr r1, =gUnknown_0202437C
	ldrb r0, [r1, 0x14]
	lsls r0, 25
	cmp r0, 0
	blt _0804D450
	adds r0, r1, 0
	adds r0, 0x3C
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _0804D450
	cmp r5, 0
	beq _0804D450
	ldr r0, =gUnknown_02024210
	ldrb r0, [r0]
	ldr r1, =gBitTable
	ldr r1, [r1, 0x4]
	ands r0, r1
	cmp r0, 0
	beq _0804D438
	ldr r1, =gUnknown_02024064
	movs r0, 0x3
	b _0804D43C
	.pool
_0804D438:
	ldr r1, =gUnknown_02024064
	movs r0, 0x1
_0804D43C:
	strb r0, [r1]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D450:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	b _0804D804
	.pool
_0804D464:
	cmp r0, 0x6
	beq _0804D46A
	b _0804D658
_0804D46A:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804D478
	b _0804D5F4
_0804D478:
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	bne _0804D482
	b _0804D5F4
_0804D482:
	ldr r7, =gUnknown_02024280
	ldr r0, [r7]
	lsrs r5, r0, 28
	ldr r4, =gBitTable
	ldr r0, [r4, 0x8]
	ands r0, r5
	cmp r0, 0
	beq _0804D52A
	ldr r0, [r4]
	ands r0, r5
	cmp r0, 0
	beq _0804D52A
	ldr r6, =gUnknown_02024064
	movs r0, 0x2
	strb r0, [r6]
	ldr r0, =gUnknown_02023864
	ldrb r1, [r0, 0x1]
	movs r0, 0x2
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D4F8
	ldr r2, =gUnknown_02024210
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	bics r0, r1
	str r0, [r7]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D52A
	.pool
_0804D4F8:
	ldr r4, =gUnknown_0202437C
	ldrb r0, [r6]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D52A
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5C
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
_0804D52A:
	ldr r4, =gBitTable
	ldr r0, [r4, 0xC]
	ands r0, r5
	cmp r0, 0
	beq _0804D5DA
	ldr r0, [r4, 0x4]
	ands r5, r0
	cmp r5, 0
	beq _0804D5DA
	ldr r5, =gUnknown_02024064
	movs r0, 0x3
	strb r0, [r5]
	ldr r0, =gUnknown_02023864
	ldr r2, =0x00000201
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x3
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D5A8
	ldr r2, =gUnknown_02024210
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, =gUnknown_02024280
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804D5DA
	.pool
_0804D5A8:
	ldr r4, =gUnknown_0202437C
	ldrb r0, [r5]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0804D5DA
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x5D
	ldrb r0, [r0]
	bl sub_804CF10
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
_0804D5DA:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	mov r12, r1
	b _0804D5F8
	.pool
_0804D5F4:
	adds r0, r2, 0x6
	str r0, [r6]
_0804D5F8:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	lsrs r5, r0, 28
	ldr r1, =gUnknown_0202420D
	movs r0, 0
	strb r0, [r1]
	ldr r4, =gBitTable
	ldr r2, [r4]
	ands r2, r5
	ldr r6, =gUnknown_0202406C
	cmp r2, 0
	bne _0804D634
	adds r7, r6, 0
	ldrb r0, [r6]
	cmp r2, r0
	bcs _0804D634
	adds r3, r1, 0
_0804D61A:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	ldrb r2, [r3]
	lsls r0, r2, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	bne _0804D634
	ldrb r0, [r7]
	cmp r2, r0
	bcc _0804D61A
_0804D634:
	ldrb r0, [r1]
	ldrb r6, [r6]
	cmp r0, r6
	beq _0804D63E
	b _0804D804
_0804D63E:
	mov r1, r8
	mov r2, r12
	str r1, [r2]
	b _0804D804
	.pool
_0804D658:
	movs r0, 0x80
	ands r0, r1
	movs r5, 0x1
	cmp r0, 0
	beq _0804D664
	movs r5, 0
_0804D664:
	movs r0, 0x7F
	ands r0, r1
	bl get_battle_side_of_something
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, =gUnknown_0202437C
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	bge _0804D690
	ldr r0, [r6]
	adds r0, 0x6
	str r0, [r6]
	b _0804D804
	.pool
_0804D690:
	adds r0, r7, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_80423F4
	lsls r0, 24
	cmp r0, 0
	beq _0804D6E0
	ldr r2, =gUnknown_02024064
	strb r7, [r2]
	ldr r3, =gUnknown_02024210
	ldr r4, =gBitTable
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldr r3, =gUnknown_02024280
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	mov r0, r8
	str r0, [r6]
	b _0804D804
	.pool
_0804D6E0:
	ldr r4, =gUnknown_02024064
	strb r7, [r4]
	ldrb r0, [r4]
	ldr r3, =gUnknown_0202449C
	ldr r1, [r3]
	adds r1, r0, r1
	adds r1, 0x58
	ldr r2, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0x5C
	movs r1, 0x6
	strb r1, [r0]
	ldr r1, [r3]
	adds r1, 0x93
	ldr r2, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r2
	ldr r2, [r0]
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x2
	eors r0, r1
	ldr r3, [r3]
	adds r0, r3
	adds r0, 0x5C
	ldrb r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, 0x60
	adds r3, r0
	str r3, [sp]
	movs r0, 0
	adds r1, r5, 0
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
	adds r0, 0x6
	str r0, [r6]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _0804D760
	ldr r1, =gUnknown_03005D10
	ldrb r0, [r1, 0x2]
	cmp r0, 0xFE
	bhi _0804D760
	adds r0, 0x1
	strb r0, [r1, 0x2]
_0804D760:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804D7C4
	ldr r1, =gUnknown_02024064
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0804D804
	adds r4, r1, 0
_0804D77C:
	ldrb r0, [r4]
	cmp r0, r7
	beq _0804D792
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D792:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0804D77C
	b _0804D804
	.pool
_0804D7C4:
	adds r0, r7, 0
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r3, [r4]
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0804D7F4
	movs r0, 0x2
	eors r3, r0
	strb r3, [r4]
_0804D7F4:
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	bl sub_8034464
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804D804:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk50_openpartyscreen

	thumb_func_start atk51_cmd51
atk51_cmd51: @ 804D820
	push {r4-r7,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0804D82C
	b _0804DA8A
_0804D82C:
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r0, [r4]
	ldrb r0, [r0, 0x2]
	cmp r0, 0x1
	beq _0804D8CC
	cmp r0, 0x1
	bgt _0804D858
	cmp r0, 0
	beq _0804D862
	b _0804DA82
	.pool
_0804D858:
	cmp r0, 0x2
	beq _0804D8E8
	cmp r0, 0x3
	beq _0804D922
	b _0804DA82
_0804D862:
	movs r6, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	blt _0804D86E
	b _0804DA82
_0804D86E:
	ldr r7, =gUnknown_02023864
_0804D870:
	ldrb r0, [r7]
	cmp r0, 0x22
	bne _0804D8AA
	ldr r5, =gUnknown_0202449C
	ldr r0, [r5]
	adds r0, r6, r0
	adds r0, 0x5C
	ldrb r1, [r7, 0x1]
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, 0x93
	ldrb r1, [r0]
	ldr r2, =gBitTable
	lsls r0, r6, 2
	adds r0, r2
	ldr r4, [r0]
	ands r1, r4
	cmp r1, 0
	bne _0804D8AA
	lsls r0, r6, 24
	lsrs r0, 24
	ldrb r1, [r7, 0x1]
	bl sub_8184FBC
	ldr r1, [r5]
	adds r1, 0x93
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_0804D8AA:
	movs r0, 0x80
	lsls r0, 2
	adds r7, r0
	adds r6, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	blt _0804D870
	b _0804DA82
	.pool
_0804D8CC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804D8DA
	b _0804DA82
_0804D8DA:
	ldrb r0, [r5]
	bl sub_803BDA0
	b _0804DA82
	.pool
_0804D8E8:
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	adds r0, 0x93
	ldrb r1, [r0]
	ldr r6, =gBitTable
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r6
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804D922
	ldr r0, =gUnknown_02023864
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r1, [r1]
	adds r0, r2, 0
	bl sub_8184FBC
	ldr r2, [r4]
	adds r2, 0x93
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0804D922:
	ldr r1, =gUnknown_02024332
	ldr r6, =gUnknown_02023864
	ldr r7, =gUnknown_02024064
	ldrb r0, [r7]
	lsls r0, 9
	adds r2, r6, 0x1
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	ldr r1, =gUnknown_0202449C
	mov r12, r1
	ldr r1, [r1]
	adds r1, r0, r1
	adds r1, 0x5C
	lsls r0, 9
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x42
	ands r0, r1
	cmp r0, 0x42
	bne _0804DA14
	ldrb r0, [r7]
	mov r3, r12
	ldr r2, [r3]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	ldr r2, [r3]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	lsls r0, 9
	adds r5, r6, 0x2
	adds r0, r5
	ldrb r2, [r0]
	movs r3, 0xF0
	adds r0, r3, 0
	ands r0, r2
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	mov r0, r12
	ldr r2, [r0]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, r2
	adds r0, 0x61
	lsls r1, 9
	adds r6, 0x3
	adds r1, r6
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r7]
	movs r4, 0x2
	eors r0, r4
	mov r1, r12
	ldr r2, [r1]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	eors r0, r4
	mov r1, r12
	ldr r2, [r1]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r0, [r7]
	lsls r0, 9
	adds r0, r5
	ldrb r0, [r0]
	ands r3, r0
	lsrs r3, 4
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r7]
	eors r4, r0
	mov r2, r12
	ldr r0, [r2]
	lsls r1, r4, 1
	adds r1, r4
	adds r1, r0
	adds r1, 0x62
	ldrb r0, [r7]
	lsls r0, 9
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	b _0804DA36
	.pool
_0804DA14:
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	beq _0804DA30
	ldrb r0, [r7]
	mov r3, r12
	ldr r1, [r3]
	adds r1, r0, r1
	adds r1, 0x5C
	ldrb r1, [r1]
	bl sub_80571DC
	b _0804DA36
_0804DA30:
	ldrb r0, [r7]
	bl sub_803BDA0
_0804DA36:
	ldr r1, =gUnknown_02022F58
	movs r5, 0xFD
	strb r5, [r1]
	movs r0, 0x6
	strb r0, [r1, 0x1]
	ldr r4, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	movs r2, 0x58
	muls r0, r2
	adds r0, r4
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r3]
	muls r0, r2
	adds r0, r4
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r2, =gUnknown_02022F68
	strb r5, [r2]
	movs r0, 0x7
	strb r0, [r2, 0x1]
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	strb r0, [r2, 0x2]
	ldr r1, =gUnknown_02023864
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2, 0x3]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r2, 0x4]
_0804DA82:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
_0804DA8A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk51_cmd51

	thumb_func_start atk52_cmd52
atk52_cmd52: @ 804DAAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r0, =gUnknown_02024214
	mov r9, r0
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_803FA70
	ldr r1, =gUnknown_02024280
	mov r8, r1
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	mov r2, r8
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r2, =gUnknown_0202437C
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	bl battle_side_get_owner
	ldr r5, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r1, [r0]
	movs r7, 0x80
	lsls r7, 2
	mov r10, r7
	mov r0, r10
	ands r0, r1
	cmp r0, 0
	beq _0804DB1C
	b _0804DC30
_0804DB1C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0804DB34
	b _0804DC30
_0804DB34:
	ldr r7, =gBattleMons
	ldrb r2, [r4]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	adds r1, r0, r7
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0804DC30
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0804DC30
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	beq _0804DC30
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r2, [r0]
	mov r1, r10
	orrs r1, r2
	strh r1, [r0]
	ldrb r0, [r4]
	adds r2, r0, 0
	muls r2, r6
	adds r0, r7, 0
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xfdffffff
	ands r0, r1
	str r0, [r2]
	mov r1, r8
	ldr r0, [r1]
	movs r2, 0x41
	negs r2, r2
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r4]
	bl battle_side_get_owner
	ldr r2, =gUnknown_02024294
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0xA]
	movs r1, 0x5
	subs r1, r0
	lsls r1, 25
	lsrs r1, 24
	ldr r5, =gBattleMoveDamage
	ldrb r0, [r4]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0, 0x2C]
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _0804DBC8
	movs r0, 0x1
	str r0, [r5]
_0804DBC8:
	ldr r0, =gUnknown_02024474
	ldrb r1, [r4]
	strb r1, [r0, 0x17]
	bl b_movescr_stack_push_cursor
	mov r7, r9
	ldr r0, [r7]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0804DC14
	ldr r0, =gUnknown_082DAE90
	str r0, [r7]
	b _0804DD8E
	.pool
_0804DC14:
	cmp r0, 0x1
	bne _0804DC24
	ldr r0, =gUnknown_082DAE59
	mov r1, r9
	str r0, [r1]
	b _0804DD8E
	.pool
_0804DC24:
	ldr r0, =gUnknown_082DAEC7
	mov r2, r9
	str r0, [r2]
	b _0804DD8E
	.pool
_0804DC30:
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_02024064
	ldrb r3, [r1]
	movs r0, 0x58
	muls r0, r3
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	adds r5, r1, 0
	ldr r4, =gUnknown_020242BC
	cmp r0, 0x36
	bne _0804DC5E
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r2, r0, r4
	ldrb r1, [r2, 0x18]
	lsls r0, r1, 30
	cmp r0, 0
	blt _0804DC5E
	movs r0, 0x1
	orrs r0, r1
	strb r0, [r2, 0x18]
_0804DC5E:
	ldrb r0, [r5]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1, 0x18]
	movs r0, 0x3
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x18]
	ldrb r1, [r5]
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _0804DC88
	b _0804DD8E
_0804DC88:
	ldrb r1, [r5]
	movs r0, 0
	movs r2, 0
	bl berry_effects_maybe
	lsls r0, 24
	cmp r0, 0
	bne _0804DD8E
	ldrb r0, [r5]
	bl battle_side_get_owner
	ldr r1, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 23
	adds r0, r1
	ldrh r2, [r0]
	ldr r1, =0x0000fdff
	ands r1, r2
	strh r1, [r0]
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r7, [r0]
	cmp r4, r7
	bge _0804DCD8
	ldr r6, =gUnknown_0202407E
	adds r1, r5, 0
	ldr r5, =gUnknown_0202407A
	movs r3, 0xC
	adds r2, r0, 0
_0804DCC2:
	adds r0, r4, r6
	ldrb r0, [r0]
	ldrb r7, [r1]
	cmp r0, r7
	bne _0804DCD0
	adds r0, r4, r5
	strb r3, [r0]
_0804DCD0:
	adds r4, 0x1
	ldrb r0, [r2]
	cmp r4, r0
	blt _0804DCC2
_0804DCD8:
	movs r4, 0
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	bge _0804DD0C
	ldr r6, =gUnknown_0202449C
	ldr r5, =gBattleMons
_0804DCE6:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, 0xA8
	ldr r1, [r6]
	adds r1, r0
	movs r0, 0x58
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x28]
	strh r0, [r1]
	adds r4, 0x1
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804DCE6
_0804DD0C:
	ldr r0, =gUnknown_02024214
	ldr r1, [r0]
	ldrb r1, [r1, 0x1]
	adds r5, r0, 0
	cmp r1, 0x5
	bne _0804DD88
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	lsrs r4, r0, 28
	ldr r1, =gUnknown_0202420D
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r2, =gBitTable
	b _0804DD6E
	.pool
_0804DD60:
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	bcs _0804DD88
	adds r0, r3, 0x1
	strb r0, [r1]
_0804DD6E:
	ldrb r0, [r1]
	lsls r0, 2
	adds r0, r2
	ldr r3, [r0]
	adds r0, r4, 0
	ands r0, r3
	cmp r0, 0
	beq _0804DD60
	ldr r0, =gUnknown_02024210
	ldrb r0, [r0]
	ands r0, r3
	cmp r0, 0
	bne _0804DD60
_0804DD88:
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_0804DD8E:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk52_cmd52

	thumb_func_start sub_804DDA8
sub_804DDA8: @ 804DDA8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x08_8_8_8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804DDA8

	thumb_func_start atk54_802511C
atk54_802511C: @ 804DDD8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x2B_aa_0
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk54_802511C

	thumb_func_start sub_804DE14
sub_804DE14: @ 804DE14
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	movs r2, 0
	bl sub_8034300
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804DE14

	thumb_func_start atk56_8025194
atk56_8025194: @ 804DE50
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x2D_2D_2D_2D
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk56_8025194

	thumb_func_start atk57_80251C4_flee
atk57_80251C4_flee: @ 804DE80
	push {r4,lr}
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gUnknown_0202433A
	ldrb r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x37_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk57_80251C4_flee

	thumb_func_start atk58_cmd58
atk58_cmd58: @ 804DEB8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x06_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk58_cmd58

	thumb_func_start atk59_8025230
atk59_8025230: @ 804DEEC
	push {r4-r7,lr}
	ldr r0, =gUnknown_02024214
	ldr r2, [r0]
	ldrb r6, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r6, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r6, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r6, r0
	ldrb r4, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	orrs r4, r0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	ldrb r1, [r2, 0x9]
	bl sub_8069318
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =0x0000fffe
	cmp r5, r0
	bne _0804DF56
	adds r7, r5, 0
_0804DF3A:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0
	bl sub_8069318
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r7
	beq _0804DF3A
_0804DF56:
	cmp r5, 0
	bne _0804DF70
	ldr r0, =gUnknown_02024214
	str r4, [r0]
	b _0804E018
	.pool
_0804DF70:
	ldr r0, =0x0000ffff
	cmp r5, r0
	bne _0804DF88
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
	b _0804E018
	.pool
_0804DF88:
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldr r2, =gUnknown_0202406E
	ldrb r3, [r1]
	lsls r0, r3, 1
	adds r0, r2
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	ldrh r0, [r0]
	ldrb r1, [r1, 0x10]
	cmp r0, r1
	bne _0804DFC8
	ldr r4, =gBattleMons
	movs r0, 0x58
	adds r2, r3, 0
	muls r2, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0804DFC8
	adds r0, r2, r4
	adds r1, r5, 0
	bl sub_80691B0
_0804DFC8:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804E014
	movs r0, 0x2
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldr r2, =gUnknown_0202406E
	ldrb r3, [r1]
	lsls r0, r3, 1
	adds r0, r2
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	ldrh r0, [r0]
	ldrb r1, [r1, 0x10]
	cmp r0, r1
	bne _0804E014
	ldr r4, =gBattleMons
	movs r0, 0x58
	adds r2, r3, 0
	muls r2, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0804E014
	adds r0, r2, r4
	adds r1, r5, 0
	bl sub_80691B0
_0804E014:
	ldr r0, =gUnknown_02024214
	str r6, [r0]
_0804E018:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk59_8025230

	thumb_func_start sub_804E038
sub_804E038: @ 804E038
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r0, =gUnknown_02024064
	movs r1, 0
	strb r1, [r0]
	ldr r0, =gUnknown_02024474
	ldrb r1, [r0, 0x1F]
	adds r2, r0, 0
	cmp r1, 0x6
	bls _0804E052
	b _0804E3B8
_0804E052:
	lsls r0, r1, 2
	ldr r1, =_0804E068
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804E068:
	.4byte _0804E084
	.4byte _0804E0BC
	.4byte _0804E162
	.4byte _0804E1B8
	.4byte _0804E1E4
	.4byte _0804E38C
	.4byte _0804E3AC
_0804E084:
	movs r4, 0
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gUnknown_085CCABB
	movs r1, 0xC
	bl battle_show_message_maybe
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1F]
	adds r0, 0x1
	strb r0, [r1, 0x1F]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x1]
	movs r0, 0
	bl sub_8056B74
	b _0804E3B8
	.pool
_0804E0BC:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804E0E4
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _0804E0E4
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0
	strb r0, [r4, 0x1]
	bl sub_8056B74
_0804E0E4:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804E10C
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _0804E10C
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_8056B74
_0804E10C:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r5, 0x1
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _0804E150
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_02024332
	ldrb r4, [r0, 0x1]
	cmp r4, 0
	bne _0804E20A
	str r5, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _0804E192
	.pool
_0804E150:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0804E15A
	b _0804E3B8
_0804E15A:
	movs r0, 0x5
	bl audio_play
	b _0804E20A
_0804E162:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804E170
	b _0804E3B8
_0804E170:
	bl FreeAllWindowBuffers
	ldr r0, =gPlayerParty
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	ldrb r1, [r1, 0x10]
	ldr r2, =gUnknown_020244E9
	ldrb r2, [r2]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r3, =sub_80A92F8
	ldr r4, =gUnknown_020244E2
	ldrh r4, [r4]
	str r4, [sp]
	bl sub_81BFA38
_0804E192:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1F]
	adds r0, 0x1
	strb r0, [r1, 0x1F]
	b _0804E3B8
	.pool
_0804E1B8:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804E1C6
	b _0804E3B8
_0804E1C6:
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =sub_8038420
	cmp r1, r0
	beq _0804E1D2
	b _0804E3B8
_0804E1D2:
	ldrb r0, [r2, 0x1F]
	adds r0, 0x1
	b _0804E3B6
	.pool
_0804E1E4:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804E1F2
	b _0804E3B8
_0804E1F2:
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =sub_8038420
	cmp r1, r0
	beq _0804E1FE
	b _0804E3B8
_0804E1FE:
	bl sub_81C1B94
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bne _0804E224
_0804E20A:
	ldr r1, =gUnknown_02024474
	movs r0, 0x5
	strb r0, [r1, 0x1F]
	b _0804E3B8
	.pool
_0804E224:
	ldr r6, =gUnknown_0202449C
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	movs r1, 0x64
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	ldr r7, =gPlayerParty
	adds r0, r7
	adds r1, r5, 0
	adds r1, 0xD
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	bl sub_806E804
	cmp r0, 0
	beq _0804E274
	ldr r0, =0x0000013f
	ldr r1, =gUnknown_02024064
	ldrb r1, [r1]
	bl b_std_message
	ldr r1, =gUnknown_02024474
	movs r0, 0x6
	strb r0, [r1, 0x1F]
	b _0804E3B8
	.pool
_0804E274:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	ldr r1, =gUnknown_02022F68
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	strb r4, [r1, 0x2]
	lsrs r0, r4, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	adds r1, r5, 0
	bl sub_806B9A8
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	ldr r7, =gUnknown_020244E2
	ldrh r1, [r7]
	adds r2, r5, 0
	bl sub_80691F4
	ldr r0, =gUnknown_0202406E
	ldr r1, [r6]
	ldrh r0, [r0]
	ldrb r1, [r1, 0x10]
	cmp r0, r1
	bne _0804E30A
	ldr r4, =gBattleMons
	ldr r0, [r4, 0x50]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0804E30A
	ldr r0, =gUnknown_020242BC
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804E30A
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_806B9E4
	ldrh r1, [r7]
	adds r0, r4, 0
	adds r2, r5, 0
	bl sub_8069234
_0804E30A:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804E3B8
	ldr r2, =gUnknown_0202406E
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	ldrh r0, [r2, 0x4]
	ldrb r1, [r1, 0x10]
	cmp r0, r1
	bne _0804E3B8
	ldr r4, =gBattleMons
	movs r1, 0x80
	lsls r1, 1
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0804E3B8
	ldr r0, =gUnknown_020242BC
	adds r0, 0x50
	ldrb r1, [r0]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0804E3B8
	adds r4, 0xB0
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_806B9E4
	ldr r0, =gUnknown_020244E2
	ldrh r1, [r0]
	adds r0, r4, 0
	adds r2, r5, 0
	bl sub_8069234
	b _0804E3B8
	.pool
_0804E38C:
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0804E3B8
	.pool
_0804E3AC:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804E3B8
	movs r0, 0x2
_0804E3B6:
	strb r0, [r2, 0x1F]
_0804E3B8:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804E038

	thumb_func_start atk5B_80256E0
atk5B_80256E0: @ 804E3C8
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, =gUnknown_02024474
	ldrb r4, [r5, 0x1F]
	cmp r4, 0
	beq _0804E3E0
	cmp r4, 0x1
	beq _0804E410
	b _0804E4FA
	.pool
_0804E3E0:
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gUnknown_085CCABB
	movs r1, 0xC
	bl battle_show_message_maybe
	ldrb r0, [r5, 0x1F]
	adds r0, 0x1
	strb r0, [r5, 0x1F]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x1]
	movs r0, 0
	bl sub_8056B74
	b _0804E4FA
	.pool
_0804E410:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804E438
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _0804E438
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0
	strb r0, [r4, 0x1]
	bl sub_8056B74
_0804E438:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804E460
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _0804E460
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_8056B74
_0804E460:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0804E4C4
	movs r0, 0x5
	bl audio_play
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0804E4A4
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0804E4AC
	.pool
_0804E4A4:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0804E4AC:
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	b _0804E4FA
	.pool
_0804E4C4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0804E4FA
	movs r0, 0x5
	bl audio_play
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
_0804E4FA:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk5B_80256E0

	thumb_func_start atk5C_cmd5c
atk5C_cmd5c: @ 804E508
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r2, =gUnknown_02024064
	strb r0, [r2]
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0804E58C
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	beq _0804E55A
	ldr r1, =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _0804E55A
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _0804E58C
_0804E55A:
	movs r0, 0
	bl dp01_build_cmdbuf_x29_29_29_29
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	b _0804E592
	.pool
_0804E58C:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
_0804E592:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end atk5C_cmd5c

	thumb_func_start sub_804E598
sub_804E598: @ 804E598
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r6, r0, 16
	movs r7, 0
	movs r5, 0
	movs r0, 0x80
	lsls r0, 3
	cmp r6, r0
	bne _0804E5D8
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r0, [r0]
	adds r0, 0x94
	ldrb r2, [r0]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4A
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	muls r0, r2
	b _0804E6CA
	.pool
_0804E5D8:
	ldr r0, =gTrainers
	lsls r2, r6, 2
	adds r1, r2, r6
	lsls r1, 3
	adds r4, r1, r0
	ldrb r3, [r4]
	mov r12, r0
	cmp r3, 0x1
	beq _0804E62E
	cmp r3, 0x1
	bgt _0804E5F8
	cmp r3, 0
	beq _0804E602
	b _0804E644
	.pool
_0804E5F8:
	cmp r3, 0x2
	beq _0804E618
	cmp r3, 0x3
	beq _0804E62E
	b _0804E644
_0804E602:
	mov r0, r12
	adds r0, 0x24
	adds r0, r1, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	subs r0, 0x8
	b _0804E642
_0804E618:
	mov r0, r12
	adds r0, 0x24
	adds r0, r1, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	subs r0, 0x8
	b _0804E642
_0804E62E:
	mov r0, r12
	adds r0, 0x24
	adds r0, r1, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	subs r0, 0x10
_0804E642:
	ldrb r5, [r0, 0x2]
_0804E644:
	ldr r1, =gUnknown_0831AEB8
	lsls r0, r7, 2
	adds r4, r0, r1
	ldrb r3, [r4]
	ldr r0, =gUnknown_0202449C
	mov r8, r0
	mov r9, r1
	ldr r1, =gBattleTypeFlags
	mov r10, r1
	cmp r3, 0xFF
	beq _0804E67A
	adds r0, r2, r6
	lsls r0, 3
	add r0, r12
	ldrb r1, [r0, 0x1]
	cmp r3, r1
	beq _0804E67A
	adds r2, r0, 0
	adds r0, r4, 0
_0804E66A:
	adds r0, 0x4
	adds r7, 0x1
	ldrb r1, [r0]
	cmp r1, 0xFF
	beq _0804E67A
	ldrb r3, [r2, 0x1]
	cmp r1, r3
	bne _0804E66A
_0804E67A:
	mov r0, r10
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	bne _0804E6B4
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0804E6B4
	mov r3, r8
	ldr r0, [r3]
	adds r0, 0x4A
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r5, 0
	muls r1, r0
	lsls r0, r7, 2
	add r0, r9
	ldrb r0, [r0, 0x1]
	lsls r0, 1
	b _0804E6C8
	.pool
_0804E6B4:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x4A
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r5, 0
	muls r1, r0
	lsls r0, r7, 2
	add r0, r9
	ldrb r0, [r0, 0x1]
_0804E6C8:
	muls r0, r1
_0804E6CA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_804E598

	thumb_func_start sub_804E6D8
sub_804E6D8: @ 804E6D8
	push {r4,lr}
	ldr r0, =gUnknown_02038BCA
	ldrh r0, [r0]
	bl sub_804E598
	adds r4, r0, 0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _0804E6FC
	ldr r0, =gUnknown_02038BCC
	ldrh r0, [r0]
	bl sub_804E598
	adds r4, r0
_0804E6FC:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x92
	lsls r1, 3
	adds r0, r1
	adds r1, r4, 0
	bl add_money
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	strb r4, [r1, 0x4]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r4
	lsrs r0, 8
	strb r0, [r1, 0x5]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r4
	lsrs r0, 16
	strb r0, [r1, 0x6]
	lsrs r0, r4, 24
	strb r0, [r1, 0x7]
	movs r0, 0xFF
	strb r0, [r1, 0x8]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804E6D8

	thumb_func_start atk5E_8025A70
atk5E_8025A70: @ 804E764
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r6, =gUnknown_02024064
	strb r0, [r6]
	ldr r5, =gUnknown_02024332
	ldrb r0, [r5]
	mov r8, r4
	cmp r0, 0
	beq _0804E794
	cmp r0, 0x1
	beq _0804E7AC
	b _0804E800
	.pool
_0804E794:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0804E800
_0804E7AC:
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804E800
	ldrb r0, [r6]
	lsls r0, 9
	ldr r1, =gUnknown_02023868
	adds r0, r1
	mov r12, r0
	movs r2, 0
	adds r4, r6, 0
	movs r5, 0x58
	ldr r6, =gUnknown_020240A8
	adds r7, r6, 0
	subs r7, 0x18
	mov r3, r12
	adds r3, 0xC
_0804E7CE:
	lsls r1, r2, 1
	ldrb r0, [r4]
	muls r0, r5
	adds r1, r0
	adds r1, r7
	ldrh r0, [r3]
	strh r0, [r1]
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r2, r1
	adds r1, r6
	mov r0, r12
	adds r0, 0x24
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _0804E7CE
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0804E800:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk5E_8025A70

	thumb_func_start atk5F_8025B24
atk5F_8025B24: @ 804E818
	push {lr}
	ldr r0, =gUnknown_02024064
	ldr r2, =gUnknown_0202420B
	ldrb r3, [r2]
	strb r3, [r0]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 5
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _0804E854
	ldr r0, =0xffffefff
	ands r1, r0
	b _0804E856
	.pool
_0804E854:
	orrs r1, r3
_0804E856:
	str r1, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk5F_8025B24

	thumb_func_start atk60_cmd60
atk60_cmd60: @ 804E868
	push {lr}
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0804E882
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sav12_xor_increment
_0804E882:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk60_cmd60

	thumb_func_start atk61_8025BA4
atk61_8025BA4: @ 804E898
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x30
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804E94C
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldrb r0, [r1]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _0804E8CA
	ldr r0, =gPlayerParty
	mov r8, r0
_0804E8CA:
	movs r7, 0
	add r6, sp, 0x4
	mov r5, sp
_0804E8D0:
	movs r0, 0x64
	muls r0, r7
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0804E8F4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _0804E914
_0804E8F4:
	ldr r0, =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0804E926
	.pool
_0804E914:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0804E926:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _0804E8D0
	movs r0, 0
	mov r1, sp
	movs r2, 0x1
	bl dp01_build_cmdbuf_x30_TODO
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0804E94C:
	add sp, 0x30
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk61_8025BA4

	thumb_func_start atk62_08025C6C
atk62_08025C6C: @ 804E960
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x31_31_31_31
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk62_08025C6C

	thumb_func_start atk63_jumptoattack
atk63_jumptoattack: @ 804E990
	push {r4,lr}
	ldr r0, =gUnknown_02024214
	ldr r1, [r0]
	ldrb r1, [r1, 0x1]
	adds r4, r0, 0
	cmp r1, 0
	beq _0804E9B4
	ldr r0, =gUnknown_020241EA
	ldr r1, =gUnknown_020241EE
	ldrh r1, [r1]
	strh r1, [r0]
	b _0804E9C2
	.pool
_0804E9B4:
	ldr r2, =gUnknown_020241EC
	ldr r1, =gUnknown_020241EA
	ldr r0, =gUnknown_020241EE
	ldrh r0, [r0]
	strh r0, [r1]
	strh r0, [r2]
	adds r0, r1, 0
_0804E9C2:
	ldr r3, =gUnknown_082D86A8
	ldr r2, =gBattleMoves
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk63_jumptoattack

	thumb_func_start atk64_statusanimation
atk64_statusanimation: @ 804E9F4
	push {r4,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804EA5C
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r1, =gUnknown_020242AC
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0804EA54
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _0804EA54
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0804EA54
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0804EA54:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0804EA5C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk64_statusanimation

	thumb_func_start atk65_8025D90
atk65_8025D90: @ 804EA84
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804EB04
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r1, [r4]
	ldrb r3, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	orrs r3, r0
	ldr r1, =gUnknown_020242AC
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0804EAFC
	ldr r0, =gUnknown_020242BC
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _0804EAFC
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0804EAFC
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r2, [r0]
	ands r2, r3
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
_0804EAFC:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
_0804EB04:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk65_8025D90

	thumb_func_start atk66_8025E38
atk66_8025E38: @ 804EB2C
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _0804EB9E
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r4, [r4]
	ldrb r2, [r4, 0x3]
	ldrb r0, [r4, 0x4]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r4, 0x5]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r4, 0x6]
	lsls r0, 24
	orrs r2, r0
	ldr r1, =gUnknown_020242AC
	ldrb r3, [r5]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0804EB96
	ldr r0, =gUnknown_020242BC
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _0804EB96
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0804EB96
	ldrb r1, [r4, 0x2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
_0804EB96:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x7
	str r0, [r1]
_0804EB9E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk66_8025E38

	thumb_func_start atk67_8025ECC
atk67_8025ECC: @ 804EBC0
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, =gUnknown_02024332
	ldrb r4, [r5]
	cmp r4, 0
	beq _0804EBD8
	cmp r4, 0x1
	beq _0804EC04
	b _0804EC96
	.pool
_0804EBD8:
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gUnknown_085CCABB
	movs r1, 0xC
	bl battle_show_message_maybe
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	strb r4, [r5, 0x1]
	movs r0, 0
	bl sub_8056B74
	b _0804EC96
	.pool
_0804EC04:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0804EC2A
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _0804EC2A
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r5, 0x1]
	bl sub_8056BAC
	movs r0, 0
	strb r0, [r5, 0x1]
	bl sub_8056B74
_0804EC2A:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0804EC52
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _0804EC52
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_8056B74
_0804EC52:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0804EC70
	ldr r0, =gUnknown_02024332
	movs r4, 0x1
	strb r4, [r0, 0x1]
	b _0804EC7A
	.pool
_0804EC70:
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0804EC96
_0804EC7A:
	movs r0, 0x5
	bl audio_play
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0804EC96:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk67_8025ECC

	thumb_func_start sub_804ECA4
sub_804ECA4: @ 804ECA4
	push {r4,r5,lr}
	movs r1, 0
	ldr r2, =gUnknown_0202406C
	ldr r5, =gUnknown_02024214
	ldrb r0, [r2]
	cmp r1, r0
	bge _0804ECC2
	ldr r4, =gUnknown_0202407A
	movs r3, 0xC
_0804ECB6:
	adds r0, r1, r4
	strb r3, [r0]
	adds r1, 0x1
	ldrb r0, [r2]
	cmp r1, r0
	blt _0804ECB6
_0804ECC2:
	ldr r0, [r5]
	adds r0, 0x1
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804ECA4

	thumb_func_start atk69_8025FE0
atk69_8025FE0: @ 804ECDC
	push {r4-r7,lr}
	ldr r7, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0804ED10
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _0804ED2A
	.pool
_0804ED10:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r6, r0, 24
_0804ED2A:
	ldr r1, =gUnknown_0202420F
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _0804ED68
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _0804ED68
	ldrb r0, [r5]
	movs r1, 0x27
	bl b_history__record_item_x12_of_player
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_0804ED68:
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r4, [r3]
	movs r0, 0x58
	muls r0, r4
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	adds r5, r2, 0
	cmp r1, 0
	bne _0804EE38
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x65
	beq _0804EDBA
	ldr r0, =gUnknown_0202433C
	lsls r1, r4, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	blt _0804EDBA
	ldr r0, =gUnknown_0202437C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0804EE38
_0804EDBA:
	ldrb r0, [r3]
	movs r4, 0x58
	muls r0, r4
	adds r0, r5
	ldrh r1, [r0, 0x28]
	ldr r2, =gBattleMoveDamage
	ldr r0, [r2]
	cmp r1, r0
	bgt _0804EE38
	subs r0, r1, 0x1
	str r0, [r2]
	ldr r1, =gUnknown_0202433C
	ldrb r3, [r3]
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _0804EE10
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0804EE38
	.pool
_0804EE10:
	ldr r0, =gUnknown_0202437C
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0804EE38
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024208
	adds r0, r3, 0
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_0804EE38:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk69_8025FE0

	thumb_func_start atk6A_stash_item_for_side
atk6A_stash_item_for_side: @ 804EE58
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r6, =gUnknown_02024214
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r5, =gUnknown_02024064
	strb r0, [r5]
	ldr r1, =gUnknown_0202449C
	ldrb r4, [r5]
	lsls r0, r4, 1
	adds r0, 0xB8
	ldr r1, [r1]
	adds r1, r0
	ldr r2, =gBattleMons
	movs r3, 0x58
	adds r0, r4, 0
	muls r0, r3
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r2
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldrb r0, [r5]
	muls r0, r3
	adds r2, 0x2E
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
	adds r0, 0x2
	str r0, [r6]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk6A_stash_item_for_side

	thumb_func_start atk6B_end_battle_80261CC
atk6B_end_battle_80261CC: @ 804EEC8
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, =gUnknown_0202406E
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atk6B_end_battle_80261CC

	thumb_func_start atk6C_8026208
atk6C_8026208: @ 804EF04
	push {r4,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024474
	ldrb r1, [r0, 0x1E]
	adds r4, r0, 0
	cmp r1, 0
	bne _0804EF28
	bl sub_804F498
	cmp r0, 0
	beq _0804EF24
	movs r0, 0x3
	b _0804EF26
	.pool
_0804EF24:
	movs r0, 0x1
_0804EF26:
	strb r0, [r4, 0x1E]
_0804EF28:
	ldrb r0, [r4, 0x1E]
	subs r0, 0x1
	cmp r0, 0x9
	bls _0804EF32
	b _0804F0F2
_0804EF32:
	lsls r0, 2
	ldr r1, =_0804EF40
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804EF40:
	.4byte _0804EF68
	.4byte _0804EF94
	.4byte _0804EFAC
	.4byte _0804F000
	.4byte _0804F014
	.4byte _0804F02C
	.4byte _0804F014
	.4byte _0804F04C
	.4byte _0804F07C
	.4byte _0804F0C0
_0804EF68:
	ldr r1, =gUnknown_02022E1E
	movs r0, 0x60
	strh r0, [r1]
	movs r0, 0x2
	movs r1, 0x7
	movs r2, 0
	bl SetBgAttribute
	movs r0, 0x2
	bl ShowBg
	bl sub_804F17C
	ldr r1, =gUnknown_02024474
	movs r0, 0x2
	strb r0, [r1, 0x1E]
	b _0804F0F2
	.pool
_0804EF94:
	bl sub_804F1CC
	lsls r0, 24
	cmp r0, 0
	beq _0804EFA0
	b _0804F0F2
_0804EFA0:
	ldr r1, =gUnknown_02024474
	movs r0, 0x3
	strb r0, [r1, 0x1E]
	b _0804F0F2
	.pool
_0804EFAC:
	ldr r1, =gUnknown_02022E18
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	movs r0, 0
	movs r1, 0x7
	movs r2, 0x1
	bl SetBgAttribute
	movs r0, 0x1
	movs r1, 0x7
	movs r2, 0
	bl SetBgAttribute
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x80
	str r0, [sp]
	movs r0, 0x12
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0x13
	bl sub_8056A3C
	ldr r1, =gUnknown_02024474
	movs r0, 0x4
	strb r0, [r1, 0x1E]
	b _0804F0F2
	.pool
_0804F000:
	bl sub_804F100
	movs r0, 0xD
	bl PutWindowTilemap
	movs r0, 0xD
	movs r1, 0x3
	bl CopyWindowToVram
	b _0804F06A
_0804F014:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _0804F0F2
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _0804F06A
	.pool
_0804F02C:
	ldr r0, =gMain
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	beq _0804F0F2
	movs r0, 0x5
	bl audio_play
	bl sub_804F144
	movs r0, 0xD
	movs r1, 0x2
	bl CopyWindowToVram
	b _0804F06A
	.pool
_0804F04C:
	ldr r0, =gMain
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	beq _0804F0F2
	movs r0, 0x5
	bl audio_play
	movs r0, 0x81
	str r0, [sp]
	movs r0, 0x12
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0x13
	bl sub_8056A3C
_0804F06A:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x1E]
	adds r0, 0x1
	strb r0, [r1, 0x1E]
	b _0804F0F2
	.pool
_0804F07C:
	bl sub_804F344
	lsls r0, 24
	cmp r0, 0
	bne _0804F0F2
	movs r0, 0xE
	bl ClearWindowTilemap
	movs r0, 0xE
	movs r1, 0x1
	bl CopyWindowToVram
	movs r0, 0xD
	bl ClearWindowTilemap
	movs r0, 0xD
	movs r1, 0x1
	bl CopyWindowToVram
	movs r0, 0x2
	movs r1, 0x7
	movs r2, 0x2
	bl SetBgAttribute
	movs r0, 0x2
	bl ShowBg
	ldr r1, =gUnknown_02024474
	movs r0, 0xA
	strb r0, [r1, 0x1E]
	b _0804F0F2
	.pool
_0804F0C0:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0804F0F2
	movs r0, 0
	movs r1, 0x7
	movs r2, 0
	bl SetBgAttribute
	movs r0, 0x1
	movs r1, 0x7
	movs r2, 0x1
	bl SetBgAttribute
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0804F0F2:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk6C_8026208

	thumb_func_start sub_804F100
sub_804F100: @ 804F100
	push {lr}
	sub sp, 0x14
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	add r1, sp, 0x8
	bl sub_81D388C
	ldr r0, =gUnknown_020244A8
	ldr r0, [r0]
	ldr r1, [r0, 0x10]
	movs r0, 0xD
	str r0, [sp]
	movs r0, 0xF
	str r0, [sp, 0x4]
	movs r0, 0xD
	add r2, sp, 0x8
	movs r3, 0xE
	bl sub_81D3640
	add sp, 0x14
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F100

	thumb_func_start sub_804F144
sub_804F144: @ 804F144
	push {lr}
	sub sp, 0x10
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	add r1, sp, 0x4
	bl sub_81D388C
	movs r0, 0xF
	str r0, [sp]
	movs r0, 0xD
	add r1, sp, 0x4
	movs r2, 0xE
	movs r3, 0xD
	bl sub_81D3784
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F144

	thumb_func_start sub_804F17C
sub_804F17C: @ 804F17C
	push {lr}
	ldr r1, =gUnknown_02022E1E
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1C
	movs r2, 0xD0
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, =gUnknown_0831C2C8
	movs r1, 0x60
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =gUnknown_0831C2E8
	movs r0, 0xE
	movs r2, 0
	movs r3, 0
	bl CopyToWindowPixelBuffer
	movs r0, 0xE
	bl PutWindowTilemap
	movs r0, 0xE
	movs r1, 0x3
	bl CopyWindowToVram
	bl sub_804F384
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F17C

	thumb_func_start sub_804F1CC
sub_804F1CC: @ 804F1CC
	push {r4,r5,lr}
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _0804F1DC
	movs r0, 0x1
	b _0804F216
_0804F1DC:
	ldr r4, =gUnknown_02022E1C
	ldrh r1, [r4]
	movs r5, 0x80
	lsls r5, 2
	cmp r1, r5
	bne _0804F1F0
	movs r0, 0
	b _0804F216
	.pool
_0804F1F0:
	movs r0, 0xD0
	lsls r0, 1
	cmp r1, r0
	bne _0804F1FC
	bl sub_804F220
_0804F1FC:
	ldrh r0, [r4]
	adds r0, 0x8
	strh r0, [r4]
	lsls r0, 16
	ldr r1, =0x01ff0000
	cmp r0, r1
	bls _0804F20C
	strh r5, [r4]
_0804F20C:
	ldrh r1, [r4]
	eors r1, r5
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
_0804F216:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_804F1CC

	thumb_func_start sub_804F220
sub_804F220: @ 804F220
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r6, =gUnknown_0202449C
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	movs r5, 0x64
	muls r0, r5
	ldr r4, =gPlayerParty
	adds r0, r4
	movs r1, 0x38
	bl GetMonData
	mov r8, r0
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	bl pokemon_get_gender
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, [r6]
	ldrb r0, [r0, 0x10]
	muls r0, r5
	adds r0, r4
	ldr r5, =gStringVar4
	adds r1, r5, 0
	bl GetMonNickname
	str r5, [sp]
	mov r2, sp
	movs r1, 0
	movs r0, 0xE
	strb r0, [r2, 0x4]
	mov r0, sp
	strb r1, [r0, 0x5]
	movs r4, 0x20
	strb r4, [r0, 0x6]
	strb r1, [r0, 0x7]
	strb r4, [r0, 0x8]
	strb r1, [r0, 0x9]
	strb r1, [r0, 0xA]
	strb r1, [r0, 0xB]
	mov r3, sp
	ldrb r2, [r3, 0xC]
	subs r1, 0x10
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	mov r2, sp
	movs r0, 0x10
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	mov r0, sp
	strb r4, [r0, 0xD]
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	movs r0, 0xF9
	strb r0, [r5]
	adds r5, 0x1
	movs r0, 0x5
	strb r0, [r5]
	adds r5, 0x1
	adds r4, r5, 0
	adds r0, r4, 0
	mov r1, r8
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	subs r4, r5, r4
	movs r2, 0x4
	subs r2, r4
	lsls r2, 16
	lsrs r2, 16
	movs r1, 0x77
	bl StringFill
	adds r5, r0, 0
	cmp r7, 0xFF
	beq _0804F320
	cmp r7, 0
	bne _0804F300
	movs r1, 0
	movs r2, 0xC
	bl WriteColorChangeControlCode
	adds r5, r0, 0
	movs r1, 0x1
	movs r2, 0xD
	bl WriteColorChangeControlCode
	adds r5, r0, 0
	movs r0, 0xB5
	b _0804F318
	.pool
_0804F300:
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0xE
	bl WriteColorChangeControlCode
	adds r5, r0, 0
	movs r1, 0x1
	movs r2, 0xF
	bl WriteColorChangeControlCode
	adds r5, r0, 0
	movs r0, 0xB6
_0804F318:
	strb r0, [r5]
	adds r5, 0x1
	movs r0, 0xFF
	strb r0, [r5]
_0804F320:
	mov r0, sp
	movs r1, 0xA
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	movs r0, 0xE
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_804F220

	thumb_func_start sub_804F344
sub_804F344: @ 804F344
	push {lr}
	ldr r0, =gUnknown_02022E1C
	ldrh r1, [r0]
	movs r3, 0xD0
	lsls r3, 1
	adds r2, r0, 0
	cmp r1, r3
	bne _0804F35C
	movs r0, 0
	b _0804F380
	.pool
_0804F35C:
	ldrh r0, [r2]
	adds r1, r0, 0
	subs r1, 0x10
	ldr r0, =0x0000019f
	cmp r1, r0
	bgt _0804F370
	strh r3, [r2]
	b _0804F372
	.pool
_0804F370:
	strh r1, [r2]
_0804F372:
	ldrh r1, [r2]
	movs r0, 0xD0
	lsls r0, 1
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
_0804F380:
	pop {r1}
	bx r1
	thumb_func_end sub_804F344

	thumb_func_start sub_804F384
sub_804F384: @ 804F384
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x10
	ldr r0, =gUnknown_0202449C
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	movs r6, 0x64
	muls r0, r6
	ldr r5, =gPlayerParty
	adds r0, r5
	movs r1, 0xB
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, 0x10]
	muls r0, r6
	adds r0, r5
	movs r1, 0
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80D2EDC
	str r0, [sp]
	ldr r5, =0xffff0000
	ldr r0, [sp, 0x4]
	ands r0, r5
	movs r1, 0x80
	lsls r1, 2
	orrs r0, r1
	ldr r1, =0x0000ffff
	ands r0, r1
	ldr r1, =0xd75a0000
	orrs r0, r1
	str r0, [sp, 0x4]
	adds r0, r4, 0
	bl sub_80D30B0
	str r0, [sp, 0x8]
	add r4, sp, 0x8
	ldr r0, [r4, 0x4]
	ands r0, r5
	ldr r1, =0x0000d75a
	orrs r0, r1
	str r0, [r4, 0x4]
	mov r0, sp
	bl LoadObjectPic
	adds r0, r4, 0
	bl LoadTaggedObjectPalette
	ldr r0, =gUnknown_0831C3C0
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0xA
	movs r3, 0
	bl AddObjectToFront
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02020630
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0
	strh r0, [r1, 0x2E]
	ldr r0, =gUnknown_02022E1C
	ldrh r0, [r0]
	strh r0, [r1, 0x30]
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F384

	thumb_func_start sub_804F450
sub_804F450: @ 804F450
	push {r4,lr}
	adds r2, r0, 0
	ldr r0, =gUnknown_02022E1C
	ldrh r1, [r2, 0x30]
	ldrh r0, [r0]
	subs r1, r0
	strh r1, [r2, 0x24]
	lsls r1, 16
	cmp r1, 0
	beq _0804F470
	movs r0, 0x1
	strh r0, [r2, 0x2E]
	b _0804F48C
	.pool
_0804F470:
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _0804F48C
	adds r0, r2, 0
	bl RemoveObjectAndFreeTiles
	ldr r4, =0x0000d75a
	adds r0, r4, 0
	bl FreeObjectTilesByTag
	adds r0, r4, 0
	bl FreeObjectPaletteByTag
_0804F48C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F450

	thumb_func_start sub_804F498
sub_804F498: @ 804F498
	push {lr}
	ldr r3, =gUnknown_0202406E
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrb r2, [r0, 0x10]
	cmp r1, r2
	beq _0804F4BA
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0804F4CC
	ldrh r0, [r3, 0x4]
	cmp r0, r2
	bne _0804F4CC
_0804F4BA:
	movs r0, 0x1
	b _0804F4CE
	.pool
_0804F4CC:
	movs r0, 0
_0804F4CE:
	pop {r1}
	bx r1
	thumb_func_end sub_804F498

	thumb_func_start sub_804F4D4
sub_804F4D4: @ 804F4D4
	push {lr}
	bl sub_803F988
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F4D4

	thumb_func_start atk6E_state0_side_becomes_attacker
atk6E_state0_side_becomes_attacker: @ 804F4EC
	push {lr}
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_0202420B
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk6E_state0_side_becomes_attacker

	thumb_func_start atk6F_8026810
atk6F_8026810: @ 804F50C
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk6F_8026810

	thumb_func_start atk70_record_ability_usage_of_side
atk70_record_ability_usage_of_side: @ 804F540
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk70_record_ability_usage_of_side

	thumb_func_start sub_804F574
sub_804F574: @ 804F574
	ldr r2, =gUnknown_02022F68
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x2
	strb r0, [r2, 0x1]
	ldr r0, =gUnknown_020244E2
	ldrh r1, [r0]
	strb r1, [r2, 0x2]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	bx lr
	.pool
	thumb_func_end sub_804F574

	thumb_func_start atk71_80268A0
atk71_80268A0: @ 804F59C
	push {lr}
	bl sub_804F574
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk71_80268A0

	thumb_func_start atk72_flee
atk72_flee: @ 804F5B4
	push {lr}
	ldr r0, =gUnknown_0202420D
	ldrb r0, [r0]
	bl sub_803EC20
	lsls r0, 24
	cmp r0, 0
	beq _0804F5E8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0804F5F0
	.pool
_0804F5E8:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0804F5F0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk72_flee

	thumb_func_start atk73_cmd73
atk73_cmd73: @ 804F5F8
	push {r4-r6,lr}
	ldr r0, =gBattleTypeFlags
	ldr r4, [r0]
	movs r6, 0x1
	ands r4, r6
	cmp r4, 0
	bne _0804F68E
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r1, r2
	ldrh r5, [r1, 0x28]
	movs r0, 0x64
	muls r0, r5
	ldrh r1, [r1, 0x2C]
	bl __divsi3
	cmp r0, 0
	bne _0804F636
	movs r0, 0x1
_0804F636:
	cmp r0, 0x45
	bgt _0804F63E
	cmp r5, 0
	bne _0804F65C
_0804F63E:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB1
	strb r4, [r0]
	b _0804F68E
	.pool
_0804F65C:
	cmp r0, 0x27
	ble _0804F670
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB1
	strb r6, [r0]
	b _0804F68E
	.pool
_0804F670:
	cmp r0, 0x9
	ble _0804F684
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB1
	movs r1, 0x2
	b _0804F68C
	.pool
_0804F684:
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xB1
	movs r1, 0x3
_0804F68C:
	strb r1, [r0]
_0804F68E:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk73_cmd73

	thumb_func_start atk74_hp_tresholds_2
atk74_hp_tresholds_2: @ 804F6A4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gBattleTypeFlags
	ldr r7, [r0]
	movs r0, 0x1
	mov r8, r0
	ands r7, r0
	cmp r7, 0
	bne _0804F73E
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	adds r4, r0, 0
	ldr r0, =gUnknown_02024064
	strb r4, [r0]
	movs r0, 0x1
	eors r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gUnknown_0202449C
	ldr r6, [r1]
	lsrs r0, 23
	adds r0, r6
	adds r0, 0xA8
	ldrb r5, [r0]
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r4, [r0, 0x28]
	subs r1, r5, r4
	movs r0, 0x64
	muls r0, r1
	adds r1, r5, 0
	bl __divsi3
	adds r1, r0, 0
	cmp r4, r5
	bcc _0804F71C
	adds r0, r6, 0
	adds r0, 0xB1
	strb r7, [r0]
	b _0804F73E
	.pool
_0804F71C:
	cmp r0, 0x1D
	bgt _0804F72A
	adds r0, r6, 0
	adds r0, 0xB1
	mov r1, r8
	strb r1, [r0]
	b _0804F73E
_0804F72A:
	cmp r1, 0x45
	bgt _0804F736
	adds r1, r6, 0
	adds r1, 0xB1
	movs r0, 0x2
	b _0804F73C
_0804F736:
	adds r1, r6, 0
	adds r1, 0xB1
	movs r0, 0x3
_0804F73C:
	strb r0, [r1]
_0804F73E:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk74_hp_tresholds_2

	thumb_func_start atk75_8026A58
atk75_8026A58: @ 804F754
	push {lr}
	sub sp, 0x4
	ldr r2, =gUnknown_020244B8
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, =gUnknown_0202406E
	ldrb r0, [r1]
	lsls r0, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
	adds r0, r1
	ldr r1, =gUnknown_02024208
	ldrh r1, [r1]
	lsls r2, 24
	lsrs r2, 24
	movs r3, 0x1
	str r3, [sp]
	movs r3, 0
	bl ExecuteTableBasedItemEffect
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk75_8026A58

	thumb_func_start sub_804F7AC
sub_804F7AC: @ 804F7AC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, 0x2]
	cmp r0, 0x1A
	bls _0804F7CA
	b _0804FD70
_0804F7CA:
	lsls r0, 2
	ldr r1, =_0804F7E0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0804F7E0:
	.4byte _0804F84C
	.4byte _0804F85C
	.4byte _0804F8BC
	.4byte _0804F8CC
	.4byte _0804F8E4
	.4byte _0804F920
	.4byte _0804F958
	.4byte _0804F9E0
	.4byte _0804FA20
	.4byte _0804FACC
	.4byte _0804FAE8
	.4byte _0804FB3C
	.4byte _0804FB94
	.4byte _0804FC18
	.4byte _0804FC2C
	.4byte _0804FC32
	.4byte _0804FC38
	.4byte _0804FC60
	.4byte _0804FC6A
	.4byte _0804FC78
	.4byte _0804FC8C
	.4byte _0804FCC4
	.4byte _0804FCD8
	.4byte _0804FCF0
	.4byte _0804FD1C
	.4byte _0804FD30
	.4byte _0804FD5C
_0804F84C:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl b_cancel_multi_turn_move_maybe
	b _0804FD70
	.pool
_0804F85C:
	ldr r1, =gUnknown_0202420B
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	strb r0, [r1]
	ldrb r0, [r1]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02024294
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r2, r1, r2
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _0804F8A8
	ldr r1, =gBattleMons
	ldrb r2, [r2, 0x9]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0804F8A8
	strb r2, [r4]
	b _0804FD70
	.pool
_0804F8A8:
	ldr r0, =gEnemyMonIndex
	ldr r1, =gUnknown_02024064
	ldrb r1, [r1]
	strb r1, [r0]
	b _0804FD70
	.pool
_0804F8BC:
	bl sub_803BB88
	ldr r1, =gUnknown_02024332
	strb r0, [r1]
	b _0804FD70
	.pool
_0804F8CC:
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	b _0804FD70
	.pool
_0804F8E4:
	ldr r2, =gUnknown_02024280
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	lsls r0, 28
	ldr r2, [r2]
	ands r2, r0
	cmp r2, 0
	beq _0804F914
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1]
	b _0804FD70
	.pool
_0804F914:
	ldr r0, =gUnknown_02024332
	strb r2, [r0]
	b _0804FD70
	.pool
_0804F920:
	ldr r4, =gUnknown_0202437C
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _0804FD70
	.pool
_0804F958:
	ldr r4, =gUnknown_0202406E
	ldr r1, =gUnknown_0202449C
	ldr r0, [r1]
	ldrh r3, [r4]
	ldrb r2, [r0, 0x10]
	adds r6, r1, 0
	cmp r3, r2
	beq _0804F974
	ldrh r0, [r4, 0x4]
	cmp r0, r2
	beq _0804F970
	b _0804FD70
_0804F970:
	cmp r3, r0
	bne _0804F988
_0804F974:
	ldr r1, =gUnknown_02024064
	movs r0, 0
	b _0804F98C
	.pool
_0804F988:
	ldr r1, =gUnknown_02024064
	movs r0, 0x2
_0804F98C:
	strb r0, [r1]
	adds r5, r1, 0
	ldrb r2, [r5]
	lsls r0, r2, 1
	adds r0, 0xC8
	ldr r1, [r6]
	adds r4, r1, r0
	movs r3, 0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	ldrh r2, [r4]
	cmp r0, r2
	beq _0804F9CC
	adds r6, r5, 0
	movs r5, 0x58
	adds r2, r1, 0
_0804F9B4:
	adds r3, 0x1
	cmp r3, 0x3
	bgt _0804F9CC
	lsls r1, r3, 1
	ldrb r0, [r6]
	muls r0, r5
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	ldrh r1, [r4]
	cmp r0, r1
	bne _0804F9B4
_0804F9CC:
	cmp r3, 0x4
	beq _0804F9D2
	b _0804FD70
_0804F9D2:
	movs r0, 0
	strh r0, [r4]
	b _0804FD70
	.pool
_0804F9E0:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0xB
	ands r0, r1
	cmp r0, 0x8
	beq _0804F9EE
	b _0804FD70
_0804F9EE:
	ldr r1, =gBattleMons
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _0804F9F8
	b _0804FD70
_0804F9F8:
	adds r0, r1, 0
	adds r0, 0x80
	ldrh r0, [r0]
	cmp r0, 0
	bne _0804FA04
	b _0804FD70
_0804FA04:
	ldr r0, =gUnknown_02024280
	ldr r1, [r0]
	ldr r2, =0xffbfffff
	ands r1, r2
	str r1, [r0]
	b _0804FD70
	.pool
_0804FA20:
	ldr r2, =gUnknown_02024332
	mov r8, r2
	movs r0, 0
	strb r0, [r2]
	ldr r1, =gUnknown_02024474
	ldr r6, =gUnknown_02024064
	ldrb r0, [r2, 0x1]
	strb r0, [r6]
	strb r0, [r1, 0x17]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r7, r0, 0
	adds r7, 0x92
	ldrb r3, [r7]
	ldr r1, =gBitTable
	ldrb r2, [r6]
	lsls r0, r2, 2
	adds r0, r1
	ldr r5, [r0]
	adds r0, r3, 0
	ands r0, r5
	cmp r0, 0
	beq _0804FA50
	b _0804FD70
_0804FA50:
	ldr r4, =gBattleMons
	movs r0, 0x58
	mov r12, r0
	mov r1, r12
	muls r1, r2
	adds r2, r1, 0
	adds r1, r2, r4
	ldrh r0, [r1, 0x2C]
	lsrs r0, 1
	ldrh r1, [r1, 0x28]
	cmp r0, r1
	bcs _0804FA6A
	b _0804FD70
_0804FA6A:
	cmp r1, 0
	bne _0804FA70
	b _0804FD70
_0804FA70:
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0804FA82
	b _0804FD70
_0804FA82:
	orrs r3, r5
	strb r3, [r7]
	movs r0, 0x1
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r6]
	mov r1, r12
	muls r1, r0
	adds r0, r1, 0
	adds r1, r4, 0
	adds r1, 0x48
	adds r0, r1
	ldr r0, [r0]
	bl GetNatureFromPersonality
	ldr r1, =gUnknown_0831C4F8
	lsls r0, 24
	lsrs r0, 24
	adds r0, r1
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2, 0x5]
	b _0804FD70
	.pool
_0804FACC:
	ldr r4, =gUnknown_02024332
	adds r0, r4, 0
	bl sub_81A5258
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	bne _0804FADE
	b _0804FD78
_0804FADE:
	strb r3, [r4, 0x1]
	b _0804FD70
	.pool
_0804FAE8:
	ldr r0, =gBattleMons
	adds r0, 0x80
	movs r1, 0
	strh r1, [r0]
	ldr r2, =gUnknown_02024280
	ldr r3, =gBitTable
	ldr r1, [r3, 0x4]
	lsls r1, 28
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	ldr r0, =0x000002a1
	adds r2, r0
	ldr r0, =gUnknown_0202406E
	ldrh r0, [r0, 0x2]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_020242BC
	adds r1, 0x34
	ldrb r0, [r1]
	movs r2, 0x2
	b _0804FBF4
	.pool
_0804FB3C:
	ldr r1, =gBattleMons
	movs r0, 0
	strh r0, [r1, 0x28]
	ldr r2, =gUnknown_02024280
	ldr r3, =gBitTable
	ldr r1, [r3]
	lsls r1, 28
	ldr r0, [r2]
	orrs r0, r1
	movs r1, 0x80
	lsls r1, 15
	orrs r0, r1
	str r0, [r2]
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	movs r1, 0xA8
	lsls r1, 2
	adds r2, r1
	ldr r0, =gUnknown_0202406E
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, =gUnknown_020242BC
	ldrb r0, [r2, 0x18]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x18]
	b _0804FD70
	.pool
_0804FB94:
	ldr r0, =gBattleMons
	movs r1, 0
	strh r1, [r0, 0x28]
	adds r0, 0x80
	strh r1, [r0]
	ldr r2, =gUnknown_02024280
	ldr r3, =gBitTable
	ldr r0, [r3]
	lsls r0, 28
	ldr r1, [r2]
	orrs r1, r0
	ldr r0, [r3, 0x4]
	lsls r0, 28
	orrs r1, r0
	movs r0, 0x80
	lsls r0, 15
	orrs r1, r0
	str r1, [r2]
	ldr r5, =gUnknown_0202449C
	ldr r2, [r5]
	movs r0, 0xA8
	lsls r0, 2
	adds r2, r0
	ldr r4, =gUnknown_0202406E
	ldrh r0, [r4]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r5]
	ldr r1, =0x000002a1
	adds r2, r1
	ldrh r0, [r4, 0x2]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_020242BC
	ldrb r0, [r1, 0x18]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1, 0x18]
	adds r1, 0x34
	ldrb r0, [r1]
_0804FBF4:
	orrs r0, r2
	strb r0, [r1]
	b _0804FD70
	.pool
_0804FC18:
	movs r0, 0
	bl sub_8033E10
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804FD70
	.pool
_0804FC2C:
	bl sub_81A5BF8
	b _0804FD70
_0804FC32:
	bl sub_81A5D44
	b _0804FD70
_0804FC38:
	ldr r1, =gUnknown_085CD1C8
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl get_battle_strings_
	ldr r0, =gUnknown_02022E2C
	movs r1, 0x16
	bl battle_show_message_maybe
	b _0804FD70
	.pool
_0804FC60:
	movs r0, 0x16
	bl IsTextPrinterActive
	lsls r0, 16
	b _0804FD24
_0804FC6A:
	bl sub_80A3678
	lsls r0, 24
	cmp r0, 0
	bne _0804FC76
	b _0804FD78
_0804FC76:
	b _0804FD70
_0804FC78:
	ldr r4, =gUnknown_02024064
	movs r0, 0x1
	strb r0, [r4]
	ldr r0, =gBattleMons
	adds r0, 0x58
	b _0804FCA2
	.pool
_0804FC8C:
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r0, 0x3
	bls _0804FD70
	ldr r4, =gUnknown_02024064
	movs r0, 0x3
	strb r0, [r4]
	ldr r0, =gBattleMons
	movs r2, 0x84
	lsls r2, 1
	adds r0, r2
_0804FCA2:
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0804FD70
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x06_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0804FD70
	.pool
_0804FCC4:
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x55
	bl m4aMPlayVolumeControl
	b _0804FD70
	.pool
_0804FCD8:
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	b _0804FD70
	.pool
_0804FCF0:
	ldr r0, =gUnknown_0202449C
	ldr r2, [r0]
	ldr r0, =0x000002a2
	adds r2, r0
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _0804FD70
	.pool
_0804FD1C:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl sub_805725C
_0804FD24:
	cmp r0, 0
	bne _0804FD78
	b _0804FD70
	.pool
_0804FD30:
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0804FD50
	ldr r1, =gUnknown_0202433A
	movs r0, 0x5
	strb r0, [r1]
	b _0804FD70
	.pool
_0804FD50:
	ldr r1, =gUnknown_0202433A
	movs r0, 0xA
	strb r0, [r1]
	b _0804FD70
	.pool
_0804FD5C:
	movs r1, 0xCE
	lsls r1, 1
	movs r0, 0
	movs r2, 0x1
	bl sub_8034300
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_0804FD70:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
_0804FD78:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_804F7AC

	thumb_func_start atk77_setprotect
atk77_setprotect: @ 804FD8C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0x1
	ldr r2, =gUnknown_02024260
	ldr r1, =gUnknown_0202420B
	ldrb r3, [r1]
	lsls r0, r3, 1
	adds r0, r2
	ldrh r0, [r0]
	mov r8, r1
	ldr r7, =gUnknown_020242BC
	cmp r0, 0xB6
	beq _0804FDBC
	cmp r0, 0xC5
	beq _0804FDBC
	cmp r0, 0xCB
	beq _0804FDBC
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	strb r1, [r0, 0x8]
_0804FDBC:
	ldr r0, =gUnknown_02024082
	ldrb r1, [r0]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	bne _0804FDCC
	movs r6, 0
_0804FDCC:
	ldr r2, =gUnknown_0831C3D8
	mov r5, r8
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r4, [r0, 0x8]
	lsls r4, 1
	adds r4, r2
	bl Random
	ldrh r1, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r1, r0
	bcc _0804FE80
	cmp r6, 0
	beq _0804FE80
	ldr r4, =gBattleMoves
	ldr r3, =gUnknown_020241EA
	ldrh r0, [r3]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	cmp r0, 0x6F
	bne _0804FE1C
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x1
	orrs r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
_0804FE1C:
	ldrh r0, [r3]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	cmp r0, 0x74
	bne _0804FE42
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
_0804FE42:
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r0, [r1, 0x8]
	adds r0, 0x1
	strb r0, [r1, 0x8]
	b _0804FEA2
	.pool
_0804FE80:
	ldr r2, =gUnknown_020242BC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x8]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
_0804FEA2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk77_setprotect

	thumb_func_start atk78_faintifabilitynotdamp
atk78_faintifabilitynotdamp: @ 804FEC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gUnknown_02024068
	ldr r2, [r0]
	cmp r2, 0
	bne _0804FFCC
	ldr r1, =gEnemyMonIndex
	strb r2, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r0]
	adds r5, r1, 0
	mov r8, r0
	ldr r6, =gBattleMons
	cmp r2, r3
	bcs _0804FF14
	adds r0, r6, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x6
	beq _0804FF14
	adds r2, r3, 0
	adds r4, r6, 0
	movs r3, 0x58
_0804FEF8:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r2
	bcs _0804FF14
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x6
	bne _0804FEF8
_0804FF14:
	ldrb r0, [r5]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804FFB0
	ldr r4, =gUnknown_02024064
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	strb r0, [r4]
	ldr r2, =gBattleMoveDamage
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r6
	ldrh r0, [r0, 0x28]
	str r0, [r2]
	ldr r1, =0x00007fff
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	movs r0, 0
	strb r0, [r5]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0
	beq _0804FFCC
	adds r3, r5, 0
	ldrb r5, [r7]
	ldr r7, =gBitTable
	adds r4, r0, 0
	ldr r6, =gUnknown_02024210
_0804FF60:
	ldrb r2, [r3]
	cmp r2, r5
	beq _0804FF76
	ldrb r0, [r6]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r7
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	beq _0804FFCC
_0804FF76:
	adds r0, r2, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcc _0804FF60
	b _0804FFCC
	.pool
_0804FFB0:
	ldr r1, =gUnknown_0202420A
	movs r0, 0x6
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, 0x58
	muls r1, r0
	adds r1, r6
	adds r1, 0x20
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB560
	str r0, [r1]
_0804FFCC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk78_faintifabilitynotdamp

	thumb_func_start atk79_setuserhptozero
atk79_setuserhptozero: @ 804FFE4
	push {r4,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024068
	ldr r3, [r0]
	cmp r3, 0
	bne _08050028
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, =gBattleMons
	ldrb r0, [r4]
	movs r2, 0x58
	muls r0, r2
	adds r0, r1
	strh r3, [r0, 0x28]
	ldrb r0, [r4]
	muls r0, r2
	adds r1, 0x28
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2A
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08050028:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk79_setuserhptozero

	thumb_func_start sub_8050044
sub_8050044: @ 8050044
	push {r4-r7,lr}
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r4, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r4, r0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	adds r7, r3, 0
	cmp r0, 0
	beq _080500DC
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r2, =gUnknown_0202420B
	lsls r1, 24
	lsrs r1, 24
	adds r3, r0, 0
	ldr r6, =gUnknown_02024210
	ldr r5, =gBitTable
	ldr r0, =gUnknown_0202406C
	mov r12, r0
	ldrb r0, [r2]
	cmp r1, r0
	bne _0805009A
_0805008A:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r2]
	cmp r0, r1
	beq _0805008A
_0805009A:
	ldrb r0, [r6]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0805008A
	ldrb r0, [r3]
	mov r2, r12
	ldrb r2, [r2]
	cmp r0, r2
	bcc _080500D8
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	b _080500E0
	.pool
_080500D8:
	str r4, [r7]
	b _080500E0
_080500DC:
	adds r0, r2, 0x5
	str r0, [r3]
_080500E0:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8050044

	thumb_func_start sub_80500E8
sub_80500E8: @ 80500E8
	push {r4-r6,lr}
	ldr r4, =gUnknown_02024214
	ldr r1, [r4]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldrb r0, [r1, 0x5]
	ldr r3, =gEnemyMonIndex
	cmp r0, 0x1
	bne _08050110
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r3]
_08050110:
	ldr r1, =gBattleMoveDamage
	ldr r6, =gBattleMons
	ldrb r0, [r3]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r1]
	cmp r0, 0
	bne _0805012A
	movs r0, 0x1
	str r0, [r1]
_0805012A:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldrb r0, [r3]
	muls r0, r5
	adds r0, r6
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	bne _08050158
	str r2, [r4]
	b _0805015E
	.pool
_08050158:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_0805015E:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80500E8

	thumb_func_start sub_8050164
sub_8050164: @ 8050164
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	ldr r2, =gUnknown_0202406C
	ldr r0, =gUnknown_0202420B
	mov r10, r0
	movs r1, 0
	add r0, sp, 0x4
_0805017A:
	strh r1, [r0]
	subs r0, 0x2
	cmp r0, sp
	bge _0805017A
	movs r1, 0
	mov r8, r1
	movs r5, 0
	ldrb r1, [r2]
	cmp r5, r1
	bge _080501D0
	ldr r0, =gUnknown_0202420B
	ldrb r6, [r0]
	ldr r2, =0x0000ffff
	mov r9, r2
	lsls r4, r6, 3
	mov r2, sp
	ldr r0, =gUnknown_0202449C
	mov r12, r0
	adds r7, r1, 0
_080501A0:
	cmp r5, r6
	beq _080501C8
	mov r1, r12
	ldr r0, [r1]
	adds r0, r4, r0
	adds r1, r0, 0
	adds r1, 0xE0
	ldrb r3, [r1]
	adds r0, 0xE1
	ldrb r0, [r0]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	beq _080501C8
	cmp r3, r9
	beq _080501C8
	strh r3, [r2]
	adds r2, 0x2
	movs r0, 0x1
	add r8, r0
_080501C8:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, r7
	blt _080501A0
_080501D0:
	mov r1, r10
	ldrb r0, [r1]
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r1, r0, 0
	adds r1, 0x98
	ldrb r3, [r1]
	adds r0, 0x99
	ldrb r0, [r0]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	beq _08050220
	ldr r0, =0x0000ffff
	cmp r3, r0
	beq _08050220
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, =gUnknown_020241EA
	strh r3, [r4]
	b _0805024A
	.pool
_08050220:
	mov r0, r8
	cmp r0, 0
	beq _08050290
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	mov r1, r8
	bl __modsi3
	adds r5, r0, 0
	ldr r4, =gUnknown_020241EA
	lsls r0, r5, 1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_0805024A:
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r5, =gUnknown_02024214
	ldr r3, =gUnknown_082D86A8
	ldr r2, =gBattleMoves
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r5]
	b _080502AE
	.pool
_08050290:
	ldr r2, =gUnknown_0202437C
	mov r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_080502AE:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8050164

	thumb_func_start sub_80502C8
sub_80502C8: @ 80502C8
	push {lr}
	ldr r2, =gBattleWeather
	ldrh r0, [r2]
	movs r1, 0x7
	ands r1, r0
	cmp r1, 0
	beq _080502F4
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08050304
	.pool
_080502F4:
	movs r0, 0x1
	strh r0, [r2]
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x28
	movs r1, 0x5
	strb r1, [r0]
_08050304:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80502C8

	thumb_func_start atk7E_setreflect
atk7E_setreflect: @ 805031C
	push {r4-r6,lr}
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	bl battle_get_per_side_status
	ldr r4, =gUnknown_0202428E
	movs r5, 0x1
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r1, [r1]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _0805035C
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0
	b _080503D0
	.pool
_0805035C:
	ldrb r0, [r6]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r0, [r1]
	movs r2, 0x1
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r6]
	bl battle_get_per_side_status
	ldr r4, =gUnknown_02024294
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x5
	strb r1, [r0]
	ldrb r0, [r6]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r6]
	strb r1, [r0, 0x1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	beq _080503CC
	movs r0, 0x1
	bl sub_8069DEC
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _080503CC
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
	b _080503D2
	.pool
_080503CC:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
_080503D0:
	strb r0, [r1, 0x5]
_080503D2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk7E_setreflect

	thumb_func_start sub_80503E8
sub_80503E8: @ 80503E8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r7, =gBattleMoveFlags
	ldrb r5, [r7]
	movs r0, 0x29
	ands r0, r5
	cmp r0, 0
	bne _0805041A
	ldr r0, =gUnknown_020242AC
	mov r9, r0
	ldr r1, =gEnemyMonIndex
	mov r8, r1
	ldrb r4, [r1]
	lsls r0, r4, 2
	mov r2, r9
	adds r6, r0, r2
	ldr r2, [r6]
	movs r0, 0x4
	mov r12, r0
	adds r3, r2, 0
	ands r3, r0
	cmp r3, 0
	beq _08050438
_0805041A:
	movs r0, 0x1
	orrs r0, r5
	strb r0, [r7]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08050488
	.pool
_08050438:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r1, r0, r1
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xC
	beq _08050454
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xC
	bne _0805046C
_08050454:
	movs r0, 0x1
	orrs r0, r5
	strb r0, [r7]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08050488
	.pool
_0805046C:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	orrs r2, r0
	str r2, [r6]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, 2
	add r1, r9
	ldr r0, [r1]
	mov r2, r12
	orrs r0, r2
	str r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
_08050488:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80503E8

	thumb_func_start atk80_manipulatedamage
atk80_manipulatedamage: @ 80504A8
	push {r4,lr}
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	ldrb r2, [r0, 0x1]
	adds r4, r1, 0
	cmp r2, 0x1
	beq _080504D8
	cmp r2, 0x1
	bgt _080504C4
	cmp r2, 0
	beq _080504CA
	b _08050518
	.pool
_080504C4:
	cmp r2, 0x2
	beq _08050510
	b _08050518
_080504CA:
	ldr r1, =gBattleMoveDamage
	ldr r0, [r1]
	negs r0, r0
	b _08050516
	.pool
_080504D8:
	ldr r3, =gBattleMoveDamage
	ldr r0, [r3]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	str r0, [r3]
	cmp r0, 0
	bne _080504EA
	str r2, [r3]
_080504EA:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2C]
	lsrs r1, r0, 1
	ldr r0, [r3]
	cmp r1, r0
	bge _08050518
	str r1, [r3]
	b _08050518
	.pool
_08050510:
	ldr r1, =gBattleMoveDamage
	ldr r0, [r1]
	lsls r0, 1
_08050516:
	str r0, [r1]
_08050518:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk80_manipulatedamage

	thumb_func_start atk81_setrest
atk81_setrest: @ 8050528
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r0, =gUnknown_02024214
	mov r12, r0
	ldr r1, [r0]
	ldrb r6, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r6, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r6, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r6, r0
	ldr r5, =gUnknown_02024064
	ldr r2, =gEnemyMonIndex
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r5]
	ldr r4, =gBattleMoveDamage
	ldr r1, =gBattleMons
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	adds r0, r1
	ldrh r0, [r0, 0x2C]
	negs r0, r0
	str r0, [r4]
	ldrb r0, [r2]
	adds r4, r0, 0
	muls r4, r3
	adds r0, r4, r1
	ldrh r3, [r0, 0x28]
	adds r7, r5, 0
	adds r5, r2, 0
	adds r2, r1, 0
	ldrh r0, [r0, 0x2C]
	cmp r3, r0
	bne _08050598
	mov r0, r12
	str r6, [r0]
	b _080505E8
	.pool
_08050598:
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0xF8
	ands r1, r0
	cmp r1, 0
	beq _080505B4
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _080505B8
	.pool
_080505B4:
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
_080505B8:
	ldrb r0, [r5]
	movs r3, 0x58
	muls r0, r3
	adds r2, 0x4C
	adds r0, r2
	movs r1, 0x3
	str r1, [r0]
	ldrb r0, [r7]
	muls r0, r3
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080505E8:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk81_setrest

	thumb_func_start atk82_jumpifnotfirstturn
atk82_jumpifnotfirstturn: @ 80505F8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r4, [r5]
	ldrb r3, [r4, 0x1]
	ldrb r0, [r4, 0x2]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r4, 0x3]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r4, 0x4]
	lsls r0, 24
	orrs r3, r0
	ldr r2, =gUnknown_020242BC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x16]
	cmp r0, 0
	beq _08050638
	adds r0, r4, 0x5
	str r0, [r5]
	b _0805063A
	.pool
_08050638:
	str r3, [r5]
_0805063A:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end atk82_jumpifnotfirstturn

	thumb_func_start sub_8050640
sub_8050640: @ 8050640
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8050640

	thumb_func_start sub_8050650
sub_8050650: @ 8050650
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r3, r0, 24
	movs r2, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	mov r8, r0
	cmp r2, r1
	bge _080506C4
	ldr r0, =gBattleMons
	mov r12, r0
	movs r0, 0x58
	muls r0, r3
	add r0, r12
	adds r5, r0, 0
	adds r5, 0x20
	adds r4, r1, 0
	movs r3, 0
	ldr r6, =gUnknown_02024474
	ldr r7, =gUnknown_02024332
_0805067C:
	mov r0, r12
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	beq _080506BC
	ldrb r0, [r5]
	cmp r0, 0x2B
	beq _080506BC
	movs r3, 0
	strb r2, [r6, 0x17]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _080506DC
	cmp r0, r2
	beq _080506D0
	movs r0, 0x1
	strb r0, [r7, 0x5]
	b _080506C4
	.pool
_080506BC:
	adds r3, 0x58
	adds r2, 0x1
	cmp r2, r4
	blt _0805067C
_080506C4:
	mov r1, r8
	ldrb r1, [r1]
	cmp r2, r1
	beq _080506E0
	movs r0, 0x1
	b _080506E2
_080506D0:
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
	b _080506C4
	.pool
_080506DC:
	strb r2, [r1]
	b _080506C4
_080506E0:
	movs r0, 0
_080506E2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8050650

	thumb_func_start sub_80506EC
sub_80506EC: @ 80506EC
	push {r4-r6,lr}
	ldr r5, =gUnknown_02024214
	ldr r1, [r5]
	ldrb r4, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r4, r0
	ldr r6, =gEnemyMonIndex
	ldrb r0, [r6]
	bl sub_8050650
	lsls r0, 24
	cmp r0, 0
	beq _08050720
	str r4, [r5]
	b _08050762
	.pool
_08050720:
	ldr r1, =gBattleMons
	ldrb r3, [r6]
	movs r0, 0x58
	muls r0, r3
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, r0, 0
	cmp r1, 0xF
	beq _08050738
	cmp r1, 0x48
	bne _0805075C
_08050738:
	ldr r2, =gUnknown_0202420A
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	str r4, [r5]
	ldrb r1, [r2]
	adds r0, r3, 0
	bl b_history__record_ability_usage_of_player
	b _08050762
	.pool
_0805075C:
	ldr r0, [r5]
	adds r0, 0x5
	str r0, [r5]
_08050762:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80506EC

	thumb_func_start sub_8050768
sub_8050768: @ 8050768
	push {r4,r5,lr}
	ldr r5, =gUnknown_020242BC
	ldr r4, =gUnknown_0202420B
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r5
	ldrb r0, [r1, 0x9]
	cmp r0, 0x3
	bne _080507A0
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _080507CA
	.pool
_080507A0:
	adds r0, 0x1
	movs r3, 0
	strb r0, [r1, 0x9]
	ldr r2, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x1
	strb r0, [r2, 0x1]
	strb r0, [r2, 0x2]
	strb r0, [r2, 0x3]
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x9]
	strb r0, [r2, 0x4]
	movs r0, 0xFF
	strb r0, [r2, 0x5]
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
_080507CA:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8050768

	thumb_func_start atk86_stockpiletobasedamage
atk86_stockpiletobasedamage: @ 80507E4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r3, =gUnknown_02024214
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldr r7, =gUnknown_020242BC
	ldr r6, =gUnknown_0202420B
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0x9]
	cmp r0, 0
	bne _08050828
	str r2, [r3]
	b _080508CA
	.pool
_08050828:
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _080508B0
	ldr r0, =gBattleMoveDamage
	mov r8, r0
	ldr r4, =gUnknown_0202428E
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldrb r0, [r6]
	movs r4, 0x58
	muls r0, r4
	ldr r2, =gBattleMons
	adds r0, r2
	ldrb r1, [r5]
	muls r1, r4
	adds r1, r2
	ldr r2, =gUnknown_020241EA
	ldrh r2, [r2]
	movs r4, 0
	str r4, [sp]
	str r4, [sp, 0x4]
	ldrb r4, [r6]
	str r4, [sp, 0x8]
	ldrb r4, [r5]
	str r4, [sp, 0xC]
	bl sub_806957C
	ldrb r2, [r6]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r7
	ldrb r1, [r1, 0x9]
	adds r3, r0, 0
	muls r3, r1
	mov r1, r8
	str r3, [r1]
	ldr r2, =gUnknown_02024474
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0x9]
	strb r0, [r2, 0x18]
	ldr r1, =gUnknown_0202433C
	ldrb r0, [r6]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _080508B0
	lsls r0, r3, 4
	subs r0, r3
	movs r1, 0xA
	bl __divsi3
	mov r1, r8
	str r0, [r1]
_080508B0:
	ldr r2, =gUnknown_020242BC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x9]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080508CA:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk86_stockpiletobasedamage

	thumb_func_start atk87_stockpiletohprecovery
atk87_stockpiletohprecovery: @ 8050904
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, =gUnknown_02024214
	ldr r1, [r7]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldr r0, =gUnknown_020242BC
	mov r8, r0
	ldr r6, =gUnknown_0202420B
	ldrb r3, [r6]
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4, 0x9]
	cmp r1, 0
	bne _08050954
	str r2, [r7]
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
	b _080509D0
	.pool
_08050954:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, r0, r1
	ldrh r0, [r1, 0x2C]
	ldrh r3, [r1, 0x28]
	cmp r0, r3
	bne _08050984
	movs r0, 0
	strb r0, [r4, 0x9]
	str r2, [r7]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _080509D0
	.pool
_08050984:
	ldr r5, =gBattleMoveDamage
	ldrh r0, [r1, 0x2C]
	ldrb r1, [r4, 0x9]
	movs r2, 0x3
	subs r2, r1
	movs r4, 0x1
	adds r1, r4, 0
	lsls r1, r2
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _080509A0
	str r4, [r5]
_080509A0:
	ldr r0, [r5]
	negs r0, r0
	str r0, [r5]
	ldr r3, =gUnknown_02024474
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x9]
	movs r2, 0
	strb r0, [r3, 0x18]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	strb r2, [r0, 0x9]
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r6]
	strb r0, [r1]
_080509D0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk87_stockpiletohprecovery

	thumb_func_start atk88_negativedamage
atk88_negativedamage: @ 80509E8
	push {lr}
	ldr r2, =gBattleMoveDamage
	ldr r0, =gUnknown_020241F4
	ldr r0, [r0]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	negs r0, r0
	str r0, [r2]
	cmp r0, 0
	bne _08050A04
	movs r0, 0x1
	negs r0, r0
	str r0, [r2]
_08050A04:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk88_negativedamage

	thumb_func_start sub_8050A1C
sub_8050A1C: @ 8050A1C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r3
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	movs r0, 0
	mov r9, r0
	mov r10, r0
	movs r0, 0x40
	ands r0, r5
	cmp r0, 0
	beq _08050A50
	ldr r0, =gUnknown_02024064
	ldr r1, =gUnknown_0202420B
	b _08050A54
	.pool
_08050A50:
	ldr r0, =gUnknown_02024064
	ldr r1, =gEnemyMonIndex
_08050A54:
	ldrb r1, [r1]
	strb r1, [r0]
	movs r0, 0xBF
	ands r5, r0
	movs r0, 0x80
	ands r0, r5
	cmp r0, 0
	beq _08050A6E
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08050A6E:
	movs r0, 0x7F
	ands r5, r0
	movs r0, 0x20
	ands r0, r5
	cmp r0, 0
	beq _08050A84
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
_08050A84:
	movs r0, 0xDF
	ands r5, r0
	ldr r1, =gUnknown_02022F58
	movs r4, 0
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	strb r7, [r1, 0x2]
	movs r3, 0x1
	negs r3, r3
	mov r12, r3
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	lsls r0, r6, 24
	cmp r0, 0
	blt _08050AA8
	b _08050D8C
_08050AA8:
	ldr r4, =gUnknown_02024294
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	beq _08050B48
	mov r2, r9
	cmp r2, 0
	bne _08050B48
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08050B78
	cmp r5, 0x1
	bne _08050B68
	ldr r4, =gUnknown_0202437C
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 31
	cmp r0, 0
	beq _08050B10
	ldr r0, =gUnknown_02024214
	mov r4, r8
	str r4, [r0]
	b _08050B68
	.pool
_08050B10:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024474
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	strb r0, [r1, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAE03
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08050B68
	.pool
_08050B48:
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08050B78
	mov r0, r10
	cmp r0, 0x1
	beq _08050B78
	movs r0, 0
	bl sub_80464AC
	lsls r0, 24
	cmp r0, 0
	beq _08050B78
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D9F1C
	str r0, [r1]
_08050B68:
	movs r0, 0x1
	b _08050E80
	.pool
_08050B78:
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_02024064
	ldrb r3, [r1]
	movs r4, 0x58
	adds r0, r3, 0
	muls r0, r4
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, 0x1D
	beq _08050B94
	cmp r0, 0x49
	bne _08050C2C
_08050B94:
	mov r0, r9
	cmp r0, 0
	bne _08050C2C
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08050C2C
	cmp r5, 0x1
	bne _08050B68
	ldr r4, =gUnknown_0202437C
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _08050BD4
	ldr r0, =gUnknown_02024214
	mov r1, r8
	str r1, [r0]
	b _08050B68
	.pool
_08050BD4:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024474
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	strb r0, [r1, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5C7
	str r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r2]
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	ldr r6, =gUnknown_02024064
	ldrb r1, [r6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08050B68
	.pool
_08050C2C:
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	movs r4, 0x58
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x33
	bne _08050C8C
	mov r2, r9
	cmp r2, 0
	bne _08050C8C
	cmp r7, 0x6
	bne _08050C8C
	cmp r5, 0x1
	bne _08050B68
	mov r0, r8
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024474
	ldr r3, =gUnknown_02024064
	ldrb r0, [r3]
	strb r0, [r1, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB62F
	str r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r3]
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r3]
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	b _08050B68
	.pool
_08050C8C:
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	movs r4, 0x58
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x34
	bne _08050CF0
	mov r0, r9
	cmp r0, 0
	bne _08050CF0
	cmp r7, 0x1
	bne _08050CF0
	cmp r5, 0x1
	beq _08050CAE
	b _08050B68
_08050CAE:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024474
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	strb r0, [r1, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB62F
	str r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r2]
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r2]
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	b _08050B68
	.pool
_08050CF0:
	ldr r3, =gUnknown_02024064
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x13
	bne _08050D08
	cmp r5, 0
	bne _08050D08
	b _08050B68
_08050D08:
	lsls r0, r6, 24
	asrs r0, 28
	movs r1, 0x7
	ands r0, r1
	negs r0, r0
	lsls r0, 24
	ldr r3, =gUnknown_02022F68
	movs r4, 0
	movs r1, 0xFD
	strb r1, [r3]
	movs r2, 0x1
	lsrs r6, r0, 24
	asrs r0, 24
	subs r1, 0xFF
	cmp r0, r1
	bne _08050D32
	strb r4, [r3, 0x1]
	movs r0, 0xD3
	strb r0, [r3, 0x2]
	strb r4, [r3, 0x3]
	movs r2, 0x4
_08050D32:
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xD4
	strb r0, [r1]
	adds r2, 0x1
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xFF
	strb r0, [r1]
	ldr r4, =gUnknown_02024064
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r7, r0
	mov r1, r10
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _08050DE2
	movs r1, 0
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	ldr r3, =gUnknown_02024332
	mov r8, r3
	cmp r0, r2
	bne _08050D76
	movs r1, 0x1
_08050D76:
	mov r4, r8
	strb r1, [r4, 0x5]
	b _08050E10
	.pool
_08050D8C:
	asrs r6, r0, 28
	movs r0, 0x7
	ands r6, r0
	ldr r3, =gUnknown_02022F68
	strb r2, [r3]
	movs r2, 0x1
	cmp r6, 0x2
	bne _08050DA6
	strb r4, [r3, 0x1]
	movs r0, 0xD1
	strb r0, [r3, 0x2]
	strb r4, [r3, 0x3]
	movs r2, 0x4
_08050DA6:
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xD2
	strb r0, [r1]
	adds r2, 0x1
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	ldrb r0, [r1]
	mov r2, r12
	orrs r0, r2
	strb r0, [r1]
	ldr r2, =gBattleMons
	ldr r4, =gUnknown_02024064
	ldrb r3, [r4]
	movs r0, 0x58
	muls r0, r3
	adds r0, r7, r0
	adds r1, r2, 0
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	mov r10, r2
	cmp r0, 0xC
	bne _08050DFC
_08050DE2:
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	mov r8, r1
	b _08050E10
	.pool
_08050DFC:
	movs r1, 0
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	ldr r2, =gUnknown_02024332
	mov r8, r2
	cmp r0, r3
	bne _08050E0C
	movs r1, 0x1
_08050E0C:
	mov r3, r8
	strb r1, [r3, 0x5]
_08050E10:
	ldr r2, =gUnknown_02024064
	ldrb r0, [r2]
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r1, r7, r1
	mov r3, r10
	adds r3, 0x18
	adds r1, r3
	lsls r0, r6, 24
	asrs r0, 24
	ldrb r6, [r1]
	adds r0, r6
	strb r0, [r1]
	ldrb r0, [r2]
	muls r0, r4
	adds r0, r7, r0
	adds r1, r0, r3
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0
	bge _08050E40
	movs r0, 0
	strb r0, [r1]
_08050E40:
	ldr r1, =gUnknown_02024064
	ldrb r0, [r1]
	muls r0, r4
	adds r0, r7, r0
	adds r1, r0, r3
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0xC
	ble _08050E56
	movs r0, 0xC
	strb r0, [r1]
_08050E56:
	mov r2, r8
	ldrb r0, [r2, 0x5]
	cmp r0, 0x2
	bne _08050E7E
	movs r3, 0x1
	ands r3, r5
	cmp r3, 0
	beq _08050E70
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
_08050E70:
	mov r4, r8
	ldrb r0, [r4, 0x5]
	cmp r0, 0x2
	bne _08050E7E
	cmp r3, 0
	bne _08050E7E
	b _08050B68
_08050E7E:
	movs r0, 0
_08050E80:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8050A1C

	thumb_func_start atk89_statbuffchange
atk89_statbuffchange: @ 8050EA0
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r2, [r5]
	ldrb r3, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r3, r0
	ldr r0, =gUnknown_02024474
	ldrb r4, [r0, 0x1A]
	movs r0, 0xF0
	ands r0, r4
	lsls r0, 24
	asrs r0, 24
	movs r1, 0xF
	ands r1, r4
	ldrb r2, [r2, 0x1]
	bl sub_8050A1C
	lsls r0, 24
	cmp r0, 0
	bne _08050EDC
	ldr r0, [r5]
	adds r0, 0x6
	str r0, [r5]
_08050EDC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk89_statbuffchange

	thumb_func_start atk8A_normalisebuffs
atk8A_normalisebuffs: @ 8050EEC
	push {r4-r7,lr}
	movs r2, 0
	ldr r0, =gUnknown_0202406C
	ldrb r1, [r0]
	ldr r0, =gUnknown_02024214
	mov r12, r0
	cmp r2, r1
	bge _08050F24
	ldr r0, =gBattleMons
	movs r4, 0x6
	adds r5, r1, 0
	movs r7, 0x58
	adds r6, r0, 0
	adds r6, 0x18
_08050F08:
	adds r3, r2, 0x1
	movs r1, 0x7
	adds r0, r2, 0
	muls r0, r7
	adds r0, r6
	adds r0, 0x7
_08050F14:
	strb r4, [r0]
	subs r0, 0x1
	subs r1, 0x1
	cmp r1, 0
	bge _08050F14
	adds r2, r3, 0
	cmp r2, r5
	blt _08050F08
_08050F24:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk8A_normalisebuffs

	thumb_func_start atk8B_setbide
atk8B_setbide: @ 8050F40
	push {r4,r5,lr}
	ldr r4, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	movs r5, 0x58
	adds r2, r0, 0
	muls r2, r5
	adds r4, 0x50
	adds r2, r4
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024268
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	ldrh r1, [r1]
	movs r2, 0
	strh r1, [r0]
	ldr r1, =gUnknown_020241F8
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	str r2, [r0]
	ldrb r0, [r3]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 2
	orrs r0, r2
	str r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk8B_setbide

	thumb_func_start atk8C_confuseifrepeatingattackends
atk8C_confuseifrepeatingattackends: @ 8050FB0
	push {lr}
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0xC0
	lsls r1, 4
	ands r0, r1
	cmp r0, 0
	bne _08050FD2
	ldr r1, =gUnknown_02024332
	movs r0, 0x75
	strb r0, [r1, 0x3]
_08050FD2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk8C_confuseifrepeatingattackends

	thumb_func_start atk8D_setloopcounter
atk8D_setloopcounter: @ 8050FF0
	push {r4,r5,lr}
	ldr r0, =gUnknown_02024214
	ldr r0, [r0]
	ldrb r1, [r0, 0x1]
	cmp r1, 0
	beq _0805100C
	ldr r0, =gUnknown_02024212
	strb r1, [r0]
	b _08051026
	.pool
_0805100C:
	ldr r4, =gUnknown_02024212
	bl Random
	movs r5, 0x3
	ands r0, r5
	strb r0, [r4]
	cmp r0, 0x1
	bls _08051022
	bl Random
	ands r0, r5
_08051022:
	adds r0, 0x2
	strb r0, [r4]
_08051026:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk8D_setloopcounter

	thumb_func_start atk8E_cmd8e
atk8E_cmd8e: @ 805103C
	ldr r1, =gUnknown_02024474
	movs r2, 0
	movs r0, 0xFD
	strb r0, [r1, 0x8]
	movs r0, 0x1
	strb r0, [r1, 0x9]
	strb r0, [r1, 0xA]
	strb r0, [r1, 0xB]
	strb r2, [r1, 0xC]
	movs r0, 0xFF
	strb r0, [r1, 0xD]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atk8E_cmd8e

	thumb_func_start sub_8051064
sub_8051064: @ 8051064
	push {r4-r7,lr}
	ldr r6, =gBattleMons
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	adds r1, r6
	adds r1, 0x2A
	ldr r4, =gEnemyMonIndex
	ldrb r3, [r4]
	adds r0, r3, 0
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080510AC
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, r3, r1
	adds r1, 0x58
	ldr r2, =gUnknown_0202406E
	lsls r0, r3, 1
	b _08051108
	.pool
_080510AC:
	bl Random
	movs r3, 0xFF
	ands r3, r0
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r2, [r0]
	ldrb r4, [r4]
	adds r0, r4, 0
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r0]
	adds r2, r1
	adds r0, r3, 0
	muls r0, r2
	asrs r0, 8
	adds r0, 0x1
	lsrs r1, 2
	cmp r0, r1
	bhi _080510FC
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	movs r0, 0
	b _08051116
	.pool
_080510FC:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, r4, r1
	adds r1, 0x58
	ldr r2, =gUnknown_0202406E
	lsls r0, r4, 1
_08051108:
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DADD8
	str r0, [r1]
	movs r0, 0x1
_08051116:
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8051064

	thumb_func_start sub_805112C
sub_805112C: @ 805112C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r5, =gBattleTypeFlags
	ldr r0, [r5]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0805114A
	b _08051410
_0805114A:
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gEnemyParty
	str r1, [sp]
	cmp r0, 0
	bne _08051160
	ldr r0, =gPlayerParty
	str r0, [sp]
_08051160:
	ldr r2, [r5]
	movs r1, 0x81
	lsls r1, 1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	beq _08051182
	ldr r1, =0x02000100
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	beq _08051182
	movs r0, 0x80
	lsls r0, 15
	ands r0, r2
	cmp r0, 0
	beq _080511C8
_08051182:
	ldr r2, =gEnemyMonIndex
	ldrb r1, [r2]
	movs r0, 0x2
	ands r0, r1
	adds r1, r2, 0
	cmp r0, 0
	beq _080511AC
	movs r0, 0x3
	mov r9, r0
	movs r0, 0x6
	b _080511B2
	.pool
_080511AC:
	movs r0, 0
	mov r9, r0
	movs r0, 0x3
_080511B2:
	mov r8, r0
	movs r0, 0x3
	mov r10, r0
	movs r0, 0x1
	str r0, [sp, 0x8]
	ldr r2, =gUnknown_0202406E
	ldrb r1, [r1]
	b _0805128E
	.pool
_080511C8:
	movs r0, 0x42
	ands r0, r2
	cmp r0, 0x42
	beq _080511DA
	ldr r1, =0x02000040
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	bne _0805121C
_080511DA:
	ldrb r0, [r4]
	bl sub_806D864
	lsls r0, 24
	lsrs r0, 24
	bl sub_806D82C
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _080511FC
	movs r1, 0x3
	mov r9, r1
	movs r0, 0x6
	b _08051202
	.pool
_080511FC:
	movs r1, 0
	mov r9, r1
	movs r0, 0x3
_08051202:
	mov r8, r0
	movs r1, 0x3
	mov r10, r1
	movs r0, 0x1
	str r0, [sp, 0x8]
	ldr r2, =gUnknown_0202406E
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	b _0805128E
	.pool
_0805121C:
	movs r0, 0x80
	lsls r0, 8
	ands r0, r2
	cmp r0, 0
	beq _08051274
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08051240
	movs r1, 0
	mov r9, r1
	movs r0, 0x6
	mov r8, r0
	mov r10, r0
	movs r1, 0x2
	b _08051260
_08051240:
	ldrb r1, [r4]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08051252
	movs r0, 0x3
	mov r9, r0
	movs r1, 0x6
	b _08051258
_08051252:
	movs r0, 0
	mov r9, r0
	movs r1, 0x3
_08051258:
	mov r8, r1
	movs r0, 0x3
	mov r10, r0
	movs r1, 0x1
_08051260:
	str r1, [sp, 0x8]
	ldr r2, =gUnknown_0202406E
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	b _0805128E
	.pool
_08051274:
	movs r0, 0x1
	ands r2, r0
	cmp r2, 0
	beq _080512A4
	movs r0, 0
	mov r9, r0
	movs r1, 0x6
	mov r8, r1
	mov r10, r1
	movs r0, 0x2
	str r0, [sp, 0x8]
	ldr r2, =gUnknown_0202406E
	ldrb r1, [r4]
_0805128E:
	lsls r0, r1, 1
	adds r0, r2
	ldrh r7, [r0]
	movs r0, 0x2
	eors r1, r0
	lsls r1, 1
	adds r1, r2
	ldrh r5, [r1]
	b _080512BE
	.pool
_080512A4:
	movs r1, 0
	mov r9, r1
	movs r0, 0x6
	mov r8, r0
	mov r10, r0
	movs r1, 0x1
	str r1, [sp, 0x8]
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r5, [r0]
	adds r7, r5, 0
_080512BE:
	mov r6, r9
	cmp r6, r8
	bge _080512FC
_080512C4:
	movs r0, 0x64
	muls r0, r6
	ldr r1, [sp]
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080512F6
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _080512F6
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _080512F6
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	str r0, [sp, 0x4]
_080512F6:
	adds r6, 0x1
	cmp r6, r8
	blt _080512C4
_080512FC:
	ldr r1, [sp, 0x4]
	ldr r0, [sp, 0x8]
	cmp r1, r0
	bgt _08051328
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08051414
	.pool
_08051328:
	bl sub_8051064
	lsls r0, 24
	cmp r0, 0
	beq _08051378
_08051332:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	mov r1, r10
	bl __modsi3
	adds r6, r0, 0
	add r6, r9
	cmp r6, r7
	beq _08051332
	cmp r6, r5
	beq _08051332
	movs r0, 0x64
	muls r0, r6
	ldr r1, [sp]
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08051332
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0x1
	beq _08051332
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08051332
_08051378:
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	ldr r1, =gUnknown_0202449C
	ldr r1, [r1]
	adds r0, r1
	adds r0, 0x5C
	strb r6, [r0]
	bl sub_81B1250
	lsls r0, 24
	cmp r0, 0
	bne _08051396
	ldrb r0, [r4]
	bl sub_803BDA0
_08051396:
	ldr r0, =gBattleTypeFlags
	ldr r2, [r0]
	movs r1, 0x81
	lsls r1, 1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	beq _080513C0
	movs r0, 0x42
	ands r0, r2
	cmp r0, 0x42
	beq _080513C0
	ldr r1, =0x02000100
	adds r0, r2, 0
	ands r0, r1
	cmp r0, r1
	beq _080513C0
	ldr r0, =0x02000040
	ands r2, r0
	cmp r2, r0
	bne _080513DE
_080513C0:
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	lsls r4, r6, 24
	lsrs r4, 24
	adds r1, r4, 0
	movs r2, 0
	bl sub_81B8E80
	ldrb r1, [r5]
	movs r0, 0x2
	eors r0, r1
	adds r1, r4, 0
	movs r2, 0x1
	bl sub_81B8E80
_080513DE:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _08051414
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	lsls r1, r6, 24
	lsrs r1, 24
	bl sub_80571DC
	b _08051414
	.pool
_08051410:
	bl sub_8051064
_08051414:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_805112C

	thumb_func_start sub_8051424
sub_8051424: @ 8051424
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	ldr r2, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r1, r2, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r2
	cmp r0, 0
	beq _08051466
	movs r5, 0x58
	adds r2, r1, 0
_0805144C:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bhi _08051466
	lsls r1, r6, 1
	ldrb r0, [r3]
	muls r0, r5
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	cmp r0, 0
	bne _0805144C
_08051466:
	movs r3, 0
	cmp r3, r6
	bcs _080514E8
	ldr r0, =gBattleMoves
	mov r10, r0
	ldr r5, =gBattleMons
	mov r12, r5
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	movs r4, 0x58
	adds r5, r0, 0
	muls r5, r4
	movs r0, 0xC
	add r0, r12
	mov r9, r0
_08051484:
	lsls r0, r3, 1
	adds r0, r5
	add r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrb r2, [r0, 0x2]
	cmp r2, 0x9
	bne _080514C6
	mov r0, r8
	adds r1, r5, r0
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _080514B2
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _080514C4
_080514B2:
	movs r2, 0x7
	b _080514C6
	.pool
_080514C4:
	movs r2, 0
_080514C6:
	ldrb r0, [r7]
	muls r0, r4
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r2, r1
	beq _080514DE
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	bne _080514E8
_080514DE:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r6
	bcc _08051484
_080514E8:
	cmp r3, r6
	bne _0805150C
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080515B0
	.pool
_0805150C:
	movs r7, 0x3
	ldr r5, =gBattleMoves
	mov r9, r5
_08051512:
	bl Random
	adds r3, r0, 0
	ands r3, r7
	cmp r3, r6
	bcs _08051512
	ldr r4, =gBattleMons
	lsls r1, r3, 1
	ldr r3, =gUnknown_0202420B
	ldrb r2, [r3]
	movs r0, 0x58
	adds r5, r2, 0
	muls r5, r0
	adds r1, r5
	adds r0, r4, 0
	adds r0, 0xC
	adds r1, r0
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldrb r2, [r0, 0x2]
	mov r8, r4
	adds r4, r3, 0
	cmp r2, 0x9
	bne _08051572
	mov r0, r8
	adds r2, r5, r0
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _08051560
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _08051570
_08051560:
	movs r2, 0x7
	b _08051572
	.pool
_08051570:
	movs r2, 0
_08051572:
	ldrb r0, [r4]
	movs r3, 0x58
	muls r0, r3
	add r0, r8
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r5, [r1]
	cmp r2, r5
	beq _08051512
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	beq _08051512
	strb r2, [r1]
	ldrb r0, [r4]
	muls r0, r3
	add r0, r8
	adds r0, 0x22
	strb r2, [r0]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080515B0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8051424

	thumb_func_start atk91_givemoney
atk91_givemoney: @ 80515C8
	push {r4,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	bne _08051650
	ldr r1, =gUnknown_0202432E
	ldrh r0, [r1]
	cmp r0, 0
	beq _08051650
	adds r1, r0, 0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x4A
	ldrb r0, [r0]
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x92
	lsls r1, 3
	adds r0, r1
	adds r1, r4, 0
	bl add_money
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	strb r4, [r1, 0x4]
	movs r0, 0xFF
	lsls r0, 8
	ands r4, r0
	lsrs r4, 8
	strb r4, [r1, 0x5]
	movs r0, 0xFF
	strb r0, [r1, 0x6]
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, =gUnknown_082DB307
	str r0, [r4]
	b _08051658
	.pool
_08051650:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08051658:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk91_givemoney

	thumb_func_start atk92_setlightscreen
atk92_setlightscreen: @ 8051664
	push {r4-r6,lr}
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	bl battle_get_per_side_status
	ldr r4, =gUnknown_0202428E
	movs r6, 0x1
	adds r1, r6, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r1, [r1]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080516A4
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0
	b _08051718
	.pool
_080516A4:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r1, r6, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r5]
	bl battle_get_per_side_status
	ldr r4, =gUnknown_02024294
	adds r1, r6, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x5
	strb r1, [r0, 0x2]
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r1, r6, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r5]
	strb r1, [r0, 0x3]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ands r0, r6
	cmp r0, 0
	beq _08051714
	movs r0, 0x1
	bl sub_8069DEC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08051714
	ldr r1, =gUnknown_02024332
	movs r0, 0x4
	b _08051718
	.pool
_08051714:
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
_08051718:
	strb r0, [r1, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk92_setlightscreen

	thumb_func_start atk93_ko_move
atk93_ko_move: @ 8051730
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r7, =gBattleMons
	ldr r6, =gEnemyMonIndex
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08051768
	ldr r1, =gUnknown_02024404
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _08051782
	.pool
_08051768:
	ldrh r0, [r1, 0x2E]
	bl itemid_get_x12
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl itemid_get_quality
	lsls r0, 24
	lsrs r6, r0, 24
_08051782:
	ldr r1, =gUnknown_0202420F
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _080517C0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _080517C0
	ldrb r0, [r5]
	movs r1, 0x27
	bl b_history__record_item_x12_of_player
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_080517C0:
	ldr r1, =gBattleMons
	ldr r2, =gEnemyMonIndex
	ldrb r3, [r2]
	movs r6, 0x58
	adds r0, r3, 0
	muls r0, r6
	adds r5, r0, r1
	adds r0, r5, 0
	adds r0, 0x20
	ldrb r4, [r0]
	mov r8, r1
	mov r9, r2
	cmp r4, 0x5
	bne _0805181C
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gUnknown_0202420A
	strb r4, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB552
	str r0, [r1]
	mov r1, r9
	ldrb r0, [r1]
	movs r1, 0x5
	bl b_history__record_ability_usage_of_player
	b _08051A70
	.pool
_0805181C:
	ldr r1, =gUnknown_020242AC
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x18
	ands r0, r1
	cmp r0, 0
	bne _080518A0
	ldr r1, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	muls r0, r6
	add r0, r8
	adds r0, 0x2A
	ldrb r0, [r0]
	adds r1, r5, 0
	adds r1, 0x2A
	ldrb r1, [r1]
	subs r0, r1
	ldrb r2, [r2, 0x3]
	adds r0, r2
	lsls r0, 16
	lsrs r4, r0, 16
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0x1
	cmp r0, r4
	blt _08051870
	b _08051A08
_08051870:
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	add r1, r8
	adds r1, 0x2A
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r6
	add r0, r8
	adds r0, 0x2A
	ldrb r1, [r1]
	movs r4, 0x1
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08051936
	b _08051A08
	.pool
_080518A0:
	ldr r1, =gUnknown_020242BC
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r0, 0x15]
	adds r7, r1, 0
	ldrb r3, [r7]
	cmp r0, r3
	bne _080518CA
	ldrb r0, [r7]
	muls r0, r6
	add r0, r8
	adds r0, 0x2A
	adds r1, r5, 0
	adds r1, 0x2A
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08051942
_080518CA:
	ldr r1, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	ldr r6, =gBattleMons
	ldrb r0, [r7]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r0]
	ldr r0, =gEnemyMonIndex
	mov r8, r0
	ldrb r0, [r0]
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r0, [r0]
	subs r1, r0
	ldrb r2, [r2, 0x3]
	adds r1, r2
	lsls r1, 16
	lsrs r4, r1, 16
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0x1
	cmp r0, r4
	bge _08051934
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r6
	adds r1, 0x2A
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r1]
	movs r4, 0x1
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08051936
_08051934:
	movs r4, 0
_08051936:
	ldr r3, =gBattleMons
	mov r8, r3
	ldr r0, =gEnemyMonIndex
	mov r9, r0
	cmp r4, 0
	beq _08051A08
_08051942:
	ldr r0, =gUnknown_0202433C
	mov r1, r9
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	bge _08051990
	ldr r1, =gBattleMoveDamage
	movs r0, 0x58
	muls r0, r2
	add r0, r8
	ldrh r0, [r0, 0x28]
	subs r0, 0x1
	str r0, [r1]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x40
	b _080519EE
	.pool
_08051990:
	ldr r0, =gUnknown_0202437C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _080519DC
	ldr r1, =gBattleMoveDamage
	movs r3, 0x58
	adds r0, r2, 0
	muls r0, r3
	add r0, r8
	ldrh r0, [r0, 0x28]
	subs r0, 0x1
	str r0, [r1]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024208
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r3
	add r0, r8
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	b _080519F2
	.pool
_080519DC:
	ldr r1, =gBattleMoveDamage
	movs r0, 0x58
	muls r0, r2
	add r0, r8
	ldrh r0, [r0, 0x28]
	str r0, [r1]
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x10
_080519EE:
	orrs r0, r1
	strb r0, [r2]
_080519F2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08051A70
	.pool
_08051A08:
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r3, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	movs r2, 0x58
	adds r1, r0, 0
	muls r1, r2
	adds r1, r3
	adds r1, 0x2A
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	adds r0, 0x2A
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08051A50
	ldr r1, =gUnknown_02024332
	movs r0, 0
	b _08051A54
	.pool
_08051A50:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
_08051A54:
	strb r0, [r1, 0x5]
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08051A70:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk93_ko_move

	thumb_func_start atk94_gethalfcurrentenemyhp
atk94_gethalfcurrentenemyhp: @ 8051A84
	push {lr}
	ldr r3, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	lsrs r0, 1
	str r0, [r3]
	cmp r0, 0
	bne _08051AA2
	movs r0, 0x1
	str r0, [r3]
_08051AA2:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk94_gethalfcurrentenemyhp

	thumb_func_start sub_8051AC0
sub_8051AC0: @ 8051AC0
	push {lr}
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _08051AEC
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08051AFE
	.pool
_08051AEC:
	movs r0, 0x8
	strh r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x3
	strb r0, [r1, 0x5]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x28
	movs r1, 0x5
	strb r1, [r0]
_08051AFE:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8051AC0

	thumb_func_start sub_8051B18
sub_8051B18: @ 8051B18
	push {r4,r5,lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08051B36
	b _08051C48
_08051B36:
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _08051B4C
	b _08051C48
_08051B4C:
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x18
	ands r0, r1
	adds r4, r2, 0
	ldr r5, =gUnknown_0202420B
	cmp r0, 0
	beq _08051BDA
	ldr r0, =gBattleMons
	ldrb r2, [r5]
	movs r1, 0x58
	muls r1, r2
	adds r3, r1, r0
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _08051BD4
	cmp r0, 0x8
	beq _08051BD4
	cmp r0, 0x4
	beq _08051BD4
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _08051BD4
	cmp r0, 0x8
	beq _08051BD4
	cmp r0, 0x4
	beq _08051BD4
	adds r0, r3, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _08051BD4
	ldr r0, =gUnknown_020242AC
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08051BD4
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	bne _08051BD4
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r3, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08051BDA
	movs r0, 0x1
	b _08051BD8
	.pool
_08051BD4:
	ldr r1, =gBattleMoveDamage
	movs r0, 0
_08051BD8:
	str r0, [r1]
_08051BDA:
	ldrh r1, [r4]
	movs r4, 0x80
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08051C50
	ldr r1, =gBattleMons
	ldrb r3, [r5]
	movs r0, 0x58
	muls r0, r3
	adds r2, r0, r1
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xF
	beq _08051C3C
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xF
	beq _08051C3C
	ldr r0, =gUnknown_020242AC
	lsls r1, r3, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	bne _08051C3C
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	bne _08051C3C
	ldr r1, =gBattleMoveDamage
	ldrh r0, [r2, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08051C50
	movs r0, 0x1
	str r0, [r1]
	b _08051C50
	.pool
_08051C3C:
	ldr r1, =gBattleMoveDamage
	movs r0, 0
	str r0, [r1]
	b _08051C50
	.pool
_08051C48:
	ldr r1, =gBattleMoveDamage
	movs r0, 0
	str r0, [r1]
	ldr r5, =gUnknown_0202420B
_08051C50:
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08051C6A
	ldr r1, =gBattleMoveDamage
	movs r0, 0
	str r0, [r1]
_08051C6A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8051B18

	thumb_func_start atk97_tryinfatuatetarget
atk97_tryinfatuatetarget: @ 8051C90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08051CC8
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _08051CD8
	.pool
_08051CC8:
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_08051CD8:
	adds r5, r1, r0
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08051D0C
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _08051D1C
	.pool
_08051D0C:
	ldr r1, =gUnknown_0202406E
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_08051D1C:
	adds r4, r1, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	adds r0, r5, 0
	movs r1, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r7, r0, 0
	ldr r5, =gEnemyMonIndex
	ldrb r0, [r5]
	movs r6, 0x58
	muls r0, r6
	ldr r1, =gBattleMons
	adds r0, r1
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0xC
	bne _08051D94
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB5F5
	str r0, [r1]
	ldr r0, =gUnknown_0202420A
	strb r2, [r0]
	ldrb r0, [r5]
	movs r1, 0xC
	bl b_history__record_ability_usage_of_player
	b _08051E2C
	.pool
_08051D94:
	mov r0, r10
	mov r1, r9
	bl pokemon_species_get_gender_info
	adds r4, r0, 0
	mov r0, r8
	adds r1, r7, 0
	bl pokemon_species_get_gender_info
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _08051DE4
	ldrb r0, [r5]
	muls r0, r6
	ldr r4, =gBattleMons
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	bne _08051DE4
	mov r0, r10
	mov r1, r9
	bl pokemon_species_get_gender_info
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _08051DE4
	mov r0, r8
	adds r1, r7, 0
	bl pokemon_species_get_gender_info
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _08051E08
_08051DE4:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08051E2C
	.pool
_08051E08:
	ldrb r0, [r5]
	adds r2, r0, 0
	muls r2, r6
	adds r2, r4
	ldr r1, =gBitTable
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 16
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08051E2C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk97_tryinfatuatetarget

	thumb_func_start sub_8051E48
sub_8051E48: @ 8051E48
	push {r4-r7,lr}
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	bne _08051F34
	ldr r5, =gUnknown_02024214
	ldr r1, [r5]
	ldrb r0, [r1, 0x1]
	cmp r0, 0x4
	beq _08051EA0
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r3, =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	b _08051F34
	.pool
_08051EA0:
	ldr r4, =gUnknown_02024064
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	strb r0, [r4]
	ldr r6, =gUnknown_02024210
	ldrb r1, [r6]
	ldr r7, =gBitTable
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08051EDC
	ldr r3, =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08051EDC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08051F2C
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r4]
	ldrb r1, [r6]
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08051F2C
	ldr r3, =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08051F2C:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08051F34:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8051E48

	thumb_func_start atk99_setmisteffect
atk99_setmisteffect: @ 8051F58
	push {r4-r6,lr}
	ldr r6, =gUnknown_02024294
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_get_per_side_status
	movs r5, 0x1
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	beq _08051F98
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gUnknown_02024332
	strb r5, [r0, 0x5]
	b _08051FE6
	.pool
_08051F98:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0x5
	strb r1, [r0, 0x4]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r4]
	strb r1, [r0, 0x5]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	ldr r2, =gUnknown_0202428E
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	movs r3, 0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, =gUnknown_02024332
	strb r3, [r0, 0x5]
_08051FE6:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk99_setmisteffect

	thumb_func_start atk9A_setincreasedcriticalchance
atk9A_setincreasedcriticalchance: @ 8052000
	push {lr}
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r3, 0x80
	lsls r3, 13
	adds r2, r1, 0
	ands r2, r3
	cmp r2, 0
	beq _08052040
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08052048
	.pool
_08052040:
	orrs r1, r3
	str r1, [r0]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x5]
_08052048:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk9A_setincreasedcriticalchance

	thumb_func_start atk9B_transformdataexecution
atk9B_transformdataexecution: @ 805205C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, =gUnknown_020241EC
	ldr r2, =0x0000ffff
	adds r0, r2, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r7, =gBattleMons
	ldr r0, =gEnemyMonIndex
	mov r12, r0
	ldrb r1, [r0]
	movs r6, 0x58
	adds r0, r1, 0
	muls r0, r6
	adds r5, r7, 0
	adds r5, 0x50
	adds r0, r5
	ldr r0, [r0]
	movs r4, 0x80
	lsls r4, 14
	ands r0, r4
	cmp r0, 0
	bne _080520A2
	ldr r0, =gUnknown_020242AC
	lsls r1, 2
	adds r1, r0
	ldr r2, [r1]
	ldr r0, =0x000400c0
	ands r2, r0
	cmp r2, 0
	beq _080520D8
_080520A2:
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	b _080521EC
	.pool
_080520D8:
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r5
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	ldr r4, =gUnknown_020242BC
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x4]
	ldrb r0, [r3]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xB]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	mov r2, r12
	ldrb r1, [r2]
	muls r1, r6
	adds r2, r7, 0
	adds r2, 0x48
	adds r1, r2
	ldr r1, [r1]
	str r1, [r0]
	ldrb r0, [r3]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1, 0x18]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1, 0x18]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x6
	strb r0, [r1, 0x1]
	mov r2, r12
	ldrb r0, [r2]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r2]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldrb r0, [r3]
	muls r0, r6
	adds r5, r0, r7
	ldrb r0, [r2]
	muls r0, r6
	adds r2, r0, r7
	movs r4, 0
	adds r6, r3, 0
	ldr r0, =gUnknown_02024064
	mov r8, r0
_08052170:
	adds r0, r5, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x23
	bls _08052170
	movs r4, 0
	ldr r7, =gBattleMoves
	ldr r3, =gUnknown_02024090
	adds r5, r3, 0
	adds r5, 0x18
_08052188:
	lsls r1, r4, 1
	ldrb r2, [r6]
	movs r0, 0x58
	muls r2, r0
	adds r1, r2
	adds r1, r3
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0, 0x4]
	cmp r1, 0x4
	bhi _080521C4
	adds r0, r4, r2
	adds r0, r5
	b _080521CA
	.pool
_080521C4:
	adds r0, r4, r2
	adds r0, r5
	movs r1, 0x5
_080521CA:
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x3
	ble _08052188
	ldrb r0, [r6]
	mov r1, r8
	strb r0, [r1]
	movs r0, 0
	movs r1, 0x2
	bl dp01_build_cmdbuf_x38_a
	mov r2, r8
	ldrb r0, [r2]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024332
	movs r0, 0
_080521EC:
	strb r0, [r1, 0x5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atk9B_transformdataexecution

	thumb_func_start sub_80521FC
sub_80521FC: @ 80521FC
	push {r4-r7,lr}
	ldr r7, =gBattleMons
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	movs r5, 0x58
	muls r0, r5
	adds r3, r0, r7
	ldrh r0, [r3, 0x2C]
	lsrs r1, r0, 2
	adds r2, r1, 0
	cmp r1, 0
	bne _08052216
	movs r2, 0x1
_08052216:
	ldrh r0, [r3, 0x28]
	cmp r0, r2
	bhi _0805223C
	ldr r1, =gBattleMoveDamage
	movs r0, 0
	str r0, [r1]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08052290
	.pool
_0805223C:
	ldr r4, =gBattleMoveDamage
	str r1, [r4]
	cmp r1, 0
	bne _08052248
	movs r0, 0x1
	str r0, [r4]
_08052248:
	ldrb r0, [r6]
	adds r2, r0, 0
	muls r2, r5
	adds r3, r7, 0
	adds r3, 0x50
	adds r2, r3
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 17
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r3
	ldr r0, [r1]
	ldr r2, =0xffff1fff
	ands r0, r2
	str r0, [r1]
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, [r4]
	movs r2, 0
	strb r1, [r0, 0xA]
	ldr r0, =gUnknown_02024332
	strb r2, [r0, 0x5]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 1
	orrs r0, r1
	str r0, [r2]
_08052290:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80521FC

	thumb_func_start sub_80522B8
sub_80522B8: @ 80522B8
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r2, r0, 16
	movs r3, 0
	ldr r0, =gUnknown_0831C3E0
	ldrh r1, [r0]
	ldr r4, =0x0000fffe
	adds r5, r0, 0
	cmp r1, r4
	beq _080522E0
	cmp r1, r2
	beq _080522E0
	adds r1, r5, 0
_080522D2:
	adds r1, 0x2
	adds r3, 0x1
	ldrh r0, [r1]
	cmp r0, r4
	beq _080522E0
	cmp r0, r2
	bne _080522D2
_080522E0:
	lsls r0, r3, 1
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, =0x0000fffe
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_80522B8

	thumb_func_start atk9D_copyattack
atk9D_copyattack: @ 8052300
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_020241EC
	ldr r1, =0x0000ffff
	adds r7, r1, 0
	strh r7, [r0]
	ldr r5, =gUnknown_02024248
	ldr r6, =gEnemyMonIndex
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	bl sub_80522B8
	lsls r0, 24
	cmp r0, 0
	bne _0805235A
	ldr r3, =gBattleMons
	ldr r2, =gUnknown_0202420B
	ldrb r1, [r2]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 14
	ands r1, r0
	mov r12, r3
	mov r9, r2
	cmp r1, 0
	bne _0805235A
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	cmp r1, 0
	beq _0805235A
	cmp r1, r7
	bne _08052394
_0805235A:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080524CC
	.pool
_08052394:
	movs r2, 0
	mov r3, r12
	adds r3, 0xC
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r4, =gUnknown_02024214
	mov r10, r4
	cmp r0, r1
	beq _080523CE
	mov r8, r3
	adds r7, r5, 0
	adds r5, r6, 0
	mov r4, r9
	movs r3, 0x58
_080523B0:
	adds r2, 0x1
	cmp r2, 0x3
	bgt _080523CE
	lsls r1, r2, 1
	ldrb r0, [r4]
	muls r0, r3
	adds r1, r0
	add r1, r8
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r7
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080523B0
_080523CE:
	cmp r2, 0x4
	bne _080524B0
	ldr r5, =gUnknown_020241E8
	ldrb r1, [r5]
	lsls r1, 1
	mov r2, r9
	ldrb r0, [r2]
	movs r6, 0x58
	muls r0, r6
	adds r1, r0
	mov r0, r12
	adds r0, 0xC
	adds r1, r0
	ldr r2, =gUnknown_02024248
	ldr r3, =gEnemyMonIndex
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, =gBattleMoves
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r4, [r0, 0x4]
	cmp r4, 0x4
	bhi _08052438
	mov r1, r9
	ldrb r0, [r1]
	muls r0, r6
	ldrb r1, [r5]
	adds r0, r1
	mov r1, r12
	adds r1, 0x24
	adds r0, r1
	strb r4, [r0]
	b _0805244C
	.pool
_08052438:
	mov r4, r9
	ldrb r0, [r4]
	muls r0, r6
	ldrb r1, [r5]
	adds r0, r1
	mov r1, r12
	adds r1, 0x24
	adds r0, r1
	movs r1, 0x5
	strb r1, [r0]
_0805244C:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_020242BC
	mov r2, r9
	ldrb r0, [r2]
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	adds r2, r1
	ldrb r4, [r2, 0x18]
	lsrs r3, r4, 4
	ldr r1, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	orrs r1, r3
	lsls r1, 4
	movs r0, 0xF
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, 0x18]
	mov r4, r10
	ldr r0, [r4]
	adds r0, 0x5
	str r0, [r4]
	b _080524CC
	.pool
_080524B0:
	mov r0, r10
	ldr r2, [r0]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	mov r2, r10
	str r1, [r2]
_080524CC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk9D_copyattack

	thumb_func_start sub_80524DC
sub_80524DC: @ 80524DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, =gUnknown_020241EA
	movs r6, 0xB1
	lsls r6, 1
	ldr r5, =gUnknown_0831C3E0
	ldr r0, =gUnknown_02024214
	mov r8, r0
_080524EE:
	bl Random
	ldr r2, =0x000001ff
	adds r1, r2, 0
	ands r0, r1
	adds r0, 0x1
	strh r0, [r7]
	cmp r0, r6
	bhi _080524EE
	movs r0, 0x3
_08052502:
	subs r0, 0x1
	cmp r0, 0
	bge _08052502
	ldr r4, =gUnknown_020241EA
	ldrh r2, [r4]
	ldr r3, =0x0000ffff
	subs r0, r5, 0x2
_08052510:
	adds r0, 0x2
	ldrh r1, [r0]
	cmp r1, r2
	beq _0805251C
	cmp r1, r3
	bne _08052510
_0805251C:
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _080524EE
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r3, =gUnknown_082D86A8
	ldr r2, =gBattleMoves
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80524DC

	thumb_func_start atk9F_nightshadedamageeffect
atk9F_nightshadedamageeffect: @ 8052584
	ldr r3, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r0, [r0]
	str r0, [r3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atk9F_nightshadedamageeffect

	thumb_func_start atkA0_psywavedamageeffect
atkA0_psywavedamageeffect: @ 80525B4
	push {r4,lr}
	movs r4, 0xF
_080525B8:
	bl Random
	adds r3, r4, 0
	ands r3, r0
	cmp r3, 0xA
	bgt _080525B8
	lsls r0, r3, 2
	adds r0, r3
	lsls r3, r0, 1
	ldr r4, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r0]
	adds r0, r3, 0
	adds r0, 0x32
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA0_psywavedamageeffect

	thumb_func_start atkA1_counterdamagecalculator
atkA1_counterdamagecalculator: @ 8052608
	push {r4-r6,lr}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, =gUnknown_0202433C
	ldrb r0, [r4]
	lsls r0, 4
	adds r0, r5
	ldrb r0, [r0, 0xC]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r0, r5, 0x4
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r3, 0
	beq _080526BC
	cmp r6, r2
	beq _080526BC
	ldr r6, =gBattleMons
	adds r0, r1, r5
	ldrb r0, [r0, 0xC]
	movs r4, 0x58
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _080526BC
	ldr r1, =gBattleMoveDamage
	lsls r0, r3, 1
	str r0, [r1]
	ldr r1, =gUnknown_02024294
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08052690
	ldrb r1, [r1, 0x9]
	adds r0, r1, 0
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08052690
	ldr r0, =gEnemyMonIndex
	strb r1, [r0]
	b _080526A0
	.pool
_08052690:
	ldr r2, =gEnemyMonIndex
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r2]
_080526A0:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080526EC
	.pool
_080526BC:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080526EC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA1_counterdamagecalculator

	thumb_func_start atkA2_mirrorcoatdamagecalculator
atkA2_mirrorcoatdamagecalculator: @ 8052700
	push {r4-r6,lr}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, =gUnknown_0202433C
	ldrb r0, [r4]
	lsls r0, 4
	adds r0, r5
	ldrb r0, [r0, 0xD]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r0, r5, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r3, 0
	beq _080527B4
	cmp r6, r2
	beq _080527B4
	ldr r6, =gBattleMons
	adds r0, r1, r5
	ldrb r0, [r0, 0xD]
	movs r4, 0x58
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _080527B4
	ldr r1, =gBattleMoveDamage
	lsls r0, r3, 1
	str r0, [r1]
	ldr r1, =gUnknown_02024294
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08052788
	ldrb r1, [r1, 0x9]
	adds r0, r1, 0
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08052788
	ldr r0, =gEnemyMonIndex
	strb r1, [r0]
	b _08052798
	.pool
_08052788:
	ldr r2, =gEnemyMonIndex
	ldr r1, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0xD]
	strb r0, [r2]
_08052798:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080527E4
	.pool
_080527B4:
	ldr r2, =gUnknown_0202437C
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080527E4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA2_mirrorcoatdamagecalculator

	thumb_func_start atkA3_disablelastusedattack
atkA3_disablelastusedattack: @ 80527F8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r4, 0
	ldr r2, =gBattleMons
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r7, r2, 0
	adds r7, 0xC
	adds r0, r7
	ldr r5, =gUnknown_02024248
	lsls r1, 1
	adds r1, r5
	ldrh r0, [r0]
	mov r9, r2
	adds r6, r3, 0
	ldr r2, =gUnknown_020242BC
	mov r8, r2
	ldrh r1, [r1]
	cmp r0, r1
	beq _0805284C
	mov r12, r6
	movs r3, 0x58
_0805282C:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0805284C
	lsls r2, r4, 1
	mov r0, r12
	ldrb r1, [r0]
	adds r0, r1, 0
	muls r0, r3
	adds r2, r0
	adds r2, r7
	lsls r1, 1
	adds r1, r5
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0805282C
_0805284C:
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrh r0, [r0, 0x4]
	cmp r0, 0
	bne _08052910
	cmp r4, 0x4
	beq _08052910
	movs r5, 0x58
	adds r0, r1, 0
	muls r0, r5
	adds r0, r4, r0
	mov r1, r9
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08052910
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	lsls r2, r4, 1
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r2, r0
	mov r3, r9
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r2, r0
	adds r0, r3
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	muls r1, r5
	adds r2, r1
	adds r2, r3
	ldrh r1, [r2]
	strh r1, [r0, 0x4]
	bl Random
	ldrb r2, [r6]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r8
	movs r2, 0x3
	ands r2, r0
	adds r2, 0x2
	ldrb r3, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xB]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r8
	ldrb r3, [r1, 0xB]
	lsls r2, r3, 28
	lsrs r2, 24
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xB]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0805292A
	.pool
_08052910:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0805292A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA3_disablelastusedattack

	thumb_func_start atkA4_setencore
atkA4_setencore: @ 805293C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r5, 0
	ldr r3, =gBattleMons
	ldr r4, =gEnemyMonIndex
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r6, r3, 0
	adds r6, 0xC
	adds r0, r6
	ldr r2, =gUnknown_02024248
	lsls r1, 1
	adds r1, r2
	ldrh r0, [r0]
	mov r10, r3
	mov r8, r2
	ldr r2, =gUnknown_020242BC
	mov r9, r2
	ldrh r1, [r1]
	cmp r0, r1
	beq _08052996
	mov r12, r4
	adds r7, r6, 0
	mov r6, r8
	movs r3, 0x58
_08052976:
	adds r5, 0x1
	cmp r5, 0x3
	bgt _08052996
	lsls r2, r5, 1
	mov r0, r12
	ldrb r1, [r0]
	adds r0, r1, 0
	muls r0, r3
	adds r2, r0
	adds r2, r7
	lsls r1, 1
	adds r1, r6
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08052976
_08052996:
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r8
	ldrh r2, [r0]
	cmp r2, 0xA5
	beq _080529AA
	cmp r2, 0xE3
	beq _080529AA
	cmp r2, 0x77
	bne _080529AC
_080529AA:
	movs r5, 0x4
_080529AC:
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r2, r9
	adds r3, r0, r2
	ldrh r0, [r3, 0x6]
	cmp r0, 0
	bne _08052A44
	cmp r5, 0x4
	beq _08052A44
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	adds r0, r5, r2
	mov r1, r10
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08052A44
	lsls r0, r5, 1
	adds r0, r2
	subs r1, 0x18
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3, 0x6]
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r9
	strb r5, [r0, 0xC]
	bl Random
	ldrb r2, [r4]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r9
	movs r2, 0x3
	ands r2, r0
	adds r2, 0x3
	ldrb r3, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xE]
	ldrb r0, [r4]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r9
	ldrb r3, [r1, 0xE]
	lsls r2, r3, 28
	lsrs r2, 24
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xE]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08052A5E
	.pool
_08052A44:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08052A5E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA4_setencore

	thumb_func_start sub_8052A70
sub_8052A70: @ 8052A70
	push {r4-r7,lr}
	ldr r6, =gBattleMons
	ldr r0, =gEnemyMonIndex
	mov r12, r0
	ldrb r0, [r0]
	movs r7, 0x58
	adds r2, r0, 0
	muls r2, r7
	adds r0, r6, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _08052B10
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	muls r0, r7
	adds r0, r6
	ldrh r3, [r0, 0x28]
	adds r0, r2, r6
	ldrh r1, [r0, 0x28]
	adds r3, r1
	asrs r3, 1
	ldr r4, =gBattleMoveDamage
	subs r1, r3
	str r1, [r4]
	ldr r2, =gUnknown_02024474
	strb r1, [r2]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	asrs r0, 8
	strb r0, [r2, 0x1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r1
	asrs r0, 16
	strb r0, [r2, 0x2]
	lsrs r1, 24
	strb r1, [r2, 0x3]
	ldrb r0, [r5]
	muls r0, r7
	adds r0, r6
	ldrh r0, [r0, 0x28]
	subs r0, r3
	str r0, [r4]
	ldr r2, =gUnknown_0202437C
	mov r0, r12
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r1, =0x0000ffff
	str r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08052B2A
	.pool
_08052B10:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08052B2A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8052A70

	thumb_func_start atkA6_settypetorandomresistance
atkA6_settypetorandomresistance: @ 8052B34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, =gUnknown_02024250
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	lsls r0, 1
	adds r2, r0, r1
	ldrh r1, [r2]
	cmp r1, 0
	beq _08052B7E
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _08052B7E
	ldrh r0, [r2]
	bl sub_8052F48
	lsls r0, 24
	cmp r0, 0
	beq _08052C1C
	ldr r1, =gBattleMons
	ldr r2, =gUnknown_02024270
	ldrb r0, [r4]
	adds r0, r2
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	beq _08052C1C
_08052B7E:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08052D08
	.pool
_08052BB4:
	mov r0, r12
	strb r5, [r0]
	mov r1, r10
	ldrb r0, [r1]
	muls r0, r2
	adds r0, r7
	adds r0, 0x22
	strb r5, [r0]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r5, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024214
	b _08052C0A
	.pool
_08052BE0:
	mov r0, r8
	adds r0, 0x1
	adds r0, r3
	ldrb r2, [r0]
	strb r2, [r4]
	mov r4, r10
	ldrb r0, [r4]
	muls r0, r6
	ldr r7, =gBattleMons
	adds r0, r7
	adds r0, 0x22
	strb r2, [r0]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	mov r1, r12
_08052C0A:
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08052D08
	.pool
_08052C1C:
	movs r4, 0
	mov r8, r4
	movs r7, 0x7F
	mov r9, r7
_08052C24:
	bl Random
	mov r4, r9
	ands r4, r0
	cmp r4, 0x70
	bhi _08052C24
	lsls r0, r4, 1
	adds r4, r0, r4
	ldr r6, =gUnknown_0831ACE8
	adds r3, r4, r6
	ldr r1, =gUnknown_02024258
	ldr r2, =gUnknown_0202420B
	ldrb r5, [r2]
	lsls r0, r5, 1
	adds r0, r1
	ldrb r1, [r3]
	mov r10, r2
	ldrh r0, [r0]
	cmp r1, r0
	bne _08052C80
	adds r0, r4, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x5
	bhi _08052C80
	ldr r7, =gBattleMons
	movs r2, 0x58
	adds r0, r5, 0
	muls r0, r2
	adds r3, r0, r7
	movs r0, 0x21
	adds r0, r3
	mov r12, r0
	adds r0, r4, 0x1
	adds r0, r6
	ldrb r5, [r0]
	mov r1, r12
	ldrb r0, [r1]
	adds r1, r5, 0
	cmp r0, r1
	beq _08052C80
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	bne _08052BB4
_08052C80:
	movs r7, 0x1
	add r8, r7
	ldr r0, =0x000003e7
	cmp r8, r0
	ble _08052C24
	movs r0, 0
	mov r8, r0
	ldr r1, =gUnknown_02024214
	mov r12, r1
	ldr r3, =gUnknown_0831ACE8
	adds r0, r4, 0x1
	adds r0, r3
	mov r9, r0
	adds r5, r3, 0
_08052C9C:
	ldrb r1, [r5]
	cmp r1, 0xFF
	bgt _08052CA6
	cmp r1, 0xFE
	bge _08052CE0
_08052CA6:
	mov r4, r10
	ldrb r2, [r4]
	lsls r0, r2, 1
	ldr r7, =gUnknown_02024258
	adds r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	bne _08052CE0
	ldrb r0, [r5, 0x2]
	cmp r0, 0x5
	bhi _08052CE0
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	ldr r1, =gBattleMons
	adds r2, r0, r1
	adds r4, r2, 0
	adds r4, 0x21
	ldrb r0, [r4]
	mov r7, r9
	ldrb r1, [r7]
	cmp r0, r1
	beq _08052CE0
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	beq _08052CE0
	b _08052BE0
_08052CE0:
	adds r5, 0x3
	movs r0, 0x3
	add r8, r0
	ldr r0, =0x0000014f
	cmp r8, r0
	bls _08052C9C
	mov r1, r12
	ldr r2, [r1]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	mov r4, r12
	str r1, [r4]
_08052D08:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA6_settypetorandomresistance

	thumb_func_start atkA7_setalwayshitflag
atkA7_setalwayshitflag: @ 8052D34
	push {r4,lr}
	ldr r4, =gUnknown_020242AC
	ldr r3, =gEnemyMonIndex
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x10
	orrs r0, r2
	str r0, [r1]
	ldr r2, =gUnknown_020242BC
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, =gUnknown_0202420B
	ldrb r1, [r1]
	strb r1, [r0, 0x15]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA7_setalwayshitflag

	thumb_func_start atkA8_copymovepermanently
atkA8_copymovepermanently: @ 8052D8C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r0, =gUnknown_020241EC
	ldr r1, =0x0000ffff
	adds r5, r1, 0
	strh r5, [r0]
	ldr r3, =gBattleMons
	ldr r2, =gUnknown_0202420B
	ldrb r1, [r2]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 14
	ands r1, r0
	mov r12, r3
	mov r10, r2
	cmp r1, 0
	beq _08052DC4
	b _08052F18
_08052DC4:
	ldr r0, =gUnknown_02024240
	ldr r2, =gEnemyMonIndex
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldrh r1, [r1]
	mov r9, r0
	mov r8, r2
	cmp r1, 0xA5
	bne _08052DDA
	b _08052F18
_08052DDA:
	cmp r1, 0
	bne _08052DE0
	b _08052F18
_08052DE0:
	cmp r1, r5
	bne _08052DE6
	b _08052F18
_08052DE6:
	cmp r1, 0xA6
	bne _08052DEC
	b _08052F18
_08052DEC:
	movs r7, 0
	mov r5, r9
	mov r0, r12
	adds r0, 0xC
	adds r1, r4, r0
	mov r3, r8
_08052DF8:
	ldrh r2, [r1]
	cmp r2, 0xA6
	beq _08052E0A
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	cmp r2, r0
	beq _08052E12
_08052E0A:
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _08052DF8
_08052E12:
	cmp r7, 0x4
	beq _08052E18
	b _08052F18
_08052E18:
	ldr r4, =gUnknown_020241E8
	ldrb r1, [r4]
	lsls r1, 1
	mov r2, r10
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	adds r1, r0
	mov r6, r12
	adds r6, 0xC
	adds r1, r6
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r10
	ldrb r0, [r1]
	adds r2, r0, 0
	muls r2, r3
	ldrb r4, [r4]
	adds r2, r4
	mov r5, r12
	adds r5, 0x24
	adds r2, r5
	ldr r4, =gBattleMoves
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, 1
	add r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x4]
	strb r0, [r2]
	ldr r1, =gUnknown_02024064
	mov r2, r10
	ldrb r0, [r2]
	strb r0, [r1]
	movs r7, 0
	ldrb r0, [r2]
	muls r0, r3
	adds r4, r0, r5
	adds r3, r0, 0
	add r2, sp, 0x4
	add r5, sp, 0xC
_08052E7A:
	adds r0, r3, r6
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, r5, r7
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, 0x1
	adds r3, 0x2
	adds r2, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _08052E7A
	add r2, sp, 0x4
	mov r0, r10
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r0, 0x3B
	ldrb r0, [r0]
	strb r0, [r2, 0xC]
	str r2, [sp]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0
	movs r3, 0x10
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldr r3, =gUnknown_02024240
	ldr r2, =gEnemyMonIndex
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08052F32
	.pool
_08052F18:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08052F32:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkA8_copymovepermanently

	thumb_func_start sub_8052F48
sub_8052F48: @ 8052F48
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gBattleMoves
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0x91
	beq _08052F72
	cmp r0, 0x27
	beq _08052F72
	cmp r0, 0x4B
	beq _08052F72
	cmp r0, 0x97
	beq _08052F72
	cmp r0, 0x9B
	beq _08052F72
	cmp r0, 0x1A
	bne _08052F7C
_08052F72:
	movs r0, 0x1
	b _08052F7E
	.pool
_08052F7C:
	movs r0, 0
_08052F7E:
	pop {r1}
	bx r1
	thumb_func_end sub_8052F48

	thumb_func_start sub_8052F84
sub_8052F84: @ 8052F84
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	beq _08052FA2
	cmp r1, 0xD6
	beq _08052FA2
	movs r0, 0x89
	lsls r0, 1
	cmp r1, r0
	beq _08052FA2
	cmp r1, 0x77
	beq _08052FA2
	cmp r1, 0x76
	bne _08052FA6
_08052FA2:
	movs r0, 0x1
	b _08052FA8
_08052FA6:
	movs r0, 0
_08052FA8:
	pop {r1}
	bx r1
	thumb_func_end sub_8052F84

	thumb_func_start move_weather_interaction
move_weather_interaction: @ 8052FAC
	push {lr}
	lsls r1, 16
	lsrs r2, r1, 16
	ldr r1, =gBattleMoves
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x97
	bne _08052FD0
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	bne _08053010
_08052FD0:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0x91
	beq _08052FF2
	cmp r0, 0x27
	beq _08052FF2
	cmp r0, 0x4B
	beq _08052FF2
	cmp r0, 0x97
	beq _08052FF2
	cmp r0, 0x9B
	beq _08052FF2
	cmp r0, 0x1A
	bne _08053010
_08052FF2:
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 20
	ands r0, r1
	cmp r0, 0
	beq _08053010
	movs r0, 0x1
	b _08053012
	.pool
_08053010:
	movs r0, 0x2
_08053012:
	pop {r1}
	bx r1
	thumb_func_end move_weather_interaction

	thumb_func_start sub_8053018
sub_8053018: @ 8053018
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	movs r5, 0
	ldr r0, =gUnknown_0202420B
	mov r9, r0
	movs r1, 0x58
	mov r8, r1
	ldr r7, =gUnknown_02024090
	movs r0, 0x84
	lsls r0, 1
	mov r10, r0
_08053036:
	lsls r4, r5, 1
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r4, r0
	adds r0, r7
	ldrh r0, [r0]
	bl sub_8052F84
	lsls r0, 24
	cmp r0, 0
	bne _08053076
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r4, r0
	adds r0, r7
	ldrh r1, [r0]
	cmp r1, r10
	beq _08053076
	cmp r1, 0xFD
	beq _08053076
	adds r0, r1, 0
	bl sub_8052F48
	lsls r0, 24
	cmp r0, 0
	beq _08053084
_08053076:
	ldr r1, =gBitTable
	lsls r0, r5, 2
	adds r0, r1
	ldr r0, [r0]
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_08053084:
	adds r5, 0x1
	cmp r5, 0x3
	ble _08053036
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	adds r1, r6, 0
	movs r2, 0xFD
	bl sub_803FECC
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0xF
	bne _080530B8
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0805311C
	.pool
_080530B8:
	movs r7, 0x3
	ldr r4, =gBitTable
_080530BC:
	bl Random
	adds r5, r7, 0
	ands r5, r0
	lsls r0, r5, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r6
	cmp r0, 0
	bne _080530BC
	ldr r4, =gUnknown_020241EE
	ldr r2, =gBattleMons
	lsls r1, r5, 1
	ldr r0, =gUnknown_0202420B
	ldrb r3, [r0]
	movs r0, 0x58
	muls r0, r3
	adds r1, r0
	adds r2, 0xC
	adds r1, r2
	ldrh r0, [r1]
	strh r0, [r4]
	ldr r0, =gUnknown_020241E8
	strb r5, [r0]
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0805311C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8053018

	thumb_func_start atkAA_destinybondeffect
atkAA_destinybondeffect: @ 8053150
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 18
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atkAA_destinybondeffect

	thumb_func_start b_feature_update_destiny_bond
b_feature_update_destiny_bond: @ 8053180
	push {r4,r5,lr}
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _080531CA
	cmp r5, r3
	beq _080531CA
	ldr r2, =gUnknown_02024280
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _080531CA
	movs r0, 0x40
	orrs r1, r0
	str r1, [r2]
_080531CA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end b_feature_update_destiny_bond

	thumb_func_start atkAB_802A458
atkAB_802A458: @ 80531E0
	push {lr}
	bl b_feature_update_destiny_bond
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkAB_802A458

	thumb_func_start atkAC_remaininghptopower
atkAC_remaininghptopower: @ 80531F8
	push {lr}
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	movs r2, 0x28
	ldrsh r0, [r1, r2]
	movs r2, 0x2C
	ldrsh r1, [r1, r2]
	movs r2, 0x30
	bl sub_8075034
	lsls r0, 24
	lsrs r1, r0, 24
	movs r3, 0
	ldr r0, =gUnknown_0831C408
	ldrb r2, [r0]
	cmp r1, r2
	ble _08053232
	adds r2, r0, 0
_08053224:
	adds r3, 0x2
	cmp r3, 0xB
	bgt _08053232
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	bgt _08053224
_08053232:
	ldr r2, =gUnknown_02024400
	ldr r1, =gUnknown_0831C408
	adds r0, r3, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkAC_remaininghptopower

	thumb_func_start atkAD_reducepprandom
atkAD_reducepprandom: @ 8053260
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r4, =gUnknown_02024248
	ldr r1, =gEnemyMonIndex
	ldrb r3, [r1]
	lsls r0, r3, 1
	adds r0, r4
	ldrh r2, [r0]
	mov r8, r1
	cmp r2, 0
	bne _08053280
	b _08053408
_08053280:
	ldr r0, =0x0000ffff
	cmp r2, r0
	bne _08053288
	b _08053408
_08053288:
	movs r7, 0
	ldr r0, =gBattleMons
	movs r1, 0x58
	muls r1, r3
	adds r3, r0, 0
	adds r3, 0xC
	adds r1, r3
	ldrh r1, [r1]
	cmp r2, r1
	beq _080532C0
	adds r6, r4, 0
	mov r5, r8
	adds r4, r3, 0
	movs r3, 0x58
_080532A4:
	adds r7, 0x1
	cmp r7, 0x3
	bgt _080532C0
	ldrb r0, [r5]
	lsls r2, r0, 1
	adds r2, r6
	lsls r1, r7, 1
	muls r0, r3
	adds r1, r0
	adds r1, r4
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080532A4
_080532C0:
	cmp r7, 0x4
	bne _080532C6
	b _08053408
_080532C6:
	mov r4, r8
	ldrb r0, [r4]
	movs r1, 0x58
	mov r9, r1
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r0, r7, r0
	ldr r1, =gBattleMons
	adds r1, 0x24
	mov r10, r1
	add r0, r10
	ldrb r0, [r0]
	cmp r0, 0x1
	bhi _080532E6
	b _08053408
_080532E6:
	bl Random
	movs r1, 0x3
	ands r1, r0
	adds r6, r1, 0x2
	ldrb r0, [r4]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r0, r7, r0
	add r0, r10
	ldrb r0, [r0]
	cmp r0, r6
	bge _08053304
	adds r6, r0, 0
_08053304:
	ldr r1, =gUnknown_02022F58
	movs r5, 0xFD
	strb r5, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldr r2, =gUnknown_02024248
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r4, =gUnknown_02022F68
	adds r0, r4, 0
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0x1
	bl ConvertIntToDecimalStringN
	strb r5, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
	strb r0, [r4, 0x3]
	strb r6, [r4, 0x4]
	subs r0, 0x2
	strb r0, [r4, 0x5]
	mov r1, r8
	ldrb r0, [r1]
	mov r1, r9
	muls r1, r0
	adds r1, r7, r1
	add r1, r10
	ldrb r0, [r1]
	subs r0, r6
	strb r0, [r1]
	ldr r4, =gUnknown_02024064
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r4]
	ldr r1, =gUnknown_020242BC
	ldrb r3, [r4]
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r7, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080533B8
	mov r2, r9
	muls r2, r3
	ldr r0, =gBattleMons
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _080533B8
	adds r1, r7, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	mov r3, r10
	adds r0, r2, r3
	adds r0, r7
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080533B8:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	ldr r1, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r7, r0
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08053422
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	b _08053422
	.pool
_08053408:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08053422:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkAD_reducepprandom

	thumb_func_start atkAE_clearstatusifnotsoundproofed
atkAE_clearstatusifnotsoundproofed: @ 8053438
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r4, 0
	str r4, [sp, 0x4]
	mov r8, r4
	ldr r0, =gUnknown_020241EA
	ldrh r0, [r0]
	cmp r0, 0xD7
	beq _08053454
	b _0805363E
_08053454:
	ldr r6, =gUnknown_02024332
	mov r0, r8
	strb r0, [r6, 0x5]
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, =gEnemyParty
	mov r10, r1
	cmp r0, 0
	bne _08053470
	ldr r2, =gPlayerParty
	mov r10, r2
_08053470:
	ldr r4, =gBattleMons
	ldrb r3, [r5]
	movs r7, 0x58
	adds r2, r3, 0
	muls r2, r7
	adds r0, r2, r4
	adds r1, r0, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0x2B
	beq _080534C4
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r2, r0
	mov r1, r8
	str r1, [r0]
	ldrb r0, [r5]
	adds r2, r0, 0
	muls r2, r7
	adds r0, r4, 0
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	b _080534D4
	.pool
_080534C4:
	ldrb r1, [r1]
	adds r0, r3, 0
	bl b_history__record_ability_usage_of_player
	ldrb r0, [r6, 0x5]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r6, 0x5]
_080534D4:
	ldr r7, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r2, 0x2
	mov r9, r2
	mov r1, r9
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_02024474
	strb r0, [r1, 0x17]
	strb r0, [r7]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805357A
	ldr r0, =gUnknown_02024210
	ldrb r2, [r0]
	ldr r1, =gBitTable
	ldrb r3, [r7]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	bne _0805357A
	ldr r5, =gBattleMons
	movs r6, 0x58
	adds r4, r3, 0
	muls r4, r6
	adds r0, r4, r5
	adds r1, r0, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0x2B
	beq _08053568
	adds r0, r5, 0
	adds r0, 0x4C
	adds r0, r4, r0
	str r2, [r0]
	ldrb r0, [r7]
	adds r2, r0, 0
	muls r2, r6
	adds r0, r5, 0
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	b _0805357A
	.pool
_08053568:
	ldrb r1, [r1]
	adds r0, r3, 0
	bl b_history__record_ability_usage_of_player
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x5]
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, 0x5]
_0805357A:
	movs r6, 0
	ldr r7, =gBattleMons
_0805357E:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	add r4, r10
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x2E
	bl GetMonData
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r5, 0
	beq _08053636
	movs r0, 0xCE
	lsls r0, 1
	cmp r5, r0
	beq _08053636
	ldr r2, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, r6
	bne _080535D0
	movs r0, 0x58
	muls r0, r1
	b _08053600
	.pool
_080535D0:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08053618
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	lsls r0, r3, 1
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, r6
	bne _08053618
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08053618
	movs r0, 0x58
	muls r0, r3
_08053600:
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	b _08053624
	.pool
_08053618:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806B694
	lsls r0, 24
	lsrs r0, 24
_08053624:
	cmp r0, 0x2B
	beq _08053636
	movs r0, 0x1
	lsls r0, r6
	mov r1, r8
	orrs r1, r0
	lsls r0, r1, 24
	lsrs r0, 24
	mov r8, r0
_08053636:
	adds r6, 0x1
	cmp r6, 0x5
	ble _0805357E
	b _080536BC
_0805363E:
	ldr r1, =gUnknown_02024332
	movs r0, 0x4
	strb r0, [r1, 0x5]
	movs r2, 0x3F
	mov r8, r2
	ldr r3, =gBattleMons
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	movs r5, 0x58
	muls r0, r5
	movs r1, 0x4C
	adds r1, r3
	mov r9, r1
	add r0, r9
	str r4, [r0]
	ldrb r0, [r2]
	adds r1, r0, 0
	muls r1, r5
	adds r7, r3, 0
	adds r7, 0x50
	adds r1, r7
	ldr r0, [r1]
	ldr r6, =0xf7ffffff
	ands r0, r6
	str r0, [r1]
	ldrb r0, [r2]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080536BC
	ldr r0, =gUnknown_02024210
	ldrb r2, [r0]
	ldr r1, =gBitTable
	ldrb r3, [r4]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	bne _080536BC
	adds r0, r3, 0
	muls r0, r5
	add r0, r9
	str r2, [r0]
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r7
	ldr r0, [r1]
	ands r0, r6
	str r0, [r1]
_080536BC:
	mov r2, r8
	cmp r2, 0
	beq _080536DE
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	add r0, sp, 0x4
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080536DE:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkAE_clearstatusifnotsoundproofed

	thumb_func_start atkAF_cursetarget
atkAF_cursetarget: @ 805371C
	push {r4,r5,lr}
	ldr r5, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r0, r5, 0
	adds r0, 0x50
	adds r1, r0
	ldr r2, [r1]
	movs r3, 0x80
	lsls r3, 21
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08053768
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805378C
	.pool
_08053768:
	orrs r2, r3
	str r2, [r1]
	ldr r1, =gBattleMoveDamage
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r1]
	cmp r0, 0
	bne _08053784
	movs r0, 0x1
	str r0, [r1]
_08053784:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805378C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkAF_cursetarget

	thumb_func_start atkB0_setspikes
atkB0_setspikes: @ 80537A0
	push {r4,lr}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02024294
	lsls r2, r0, 1
	adds r0, r2, r0
	lsls r0, 2
	adds r3, r0, r1
	ldrb r0, [r3, 0xA]
	cmp r0, 0x3
	bne _08053804
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805381E
	.pool
_08053804:
	ldr r1, =gUnknown_0202428E
	adds r1, r2, r1
	ldrh r2, [r1]
	movs r0, 0x10
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3, 0xA]
	adds r0, 0x1
	strb r0, [r3, 0xA]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805381E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB0_setspikes

	thumb_func_start atkB1_setforesight
atkB1_setforesight: @ 805382C
	ldr r1, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r2, [r0]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 22
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atkB1_setforesight

	thumb_func_start atkB2_setperishsong
atkB2_setperishsong: @ 805385C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	movs r3, 0
	ldr r0, =gUnknown_0202406C
	adds r7, r0, 0
	ldr r0, =gUnknown_0202420B
	mov r8, r0
	ldrb r1, [r7]
	cmp r6, r1
	bge _080538C8
	movs r5, 0x20
	ldr r0, =gBattleMons
	mov r12, r0
	ldr r0, =gUnknown_020242BC
	adds r4, r0, 0
	adds r4, 0xF
	ldr r2, =gUnknown_020242AC
_08053884:
	ldr r1, [r2]
	adds r0, r1, 0
	ands r0, r5
	cmp r0, 0
	bne _0805389C
	movs r0, 0x58
	muls r0, r3
	add r0, r12
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2B
	bne _080538B4
_0805389C:
	adds r6, 0x1
	b _080538BC
	.pool
_080538B4:
	orrs r1, r5
	str r1, [r2]
	movs r0, 0x33
	strb r0, [r4]
_080538BC:
	adds r4, 0x1C
	adds r2, 0x4
	adds r3, 0x1
	ldrb r0, [r7]
	cmp r3, r0
	blt _08053884
_080538C8:
	mov r1, r8
	ldrb r0, [r1]
	bl sub_803F67C
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	bne _080538FC
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08053904
	.pool
_080538FC:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08053904:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB2_setperishsong

	thumb_func_start atkB3_rolloutdamagecalculation
atkB3_rolloutdamagecalculation: @ 8053914
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08053948
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D8A60
	str r0, [r1]
	b _08053A60
	.pool
_08053948:
	ldr r2, =gBattleMons
	ldr r1, =gUnknown_0202420B
	ldrb r3, [r1]
	movs r5, 0x58
	adds r0, r3, 0
	muls r0, r5
	adds r4, r2, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r7, 0x80
	lsls r7, 5
	ands r0, r7
	adds r6, r1, 0
	mov r9, r2
	ldr r1, =gUnknown_020242BC
	mov r12, r1
	ldr r2, =gUnknown_020241EA
	mov r8, r2
	cmp r0, 0
	bne _080539BA
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	add r0, r12
	ldrb r2, [r0, 0x11]
	movs r1, 0x10
	negs r1, r1
	ands r1, r2
	movs r2, 0x5
	orrs r1, r2
	strb r1, [r0, 0x11]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r2, [r0, 0x11]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x50
	orrs r1, r2
	strb r1, [r0, 0x11]
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r4
	ldr r0, [r1]
	orrs r0, r7
	str r0, [r1]
	ldr r1, =gUnknown_02024268
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r1
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0]
_080539BA:
	ldrb r0, [r6]
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	add r2, r12
	ldrb r3, [r2, 0x11]
	lsls r1, r3, 28
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0x11]
	cmp r1, 0
	bne _080539EE
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r4
	ldr r0, [r1]
	ldr r2, =0xffffefff
	ands r0, r2
	str r0, [r1]
_080539EE:
	ldr r3, =gUnknown_02024400
	ldr r2, =gBattleMoves
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	strh r0, [r3]
	movs r2, 0x1
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r1, r12
	adds r4, r0, r1
	ldrb r0, [r4, 0x11]
	lsls r0, 28
	lsrs r0, 28
	movs r1, 0x5
	subs r1, r0
	ldr r7, =gUnknown_02024214
	adds r5, r3, 0
	cmp r2, r1
	bge _08053A3C
	adds r1, r5, 0
	adds r3, r4, 0
	movs r4, 0x5
_08053A28:
	ldrh r0, [r1]
	lsls r0, 1
	strh r0, [r1]
	adds r2, 0x1
	ldrb r0, [r3, 0x11]
	lsls r0, 28
	lsrs r0, 28
	subs r0, r4, r0
	cmp r2, r0
	blt _08053A28
_08053A3C:
	ldrb r1, [r6]
	movs r0, 0x58
	muls r0, r1
	mov r1, r9
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 23
	ands r0, r1
	cmp r0, 0
	beq _08053A5A
	ldrh r0, [r5]
	lsls r0, 1
	strh r0, [r5]
_08053A5A:
	ldr r0, [r7]
	adds r0, 0x1
	str r0, [r7]
_08053A60:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB3_rolloutdamagecalculation

	thumb_func_start atkB4_jumpifconfusedandattackmaxed
atkB4_jumpifconfusedandattackmaxed: @ 8053A90
	push {r4,r5,lr}
	ldr r5, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r5, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	ldr r4, =gUnknown_02024214
	cmp r0, 0
	beq _08053AEC
	ldr r2, [r4]
	ldrb r0, [r2, 0x1]
	adds r0, r3
	adds r1, r5, 0
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xC
	bne _08053AEC
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _08053AF2
	.pool
_08053AEC:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_08053AF2:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end atkB4_jumpifconfusedandattackmaxed

	thumb_func_start sub_8053AF8
sub_8053AF8: @ 8053AF8
	push {r4,r5,lr}
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08053B34
	ldr r2, =gUnknown_020242BC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x10]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D8A60
	str r0, [r1]
	b _08053B8C
	.pool
_08053B34:
	ldr r5, =gUnknown_020242BC
	ldr r4, =gUnknown_0202420B
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r5
	ldrb r0, [r1, 0x10]
	cmp r0, 0x5
	beq _08053B4C
	adds r0, 0x1
	strb r0, [r1, 0x10]
_08053B4C:
	ldr r3, =gUnknown_02024400
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	strh r0, [r3]
	movs r2, 0x1
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r4, =gUnknown_02024214
	ldrb r1, [r0, 0x10]
	cmp r2, r1
	bge _08053B86
	adds r1, r3, 0
	adds r3, r0, 0
_08053B78:
	ldrh r0, [r1]
	lsls r0, 1
	strh r0, [r1]
	adds r2, 0x1
	ldrb r0, [r3, 0x10]
	cmp r2, r0
	blt _08053B78
_08053B86:
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
_08053B8C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8053AF8

	thumb_func_start atkB6_happinesstodamagecalculation
atkB6_happinesstodamagecalculation: @ 8053BAC
	push {r4,lr}
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x79
	bne _08053BEC
	ldr r4, =gUnknown_02024400
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2B
	ldrb r1, [r0]
	b _08053C02
	.pool
_08053BEC:
	ldr r4, =gUnknown_02024400
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2B
	ldrb r0, [r0]
	movs r1, 0xFF
	subs r1, r0
_08053C02:
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 1
	movs r1, 0x19
	bl __divsi3
	strh r0, [r4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB6_happinesstodamagecalculation

	thumb_func_start atkB7_presentdamagecalculation
atkB7_presentdamagecalculation: @ 8053C30
	push {r4,lr}
	bl Random
	movs r4, 0xFF
	ands r4, r0
	cmp r4, 0x65
	bgt _08053C4C
	ldr r1, =gUnknown_02024400
	movs r0, 0x28
	strh r0, [r1]
	b _08053C8E
	.pool
_08053C4C:
	cmp r4, 0xB1
	bgt _08053C5C
	ldr r1, =gUnknown_02024400
	movs r0, 0x50
	strh r0, [r1]
	b _08053C8E
	.pool
_08053C5C:
	cmp r4, 0xCB
	bgt _08053C6C
	ldr r1, =gUnknown_02024400
	movs r0, 0x78
	strh r0, [r1]
	b _08053C8E
	.pool
_08053C6C:
	ldr r3, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2C]
	lsrs r0, 2
	str r0, [r3]
	cmp r0, 0
	bne _08053C88
	movs r0, 0x1
	str r0, [r3]
_08053C88:
	ldr r0, [r3]
	negs r0, r0
	str r0, [r3]
_08053C8E:
	cmp r4, 0xCB
	bgt _08053CAC
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D8A30
	b _08053CE6
	.pool
_08053CAC:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r1, [r0, 0x2C]
	ldrh r0, [r0, 0x28]
	cmp r1, r0
	bne _08053CD8
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D9EFB
	b _08053CE6
	.pool
_08053CD8:
	ldr r2, =gBattleMoveFlags
	ldrb r1, [r2]
	movs r0, 0xF7
	ands r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082D9EE1
_08053CE6:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB7_presentdamagecalculation

	thumb_func_start atkB8_setsafeguard
atkB8_setsafeguard: @ 8053CFC
	push {r4-r7,lr}
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	bl battle_get_per_side_status
	ldr r4, =gUnknown_0202428E
	movs r6, 0x1
	adds r1, r6, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r1, [r1]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08053D40
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	b _08053D88
	.pool
_08053D40:
	ldrb r0, [r7]
	bl battle_get_per_side_status
	adds r1, r6, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r0, [r1]
	movs r2, 0x20
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r7]
	bl battle_get_per_side_status
	ldr r5, =gUnknown_02024294
	adds r1, r6, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r4, 0x5
	strb r4, [r0, 0x6]
	ldrb r0, [r7]
	bl battle_get_per_side_status
	adds r1, r6, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r7]
	strb r1, [r0, 0x7]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
_08053D88:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB8_setsafeguard

	thumb_func_start atkB9_magnitudedamagecalculation
atkB9_magnitudedamagecalculation: @ 8053DA4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x4
	bgt _08053DD0
	ldr r1, =gUnknown_02024400
	movs r0, 0xA
	strh r0, [r1]
	movs r3, 0x4
	b _08053E3C
	.pool
_08053DD0:
	cmp r3, 0xE
	bgt _08053DE4
	ldr r1, =gUnknown_02024400
	movs r0, 0x1E
	strh r0, [r1]
	movs r3, 0x5
	b _08053E3C
	.pool
_08053DE4:
	cmp r3, 0x22
	bgt _08053DF8
	ldr r1, =gUnknown_02024400
	movs r0, 0x32
	strh r0, [r1]
	movs r3, 0x6
	b _08053E3C
	.pool
_08053DF8:
	cmp r3, 0x40
	bgt _08053E0C
	ldr r1, =gUnknown_02024400
	movs r0, 0x46
	strh r0, [r1]
	movs r3, 0x7
	b _08053E3C
	.pool
_08053E0C:
	cmp r3, 0x54
	bgt _08053E20
	ldr r1, =gUnknown_02024400
	movs r0, 0x5A
	strh r0, [r1]
	movs r3, 0x8
	b _08053E3C
	.pool
_08053E20:
	cmp r3, 0x5E
	bgt _08053E34
	ldr r1, =gUnknown_02024400
	movs r0, 0x6E
	strh r0, [r1]
	movs r3, 0x9
	b _08053E3C
	.pool
_08053E34:
	ldr r1, =gUnknown_02024400
	movs r0, 0x96
	strh r0, [r1]
	movs r3, 0xA
_08053E3C:
	ldr r1, =gUnknown_02022F58
	movs r2, 0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	strb r0, [r1, 0x2]
	movs r0, 0x2
	strb r0, [r1, 0x3]
	strb r3, [r1, 0x4]
	movs r0, 0xFF
	strb r0, [r1, 0x5]
	ldr r1, =gEnemyMonIndex
	strb r2, [r1]
	ldr r0, =gUnknown_0202406C
	ldrb r3, [r0]
	adds r6, r1, 0
	ldr r0, =gUnknown_02024214
	mov r8, r0
	cmp r2, r3
	bcs _08053E94
	adds r4, r6, 0
	ldr r0, =gUnknown_0202420B
	ldrb r5, [r0]
	ldr r1, =gBitTable
	mov r12, r1
	ldr r7, =gUnknown_02024210
_08053E72:
	ldrb r2, [r4]
	cmp r2, r5
	beq _08053E88
	ldrb r0, [r7]
	ldrb r1, [r6]
	lsls r1, 2
	add r1, r12
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	beq _08053E94
_08053E88:
	adds r0, r2, 0x1
	strb r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r3
	bcc _08053E72
_08053E94:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkB9_magnitudedamagecalculation

	thumb_func_start atkBA_802B140
atkBA_802B140: @ 8053EC8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_02024212
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08053EF8
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08053EF4
	movs r0, 0x1
	b _08053F12
	.pool
_08053EF4:
	movs r0, 0
	b _08053F12
_08053EF8:
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08053F10
	movs r0, 0x3
	b _08053F12
	.pool
_08053F10:
	movs r0, 0x2
_08053F12:
	bl battle_get_side_with_given_state
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r0, =gUnknown_0202421C
	ldr r1, =gEnemyMonIndex
	ldrb r3, [r1]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	beq _08053F2A
	b _08054030
_08053F2A:
	ldr r5, =gUnknown_0202420B
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	adds r1, r3, r1
	ldrb r2, [r5]
	ldrb r1, [r1, 0xC]
	cmp r2, r1
	bne _08054030
	ldr r4, =gBattleMons
	movs r2, 0x58
	adds r0, r3, 0
	muls r0, r2
	adds r1, r4, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x27
	ands r0, r1
	cmp r0, 0
	bne _08054030
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r4
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08054030
	ldr r0, =gUnknown_020242BC
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _08054030
	ldr r0, =gUnknown_02024274
	lsls r1, r3, 1
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0xE4
	bne _08054030
	movs r1, 0
	ldr r0, =gUnknown_0202406C
	ldr r2, =gUnknown_020241EA
	mov r8, r2
	ldr r7, =gUnknown_020241E8
	mov r10, r7
	ldr r2, =gUnknown_020241E9
	mov r9, r2
	ldr r7, =gUnknown_02024280
	mov r12, r7
	ldrb r2, [r0]
	cmp r1, r2
	bge _08053FB6
	ldr r6, =gUnknown_0202407E
	ldr r5, =gEnemyMonIndex
	ldr r4, =gUnknown_0202407A
	movs r3, 0xB
	adds r2, r0, 0
_08053FA0:
	adds r0, r1, r6
	ldrb r0, [r0]
	ldrb r7, [r5]
	cmp r0, r7
	bne _08053FAE
	adds r0, r1, r4
	strb r3, [r0]
_08053FAE:
	adds r1, 0x1
	ldrb r0, [r2]
	cmp r1, r0
	blt _08053FA0
_08053FB6:
	movs r0, 0xE4
	mov r1, r8
	strh r0, [r1]
	ldr r2, =gEnemyMonIndex
	ldrb r0, [r2]
	ldr r7, =gUnknown_0202449C
	ldr r1, [r7]
	adds r0, r1
	adds r0, 0x80
	ldrb r0, [r0]
	mov r1, r9
	strb r0, [r1]
	mov r2, r10
	strb r0, [r2]
	ldr r7, =gUnknown_02024214
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	movs r0, 0x1
	ldr r1, =gUnknown_02024474
	strb r0, [r1, 0x18]
	mov r2, r12
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	b _0805404A
	.pool
_08054030:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0805404A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkBA_802B140

	thumb_func_start sub_805405C
sub_805405C: @ 805405C
	push {lr}
	ldr r2, =gBattleWeather
	ldrh r1, [r2]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _08054088
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0805409A
	.pool
_08054088:
	movs r0, 0x20
	strh r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x28
	movs r1, 0x5
	strb r1, [r0]
_0805409A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_805405C

	thumb_func_start atkBC_maxattackhalvehp
atkBC_maxattackhalvehp: @ 80540B4
	push {r4,r5,lr}
	ldr r5, =gBattleMons
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	movs r3, 0x58
	muls r0, r3
	adds r2, r0, r5
	ldrh r0, [r2, 0x2C]
	lsrs r1, r0, 1
	cmp r1, 0
	bne _080540CC
	movs r1, 0x1
_080540CC:
	movs r0, 0x19
	ldrsb r0, [r2, r0]
	cmp r0, 0xB
	bgt _08054110
	ldrh r0, [r2, 0x28]
	cmp r0, r1
	bls _08054110
	movs r0, 0xC
	strb r0, [r2, 0x19]
	ldr r1, =gBattleMoveDamage
	ldrb r0, [r4]
	muls r0, r3
	adds r0, r5
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r1]
	cmp r0, 0
	bne _080540F4
	movs r0, 0x1
	str r0, [r1]
_080540F4:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0805412A
	.pool
_08054110:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0805412A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkBC_maxattackhalvehp

	thumb_func_start atkBD_copyfoestats
atkBD_copyfoestats: @ 8054134
	push {r4-r7,lr}
	movs r2, 0
	ldr r7, =gUnknown_02024214
	ldr r6, =gUnknown_0202420B
	movs r4, 0x58
	ldr r3, =gUnknown_0202409C
	ldr r5, =gEnemyMonIndex
_08054142:
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r4
	adds r1, r2, r1
	adds r1, r3
	ldrb r0, [r5]
	muls r0, r4
	adds r0, r2, r0
	adds r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, 0x7
	ble _08054142
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkBD_copyfoestats

	thumb_func_start atkBE_breakfree
atkBE_breakfree: @ 805417C
	push {r4-r6,lr}
	ldr r1, =gBattleMons
	ldr r5, =gUnknown_0202420B
	ldrb r2, [r5]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	adds r4, r1, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0xE0
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _08054210
	ldr r1, =gUnknown_02024474
	ldr r3, =gEnemyMonIndex
	ldrb r0, [r3]
	strb r0, [r1, 0x17]
	ldrb r0, [r5]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r4
	ldr r0, [r1]
	ldr r2, =0xffff1fff
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r5]
	ldr r1, =gUnknown_0202449C
	ldr r2, [r1]
	adds r0, r2
	ldrb r0, [r0, 0x14]
	strb r0, [r3]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r2
	ldrb r0, [r0, 0x4]
	strb r0, [r1, 0x2]
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r2
	ldrb r0, [r0, 0x5]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAFC5
	b _080542BA
	.pool
_08054210:
	ldr r4, =gUnknown_020242AC
	lsls r0, r2, 2
	adds r3, r0, r4
	ldr r1, [r3]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08054250
	movs r0, 0x5
	negs r0, r0
	ands r1, r0
	str r1, [r3]
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x4
	negs r2, r2
	ands r0, r2
	str r0, [r1]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAFD6
	b _080542BA
	.pool
_08054250:
	adds r0, r2, 0
	bl battle_side_get_owner
	ldr r4, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 23
	adds r0, r4
	ldrh r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080542B4
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, r4
	ldrh r2, [r0]
	ldr r1, =0x0000ffef
	ands r1, r2
	movs r4, 0
	strh r1, [r0]
	ldrb r0, [r5]
	bl battle_side_get_owner
	ldr r2, =gUnknown_02024294
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	strb r4, [r1, 0xA]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DAFDD
	b _080542BA
	.pool
_080542B4:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
_080542BA:
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkBE_breakfree

	thumb_func_start atkBF_setcurled
atkBF_setcurled: @ 80542C8
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 23
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atkBF_setcurled

	thumb_func_start atkC0_recoverbasedonsunlight
atkC0_recoverbasedonsunlight: @ 80542F8
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r1, =gEnemyMonIndex
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r7, =gBattleMons
	ldrb r0, [r5]
	movs r6, 0x58
	muls r0, r6
	adds r0, r7
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	beq _080543D8
	ldr r4, =gBattleWeather
	ldrh r0, [r4]
	cmp r0, 0
	beq _0805434A
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0805434A
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	beq _08054378
_0805434A:
	ldr r3, =gBattleMoveDamage
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r3]
	adds r1, r3, 0
	b _080543B2
	.pool
_08054378:
	ldrh r1, [r4]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _080543A4
	ldr r4, =gBattleMoveDamage
	ldrb r0, [r5]
	muls r0, r6
	adds r0, r7
	ldrh r1, [r0, 0x2C]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	movs r1, 0x1E
	bl __divsi3
	str r0, [r4]
	adds r1, r4, 0
	b _080543B2
	.pool
_080543A4:
	ldr r1, =gBattleMoveDamage
	ldrb r0, [r5]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0, 0x2C]
	lsrs r0, 2
	str r0, [r1]
_080543B2:
	adds r2, r1, 0
	ldr r0, [r2]
	cmp r0, 0
	bne _080543BE
	movs r0, 0x1
	str r0, [r2]
_080543BE:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080543F2
	.pool
_080543D8:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080543F2:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC0_recoverbasedonsunlight

	thumb_func_start sub_8054400
sub_8054400: @ 8054400
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r4, r2
	ldrb r0, [r4, 0x14]
	mov r10, r0
	mov r7, r10
	lsls r7, 27
	adds r0, r7, 0
	lsrs r0, 27
	mov r10, r0
	movs r1, 0x2
	mov r2, r10
	ands r2, r1
	asrs r2, 1
	ldrh r7, [r4, 0x14]
	mov r9, r7
	mov r0, r9
	lsls r0, 22
	mov r9, r0
	lsrs r3, r0, 27
	adds r0, r1, 0
	ands r0, r3
	orrs r2, r0
	ldrb r7, [r4, 0x15]
	mov r8, r7
	mov r0, r8
	lsls r0, 25
	mov r8, r0
	lsrs r3, r0, 27
	adds r0, r1, 0
	ands r0, r3
	lsls r0, 1
	orrs r2, r0
	ldr r6, [r4, 0x14]
	lsls r6, 12
	lsrs r3, r6, 27
	adds r0, r1, 0
	ands r0, r3
	lsls r0, 2
	orrs r2, r0
	ldrh r5, [r4, 0x16]
	lsls r5, 23
	lsrs r3, r5, 27
	adds r0, r1, 0
	ands r0, r3
	lsls r0, 3
	orrs r2, r0
	ldrb r3, [r4, 0x17]
	lsls r3, 26
	lsrs r0, r3, 27
	ands r1, r0
	lsls r1, 4
	orrs r2, r1
	movs r1, 0x1
	adds r4, r1, 0
	mov r7, r10
	ands r4, r7
	mov r0, r9
	lsrs r0, 27
	mov r9, r0
	adds r0, r1, 0
	mov r7, r9
	ands r0, r7
	lsls r0, 1
	orrs r4, r0
	mov r0, r8
	lsrs r0, 27
	mov r8, r0
	adds r0, r1, 0
	mov r7, r8
	ands r0, r7
	lsls r0, 2
	orrs r4, r0
	lsrs r6, 27
	adds r0, r1, 0
	ands r0, r6
	lsls r0, 3
	orrs r4, r0
	lsrs r5, 27
	adds r0, r1, 0
	ands r0, r5
	lsls r0, 4
	orrs r4, r0
	lsrs r3, 27
	ands r1, r3
	lsls r1, 5
	orrs r4, r1
	ldr r5, =gUnknown_02024400
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	movs r1, 0x3F
	bl __divsi3
	adds r0, 0x1E
	strh r0, [r5]
	ldr r6, =gUnknown_0202449C
	ldr r5, [r6]
	lsls r0, r4, 4
	subs r0, r4
	movs r1, 0x3F
	bl __divsi3
	adds r0, 0x1
	strb r0, [r5, 0x13]
	ldr r1, [r6]
	ldrb r0, [r1, 0x13]
	cmp r0, 0x8
	bls _080544F0
	adds r0, 0x1
	strb r0, [r1, 0x13]
_080544F0:
	ldr r2, [r6]
	ldrb r0, [r2, 0x13]
	movs r1, 0xC0
	orrs r0, r1
	strb r0, [r2, 0x13]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8054400

	thumb_func_start atkC2_selectnexttarget
atkC2_selectnexttarget: @ 8054524
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gEnemyMonIndex
	movs r1, 0
	strb r1, [r0]
	ldr r1, =gUnknown_0202406C
	ldrb r1, [r1]
	adds r6, r0, 0
	ldr r0, =gUnknown_02024214
	mov r8, r0
	cmp r1, 0
	beq _0805456E
	adds r3, r6, 0
	ldr r0, =gUnknown_0202420B
	ldrb r5, [r0]
	ldr r0, =gBitTable
	mov r12, r0
	adds r4, r1, 0
	ldr r7, =gUnknown_02024210
_0805454C:
	ldrb r2, [r3]
	cmp r2, r5
	beq _08054562
	ldrb r0, [r7]
	ldrb r1, [r6]
	lsls r1, 2
	add r1, r12
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	beq _0805456E
_08054562:
	adds r0, r2, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcc _0805454C
_0805456E:
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC2_selectnexttarget

	thumb_func_start atkC3_setfutureattack
atkC3_setfutureattack: @ 8054598
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r0, =gUnknown_020243D0
	mov r8, r0
	ldr r6, =gEnemyMonIndex
	ldrb r1, [r6]
	adds r0, r1, r0
	ldrb r7, [r0]
	cmp r7, 0
	beq _080545DC
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080546CC
	.pool
_080545DC:
	adds r0, r1, 0
	bl battle_get_per_side_status
	ldr r4, =gUnknown_0202428E
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	mov r10, r1
	ands r0, r1
	lsls r0, 1
	adds r0, r4
	ldrh r2, [r0]
	movs r1, 0x40
	movs r5, 0
	mov r3, sp
	strh r5, [r3, 0x10]
	orrs r1, r2
	strh r1, [r0]
	ldrb r0, [r6]
	lsls r0, 1
	mov r1, r8
	adds r1, 0x18
	adds r0, r1
	ldr r1, =gUnknown_020241EA
	mov r9, r1
	ldrh r1, [r1]
	strh r1, [r0]
	mov r0, r8
	adds r0, 0x4
	ldrb r2, [r6]
	adds r0, r2
	ldr r5, =gUnknown_0202420B
	ldrb r1, [r5]
	strb r1, [r0]
	ldrb r0, [r6]
	add r0, r8
	movs r1, 0x3
	strb r1, [r0]
	ldrb r0, [r6]
	bl battle_get_per_side_status
	mov r1, r10
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldrb r0, [r5]
	movs r4, 0x58
	muls r0, r4
	ldr r2, =gBattleMons
	adds r0, r2
	ldrb r1, [r6]
	muls r1, r4
	adds r1, r2
	mov r4, r9
	ldrh r2, [r4]
	str r7, [sp]
	str r7, [sp, 0x4]
	ldrb r4, [r5]
	str r4, [sp, 0x8]
	ldrb r4, [r6]
	str r4, [sp, 0xC]
	bl sub_806957C
	ldrb r1, [r6]
	lsls r1, 2
	mov r2, r8
	adds r2, 0x8
	adds r1, r2
	str r0, [r1]
	ldr r1, =gUnknown_0202433C
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _0805468C
	ldrb r4, [r6]
	lsls r4, 2
	adds r4, r2
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0805468C:
	mov r5, r9
	ldrh r1, [r5]
	ldr r0, =0x00000161
	cmp r1, r0
	bne _080546BC
	ldr r0, =gUnknown_02024332
	mov r1, r10
	strb r1, [r0, 0x5]
	b _080546C4
	.pool
_080546BC:
	ldr r0, =gUnknown_02024332
	mov r2, sp
	ldrb r2, [r2, 0x10]
	strb r2, [r0, 0x5]
_080546C4:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080546CC:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC3_setfutureattack

	thumb_func_start atkC4_802B910
atkC4_802B910: @ 80546E4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r7, =gEnemyParty
	cmp r0, 0
	bne _080546FE
	ldr r7, =gPlayerParty
_080546FE:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08054740
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	b _080548DC
	.pool
_08054740:
	ldr r6, =gUnknown_02024332
	ldrb r0, [r6]
	mov r8, r0
	cmp r0, 0x5
	bls _0805474C
	b _080548A8
_0805474C:
	adds r4, r6, 0
	movs r5, 0x64
_08054750:
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r7, r0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08054794
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7, r0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08054794
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r7, r0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	beq _08054794
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r7, r0
	movs r1, 0x37
	bl GetMonData
	cmp r0, 0
	beq _080547A4
_08054794:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	adds r6, r4, 0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bls _08054750
_080547A4:
	ldr r1, =gUnknown_02024332
	mov r9, r1
	ldrb r2, [r1]
	cmp r2, 0x5
	bhi _080548A8
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	strb r0, [r1, 0x2]
	strb r2, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x9
	str r0, [r1]
	ldr r2, =gBattleMoveDamage
	mov r8, r2
	ldr r5, =gBaseStats
	mov r1, r9
	ldrb r0, [r1]
	movs r4, 0x64
	muls r0, r4
	adds r0, r7, r0
	movs r1, 0xB
	bl GetMonData
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r3, [r1, 0x1]
	mov r2, r8
	str r3, [r2]
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	muls r0, r3
	mov r1, r8
	str r0, [r1]
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r4
	adds r0, r7, r0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 1
	movs r1, 0x5
	bl __udivsi3
	adds r0, 0x2
	mov r2, r8
	ldr r1, [r2]
	muls r0, r1
	str r0, [r2]
	ldr r3, =gBattleMons
	ldr r1, =gEnemyMonIndex
	ldrb r2, [r1]
	movs r1, 0x58
	muls r1, r2
	adds r1, r3
	ldrh r2, [r1]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r5
	ldrb r1, [r1, 0x2]
	bl __divsi3
	mov r1, r8
	str r0, [r1]
	movs r1, 0x32
	bl __divsi3
	adds r2, r0, 0x2
	mov r0, r8
	str r2, [r0]
	ldr r1, =gUnknown_0202433C
	ldrb r0, [r6]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _08054870
	lsls r0, r2, 4
	subs r0, r2
	movs r1, 0xA
	bl __divsi3
	mov r1, r8
	str r0, [r1]
_08054870:
	mov r2, r9
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	b _080548E2
	.pool
_080548A8:
	mov r0, r8
	cmp r0, 0
	beq _080548C8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	b _080548DC
	.pool
_080548C8:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x8]
_080548DC:
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080548E2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC4_802B910

	thumb_func_start atkC5_hidepreattack
atkC5_hidepreattack: @ 80548F4
	push {lr}
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	cmp r1, 0x5B
	beq _08054934
	cmp r1, 0x5B
	bgt _0805490C
	cmp r1, 0x13
	beq _08054918
	b _08054960
	.pool
_0805490C:
	ldr r0, =0x00000123
	cmp r1, r0
	beq _0805494C
	adds r0, 0x31
	cmp r1, r0
	bne _08054960
_08054918:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x40
	b _0805495C
	.pool
_08054934:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x80
	b _0805495C
	.pool
_0805494C:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 11
_0805495C:
	orrs r0, r2
	str r0, [r1]
_08054960:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC5_hidepreattack

	thumb_func_start atkC6_unhidepostattack
atkC6_unhidepostattack: @ 8054978
	push {lr}
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	cmp r1, 0x5B
	beq _080549BC
	cmp r1, 0x5B
	bgt _08054990
	cmp r1, 0x13
	beq _0805499C
	b _080549EA
	.pool
_08054990:
	ldr r0, =0x00000123
	cmp r1, r0
	beq _080549D8
	adds r0, 0x31
	cmp r1, r0
	bne _080549EA
_0805499C:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x41
	negs r2, r2
	b _080549E6
	.pool
_080549BC:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x81
	negs r2, r2
	b _080549E6
	.pool
_080549D8:
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	ldr r2, =0xfffbffff
_080549E6:
	ands r0, r2
	str r0, [r1]
_080549EA:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC6_unhidepostattack

	thumb_func_start atkC7_setminimize
atkC7_setminimize: @ 8054A08
	push {lr}
	ldr r0, =gUnknown_02024280
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _08054A2C
	ldr r2, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	lsls r1, 2
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 1
	orrs r0, r2
	str r0, [r1]
_08054A2C:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC7_setminimize

	thumb_func_start sub_8054A48
sub_8054A48: @ 8054A48
	push {lr}
	ldr r3, =gBattleWeather
	ldrh r1, [r3]
	movs r2, 0x80
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _08054A78
	ldr r2, =gBattleMoveFlags
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08054A86
	.pool
_08054A78:
	strh r2, [r3]
	ldr r0, =gUnknown_02024332
	movs r1, 0x5
	strb r1, [r0, 0x5]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x28
	strb r1, [r0]
_08054A86:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8054A48

	thumb_func_start atkC9_jumpifattackandspecialattackcannotfall
atkC9_jumpifattackandspecialattackcannotfall: @ 8054AA0
	push {r4,lr}
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	movs r0, 0x19
	ldrsb r0, [r1, r0]
	adds r3, r2, 0
	cmp r0, 0
	bne _08054AF4
	movs r0, 0x1C
	ldrsb r0, [r1, r0]
	cmp r0, 0
	bne _08054AF4
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _08054AF4
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08054B20
	.pool
_08054AF4:
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r2, =gBattleMoveDamage
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	str r0, [r2]
	ldr r1, =0x00007fff
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08054B20:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkC9_jumpifattackandspecialattackcannotfall

	thumb_func_start atkCA_setforcedtarget
atkCA_setforcedtarget: @ 8054B3C
	push {r4,r5,lr}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_side_get_owner
	ldr r5, =gUnknown_02024294
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	movs r0, 0x1
	strb r0, [r1, 0x8]
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r4]
	strb r0, [r1, 0x9]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCA_setforcedtarget

	thumb_func_start atkCB_setcharge
atkCB_setcharge: @ 8054B88
	push {r4,lr}
	ldr r0, =gUnknown_020242AC
	ldr r3, =gUnknown_0202420B
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 2
	orrs r0, r2
	str r0, [r1]
	ldr r4, =gUnknown_020242BC
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r2, [r0, 0x12]
	movs r1, 0x10
	negs r1, r1
	ands r1, r2
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0, 0x12]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r2, [r0, 0x12]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0, 0x12]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCB_setcharge

	thumb_func_start atkCC_callterrainattack
atkCC_callterrainattack: @ 8054BEC
	push {r4,lr}
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, =gUnknown_020241EA
	ldr r1, =gUnknown_0831C414
	ldr r0, =gUnknown_02022FF0
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r3, =gUnknown_082D86A8
	ldr r2, =gBattleMoves
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	bl b_movescr_stack_push
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCC_callterrainattack

	thumb_func_start atkCD_cureifburnedparalysedorpoisoned
atkCD_cureifburnedparalysedorpoisoned: @ 8054C60
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r1, =gBattleMons
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	movs r6, 0x58
	muls r0, r6
	adds r5, r1, 0
	adds r5, 0x4C
	adds r2, r0, r5
	ldr r0, [r2]
	movs r1, 0xD8
	ands r0, r1
	cmp r0, 0
	beq _08054CBC
	movs r0, 0
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	ldr r4, =gUnknown_02024064
	ldrb r0, [r3]
	strb r0, [r4]
	ldrb r0, [r4]
	muls r0, r6
	adds r0, r5
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08054CD6
	.pool
_08054CBC:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08054CD6:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCD_cureifburnedparalysedorpoisoned

	thumb_func_start atkCE_settorment
atkCE_settorment: @ 8054CE4
	push {lr}
	ldr r1, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 24
	cmp r1, 0
	bge _08054D28
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08054D34
	.pool
_08054D28:
	orrs r1, r2
	str r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08054D34:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCE_settorment

	thumb_func_start atkCF_jumpifnodamage
atkCF_jumpifnodamage: @ 8054D3C
	push {lr}
	ldr r2, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r0, r2, 0x4
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08054D5C
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _08054D74
_08054D5C:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08054D8E
	.pool
_08054D74:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08054D8E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkCF_jumpifnodamage

	thumb_func_start atkD0_settaunt
atkD0_settaunt: @ 8054D98
	push {r4,lr}
	ldr r4, =gUnknown_020242BC
	ldr r3, =gEnemyMonIndex
	ldrb r0, [r3]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r2, r1, r4
	ldrb r1, [r2, 0x13]
	lsls r0, r1, 28
	cmp r0, 0
	bne _08054DE8
	movs r0, 0x10
	negs r0, r0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x13]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r2, [r0, 0x13]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0, 0x13]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08054E02
	.pool
_08054DE8:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08054E02:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkD0_settaunt

	thumb_func_start atkD1_sethelpinghand
atkD1_sethelpinghand: @ 8054E0C
	push {r4,lr}
	ldr r4, =gUnknown_0202420B
	ldrb r0, [r4]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r3, =gEnemyMonIndex
	strb r0, [r3]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08054E90
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r3, [r3]
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08054E90
	ldr r1, =gUnknown_0202433C
	ldrb r0, [r4]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	blt _08054E90
	lsls r0, r3, 4
	adds r2, r0, r1
	ldrb r1, [r2]
	lsls r0, r1, 28
	cmp r0, 0
	blt _08054E90
	movs r0, 0x8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08054EAA
	.pool
_08054E90:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08054EAA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkD1_sethelpinghand

	thumb_func_start sub_8054EB4
sub_8054EB4: @ 8054EB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r4, =gBattleTypeFlags
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	bne _08054F9A
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08054EE8
	ldr r0, [r4]
	ldr r1, =0x0a3f0902
	ands r0, r1
	cmp r0, 0
	beq _08054F9A
_08054EE8:
	ldr r6, =gUnknown_0202420B
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r7, =gEnemyMonIndex
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x0a3f0902
	ands r0, r1
	cmp r0, 0
	bne _08054F46
	ldr r0, =gUnknown_020243D0
	adds r2, r0, 0
	adds r2, 0x29
	adds r0, r4, r2
	ldrb r1, [r0]
	ldr r4, =gBitTable
	ldr r3, =gUnknown_0202406E
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08054F9A
	adds r0, r5, r2
	ldrb r1, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08054F9A
_08054F46:
	ldr r0, =gBattleMons
	mov r8, r0
	ldr r1, =gUnknown_0202420B
	ldrb r4, [r1]
	movs r5, 0x58
	adds r0, r4, 0
	muls r0, r5
	add r0, r8
	mov r9, r0
	ldrh r3, [r0, 0x2E]
	adds r1, r3, 0
	cmp r1, 0
	bne _08054F6E
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	muls r0, r5
	add r0, r8
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	beq _08054F9A
_08054F6E:
	cmp r1, 0xAF
	beq _08054F9A
	ldr r7, =gEnemyMonIndex
	ldrb r0, [r7]
	muls r0, r5
	mov r2, r8
	adds r1, r0, r2
	ldrh r2, [r1, 0x2E]
	cmp r2, 0xAF
	beq _08054F9A
	adds r0, r3, 0
	subs r0, 0x79
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xB
	bls _08054F9A
	adds r0, r2, 0
	subs r0, 0x79
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xB
	bhi _08054FDC
_08054F9A:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08055132
	.pool
_08054FDC:
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3C
	bne _08055010
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB63F
	str r0, [r1]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r7]
	muls r0, r5
	add r0, r8
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	ldrb r1, [r1]
	bl b_history__record_ability_usage_of_player
	b _08055132
	.pool
_08055010:
	ldr r3, =gUnknown_0202449C
	mov r10, r3
	lsls r0, r4, 1
	adds r0, 0xD0
	ldr r1, [r3]
	adds r6, r1, r0
	mov r0, r9
	ldrh r0, [r0, 0x2E]
	mov r9, r0
	strh r2, [r6]
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r1]
	muls r0, r5
	add r0, r8
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldrb r0, [r7]
	muls r0, r5
	add r0, r8
	mov r2, r9
	strh r2, [r0, 0x2E]
	ldr r4, =gUnknown_02024064
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	strb r0, [r4]
	str r6, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r1]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r7]
	strb r0, [r4]
	ldrb r0, [r7]
	muls r0, r5
	mov r1, r8
	adds r1, 0x2E
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r7]
	mov r2, r10
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	movs r3, 0
	strb r3, [r0]
	ldrb r0, [r7]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	strb r3, [r0]
	ldr r1, =gUnknown_0202420B
	ldrb r0, [r1]
	ldr r1, [r2]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC8
	strb r3, [r0]
	ldr r2, =gUnknown_0202420B
	ldrb r0, [r2]
	mov r3, r10
	ldr r1, [r3]
	lsls r0, 1
	adds r0, r1
	adds r0, 0xC9
	movs r1, 0
	strb r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	ldr r1, =gUnknown_02022F58
	movs r3, 0xFD
	strb r3, [r1]
	movs r2, 0xA
	strb r2, [r1, 0x1]
	ldrh r0, [r6]
	strb r0, [r1, 0x2]
	ldrh r0, [r6]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gUnknown_02022F68
	strb r3, [r1]
	strb r2, [r1, 0x1]
	mov r2, r9
	strb r2, [r1, 0x2]
	mov r3, r9
	lsrs r0, r3, 8
	strb r0, [r1, 0x3]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x4]
	cmp r3, 0
	beq _08055118
	ldrh r0, [r6]
	cmp r0, 0
	beq _0805512C
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _08055130
	.pool
_08055118:
	ldrh r0, [r6]
	cmp r0, 0
	beq _0805512C
	ldr r0, =gUnknown_02024332
	movs r1, 0
	strb r1, [r0, 0x5]
	b _08055132
	.pool
_0805512C:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
_08055130:
	strb r0, [r1, 0x5]
_08055132:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8054EB4

	thumb_func_start sub_8055148
sub_8055148: @ 8055148
	push {r4,lr}
	ldr r3, =gBattleMons
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	movs r2, 0x58
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r1, [r0]
	adds r0, r1, 0
	cmp r0, 0
	beq _0805519C
	cmp r0, 0x19
	beq _0805519C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	strb r1, [r0]
	ldr r1, =gUnknown_0202420A
	ldrb r0, [r4]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080551B6
	.pool
_0805519C:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080551B6:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8055148

	thumb_func_start atkD4_802C408
atkD4_802C408: @ 80551C0
	push {r4-r7,lr}
	ldr r7, =gUnknown_02024214
	ldr r2, [r7]
	ldrb r3, [r2, 0x1]
	cmp r3, 0
	beq _080551D8
	cmp r3, 0x1
	beq _08055210
	b _0805528C
	.pool
_080551D8:
	ldr r1, =gUnknown_020243D0
	ldr r4, =gUnknown_0202420B
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r5, [r4]
	adds r3, r0, r5
	ldrb r0, [r3]
	cmp r0, 0
	bne _0805525C
	movs r0, 0x2
	strb r0, [r3]
	ldrb r0, [r4]
	adds r1, 0x24
	adds r1, r0, r1
	ldr r2, =gUnknown_0202406E
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, 0x6
	b _0805528A
	.pool
_08055210:
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r4, =gEnemyMonIndex
	ldrb r0, [r4]
	strb r0, [r1, 0x2]
	ldr r0, =gUnknown_020243D0
	adds r0, 0x24
	ldrb r5, [r4]
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gBattleMoveDamage
	ldr r6, =gBattleMons
	ldrb r0, [r4]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r1]
	cmp r0, 0
	bne _08055248
	str r3, [r1]
_08055248:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r6
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	bne _08055288
_0805525C:
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r7]
	b _0805528C
	.pool
_08055288:
	adds r0, r2, 0x6
_0805528A:
	str r0, [r7]
_0805528C:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atkD4_802C408

	thumb_func_start sub_8055294
sub_8055294: @ 8055294
	push {lr}
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 3
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _080552D8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080552E4
	.pool
_080552D8:
	orrs r1, r3
	str r1, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080552E4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8055294

	thumb_func_start atkD6_doubledamagedealtifdamaged
atkD6_doubledamagedealtifdamaged: @ 80552EC
	push {lr}
	ldr r3, =gUnknown_0202433C
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r2, r0, 4
	adds r0, r3, 0x4
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0805530C
	adds r0, r2, r3
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r0, 0xC]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08055324
_0805530C:
	adds r0, r3, 0
	adds r0, 0x8
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0805532A
	adds r0, r2, r3
	ldr r1, =gEnemyMonIndex
	ldrb r0, [r0, 0xD]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805532A
_08055324:
	ldr r1, =gUnknown_02024474
	movs r0, 0x2
	strb r0, [r1, 0xE]
_0805532A:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkD6_doubledamagedealtifdamaged

	thumb_func_start sub_805534C
sub_805534C: @ 805534C
	push {r4,lr}
	ldr r1, =gUnknown_020242AC
	ldr r0, =gEnemyMonIndex
	ldrb r3, [r0]
	lsls r0, r3, 2
	adds r4, r0, r1
	ldr r2, [r4]
	movs r0, 0xC0
	lsls r0, 5
	ands r0, r2
	cmp r0, 0
	bne _08055374
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x4C
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _080553A0
_08055374:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080553B0
	.pool
_080553A0:
	movs r0, 0x80
	lsls r0, 5
	orrs r2, r0
	str r2, [r4]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080553B0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_805534C

	thumb_func_start atkD8_setdamagetohealthdifference
atkD8_setdamagetohealthdifference: @ 80553BC
	push {lr}
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	movs r1, 0x58
	muls r0, r1
	adds r3, r0, r2
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	muls r0, r1
	adds r1, r0, r2
	ldrh r0, [r3, 0x28]
	ldrh r2, [r1, 0x28]
	cmp r0, r2
	bhi _08055408
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805541A
	.pool
_08055408:
	ldr r2, =gBattleMoveDamage
	ldrh r0, [r3, 0x28]
	ldrh r1, [r1, 0x28]
	subs r0, r1
	str r0, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805541A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkD8_setdamagetohealthdifference

	thumb_func_start atkD9_scaledamagebyhealthratio
atkD9_scaledamagebyhealthratio: @ 8055428
	push {r4,lr}
	ldr r4, =gUnknown_02024400
	ldrh r0, [r4]
	cmp r0, 0
	bne _08055464
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r3, [r0, 0x1]
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	ldrh r0, [r1, 0x28]
	muls r0, r3
	ldrh r1, [r1, 0x2C]
	bl __divsi3
	strh r0, [r4]
	lsls r0, 16
	cmp r0, 0
	bne _08055464
	movs r0, 0x1
	strh r0, [r4]
_08055464:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkD9_scaledamagebyhealthratio

	thumb_func_start atkDA_abilityswap
atkDA_abilityswap: @ 805548C
	push {r4-r6,lr}
	ldr r5, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	movs r4, 0x58
	muls r0, r4
	adds r0, r5
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r1, [r2]
	cmp r1, 0
	bne _080554B4
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	muls r0, r4
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _080554D4
_080554B4:
	cmp r1, 0x19
	beq _080554D4
	ldr r6, =gEnemyMonIndex
	ldrb r0, [r6]
	muls r0, r4
	adds r0, r5
	adds r0, 0x20
	ldrb r3, [r0]
	cmp r3, 0x19
	beq _080554D4
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08055504
_080554D4:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805551A
	.pool
_08055504:
	ldrb r1, [r2]
	strb r3, [r2]
	ldrb r0, [r6]
	muls r0, r4
	adds r0, r5
	adds r0, 0x20
	strb r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805551A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDA_abilityswap

	thumb_func_start atkDB_imprisoneffect
atkDB_imprisoneffect: @ 8055524
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r1, =gUnknown_020242AC
	ldr r4, =gUnknown_0202420B
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _08055574
	b _080555F6
	.pool
_0805554C:
	ldr r0, =gUnknown_020242AC
	mov r2, r9
	ldrb r1, [r2]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 6
	orrs r0, r2
	str r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080555EE
	.pool
_08055574:
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldrb r0, [r4]
	bl sub_803F548
	movs r6, 0
	b _080555E6
_0805558A:
	adds r0, r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r8, r0
	beq _080555E0
	movs r4, 0
	ldr r7, =gUnknown_0202420B
	mov r9, r7
	ldr r0, =gBattleMons
	mov r12, r0
	mov r1, r9
	ldrb r0, [r1]
	mov r2, r12
	adds r2, 0xC
	movs r1, 0x58
	muls r0, r1
	adds r3, r0, r2
	adds r5, r6, 0
	muls r5, r1
_080555B4:
	movs r2, 0
	ldrh r1, [r3]
	mov r0, r12
	adds r0, 0xC
	adds r0, r5, r0
_080555BE:
	ldrh r7, [r0]
	cmp r1, r7
	bne _080555C8
	cmp r1, 0
	bne _080555D0
_080555C8:
	adds r0, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _080555BE
_080555D0:
	cmp r2, 0x4
	bne _080555DC
	adds r3, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _080555B4
_080555DC:
	cmp r4, 0x4
	bne _0805554C
_080555E0:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_080555E6:
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0805558A
_080555EE:
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	cmp r6, r0
	bne _08055610
_080555F6:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08055610:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDB_imprisoneffect

	thumb_func_start atkDC_setgrudge
atkDC_setgrudge: @ 805562C
	push {lr}
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 7
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _08055670
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805567C
	.pool
_08055670:
	orrs r1, r3
	str r1, [r2]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805567C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDC_setgrudge

	thumb_func_start atkDD_weightdamagecalculation
atkDD_weightdamagecalculation: @ 8055684
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r5, 0
	ldr r2, =gUnknown_0831C428
	ldrh r0, [r2]
	ldr r1, =0x0000ffff
	cmp r0, r1
	beq _080556FC
	adds r6, r2, 0
	ldr r0, =gBattleMons
	mov r8, r0
	adds r7, r1, 0
	adds r4, r6, 0
_080556A0:
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	add r0, r8
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl sub_80C0630
	ldrh r1, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r1, r0
	bhi _080556CE
	adds r4, 0x4
	adds r5, 0x2
	ldrh r0, [r4]
	cmp r0, r7
	bne _080556A0
_080556CE:
	lsls r0, r5, 1
	adds r0, r6
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _080556FC
	ldr r0, =gUnknown_02024400
	adds r1, r5, 0x1
	lsls r1, 1
	adds r1, r6
	ldrh r1, [r1]
	strh r1, [r0]
	b _08055702
	.pool
_080556FC:
	ldr r1, =gUnknown_02024400
	movs r0, 0x78
	strh r0, [r1]
_08055702:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDD_weightdamagecalculation

	thumb_func_start atkDE_asistattackselect
atkDE_asistattackselect: @ 805571C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	movs r0, 0
	mov r10, r0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x18
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	ldr r0, =gPlayerParty
	str r0, [sp]
	cmp r1, 0
	beq _0805574C
	ldr r1, =gEnemyParty
	str r1, [sp]
_0805574C:
	movs r2, 0
_0805574E:
	ldr r1, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	adds r1, r2, 0x1
	str r1, [sp, 0x8]
	ldrh r0, [r0]
	cmp r2, r0
	beq _080557F4
	movs r0, 0x64
	adds r6, r2, 0
	muls r6, r0
	ldr r0, [sp]
	adds r4, r0, r6
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _080557F4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	beq _080557F4
	movs r5, 0
	ldr r1, =0x0000ffff
	mov r8, r1
	mov r9, r6
	mov r1, r10
	lsls r0, r1, 1
	ldr r1, [sp, 0x4]
	adds r6, r0, r1
_08055798:
	movs r7, 0
	adds r1, r5, 0
	adds r1, 0xD
	ldr r0, [sp]
	add r0, r9
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	bl sub_8052F84
	lsls r0, 24
	adds r1, r5, 0x1
	cmp r0, 0
	bne _080557EE
	ldr r0, =gUnknown_0831C3E0
	ldrh r2, [r0]
	adds r3, r0, 0
	cmp r2, r8
	beq _080557E2
	cmp r4, r2
	beq _080557D8
	ldr r5, =0x0000ffff
	adds r2, r3, 0
_080557CA:
	adds r2, 0x2
	adds r7, 0x1
	ldrh r0, [r2]
	cmp r0, r5
	beq _080557E2
	cmp r4, r0
	bne _080557CA
_080557D8:
	lsls r0, r7, 1
	adds r0, r3
	ldrh r0, [r0]
	cmp r0, r8
	bne _080557EE
_080557E2:
	cmp r4, 0
	beq _080557EE
	strh r4, [r6]
	adds r6, 0x2
	movs r0, 0x1
	add r10, r0
_080557EE:
	adds r5, r1, 0
	cmp r5, 0x3
	ble _08055798
_080557F4:
	ldr r2, [sp, 0x8]
	cmp r2, 0x5
	ble _0805574E
	mov r1, r10
	cmp r1, 0
	beq _0805586C
	ldr r2, =gUnknown_02024280
	ldr r0, [r2]
	ldr r1, =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, =gUnknown_020241EE
	bl Random
	movs r1, 0xFF
	ands r1, r0
	mov r0, r10
	muls r0, r1
	asrs r0, 8
	lsls r0, 1
	ldr r1, [sp, 0x4]
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_80458E0
	ldr r1, =gEnemyMonIndex
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08055886
	.pool
_0805586C:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08055886:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDE_asistattackselect

	thumb_func_start atkDF_setmagiccoat
atkDF_setmagiccoat: @ 805589C
	push {lr}
	ldr r1, =gEnemyMonIndex
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r2, =gUnknown_0202437C
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =gUnknown_02024082
	ldrb r1, [r0]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	bne _080558FC
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08055914
	.pool
_080558FC:
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r3]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08055914:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkDF_setmagiccoat

	thumb_func_start atkE0_setstealstatchange
atkE0_setstealstatchange: @ 8055920
	push {lr}
	ldr r2, =gUnknown_0202437C
	ldr r3, =gUnknown_0202420B
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =gUnknown_02024082
	ldrb r1, [r0]
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	bne _08055978
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0805598E
	.pool
_08055978:
	ldr r0, =gUnknown_0202433C
	ldrb r1, [r3]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0805598E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE0_setstealstatchange

	thumb_func_start atkE1_802CBE4
atkE1_802CBE4: @ 805599C
	push {r4-r6,lr}
	ldr r4, =gUnknown_02024474
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0xD8
	ldrb r0, [r0]
	strb r0, [r4, 0x17]
	ldrb r0, [r4, 0x17]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x9
	strb r0, [r2, 0x1]
	ldr r3, =gBattleMons
	ldrb r1, [r4, 0x17]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r2, 0x2]
	movs r0, 0xFF
	strb r0, [r2, 0x3]
	ldr r2, =gEnemyMonIndex
	ldr r1, =gUnknown_0202406C
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08055A22
	adds r4, r2, 0
	ldr r6, =gBitTable
_080559E2:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	beq _08055A04
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ands r1, r0
	ldr r2, =gUnknown_0202406C
	cmp r1, 0
	beq _08055A18
_08055A04:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gUnknown_0202406C
	lsls r0, 24
	lsrs r0, 24
	adds r2, r1, 0
	ldrb r1, [r2]
	cmp r0, r1
	bcc _080559E2
_08055A18:
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	bcc _08055A64
_08055A22:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08055A6C
	.pool
_08055A64:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08055A6C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE1_802CBE4

	thumb_func_start atkE2_cmde2
atkE2_cmde2: @ 8055A78
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r3, =gBattleMons
	ldrb r0, [r4]
	movs r6, 0x58
	adds r1, r0, 0
	muls r1, r6
	adds r0, r1, r3
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1E
	bne _08055AD2
	adds r3, 0x4C
	adds r1, r3
	movs r0, 0
	str r0, [r1]
	ldr r2, =gBitTable
	ldrb r1, [r4]
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, 0x58
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0]
	adds r0, r1, 0
	muls r0, r6
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08055AD2:
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE2_cmde2

	thumb_func_start atkE3_jumpiffainted
atkE3_jumpiffainted: @ 8055AF4
	push {r4,lr}
	ldr r4, =gUnknown_02024214
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl get_battle_side_of_something
	ldr r1, =gUnknown_02024064
	strb r0, [r1]
	ldr r2, =gBattleMons
	ldrb r1, [r1]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08055B3C
	ldr r2, [r4]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _08055B42
	.pool
_08055B3C:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_08055B42:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end atkE3_jumpiffainted

	thumb_func_start sub_8055B48
sub_8055B48: @ 8055B48
	push {lr}
	ldr r0, =gUnknown_02022FF0
	ldrb r0, [r0]
	cmp r0, 0x7
	bhi _08055BE4
	lsls r0, 2
	ldr r1, =_08055B64
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08055B64:
	.4byte _08055B84
	.4byte _08055B90
	.4byte _08055B9C
	.4byte _08055BA8
	.4byte _08055BB4
	.4byte _08055BC0
	.4byte _08055BCC
	.4byte _08055BD8
_08055B84:
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	b _08055BE8
	.pool
_08055B90:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	b _08055BE8
	.pool
_08055B9C:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1B
	b _08055BE8
	.pool
_08055BA8:
	ldr r1, =gUnknown_02024332
	movs r0, 0x17
	b _08055BE8
	.pool
_08055BB4:
	ldr r1, =gUnknown_02024332
	movs r0, 0x16
	b _08055BE8
	.pool
_08055BC0:
	ldr r1, =gUnknown_02024332
	movs r0, 0x18
	b _08055BE8
	.pool
_08055BCC:
	ldr r1, =gUnknown_02024332
	movs r0, 0x7
	b _08055BE8
	.pool
_08055BD8:
	ldr r1, =gUnknown_02024332
	movs r0, 0x8
	b _08055BE8
	.pool
_08055BE4:
	ldr r1, =gUnknown_02024332
	movs r0, 0x5
_08055BE8:
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8055B48

	thumb_func_start atkE5_pickupitemcalculation
atkE5_pickupitemcalculation: @ 8055C00
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	bl InBattlePike
	lsls r0, 24
	cmp r0, 0
	beq _08055C18
	b _08055DD8
_08055C18:
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _08055CC4
	movs r6, 0
	mov r7, sp
	ldr r0, =gBaseStats
	mov r8, r0
_08055C2A:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	strh r0, [r7]
	adds r0, r4, 0
	movs r1, 0x2E
	bl GetMonData
	cmp r0, 0
	beq _08055C6C
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x17]
	b _08055C76
	.pool
_08055C6C:
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x16]
_08055C76:
	cmp r0, 0x35
	bne _08055CB6
	cmp r5, 0
	beq _08055CB6
	movs r0, 0xCE
	lsls r0, 1
	cmp r5, r0
	beq _08055CB6
	ldrh r0, [r7]
	cmp r0, 0
	bne _08055CB6
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _08055CB6
	bl CalculateBattlePyramidPickupItemId
	strh r0, [r7]
	movs r0, 0x64
	muls r0, r6
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	mov r2, sp
	bl pokemon_setattr
_08055CB6:
	adds r6, 0x1
	cmp r6, 0x5
	ble _08055C2A
	b _08055DD8
	.pool
_08055CC4:
	movs r6, 0
	movs r1, 0x64
	mov r8, r1
	ldr r7, =gPlayerParty
	mov r10, sp
_08055CCE:
	mov r4, r8
	muls r4, r6
	adds r4, r7
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	mov r1, r10
	strh r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2E
	bl GetMonData
	cmp r0, 0
	beq _08055D30
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r0, r1
	ldrb r0, [r0, 0x17]
	b _08055D3C
	.pool
_08055D10:
	mov r0, r8
	muls r0, r6
	adds r0, r7
	adds r2, r1, 0
	adds r2, 0x63
	subs r2, r4
	lsls r2, 1
	ldr r1, =gRarePickupItems
	adds r2, r1
	movs r1, 0xC
	bl pokemon_setattr
	b _08055DD0
	.pool
_08055D30:
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r0, r1
	ldrb r0, [r0, 0x16]
_08055D3C:
	adds r1, r6, 0x1
	mov r9, r1
	cmp r0, 0x35
	bne _08055DD0
	cmp r5, 0
	beq _08055DD0
	movs r0, 0xCE
	lsls r0, 1
	cmp r5, r0
	beq _08055DD0
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, 0
	bne _08055DD0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _08055DD0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	mov r0, r8
	muls r0, r6
	adds r0, r7
	movs r1, 0x38
	bl GetMonData
	subs r0, 0x1
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x9
	bls _08055D9C
	movs r1, 0x9
_08055D9C:
	movs r2, 0
	b _08055DAE
	.pool
_08055DA4:
	adds r0, r4, 0
	subs r0, 0x62
	cmp r0, 0x1
	bls _08055D10
	adds r2, 0x1
_08055DAE:
	cmp r2, 0x8
	bgt _08055DD0
	ldr r0, =gPickupProbabilities
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r4
	ble _08055DA4
	mov r0, r8
	muls r0, r6
	adds r0, r7
	adds r2, r1, r2
	lsls r2, 1
	ldr r1, =gPickupItems
	adds r2, r1
	movs r1, 0xC
	bl pokemon_setattr
_08055DD0:
	mov r6, r9
	cmp r6, 0x5
	bgt _08055DD8
	b _08055CCE
_08055DD8:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE5_pickupitemcalculation

	thumb_func_start atkE6_castform_transform
atkE6_castform_transform: @ 8055DFC
	push {r4,lr}
	ldr r4, =gUnknown_02024064
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0x17]
	strb r0, [r4]
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	ldr r3, =gUnknown_0202449C
	cmp r0, 0
	beq _08055E2C
	ldr r0, [r3]
	adds r0, 0x7F
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_08055E2C:
	ldr r0, [r3]
	adds r0, 0x7F
	ldrb r2, [r0]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE6_castform_transform

	thumb_func_start atkE7_castform_switch
atkE7_castform_switch: @ 8055E64
	push {r4,lr}
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	ldrb r0, [r0, 0x17]
	bl castform_switch
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08055E8E
	ldr r0, =gUnknown_082DB4A9
	bl b_push_move_exec
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x7F
	subs r1, r4, 0x1
	strb r1, [r0]
_08055E8E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE7_castform_switch

	thumb_func_start atkE8_settypebasedhalvers
atkE8_settypebasedhalvers: @ 8055EA4
	push {r4,lr}
	movs r4, 0
	ldr r2, =gBattleMoves
	ldr r0, =gUnknown_020241EA
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0xC9
	bne _08055EF4
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 9
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	bne _08055F18
	orrs r1, r3
	str r1, [r2]
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	b _08055F1C
	.pool
_08055EF4:
	ldr r1, =gUnknown_020242AC
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 10
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	bne _08055F18
	orrs r1, r3
	str r1, [r2]
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	movs r4, 0x1
_08055F18:
	cmp r4, 0
	beq _08055F38
_08055F1C:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08055F52
	.pool
_08055F38:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08055F52:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE8_settypebasedhalvers

	thumb_func_start atkE9_seteffectbyweather
atkE9_seteffectbyweather: @ 8055F5C
	push {lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl ability_something
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _08055FFC
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl ability_something
	lsls r0, 24
	cmp r0, 0
	bne _08055FFC
	ldr r2, =gBattleWeather
	ldrb r0, [r2]
	cmp r0, 0
	beq _08055F9A
	ldr r1, =gUnknown_02024474
	movs r0, 0x2
	strb r0, [r1, 0xE]
_08055F9A:
	ldrh r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08055FB8
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r0, 0x8B
	b _08055FFA
	.pool
_08055FB8:
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _08055FCC
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r0, 0x85
	b _08055FFA
	.pool
_08055FCC:
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _08055FE0
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r0, 0x8A
	b _08055FFA
	.pool
_08055FE0:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08055FF4
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r0, 0x8F
	b _08055FFA
	.pool
_08055FF4:
	ldr r0, =gUnknown_0202449C
	ldr r1, [r0]
	movs r0, 0x80
_08055FFA:
	strb r0, [r1, 0x13]
_08055FFC:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkE9_seteffectbyweather

	thumb_func_start atkEA_recycleitem
atkEA_recycleitem: @ 8056014
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r7, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r1, =gUnknown_0202449C
	ldrb r2, [r7]
	lsls r0, r2, 1
	adds r0, 0xB8
	ldr r1, [r1]
	adds r6, r1, r0
	ldrh r5, [r6]
	cmp r5, 0
	beq _08056094
	ldr r4, =gBattleMons
	movs r3, 0x58
	adds r0, r2, 0
	muls r0, r3
	adds r0, r4
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	bne _08056094
	ldr r1, =gUnknown_02024208
	strh r5, [r1]
	strh r0, [r6]
	ldrb r0, [r7]
	muls r0, r3
	adds r0, r4
	ldrh r1, [r1]
	strh r1, [r0, 0x2E]
	ldrb r0, [r7]
	muls r0, r3
	adds r1, r4, 0
	adds r1, 0x2E
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _080560AE
	.pool
_08056094:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_080560AE:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkEA_recycleitem

	thumb_func_start atkEB_settypetoterrain
atkEB_settypetoterrain: @ 80560BC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gBattleMons
	mov r8, r0
	ldr r7, =gUnknown_0202420B
	ldrb r0, [r7]
	movs r6, 0x58
	muls r0, r6
	mov r1, r8
	adds r3, r0, r1
	movs r0, 0x21
	adds r0, r3
	mov r12, r0
	ldr r5, =gUnknown_0831C483
	ldr r4, =gUnknown_02022FF0
	ldrb r0, [r4]
	adds r0, r5
	ldrb r2, [r0]
	mov r1, r12
	ldrb r0, [r1]
	adds r1, r2, 0
	cmp r0, r1
	beq _08056144
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	beq _08056144
	mov r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	add r1, r8
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	adds r1, 0x22
	strb r0, [r1]
	ldr r1, =gUnknown_02022F58
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0805615E
	.pool
_08056144:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0805615E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkEB_settypetoterrain

	thumb_func_start atkEC_802D2A0
atkEC_802D2A0: @ 805616C
	push {r4-r6,lr}
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r6, 0x1
	ands r0, r6
	cmp r0, 0
	beq _0805620C
	ldr r0, =gUnknown_02024210
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldrb r3, [r4]
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0805620C
	ldr r0, =gUnknown_0202421C
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805620C
	ldr r1, =gUnknown_02024274
	lsls r0, r3, 1
	adds r0, r1
	ldrh r2, [r0]
	cmp r2, 0xE4
	bne _0805620C
	ldr r0, =gUnknown_0202407A
	adds r0, r3, r0
	movs r1, 0xB
	strb r1, [r0]
	ldr r0, =gUnknown_020241EA
	strh r2, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	ldr r0, =gUnknown_02024474
	strb r6, [r0, 0x18]
	ldrb r1, [r5]
	adds r0, 0x20
	strb r1, [r0]
	ldrb r0, [r4]
	strb r0, [r5]
	b _08056226
	.pool
_0805620C:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08056226:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkEC_802D2A0

	thumb_func_start atkED_802D364
atkED_802D364: @ 8056230
	push {r4,lr}
	ldr r1, =gUnknown_0202420E
	ldr r3, =gUnknown_0202420B
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r2, =gEnemyMonIndex
	lsls r0, 24
	lsrs r0, 24
	adds r4, r1, 0
	ldrb r1, [r2]
	cmp r0, r1
	bne _08056264
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x17]
	strb r0, [r2]
	strb r0, [r3]
	b _0805626A
	.pool
_08056264:
	ldr r1, =gUnknown_02024474
	ldrb r0, [r1, 0x17]
	strb r0, [r2]
_0805626A:
	ldrb r0, [r4]
	strb r0, [r1, 0x17]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkED_802D364

	thumb_func_start atkEE_removereflectlightscreen
atkEE_removereflectlightscreen: @ 8056284
	push {r4,lr}
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02024294
	lsls r3, r0, 1
	adds r0, r3, r0
	lsls r0, 2
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0
	bne _080562AC
	ldrb r1, [r4, 0x2]
	cmp r1, 0
	beq _080562E4
_080562AC:
	ldr r2, =gUnknown_0202428E
	adds r2, r3, r2
	ldrh r1, [r2]
	ldr r0, =0x0000fffe
	ands r0, r1
	movs r3, 0
	ldr r1, =0x0000fffd
	ands r0, r1
	strh r0, [r2]
	strb r3, [r4]
	strb r3, [r4, 0x2]
	ldr r1, =gUnknown_02024474
	movs r0, 0x1
	strb r0, [r1, 0x18]
	strb r0, [r1, 0x19]
	b _080562EA
	.pool
_080562E4:
	ldr r0, =gUnknown_02024474
	strb r1, [r0, 0x18]
	strb r1, [r0, 0x19]
_080562EA:
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkEE_removereflectlightscreen

	thumb_func_start sub_8056300
sub_8056300: @ 8056300
	push {r4-r6,lr}
	movs r4, 0
	ldr r0, =gUnknown_02024068
	ldr r0, [r0]
	cmp r0, 0
	beq _0805630E
	b _08056696
_0805630E:
	ldr r5, =gUnknown_02024064
	ldr r0, =gUnknown_0202420B
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r6, =gEnemyMonIndex
	movs r1, 0x1
	eors r0, r1
	strb r0, [r6]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0805635C
	movs r0, 0
	movs r1, 0x5
	bl dp01_build_cmdbuf_x0D_a
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBE02
	b _08056694
	.pool
_0805635C:
	movs r0, 0x80
	lsls r0, 2
	ands r1, r0
	cmp r1, 0
	beq _08056384
	movs r0, 0
	movs r1, 0x4
	bl dp01_build_cmdbuf_x0D_a
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBDCA
	b _08056694
	.pool
_08056384:
	ldr r0, =gUnknown_02024208
	ldrh r0, [r0]
	cmp r0, 0x5
	bne _080563B0
	ldr r0, =gUnknown_0202449C
	ldr r0, [r0]
	adds r0, 0x7C
	ldrb r0, [r0]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 8
	subs r0, r1
	movs r1, 0x64
	bl __divsi3
	lsls r0, 24
	lsrs r5, r0, 24
	b _080563C8
	.pool
_080563B0:
	ldr r3, =gBaseStats
	ldr r2, =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r5, [r0, 0x8]
_080563C8:
	ldr r2, =gUnknown_02024208
	ldrh r0, [r2]
	cmp r0, 0x5
	bhi _080563D2
	b _080564C8
_080563D2:
	subs r0, 0x6
	cmp r0, 0x6
	bls _080563DA
	b _080564D2
_080563DA:
	lsls r0, 2
	ldr r1, =_080563F4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_080563F4:
	.4byte _08056410
	.4byte _08056440
	.4byte _08056452
	.4byte _08056480
	.4byte _080564B0
	.4byte _08056472
	.4byte _08056472
_08056410:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r1, 0xB
	beq _080564A4
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xB
	beq _080564A4
	cmp r1, 0x6
	beq _080564A4
	cmp r0, 0x6
	beq _080564A4
	b _08056472
	.pool
_08056440:
	bl sav1_map_get_light_level
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0xA
	cmp r0, 0x5
	bne _080564D2
	movs r4, 0x23
	b _080564D2
_08056452:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r0]
	cmp r1, 0x27
	bhi _08056472
	movs r0, 0x28
	subs r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bhi _080564D2
_08056472:
	movs r4, 0xA
	b _080564D2
	.pool
_08056480:
	ldr r2, =gBattleMons
	ldr r0, =gEnemyMonIndex
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	movs r4, 0xA
	cmp r0, 0
	beq _080564D2
_080564A4:
	movs r4, 0x1E
	b _080564D2
	.pool
_080564B0:
	ldr r0, =gUnknown_03005D10
	ldrb r0, [r0, 0x13]
	adds r0, 0xA
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x28
	bls _080564D2
	movs r4, 0x28
	b _080564D2
	.pool
_080564C8:
	ldr r1, =gUnknown_0831C48D
	ldrh r0, [r2]
	subs r0, 0x2
	adds r0, r1
	ldrb r4, [r0]
_080564D2:
	adds r0, r5, 0
	muls r0, r4
	movs r1, 0xA
	bl __divsi3
	ldr r5, =gBattleMons
	ldr r1, =gEnemyMonIndex
	ldrb r2, [r1]
	movs r1, 0x58
	adds r4, r2, 0
	muls r4, r1
	adds r3, r4, r5
	ldrh r2, [r3, 0x2C]
	lsls r1, r2, 1
	adds r1, r2
	ldrh r2, [r3, 0x28]
	lsls r2, 1
	subs r2, r1, r2
	muls r0, r2
	bl __divsi3
	adds r6, r0, 0
	adds r5, 0x4C
	adds r4, r5
	ldr r4, [r4]
	movs r0, 0x27
	ands r0, r4
	cmp r0, 0
	beq _0805650E
	lsls r6, 1
_0805650E:
	movs r0, 0xD8
	ands r4, r0
	cmp r4, 0
	beq _08056522
	lsls r0, r6, 4
	subs r0, r6
	movs r1, 0xA
	bl __udivsi3
	adds r6, r0, 0
_08056522:
	ldr r1, =gUnknown_02024208
	ldrh r0, [r1]
	cmp r0, 0x5
	beq _08056564
	cmp r0, 0x1
	bne _08056550
	ldr r0, =gUnknown_03005D10
	ldrb r1, [r0, 0x5]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0, 0x5]
	b _08056564
	.pool
_08056550:
	ldr r0, =gUnknown_03005D10
	ldrh r1, [r1]
	adds r0, r1
	adds r1, r0, 0
	adds r1, 0x34
	ldrb r0, [r1]
	cmp r0, 0xFE
	bhi _08056564
	adds r0, 0x1
	strb r0, [r1]
_08056564:
	cmp r6, 0xFE
	bls _080565C8
	movs r0, 0
	movs r1, 0x4
	bl dp01_build_cmdbuf_x0D_a
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD84
	str r0, [r1]
	ldr r1, =gUnknown_0202406E
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	ldr r2, =gUnknown_02024208
	movs r1, 0x26
	bl pokemon_setattr
	bl calc_player_party_count
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	beq _08056656
	b _08056680
	.pool
_080565C8:
	movs r0, 0xFF
	lsls r0, 16
	adds r1, r6, 0
	bl __udivsi3
	bl Sqrt
	lsls r0, 16
	lsrs r0, 16
	bl Sqrt
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =0x000ffff0
	adds r1, r6, 0
	bl __udivsi3
	adds r6, r0, 0
	movs r4, 0
	b _080565FA
	.pool
_080565F4:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_080565FA:
	cmp r4, 0x3
	bhi _0805660A
	bl Random
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcc _080565F4
_0805660A:
	ldr r5, =gUnknown_02024208
	ldrh r0, [r5]
	cmp r0, 0x1
	bne _08056614
	movs r4, 0x4
_08056614:
	movs r0, 0
	adds r1, r4, 0
	bl dp01_build_cmdbuf_x0D_a
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	cmp r4, 0x4
	bne _0805668C
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBD84
	str r0, [r1]
	ldr r1, =gUnknown_0202406E
	ldr r0, =gEnemyMonIndex
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x26
	adds r2, r5, 0
	bl pokemon_setattr
	bl calc_player_party_count
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	bne _08056680
_08056656:
	ldr r1, =gUnknown_02024332
	movs r0, 0
	strb r0, [r1, 0x5]
	b _08056696
	.pool
_08056680:
	ldr r1, =gUnknown_02024332
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08056696
	.pool
_0805668C:
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DBDD4
_08056694:
	str r0, [r1]
_08056696:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8056300

	thumb_func_start atkF0_catch_pokemon
atkF0_catch_pokemon: @ 80566A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gUnknown_0202406E
	mov r9, r0
	ldr r5, =gUnknown_0202420B
	ldrb r0, [r5]
	movs r6, 0x1
	eors r0, r6
	lsls r0, 1
	add r0, r9
	ldrh r0, [r0]
	movs r7, 0x64
	muls r0, r7
	ldr r1, =gEnemyParty
	mov r8, r1
	add r0, r8
	bl pokemon_catch
	lsls r0, 24
	cmp r0, 0
	beq _08056792
	bl sub_813B21C
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _08056734
	ldr r0, =gUnknown_02024332
	strb r1, [r0, 0x5]
	ldr r4, =gStringVar1
	ldr r0, =0x00004036
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	bl sav3_get_box_name
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldrb r0, [r5]
	eors r0, r6
	lsls r0, 1
	add r0, r9
	ldrh r0, [r0]
	muls r0, r7
	add r0, r8
	ldr r2, =gStringVar2
	movs r1, 0x2
	bl GetMonData
	b _0805677E
	.pool
_08056734:
	ldr r4, =gStringVar1
	ldr r0, =0x00004036
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	bl sav3_get_box_name
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldrb r0, [r5]
	eors r0, r6
	lsls r0, 1
	add r0, r9
	ldrh r0, [r0]
	muls r0, r7
	add r0, r8
	ldr r2, =gStringVar2
	movs r1, 0x2
	bl GetMonData
	ldr r4, =gStringVar3
	bl get_unknown_box_id
	lsls r0, 24
	lsrs r0, 24
	bl sav3_get_box_name
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldr r1, =gUnknown_02024332
	movs r0, 0x2
	strb r0, [r1, 0x5]
_0805677E:
	ldr r0, =0x000008ab
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08056792
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x5]
	adds r0, 0x1
	strb r0, [r1, 0x5]
_08056792:
	ldr r0, =gUnknown_0202406E
	mov r10, r0
	ldr r1, =gUnknown_0202420B
	mov r9, r1
	ldrb r0, [r1]
	movs r4, 0x1
	eors r0, r4
	lsls r0, 1
	add r0, r10
	ldrh r0, [r0]
	movs r1, 0x64
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	ldr r6, =gEnemyParty
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	ldr r5, =gUnknown_03005D10
	strh r0, [r5, 0x28]
	mov r1, r9
	ldrb r0, [r1]
	eors r0, r4
	lsls r0, 1
	add r0, r10
	ldrh r0, [r0]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r6
	adds r2, r5, 0
	adds r2, 0x2A
	movs r1, 0x2
	bl GetMonData
	mov r1, r9
	ldrb r0, [r1]
	eors r4, r0
	lsls r4, 1
	add r4, r10
	ldrh r0, [r4]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r6
	movs r1, 0x26
	movs r2, 0
	bl GetMonData
	movs r1, 0xF
	ands r0, r1
	lsls r0, 2
	ldrb r2, [r5, 0x5]
	movs r1, 0x3D
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkF0_catch_pokemon

	thumb_func_start atkF1_802D95C
atkF1_802D95C: @ 8056850
	push {r4,r5,lr}
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	adds r0, r5, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _080568A8
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080568C2
	.pool
_080568A8:
	adds r0, r5, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	adds r2, r4, 0
	bl SetPokedexFlag
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080568C2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkF1_802D95C

	thumb_func_start sub_80568CC
sub_80568CC: @ 80568CC
	push {r4,lr}
	sub sp, 0x4
	ldr r0, =gEnemyParty
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gUnknown_02024332
	ldrb r0, [r0]
	cmp r0, 0x5
	bls _080568E8
	b _08056A2C
_080568E8:
	lsls r0, 2
	ldr r1, =_08056900
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08056900:
	.4byte _08056918
	.4byte _0805692A
	.4byte _08056978
	.4byte _080569C8
	.4byte _080569E0
	.4byte _08056A18
_08056918:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _08056A06
_0805692A:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08056938
	b _08056A2C
_08056938:
	bl FreeAllWindowBuffers
	adds r0, r4, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	ldr r3, =gBattleMons
	ldr r1, =gEnemyMonIndex
	ldrb r2, [r1]
	movs r1, 0x58
	muls r2, r1
	adds r1, r3, 0
	adds r1, 0x54
	adds r1, r2, r1
	ldr r1, [r1]
	adds r3, 0x48
	adds r2, r3
	ldr r2, [r2]
	bl sub_80BFDF4
	ldr r1, =gUnknown_02024332
	strb r0, [r1, 0x1]
	b _08056A08
	.pool
_08056978:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08056A2C
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =sub_8038420
	cmp r1, r0
	bne _08056A2C
	ldr r2, =gTasks
	ldr r4, =gUnknown_02024332
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	bne _08056A2C
	ldr r0, =vblank_cb_08078BB4
	bl SetVBlankCallback
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _08056A2C
	.pool
_080569C8:
	bl c2_berry_program_update_menu
	bl sub_8035AA4
	ldr r1, =gUnknown_02022E20
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	b _08056A06
	.pool
_080569E0:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _08056A2C
	ldr r0, =0x0000ffff
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	movs r0, 0
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
_08056A06:
	ldr r1, =gUnknown_02024332
_08056A08:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08056A2C
	.pool
_08056A18:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08056A2C
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08056A2C:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80568CC

	thumb_func_start sub_8056A3C
sub_8056A3C: @ 8056A3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x10]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x1C]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	movs r1, 0
	add r0, sp, 0xC
	strh r1, [r0]
	ldr r6, [sp, 0x10]
	cmp r6, r3
	ble _08056A76
	b _08056B62
_08056A76:
	mov r4, r8
	adds r0, r6, 0x1
	str r0, [sp, 0x18]
	ldr r2, [sp, 0x1C]
	cmp r4, r2
	bgt _08056B58
	add r5, sp, 0xC
	lsls r7, r6, 24
	mov r9, r7
_08056A88:
	ldr r0, [sp, 0x10]
	cmp r6, r0
	bne _08056AB4
	cmp r4, r8
	bne _08056A9C
	ldr r0, =0x00001022
	b _08056AFE
	.pool
_08056A9C:
	ldr r2, [sp, 0x1C]
	cmp r4, r2
	bne _08056AAC
	ldr r0, =0x00001024
	b _08056AFE
	.pool
_08056AAC:
	ldr r0, =0x00001023
	b _08056AFE
	.pool
_08056AB4:
	ldr r7, [sp, 0x14]
	cmp r6, r7
	bne _08056AE0
	cmp r4, r8
	bne _08056AC8
	ldr r0, =0x00001028
	b _08056AFE
	.pool
_08056AC8:
	ldr r0, [sp, 0x1C]
	cmp r4, r0
	bne _08056AD8
	ldr r0, =0x0000102a
	b _08056AFE
	.pool
_08056AD8:
	ldr r0, =0x00001029
	b _08056AFE
	.pool
_08056AE0:
	cmp r4, r8
	bne _08056AEC
	ldr r0, =0x00001025
	b _08056AFE
	.pool
_08056AEC:
	ldr r2, [sp, 0x1C]
	cmp r4, r2
	bne _08056AFC
	ldr r0, =0x00001027
	b _08056AFE
	.pool
_08056AFC:
	ldr r0, =0x00001026
_08056AFE:
	strh r0, [r5]
	movs r1, 0x1
	mov r0, r10
	ands r0, r1
	cmp r0, 0
	beq _08056B0E
	movs r0, 0
	strh r0, [r5]
_08056B0E:
	movs r0, 0x80
	mov r7, r10
	ands r0, r7
	cmp r0, 0
	beq _08056B38
	lsls r2, r4, 24
	lsrs r2, 24
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	add r1, sp, 0xC
	mov r7, r9
	lsrs r3, r7, 24
	bl CopyToBgTilemapBufferRect_ChangePalette
	b _08056B50
	.pool
_08056B38:
	lsls r2, r4, 24
	lsrs r2, 24
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0
	add r1, sp, 0xC
	mov r7, r9
	lsrs r3, r7, 24
	bl CopyToBgTilemapBufferRect_ChangePalette
_08056B50:
	adds r4, 0x1
	ldr r0, [sp, 0x1C]
	cmp r4, r0
	ble _08056A88
_08056B58:
	ldr r6, [sp, 0x18]
	ldr r2, [sp, 0x14]
	cmp r6, r2
	bgt _08056B62
	b _08056A76
_08056B62:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8056A3C

	thumb_func_start sub_8056B74
sub_8056B74: @ 8056B74
	push {lr}
	sub sp, 0x10
	adds r3, r0, 0
	add r0, sp, 0xC
	movs r2, 0x1
	strh r2, [r0]
	movs r1, 0x2
	strh r1, [r0, 0x2]
	lsls r3, 25
	movs r0, 0x90
	lsls r0, 20
	adds r3, r0
	lsrs r3, 24
	str r2, [sp]
	str r1, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0
	add r1, sp, 0xC
	movs r2, 0x19
	bl CopyToBgTilemapBufferRect_ChangePalette
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	add sp, 0x10
	pop {r0}
	bx r0
	thumb_func_end sub_8056B74

	thumb_func_start sub_8056BAC
sub_8056BAC: @ 8056BAC
	push {lr}
	sub sp, 0x10
	adds r3, r0, 0
	add r0, sp, 0xC
	ldr r1, =0x00001016
	strh r1, [r0]
	strh r1, [r0, 0x2]
	lsls r3, 25
	movs r0, 0x90
	lsls r0, 20
	adds r3, r0
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0
	add r1, sp, 0xC
	movs r2, 0x19
	bl CopyToBgTilemapBufferRect_ChangePalette
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8056BAC

	thumb_func_start atkF3_receive_new_pokemon_maybe
atkF3_receive_new_pokemon_maybe: @ 8056BEC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	ldr r0, =gUnknown_02024332
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x4
	bls _08056C04
	b _08056E62
_08056C04:
	lsls r0, r1, 2
	ldr r1, =_08056C18
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08056C18:
	.4byte _08056C2C
	.4byte _08056C60
	.4byte _08056CFC
	.4byte _08056DD4
	.4byte _08056E2C
_08056C2C:
	movs r4, 0
	str r4, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_8056A3C
	ldr r0, =gUnknown_085CCABB
	movs r1, 0xC
	bl battle_show_message_maybe
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	strb r4, [r1, 0x1]
	movs r0, 0
	bl sub_8056B74
	b _08056E62
	.pool
_08056C60:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08056C86
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08056C86
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0
	strb r0, [r4, 0x1]
	bl sub_8056B74
_08056C86:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08056CAE
	ldr r4, =gUnknown_02024332
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _08056CAE
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4, 0x1]
	bl sub_8056BAC
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_8056B74
_08056CAE:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08056CE0
	movs r0, 0x5
	bl audio_play
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08056CF2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r0, 0x3
	bl BeginFastPaletteFade
	b _08056E62
	.pool
_08056CE0:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08056CEA
	b _08056E62
_08056CEA:
	movs r0, 0x5
	bl audio_play
	ldr r1, =gUnknown_02024332
_08056CF2:
	movs r0, 0x4
	strb r0, [r1]
	b _08056E62
	.pool
_08056CFC:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08056D0A
	b _08056E62
_08056D0A:
	ldr r7, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	mov r10, r0
	ldrb r0, [r0]
	movs r4, 0x1
	eors r0, r4
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0x64
	mov r9, r1
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	ldr r1, =gEnemyParty
	mov r8, r1
	add r0, r8
	ldr r1, =gUnknown_0202449C
	ldr r2, [r1]
	adds r2, 0x6D
	movs r1, 0x2
	bl GetMonData
	bl FreeAllWindowBuffers
	mov r2, r10
	ldrb r0, [r2]
	eors r0, r4
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	movs r1, 0xB
	bl GetMonData
	adds r6, r0, 0
	lsls r6, 16
	lsrs r6, 16
	mov r2, r10
	ldrb r0, [r2]
	eors r0, r4
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	bl pokemon_get_gender
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	mov r2, r10
	ldrb r0, [r2]
	eors r4, r0
	lsls r4, 1
	adds r4, r7
	ldrh r0, [r4]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r8
	movs r1, 0
	movs r2, 0
	bl GetMonData
	ldr r2, =gUnknown_0202449C
	ldr r1, [r2]
	adds r1, 0x6D
	str r0, [sp]
	ldr r0, =sub_8038420
	str r0, [sp, 0x4]
	movs r0, 0x2
	adds r2, r6, 0
	adds r3, r5, 0
	bl do_choose_name_or_words_screen
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08056E62
	.pool
_08056DD4:
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =sub_8038420
	cmp r1, r0
	bne _08056E62
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08056E62
	ldr r2, =gUnknown_0202406E
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x1
	eors r0, r1
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	ldr r1, =gUnknown_0202449C
	ldr r2, [r1]
	adds r2, 0x6D
	movs r1, 0x2
	bl pokemon_setattr
	b _08056E48
	.pool
_08056E2C:
	bl calc_player_party_count
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	bne _08056E48
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08056E62
	.pool
_08056E48:
	ldr r3, =gUnknown_02024214
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08056E62:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end atkF3_receive_new_pokemon_maybe

	thumb_func_start sub_8056E78
sub_8056E78: @ 8056E78
	ldr r2, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	ldr r0, =gBattleMoveDamage
	ldr r2, [r0]
	ldrh r0, [r1, 0x28]
	subs r0, r2
	strh r0, [r1, 0x28]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8056E78

	thumb_func_start atkF5_reset_attacker_bd_x4C
atkF5_reset_attacker_bd_x4C: @ 8056EA8
	ldr r1, =gBattleMons
	ldr r0, =gUnknown_0202420B
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	movs r1, 0
	str r1, [r0]
	ldr r1, =gUnknown_02024214
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end atkF5_reset_attacker_bd_x4C

	thumb_func_start sub_8056ED0
sub_8056ED0: @ 8056ED0
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8056ED0

	thumb_func_start sub_8056EDC
sub_8056EDC: @ 8056EDC
	ldr r1, =gUnknown_02024083
	movs r0, 0xC
	strb r0, [r1]
	ldr r1, =gUnknown_02024082
	ldr r0, =gUnknown_0202406C
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8056EDC

	thumb_func_start sub_8056EF8
sub_8056EF8: @ 8056EF8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02024214
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl battle_get_side_with_given_state
	ldr r4, =gUnknown_02024064
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x09_9_9_9
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8056EF8

	thumb_func_start sub_8056F28
sub_8056F28: @ 8056F28
	push {r4-r6,lr}
	ldr r5, =gUnknown_020244A8
	ldr r6, =gBattleTypeFlags
	ldr r0, [r6]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	beq _08056F3E
	bl sub_81D55D0
_08056F3E:
	ldr r4, =gUnknown_0202449C
	movs r0, 0xA9
	lsls r0, 2
	bl AllocZeroed
	str r0, [r4]
	movs r0, 0x20
	bl AllocZeroed
	str r0, [r5]
	movs r0, 0xA0
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1]
	movs r0, 0x10
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x4]
	movs r0, 0x24
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x8]
	movs r0, 0x24
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0xC]
	movs r0, 0xC
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x10]
	movs r0, 0x1C
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x14]
	movs r0, 0x54
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x18]
	movs r0, 0x24
	bl AllocZeroed
	ldr r1, [r5]
	str r0, [r1, 0x1C]
	ldr r4, =gUnknown_020244A0
	movs r5, 0x80
	lsls r5, 5
	adds r0, r5, 0
	bl AllocZeroed
	str r0, [r4]
	ldr r4, =gUnknown_020244A4
	adds r0, r5, 0
	bl AllocZeroed
	str r0, [r4]
	ldr r4, =gUnknown_0202305C
	movs r0, 0x80
	lsls r0, 6
	bl AllocZeroed
	str r0, [r4]
	ldr r4, =gUnknown_02023060
	adds r0, r5, 0
	bl AllocZeroed
	str r0, [r4]
	ldr r0, [r6]
	movs r1, 0x80
	lsls r1, 20
	ands r0, r1
	cmp r0, 0
	beq _08056FFA
	ldr r0, =0x00004054
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gSaveBlock1Ptr
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 5
	ldr r0, =0x00001a9c
	adds r1, r0
	ldr r0, [r2]
	adds r0, r1
	bl create_enemy_party
_08056FFA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8056F28

	thumb_func_start sub_8057028
sub_8057028: @ 8057028
	push {r4-r6,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	beq _0805703C
	bl sub_81D5694
_0805703C:
	ldr r6, =gUnknown_020244A8
	ldr r0, [r6]
	cmp r0, 0
	beq _080570D0
	ldr r4, =gUnknown_0202449C
	ldr r0, [r4]
	bl Free
	movs r5, 0
	str r5, [r4]
	ldr r0, [r6]
	ldr r0, [r0]
	bl Free
	ldr r0, [r6]
	str r5, [r0]
	ldr r0, [r0, 0x4]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x4]
	ldr r0, [r0, 0x8]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x8]
	ldr r0, [r0, 0xC]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0xC]
	ldr r0, [r0, 0x10]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x10]
	ldr r0, [r0, 0x14]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x14]
	ldr r0, [r0, 0x18]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x18]
	ldr r0, [r0, 0x1C]
	bl Free
	ldr r0, [r6]
	str r5, [r0, 0x1C]
	bl Free
	str r5, [r6]
	ldr r4, =gUnknown_020244A0
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_020244A4
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0202305C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_02023060
	ldr r0, [r4]
	bl Free
	str r5, [r4]
_080570D0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8057028

	thumb_func_start sub_80570F4
sub_80570F4: @ 80570F4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08057140
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gBattleMons
	movs r0, 0x58
	adds r1, r3, 0
	muls r1, r0
	adds r1, r2
	adds r1, 0x2A
	muls r0, r4
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bls _0805714A
	adds r4, r3, 0
	b _0805714A
	.pool
_08057140:
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r4, r0, 24
_0805714A:
	ldr r2, =gBattleMons
	movs r1, 0x58
	adds r0, r4, 0
	muls r0, r1
	adds r0, r2
	adds r3, r0, 0
	adds r3, 0x2A
	adds r0, r5, 0
	muls r0, r1
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x2A
	ldrb r0, [r3]
	ldrb r2, [r1]
	cmp r0, r2
	bls _080571B8
	ldrb r1, [r1]
	subs r0, r1
	cmp r0, 0x1D
	ble _08057198
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x8
	bl happiness_algorithm
	b _080571CE
	.pool
_08057198:
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x6
	bl happiness_algorithm
	b _080571CE
	.pool
_080571B8:
	ldr r1, =gUnknown_0202406E
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0x6
	bl happiness_algorithm
_080571CE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80570F4

	thumb_func_start sub_80571DC
sub_80571DC: @ 80571DC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _08057248
	movs r2, 0
	ldr r6, =gUnknown_0202406E
	lsls r3, r4, 1
	ldr r5, =gUnknown_0203CF00
	ldr r4, =gUnknown_0202449C
_080571FE:
	adds r0, r2, r5
	ldr r1, [r4]
	adds r1, r2, r1
	adds r1, 0x60
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x2
	ble _080571FE
	adds r0, r3, r6
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r7, 0
	bl pokemon_order_func
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_81B8FB0
	movs r2, 0
	ldr r4, =gUnknown_0202449C
	ldr r3, =gUnknown_0203CF00
_08057236:
	ldr r0, [r4]
	adds r0, r2, r0
	adds r0, 0x60
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x2
	ble _08057236
_08057248:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_80571DC

	thumb_func_start sub_805725C
sub_805725C: @ 805725C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r0, 0
	mov r8, r0
	ldr r1, =gUnknown_02024332
	mov r10, r1
	b _08057284
	.pool
_0805727C:
	mov r2, r8
	cmp r2, 0
	beq _08057284
	b _08057406
_08057284:
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, 0x1
	bne _0805728E
	b _08057390
_0805728E:
	cmp r0, 0x1
	ble _08057294
	b _080573FC
_08057294:
	cmp r0, 0
	beq _0805729A
	b _080573FC
_0805729A:
	ldr r6, =gBattleMons
	movs r0, 0x58
	mov r5, r9
	muls r5, r0
	adds r0, r6, 0
	adds r0, 0x4C
	adds r4, r5, r0
	ldr r0, [r4]
	movs r7, 0x7
	ands r0, r7
	cmp r0, 0
	beq _08057372
	mov r0, r9
	bl sub_8050650
	lsls r0, 24
	cmp r0, 0
	beq _080572FC
	ldr r0, [r4]
	movs r1, 0x8
	negs r1, r1
	ands r0, r1
	str r0, [r4]
	adds r2, r6, 0
	adds r2, 0x50
	adds r2, r5, r2
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	movs r0, 0x1
	mov r2, r10
	strb r0, [r2, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB220
	str r0, [r1]
	movs r0, 0x2
	mov r8, r0
	b _08057372
	.pool
_080572FC:
	adds r0, r5, r6
	adds r0, 0x20
	ldrb r0, [r0]
	movs r2, 0x1
	cmp r0, 0x30
	bne _0805730A
	movs r2, 0x2
_0805730A:
	ldr r1, [r4]
	adds r0, r1, 0
	ands r0, r7
	cmp r0, r2
	bcs _0805731E
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r4]
	b _08057322
_0805731E:
	subs r0, r1, r2
	str r0, [r4]
_08057322:
	ldr r2, =gBattleMons
	movs r0, 0x58
	mov r1, r9
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r4, [r0]
	movs r0, 0x7
	ands r4, r0
	cmp r4, 0
	beq _08057354
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB213
	str r0, [r1]
	movs r1, 0x2
	mov r8, r1
	b _08057372
	.pool
_08057354:
	adds r2, 0x50
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r1, =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r0, =gUnknown_02024332
	strb r4, [r0, 0x5]
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB220
	str r0, [r1]
	movs r2, 0x2
	mov r8, r2
_08057372:
	ldr r1, =gUnknown_02024332
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r10, r1
	b _080573FC
	.pool
_08057390:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r1, 0x4C
	adds r4, r0, r1
	ldr r0, [r4]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080573F4
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	beq _080573D4
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB26A
	str r0, [r1]
	b _080573EC
	.pool
_080573D4:
	ldr r0, [r4]
	movs r1, 0x21
	negs r1, r1
	ands r0, r1
	str r0, [r4]
	bl b_movescr_stack_push_cursor
	ldr r1, =gUnknown_02024214
	ldr r0, =gUnknown_082DB277
	str r0, [r1]
	mov r0, r10
	strb r5, [r0, 0x5]
_080573EC:
	movs r1, 0x2
	mov r8, r1
	ldr r2, =gUnknown_02024332
	mov r10, r2
_080573F4:
	mov r1, r10
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_080573FC:
	mov r2, r10
	ldrb r0, [r2]
	cmp r0, 0x2
	beq _08057406
	b _0805727C
_08057406:
	mov r0, r8
	cmp r0, 0x2
	bne _08057430
	ldr r4, =gUnknown_02024064
	mov r1, r9
	strb r1, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	ldr r1, =gUnknown_020240D0
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08057430:
	mov r0, r8
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_805725C

	thumb_func_start nullsub_21
nullsub_21: @ 8057458
	bx lr
	thumb_func_end nullsub_21

	thumb_func_start sub_805745C
sub_805745C: @ 805745C
	ldr r1, =gUnknown_03005D60
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, =bx_exec_buffer_A_ch0_tbl1
	str r1, [r0]
	ldr r0, =gUnknown_020244B9
	movs r1, 0
	strb r1, [r0]
	ldr r0, =gUnknown_020244CC
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_805745C

	thumb_func_start dp01_tbl1_exec_completed
dp01_tbl1_exec_completed: @ 805748C
	push {r4,lr}
	sub sp, 0x4
	ldr r1, =gUnknown_03005D60
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =bx_exec_buffer_A_ch0_tbl1
	str r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080574E0
	bl link_get_multiplayer_id
	mov r1, sp
	strb r0, [r1]
	movs r0, 0x2
	movs r1, 0x4
	mov r2, sp
	bl dp01_prepare_buffer_wireless_probably
	ldr r1, =gUnknown_02023064
	ldrb r0, [r4]
	lsls r0, 9
	adds r0, r1
	movs r1, 0x38
	strb r1, [r0]
	b _080574F2
	.pool
_080574E0:
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_080574F2:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end dp01_tbl1_exec_completed

	thumb_func_start bx_exec_buffer_A_ch0_tbl1
bx_exec_buffer_A_ch0_tbl1: @ 8057504
	push {lr}
	ldr r2, =gUnknown_02024068
	ldr r1, =gBitTable
	ldr r0, =gUnknown_02024064
	ldrb r3, [r0]
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08057550
	ldr r0, =gUnknown_02023064
	lsls r1, r3, 9
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x38
	bhi _0805754C
	ldr r0, =gUnknown_0831C514
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _08057550
	.pool
_0805754C:
	bl dp01_tbl1_exec_completed
_08057550:
	pop {r0}
	bx r0
	thumb_func_end bx_exec_buffer_A_ch0_tbl1

	thumb_func_start bx_0802E404
bx_0802E404: @ 8057554
	push {lr}
	ldr r2, =gUnknown_02020630
	ldr r1, =gUnknown_020241E4
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x24
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08057576
	bl dp01_tbl1_exec_completed
_08057576:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bx_0802E404

	thumb_func_start sub_8057588
sub_8057588: @ 8057588
	push {r4-r7,lr}
	ldr r3, =gUnknown_02023064
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	lsls r2, r0, 9
	adds r1, r3, 0x2
	adds r1, r2, r1
	ldrb r5, [r1]
	adds r3, 0x3
	adds r2, r3
	ldrb r1, [r2]
	lsls r1, 8
	orrs r5, r1
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl dp11b_obj_instanciate
	ldrb r0, [r4]
	movs r1, 0
	movs r2, 0x7
	movs r3, 0x1
	bl dp11b_obj_instanciate
	ldr r0, =gMain
	ldrh r1, [r0, 0x30]
	movs r0, 0xF0
	ands r0, r1
	cmp r0, 0
	beq _080575EC
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x13]
	cmp r0, 0x2
	bne _080575EC
	ldr r1, =gUnknown_020244CC
	ldrb r0, [r1]
	adds r0, 0x1
	b _080575F0
	.pool
_080575EC:
	ldr r1, =gUnknown_020244CC
	movs r0, 0
_080575F0:
	strb r0, [r1]
	ldr r0, =gMain
	ldrh r2, [r0, 0x2E]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r2
	cmp r0, 0
	beq _08057658
	movs r0, 0x5
	bl audio_play
	ldr r1, =gUnknown_020244AC
	ldr r0, =gUnknown_02024064
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08057640
	cmp r0, 0x1
	bgt _08057630
	cmp r0, 0
	beq _0805763A
	b _080577C2
	.pool
_08057630:
	cmp r0, 0x2
	beq _08057646
	cmp r0, 0x3
	beq _0805764C
	b _080577C2
_0805763A:
	movs r0, 0x1
	movs r1, 0
	b _080577BC
_08057640:
	movs r0, 0x1
	movs r1, 0x1
	b _080577BC
_08057646:
	movs r0, 0x1
	movs r1, 0x2
	b _080577BC
_0805764C:
	movs r0, 0x1
	movs r1, 0x3
	movs r2, 0
	bl dp01_build_cmdbuf_x21_a_bb
	b _080577C2
_08057658:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	beq _08057698
	ldr r5, =gUnknown_020244AC
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _08057674
	b _080577E8
_08057674:
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_8059CF8
	ldrb r1, [r4]
	adds r1, r5
	ldrb r0, [r1]
	movs r2, 0x1
	b _08057732
	.pool
_08057698:
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	beq _080576D8
	ldr r5, =gUnknown_020244AC
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _080576B4
	b _080577E8
_080576B4:
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_8059CF8
	ldrb r1, [r4]
	adds r1, r5
	ldrb r0, [r1]
	movs r2, 0x1
	b _08057732
	.pool
_080576D8:
	movs r7, 0x40
	adds r0, r7, 0
	ands r0, r2
	cmp r0, 0
	beq _08057700
	ldr r5, =gUnknown_020244AC
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080577E8
	b _0805771A
	.pool
_08057700:
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _0805774C
	ldr r5, =gUnknown_020244AC
	ldr r4, =gUnknown_02024064
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080577E8
_0805771A:
	movs r0, 0x5
	bl audio_play
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	bl sub_8059CF8
	ldrb r1, [r4]
	adds r1, r5
	ldrb r0, [r1]
	movs r2, 0x2
_08057732:
	eors r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, r5
	ldrb r0, [r0]
	movs r1, 0
	bl sub_8059CB4
	b _080577E8
	.pool
_0805774C:
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	bne _0805775A
	ldrb r0, [r1]
	cmp r0, 0x3B
	bls _080577DC
_0805775A:
	ldr r4, =gBattleTypeFlags
	ldr r0, [r4]
	ands r0, r3
	cmp r0, 0
	beq _080577E8
	ldr r6, =gUnknown_02024064
	ldrb r0, [r6]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _080577E8
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, =gUnknown_02024210
	ldrb r1, [r1]
	ldr r2, =gBitTable
	lsls r0, 24
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080577E8
	ldr r0, [r4]
	ands r0, r7
	cmp r0, 0


