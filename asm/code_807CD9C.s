	#include "asm/constants/gba_constants.inc"
  	#include "asm/macros.inc"

  	.syntax unified

  	.text

	thumb_func_start sub_807CD9C
sub_807CD9C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	mov r9, r0
	adds r6, r1, 0
	adds r4, r2, 0
	movs r0, 0xA
	str r0, [sp, 0x24]
	bl IsFixedDungeon
	lsls r0, 24
	cmp r0, 0
	beq _0807CDC4
	ldr r0, _0807CDC0
	b _0807CDFE
	.align 2, 0
_0807CDC0: .4byte gUnknown_80FC9E8
_0807CDC4:
	cmp r9, r6
	bne _0807CDE4
	ldr r0, _0807CDDC
	adds r1, r6, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0807CDE0
	ldr r2, [r0]
	adds r0, r6, 0
	b _0807CE02
	.align 2, 0
_0807CDDC: .4byte gAvailablePokemonNames
_0807CDE0: .4byte gUnknown_80FCA10
_0807CDE4:
	ldr r0, _0807CE0C
	adds r1, r6, 0
	movs r2, 0
	bl SetMessageArgument
	adds r0, r6, 0
	movs r1, 0xE
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807CE28
	ldr r0, _0807CE10
_0807CDFE:
	ldr r2, [r0]
	mov r0, r9
_0807CE02:
	adds r1, r6, 0
	bl sub_80522F4
	b _0807D02A
	.align 2, 0
_0807CE0C: .4byte gAvailablePokemonNames
_0807CE10: .4byte gUnknown_80FCBCC
_0807CE14:
	str r0, [sp, 0x28]
	b _0807CF26
_0807CE18:
	ldrh r0, [r5]
	movs r1, 0x3
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	mov r10, r0
	b _0807CF20
_0807CE28:
	ldr r1, [r6, 0x70]
	adds r2, r4, 0x4
	movs r3, 0x7
	adds r0, r2, 0
	ands r0, r3
	adds r1, 0x46
	strb r0, [r1]
	movs r0, 0x7
	ands r2, r0
	adds r0, r6, 0
	movs r1, 0x6
	bl sub_806CDD4
	ldr r1, _0807D03C
	adds r0, r6, 0
	bl sub_80421C0
	ldr r0, _0807D040
	ldr r2, [r0]
	mov r0, r9
	adds r1, r6, 0
	bl sub_80522F4
	movs r1, 0x1
	mov r10, r1
	movs r2, 0
	str r2, [sp, 0x28]
	lsls r1, r4, 2
	ldr r0, _0807D044
	adds r1, r0
	mov r8, r1
	add r7, sp, 0x18
_0807CE68:
	ldr r2, [r6, 0x4]
	str r2, [sp, 0x18]
	ldrh r0, [r7]
	mov r3, r8
	ldrh r3, [r3]
	adds r0, r3
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _0807D048
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x18]
	asrs r0, r1, 16
	mov r2, r8
	ldrh r2, [r2, 0x2]
	adds r0, r2
	lsls r0, 16
	ldr r2, _0807D04C
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x18]
	movs r3, 0
	ldrsh r0, [r7, r3]
	cmp r0, 0
	blt _0807CF20
	asrs r1, r2, 16
	cmp r1, 0
	blt _0807CF20
	cmp r0, 0x37
	bgt _0807CF20
	cmp r1, 0x1F
	bgt _0807CF20
	mov r1, r8
	movs r2, 0
	ldrsh r0, [r1, r2]
	lsls r0, 10
	str r0, [sp, 0x2C]
	movs r3, 0x2
	ldrsh r0, [r1, r3]
	lsls r0, 10
	str r0, [sp, 0x30]
	movs r4, 0x5
_0807CEBC:
	adds r0, r6, 0
	ldr r1, [sp, 0x2C]
	ldr r2, [sp, 0x30]
	bl sub_804539C
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _0807CED8
	movs r0, 0x19
	bl sub_803E46C
_0807CED8:
	subs r4, 0x1
	cmp r4, 0
	bge _0807CEBC
	movs r1, 0
	ldrsh r0, [r7, r1]
	ldr r1, [sp, 0x18]
	asrs r1, 16
	bl GetMapTile_1
	adds r5, r0, 0
	ldr r0, [r5, 0x10]
	cmp r0, 0
	bne _0807CE14
	add r4, sp, 0x18
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_80705F0
	lsls r0, 24
	cmp r0, 0
	bne _0807CE18
	movs r2, 0
	ldrsh r1, [r7, r2]
	movs r3, 0x2
	ldrsh r2, [r4, r3]
	adds r0, r6, 0
	movs r3, 0x1
	bl sub_80694C0
	ldr r0, [sp, 0x24]
	subs r0, 0x1
	str r0, [sp, 0x24]
	cmp r0, 0
	bgt _0807CE68
	movs r1, 0x1
	mov r10, r1
_0807CF20:
	mov r2, r10
	cmp r2, 0
	bne _0807CF4E
_0807CF26:
	adds r1, r6, 0x4
	adds r0, r6, 0
	bl sub_807D068
	ldr r0, _0807D050
	movs r3, 0
	ldrsh r2, [r0, r3]
	movs r1, 0
	str r1, [sp]
	str r1, [sp, 0x4]
	ldr r0, _0807D054
	str r0, [sp, 0x8]
	str r1, [sp, 0xC]
	str r1, [sp, 0x10]
	str r1, [sp, 0x14]
	mov r0, r9
	adds r1, r6, 0
	movs r3, 0
	bl sub_806F370
_0807CF4E:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0807D02A
	ldr r0, [sp, 0x28]
	cmp r0, 0
	beq _0807CF9E
	add r4, sp, 0x1C
	ldr r1, _0807D058
	adds r0, r4, 0
	bl InitPokemonMove
	ldr r0, [sp, 0x28]
	adds r1, r4, 0
	bl sub_80571F0
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0807CF9E
	mov r0, r9
	ldr r1, [sp, 0x28]
	bl sub_807A96C
	ldr r0, _0807D050
	movs r1, 0
	ldrsh r2, [r0, r1]
	str r4, [sp]
	str r4, [sp, 0x4]
	ldr r0, _0807D05C
	str r0, [sp, 0x8]
	str r4, [sp, 0xC]
	str r4, [sp, 0x10]
	str r4, [sp, 0x14]
	mov r0, r9
	ldr r1, [sp, 0x28]
	movs r3, 0
	bl sub_806F370
_0807CF9E:
	bl sub_8044B28
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0807D02A
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807D02A
	adds r0, r6, 0
	bl sub_806A5B8
	adds r4, r6, 0x4
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _0807CFD8
	adds r0, r6, 0
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_0807CFD8:
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807D02A
	adds r0, r6, 0
	movs r1, 0x8
	bl sub_806CE68
	ldr r0, [r6, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _0807D014
	ldr r1, _0807D060
	ldr r0, [r1]
	strb r5, [r0, 0x1]
	ldr r0, [r1]
	movs r2, 0xB8
	lsls r2, 3
	adds r0, r2
	movs r1, 0x1
	negs r1, r1
	str r1, [r0]
	adds r0, r4, 0
	bl sub_804AC20
	movs r0, 0
	bl sub_807EC28
_0807D014:
	adds r0, r6, 0
	bl sub_806A5B8
	ldr r0, _0807D060
	ldr r0, [r0]
	ldr r3, _0807D064
	adds r0, r3
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_8075900
_0807D02A:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D03C: .4byte 0x000001a3
_0807D040: .4byte gUnknown_80F8A0C
_0807D044: .4byte gAdjacentTileOffsets
_0807D048: .4byte 0xffff0000
_0807D04C: .4byte 0x0000ffff
_0807D050: .4byte gUnknown_80F4F90
_0807D054: .4byte 0x00000219
_0807D058: .4byte 0x00000163
_0807D05C: .4byte 0x0000021a
_0807D060: .4byte gDungeonGlobalData
_0807D064: .4byte 0x00003a08
	thumb_func_end sub_807CD9C

	thumb_func_start sub_807D068
sub_807D068:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	adds r6, r0, 0
	movs r0, 0
	ldrsh r2, [r1, r0]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 11
	movs r2, 0xC0
	lsls r2, 4
	adds r2, r0
	mov r10, r2
	movs r0, 0x2
	ldrsh r1, [r1, r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 11
	movs r1, 0x80
	lsls r1, 5
	adds r1, r0
	mov r9, r1
	ldr r0, [r6, 0xC]
	subs r0, r2
	cmp r0, 0
	bge _0807D0A4
	negs r0, r0
_0807D0A4:
	ldr r1, [r6, 0x10]
	cmp r0, 0xB
	bgt _0807D0B8
	mov r2, r9
	subs r0, r1, r2
	cmp r0, 0
	bge _0807D0B4
	negs r0, r0
_0807D0B4:
	cmp r0, 0xB
	ble _0807D11E
_0807D0B8:
	movs r0, 0
	mov r8, r0
	ldr r5, [r6, 0xC]
	adds r4, r1, 0
	mov r1, r10
	subs r0, r1, r5
	movs r1, 0xC
	bl __divsi3
	str r0, [sp, 0x8]
	mov r2, r9
	subs r0, r2, r4
	movs r1, 0xC
	bl __divsi3
	str r0, [sp, 0xC]
	mov r0, sp
	str r0, [sp, 0x10]
	movs r7, 0xB
_0807D0DE:
	ldr r1, [sp, 0x8]
	adds r5, r1
	ldr r2, [sp, 0xC]
	adds r4, r2
	str r5, [sp]
	ldr r0, [sp, 0x10]
	str r4, [r0, 0x4]
	mov r0, r8
	bl sub_8009C7C
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	str r1, [r6, 0x1C]
	adds r0, r6, 0
	mov r1, sp
	bl sub_804535C
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _0807D114
	movs r0, 0x1A
	bl sub_803E46C
_0807D114:
	movs r1, 0xAA
	add r8, r1
	subs r7, 0x1
	cmp r7, 0
	bge _0807D0DE
_0807D11E:
	mov r2, r10
	str r2, [sp]
	mov r0, r9
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [r6, 0x1C]
	adds r0, r6, 0
	mov r1, sp
	bl sub_804535C
	movs r0, 0x1A
	bl sub_803E46C
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_807D068

	thumb_func_start sub_807D148
sub_807D148:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r8, r0
	adds r5, r1, 0
	mov r9, r2
	str r3, [sp, 0x4]
	ldr r0, [r5, 0x70]
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0x8]
	ldr r0, _0807D180
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	adds r0, r5, 0
	movs r1, 0xE
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807D188
	ldr r0, _0807D184
	b _0807D194
	.align 2, 0
_0807D180: .4byte gAvailablePokemonNames
_0807D184: .4byte gUnknown_80FCAE8
_0807D188:
	bl IsFixedDungeon
	lsls r0, 24
	cmp r0, 0
	beq _0807D1A4
	ldr r0, _0807D1A0
_0807D194:
	ldr r2, [r0]
	mov r0, r8
	adds r1, r5, 0
	bl sub_80522F4
	b _0807D3A8
	.align 2, 0
_0807D1A0: .4byte gUnknown_80FC97C
_0807D1A4:
	mov r2, r9
	cmp r2, 0x1
	bne _0807D1DC
	ldr r0, _0807D1D0
	ldr r0, [r0]
	ldr r3, _0807D1D4
	adds r0, r3
	ldr r1, [r0]
	ldr r0, [r5, 0x4]
	cmp r1, r0
	bne _0807D1DC
	ldr r0, _0807D1D8
	ldr r2, [r0]
	mov r0, r8
	adds r1, r5, 0
	bl sub_80522F4
	mov r0, r8
	adds r1, r5, 0
	bl sub_8076D10
	b _0807D3A8
	.align 2, 0
_0807D1D0: .4byte gDungeonGlobalData
_0807D1D4: .4byte 0x0000e21c
_0807D1D8: .4byte gUnknown_80FC9A0
_0807D1DC:
	ldr r0, _0807D27C
	ldr r2, [r0]
	mov r0, r8
	adds r1, r5, 0
	bl sub_80522F4
	adds r0, r5, 0
	adds r1, r5, 0
	bl sub_807A96C
	mov r0, r8
	adds r1, r5, 0
	bl sub_80421AC
	adds r0, r5, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _0807D252
	mov r0, r10
	adds r0, 0x46
	ldrb r4, [r0]
	ldr r1, [r5, 0x1C]
	movs r2, 0x80
	lsls r2, 4
	adds r1, r2
	str r1, [r5, 0x1C]
	ldr r2, _0807D280
	adds r6, r0, 0
	cmp r1, r2
	bgt _0807D252
	movs r7, 0x7
_0807D21E:
	ldr r0, _0807D284
	ldr r0, [r0]
	movs r1, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0807D23C
	adds r4, 0x1
	ands r4, r7
	adds r0, r4, 0
	ands r0, r7
	strb r0, [r6]
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
_0807D23C:
	movs r0, 0x22
	bl sub_803E46C
	ldr r1, [r5, 0x1C]
	movs r3, 0x80
	lsls r3, 4
	adds r1, r3
	str r1, [r5, 0x1C]
	ldr r0, _0807D280
	cmp r1, r0
	ble _0807D21E
_0807D252:
	mov r0, r9
	cmp r0, 0x1
	beq _0807D288
	cmp r0, 0x1
	bcc _0807D264
	cmp r0, 0x2
	beq _0807D2B0
	cmp r0, 0x3
	beq _0807D2C8
_0807D264:
	mov r0, sp
	bl sub_8083660
	lsls r0, 24
	cmp r0, 0
	bne _0807D2CE
	ldr r0, [r5, 0x4]
	str r0, [sp]
	movs r1, 0x1
	str r1, [sp, 0x8]
	b _0807D2CE
	.align 2, 0
_0807D27C: .4byte gUnknown_80FC584
_0807D280: .4byte 0x00009fff
_0807D284: .4byte gUnknown_202EDCC
_0807D288:
	ldr r0, _0807D2A8
	ldr r1, [r0]
	ldr r2, _0807D2AC
	adds r1, r2
	mov r0, sp
	bl sub_808384C
	lsls r0, 24
	cmp r0, 0
	bne _0807D2CE
	ldr r0, [r5, 0x4]
	str r0, [sp]
	movs r3, 0x1
	str r3, [sp, 0x8]
	b _0807D2CE
	.align 2, 0
_0807D2A8: .4byte gDungeonGlobalData
_0807D2AC: .4byte 0x0000e21c
_0807D2B0:
	mov r0, sp
	ldr r1, [sp, 0x4]
	bl sub_808384C
	lsls r0, 24
	cmp r0, 0
	bne _0807D2CE
	ldr r0, [r5, 0x4]
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x8]
	b _0807D2CE
_0807D2C8:
	ldr r1, [sp, 0x4]
	ldr r0, [r1]
	str r0, [sp]
_0807D2CE:
	mov r0, sp
	movs r2, 0
	ldrsh r1, [r0, r2]
	movs r3, 0x2
	ldrsh r2, [r0, r3]
	adds r0, r5, 0
	movs r3, 0x1
	bl sub_80694C0
	adds r0, r5, 0
	movs r1, 0
	bl sub_804535C
	adds r0, r5, 0
	bl sub_807BB78
	movs r0, 0x1
	bl sub_803F580
	adds r0, r5, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _0807D340
	mov r1, r10
	adds r1, 0x46
	ldrb r4, [r1]
	movs r0, 0x9C
	lsls r0, 8
	str r0, [r5, 0x1C]
	adds r6, r1, 0
	movs r7, 0x7
_0807D310:
	ldr r0, _0807D3B8
	ldr r0, [r0]
	movs r1, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0807D32E
	adds r4, 0x1
	ands r4, r7
	adds r0, r4, 0
	ands r0, r7
	strb r0, [r6]
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
_0807D32E:
	movs r0, 0x22
	bl sub_803E46C
	ldr r0, [r5, 0x1C]
	ldr r1, _0807D3BC
	adds r0, r1
	str r0, [r5, 0x1C]
	cmp r0, 0
	bgt _0807D310
_0807D340:
	movs r4, 0
	str r4, [r5, 0x1C]
	movs r0, 0x22
	bl sub_803E46C
	ldr r2, [sp, 0x8]
	cmp r2, 0
	beq _0807D35C
	ldr r0, _0807D3C0
	ldr r2, [r0]
	mov r0, r8
	adds r1, r5, 0
	bl sub_80522F4
_0807D35C:
	mov r3, r9
	cmp r3, 0x1
	bne _0807D36A
	mov r0, r8
	adds r1, r5, 0
	bl sub_8076D10
_0807D36A:
	mov r1, r10
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	beq _0807D392
	adds r0, r5, 0x4
	bl sub_804AC20
	ldr r1, _0807D3C4
	ldr r0, [r1]
	strb r4, [r0, 0x1]
	ldr r0, [r1]
	movs r2, 0xB8
	lsls r2, 3
	adds r0, r2
	movs r1, 0x1
	negs r1, r1
	str r1, [r0]
	movs r0, 0
	bl sub_807EC28
_0807D392:
	adds r0, r5, 0
	bl sub_806A5B8
	ldr r0, _0807D3C4
	ldr r0, [r0]
	ldr r3, _0807D3C8
	adds r0, r3
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_8075900
_0807D3A8:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D3B8: .4byte gUnknown_202EDCC
_0807D3BC: .4byte 0xfffffc00
_0807D3C0: .4byte gUnknown_80FCB14
_0807D3C4: .4byte gDungeonGlobalData
_0807D3C8: .4byte 0x00003a08
	thumb_func_end sub_807D148

	thumb_func_start sub_807D3CC
sub_807D3CC:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	mov r8, r0
	movs r2, 0
	ldr r4, _0807D448
	ldr r0, [r4]
	ldr r1, _0807D44C
	adds r0, r1
	ldrb r6, [r0]
	cmp r6, 0
	bne _0807D3E8
	movs r6, 0x2
_0807D3E8:
	mov r0, r8
	str r2, [sp]
	bl GetEntityRoomIndex
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r2, [sp]
	cmp r1, 0xFF
	bne _0807D450
	mov r3, r8
	movs r1, 0x6
	ldrsh r0, [r3, r1]
	subs r5, r0, r6
	adds r0, r6
	cmp r5, r0
	bgt _0807D4A8
_0807D408:
	mov r3, r8
	movs r1, 0x4
	ldrsh r0, [r3, r1]
	subs r4, r0, r6
	adds r0, r6
	adds r7, r5, 0x1
	cmp r4, r0
	bgt _0807D438
_0807D418:
	adds r0, r4, 0
	adds r1, r5, 0
	str r2, [sp]
	bl sub_807D4E0
	ldr r2, [sp]
	orrs r2, r0
	lsls r0, r2, 24
	lsrs r2, r0, 24
	adds r4, 0x1
	mov r3, r8
	movs r1, 0x4
	ldrsh r0, [r3, r1]
	adds r0, r6
	cmp r4, r0
	ble _0807D418
_0807D438:
	adds r5, r7, 0
	mov r3, r8
	movs r1, 0x6
	ldrsh r0, [r3, r1]
	adds r0, r6
	cmp r5, r0
	ble _0807D408
	b _0807D4A8
	.align 2, 0
_0807D448: .4byte gDungeonGlobalData
_0807D44C: .4byte 0x00018209
_0807D450:
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r3, _0807D468
	adds r0, r3
	ldr r1, [r4]
	adds r6, r1, r0
	movs r1, 0x4
	ldrsh r0, [r6, r1]
	subs r5, r0, 0x1
	b _0807D49E
	.align 2, 0
_0807D468: .4byte 0x000104c4
_0807D46C:
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	subs r4, r0, 0x1
	movs r3, 0x6
	ldrsh r0, [r6, r3]
	adds r0, 0x1
	adds r7, r5, 0x1
	cmp r4, r0
	bgt _0807D49C
_0807D47E:
	adds r0, r4, 0
	adds r1, r5, 0
	str r2, [sp]
	bl sub_807D4E0
	ldr r2, [sp]
	orrs r2, r0
	lsls r0, r2, 24
	lsrs r2, r0, 24
	adds r4, 0x1
	movs r1, 0x6
	ldrsh r0, [r6, r1]
	adds r0, 0x1
	cmp r4, r0
	ble _0807D47E
_0807D49C:
	adds r5, r7, 0
_0807D49E:
	movs r3, 0x8
	ldrsh r0, [r6, r3]
	adds r0, 0x1
	cmp r5, r0
	ble _0807D46C
_0807D4A8:
	cmp r2, 0
	beq _0807D4C4
	ldr r0, _0807D4C0
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
	bl sub_8040A84
	bl sub_8049ED4
	b _0807D4CE
	.align 2, 0
_0807D4C0: .4byte gUnknown_80FD2F8
_0807D4C4:
	ldr r0, _0807D4DC
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
_0807D4CE:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D4DC: .4byte gUnknown_80FD320
	thumb_func_end sub_807D3CC

	thumb_func_start sub_807D4E0
sub_807D4E0:
	push {r4,lr}
	bl GetMapTile_1
	ldr r4, [r0, 0x14]
	cmp r4, 0
	beq _0807D506
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x2
	bne _0807D506
	adds r1, r4, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	bne _0807D506
	movs r0, 0x1
	strb r0, [r1]
	b _0807D508
_0807D506:
	movs r0, 0
_0807D508:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807D4E0

	thumb_func_start sub_807D510
sub_807D510:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0807D540
	add sp, r4
	ldr r1, _0807D544
	add r1, sp
	str r0, [r1]
	movs r2, 0
	movs r3, 0xD1
	lsls r3, 4
	add r3, sp
	str r2, [r3]
	ldr r4, _0807D548
	add r4, sp
	str r2, [r4]
	add r5, sp, 0x4
	mov r8, r5
	mov r10, r2
	mov r9, r2
	add r7, sp, 0x8
	b _0807D606
	.align 2, 0
_0807D540: .4byte 0xfffff2d4
_0807D544: .4byte 0x00000d08
_0807D548: .4byte 0x00000d0c
_0807D54C:
	movs r0, 0x4
	ldrsh r1, [r5, r0]
	ldr r2, _0807D650
	add r2, sp
	ldr r2, [r2]
	movs r3, 0x4
	ldrsh r0, [r2, r3]
	subs r1, r0
	cmp r1, 0
	bge _0807D562
	negs r1, r1
_0807D562:
	cmp r1, 0x2
	bgt _0807D580
	movs r3, 0x6
	ldrsh r1, [r5, r3]
	ldr r4, _0807D650
	add r4, sp
	ldr r4, [r4]
	movs r2, 0x6
	ldrsh r0, [r4, r2]
	subs r1, r0
	cmp r1, 0
	bge _0807D57C
	negs r1, r1
_0807D57C:
	cmp r1, 0x2
	ble _0807D5FE
_0807D580:
	movs r1, 0x4
	ldrsh r0, [r5, r1]
	movs r2, 0x6
	ldrsh r1, [r5, r2]
	bl GetMapTile_1
	ldrh r1, [r0]
	movs r2, 0x3
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0807D5FE
	mov r3, r8
	str r2, [r3]
	ldr r4, _0807D654
	add r4, sp
	ldr r1, _0807D658
	add r1, sp
	ldr r1, [r1]
	lsls r0, r1, 2
	adds r4, r0
	str r4, [r7, 0x6C]
	ldr r0, [r5, 0x4]
	str r0, [r7]
	movs r2, 0x4
	ldrsh r0, [r5, r2]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 3
	adds r1, 0x4
	lsls r1, 8
	movs r3, 0x6
	ldrsh r0, [r5, r3]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 3
	adds r2, 0x4
	lsls r2, 8
	mov r0, r8
	bl sub_8045394
	movs r2, 0
	movs r1, 0
	strh r1, [r7, 0x22]
	movs r0, 0x1
	strb r0, [r7, 0x1C]
	strb r2, [r7, 0x1E]
	str r1, [r7, 0x18]
	ldr r0, _0807D65C
	ldr r0, [r0]
	ldr r5, _0807D660
	adds r0, r5
	add r0, r9
	ldr r0, [r0]
	str r0, [r4]
	adds r7, 0x74
	movs r0, 0x74
	add r8, r0
	ldr r2, _0807D658
	add r2, sp
	ldr r1, [r2]
	adds r1, 0x1
	str r1, [r2]
_0807D5FE:
	movs r3, 0x4
	add r9, r3
	movs r4, 0x1
	add r10, r4
_0807D606:
	ldr r0, _0807D65C
	ldr r1, [r0]
	ldr r5, _0807D664
	adds r0, r1, r5
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r10, r0
	bge _0807D634
	ldr r3, _0807D668
	adds r0, r1, r3
	add r0, r9
	ldr r5, [r0]
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807D5FE
	ldr r4, _0807D658
	add r4, sp
	ldr r4, [r4]
	cmp r4, 0x18
	ble _0807D54C
_0807D634:
	ldr r5, _0807D658
	add r5, sp
	ldr r5, [r5]
	cmp r5, 0
	bne _0807D670
	ldr r0, _0807D66C
	ldr r1, [r0]
	ldr r2, _0807D650
	add r2, sp
	ldr r0, [r2]
	bl SendMessage
	b _0807D9F4
	.align 2, 0
_0807D650: .4byte 0x00000d08
_0807D654: .4byte 0x00000b58
_0807D658: .4byte 0x00000d0c
_0807D65C: .4byte gDungeonGlobalData
_0807D660: .4byte 0x00003804
_0807D664: .4byte 0x00003904
_0807D668: .4byte 0x0001361c
_0807D66C: .4byte gUnknown_80FE034
_0807D670:
	movs r1, 0
	movs r7, 0x1D
	ldr r0, _0807D754
	add r0, sp
_0807D678:
	strb r1, [r0]
	subs r0, 0x1
	subs r7, 0x1
	cmp r7, 0
	bge _0807D678
	movs r7, 0
	ldr r3, _0807D758
	add r3, sp
	ldr r3, [r3]
	cmp r7, r3
	blt _0807D690
	b _0807D7CC
_0807D690:
	ldr r4, _0807D75C
	mov r10, r4
	ldr r5, _0807D760
	movs r0, 0
	ldrsh r5, [r5, r0]
	ldr r0, _0807D764
	add r0, sp
	str r5, [r0]
_0807D6A0:
	movs r1, 0
	mov r9, r1
	ldr r2, _0807D768
	add r2, sp
	ldr r2, [r2]
	ldrh r0, [r2, 0x4]
	ldr r1, _0807D76C
	ands r6, r1
	orrs r6, r0
	ldrh r0, [r2, 0x6]
	lsls r0, 16
	mov r4, r10
	ands r6, r4
	orrs r6, r0
	mov r4, r9
	adds r5, r7, 0x1
	movs r0, 0xD2
	lsls r0, 4
	add r0, sp
	str r5, [r0]
	ldr r1, _0807D760
	ldr r2, _0807D764
	add r2, sp
	ldr r2, [r2]
	cmp r2, 0x63
	beq _0807D790
	ldr r3, _0807D770
	add r3, sp
	mov r8, r3
_0807D6DA:
	ldr r0, _0807D774
	add r0, sp
	adds r0, r4
	ldr r5, _0807D778
	add r5, sp
	str r0, [r5]
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807D77C
	lsls r2, r4, 2
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, _0807D768
	add r1, sp
	ldr r1, [r1]
	ldrh r1, [r1, 0x4]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _0807D76C
	ands r6, r1
	orrs r6, r0
	ldrh r0, [r2, 0x2]
	ldr r2, _0807D768
	add r2, sp
	ldr r2, [r2]
	ldrh r2, [r2, 0x6]
	adds r0, r2
	lsls r0, 16
	mov r3, r10
	ands r6, r3
	orrs r6, r0
	lsls r0, r6, 16
	asrs r0, 16
	asrs r1, r6, 16
	bl GetMapTile_1
	adds r2, r0, 0
	ldrh r1, [r2]
	movs r3, 0x3
	ands r3, r1
	cmp r3, 0x1
	bne _0807D77C
	movs r5, 0x80
	lsls r5, 2
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _0807D77C
	ldr r0, [r2, 0x14]
	cmp r0, 0
	bne _0807D77C
	lsls r0, r7, 2
	add r0, r8
	str r6, [r0]
	ldr r0, _0807D778
	add r0, sp
	ldr r0, [r0]
	strb r3, [r0]
	b _0807D7B8
	.align 2, 0
_0807D754: .4byte 0x00000d05
_0807D758: .4byte 0x00000d0c
_0807D75C: .4byte 0x0000ffff
_0807D760: .4byte gUnknown_80F4468
_0807D764: .4byte 0x00000d18
_0807D768: .4byte 0x00000d08
_0807D76C: .4byte 0xffff0000
_0807D770: .4byte 0x00000bbc
_0807D774: .4byte 0x00000ce8
_0807D778: .4byte 0x00000d28
_0807D77C:
	adds r4, 0x1
	cmp r4, 0x1D
	bgt _0807D790
	lsls r0, r4, 2
	ldr r1, _0807D9B4
	adds r0, r1
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, 0x63
	bne _0807D6DA
_0807D790:
	mov r3, r9
	cmp r3, 0
	bne _0807D7B8
	movs r0, 0x74
	muls r0, r7
	add r0, sp
	adds r0, 0x4
	str r3, [r0]
	ldr r1, _0807D9B8
	add r1, sp
	lsls r0, r7, 2
	adds r1, r0
	ldrh r2, [r1]
	mov r0, r10
	orrs r0, r2
	strh r0, [r1]
	ldrh r2, [r1, 0x2]
	mov r0, r10
	orrs r0, r2
	strh r0, [r1, 0x2]
_0807D7B8:
	movs r4, 0xD2
	lsls r4, 4
	add r4, sp
	ldr r7, [r4]
	ldr r5, _0807D9BC
	add r5, sp
	ldr r5, [r5]
	cmp r7, r5
	bge _0807D7CC
	b _0807D6A0
_0807D7CC:
	movs r7, 0
	ldr r0, _0807D9BC
	add r0, sp
	ldr r0, [r0]
	cmp r7, r0
	bge _0807D866
_0807D7D8:
	movs r0, 0x74
	adds r1, r7, 0
	muls r1, r0
	mov r8, r1
	mov r4, sp
	add r4, r8
	adds r4, 0x4
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807D85A
	adds r0, r4, 0x4
	movs r1, 0x1
	bl sub_80461C8
	movs r2, 0x4
	ldrsh r0, [r4, r2]
	movs r3, 0x6
	ldrsh r1, [r4, r3]
	bl sub_80402AC
	movs r5, 0xC2
	lsls r5, 4
	add r5, sp
	lsls r6, r7, 3
	adds r5, r6
	ldr r4, _0807D9B8
	add r4, sp
	lsls r0, r7, 2
	adds r4, r0
	movs r0, 0
	ldrsh r1, [r4, r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, 0x4
	lsls r0, 8
	add r1, sp, 0x10
	add r1, r8
	ldr r1, [r1]
	subs r0, r1
	movs r1, 0x3C
	bl __divsi3
	str r0, [r5]
	ldr r5, _0807D9C0
	add r5, sp
	adds r5, r6
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, 0x4
	lsls r0, 8
	add r1, sp, 0x14
	add r1, r8
	ldr r1, [r1]
	subs r0, r1
	movs r1, 0x3C
	bl __divsi3
	str r0, [r5]
_0807D85A:
	adds r7, 0x1
	ldr r3, _0807D9BC
	add r3, sp
	ldr r3, [r3]
	cmp r7, r3
	blt _0807D7D8
_0807D866:
	movs r1, 0xD1
	lsls r1, 1
	ldr r4, _0807D9C4
	add r4, sp
	ldr r0, [r4]
	bl sub_80421C0
	movs r5, 0
	mov r9, r5
	ldr r0, _0807D9C8
	ldr r0, [r0]
	ldr r1, _0807D9CC
	adds r0, r1
	ldrb r0, [r0]
	ldr r2, _0807D9D0
	add r2, sp
	str r0, [r2]
	mov r10, r5
	movs r6, 0
_0807D88C:
	movs r7, 0
	mov r3, r10
	adds r3, 0x22
	ldr r4, _0807D9D4
	add r4, sp
	str r3, [r4]
	adds r5, r6, 0x1
	ldr r0, _0807D9D8
	add r0, sp
	str r5, [r0]
	ldr r1, _0807D9BC
	add r1, sp
	ldr r1, [r1]
	cmp r7, r1
	bge _0807D916
	mov r2, r9
	lsls r2, 24
	mov r8, r2
_0807D8B0:
	movs r0, 0x74
	adds r5, r7, 0
	muls r5, r0
	mov r4, sp
	adds r4, r5
	adds r4, 0x4
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807D90A
	movs r0, 0xC2
	lsls r0, 4
	add r0, sp
	lsls r2, r7, 3
	adds r0, r2
	ldr r1, [r0]
	ldr r0, _0807D9C0
	add r0, sp
	adds r0, r2
	ldr r2, [r0]
	adds r0, r4, 0
	bl sub_804539C
	mov r0, r10
	bl sub_8009C7C
	add r2, sp, 0x20
	adds r2, r5
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	str r1, [r2]
	movs r0, 0
	str r0, [sp]
	adds r0, r4, 0
	ldr r3, _0807D9D0
	add r3, sp
	ldr r1, [r3]
	movs r2, 0
	mov r4, r8
	lsrs r3, r4, 24
	bl sub_80462AC
_0807D90A:
	adds r7, 0x1
	ldr r5, _0807D9BC
	add r5, sp
	ldr r5, [r5]
	cmp r7, r5
	blt _0807D8B0
_0807D916:
	movs r0, 0x13
	bl sub_803E46C
	ldr r0, _0807D9D4
	add r0, sp
	ldr r0, [r0]
	mov r10, r0
	movs r0, 0x3
	ands r0, r6
	cmp r0, 0
	bne _0807D930
	movs r1, 0x1
	add r9, r1
_0807D930:
	movs r0, 0x7
	mov r2, r9
	ands r2, r0
	mov r9, r2
	ldr r3, _0807D9D8
	add r3, sp
	ldr r6, [r3]
	cmp r6, 0x3B
	ble _0807D88C
	movs r7, 0
	ldr r4, _0807D9BC
	add r4, sp
	ldr r4, [r4]
	cmp r7, r4
	bge _0807D996
_0807D94E:
	ldr r0, _0807D9B8
	add r0, sp
	lsls r1, r7, 2
	adds r4, r0, r1
	movs r5, 0
	ldrsh r0, [r4, r5]
	cmp r0, 0
	blt _0807D98A
	movs r0, 0x74
	muls r0, r7
	add r0, sp
	adds r0, 0x4
	bl GetItemData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_80460F8
	movs r1, 0
	ldrsh r0, [r4, r1]
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	bl sub_80402AC
	movs r3, 0x1
	movs r4, 0xD1
	lsls r4, 4
	add r4, sp
	str r3, [r4]
_0807D98A:
	adds r7, 0x1
	ldr r5, _0807D9BC
	add r5, sp
	ldr r5, [r5]
	cmp r7, r5
	blt _0807D94E
_0807D996:
	movs r0, 0xD1
	lsls r0, 4
	add r0, sp
	ldr r0, [r0]
	cmp r0, 0
	beq _0807D9E0
	ldr r0, _0807D9DC
	ldr r1, [r0]
	ldr r2, _0807D9C4
	add r2, sp
	ldr r0, [r2]
	bl SendMessage
	b _0807D9EE
	.align 2, 0
_0807D9B4: .4byte gUnknown_80F4468
_0807D9B8: .4byte 0x00000bbc
_0807D9BC: .4byte 0x00000d0c
_0807D9C0: .4byte 0x00000c24
_0807D9C4: .4byte 0x00000d08
_0807D9C8: .4byte gDungeonGlobalData
_0807D9CC: .4byte 0x00018210
_0807D9D0: .4byte 0x00000d14
_0807D9D4: .4byte 0x00000d1c
_0807D9D8: .4byte 0x00000d24
_0807D9DC: .4byte gUnknown_80FE060
_0807D9E0:
	ldr r0, _0807DA08
	ldr r1, [r0]
	ldr r3, _0807DA0C
	add r3, sp
	ldr r0, [r3]
	bl SendMessage
_0807D9EE:
	movs r0, 0x1
	bl sub_807EC28
_0807D9F4:
	ldr r3, _0807DA10
	add sp, r3
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DA08: .4byte gUnknown_80FE034
_0807DA0C: .4byte 0x00000d08
_0807DA10: .4byte 0x00000d2c
	thumb_func_end sub_807D510

	thumb_func_start sub_807DA14
sub_807DA14:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r5, r0, 0
	adds r6, r1, 0
	lsls r2, 24
	lsrs r4, r2, 24
	ldr r0, [r6, 0x70]
	mov r10, r0
	adds r0, r6, 0
	movs r1, 0xE
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807DA50
	ldr r0, _0807DA48
	adds r1, r6, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0807DA4C
	b _0807DA5C
	.align 2, 0
_0807DA48: .4byte gAvailablePokemonNames
_0807DA4C: .4byte gUnknown_80FCB98
_0807DA50:
	bl IsFixedDungeon
	lsls r0, 24
	cmp r0, 0
	beq _0807DA6C
	ldr r0, _0807DA68
_0807DA5C:
	ldr r2, [r0]
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_80522F4
	b _0807DB5E
	.align 2, 0
_0807DA68: .4byte gUnknown_80FC9C0
_0807DA6C:
	cmp r4, 0x8
	bne _0807DA76
	mov r0, r10
	adds r0, 0x46
	ldrb r4, [r0]
_0807DA76:
	adds r0, r6, 0
	movs r1, 0x6
	adds r2, r4, 0
	bl sub_806CDD4
	lsls r1, r4, 2
	adds r2, r6, 0x4
	mov r9, r2
	ldr r0, _0807DAFC
	adds r1, r0
	mov r8, r1
_0807DA8C:
	ldrh r0, [r6, 0x4]
	mov r3, r8
	ldrh r3, [r3]
	adds r0, r3
	lsls r0, 16
	ldrh r1, [r6, 0x6]
	mov r2, r8
	ldrh r2, [r2, 0x2]
	adds r1, r2
	lsls r1, 16
	lsrs r7, r0, 16
	orrs r7, r1
	lsls r0, r7, 16
	asrs r5, r0, 16
	cmp r5, 0
	ble _0807DB00
	asrs r4, r7, 16
	cmp r4, 0
	ble _0807DB00
	cmp r5, 0x36
	bgt _0807DB00
	cmp r4, 0x1E
	bgt _0807DB00
	adds r0, r5, 0
	adds r1, r4, 0
	bl GetMapTile_1
	adds r1, r0, 0
	ldr r0, [r1, 0x10]
	cmp r0, 0
	bne _0807DB00
	ldrh r1, [r1]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0807DB00
	adds r0, r6, 0
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0
	bl sub_80694C0
	adds r0, r6, 0
	movs r1, 0
	bl sub_804535C
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	cmp r0, 0
	beq _0807DA8C
	movs r0, 0x3A
	bl sub_803E46C
	b _0807DA8C
	.align 2, 0
_0807DAFC: .4byte gAdjacentTileOffsets
_0807DB00:
	adds r0, r6, 0
	bl sub_806A5B8
	mov r1, r9
	adds r0, r6, 0
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _0807DB20
	adds r0, r6, 0
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_0807DB20:
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807DB5E
	adds r0, r6, 0
	movs r1, 0x8
	bl sub_806CE68
	mov r3, r10
	ldrb r0, [r3, 0x7]
	cmp r0, 0
	beq _0807DB48
	mov r0, r9
	bl sub_804AC20
	movs r0, 0
	bl sub_807EC28
_0807DB48:
	adds r0, r6, 0
	bl sub_806A5B8
	ldr r0, _0807DB6C
	ldr r0, [r0]
	ldr r1, _0807DB70
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_8075900
_0807DB5E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DB6C: .4byte gDungeonGlobalData
_0807DB70: .4byte 0x00003a08
	thumb_func_end sub_807DA14

	thumb_func_start sub_807DB74
sub_807DB74:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	movs r0, 0
	mov r8, r0
	bl IsFixedDungeon
	lsls r0, 24
	cmp r0, 0
	beq _0807DB94
	ldr r0, _0807DB90
	b _0807DBA0
	.align 2, 0
_0807DB90: .4byte gUnknown_80FD060
_0807DB94:
	bl IsWaterTileset
	lsls r0, 24
	cmp r0, 0
	beq _0807DBB0
	ldr r0, _0807DBAC
_0807DBA0:
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _0807DC54
	.align 2, 0
_0807DBAC: .4byte gUnknown_80FD08C
_0807DBB0:
	movs r5, 0
	ldr r0, _0807DC24
	adds r6, r0, 0
_0807DBB6:
	movs r4, 0
_0807DBB8:
	adds r0, r4, 0
	adds r1, r5, 0
	bl GetMapTile_2
	adds r2, r0, 0
	ldrh r1, [r2]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	bne _0807DBE2
	adds r0, r1, 0
	ands r0, r6
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80498A8
	movs r1, 0x1
	mov r8, r1
_0807DBE2:
	adds r4, 0x1
	cmp r4, 0x37
	ble _0807DBB8
	adds r5, 0x1
	cmp r5, 0x1F
	ble _0807DBB6
	movs r5, 0
_0807DBF0:
	movs r4, 0
	adds r6, r5, 0x1
_0807DBF4:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8049BB0
	adds r4, 0x1
	cmp r4, 0x37
	ble _0807DBF4
	adds r5, r6, 0
	cmp r5, 0x1F
	ble _0807DBF0
	mov r0, r8
	cmp r0, 0
	beq _0807DC30
	ldr r1, _0807DC28
	adds r0, r7, 0
	bl sub_80421C0
	ldr r0, _0807DC2C
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _0807DC3A
	.align 2, 0
_0807DC24: .4byte 0x0000fffc
_0807DC28: .4byte 0x000001a1
_0807DC2C: .4byte gUnknown_80FD05C
_0807DC30:
	ldr r0, _0807DC60
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
_0807DC3A:
	ldr r0, _0807DC64
	ldr r0, [r0]
	movs r1, 0xCE
	lsls r1, 3
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bl sub_806CF60
	bl sub_8040A84
	bl sub_8049ED4
_0807DC54:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DC60: .4byte gUnknown_80FD060
_0807DC64: .4byte gDungeonGlobalData
	thumb_func_end sub_807DB74

	thumb_func_start sub_807DC68
sub_807DC68:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r9, r0
	ldr r0, _0807DC88
	ldr r1, [r0]
	ldr r2, _0807DC8C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807DC94
	ldr r0, _0807DC90
	b _0807DCB8
	.align 2, 0
_0807DC88: .4byte gDungeonGlobalData
_0807DC8C: .4byte 0x00003a08
_0807DC90: .4byte gUnknown_80FD3C8
_0807DC94:
	ldr r3, _0807DCA4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807DCAC
	ldr r0, _0807DCA8
	b _0807DCB8
	.align 2, 0
_0807DCA4: .4byte 0x00003a0b
_0807DCA8: .4byte gUnknown_80FD3CC
_0807DCAC:
	bl IsBossBattle
	lsls r0, 24
	cmp r0, 0
	beq _0807DCC8
	ldr r0, _0807DCC4
_0807DCB8:
	ldr r1, [r0]
	mov r0, r9
	bl SendMessage
	b _0807DF0E
	.align 2, 0
_0807DCC4: .4byte gUnknown_80FD3D0
_0807DCC8:
	movs r0, 0
	mov r8, r0
	movs r5, 0x1
	movs r1, 0
	mov r10, r1
	ldr r2, _0807DD68
	adds r7, r2, 0
_0807DCD6:
	movs r4, 0x1
_0807DCD8:
	movs r6, 0
	adds r0, r5, 0
	adds r1, r4, 0
	bl GetMapTile_2
	adds r2, r0, 0
	ldrh r1, [r2]
	ldr r3, _0807DD6C
	adds r0, r3, 0
	adds r3, r1, 0
	ands r3, r0
	strh r3, [r2]
	mov r0, r10
	strb r0, [r2, 0x9]
	movs r0, 0x10
	ands r0, r3
	cmp r0, 0
	bne _0807DD94
	movs r0, 0x80
	lsls r0, 1
	adds r1, r0, 0
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0807DD94
	ldrh r0, [r2, 0x4]
	movs r1, 0x3
	orrs r0, r1
	strh r0, [r2, 0x4]
	ldr r1, _0807DD70
	adds r0, r1, 0
	adds r1, r3, 0
	ands r1, r0
	strh r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0807DD28
	movs r3, 0x1
	mov r8, r3
_0807DD28:
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _0807DD94
	cmp r0, 0x3
	beq _0807DD94
	cmp r5, 0x1
	beq _0807DD44
	cmp r4, 0x1
	beq _0807DD44
	cmp r5, 0x36
	beq _0807DD44
	cmp r4, 0x1E
	bne _0807DD5C
_0807DD44:
	ldr r0, [r2, 0x14]
	cmp r0, 0
	bne _0807DD5C
	ldr r0, _0807DD74
	ldr r0, [r0]
	movs r1, 0xCE
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807DD5C
	movs r6, 0x1
_0807DD5C:
	cmp r6, 0
	beq _0807DD78
	ldrh r0, [r2]
	ands r0, r7
	movs r1, 0x2
	b _0807DD90
	.align 2, 0
_0807DD68: .4byte 0x0000fffc
_0807DD6C: .4byte 0x0000fbff
_0807DD70: .4byte 0x0000fff7
_0807DD74: .4byte gDungeonGlobalData
_0807DD78:
	ldrh r1, [r2]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	beq _0807DD94
	adds r0, r1, 0
	ands r0, r7
	movs r1, 0x1
	orrs r0, r1
	movs r3, 0x80
	lsls r3, 3
	adds r1, r3, 0
_0807DD90:
	orrs r0, r1
	strh r0, [r2]
_0807DD94:
	adds r4, 0x1
	cmp r4, 0x1E
	ble _0807DCD8
	adds r5, 0x1
	cmp r5, 0x36
	ble _0807DCD6
	ldr r0, _0807DF1C
	ldr r1, [r0]
	ldr r2, _0807DF20
	adds r0, r1, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	adds r2, 0x2
	adds r1, r2
	movs r3, 0
	ldrsh r1, [r1, r3]
	movs r2, 0x1
	bl sub_8050C30
	lsls r0, 24
	cmp r0, 0
	beq _0807DE02
	movs r5, 0
	movs r6, 0x84
	lsls r6, 8
	movs r7, 0
_0807DDC8:
	movs r4, 0
_0807DDCA:
	adds r0, r5, 0
	adds r1, r4, 0
	bl GetMapTile_2
	adds r2, r0, 0
	ldrh r1, [r2]
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0807DDF6
	adds r0, r6, 0
	ands r0, r1
	cmp r0, r6
	bne _0807DDF6
	ldr r3, _0807DF24
	adds r0, r3, 0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strh r0, [r2]
_0807DDF6:
	adds r4, 0x1
	cmp r4, 0x1F
	ble _0807DDCA
	adds r5, 0x1
	cmp r5, 0x37
	ble _0807DDC8
_0807DE02:
	mov r0, r8
	cmp r0, 0
	beq _0807DE14
	ldr r0, _0807DF1C
	ldr r0, [r0]
	ldr r1, _0807DF28
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0807DE14:
	movs r5, 0
_0807DE16:
	movs r4, 0
	adds r6, r5, 0x1
_0807DE1A:
	mov r2, r8
	cmp r2, 0
	beq _0807DE30
	adds r0, r5, 0
	adds r1, r4, 0
	bl GetMapTile_2
	ldrh r2, [r0]
	movs r1, 0x40
	orrs r1, r2
	strh r1, [r0]
_0807DE30:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_8049BB0
	adds r4, 0x1
	cmp r4, 0x1F
	ble _0807DE1A
	adds r5, r6, 0
	cmp r5, 0x37
	ble _0807DE16
	movs r5, 0
_0807DE46:
	ldr r0, _0807DF1C
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r3, _0807DF2C
	adds r0, r3
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807DE74
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	movs r2, 0x6
	ldrsh r1, [r4, r2]
	bl GetMapTile_1
	ldrb r1, [r0, 0x9]
	adds r0, r4, 0
	adds r0, 0x25
	strb r1, [r0]
_0807DE74:
	adds r5, 0x1
	cmp r5, 0x13
	ble _0807DE46
	bl sub_804EB30
	bl sub_804AAD4
	bl sub_8049884
	bl sub_806CF60
	bl sub_8040A84
	bl sub_8049ED4
	ldr r0, _0807DF30
	ldr r1, [r0]
	mov r0, r9
	bl SendMessage
	movs r0, 0x28
	movs r1, 0x2B
	bl sub_803E708
	mov r0, r9
	movs r1, 0x1
	bl sub_8075900
	movs r5, 0
_0807DEAE:
	ldr r0, _0807DF1C
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r3, _0807DF2C
	adds r0, r3
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807DEF4
	adds r0, r4, 0
	bl sub_806A5B8
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807DEF4
	adds r1, r4, 0x4
	adds r0, r4, 0
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _0807DEF4
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_0807DEF4:
	adds r5, 0x1
	cmp r5, 0x13
	ble _0807DEAE
	ldr r0, _0807DF1C
	ldr r0, [r0]
	ldr r1, _0807DF34
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0x14
	movs r1, 0x2B
	bl sub_803E708
_0807DF0E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DF1C: .4byte gDungeonGlobalData
_0807DF20: .4byte 0x0000e21c
_0807DF24: .4byte 0x0000fffc
_0807DF28: .4byte 0x00003a0c
_0807DF2C: .4byte 0x000135cc
_0807DF30: .4byte gUnknown_80FD3A0
_0807DF34: .4byte 0x00003a08
	thumb_func_end sub_807DC68

	thumb_func_start sub_807DF38
sub_807DF38:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	str r0, [sp, 0x8]
	mov r10, r1
	str r2, [sp, 0xC]
	adds r6, r3, 0
	ldr r0, [sp, 0x40]
	ldr r1, [sp, 0x44]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 16
	asrs r1, 16
	str r1, [sp, 0x14]
	movs r5, 0
	b _0807DF62
_0807DF60:
	adds r5, 0x1
_0807DF62:
	cmp r5, 0x13
	bgt _0807DF8E
	ldr r0, _0807DFA8
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _0807DFAC
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807DF60
	adds r0, r4, 0
	movs r1, 0x15
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807DF60
_0807DF8E:
	cmp r5, 0x14
	beq _0807DFB4
	ldr r0, [sp, 0x8]
	mov r1, r10
	bl sub_804218C
	ldr r0, _0807DFB0
	mov r1, r10
	movs r2, 0
	bl SetMessageArgument
	b _0807DFC2
	.align 2, 0
_0807DFA8: .4byte gDungeonGlobalData
_0807DFAC: .4byte 0x000135cc
_0807DFB0: .4byte gAvailablePokemonNames
_0807DFB4:
	mov r0, r10
	bl GetWeather
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	bne _0807DFD4
_0807DFC2:
	ldr r0, _0807DFD0
	ldr r2, [r0]
	ldr r0, [sp, 0x8]
	mov r1, r10
	bl sub_80522F4
	b _0807E174
	.align 2, 0
_0807DFD0: .4byte gUnknown_80F96EC
_0807DFD4:
	ldr r0, [sp, 0x8]
	mov r1, r10
	adds r2, r6, 0
	bl sub_804216C
	ldr r0, _0807E184
	mov r1, r10
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0807E188
	ldr r2, [r0]
	ldr r0, [sp, 0x8]
	mov r1, r10
	bl sub_80522F4
	movs r5, 0
	ldr r0, _0807E18C
	lsls r1, r6, 2
	adds r0, r1, r0
	ldr r0, [r0]
	mov r9, r0
	ldrh r4, [r0]
	movs r3, 0
	ldrsh r0, [r0, r3]
	str r1, [sp, 0x1C]
	cmp r0, 0x63
	bne _0807E00E
	b _0807E124
_0807E00E:
	mov r0, sp
	adds r0, 0x4
	str r0, [sp, 0x18]
_0807E014:
	ldr r1, [sp, 0xC]
	ldrh r0, [r1]
	adds r0, r4, r0
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _0807E190
	ldr r1, [sp, 0x4]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x4]
	ldr r2, [sp, 0xC]
	ldrh r0, [r2, 0x2]
	mov r3, r9
	ldrh r3, [r3, 0x2]
	adds r0, r3
	lsls r0, 16
	ldr r2, _0807E194
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x4]
	ldr r1, [sp, 0x18]
	movs r3, 0
	ldrsh r0, [r1, r3]
	cmp r0, 0
	blt _0807E112
	asrs r1, r2, 16
	cmp r1, 0
	blt _0807E112
	cmp r0, 0x37
	bgt _0807E112
	cmp r1, 0x1F
	bgt _0807E112
	bl GetMapTile_2
	mov r8, r0
	ldr r0, [sp, 0x18]
	movs r2, 0
	ldrsh r1, [r0, r2]
	cmp r1, 0
	ble _0807E0BE
	ldr r0, [sp, 0x4]
	asrs r0, 16
	cmp r0, 0
	ble _0807E0BE
	cmp r1, 0x36
	bgt _0807E0BE
	cmp r0, 0x1E
	bgt _0807E0BE
	mov r3, r8
	ldrh r1, [r3]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0807E0BE
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0807E0BE
	ldr r2, _0807E198
	adds r0, r2, 0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r3]
	movs r5, 0x1
	negs r5, r5
	add r7, sp, 0x4
_0807E09A:
	movs r4, 0x1
	negs r4, r4
	adds r6, r5, 0x1
_0807E0A0:
	movs r3, 0
	ldrsh r0, [r7, r3]
	adds r0, r4
	ldr r1, [sp, 0x4]
	asrs r1, 16
	adds r1, r5
	bl sub_80498A8
	adds r4, 0x1
	cmp r4, 0x1
	ble _0807E0A0
	adds r5, r6, 0
	cmp r5, 0x1
	ble _0807E09A
	movs r5, 0x1
_0807E0BE:
	mov r0, r8
	ldr r4, [r0, 0x14]
	cmp r4, 0
	beq _0807E0DC
	cmp r4, r10
	beq _0807E0DC
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x3
	bne _0807E0DC
	add r0, sp, 0x4
	movs r1, 0
	bl sub_80461C8
_0807E0DC:
	mov r1, r8
	ldr r4, [r1, 0x10]
	cmp r4, 0
	beq _0807E112
	cmp r4, r10
	beq _0807E112
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x1
	bne _0807E112
	ldr r0, _0807E19C
	ldr r2, [sp, 0x1C]
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, 0x8]
	adds r1, r4, 0
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x14]
	bl sub_807E1A0
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0807E124
_0807E112:
	movs r3, 0x4
	add r9, r3
	mov r0, r9
	ldrh r4, [r0]
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x63
	beq _0807E124
	b _0807E014
_0807E124:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0807E174
	mov r0, r10
	bl GetEntityType
	cmp r0, 0x1
	bne _0807E14E
	ldr r0, _0807E19C
	ldr r2, [sp, 0x1C]
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, 0x8]
	mov r1, r10
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x14]
	bl sub_807E1A0
_0807E14E:
	cmp r5, 0
	beq _0807E174
	movs r5, 0
_0807E154:
	movs r4, 0
	adds r6, r5, 0x1
_0807E158:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8049BB0
	adds r4, 0x1
	cmp r4, 0x37
	ble _0807E158
	adds r5, r6, 0
	cmp r5, 0x1F
	ble _0807E154
	bl sub_8040A84
	bl sub_8049ED4
_0807E174:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E184: .4byte gAvailablePokemonNames
_0807E188: .4byte gUnknown_80F96BC
_0807E18C: .4byte gUnknown_8107178
_0807E190: .4byte 0xffff0000
_0807E194: .4byte 0x0000ffff
_0807E198: .4byte 0x0000fffc
_0807E19C: .4byte gUnknown_203B444
	thumb_func_end sub_807DF38

	thumb_func_start sub_807E1A0
sub_807E1A0:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x24
	mov r9, r0
	adds r6, r1, 0
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 16
	asrs r7, r3, 16
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807E244
	ldr r5, [r6, 0x70]
	add r4, sp, 0x1C
	ldr r1, _0807E20C
	adds r0, r4, 0
	bl InitPokemonMove
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_80571F0
	lsls r0, 24
	cmp r0, 0
	bne _0807E244
	ldrb r0, [r5, 0x6]
	cmp r0, 0
	bne _0807E210
	movs r0, 0xE
	ldrsh r4, [r5, r0]
	lsrs r0, r4, 31
	adds r5, r4, r0
	asrs r4, r5, 1
	adds r0, r6, 0
	movs r1, 0x2
	bl HasType
	lsls r0, 24
	cmp r0, 0
	beq _0807E202
	lsrs r0, r5, 31
	adds r0, r4, r0
	asrs r4, r0, 1
_0807E202:
	cmp r4, 0
	bgt _0807E226
	movs r4, 0x1
	b _0807E226
	.align 2, 0
_0807E20C: .4byte 0x00000163
_0807E210:
	ldr r4, [sp, 0x40]
	adds r0, r6, 0
	movs r1, 0x2
	bl HasType
	lsls r0, 24
	cmp r0, 0
	beq _0807E226
	lsrs r0, r4, 31
	adds r0, r4, r0
	asrs r4, r0, 1
_0807E226:
	add r0, sp, 0x18
	str r0, [sp]
	mov r0, r8
	str r0, [sp, 0x4]
	str r7, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	str r0, [sp, 0x14]
	mov r0, r9
	adds r1, r6, 0
	adds r2, r4, 0
	movs r3, 0
	bl sub_806F370
_0807E244:
	add sp, 0x24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_807E1A0

	thumb_func_start sub_807E254
sub_807E254:
	push {r4-r7,lr}
	sub sp, 0x8
	adds r6, r0, 0
	adds r7, r1, 0
	movs r1, 0xE
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807E274
	ldr r0, _0807E270
	adds r1, r6, 0
	b _0807E286
	.align 2, 0
_0807E270: .4byte gAvailablePokemonNames
_0807E274:
	adds r0, r7, 0
	movs r1, 0xE
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0807E2A4
	ldr r0, _0807E29C
	adds r1, r7, 0
_0807E286:
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0807E2A0
	ldr r2, [r0]
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_80522F4
	b _0807E366
	.align 2, 0
_0807E29C: .4byte gAvailablePokemonNames
_0807E2A0: .4byte gUnknown_80FCAC0
_0807E2A4:
	ldrh r1, [r6, 0x6]
	lsls r1, 16
	ldrh r0, [r6, 0x4]
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r7, 0x6]
	lsls r1, 16
	ldrh r0, [r7, 0x4]
	orrs r0, r1
	str r0, [sp, 0x4]
	mov r5, sp
	mov r0, sp
	bl nullsub_93
	add r4, sp, 0x4
	adds r0, r4, 0
	bl nullsub_93
	movs r0, 0
	ldrsh r1, [r4, r0]
	movs r0, 0x2
	ldrsh r2, [r4, r0]
	adds r0, r6, 0
	movs r3, 0x1
	bl sub_80694C0
	mov r0, sp
	movs r2, 0
	ldrsh r1, [r0, r2]
	movs r0, 0x2
	ldrsh r2, [r5, r0]
	adds r0, r7, 0
	movs r3, 0x1
	bl sub_80694C0
	adds r0, r6, 0
	movs r1, 0
	bl sub_804535C
	adds r0, r7, 0
	movs r1, 0
	bl sub_804535C
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807E330
	ldr r0, [r6, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _0807E31A
	adds r0, r6, 0x4
	bl sub_804AC20
	movs r0, 0
	bl sub_807EC28
_0807E31A:
	adds r0, r6, 0
	bl sub_806A5B8
	ldr r0, _0807E370
	ldr r0, [r0]
	ldr r1, _0807E374
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_8075900
_0807E330:
	adds r0, r7, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0807E366
	ldr r0, [r7, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _0807E350
	adds r0, r7, 0x4
	bl sub_804AC20
	movs r0, 0
	bl sub_807EC28
_0807E350:
	adds r0, r7, 0
	bl sub_806A5B8
	ldr r0, _0807E370
	ldr r0, [r0]
	ldr r2, _0807E374
	adds r0, r2
	ldrb r1, [r0]
	adds r0, r7, 0
	bl sub_8075900
_0807E366:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E370: .4byte gDungeonGlobalData
_0807E374: .4byte 0x00003a08
	thumb_func_end sub_807E254

	thumb_func_start sub_807E378
sub_807E378:
	push {r4-r7,lr}
	bl GetLeaderEntity
	adds r4, r0, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _0807E38C
	b _0807E564
_0807E38C:
	ldr r0, _0807E41C
	ldr r1, [r0]
	ldr r3, _0807E420
	adds r2, r1, r3
	ldrh r3, [r2]
	movs r5, 0
	ldrsh r1, [r2, r5]
	adds r6, r0, 0
	cmp r1, 0
	ble _0807E3AA
	subs r0, r3, 0x1
	strh r0, [r2]
	lsls r0, 16
	cmp r0, 0
	bgt _0807E3B4
_0807E3AA:
	ldr r0, [r6]
	ldr r1, _0807E424
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
_0807E3B4:
	adds r5, r6, 0
	ldr r1, [r5]
	ldr r7, _0807E424
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807E434
	ldr r2, _0807E420
	adds r0, r1, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0xF9
	ble _0807E3D0
	b _0807E564
_0807E3D0:
	bl sub_805E804
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_806A2BC
	adds r0, r4, 0
	bl UseAttack
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _0807E3EE
	b _0807E564
_0807E3EE:
	ldr r0, _0807E428
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	ldr r1, _0807E42C
	ldr r0, [r5]
	ldr r2, _0807E430
	adds r0, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	bl sub_80426C8
	ldr r0, [r5]
	adds r0, r7
	movs r1, 0x1
	strb r1, [r0]
	b _0807E564
	.align 2, 0
_0807E41C: .4byte gDungeonGlobalData
_0807E420: .4byte 0x00000666
_0807E424: .4byte 0x0000067a
_0807E428: .4byte gUnknown_80F9C4C
_0807E42C: .4byte gUnknown_80F5FAC
_0807E430: .4byte 0x00003a0e
_0807E434:
	cmp r0, 0x1
	bne _0807E4A0
	ldr r2, _0807E490
	adds r0, r1, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x95
	ble _0807E446
	b _0807E564
_0807E446:
	bl sub_805E804
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_806A2BC
	adds r0, r4, 0
	bl UseAttack
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _0807E464
	b _0807E564
_0807E464:
	ldr r0, _0807E494
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	ldr r1, _0807E498
	ldr r0, [r5]
	ldr r2, _0807E49C
	adds r0, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x1
	bl sub_80426C8
	ldr r0, [r5]
	adds r0, r7
	movs r1, 0x2
	strb r1, [r0]
	b _0807E564
	.align 2, 0
_0807E490: .4byte 0x00000666
_0807E494: .4byte gUnknown_80F9C70
_0807E498: .4byte gUnknown_80F5FAC
_0807E49C: .4byte 0x00003a0e
_0807E4A0:
	cmp r0, 0x2
	bne _0807E508
	ldr r2, _0807E4F8
	adds r0, r1, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x31
	bgt _0807E564
	bl sub_805E804
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_806A2BC
	adds r0, r4, 0
	bl UseAttack
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0807E564
	ldr r0, _0807E4FC
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	ldr r1, _0807E500
	ldr r0, [r5]
	ldr r2, _0807E504
	adds r0, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x2
	bl sub_80426C8
	ldr r0, [r5]
	adds r0, r7
	movs r1, 0x3
	strb r1, [r0]
	b _0807E564
	.align 2, 0
_0807E4F8: .4byte 0x00000666
_0807E4FC: .4byte gUnknown_80F9C8C
_0807E500: .4byte gUnknown_80F5FAC
_0807E504: .4byte 0x00003a0e
_0807E508:
	ldr r5, _0807E56C
	adds r0, r1, r5
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bgt _0807E564
	bl sub_805E804
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_806A2BC
	adds r0, r4, 0
	bl UseAttack
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0807E564
	ldr r0, _0807E570
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	ldr r1, _0807E574
	ldr r0, [r6]
	ldr r2, _0807E578
	adds r0, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x3
	bl sub_80426C8
	ldr r0, [r6]
	adds r0, r7
	movs r1, 0x4
	strb r1, [r0]
	ldr r1, _0807E57C
	adds r0, r4, 0
	adds r2, r4, 0
	bl sub_8068FE0
_0807E564:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E56C: .4byte 0x00000666
_0807E570: .4byte gUnknown_80F9CBC
_0807E574: .4byte gUnknown_80F5FAC
_0807E578: .4byte 0x00003a0e
_0807E57C: .4byte 0x0000021e
	thumb_func_end sub_807E378

	.align 2, 0
