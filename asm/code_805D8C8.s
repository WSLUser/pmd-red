	#include "asm/constants/gba_constants.inc"
  	#include "asm/macros.inc"

  	.syntax unified

  	.text

	thumb_func_start sub_805D8C8
sub_805D8C8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r4, _0805D90C
	ldr r1, [r4]
	ldr r0, _0805D910
	adds r0, r1, r0
	str r0, [sp, 0x10]
	movs r2, 0x3
	str r2, [sp, 0xC]
	movs r5, 0
	movs r0, 0
	strh r0, [r1, 0x12]
	bl GetLeaderEntity
	movs r1, 0x1
	bl sub_806A2BC
	bl GetLeaderEntity
	bl sub_80701A4
	lsls r0, 24
	cmp r0, 0
	beq _0805D928
	movs r0, 0x3C
	movs r1, 0x10
	bl sub_803E708
	bl _0805E2B0
	.align 2, 0
_0805D90C: .4byte gDungeonGlobalData
_0805D910: .4byte 0x000181e8
_0805D914:
	mov r1, r8
	adds r1, 0x44
	movs r2, 0
	movs r0, 0x2
	strh r0, [r1]
	mov r0, r8
	adds r0, 0x48
	strb r2, [r0]
	bl _0805E2B0
_0805D928:
	ldr r0, [r4]
	ldr r3, _0805D9D4
	adds r0, r3
	strb r5, [r0]
	bl sub_8040A78
	ldr r1, [r4]
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0805D976
	strb r5, [r1, 0x1]
	bl GetLeaderEntity
	movs r1, 0x1
	bl ShouldAvoidEnemiesAndShowEffect
	lsls r0, 24
	cmp r0, 0
	bne _0805D976
	movs r0, 0x1
	bl sub_8044C10
	bl sub_805E804
	bl GetLeaderEntity
	bl sub_80647F0
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	beq _0805D976
	bl _0805E2B0
_0805D976:
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x1
	bl sub_806A914
_0805D980:
	bl GetLeaderEntity
	mov r10, r0
	ldr r5, [r0, 0x70]
	mov r8, r5
	movs r1, 0x2
	ldrsh r0, [r5, r1]
	bl sub_80978C8
	ldr r2, _0805D9D8
	ldr r0, [r2]
	ldr r3, _0805D9DC
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805D9AE
	bl sub_805E874
	lsls r0, 24
	cmp r0, 0
	bne _0805D914
	bl sub_805E804
_0805D9AE:
	ldr r0, _0805D9E0
	movs r1, 0
	strb r1, [r0]
	ldr r0, _0805D9E4
	strb r1, [r0]
	ldr r5, _0805D9D8
	ldr r0, [r5]
	movs r1, 0xB8
	lsls r1, 3
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	bge _0805D9CA
	b _0805DAE8
_0805D9CA:
	ldr r0, _0805D9E8
	ands r6, r0
	movs r2, 0x1
	orrs r6, r2
	b _0805DAEC
	.align 2, 0
_0805D9D4: .4byte 0x00000673
_0805D9D8: .4byte gDungeonGlobalData
_0805D9DC: .4byte 0x0000066c
_0805D9E0: .4byte gUnknown_202F22D
_0805D9E4: .4byte gUnknown_202F22C
_0805D9E8: .4byte 0xffffff00
_0805D9EC:
	movs r0, 0x1
	bl sub_8044C50
	ldr r3, _0805DA00
	ldr r0, [r3]
	ldr r5, _0805DA04
	adds r0, r5
	strb r4, [r0]
	b _0805E1AE
	.align 2, 0
_0805DA00: .4byte gDungeonGlobalData
_0805DA04: .4byte 0x00000673
_0805DA08:
	ldr r0, _0805DA14
	ldr r1, [r0]
	mov r0, r10
	bl SendMessage
	b _0805DBDA
	.align 2, 0
_0805DA14: .4byte gUnknown_80FD4B0
_0805DA18:
	ldr r0, _0805DA1C
	b _0805DCBC
	.align 2, 0
_0805DA1C: .4byte gUnknown_80F8A28
_0805DA20:
	ldr r0, [sp, 0x1C]
	movs r1, 0x17
	bl SetAction
	b _0805E1AE
_0805DA2A:
	ldr r0, _0805DA38
	ands r6, r0
	movs r3, 0x1
	orrs r6, r3
	ldr r0, _0805DA3C
	ands r6, r0
	b _0805DAD6
	.align 2, 0
_0805DA38: .4byte 0xffffff00
_0805DA3C: .4byte 0xffff00ff
_0805DA40:
	ldr r5, _0805DA58
	ldr r0, [r5]
	movs r2, 0xB8
	lsls r2, 3
	adds r0, r2
	str r1, [r0]
	ldr r0, _0805DA5C
	ands r6, r0
	movs r3, 0x1
	orrs r6, r3
	b _0805DAA8
	.align 2, 0
_0805DA58: .4byte gDungeonGlobalData
_0805DA5C: .4byte 0xffffff00
_0805DA60:
	ldr r5, _0805DA78
	ldr r0, [r5]
	movs r1, 0xB8
	lsls r1, 3
	adds r0, r1
	movs r2, 0x1
	str r2, [r0]
	ldr r0, _0805DA7C
	ands r6, r0
	orrs r6, r2
	b _0805DAA8
	.align 2, 0
_0805DA78: .4byte gDungeonGlobalData
_0805DA7C: .4byte 0xffffff00
_0805DA80:
	ldr r3, _0805DA98
	ldr r0, [r3]
	movs r5, 0xB8
	lsls r5, 3
	adds r0, r5
	str r2, [r0]
	ldr r0, _0805DA9C
	ands r6, r0
	movs r0, 0x1
	orrs r6, r0
	b _0805DAA8
	.align 2, 0
_0805DA98: .4byte gDungeonGlobalData
_0805DA9C: .4byte 0xffffff00
_0805DAA0:
	ldr r0, _0805DAB8
	ands r6, r0
	movs r1, 0x1
	orrs r6, r1
_0805DAA8:
	ldr r0, _0805DABC
	ands r6, r0
	ldr r0, _0805DAC0
	ands r6, r0
	movs r0, 0x80
	lsls r0, 9
	orrs r6, r0
	b _0805E1AE
	.align 2, 0
_0805DAB8: .4byte 0xffffff00
_0805DABC: .4byte 0xffff00ff
_0805DAC0: .4byte 0xff00ffff
_0805DAC4:
	ldr r0, _0805DADC
	ands r6, r0
	movs r2, 0x1
	orrs r6, r2
	ldr r0, _0805DAE0
	ands r6, r0
	movs r0, 0x80
	lsls r0, 1
	orrs r6, r0
_0805DAD6:
	ldr r0, _0805DAE4
	ands r6, r0
	b _0805E1AE
	.align 2, 0
_0805DADC: .4byte 0xffffff00
_0805DAE0: .4byte 0xffff00ff
_0805DAE4: .4byte 0xff00ffff
_0805DAE8:
	ldr r0, _0805DB3C
	ands r6, r0
_0805DAEC:
	ldr r0, _0805DB40
	ands r6, r0
	ldr r0, _0805DB44
	ands r6, r0
	movs r3, 0
	str r3, [sp, 0x8]
	movs r0, 0
	bl sub_8044C50
	ldr r0, _0805DB48
	mov r5, sp
	ldrb r5, [r5, 0x8]
	strb r5, [r0]
	ldr r0, _0805DB4C
	mov r1, sp
	ldrb r1, [r1, 0x8]
	strb r1, [r0]
	lsls r0, r6, 24
	mov r2, r8
	adds r2, 0x44
	str r2, [sp, 0x1C]
	str r0, [sp, 0x14]
	ldr r3, [sp, 0x10]
	adds r3, 0x32
	str r3, [sp, 0x18]
	cmp r0, 0
	beq _0805DB24
	b _0805E1AE
_0805DB24:
	ldr r0, _0805DB50
	ldrh r1, [r0]
	adds r1, 0x1
	strh r1, [r0]
	ldr r5, [sp, 0x18]
	ldrb r0, [r5]
	cmp r0, 0
	beq _0805DB54
	movs r0, 0
	str r0, [sp, 0x8]
	b _0805DB5A
	.align 2, 0
_0805DB3C: .4byte 0xffffff00
_0805DB40: .4byte 0xffff00ff
_0805DB44: .4byte 0xff00ffff
_0805DB48: .4byte gUnknown_202F230
_0805DB4C: .4byte gUnknown_202F231
_0805DB50: .4byte gUnknown_202F22E
_0805DB54:
	ldr r1, [sp, 0x8]
	adds r1, 0x1
	str r1, [sp, 0x8]
_0805DB5A:
	ldr r2, [sp, 0xC]
	cmp r2, 0
	beq _0805DB6E
	subs r2, 0x1
	str r2, [sp, 0xC]
	cmp r2, 0
	bne _0805DB6E
	movs r0, 0
	bl sub_8075680
_0805DB6E:
	mov r0, r10
	bl sub_805E2C4
	movs r7, 0
	movs r1, 0
	add r0, sp, 0x4
_0805DB7A:
	strb r1, [r0]
	subs r0, 0x1
	cmp r0, sp
	bge _0805DB7A
	ldr r0, _0805DBEC
	ldrh r1, [r0]
	movs r4, 0x1
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805DBAA
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0805DBAA
	movs r0, 0x9E
	lsls r0, 1
	add r0, r8
	ldr r0, [r0]
	bl RoundUpFixedPoint
	cmp r0, 0
	beq _0805DBAA
	b _0805D9EC
_0805DBAA:
	movs r3, 0
	mov r9, r3
	ldr r4, _0805DBEC
	ldrh r1, [r4, 0x2]
	movs r5, 0x1
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0805DBBE
	b _0805DD02
_0805DBBE:
	ldrh r1, [r4]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0805DBF8
	movs r0, 0x9E
	lsls r0, 1
	add r0, r8
	ldr r0, [r0]
	bl RoundUpFixedPoint
	cmp r0, 0
	bne _0805DBDA
	b _0805DD02
_0805DBDA:
	movs r0, 0x1
	bl sub_8044C50
	ldr r1, _0805DBF0
	ldr r0, [r1]
	ldr r2, _0805DBF4
	adds r0, r2
	strb r5, [r0]
	b _0805E1AE
	.align 2, 0
_0805DBEC: .4byte gRealInputs
_0805DBF0: .4byte gDungeonGlobalData
_0805DBF4: .4byte 0x00000673
_0805DBF8:
	mov r0, r10
	movs r1, 0x1
	bl ShouldAvoidEnemiesAndShowEffect
	lsls r0, 24
	cmp r0, 0
	beq _0805DC08
	b _0805DA08
_0805DC08:
	ldrh r0, [r4]
	movs r3, 0x80
	lsls r3, 2
	adds r1, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0805DCE8
	movs r4, 0
	movs r2, 0x8C
	lsls r2, 1
	add r2, r8
	movs r3, 0x8
_0805DC20:
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805DC32
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0805DC3A
_0805DC32:
	adds r2, 0x8
	adds r4, 0x1
	cmp r4, 0x3
	ble _0805DC20
_0805DC3A:
	cmp r4, 0x4
	bne _0805DC40
	b _0805DA18
_0805DC40:
	movs r3, 0
	movs r5, 0x8C
	lsls r5, 1
	movs r7, 0x1
	mov r2, r8
_0805DC4A:
	lsls r0, r3, 3
	add r0, r8
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _0805DC66
	movs r1, 0x8E
	lsls r1, 1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805DC6E
_0805DC66:
	adds r2, 0x8
	adds r3, 0x1
	cmp r3, 0x3
	ble _0805DC4A
_0805DC6E:
	cmp r3, 0x4
	bne _0805DC74
	b _0805DA20
_0805DC74:
	movs r7, 0
	adds r3, r4, 0
	cmp r4, 0x3
	bgt _0805DCB6
	lsls r0, r4, 3
	adds r2, r0, 0
	add r2, r8
	mov r12, r2
	movs r5, 0x8E
	lsls r5, 1
	adds r0, r5
	mov r1, r8
	adds r2, r0, r1
	movs r5, 0x2
_0805DC90:
	ldrb r0, [r2]
	cmp r0, 0
	bne _0805DCCC
	movs r0, 0x8
	add r12, r0
	adds r2, 0x8
	adds r3, 0x1
	cmp r3, 0x3
	bgt _0805DCB6
	cmp r3, r4
	beq _0805DC90
	movs r0, 0x8C
	lsls r0, 1
	add r0, r12
	ldrb r1, [r0]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _0805DC90
_0805DCB6:
	cmp r7, 0
	bne _0805DCCC
	ldr r0, _0805DCC8
_0805DCBC:
	ldr r1, [r0]
	mov r0, r10
	bl SendMessage
	b _0805E1AE
	.align 2, 0
_0805DCC8: .4byte gUnknown_80F8A4C
_0805DCCC:
	ldr r0, [sp, 0x1C]
	movs r1, 0x14
	bl SetAction
	mov r0, r10
	bl GetTeamMemberEntityIndex
	mov r1, r8
	adds r1, 0x48
	strb r0, [r1]
	mov r0, r8
	adds r0, 0x50
	strb r4, [r0]
	b _0805E1AE
_0805DCE8:
	mov r0, r10
	mov r1, r8
	bl sub_805EF60
	lsls r0, 24
	cmp r0, 0
	beq _0805DCF8
	b _0805E1AE
_0805DCF8:
	ldr r0, [sp, 0x1C]
	movs r1, 0x32
	bl SetAction
	b _0805E1AE
_0805DD02:
	ldr r3, _0805DDC8
	ldrh r1, [r3, 0x6]
	movs r2, 0x2
	adds r0, r2, 0
	ands r0, r1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	beq _0805DD16
	b _0805DA2A
_0805DD16:
	mov r0, sp
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0805DD20
	b _0805DA40
_0805DD20:
	mov r0, sp
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _0805DD2A
	b _0805DA60
_0805DD2A:
	mov r0, sp
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	beq _0805DD34
	b _0805DA80
_0805DD34:
	mov r0, sp
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	beq _0805DD3E
	b _0805DAA0
_0805DD3E:
	ldr r0, _0805DDCC
	ldr r1, [sp, 0x8]
	cmp r1, r0
	ble _0805DD48
	b _0805DAC4
_0805DD48:
	ldr r0, _0805DDD0
	ldr r0, [r0]
	ldrb r4, [r0, 0x9]
	cmp r4, 0
	bne _0805DD7E
	ldrh r1, [r3, 0x2]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _0805DD66
	cmp r7, 0
	bne _0805DD7E
	movs r2, 0
	cmp r2, 0
	beq _0805DD7E
_0805DD66:
	ldr r3, [sp, 0x18]
	ldrb r0, [r3]
	cmp r0, 0
	beq _0805DD7E
	bl sub_804AA60
	ldr r0, _0805DDD4
	strb r4, [r0]
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
_0805DD7E:
	ldr r2, _0805DDC8
	ldrh r0, [r2]
	movs r5, 0x80
	lsls r5, 2
	adds r1, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _0805DDA4
	ldrh r1, [r2, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0805DDA4
	bl sub_80532B4
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
_0805DDA4:
	movs r4, 0
	ldr r0, _0805DDC8
	ldrh r0, [r0]
	movs r2, 0x80
	lsls r2, 1
	adds r1, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0805DDFA
	ldr r1, _0805DDD8
	ldrb r0, [r1]
	cmp r0, 0
	bne _0805DDC2
	ldr r0, _0805DDDC
	strh r4, [r0]
_0805DDC2:
	movs r3, 0x1
	strb r3, [r1]
	b _0805DDFE
	.align 2, 0
_0805DDC8: .4byte gRealInputs
_0805DDCC: .4byte 0x00000707
_0805DDD0: .4byte gUnknown_203B46C
_0805DDD4: .4byte gUnknown_202F22D
_0805DDD8: .4byte gUnknown_202F22C
_0805DDDC: .4byte gUnknown_202F22E
_0805DDE0:
	movs r0, 0xB
	bl sub_8044C50
	adds r2, r4, 0x1
	mov r0, r8
	adds r0, 0x48
	movs r1, 0
	strb r2, [r0]
	adds r0, 0x4
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	b _0805DE92
_0805DDFA:
	ldr r0, _0805DEF8
	strb r4, [r0]
_0805DDFE:
	movs r3, 0
	ldr r0, _0805DEFC
	ldr r0, [r0]
	ldrb r0, [r0, 0x9]
	cmp r0, 0
	bne _0805DE2C
	ldr r2, _0805DF00
	ldrh r0, [r2, 0x6]
	movs r5, 0x80
	lsls r5, 1
	adds r1, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _0805DE2A
	mov r0, r9
	cmp r0, 0
	bne _0805DE2A
	ldrh r1, [r2, 0x2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0805DE2C
_0805DE2A:
	movs r3, 0x1
_0805DE2C:
	cmp r3, 0
	beq _0805DE54
	mov r0, r10
	bl sub_805E738
	ldr r0, _0805DF04
	movs r1, 0x1
	strb r1, [r0]
	mov r0, r8
	adds r0, 0x46
	ldrb r0, [r0]
	ldr r1, [sp, 0x10]
	adds r1, 0x33
	strb r0, [r1]
	ldr r1, [sp, 0x10]
	adds r1, 0x34
	movs r0, 0xFF
	strb r0, [r1]
	bl ResetRepeatTimers
_0805DE54:
	ldr r0, _0805DF00
	ldr r1, [r0]
	ldr r0, _0805DF08
	ands r1, r0
	cmp r1, r0
	bne _0805DE62
	movs r4, 0x1
_0805DE62:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805DE6C
	movs r4, 0x1
_0805DE6C:
	cmp r4, 0
	beq _0805DE9C
	movs r4, 0
	ldr r0, _0805DF0C
	ldr r2, [r0]
	movs r3, 0x10
_0805DE78:
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805DE8A
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0805DDE0
_0805DE8A:
	adds r2, 0x4
	adds r4, 0x1
	cmp r4, 0x13
	ble _0805DE78
_0805DE92:
	ldr r2, [sp, 0x1C]
	ldrh r0, [r2]
	cmp r0, 0
	beq _0805DE9C
	b _0805E1AE
_0805DE9C:
	ldr r5, _0805DF10
	ldr r3, [r5]
	ldr r1, _0805DF14
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805DF82
	ldr r0, _0805DEFC
	ldr r2, [r0]
	ldrb r0, [r2, 0x4]
	cmp r0, 0x6
	beq _0805DF82
	ldr r0, _0805DF00
	ldrh r1, [r0, 0x2]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0805DF82
	ldrb r4, [r2, 0x4]
	ldr r0, _0805DF18
	movs r2, 0x1
	strb r2, [r0]
	ldr r5, _0805DF1C
	adds r0, r3, r5
	strb r2, [r0]
	bl sub_8094C48
	lsls r0, 24
	cmp r0, 0
	bne _0805DEDC
	bl sub_8094C88
_0805DEDC:
	movs r0, 0x1
	bl sub_8052210
	bl sub_8040A84
	movs r0, 0x1E
	bl SetBGOBJEnableFlags
	movs r0, 0xA
	movs r1, 0x2F
	bl sub_803E708
	b _0805DF3A
	.align 2, 0
_0805DEF8: .4byte gUnknown_202F22C
_0805DEFC: .4byte gUnknown_203B46C
_0805DF00: .4byte gRealInputs
_0805DF04: .4byte gUnknown_202F22D
_0805DF08: .4byte 0x01000200
_0805DF0C: .4byte gTeamInventory_203B460
_0805DF10: .4byte gDungeonGlobalData
_0805DF14: .4byte 0x0001820a
_0805DF18: .4byte gUnknown_202EE00
_0805DF1C: .4byte 0x00018214
_0805DF20:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805DF3A
	ldr r2, _0805DFA0
	movs r1, 0
	ldrb r0, [r2]
	cmp r0, 0
	bne _0805DF34
	movs r1, 0x1
_0805DF34:
	strb r1, [r2]
	bl sub_8040A84
_0805DF3A:
	movs r0, 0x2F
	bl sub_803E46C
	ldr r0, _0805DFA4
	ldrh r1, [r0, 0x2]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _0805DF54
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0805DF20
_0805DF54:
	ldr r1, _0805DFA8
	ldr r0, [r1]
	ldr r2, _0805DFAC
	adds r0, r2
	movs r1, 0
	strb r1, [r0]
	ldr r0, _0805DFB0
	ldr r0, [r0]
	strb r4, [r0, 0x4]
	ldr r0, _0805DFA0
	movs r3, 0x1
	strb r3, [r0]
	bl sub_8040A84
	movs r0, 0
	bl SetBGOBJEnableFlags
	movs r0, 0x2F
	bl sub_803E46C
	movs r0, 0x2F
	bl sub_803E46C
_0805DF82:
	ldr r5, _0805DFA8
	ldr r0, [r5]
	ldr r1, _0805DFB4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805DFBC
	ldr r0, _0805DFB8
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805DFBC
	ldr r0, _0805DFA4
	ldrh r2, [r0, 0x2]
	adds r1, r2, 0
	b _0805DFCC
	.align 2, 0
_0805DFA0: .4byte gUnknown_202EE00
_0805DFA4: .4byte gRealInputs
_0805DFA8: .4byte gDungeonGlobalData
_0805DFAC: .4byte 0x00018214
_0805DFB0: .4byte gUnknown_203B46C
_0805DFB4: .4byte 0x0000066d
_0805DFB8: .4byte gUnknown_202F22C
_0805DFBC:
	ldr r3, _0805E05C
	ldrh r1, [r3]
	ldr r2, [sp, 0x18]
	ldrb r0, [r2]
	adds r2, r1, 0
	cmp r0, 0
	beq _0805DFCC
	ldrh r2, [r3, 0x2]
_0805DFCC:
	movs r0, 0xF0
	ands r1, r0
	ands r2, r0
	movs r5, 0x1
	negs r5, r5
	cmp r1, 0x50
	bne _0805DFDC
	movs r5, 0x3
_0805DFDC:
	cmp r1, 0x60
	bne _0805DFE2
	movs r5, 0x5
_0805DFE2:
	cmp r1, 0x90
	bne _0805DFE8
	movs r5, 0x1
_0805DFE8:
	cmp r1, 0xA0
	bne _0805DFEE
	movs r5, 0x7
_0805DFEE:
	cmp r2, 0x40
	bne _0805DFF4
	movs r5, 0x4
_0805DFF4:
	cmp r2, 0x80
	bne _0805DFFA
	movs r5, 0
_0805DFFA:
	cmp r2, 0x10
	bne _0805E000
	movs r5, 0x2
_0805E000:
	cmp r2, 0x20
	bne _0805E006
	movs r5, 0x6
_0805E006:
	cmp r5, 0
	bge _0805E00C
	b _0805E1A0
_0805E00C:
	ldr r0, _0805E060
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805E020
	adds r0, r5, 0
	movs r3, 0x1
	ands r0, r3
	cmp r0, 0
	bne _0805E020
	b _0805E1A0
_0805E020:
	mov r2, r8
	adds r2, 0x46
	ldrb r1, [r2]
	eors r1, r5
	negs r0, r1
	orrs r0, r1
	lsrs r7, r0, 31
	movs r1, 0x7
	adds r0, r5, 0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0805E064
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805E068
	ldr r0, [sp, 0x10]
	adds r0, 0x33
	strb r5, [r0]
	mov r0, r10
	bl sub_806CEBC
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, r10
	adds r2, r5, 0
	bl sub_806CDD4
	b _0805E1A0
	.align 2, 0
_0805E05C: .4byte gRealInputs
_0805E060: .4byte gUnknown_202F22C
_0805E064: .4byte gUnknown_202F22D
_0805E068:
	movs r4, 0
	movs r3, 0
	mov r0, r10
	movs r1, 0x1
	str r3, [sp, 0x20]
	bl sub_805EC4C
	lsls r0, 24
	ldr r3, [sp, 0x20]
	cmp r0, 0
	beq _0805E080
	b _0805E1AE
_0805E080:
	mov r0, r8
	adds r0, 0xB0
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0805E094
	ldr r0, _0805E090
	b _0805E0BE
	.align 2, 0
_0805E090: .4byte gUnknown_80F8A84
_0805E094:
	cmp r0, 0x7
	bne _0805E0A0
	ldr r0, _0805E09C
	b _0805E0BE
	.align 2, 0
_0805E09C: .4byte gUnknown_80F8A6C
_0805E0A0:
	cmp r0, 0x5
	bne _0805E0AC
	ldr r0, _0805E0A8
	b _0805E0BE
	.align 2, 0
_0805E0A8: .4byte gUnknown_80F8AB0
_0805E0AC:
	cmp r0, 0x3
	bne _0805E0B8
	ldr r0, _0805E0B4
	b _0805E0BE
	.align 2, 0
_0805E0B4: .4byte gUnknown_80F8ADC
_0805E0B8:
	cmp r0, 0x4
	bne _0805E0C2
	ldr r0, _0805E128
_0805E0BE:
	ldr r3, [r0]
	movs r4, 0x1
_0805E0C2:
	mov r0, r10
	adds r1, r5, 0
	str r3, [sp, 0x20]
	bl CanMoveInDirection
	lsls r0, 24
	ldr r3, [sp, 0x20]
	cmp r0, 0
	bne _0805E0D8
	movs r0, 0x2
	orrs r4, r0
_0805E0D8:
	cmp r7, 0
	beq _0805E0F4
	mov r0, r10
	str r3, [sp, 0x20]
	bl sub_806CEBC
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, r10
	adds r2, r5, 0
	bl sub_806CDD4
	ldr r3, [sp, 0x20]
_0805E0F4:
	movs r7, 0x2
	adds r0, r4, 0
	ands r0, r7
	cmp r0, 0
	bne _0805E192
	movs r5, 0x1
	mov r9, r5
	ands r5, r4
	cmp r5, 0
	beq _0805E134
	cmp r3, 0
	beq _0805E114
	mov r0, r10
	adds r1, r3, 0
	bl SendMessage
_0805E114:
	movs r0, 0x1
	bl sub_8044C50
	ldr r1, _0805E12C
	ldr r0, [r1]
	ldr r2, _0805E130
	adds r0, r2
	mov r3, r9
	strb r3, [r0]
	b _0805E1AE
	.align 2, 0
_0805E128: .4byte gUnknown_80F8B0C
_0805E12C: .4byte gDungeonGlobalData
_0805E130: .4byte 0x00000673
_0805E134:
	movs r0, 0x2
	bl sub_8044C50
	ldr r0, _0805E17C
	ldrh r1, [r0]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	bne _0805E14C
	movs r0, 0
	cmp r0, 0
	beq _0805E188
_0805E14C:
	movs r0, 0x9E
	lsls r0, 1
	add r0, r8
	ldr r0, [r0]
	bl RoundUpFixedPoint
	cmp r0, 0
	beq _0805E188
	mov r1, r10
	ldr r0, [r1, 0x70]
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805E174
	ldr r2, _0805E180
	ldr r0, [r2]
	ldr r3, _0805E184
	adds r0, r3
	mov r1, r9
	strb r1, [r0]
_0805E174:
	mov r0, r8
	adds r0, 0x48
	strb r5, [r0]
	b _0805E1AE
	.align 2, 0
_0805E17C: .4byte gRealInputs
_0805E180: .4byte gDungeonGlobalData
_0805E184: .4byte 0x0000066c
_0805E188:
	mov r0, r8
	adds r0, 0x48
	movs r2, 0x1
	strb r2, [r0]
	b _0805E1AE
_0805E192:
	movs r3, 0x1
	ands r4, r3
	cmp r4, 0
	beq _0805E1A0
	movs r0, 0x23
	bl sub_803E724
_0805E1A0:
	movs r0, 0xF
	bl sub_803E46C
	ldr r5, [sp, 0x14]
	cmp r5, 0
	bne _0805E1AE
	b _0805DB24
_0805E1AE:
	ldr r1, [sp, 0x18]
	ldrb r0, [r1]
	cmp r0, 0
	beq _0805E1BA
	bl sub_804AA60
_0805E1BA:
	ldr r4, [sp, 0x1C]
	ldrh r0, [r4]
	cmp r0, 0x2D
	beq _0805E1C6
	cmp r0, 0x13
	bne _0805E1E0
_0805E1C6:
	mov r0, r10
	bl sub_8067510
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _0805E2B0
	movs r0, 0
	bl sub_8044C50
	bl _0805D980
_0805E1E0:
	lsls r0, r6, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _0805E222
	ldr r2, _0805E210
	ldr r0, [r2]
	ldr r3, _0805E214
	adds r0, r3
	strb r1, [r0]
	ldrh r0, [r4]
	cmp r0, 0
	beq _0805E218
	mov r0, r10
	movs r1, 0
	bl IsNotAttacking
	lsls r0, 24
	cmp r0, 0
	bne _0805E2B0
	movs r0, 0xF
	bl sub_803E46C
	b _0805E2B0
	.align 2, 0
_0805E210: .4byte gDungeonGlobalData
_0805E214: .4byte 0x0000066d
_0805E218:
	movs r0, 0xF
	bl sub_803E46C
	bl _0805D980
_0805E222:
	movs r0, 0xF
	bl sub_803E46C
	bl sub_8047158
	movs r2, 0
	lsrs r0, r6, 8
	lsls r0, 24
	cmp r0, 0
	bne _0805E238
	movs r2, 0x1
_0805E238:
	lsrs r1, r6, 16
	lsls r1, 24
	lsrs r1, 24
	adds r0, r2, 0
	bl ShowFieldMenu
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
	ldr r1, _0805E294
	movs r0, 0
	strb r0, [r1]
	movs r0, 0
	ldr r5, [sp, 0x18]
	strb r0, [r5]
	bl sub_804AA60
	bl sub_8044B28
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _0805E2B0
	ldrh r0, [r4]
	cmp r0, 0
	beq _0805E29C
	cmp r0, 0x2B
	bne _0805E27E
	ldr r2, _0805E298
	ldr r0, [r2]
	movs r3, 0x1
	strb r3, [r0, 0x4]
	ldr r0, [r2]
	strb r3, [r0, 0x3]
_0805E27E:
	ldr r5, [sp, 0x1C]
	ldrh r0, [r5]
	cmp r0, 0x2E
	bne _0805E2B0
	ldr r2, _0805E298
	ldr r0, [r2]
	movs r3, 0x1
	strb r3, [r0, 0x4]
	ldr r0, [r2]
	strb r1, [r0, 0x3]
	b _0805E2B0
	.align 2, 0
_0805E294: .4byte gUnknown_202F22D
_0805E298: .4byte gDungeonGlobalData
_0805E29C:
	movs r0, 0xF
	bl sub_803E46C
	ldr r5, _0805E2C0
	ldr r0, [r5]
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	bne _0805E2B0
	bl _0805D980
_0805E2B0:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E2C0: .4byte gDungeonGlobalData
	thumb_func_end sub_805D8C8

	thumb_func_start sub_805E2C4
sub_805E2C4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	str r0, [sp, 0x10]
	ldr r0, _0805E47C
	ldr r1, [r0]
	ldr r0, _0805E480
	adds r0, r1, r0
	str r0, [sp, 0x14]
	ldr r0, _0805E484
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805E2E6
	b _0805E4C4
_0805E2E6:
	movs r1, 0
	str r1, [sp, 0x18]
	mov r7, sp
	ldr r2, _0805E488
	mov r10, r2
_0805E2F0:
	ldrh r0, [r7]
	ldr r3, _0805E48C
	adds r1, r3, 0
	ands r1, r0
	ldr r0, [sp]
	mov r4, r10
	ands r0, r4
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r7]
	mov r2, r10
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	ldrh r0, [r7]
	ldr r5, _0805E490
	adds r1, r5, 0
	ands r1, r0
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r2, [r7]
	mov r1, r10
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	ldrh r2, [r7]
	ldr r0, _0805E494
	ands r0, r2
	mov r3, r10
	ands r3, r1
	orrs r3, r0
	str r3, [sp]
	ldrh r1, [r7]
	movs r0, 0x80
	lsls r0, 3
	orrs r0, r1
	movs r6, 0
	orrs r0, r6
	mov r2, r10
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	ldrh r0, [r7]
	ldr r3, _0805E498
	adds r1, r3, 0
	ands r1, r0
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r7]
	mov r2, r10
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	ldrh r0, [r7]
	ldr r4, _0805E49C
	adds r1, r4, 0
	ands r1, r0
	mov r0, r10
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r7]
	mov r2, r10
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	ldrh r1, [r7]
	ldr r0, _0805E4A0
	ands r0, r1
	mov r1, r10
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldrh r2, [r7]
	mov r0, r10
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldr r1, _0805E4A4
	ldr r5, [sp, 0x18]
	lsls r0, r5, 3
	adds r0, r1
	mov r12, r0
	ldrb r1, [r0, 0x4]
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, 31
	movs r0, 0x8
	ands r1, r0
	mov r6, r12
	ldrb r0, [r6, 0x5]
	cmp r0, 0
	beq _0805E3B4
	adds r1, 0x10
_0805E3B4:
	movs r0, 0x1F
	ands r1, r0
	lsls r1, 9
	ldrh r3, [r7, 0x2]
	ldr r2, _0805E4A8
	adds r0, r2, 0
	ands r3, r0
	orrs r3, r1
	ldr r4, _0805E4A0
	ands r3, r4
	strh r3, [r7, 0x2]
	ldr r2, _0805E4AC
	ldrh r0, [r7, 0x4]
	movs r5, 0xFC
	lsls r5, 8
	adds r1, r5, 0
	ands r0, r1
	orrs r0, r2
	movs r6, 0
	orrs r0, r6
	movs r1, 0x80
	lsls r1, 4
	ldr r2, _0805E494
	ands r0, r2
	orrs r0, r1
	orrs r0, r6
	ldr r4, _0805E4B0
	mov r9, r4
	ands r0, r4
	strh r0, [r7, 0x4]
	ldrh r4, [r7, 0x6]
	ldr r5, _0805E4B4
	adds r0, r5, 0
	ands r4, r0
	ldr r6, _0805E4B8
	adds r0, r6, 0
	ands r4, r0
	strh r4, [r7, 0x6]
	mov r0, r12
	movs r1, 0
	ldrsh r5, [r0, r1]
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 1
	ldr r6, _0805E4BC
	mov r8, r6
	movs r1, 0
	ldrsh r0, [r6, r1]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	movs r6, 0x7
	ands r0, r6
	muls r0, r5
	adds r0, r2
	adds r0, 0x74
	ldr r1, _0805E4C0
	ands r0, r1
	movs r2, 0xFE
	lsls r2, 8
	adds r1, r2, 0
	ands r3, r1
	orrs r3, r0
	strh r3, [r7, 0x2]
	mov r5, r12
	movs r0, 0x2
	ldrsh r3, [r5, r0]
	lsls r2, r3, 2
	adds r2, r3
	lsls r2, 1
	mov r1, r8
	movs r5, 0
	ldrsh r0, [r1, r5]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	ands r0, r6
	muls r0, r3
	adds r0, r2
	adds r0, 0x52
	mov r6, r9
	ands r0, r6
	lsls r0, 4
	movs r1, 0xF
	ands r4, r1
	orrs r4, r0
	strh r4, [r7, 0x6]
	mov r0, sp
	adds r1, 0xF1
	movs r2, 0
	movs r3, 0
	bl AddSprite
	ldr r2, [sp, 0x18]
	adds r2, 0x1
	str r2, [sp, 0x18]
	cmp r2, 0x3
	bgt _0805E47A
	b _0805E2F0
_0805E47A:
	b _0805E6AC
	.align 2, 0
_0805E47C: .4byte gDungeonGlobalData
_0805E480: .4byte 0x000181e8
_0805E484: .4byte gUnknown_202F22C
_0805E488: .4byte 0xffff0000
_0805E48C: .4byte 0x0000feff
_0805E490: .4byte 0x0000fdff
_0805E494: .4byte 0x0000f3ff
_0805E498: .4byte 0x0000efff
_0805E49C: .4byte 0x0000dfff
_0805E4A0: .4byte 0x00003fff
_0805E4A4: .4byte gUnknown_8106AC8
_0805E4A8: .4byte 0x0000c1ff
_0805E4AC: .4byte 0x00000213
_0805E4B0: .4byte 0x00000fff
_0805E4B4: .4byte 0x0000fffe
_0805E4B8: .4byte 0x0000fffd
_0805E4BC: .4byte gUnknown_202F22E
_0805E4C0: .4byte 0x000001ff
_0805E4C4:
	ldr r3, _0805E6E4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0805E4D0
	b _0805E6AC
_0805E4D0:
	ldr r4, _0805E6E8
	adds r0, r1, r4
	ldrb r0, [r0]
	str r0, [sp, 0x1C]
	cmp r0, 0x7
	bls _0805E4DE
	b _0805E6AC
_0805E4DE:
	ldr r0, _0805E6EC
	ldrb r0, [r0]
	movs r7, 0x1
	cmp r0, 0
	beq _0805E4F2
	ldr r0, _0805E6F0
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805E4F2
	movs r7, 0x3
_0805E4F2:
	ldr r5, _0805E6F4
	mov r12, r5
	ldr r6, [sp, 0x1C]
	lsls r5, r6, 1
	adds r3, r5, r6
	lsls r3, 2
	add r3, r12
	movs r0, 0
	ldrsh r4, [r3, r0]
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 1
	ldr r0, _0805E6F8
	movs r6, 0
	ldrsh r2, [r0, r6]
	lsrs r0, r2, 31
	adds r2, r0
	asrs r2, 1
	movs r0, 0x7
	ands r2, r0
	adds r0, r4, 0
	muls r0, r2
	adds r0, r1
	adds r0, 0x74
	str r0, [sp, 0x20]
	movs r1, 0x2
	ldrsh r0, [r3, r1]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 1
	muls r0, r2
	adds r0, r1
	adds r0, 0x52
	mov r10, r0
	str r5, [sp, 0x24]
	cmp r7, 0
	bne _0805E53E
	b _0805E6AC
_0805E53E:
	add r6, sp, 0x8
	ldr r2, _0805E6FC
	mov r8, r2
	mov r9, r7
_0805E546:
	ldrh r0, [r6]
	ldr r3, _0805E700
	adds r1, r3, 0
	ands r1, r0
	ldr r0, [sp, 0x8]
	mov r4, r8
	ands r0, r4
	orrs r0, r1
	str r0, [sp, 0x8]
	ldrh r1, [r6]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	str r2, [sp, 0x8]
	ldrh r0, [r6]
	ldr r5, _0805E704
	adds r1, r5, 0
	ands r1, r0
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, 0x8]
	ldrh r2, [r6]
	mov r1, r8
	ands r1, r0
	orrs r1, r2
	str r1, [sp, 0x8]
	ldrh r2, [r6]
	ldr r0, _0805E708
	ands r0, r2
	mov r3, r8
	ands r3, r1
	orrs r3, r0
	str r3, [sp, 0x8]
	ldrh r1, [r6]
	movs r0, 0x80
	lsls r0, 3
	orrs r0, r1
	movs r1, 0
	orrs r0, r1
	mov r2, r8
	ands r2, r3
	orrs r2, r0
	str r2, [sp, 0x8]
	ldrh r0, [r6]
	ldr r3, _0805E70C
	adds r1, r3, 0
	ands r1, r0
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, 0x8]
	ldrh r1, [r6]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	str r2, [sp, 0x8]
	ldrh r0, [r6]
	ldr r4, _0805E710
	adds r1, r4, 0
	ands r1, r0
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, 0x8]
	ldrh r1, [r6]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	str r2, [sp, 0x8]
	ldrh r1, [r6]
	ldr r0, _0805E714
	ands r0, r1
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x8]
	ldrh r2, [r6]
	mov r0, r8
	ands r0, r1
	orrs r0, r2
	str r0, [sp, 0x8]
	ldr r5, [sp, 0x24]
	ldr r1, [sp, 0x1C]
	adds r0, r5, r1
	lsls r2, r0, 2
	ldr r3, _0805E6F4
	adds r7, r2, r3
	ldrb r1, [r7, 0x8]
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, 31
	movs r0, 0x8
	ands r1, r0
	ldrb r0, [r7, 0x9]
	cmp r0, 0
	beq _0805E60A
	adds r1, 0x10
_0805E60A:
	movs r0, 0x1F
	ands r1, r0
	lsls r1, 9
	ldrh r3, [r6, 0x2]
	ldr r4, _0805E718
	adds r0, r4, 0
	ands r3, r0
	orrs r3, r1
	ldr r5, _0805E714
	ands r3, r5
	strh r3, [r6, 0x2]
	ldr r1, _0805E71C
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, _0805E720
	ands r2, r0
	ldrh r0, [r6, 0x4]
	movs r4, 0xFC
	lsls r4, 8
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r2
	movs r1, 0x80
	lsls r1, 4
	ldr r5, _0805E708
	ands r0, r5
	orrs r0, r1
	movs r1, 0
	orrs r0, r1
	movs r2, 0xF
	mov r12, r2
	ldr r4, _0805E724
	ands r0, r4
	strh r0, [r6, 0x4]
	ldrh r1, [r6, 0x6]
	ldr r5, _0805E728
	adds r0, r5, 0
	ands r1, r0
	ldr r2, _0805E72C
	adds r0, r2, 0
	ands r1, r0
	ldr r0, _0805E730
	ldr r5, [sp, 0x20]
	ands r0, r5
	movs r5, 0xFE
	lsls r5, 8
	adds r2, r5, 0
	ands r3, r2
	orrs r3, r0
	strh r3, [r6, 0x2]
	mov r0, r10
	ands r0, r4
	lsls r0, 4
	mov r2, r12
	ands r1, r2
	orrs r1, r0
	strh r1, [r6, 0x6]
	adds r0, r6, 0
	movs r1, 0x80
	lsls r1, 1
	movs r2, 0
	movs r3, 0
	bl AddSprite
	movs r3, 0
	ldrsh r0, [r7, r3]
	lsls r0, 2
	ldr r4, [sp, 0x20]
	adds r4, r0
	str r4, [sp, 0x20]
	movs r5, 0x2
	ldrsh r0, [r7, r5]
	lsls r0, 2
	add r10, r0
	movs r0, 0x1
	negs r0, r0
	add r9, r0
	mov r1, r9
	cmp r1, 0
	beq _0805E6AC
	b _0805E546
_0805E6AC:
	ldr r4, _0805E734
	ldrb r0, [r4]
	cmp r0, 0
	beq _0805E6D4
	ldr r2, [sp, 0x14]
	adds r2, 0x34
	ldr r3, [sp, 0x14]
	adds r3, 0x33
	ldrb r1, [r3]
	ldrb r0, [r2]
	cmp r0, r1
	beq _0805E6D4
	strb r1, [r2]
	ldr r0, [sp, 0x10]
	adds r0, 0x4
	ldrb r1, [r3]
	ldrb r3, [r4]
	movs r2, 0
	bl sub_804A728
_0805E6D4:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E6E4: .4byte 0x0001821a
_0805E6E8: .4byte 0x0001821b
_0805E6EC: .4byte gUnknown_202F231
_0805E6F0: .4byte gUnknown_202F230
_0805E6F4: .4byte gUnknown_8106AE8
_0805E6F8: .4byte gUnknown_202F22E
_0805E6FC: .4byte 0xffff0000
_0805E700: .4byte 0x0000feff
_0805E704: .4byte 0x0000fdff
_0805E708: .4byte 0x0000f3ff
_0805E70C: .4byte 0x0000efff
_0805E710: .4byte 0x0000dfff
_0805E714: .4byte 0x00003fff
_0805E718: .4byte 0x0000c1ff
_0805E71C: .4byte gUnknown_8106AEC
_0805E720: .4byte 0x000003ff
_0805E724: .4byte 0x00000fff
_0805E728: .4byte 0x0000fffe
_0805E72C: .4byte 0x0000fffd
_0805E730: .4byte 0x000001ff
_0805E734: .4byte gUnknown_202F22D
	thumb_func_end sub_805E2C4

	thumb_func_start sub_805E738
sub_805E738:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r6, r0, 0
	ldr r1, [r6, 0x70]
	adds r0, r1, 0
	adds r0, 0xE8
	ldrb r0, [r0]
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0805E7F6
	movs r0, 0
	mov r8, r0
	adds r1, 0x46
	mov r10, r1
_0805E75E:
	movs r1, 0
	mov r9, r1
	mov r3, r10
	ldrb r5, [r3]
	adds r5, 0x1
	movs r7, 0x1
_0805E76A:
	movs r0, 0x7
	ands r5, r0
	movs r1, 0x4
	ldrsh r0, [r6, r1]
	ldr r1, _0805E7E8
	lsls r2, r5, 2
	adds r2, r1
	movs r3, 0
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r3, 0x6
	ldrsh r1, [r6, r3]
	movs r3, 0x2
	ldrsh r2, [r2, r3]
	adds r1, r2
	bl GetMapTile_1
	adds r4, r0, 0
	ldr r0, [r4, 0x10]
	cmp r0, 0
	beq _0805E7B8
	bl GetEntityType
	cmp r0, 0x1
	bne _0805E7B8
	ldr r1, [r4, 0x10]
	ldr r4, [r1, 0x70]
	adds r0, r6, 0
	bl CanSee
	lsls r0, 24
	cmp r0, 0
	beq _0805E7B8
	mov r0, r8
	cmp r0, 0
	bne _0805E7C6
	ldrb r0, [r4, 0x6]
	cmp r0, 0
	bne _0805E7C6
_0805E7B8:
	adds r7, 0x1
	adds r5, 0x1
	cmp r7, 0x7
	ble _0805E76A
	mov r1, r9
	cmp r1, 0
	beq _0805E7EC
_0805E7C6:
	ldr r1, [r6, 0x70]
	movs r2, 0x7
	adds r0, r5, 0
	ands r0, r2
	adds r1, 0x46
	strb r0, [r1]
	adds r0, r6, 0
	bl sub_806CEBC
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	adds r2, r5, 0
	bl sub_806CDD4
	b _0805E7F6
	.align 2, 0
_0805E7E8: .4byte gAdjacentTileOffsets
_0805E7EC:
	movs r3, 0x1
	add r8, r3
	mov r0, r8
	cmp r0, 0
	ble _0805E75E
_0805E7F6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_805E738

	thumb_func_start sub_805E804
sub_805E804:
	push {r4,r5,lr}
	ldr r2, _0805E864
	ldr r1, [r2]
	ldr r5, _0805E868
	adds r3, r1, r5
	ldr r4, _0805E86C
	adds r1, r4
	ldrb r0, [r3]
	ldrb r1, [r1]
	orrs r0, r1
	movs r1, 0
	strb r0, [r3]
	ldr r0, [r2]
	adds r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r5
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805E85C
	ldr r0, _0805E870
	ldrh r1, [r0]
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0805E85C
	adds r4, r2, 0
_0805E83E:
	movs r0, 0x54
	bl sub_803E46C
	ldr r0, _0805E864
	ldr r0, [r0]
	ldr r1, _0805E868
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805E85C
	ldr r0, _0805E870
	ldrh r0, [r0]
	ands r0, r4
	cmp r0, 0
	bne _0805E83E
_0805E85C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E864: .4byte gDungeonGlobalData
_0805E868: .4byte 0x0000066d
_0805E86C: .4byte 0x0000066c
_0805E870: .4byte gRealInputs
	thumb_func_end sub_805E804

	thumb_func_start sub_805E874
sub_805E874:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, _0805E90C
	ldr r4, [r0]
	bl GetLeaderEntity
	mov r9, r0
	ldr r0, [r0, 0x70]
	adds r0, 0x46
	ldrb r0, [r0]
	str r0, [sp, 0x18]
	mov r0, r9
	movs r1, 0x4
	ldrsh r0, [r0, r1]
	mov r10, r0
	mov r2, r9
	movs r3, 0x6
	ldrsh r2, [r2, r3]
	str r2, [sp, 0x1C]
	adds r1, r2, 0
	bl GetMapTile_1
	adds r5, r0, 0
	ldr r1, _0805E910
	ldr r2, [sp, 0x18]
	lsls r0, r2, 2
	adds r0, r1
	movs r3, 0
	ldrsh r1, [r0, r3]
	mov r2, r10
	adds r7, r2, r1
	movs r3, 0x2
	ldrsh r0, [r0, r3]
	ldr r1, [sp, 0x1C]
	adds r6, r1, r0
	ldr r2, _0805E914
	adds r4, r2
	ldrb r0, [r4]
	cmp r0, 0
	beq _0805E906
	ldr r0, [r5, 0x14]
	cmp r0, 0
	bne _0805E906
	mov r0, r9
	mov r1, r10
	ldr r2, [sp, 0x1C]
	bl sub_805EC2C
	lsls r0, 24
	cmp r0, 0
	bne _0805E906
	mov r0, r9
	ldr r1, [sp, 0x18]
	bl sub_8070F14
	lsls r0, 24
	cmp r0, 0
	beq _0805E906
	ldrb r3, [r5, 0x9]
	str r3, [sp, 0x20]
	cmp r3, 0xFF
	bne _0805E918
	adds r0, r7, 0
	adds r1, r6, 0
	bl GetMapTile_1
	ldrb r0, [r0, 0x9]
	cmp r0, 0xFF
	beq _0805E922
_0805E906:
	movs r0, 0
	b _0805EC1A
	.align 2, 0
_0805E90C: .4byte gDungeonGlobalData
_0805E910: .4byte gAdjacentTileOffsets
_0805E914: .4byte 0x0000066c
_0805E918:
	ldrh r1, [r5]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0805E906
_0805E922:
	movs r4, 0x1
	negs r4, r4
	ldr r7, _0805EA54
	movs r5, 0x80
	lsls r5, 2
	adds r6, r5, 0
_0805E92E:
	ldr r0, [sp, 0x18]
	adds r1, r0, r4
	movs r5, 0x7
	ands r1, r5
	lsls r1, 2
	adds r1, r7
	movs r2, 0
	ldrsh r0, [r1, r2]
	add r0, r10
	movs r3, 0x2
	ldrsh r1, [r1, r3]
	ldr r2, [sp, 0x1C]
	adds r1, r2, r1
	bl GetMapTile_1
	adds r1, r0, 0
	ldr r0, [r1, 0x10]
	cmp r0, 0
	bne _0805E906
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, 0
	bne _0805E906
	adds r4, 0x1
	cmp r4, 0x1
	ble _0805E92E
	ldr r4, _0805EA54
	ldr r3, [sp, 0x18]
	adds r3, 0x3
	ands r3, r5
	lsls r3, 2
	adds r3, r4
	movs r1, 0
	ldrsh r0, [r3, r1]
	add r0, r10
	str r0, [sp]
	ldr r2, [sp, 0x18]
	adds r2, 0x4
	ands r2, r5
	lsls r2, 2
	adds r2, r4
	movs r1, 0
	ldrsh r0, [r2, r1]
	add r0, r10
	str r0, [sp, 0x4]
	ldr r1, [sp, 0x18]
	adds r1, 0x5
	ands r1, r5
	lsls r1, 2
	adds r1, r4
	movs r4, 0
	ldrsh r0, [r1, r4]
	add r0, r10
	str r0, [sp, 0x8]
	add r4, sp, 0xC
	movs r5, 0x2
	ldrsh r0, [r3, r5]
	ldr r3, [sp, 0x1C]
	adds r0, r3, r0
	str r0, [sp, 0xC]
	movs r5, 0x2
	ldrsh r0, [r2, r5]
	adds r0, r3, r0
	str r0, [r4, 0x4]
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	str r0, [r4, 0x8]
	movs r3, 0x1
	negs r3, r3
	mov r8, r3
_0805E9BC:
	movs r4, 0x1
	negs r4, r4
	mov r7, r10
	add r7, r8
	ldr r6, [sp, 0x1C]
	subs r6, 0x1
_0805E9C8:
	adds r0, r7, 0
	adds r1, r6, 0
	bl GetMapTile_1
	adds r5, r0, 0
	ldr r0, [r5, 0x14]
	cmp r0, 0
	beq _0805EA14
	movs r2, 0
	ldr r0, [sp]
	cmp r7, r0
	bne _0805E9E6
	ldr r0, [sp, 0xC]
	cmp r6, r0
	beq _0805EA04
_0805E9E6:
	adds r2, 0x1
	cmp r2, 0x2
	bgt _0805EA04
	lsls r1, r2, 2
	mov r3, sp
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _0805E9E6
	mov r0, sp
	adds r0, r1
	adds r0, 0xC
	ldr r0, [r0]
	cmp r6, r0
	bne _0805E9E6
_0805EA04:
	cmp r2, 0x3
	bne _0805EA14
	ldr r0, [r5, 0x14]
	bl GetEntityType
	cmp r0, 0x3
	bne _0805EA14
	b _0805E906
_0805EA14:
	movs r0, 0x1
	ldr r1, [sp, 0x18]
	ands r0, r1
	cmp r0, 0
	beq _0805EA60
	ldr r0, [r5, 0x14]
	cmp r0, 0
	beq _0805EA94
	bl GetEntityType
	cmp r0, 0x2
	bne _0805EA94
	ldr r0, [r5, 0x14]
	bl GetEntityType
	cmp r0, 0x2
	bne _0805EA94
	ldr r0, [r5, 0x14]
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805EA42
	b _0805E906
_0805EA42:
	ldr r0, _0805EA58
	ldr r0, [r0]
	ldr r2, _0805EA5C
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805EA94
	b _0805E906
	.align 2, 0
_0805EA54: .4byte gAdjacentTileOffsets
_0805EA58: .4byte gDungeonGlobalData
_0805EA5C: .4byte 0x0001820f
_0805EA60:
	mov r3, r8
	cmp r3, 0
	beq _0805EA6A
	cmp r4, 0
	bne _0805EA94
_0805EA6A:
	ldr r0, [r5, 0x14]
	cmp r0, 0
	beq _0805EA94
	bl GetEntityType
	cmp r0, 0x2
	bne _0805EA94
	ldr r0, [r5, 0x14]
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805EA84
	b _0805E906
_0805EA84:
	ldr r0, _0805EAA0
	ldr r0, [r0]
	ldr r1, _0805EAA4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805EA94
	b _0805E906
_0805EA94:
	mov r2, r8
	cmp r2, 0
	beq _0805EAA8
	cmp r4, 0
	bne _0805EAD6
	b _0805EAAC
	.align 2, 0
_0805EAA0: .4byte gDungeonGlobalData
_0805EAA4: .4byte 0x0001820f
_0805EAA8:
	cmp r4, 0
	beq _0805EAD6
_0805EAAC:
	ldr r0, [sp, 0x4]
	cmp r0, r7
	bne _0805EAB8
	ldr r0, [sp, 0x10]
	cmp r0, r6
	beq _0805EAD6
_0805EAB8:
	mov r0, r9
	adds r1, r7, 0
	adds r2, r6, 0
	bl sub_805EC2C
	lsls r0, 24
	cmp r0, 0
	bne _0805EAD6
	ldr r3, [sp, 0x20]
	cmp r3, 0xFF
	beq _0805EAD6
	ldrb r5, [r5, 0x9]
	cmp r3, r5
	beq _0805EAD6
	b _0805E906
_0805EAD6:
	adds r6, 0x1
	adds r4, 0x1
	cmp r4, 0x1
	bgt _0805EAE0
	b _0805E9C8
_0805EAE0:
	movs r4, 0x1
	add r8, r4
	mov r5, r8
	cmp r5, 0x1
	bgt _0805EAEC
	b _0805E9BC
_0805EAEC:
	movs r0, 0x1
	ldr r1, [sp, 0x18]
	ands r0, r1
	cmp r0, 0
	beq _0805EAF8
	b _0805EC18
_0805EAF8:
	cmp r1, 0
	beq _0805EB00
	cmp r1, 0x4
	bne _0805EB8C
_0805EB00:
	mov r4, r10
	subs r4, 0x1
	ldr r6, [sp, 0x1C]
	subs r6, 0x1
	mov r0, r9
	adds r1, r4, 0
	adds r2, r6, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r9
	adds r1, r4, 0
	ldr r2, [sp, 0x1C]
	bl sub_805EC2C
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r5, [sp, 0x1C]
	adds r5, 0x1
	mov r0, r9
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	adds r2, r6, 0
	cmp r7, 0
	bne _0805EB4C
	mov r3, r8
	cmp r3, 0
	beq _0805EB46
	b _0805E906
_0805EB46:
	cmp r7, r0
	beq _0805EB4C
	b _0805E906
_0805EB4C:
	mov r4, r10
	adds r4, 0x1
	mov r0, r9
	adds r1, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r9
	adds r1, r4, 0
	ldr r2, [sp, 0x1C]
	bl sub_805EC2C
	lsls r0, 24
	lsrs r7, r0, 24
	mov r0, r9
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	cmp r7, 0
	bne _0805EC18
	mov r4, r8
	cmp r4, 0
	beq _0805EB86
	b _0805E906
_0805EB86:
	cmp r7, r0
	beq _0805EC18
	b _0805E906
_0805EB8C:
	mov r6, r10
	subs r6, 0x1
	ldr r4, [sp, 0x1C]
	subs r4, 0x1
	mov r0, r9
	adds r1, r6, 0
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r9
	mov r1, r10
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r7, r0, 24
	mov r5, r10
	adds r5, 0x1
	mov r0, r9
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	adds r1, r6, 0
	cmp r7, 0
	bne _0805EBD8
	mov r2, r8
	cmp r2, 0
	beq _0805EBD2
	b _0805E906
_0805EBD2:
	cmp r7, r0
	beq _0805EBD8
	b _0805E906
_0805EBD8:
	ldr r4, [sp, 0x1C]
	adds r4, 0x1
	mov r0, r9
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r9
	mov r1, r10
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r7, r0, 24
	mov r0, r9
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_805EC2C
	lsls r0, 24
	lsrs r0, 24
	cmp r7, 0
	bne _0805EC18
	mov r3, r8
	cmp r3, 0
	beq _0805EC12
	b _0805E906
_0805EC12:
	cmp r7, r0
	beq _0805EC18
	b _0805E906
_0805EC18:
	movs r0, 0x1
_0805EC1A:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_805E874

	thumb_func_start sub_805EC2C
sub_805EC2C:
	push {lr}
	sub sp, 0x4
	lsls r1, 16
	lsls r2, 16
	lsrs r1, 16
	orrs r1, r2
	str r1, [sp]
	mov r1, sp
	bl sub_8070564
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x4
	pop {r1}
	bx r1
	thumb_func_end sub_805EC2C

	thumb_func_start sub_805EC4C
sub_805EC4C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r5, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r7, [r5, 0x70]
	ldr r1, _0805ECC8
	adds r0, r7, 0
	adds r0, 0x46
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0]
	ldrh r3, [r5, 0x4]
	adds r1, r3
	lsls r1, 16
	ldrh r0, [r0, 0x2]
	ldrh r3, [r5, 0x6]
	adds r0, r3
	lsls r0, 16
	lsrs r2, r1, 16
	orrs r2, r0
	lsls r0, r2, 16
	asrs r0, 16
	asrs r1, r2, 16
	bl GetMapTile_1
	ldr r0, [r0, 0x10]
	mov r8, r0
	cmp r0, 0
	bne _0805EC94
	b _0805ED96
_0805EC94:
	mov r0, r8
	bl GetEntityType
	cmp r0, 0x1
	bne _0805ED96
	mov r0, r8
	ldr r6, [r0, 0x70]
	ldrb r0, [r6, 0x6]
	cmp r0, 0
	beq _0805ECDC
	ldrb r0, [r6, 0x8]
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0805ECDC
	adds r0, r6, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	beq _0805ECC2
	cmp r0, 0x47
	bne _0805ECCC
_0805ECC2:
	movs r0, 0x1
	b _0805ECCE
	.align 2, 0
_0805ECC8: .4byte gAdjacentTileOffsets
_0805ECCC:
	movs r0, 0
_0805ECCE:
	cmp r0, 0
	bne _0805ECDC
	adds r0, r6, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0805ED96
_0805ECDC:
	adds r0, r7, 0
	adds r0, 0xB0
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805ED96
	cmp r0, 0x1
	beq _0805ED96
	cmp r0, 0x7
	beq _0805ED96
	cmp r0, 0x5
	beq _0805ED96
	cmp r0, 0x3
	beq _0805ED96
	cmp r0, 0x4
	beq _0805ED96
	adds r0, r6, 0
	adds r0, 0xB0
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805ED96
	cmp r0, 0x1
	beq _0805ED96
	cmp r0, 0x7
	beq _0805ED96
	cmp r0, 0x5
	beq _0805ED96
	cmp r0, 0x3
	beq _0805ED96
	cmp r0, 0x4
	beq _0805ED96
	adds r0, r7, 0
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805ED96
	adds r0, r6, 0
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0805ED96
	adds r0, r6, 0
	adds r0, 0xA8
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805ED3E
	cmp r0, 0x2
	beq _0805ED3E
	cmp r0, 0x4
	bne _0805ED96
_0805ED3E:
	adds r0, r7, 0
	adds r0, 0xA8
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805ED50
	cmp r0, 0x2
	beq _0805ED50
	cmp r0, 0x4
	bne _0805ED96
_0805ED50:
	mov r0, r8
	movs r1, 0
	bl IsCharging
	lsls r0, 24
	cmp r0, 0
	bne _0805ED96
	adds r4, r7, 0
	adds r4, 0x46
	ldrb r1, [r4]
	adds r0, r5, 0
	bl sub_8070F80
	lsls r0, 24
	mov r9, r4
	cmp r0, 0
	beq _0805ED96
	mov r1, r10
	cmp r1, 0
	beq _0805EDA0
	adds r1, r5, 0x4
	mov r0, r8
	bl sub_807049C
	lsls r0, 24
	cmp r0, 0
	beq _0805EDA0
	ldr r0, _0805ED9C
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_8052B8C
	cmp r0, 0
	bne _0805EDA0
_0805ED96:
	movs r0, 0
	b _0805EE1E
	.align 2, 0
_0805ED9C: .4byte gUnknown_8100208
_0805EDA0:
	adds r0, r7, 0
	adds r0, 0x44
	movs r1, 0x2
	bl SetAction
	ldr r0, _0805EDC0
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0805EDC4
	adds r1, r7, 0
	adds r1, 0x48
	movs r0, 0
	b _0805EDCA
	.align 2, 0
_0805EDC0: .4byte gRealInputs
_0805EDC4:
	adds r1, r7, 0
	adds r1, 0x48
	movs r0, 0x1
_0805EDCA:
	strb r0, [r1]
	ldrh r0, [r7]
	movs r2, 0x80
	lsls r2, 8
	adds r5, r2, 0
	movs r4, 0
	orrs r0, r5
	strh r0, [r7]
	adds r0, r6, 0
	adds r0, 0x44
	movs r1, 0x2
	bl SetAction
	adds r0, r6, 0
	adds r0, 0x48
	strb r4, [r0]
	mov r3, r9
	ldrb r0, [r3]
	adds r0, 0x4
	movs r1, 0x7
	ands r0, r1
	adds r1, r6, 0
	adds r1, 0x46
	strb r0, [r1]
	ldrh r0, [r6]
	orrs r0, r5
	strh r0, [r6]
	mov r0, r8
	ldrh r1, [r0, 0x4]
	movs r2, 0xB6
	lsls r2, 1
	adds r0, r6, r2
	strh r1, [r0]
	mov r3, r8
	ldrh r0, [r3, 0x6]
	adds r2, 0x2
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _0805EE2C
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0xE]
_0805EE1E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE2C: .4byte gDungeonGlobalData
	thumb_func_end sub_805EC4C

	thumb_func_start sub_805EE30
sub_805EE30:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	bl GetLeaderEntity
	adds r5, r0, 0
	cmp r5, 0
	bne _0805EE42
	b _0805EF52
_0805EE42:
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _0805EE4E
	b _0805EF52
_0805EE4E:
	adds r0, r5, 0
	bl GetMapTileForDungeonEntity_2
	adds r4, r0, 0
	adds r0, r5, 0
	movs r1, 0xD
	bl HasIQSkill
	lsls r0, 24
	cmp r0, 0
	beq _0805EE82
	ldr r0, [r5, 0x70]
	adds r0, 0xE4
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _0805EE82
	adds r0, r5, 0
	movs r1, 0x9
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	bne _0805EE82
	adds r0, r5, 0x4
	bl sub_804AE84
_0805EE82:
	ldrh r1, [r4]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	beq _0805EE96
	ldr r0, _0805EEB0
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x1]
_0805EE96:
	ldr r4, [r4, 0x14]
	cmp r4, 0
	beq _0805EF52
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x5
	bhi _0805EF52
	lsls r0, 2
	ldr r1, _0805EEB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805EEB0: .4byte gDungeonGlobalData
_0805EEB4: .4byte _0805EEB8
	.align 2, 0
_0805EEB8:
	.4byte _0805EF52
	.4byte _0805EF52
	.4byte _0805EED0
	.4byte _0805EF2A
	.4byte _0805EF52
	.4byte _0805EF52
_0805EED0:
	adds r0, r4, 0
	bl GetTrapData
	adds r6, r0, 0
	movs r0, 0
	mov r8, r0
	movs r7, 0
	adds r0, r5, 0
	movs r1, 0x13
	bl HasIQSkill
	lsls r0, 24
	cmp r0, 0
	beq _0805EF00
	adds r1, r4, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	bne _0805EF00
	movs r0, 0x1
	strb r0, [r1]
	bl sub_8049ED4
	movs r7, 0x1
_0805EF00:
	ldrb r0, [r6, 0x1]
	cmp r0, 0
	beq _0805EF18
	cmp r0, 0x1
	beq _0805EF52
	cmp r0, 0x2
	bne _0805EF12
	movs r1, 0x1
	mov r8, r1
_0805EF12:
	mov r0, r8
	cmp r0, 0
	beq _0805EF52
_0805EF18:
	cmp r7, 0
	bne _0805EF52
	adds r1, r5, 0x4
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x1
	bl sub_807FE9C
	b _0805EF52
_0805EF2A:
	adds r0, r4, 0
	bl GetItemData
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0805EF44
	adds r0, r5, 0x4
	movs r1, 0x1
	bl sub_8045DB4
	b _0805EF52
_0805EF44:
	ldr r0, _0805EF5C
	ldr r0, [r0]
	movs r1, 0xB8
	lsls r1, 3
	adds r0, r1
	movs r1, 0x4
	str r1, [r0]
_0805EF52:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EF5C: .4byte gDungeonGlobalData
	thumb_func_end sub_805EE30

	thumb_func_start sub_805EF60
sub_805EF60:
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r6, r1, 0
	bl sub_80696A8
	adds r4, r0, 0
	cmp r4, 0
	beq _0805EF9E
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x1
	bne _0805EF9E
	adds r0, r5, 0
	bl sub_8070BC0
	lsls r0, 24
	cmp r0, 0
	beq _0805EF9E
	ldr r1, [r4, 0x70]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	beq _0805EFA2
	adds r0, r1, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0805EFA2
	ldrb r0, [r1, 0x8]
	cmp r0, 0x1
	beq _0805EFA2
_0805EF9E:
	movs r0, 0
	b _0805EFAE
_0805EFA2:
	adds r0, r6, 0
	adds r0, 0x44
	movs r1, 0x13
	bl SetAction
	movs r0, 0x1
_0805EFAE:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_805EF60

	thumb_func_start sub_805EFB4
sub_805EFB4:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, 24
	lsrs r7, r1, 24
	bl sub_8083654
	adds r6, r0, 0
	cmp r7, 0
	beq _0805EFE2
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0805EFE2
	adds r0, r6, 0
	adds r0, 0x46
	ldrb r1, [r0]
	adds r1, 0x4
	movs r2, 0x7
	ands r1, r2
	strb r1, [r0]
	b _0805F020
_0805EFE2:
	adds r0, r6, 0
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0805F020
	movs r0, 0x8
	bl DungeonRandomCapped
	adds r4, r0, 0
	movs r5, 0
_0805EFF6:
	cmp r7, 0
	bne _0805F008
	mov r0, r8
	adds r1, r4, 0
	bl CanMoveInDirection
	lsls r0, 24
	cmp r0, 0
	beq _0805F014
_0805F008:
	movs r0, 0x7
	ands r4, r0
	adds r0, r6, 0
	adds r0, 0x46
	strb r4, [r0]
	b _0805F020
_0805F014:
	adds r4, 0x1
	movs r0, 0x7
	ands r4, r0
	adds r5, 0x1
	cmp r5, 0x7
	ble _0805EFF6
_0805F020:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_805EFB4

	thumb_func_start sub_805F02C
sub_805F02C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r5, _0805F058
	ldr r0, [r5]
	adds r0, 0xBC
	ldr r7, [r0]
	bl GetLeaderEntity
	mov r9, r0
	ldr r0, [r7, 0x70]
	mov r8, r0
	mov r1, r9
	ldr r4, [r1, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _0805F060
	ldr r0, _0805F05C
	b _0805F08E
	.align 2, 0
_0805F058: .4byte gDungeonGlobalData
_0805F05C: .4byte gUnknown_80F9BD8
_0805F060:
	movs r0, 0x2
	bl sub_8047084
	lsls r0, 24
	cmp r0, 0
	bne _0805F076
	bl sub_807EF48
	lsls r0, 24
	cmp r0, 0
	beq _0805F080
_0805F076:
	ldr r0, _0805F07C
	b _0805F08E
	.align 2, 0
_0805F07C: .4byte gUnknown_80F9C08
_0805F080:
	ldr r2, [r5]
	ldr r3, _0805F098
	adds r0, r2, r3
	ldrb r1, [r0]
	cmp r1, 0
	beq _0805F0A0
	ldr r0, _0805F09C
_0805F08E:
	ldr r1, [r0]
	adds r0, r7, 0
	bl sub_805239C
	b _0805F184
	.align 2, 0
_0805F098: .4byte 0x0000066e
_0805F09C: .4byte gUnknown_80F9C2C
_0805F0A0:
	ldr r5, _0805F114
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, 0x1
	mov r2, r8
	strb r0, [r2, 0x7]
	strb r1, [r4, 0x7]
	movs r6, 0
	movs r3, 0x44
	add r3, r8
	mov r10, r3
	adds r5, r4, 0
	adds r5, 0x44
	str r5, [sp]
	adds r2, 0x64
	str r2, [sp, 0x4]
	adds r4, 0x64
	str r4, [sp, 0x8]
	ldr r3, _0805F118
	movs r2, 0x1
_0805F0C8:
	movs r0, 0x64
	muls r0, r6
	ldr r1, _0805F11C
	adds r0, r1
	ldr r1, [r3]
	adds r4, r1, r0
	movs r5, 0
	ldrb r1, [r4]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0805F12A
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	str r2, [sp, 0xC]
	str r3, [sp, 0x10]
	bl sub_806A538
	lsls r0, 24
	ldr r2, [sp, 0xC]
	ldr r3, [sp, 0x10]
	cmp r0, 0
	bne _0805F102
	movs r5, 0xA
	ldrsh r1, [r4, r5]
	movs r0, 0x58
	muls r1, r0
	ldr r0, [r3]
	adds r5, r0, r1
_0805F102:
	mov r0, r8
	ldrb r0, [r0, 0xA]
	cmp r6, r0
	bne _0805F120
	strb r2, [r4, 0x2]
	cmp r5, 0
	beq _0805F12A
	strb r2, [r5, 0x2]
	b _0805F12A
	.align 2, 0
_0805F114: .4byte 0x00000679
_0805F118: .4byte gRecruitedPokemonRef
_0805F11C: .4byte 0x00008df8
_0805F120:
	movs r0, 0
	strb r0, [r4, 0x2]
	cmp r5, 0
	beq _0805F12A
	strb r0, [r5, 0x2]
_0805F12A:
	adds r6, 0x1
	cmp r6, 0x3
	ble _0805F0C8
	ldr r0, _0805F194
	movs r4, 0
	str r4, [r0]
	mov r1, r10
	ldr r0, [sp]
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	adds r0, r7, 0
	bl sub_803F508
	mov r0, r9
	bl sub_8041AD0
	bl GetLeaderEntity
	bl sub_8041AE0
	ldr r0, _0805F198
	adds r1, r7, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0805F19C
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	movs r0, 0
	bl sub_807EC28
	ldr r0, [sp, 0x4]
	strb r4, [r0]
	ldr r1, [sp, 0x8]
	strb r4, [r1]
	mov r0, r9
	bl sub_806A6E8
	adds r0, r7, 0
	bl sub_806A6E8
_0805F184:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F194: .4byte gLeaderPokemon
_0805F198: .4byte gAvailablePokemonNames
_0805F19C: .4byte gUnknown_80F9BB0
	thumb_func_end sub_805F02C

	thumb_func_start sub_805F1A0
sub_805F1A0:
	push {lr}
	bl sub_8083654
	adds r0, 0x44
	pop {r1}
	bx r1
	thumb_func_end sub_805F1A0

	thumb_func_start sub_805F1AC
sub_805F1AC:
	push {lr}
	bl sub_8083654
	adds r0, 0x44
	ldrh r0, [r0]
	pop {r1}
	bx r1
	thumb_func_end sub_805F1AC

	thumb_func_start ShowFieldMenu
ShowFieldMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	lsls r0, 24
	lsls r1, 24
	lsrs r2, r1, 24
	lsrs r0, 24
	str r0, [sp, 0xC]
	ldr r0, _0805F208
	ldr r1, [r0]
	movs r0, 0xB8
	lsls r0, 3
	adds r1, r0
	ldr r3, [r1]
	mov r10, r3
	movs r0, 0
	str r0, [sp, 0x10]
	mvns r0, r3
	lsrs r0, 31
	str r0, [sp, 0x14]
	movs r0, 0x1
	negs r0, r0
	str r0, [r1]
	cmp r3, 0
	blt _0805F1F8
	mov r1, r10
	str r1, [sp, 0x10]
_0805F1F8:
	cmp r2, 0
	beq _0805F23C
	ldr r0, _0805F20C
	movs r1, 0x80
	lsls r1, 1
	bl PlayFanfareSE
	b _0805F240
	.align 2, 0
_0805F208: .4byte gDungeonGlobalData
_0805F20C: .4byte 0x00000137
_0805F210:
	bl GetLeaderEntity
	movs r1, 0x1
	bl sub_806675C
	b _0805F226
_0805F21C:
	bl GetLeaderEntity
	movs r1, 0x1
	bl sub_806684C
_0805F226:
	movs r0, 0x1
	bl sub_8044C10
	movs r0, 0x50
	movs r1, 0x4D
	bl sub_803E708
	movs r0, 0
	bl sub_8052210
	b _0805F92A
_0805F23C:
	bl sub_8083D44
_0805F240:
	mov r2, r10
	cmp r2, 0
	bge _0805F2FA
	movs r0, 0x1
	bl sub_8044C10
	ldr r0, _0805F388
	movs r1, 0x1
	negs r1, r1
	str r1, [r0]
	ldr r0, [sp, 0xC]
	bl DrawFieldMenu
	bl GetLeaderEntity
	movs r1, 0
	bl sub_806A2BC
	ldr r4, _0805F38C
	ldr r5, _0805F390
	adds r6, r4, 0
	adds r6, 0x2A
_0805F26C:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1D
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0805F290
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_0805F290:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0805F2A8
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_0805F2A8:
	ldrh r1, [r5, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0805F2BC
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _0805F2D0
_0805F2BC:
	ldr r0, _0805F394
	movs r3, 0x18
	ldrsh r1, [r4, r3]
	adds r1, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x7
	beq _0805F3A8
	bl sub_8083D30
_0805F2D0:
	ldrh r1, [r5, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0805F2E0
	ldrb r0, [r6]
	cmp r0, 0
	beq _0805F26C
_0805F2E0:
	bl sub_8083D30
	movs r0, 0x1
	negs r0, r0
_0805F2E8:
	str r0, [sp, 0x10]
	ldr r0, _0805F38C
	bl AddMenuCursorSprite
	movs r0, 0x1D
	bl sub_803E46C
	movs r1, 0x1
	str r1, [sp, 0xC]
_0805F2FA:
	ldr r2, [sp, 0x10]
	mov r10, r2
	cmp r2, 0x1
	beq _0805F304
	b _0805F428
_0805F304:
	movs r0, 0x1
	bl sub_8044C10
	ldr r1, _0805F398
	ldr r0, [sp, 0x4]
	ands r0, r1
	ldr r1, _0805F39C
	ands r0, r1
	movs r1, 0x80
	lsls r1, 1
	orrs r0, r1
	ldr r1, _0805F3A0
	ands r0, r1
	ldr r1, _0805F3A4
	ands r0, r1
	str r0, [sp, 0x4]
	bl GetLeaderEntity
	add r1, sp, 0x4
	bl sub_805FD74
	lsls r0, 24
	cmp r0, 0
	beq _0805F33A
	movs r3, 0x1
	negs r3, r3
	mov r10, r3
_0805F33A:
	add r0, sp, 0x4
	bl sub_805FD3C
	lsls r0, 24
	cmp r0, 0
	beq _0805F35C
	bl GetLeaderEntity
	add r1, sp, 0x4
	bl sub_805FD74
	lsls r0, 24
	cmp r0, 0
	beq _0805F35C
	movs r0, 0x1
	bl sub_8044C10
_0805F35C:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xC
	bne _0805F3B2
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0xC
	bl sub_8044D90
	ldrb r2, [r0]
	movs r1, 0x4
	orrs r1, r2
	strb r1, [r0]
	bl sub_805F1A0
	bl sub_8060D24
	b _0805F412
	.align 2, 0
_0805F388: .4byte gUnknown_202F260
_0805F38C: .4byte gUnknown_202EE10
_0805F390: .4byte gRealInputs
_0805F394: .4byte gUnknown_202749A
_0805F398: .4byte 0xffffff00
_0805F39C: .4byte 0xffff00ff
_0805F3A0: .4byte 0xff00ffff
_0805F3A4: .4byte 0x00ffffff
_0805F3A8:
	bl sub_8083D08
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	b _0805F2E8
_0805F3B2:
	cmp r0, 0x35
	bne _0805F3D0
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0xD
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048A68
	b _0805F40A
_0805F3D0:
	cmp r0, 0x10
	bne _0805F3EE
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0xE
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048950
	b _0805F40A
_0805F3EE:
	cmp r0, 0x2C
	bne _0805F41A
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0xF
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048B9C
_0805F40A:
	lsls r0, 24
	cmp r0, 0
	beq _0805F412
	b _0805F72C
_0805F412:
	movs r0, 0x1
	bl sub_8044C10
	b _0805F72C
_0805F41A:
	cmp r0, 0x3C
	bne _0805F420
	b _0805F210
_0805F420:
	cmp r0, 0x3D
	bne _0805F426
	b _0805F21C
_0805F426:
	b _0805F72C
_0805F428:
	ldr r2, [sp, 0x10]
	cmp r2, 0x2
	beq _0805F430
	b _0805F52E
_0805F430:
	movs r0, 0x1
	bl sub_8044C10
	bl GetLeaderEntity
	bl sub_8060E38
	lsls r0, 24
	cmp r0, 0
	beq _0805F44A
	movs r3, 0x1
	negs r3, r3
	mov r10, r3
_0805F44A:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1B
	bne _0805F45E
	bl sub_805F1A0
	movs r1, 0
	b _0805F4B2
_0805F45E:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1C
	bne _0805F474
	bl sub_805F1A0
	bl sub_806752C
	b _0805F4B6
_0805F474:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x34
	bne _0805F48A
	bl sub_805F1A0
	bl sub_8067768
	b _0805F4B6
_0805F48A:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1A
	bne _0805F4A0
	bl sub_805F1A0
	bl sub_80615E8
	b _0805F4B6
_0805F4A0:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x30
	bne _0805F4BE
	bl sub_805F1A0
	movs r1, 0x1
_0805F4B2:
	bl sub_8061A38
_0805F4B6:
	movs r0, 0x1
	bl sub_8044C10
	b _0805F72C
_0805F4BE:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x19
	beq _0805F4CC
	b _0805F72C
_0805F4CC:
	bl sub_805F1A0
	bl sub_8062D8C
	movs r6, 0
	movs r4, 0
_0805F4D8:
	ldr r0, _0805F518
	ldr r0, [r0]
	lsls r1, r4, 2
	ldr r2, _0805F51C
	adds r0, r2
	adds r0, r1
	ldr r5, [r0]
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0805F526
	bl sub_805F1A0
	ldrb r0, [r0, 0x4]
	cmp r4, r0
	bne _0805F524
	ldr r0, _0805F520
	str r6, [r0]
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	bne _0805F50C
	b _0805F72C
_0805F50C:
	adds r0, r5, 0
	movs r1, 0
	bl sub_806A2BC
	b _0805F72C
	.align 2, 0
_0805F518: .4byte gDungeonGlobalData
_0805F51C: .4byte 0x0001357c
_0805F520: .4byte gUnknown_202F260
_0805F524:
	adds r6, 0x1
_0805F526:
	adds r4, 0x1
	cmp r4, 0x3
	ble _0805F4D8
	b _0805F72C
_0805F52E:
	ldr r3, [sp, 0x10]
	cmp r3, 0
	beq _0805F536
	b _0805F73A
_0805F536:
	movs r7, 0
	movs r0, 0x1
	bl sub_8044C10
	movs r5, 0
	b _0805F544
_0805F542:
	adds r5, 0x1
_0805F544:
	cmp r5, 0x3
	bgt _0805F56C
	ldr r0, _0805F600
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _0805F604
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0805F542
	ldr r0, [r4, 0x70]
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	beq _0805F542
	adds r7, r5, 0
_0805F56C:
	movs r0, 0
	bl sub_8044C10
_0805F572:
	movs r6, 0
	mov r9, r6
	mov r8, r6
	movs r5, 0
_0805F57A:
	ldr r0, _0805F600
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r3, _0805F604
	adds r0, r3
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _0805F5A0
	cmp r5, r7
	bne _0805F59C
	mov r9, r8
	adds r6, r4, 0
_0805F59C:
	movs r0, 0x1
	add r8, r0
_0805F5A0:
	adds r5, 0x1
	cmp r5, 0x3
	ble _0805F57A
	cmp r6, 0
	bne _0805F5B0
	bl GetLeaderEntity
	adds r6, r0, 0
_0805F5B0:
	adds r0, r6, 0
	movs r1, 0
	bl sub_806A2BC
	adds r0, r6, 0x4
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
	bl sub_8083654
	adds r0, 0x48
	strb r7, [r0]
	movs r0, 0
	bl sub_8044C10
	mov r1, r8
	str r1, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x1
	mov r3, r9
	bl sub_8062F90
	lsls r0, 24
	cmp r0, 0
	beq _0805F5EE
	movs r2, 0x1
	negs r2, r2
	mov r10, r2
_0805F5EE:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bne _0805F63C
	adds r4, r7, 0
	movs r5, 0
	b _0805F60A
	.align 2, 0
_0805F600: .4byte gDungeonGlobalData
_0805F604: .4byte 0x0001357c
_0805F608:
	adds r5, 0x1
_0805F60A:
	cmp r5, 0x3
	bgt _0805F676
	adds r7, 0x1
	cmp r7, 0x3
	ble _0805F616
	movs r7, 0
_0805F616:
	ldr r0, _0805F634
	ldr r0, [r0]
	lsls r1, r7, 2
	ldr r3, _0805F638
	adds r0, r3
	adds r0, r1
	ldr r6, [r0]
	adds r0, r6, 0
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _0805F608
	b _0805F676
	.align 2, 0
_0805F634: .4byte gDungeonGlobalData
_0805F638: .4byte 0x0001357c
_0805F63C:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7
	bne _0805F694
	adds r4, r7, 0
	movs r5, 0
	b _0805F650
_0805F64E:
	adds r5, 0x1
_0805F650:
	cmp r5, 0x3
	bgt _0805F676
	subs r7, 0x1
	cmp r7, 0
	bge _0805F65C
	movs r7, 0x3
_0805F65C:
	ldr r0, _0805F68C
	ldr r0, [r0]
	lsls r1, r7, 2
	ldr r2, _0805F690
	adds r0, r2
	adds r0, r1
	ldr r6, [r0]
	adds r0, r6, 0
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _0805F64E
_0805F676:
	bl sub_8083654
	adds r0, 0x48
	strb r7, [r0]
	cmp r4, r7
	bne _0805F684
	b _0805F572
_0805F684:
	movs r0, 0
	bl sub_8083CE0
	b _0805F572
	.align 2, 0
_0805F68C: .4byte gDungeonGlobalData
_0805F690: .4byte 0x0001357c
_0805F694:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1D
	bne _0805F6AA
	bl sub_805F1A0
	bl sub_80637E8
	b _0805F56C
_0805F6AA:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1E
	beq _0805F6C2
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x33
	bne _0805F6CE
_0805F6C2:
	bl sub_805F1A0
	movs r1, 0
	bl sub_8063A70
	b _0805F56C
_0805F6CE:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1F
	bne _0805F6E4
	bl sub_805F1A0
	bl sub_8063B54
	b _0805F56C
_0805F6E4:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x20
	bne _0805F6FA
	bl sub_805F1A0
	bl sub_8063BB4
	b _0805F56C
_0805F6FA:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x21
	bne _0805F712
	bl sub_805F1A0
	movs r1, 0
	bl sub_8063CF0
	b _0805F56C
_0805F712:
	bl GetLeaderEntity
	movs r1, 0
	bl sub_806A2BC
	bl GetLeaderEntity
	adds r0, 0x4
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
_0805F72C:
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	beq _0805F738
	b _0805F92A
_0805F738:
	b _0805F904
_0805F73A:
	ldr r3, [sp, 0x10]
	cmp r3, 0x4
	beq _0805F742
	b _0805F8E0
_0805F742:
	bl GetLeaderEntity
	movs r1, 0x4
	ldrsh r2, [r0, r1]
	movs r3, 0x6
	ldrsh r1, [r0, r3]
	adds r0, r2, 0
	bl GetMapTile_1
	ldr r4, [r0, 0x14]
	cmp r4, 0
	bne _0805F75C
	b _0805F88C
_0805F75C:
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x3
	beq _0805F768
	b _0805F872
_0805F768:
	movs r0, 0x1
	bl sub_8044C10
	ldr r1, _0805F7F0
	ldr r0, [sp, 0x8]
	ands r0, r1
	ldr r1, _0805F7F4
	ands r0, r1
	movs r1, 0x80
	lsls r1, 1
	orrs r0, r1
	ldr r1, _0805F7F8
	ands r0, r1
	movs r1, 0x80
	lsls r1, 9
	orrs r0, r1
	ldr r1, _0805F7FC
	ands r0, r1
	adds r1, 0x1
	orrs r0, r1
	str r0, [sp, 0x8]
	bl GetLeaderEntity
	add r4, sp, 0x8
	adds r1, r4, 0
	bl sub_805FD74
	lsls r0, 24
	adds r0, r4, 0
	bl sub_805FD3C
	lsls r0, 24
	cmp r0, 0
	beq _0805F7C2
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_805FD74
	lsls r0, 24
	cmp r0, 0
	beq _0805F7C2
	movs r0, 0x1
	bl sub_8044C10
_0805F7C2:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	adds r1, r0, 0
	cmp r0, 0xC
	bne _0805F800
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0x10
	bl sub_8044D90
	ldrb r2, [r0]
	movs r1, 0x4
	orrs r1, r2
	strb r1, [r0]
	bl sub_805F1A0
	bl sub_8060D24
	b _0805F840
	.align 2, 0
_0805F7F0: .4byte 0xffffff00
_0805F7F4: .4byte 0xffff00ff
_0805F7F8: .4byte 0xff00ffff
_0805F7FC: .4byte 0x00ffffff
_0805F800:
	cmp r0, 0x35
	bne _0805F81E
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0x11
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048A68
	b _0805F83A
_0805F81E:
	cmp r0, 0x10
	bne _0805F848
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0x12
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048950
_0805F83A:
	lsls r0, 24
	cmp r0, 0
	bne _0805F8A8
_0805F840:
	movs r0, 0x1
	bl sub_8044C10
	b _0805F8A8
_0805F848:
	cmp r1, 0x2C
	bne _0805F8A8
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0x13
	bl sub_8044D90
	adds r4, r0, 0
	bl GetLeaderEntity
	adds r1, r4, 0
	bl sub_8048B9C
	lsls r0, 24
	cmp r0, 0
	bne _0805F8A8
	movs r0, 0x1
	bl sub_8044C10
	b _0805F8A8
_0805F872:
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x2
	bne _0805F8CE
	movs r0, 0x1
	bl sub_8044C10
	bl GetLeaderEntity
	bl sub_80643AC
	b _0805F8A8
_0805F88C:
	ldrh r0, [r0]
	movs r2, 0x80
	lsls r2, 2
	adds r1, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0805F8B4
	movs r0, 0x1
	bl sub_8044C10
	bl GetLeaderEntity
	bl sub_80647F0
_0805F8A8:
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	bne _0805F92A
	b _0805F8CE
_0805F8B4:
	bl GetLeaderEntity
	adds r1, r0, 0
	ldr r0, _0805F8D8
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0805F8DC
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0805F8CE:
	movs r3, 0x1
	negs r3, r3
	mov r10, r3
	b _0805F904
	.align 2, 0
_0805F8D8: .4byte gAvailablePokemonNames
_0805F8DC: .4byte gUnknown_80FDE18
_0805F8E0:
	ldr r0, [sp, 0x10]
	cmp r0, 0x3
	bne _0805F904
	bl sub_8064BE0
	ldr r0, _0805F91C
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	bne _0805F92A
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	bne _0805F92A
	movs r1, 0x1
	negs r1, r1
	mov r10, r1
_0805F904:
	ldr r2, [sp, 0x10]
	cmp r2, 0
	blt _0805F92A
	ldr r3, [sp, 0x14]
	cmp r3, 0
	bne _0805F920
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
	b _0805F240
	.align 2, 0
_0805F91C: .4byte gDungeonGlobalData
_0805F920:
	bl GetLeaderEntity
	movs r1, 0
	bl sub_806A2BC
_0805F92A:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	bl ResetRepeatTimers
	bl ResetUnusedInputStruct
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ShowFieldMenu

	thumb_func_start DrawFieldMenu
DrawFieldMenu:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _0805F994
	movs r0, 0
	strh r0, [r4, 0x18]
	movs r1, 0x5
	strh r1, [r4, 0x1A]
	strh r1, [r4, 0x1C]
	strh r0, [r4, 0x1E]
	strh r0, [r4, 0x4]
	movs r1, 0x2
	strh r1, [r4, 0x6]
	strh r0, [r4, 0xC]
	strh r0, [r4, 0xE]
	str r0, [r4]
	strh r0, [r4, 0x14]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	adds r0, r4, 0
	movs r1, 0x38
	bl sub_80137B0
	cmp r5, 0
	beq _0805F998
	movs r0, 0x7
	movs r1, 0
	bl sub_803EAF0
	b _0805F9A0
	.align 2, 0
_0805F994: .4byte gUnknown_202EE10
_0805F998:
	movs r0, 0x6
	movs r1, 0
	bl sub_803EAF0
_0805F9A0:
	movs r0, 0
	bl sub_80073B8
	bl GetLeaderEntity
	movs r1, 0x1
	bl ShouldAvoidEnemiesAndShowEffect
	lsls r0, 24
	cmp r0, 0
	beq _0805F9CC
	ldr r0, _0805F9C8
	movs r2, 0x2
	strb r2, [r0, 0x1]
	strb r2, [r0, 0x2]
	strb r2, [r0, 0x3]
	movs r1, 0x7
	strb r1, [r0, 0x4]
	strb r2, [r0, 0x5]
	b _0805F9DA
	.align 2, 0
_0805F9C8: .4byte gUnknown_202749A
_0805F9CC:
	ldr r1, _0805FBA0
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r0, [r1, 0x2]
	strb r0, [r1, 0x3]
	strb r0, [r1, 0x4]
	strb r0, [r1, 0x5]
_0805F9DA:
	ldr r4, _0805FBA4
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _0805FBA8
	ldr r2, [r0]
	movs r6, 0
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_call_draw_string
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _0805FBAC
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_call_draw_string
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _0805FBB0
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_call_draw_string
	adds r0, r4, 0
	movs r1, 0x3
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _0805FBB4
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_call_draw_string
	adds r0, r4, 0
	movs r1, 0x4
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _0805FBB8
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_call_draw_string
	movs r0, 0
	bl sub_80073E0
	cmp r5, 0
	bne _0805FA62
	b _0805FB92
_0805FA62:
	bl GetLeaderEntity
	ldr r7, [r0, 0x70]
	bl sub_805317C
	adds r5, r0, 0
	bl sub_8008ED0
	movs r4, 0x88
	subs r4, r0
	lsrs r0, r4, 31
	adds r4, r0
	asrs r4, 1
	movs r0, 0x1
	bl sub_80073B8
	str r6, [sp]
	adds r0, r4, 0
	movs r1, 0x2
	adds r2, r5, 0
	movs r3, 0x1
	bl xxx_call_draw_string
	movs r0, 0x1
	bl sub_80073E0
	movs r0, 0x2
	bl sub_80073B8
	ldr r0, _0805FBBC
	ldr r0, [r0]
	add r2, sp, 0x8
	add r3, sp, 0xC
	add r1, sp, 0x4
	bl DeconstructPlayTime
	movs r1, 0x9E
	lsls r1, 1
	adds r0, r7, r1
	ldr r0, [r0]
	bl RoundUpFixedPoint
	ldr r4, _0805FBC0
	str r0, [r4]
	movs r2, 0xA0
	lsls r2, 1
	adds r0, r7, r2
	ldr r0, [r0]
	bl RoundUpFixedPoint
	str r0, [r4, 0x4]
	ldr r0, _0805FBC4
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x73
	movs r1, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	ldr r0, _0805FBC8
	ldr r0, [r0]
	movs r1, 0x98
	lsls r1, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _0805FBCC
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x73
	movs r1, 0xC
	movs r3, 0x2
	bl xxx_format_and_draw
	ldr r5, _0805FBD0
	movs r0, 0
	bl GetWeather
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl GetWeatherName
	ldr r0, _0805FBD4
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x73
	movs r1, 0x18
	movs r3, 0x2
	bl xxx_format_and_draw
	ldr r0, [sp, 0x4]
	str r0, [r4]
	ldr r0, [sp, 0x8]
	str r0, [r4, 0x4]
	ldr r0, [sp, 0xC]
	str r0, [r4, 0x8]
	ldr r0, _0805FBD8
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x73
	movs r1, 0x24
	movs r3, 0x2
	bl xxx_format_and_draw
	movs r7, 0
	mov r8, r4
_0805FB3A:
	ldr r0, _0805FBDC
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _0805FBE0
	adds r0, r2
	adds r0, r1
	ldr r5, [r0]
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _0805FB86
	ldr r4, [r5, 0x70]
	ldr r0, _0805FBD0
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	mov r2, r8
	str r0, [r2]
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	str r0, [r2, 0x4]
	ldr r0, _0805FBE4
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	adds r1, r7, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	adds r7, 0xC
	cmp r7, 0x2F
	bgt _0805FB8C
_0805FB86:
	adds r6, 0x1
	cmp r6, 0x3
	ble _0805FB3A
_0805FB8C:
	movs r0, 0x2
	bl sub_80073E0
_0805FB92:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBA0: .4byte gUnknown_202749A
_0805FBA4: .4byte gUnknown_202EE10
_0805FBA8: .4byte gFieldMenuMovesPtr
_0805FBAC: .4byte gFieldMenuItemsPtr
_0805FBB0: .4byte gFieldMenuTeamPtr
_0805FBB4: .4byte gFieldMenuOthersPtr
_0805FBB8: .4byte gFieldMenuGroundPtr
_0805FBBC: .4byte gPlayTimeRef
_0805FBC0: .4byte gUnknown_202DE30
_0805FBC4: .4byte gUnknown_80F9174
_0805FBC8: .4byte gTeamInventory_203B460
_0805FBCC: .4byte gUnknown_80F9190
_0805FBD0: .4byte gAvailablePokemonNames
_0805FBD4: .4byte gUnknown_80F91A8
_0805FBD8: .4byte gUnknown_80F91C8
_0805FBDC: .4byte gDungeonGlobalData
_0805FBE0: .4byte 0x0001357c
_0805FBE4: .4byte gUnknown_80F91E0
	thumb_func_end DrawFieldMenu

	thumb_func_start sub_805FBE8
sub_805FBE8:
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r0, 0x8
	adds r1, r5, 0
	bl sub_803EAF0
_0805FBF4:
	movs r0, 0xE
	bl sub_803E46C
	bl xxx_draw_string_80144C4
	bl sub_8016080
	adds r4, r0, 0
	cmp r4, 0
	beq _0805FBF4
	bl sub_80160D8
	movs r0, 0xE
	bl sub_803E46C
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	cmp r4, 0x3
	bne _0805FC28
	ldrb r0, [r5]
	cmp r0, 0
	beq _0805FC28
	movs r0, 0x1
	b _0805FC2A
_0805FC28:
	movs r0, 0
_0805FC2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_805FBE8

	thumb_func_start sub_805FC30
sub_805FC30:
	push {r4-r6,lr}
	sub sp, 0x78
	adds r4, r0, 0
	adds r6, r1, 0
	add r5, sp, 0x4
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r3, 0x3
	str r3, [sp, 0x8]
	str r3, [sp, 0x20]
	movs r2, 0
	movs r0, 0x16
	strh r0, [r5, 0x20]
	movs r1, 0x4
	strh r1, [r5, 0x22]
	movs r0, 0x6
	strh r0, [r5, 0x24]
	strh r1, [r5, 0x26]
	strh r1, [r5, 0x28]
	str r3, [sp, 0x38]
	str r3, [sp, 0x50]
	add r0, sp, 0x4
	ldm r4!, {r1,r3,r5}
	stm r0!, {r1,r3,r5}
	ldm r4!, {r1,r3,r5}
	stm r0!, {r1,r3,r5}
	add r1, sp, 0x4
	movs r0, 0x80
	strb r0, [r1]
	ldr r4, _0805FD30
	strh r2, [r4, 0x18]
	ldr r5, _0805FD34
	ldr r0, [r5]
	strh r0, [r4, 0x1C]
	strh r0, [r4, 0x1A]
	strh r2, [r4, 0x1E]
	strh r2, [r4, 0x20]
	strh r2, [r4, 0x4]
	strh r2, [r4, 0x6]
	movs r0, 0x1
	str r0, [r4]
	strh r2, [r4, 0xC]
	strh r2, [r4, 0xE]
	ldr r0, [r4, 0x8]
	str r0, [r4, 0x14]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	add r0, sp, 0x4
	strh r6, [r0, 0x20]
	adds r1, r0, 0
	movs r0, 0x1C
	subs r0, r6
	strh r0, [r1, 0x24]
	movs r1, 0x1C
	ldrsh r0, [r4, r1]
	movs r1, 0
	bl sub_80095E4
	add r2, sp, 0x4
	adds r1, r2, 0
	strh r0, [r1, 0x28]
	strh r0, [r2, 0x26]
	adds r0, r1, 0
	movs r1, 0
	bl sub_803ECB4
	add r0, sp, 0x4
	movs r2, 0x26
	ldrsh r1, [r0, r2]
	lsls r1, 3
	adds r0, r4, 0
	bl sub_80137B0
	movs r0, 0x1
	bl sub_80073B8
	movs r6, 0
	ldr r0, [r5]
	cmp r6, r0
	bge _0805FD20
	add r5, sp, 0x64
_0805FCDC:
	adds r0, r6, 0
	bl sub_8044F3C
	lsls r0, 24
	movs r4, 0x2
	cmp r0, 0
	beq _0805FCEC
	movs r4, 0x7
_0805FCEC:
	adds r0, r6, 0
	bl sub_8044EC8
	adds r3, r0, 0
	adds r0, r5, 0
	ldr r1, _0805FD38
	adds r2, r4, 0
	bl sprintf_2
	ldr r0, _0805FD30
	adds r1, r6, 0
	bl sub_8013800
	adds r1, r0, 0
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	adds r2, r5, 0
	movs r3, 0x1
	bl xxx_call_draw_string
	adds r6, 0x1
	ldr r0, _0805FD34
	ldr r0, [r0]
	cmp r6, r0
	blt _0805FCDC
_0805FD20:
	movs r0, 0x1
	bl sub_80073E0
	add sp, 0x78
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD30: .4byte gUnknown_202EE10
_0805FD34: .4byte gUnknown_202EE6C
_0805FD38: .4byte gUnknown_8106B50
	thumb_func_end sub_805FC30

	thumb_func_start sub_805FD3C
sub_805FD3C:
	push {r4,lr}
	adds r4, r0, 0
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	adds r2, r0, 0
	movs r1, 0
	strb r1, [r4]
	strb r1, [r4, 0x1]
	strb r1, [r4, 0x2]
	strb r1, [r4, 0x3]
	cmp r2, 0xA
	bne _0805FD5E
	movs r0, 0x1
	strb r0, [r4]
	strb r0, [r4, 0x3]
_0805FD5E:
	cmp r2, 0x3E
	bne _0805FD6A
	movs r0, 0x1
	strb r0, [r4]
	strb r1, [r4, 0x1]
	strb r0, [r4, 0x3]
_0805FD6A:
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_805FD3C

	thumb_func_start sub_805FD74
sub_805FD74:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xE4
	mov r10, r0
	adds r7, r1, 0
	movs r0, 0
	mov r9, r0
	movs r1, 0x1
	str r1, [sp, 0xD0]
	movs r2, 0
	str r2, [sp, 0xD4]
	movs r5, 0
	str r5, [sp, 0xD8]
	str r0, [sp, 0xDC]
	mov r1, r10
	ldr r1, [r1, 0x70]
	str r1, [sp, 0xE0]
	add r4, sp, 0x68
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x6C]
	add r0, sp, 0x70
	movs r6, 0
	movs r1, 0x2
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r1, sp, 0x74
	movs r0, 0x12
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x76
	movs r1, 0x10
	strh r1, [r0]
	add r0, sp, 0x78
	strh r1, [r0]
	add r5, sp, 0xC8
	str r5, [sp, 0x7C]
	movs r1, 0x3
	str r1, [sp, 0x84]
	add r0, sp, 0x98
	str r1, [r0, 0x4]
	add r0, sp, 0xB0
	str r1, [r0, 0x4]
	add r0, sp, 0x8
	adds r1, r4, 0
	movs r2, 0x60
	bl memcpy
	ldr r0, _0805FE40
	strb r6, [r0]
	mov r2, r9
	strh r2, [r0, 0x4]
	strh r2, [r0, 0x6]
	cmp r7, 0
	beq _0805FE18
	ldrb r1, [r7]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	str r0, [sp, 0xD8]
	ldrb r1, [r7, 0x1]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	str r0, [sp, 0xD0]
	ldrb r1, [r7, 0x2]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	str r0, [sp, 0xD4]
	ldrb r1, [r7, 0x3]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	str r0, [sp, 0xDC]
_0805FE18:
	ldr r0, _0805FE44
	mov r5, r10
	str r5, [sp]
	ldr r1, [sp, 0xD4]
	ldr r2, [sp, 0xD0]
	ldr r3, [sp, 0xDC]
	bl sub_8060D64
	ldr r1, _0805FE48
	str r0, [r1]
	cmp r0, 0
	bne _0805FEA6
	ldr r0, _0805FE4C
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	movs r0, 0x1
	b _080603BE
	.align 2, 0
_0805FE40: .4byte gUnknown_202F238
_0805FE44: .4byte gUnknown_202F248
_0805FE48: .4byte gUnknown_202F258
_0805FE4C: .4byte gUnknown_80F8B24
_0805FE50:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x1
	mov r9, r0
	b _0806039C
_0805FE5E:
	ldr r0, [sp, 0xE0]
	adds r0, 0x44
	movs r1, 0xC
	bl SetAction
	ldr r0, _0805FE78
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	ldr r2, [sp, 0xE0]
	str r0, [r2, 0x48]
	str r1, [r2, 0x4C]
	b _0805FE88
	.align 2, 0
_0805FE78: .4byte gUnknown_202F238
_0805FE7C:
	ldr r0, _0805FE98
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	ldr r2, [sp, 0xE0]
	str r0, [r2, 0x50]
	str r1, [r2, 0x54]
_0805FE88:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r5, 0
	mov r9, r5
	b _0806039C
	.align 2, 0
_0805FE98: .4byte gUnknown_202F238
_0805FE9C:
	ldr r1, [r1]
	ldr r0, [sp, 0xE0]
	adds r0, 0x50
	strb r1, [r0]
	b _0806033C
_0805FEA6:
	movs r1, 0
	mov r8, r1
	ldr r0, _0805FFA8
	mov r2, r9
	str r2, [r0]
_0805FEB0:
	movs r5, 0
	mov r9, r5
	movs r4, 0
	ldr r6, _0805FFAC
_0805FEB8:
	lsls r1, r4, 2
	ldr r0, [r6]
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805FEEC
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0805FEEC
	movs r0, 0xFB
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, 0
	movs r1, 0xA
	bl __divsi3
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0xA
	bl __modsi3
	ldr r1, _0805FFA8
	str r0, [r1]
_0805FEEC:
	adds r4, 0x1
	cmp r4, 0x13
	ble _0805FEB8
	movs r6, 0
_0805FEF4:
	ldr r0, _0805FFB0
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _0805FFB4
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	adds r5, r6, 0x1
	mov r12, r5
	cmp r0, 0
	beq _0805FF66
	ldr r0, [r4, 0x70]
	adds r2, r0, 0
	adds r2, 0x60
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0805FF66
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0805FF66
	movs r0, 0xFB
	ands r0, r1
	strb r0, [r2]
	movs r4, 0
	ldr r0, _0805FFB8
	ldr r1, [r0]
	adds r5, r0, 0
	ldr r7, _0805FFA8
	cmp r4, r1
	bge _0805FF62
	ldr r0, _0805FFBC
	movs r2, 0
	ldrsh r1, [r0, r2]
	adds r3, r0, 0
	adds r2, r6, 0x4
	cmp r1, r2
	beq _0805FF60
_0805FF4C:
	adds r4, 0x1
	ldr r0, [r5]
	cmp r4, r0
	bge _0805FF62
	lsls r0, r4, 1
	adds r0, r3
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, r2
	bne _0805FF4C
_0805FF60:
	mov r8, r4
_0805FF62:
	movs r0, 0
	str r0, [r7]
_0805FF66:
	mov r6, r12
	cmp r6, 0x3
	ble _0805FEF4
	add r2, sp, 0x8
	str r2, [sp]
	add r5, sp, 0xC8
	str r5, [sp, 0x4]
	mov r0, r8
	mov r1, r10
	ldr r2, [sp, 0xD8]
	ldr r3, [sp, 0xD4]
	bl CreateFieldItemMenu
	ldr r1, _0805FFBC
	ldr r0, _0805FFC0
	movs r2, 0x1E
	ldrsh r0, [r0, r2]
	lsls r0, 1
	adds r0, r1
	movs r5, 0
	ldrsh r2, [r0, r5]
	cmp r2, 0x3
	ble _0805FFE6
	ldr r0, _0805FFB0
	ldr r1, [r0]
	subs r0, r2, 0x4
	lsls r0, 2
	ldr r2, _0805FFB4
	adds r1, r2
	adds r1, r0
	ldr r4, [r1]
	b _0805FFE8
	.align 2, 0
_0805FFA8: .4byte gUnknown_202F240
_0805FFAC: .4byte gTeamInventory_203B460
_0805FFB0: .4byte gDungeonGlobalData
_0805FFB4: .4byte 0x0001357c
_0805FFB8: .4byte gUnknown_202F258
_0805FFBC: .4byte gUnknown_202F248
_0805FFC0: .4byte gUnknown_202EE10
_0805FFC4:
	bl sub_8083D44
	mov r0, r10
	adds r0, 0x4
	bl sub_8060890
	movs r5, 0x3
	mov r9, r5
	b _08060200
_0805FFD6:
	bl sub_8083D08
	ldr r0, [sp, 0xE0]
	adds r0, 0x44
	bl sub_8060CE8
	movs r0, 0
	b _080602F0
_0805FFE6:
	mov r4, r10
_0805FFE8:
	adds r0, r4, 0
	movs r1, 0
	bl sub_806A2BC
	adds r0, r4, 0x4
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
	ldr r6, _08060050
	adds r7, r6, 0
	adds r7, 0x2B
_08060002:
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x14
	bl sub_803E46C
	ldr r1, [sp, 0xD4]
	cmp r1, 0
	beq _08060016
	b _080601F4
_08060016:
	ldr r4, _08060054
	ldr r0, [r4]
	cmp r0, 0x1
	ble _0806008C
	ldr r0, _08060058
	ldrh r1, [r0, 0x2]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08060034
	adds r0, r6, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806005C
_08060034:
	movs r0, 0
	bl sub_8083CE0
	movs r2, 0x1
	negs r2, r2
	add r8, r2
	mov r5, r8
	cmp r5, 0
	bge _0806007E
	ldr r0, [r4]
	subs r0, 0x1
	mov r8, r0
	b _0806007E
	.align 2, 0
_08060050: .4byte gUnknown_202EE10
_08060054: .4byte gUnknown_202F258
_08060058: .4byte gRealInputs
_0806005C:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0806006A
	ldrb r0, [r7]
	cmp r0, 0
	beq _0806008C
_0806006A:
	movs r0, 0
	bl sub_8083CE0
	movs r2, 0x1
	add r8, r2
	ldr r0, [r4]
	cmp r8, r0
	bne _0806007E
	movs r5, 0
	mov r8, r5
_0806007E:
	ldr r0, [sp, 0xD4]
	ldr r1, _08060088
	str r0, [r1]
	b _08060200
	.align 2, 0
_08060088: .4byte gUnknown_202F240
_0806008C:
	ldr r0, _08060134
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080600B2
	mov r0, r8
	bl sub_8060860
	lsls r0, 24
	cmp r0, 0
	beq _080600B2
	movs r0, 0x1
	bl sub_8083CE0
	ldr r0, _08060138
	movs r1, 0x1
	bl sub_80136E0
_080600B2:
	ldr r0, _08060134
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080600D8
	mov r0, r8
	bl sub_8060860
	lsls r0, 24
	cmp r0, 0
	beq _080600D8
	movs r0, 0x1
	bl sub_8083CE0
	ldr r0, _08060138
	movs r1, 0x1
	bl sub_8013744
_080600D8:
	ldr r0, _08060134
	ldrh r2, [r0, 0x2]
	movs r1, 0x4
	ands r1, r2
	adds r2, r0, 0
	cmp r1, 0
	beq _080601A0
	ldr r4, _0806013C
	mov r5, r8
	lsls r0, r5, 1
	adds r0, r4
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x1
	bgt _080601A0
	movs r7, 0x1
	movs r0, 0x99
	lsls r0, 1
	bl PlaySoundEffect
	bl sub_8047158
	bl ConvertMoneyItemToMoney
	movs r0, 0
	ldr r2, _08060140
	str r0, [r2]
	mov r5, r10
	str r5, [sp]
	add r0, sp, 0x68
	ldr r1, [sp, 0xD4]
	ldr r2, [sp, 0xD0]
	ldr r3, [sp, 0xDC]
	bl sub_8060D64
	adds r3, r0, 0
	ldr r0, _08060144
	ldr r0, [r0]
	cmp r0, r3
	bne _08060164
	movs r6, 0
	cmp r6, r3
	bge _0806015E
	add r2, sp, 0x68
	b _08060152
	.align 2, 0
_08060134: .4byte gRealInputs
_08060138: .4byte gUnknown_202EE10
_0806013C: .4byte gUnknown_202F248
_08060140: .4byte gUnknown_202F240
_08060144: .4byte gUnknown_202F258
_08060148:
	adds r4, 0x2
	adds r2, 0x2
	adds r6, 0x1
	cmp r6, r3
	bge _0806015E
_08060152:
	movs r0, 0
	ldrsh r1, [r2, r0]
	movs r5, 0
	ldrsh r0, [r4, r5]
	cmp r1, r0
	beq _08060148
_0806015E:
	cmp r6, r3
	bne _08060164
	movs r7, 0
_08060164:
	cmp r7, 0
	beq _08060200
	movs r0, 0
	mov r8, r0
	ldr r1, _08060194
	str r0, [r1]
	ldr r0, _08060198
	str r3, [r0]
	movs r6, 0
	adds r5, r0, 0
	cmp r6, r3
	bge _08060200
	adds r3, r5, 0
	add r1, sp, 0x68
	ldr r2, _0806019C
_08060182:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, 0x2
	adds r2, 0x2
	adds r6, 0x1
	ldr r0, [r3]
	cmp r6, r0
	blt _08060182
	b _08060200
	.align 2, 0
_08060194: .4byte gUnknown_202F240
_08060198: .4byte gUnknown_202F258
_0806019C: .4byte gUnknown_202F248
_080601A0:
	ldrh r1, [r2, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080601B6
	ldr r2, _080601C8
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _080601CC
_080601B6:
	bl sub_8083D08
	mov r0, r10
	adds r0, 0x4
	bl sub_8060890
	movs r2, 0x1
	mov r9, r2
	b _08060200
	.align 2, 0
_080601C8: .4byte gUnknown_202EE10
_080601CC:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080601D6
	b _0805FFC4
_080601D6:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080601EA
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _080601EA
	b _08060002
_080601EA:
	bl sub_8083D30
	movs r5, 0x2
	mov r9, r5
	b _08060200
_080601F4:
	mov r0, r10
	adds r0, 0x4
	bl sub_8060890
	movs r0, 0x1
	mov r9, r0
_08060200:
	ldr r4, _0806034C
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x14
	bl sub_803E46C
	ldr r1, _08060350
	movs r2, 0x1E
	ldrsh r0, [r4, r2]
	lsls r0, 1
	adds r0, r1
	movs r5, 0
	ldrsh r0, [r0, r5]
	cmp r0, 0x1
	bgt _08060232
	ldr r0, _08060354
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08060232
	movs r0, 0x2
	mov r9, r0
_08060232:
	mov r1, r9
	cmp r1, 0x2
	bne _0806023A
	b _0805FE50
_0806023A:
	cmp r1, 0
	bne _08060240
	b _0805FEB0
_08060240:
	cmp r1, 0x3
	bne _08060246
	b _0805FE5E
_08060246:
	ldr r4, _0806034C
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	ldr r5, _08060358
	str r0, [r5]
	ldr r0, [sp, 0xD8]
	cmp r0, 0
	beq _08060258
	b _0805FE7C
_08060258:
	mov r0, r10
	bl sub_8060900
	movs r2, 0x1E
	ldrsh r1, [r4, r2]
	add r0, sp, 0xC8
	bl sub_8060800
	add r0, sp, 0x8
	movs r1, 0x16
	bl sub_805FC30
	ldr r6, _0806035C
	adds r7, r4, 0
	adds r7, 0x2A
_08060276:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x14
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0806029A
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_0806029A:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080602B2
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_080602B2:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080602C6
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _080602DA
_080602C6:
	movs r5, 0x18
	ldrsh r0, [r4, r5]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _080602D6
	b _0805FFD6
_080602D6:
	bl sub_8083D30
_080602DA:
	ldrh r1, [r6, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080602EA
	ldrb r0, [r7]
	cmp r0, 0
	beq _08060276
_080602EA:
	bl sub_8083D30
	movs r0, 0x1
_080602F0:
	mov r9, r0
	ldr r0, _0806034C
	bl AddMenuCursorSprite
	movs r0, 0x14
	bl sub_803E46C
	ldr r0, _08060360
	ldr r0, [r0]
	ldr r1, _08060364
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	mov r2, r9
	cmp r2, 0x1
	bne _08060318
	ldr r5, [sp, 0xD4]
	cmp r5, 0
	bne _08060318
	b _0805FEB0
_08060318:
	ldr r0, [sp, 0xE0]
	adds r0, 0x44
	ldrh r1, [r0]
	adds r0, r1, 0
	subs r0, 0x37
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08060330
	adds r0, r1, 0
	cmp r0, 0x3E
	bne _0806036C
_08060330:
	ldr r0, _08060368
	ldrb r0, [r0]
	subs r0, 0x90
	ldr r1, [sp, 0xE0]
	adds r1, 0x48
	strb r0, [r1]
_0806033C:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0
	mov r9, r0
	b _0806039C
	.align 2, 0
_0806034C: .4byte gUnknown_202EE10
_08060350: .4byte gUnknown_202F248
_08060354: .4byte gTeamInventory_203B460
_08060358: .4byte gUnknown_202F240
_0806035C: .4byte gRealInputs
_08060360: .4byte gDungeonGlobalData
_08060364: .4byte 0x00018212
_08060368: .4byte gUnknown_202F238
_0806036C:
	cmp r0, 0x36
	bne _08060390
	add r0, sp, 0xCC
	movs r1, 0x2
	bl DrawFieldGiveItemMenu
	add r1, sp, 0xCC
	cmp r0, 0
	beq _08060380
	b _0805FE9C
_08060380:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x1
	bl sub_8044C10
	b _0805FEB0
_08060390:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r1, 0
	mov r9, r1
_0806039C:
	ldr r0, _080603D0
	ldr r0, [r0]
	ldr r2, _080603D4
	adds r0, r2
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x2
	movs r1, 0x61
	bl sub_803E708
	bl sub_804AA60
	movs r0, 0x2
	movs r1, 0x61
	bl sub_803E708
	mov r0, r9
_080603BE:
	add sp, 0xE4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080603D0: .4byte gDungeonGlobalData
_080603D4: .4byte 0x00018212
	thumb_func_end sub_805FD74

	thumb_func_start CreateFieldItemMenu
CreateFieldItemMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x78
	adds r7, r0, 0
	mov r9, r1
	ldr r6, [sp, 0x98]
	ldr r0, [sp, 0x9C]
	mov r8, r0
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x6C]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x70]
	add r1, sp, 0x4
	ldr r0, _08060478
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	mov r0, r9
	ldr r0, [r0, 0x70]
	str r0, [sp, 0x74]
	mov r0, r8
	adds r1, r7, 0
	bl sub_8060800
	mov r10, r0
	ldr r5, _0806047C
	ldr r0, _08060480
	ldr r0, [r0]
	movs r4, 0
	movs r1, 0
	strh r0, [r5, 0x18]
	strh r1, [r5, 0x1A]
	strh r7, [r5, 0x1E]
	ldr r0, _08060484
	ldr r0, [r0]
	strh r0, [r5, 0x20]
	strh r1, [r5, 0x4]
	str r1, [r5]
	strh r1, [r5, 0x14]
	adds r0, r5, 0
	adds r0, 0x28
	bl sub_801317C
	ldr r3, _08060488
	ldr r0, [r3]
	ldr r2, _0806048C
	adds r0, r2
	strb r4, [r0]
	ldr r1, _08060490
	lsls r0, r7, 1
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x2
	beq _08060494
	cmp r0, 0x2
	bgt _080604AA
	cmp r0, 0
	blt _080604AA
	movs r1, 0x10
	strh r1, [r6, 0x10]
	strh r1, [r6, 0xE]
	movs r0, 0xC
	mov r4, r8
	strb r0, [r4, 0x2]
	strh r1, [r5, 0x6]
	movs r0, 0xA
	strh r0, [r5, 0x1C]
	ldr r0, [r3]
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
	b _080604C0
	.align 2, 0
_08060478: .4byte gUnknown_8106B6C
_0806047C: .4byte gUnknown_202EE10
_08060480: .4byte gUnknown_202F240
_08060484: .4byte gUnknown_202F258
_08060488: .4byte gDungeonGlobalData
_0806048C: .4byte 0x00018212
_08060490: .4byte gUnknown_202F248
_08060494:
	movs r0, 0x4
	strh r0, [r6, 0x10]
	strh r0, [r6, 0xE]
	movs r0, 0x6
	mov r1, r8
	strb r0, [r1, 0x2]
	movs r0, 0x12
	strh r0, [r5, 0x6]
	movs r0, 0x1
	strh r0, [r5, 0x1C]
	b _080604C0
_080604AA:
	movs r0, 0x4
	strh r0, [r6, 0x10]
	strh r0, [r6, 0xE]
	movs r0, 0xC
	mov r2, r8
	strb r0, [r2, 0x2]
	ldr r1, _080604DC
	movs r0, 0x12
	strh r0, [r1, 0x6]
	movs r0, 0x1
	strh r0, [r1, 0x1C]
_080604C0:
	ldr r3, [sp, 0x6C]
	cmp r3, 0
	beq _080604E0
	ldr r1, _080604DC
	ldrh r0, [r1, 0xC]
	adds r0, 0x40
	strh r0, [r1, 0xC]
	movs r0, 0xA
	strh r0, [r6, 0x8]
	adds r1, r6, 0
	adds r1, 0x18
	add r0, sp, 0x4
	b _080604EC
	.align 2, 0
_080604DC: .4byte gUnknown_202EE10
_080604E0:
	movs r0, 0x2
	strh r0, [r6, 0x8]
	adds r1, r6, 0
	adds r1, 0x18
	adds r0, r6, 0
	adds r0, 0x48
_080604EC:
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_803ECB4
	ldr r1, _0806054C
	ldr r5, _08060550
	movs r4, 0
	ldrsh r0, [r1, r4]
	adds r0, 0x10
	lsls r0, 3
	movs r2, 0
	mov r8, r2
	strh r0, [r5, 0xC]
	movs r3, 0x2
	ldrsh r0, [r1, r3]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r5, 0xE]
	adds r0, r5, 0
	movs r1, 0x70
	bl sub_80137B0
	movs r0, 0
	bl sub_80073B8
	mov r4, r10
	subs r0, r7, r4
	lsls r0, 3
	adds r6, r0, 0
	adds r6, 0xC
	ldr r0, _08060554
	lsls r1, r7, 1
	adds r0, r1, r0
	movs r2, 0
	ldrsh r0, [r0, r2]
	adds r2, r1, 0
	cmp r0, 0x1
	beq _080605CC
	cmp r0, 0x1
	bgt _08060558
	cmp r0, 0
	beq _08060564
	b _08060718
	.align 2, 0
_0806054C: .4byte gUnknown_2027370
_08060550: .4byte gUnknown_202EE10
_08060554: .4byte gUnknown_202F248
_08060558:
	cmp r0, 0x2
	beq _0806063C
	cmp r0, 0x3
	bne _08060562
	b _080606B0
_08060562:
	b _08060718
_08060564:
	ldr r0, _080605C0
	ldr r2, [r0]
	mov r3, r8
	str r3, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	movs r4, 0
	adds r6, r5, 0
	movs r7, 0
	add r5, sp, 0x1C
_0806057E:
	lsls r1, r4, 2
	ldr r0, _080605C4
	ldr r0, [r0]
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08060592
	b _08060794
_08060592:
	ldrh r0, [r6, 0x1A]
	adds r0, 0x1
	strh r0, [r6, 0x1A]
	adds r0, r5, 0
	adds r1, r2, 0
	ldr r2, _080605C8
	bl sub_8090E14
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_8013800
	adds r1, r0, 0
	str r7, [sp]
	movs r0, 0x8
	adds r2, r5, 0
	movs r3, 0
	bl xxx_format_and_draw
	adds r4, 0x1
	cmp r4, 0x9
	ble _0806057E
	b _08060794
	.align 2, 0
_080605C0: .4byte gTeamToolboxAPtr
_080605C4: .4byte gTeamInventory_203B460
_080605C8: .4byte gUnknown_8106B60
_080605CC:
	ldr r0, _08060630
	ldr r2, [r0]
	mov r4, r8
	str r4, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	movs r4, 0
	adds r6, r5, 0
	movs r7, 0
	add r5, sp, 0x1C
_080605E6:
	lsls r3, r4, 2
	ldr r0, _08060634
	ldr r2, [r0]
	adds r0, r3, r2
	adds r0, 0x28
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080605FC
	b _08060794
_080605FC:
	ldrh r0, [r6, 0x1A]
	adds r0, 0x1
	strh r0, [r6, 0x1A]
	adds r1, r3, 0
	adds r1, 0x28
	adds r1, r2, r1
	adds r0, r5, 0
	ldr r2, _08060638
	bl sub_8090E14
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_8013800
	adds r1, r0, 0
	str r7, [sp]
	movs r0, 0x8
	adds r2, r5, 0
	movs r3, 0
	bl xxx_format_and_draw
	adds r4, 0x1
	cmp r4, 0x9
	ble _080605E6
	b _08060794
	.align 2, 0
_08060630: .4byte gTeamToolboxBPtr
_08060634: .4byte gTeamInventory_203B460
_08060638: .4byte gUnknown_8106B60
_0806063C:
	mov r1, r9
	movs r2, 0x4
	ldrsh r0, [r1, r2]
	movs r3, 0x6
	ldrsh r1, [r1, r3]
	bl GetMapTile_1
	ldr r0, [r0, 0x14]
	bl GetItemData
	adds r7, r0, 0
	ldr r0, _080606A8
	ldr r2, [r0]
	mov r4, r8
	str r4, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldrb r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060698
	ldrh r0, [r5, 0x1A]
	adds r0, 0x1
	strh r0, [r5, 0x1A]
	add r4, sp, 0x1C
	ldr r2, _080606AC
	adds r0, r4, 0
	adds r1, r7, 0
	bl sub_8090E14
	adds r0, r5, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	mov r0, r8
	str r0, [sp]
	movs r0, 0x8
	adds r2, r4, 0
	movs r3, 0
	bl xxx_format_and_draw
_08060698:
	ldr r1, [sp, 0x70]
	cmp r1, 0
	beq _08060794
	mov r2, r8
	strh r2, [r5, 0xA]
	strh r2, [r5, 0x8]
	b _08060794
	.align 2, 0
_080606A8: .4byte gFieldItemMenuGroundTextPtr
_080606AC: .4byte gUnknown_8106B60
_080606B0:
	mov r3, r9
	ldr r0, [r3, 0x70]
	adds r7, r0, 0
	adds r7, 0x60
	ldr r0, _0806070C
	ldr r1, [sp, 0x74]
	movs r2, 0
	bl SetMessageArgument_2
	ldr r0, _08060710
	ldr r2, [r0]
	mov r4, r8
	str r4, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldrb r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060794
	ldrh r0, [r5, 0x1A]
	adds r0, 0x1
	strh r0, [r5, 0x1A]
	add r4, sp, 0x1C
	ldr r2, _08060714
	adds r0, r4, 0
	adds r1, r7, 0
	bl sub_8090E14
	adds r0, r5, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	mov r0, r8
	str r0, [sp]
	movs r0, 0x8
	adds r2, r4, 0
	movs r3, 0
	bl xxx_format_and_draw
	b _08060794
	.align 2, 0
_0806070C: .4byte gAvailablePokemonNames
_08060710: .4byte gUnknown_80FE940
_08060714: .4byte gUnknown_8106B60
_08060718:
	ldr r0, _080607E0
	ldr r1, [r0]
	ldr r0, _080607E4
	adds r0, r2, r0
	movs r2, 0
	ldrsh r0, [r0, r2]
	subs r0, 0x4
	lsls r0, 2
	ldr r3, _080607E8
	adds r1, r3
	adds r1, r0
	ldr r4, [r1]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08060794
	ldr r1, [r4, 0x70]
	adds r7, r1, 0
	adds r7, 0x60
	ldr r0, _080607EC
	movs r2, 0
	bl SetMessageArgument_2
	ldr r0, _080607F0
	ldr r2, [r0]
	movs r4, 0
	mov r8, r4
	str r4, [sp]
	adds r0, r6, 0
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldrb r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060794
	ldr r4, _080607F4
	ldrh r0, [r4, 0x1A]
	adds r0, 0x1
	strh r0, [r4, 0x1A]
	add r5, sp, 0x1C
	ldr r2, _080607F8
	adds r0, r5, 0
	adds r1, r7, 0
	bl sub_8090E14
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	mov r0, r8
	str r0, [sp]
	movs r0, 0x8
	adds r2, r5, 0
	movs r3, 0
	bl xxx_format_and_draw
_08060794:
	ldr r2, _080607F4
	movs r3, 0x18
	ldrsh r1, [r2, r3]
	movs r4, 0x1A
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _080607A6
	movs r0, 0
	strh r0, [r2, 0x18]
_080607A6:
	movs r0, 0
	bl sub_80073E0
	ldr r0, [sp, 0x6C]
	cmp r0, 0
	beq _080607D0
	movs r0, 0x1
	bl sub_80073B8
	ldr r0, _080607FC
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	movs r1, 0x2
	movs r3, 0x1
	bl xxx_format_and_draw
	movs r0, 0x1
	bl sub_80073E0
_080607D0:
	add sp, 0x78
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080607E0: .4byte gDungeonGlobalData
_080607E4: .4byte gUnknown_202F248
_080607E8: .4byte 0x0001357c
_080607EC: .4byte gAvailablePokemonNames
_080607F0: .4byte gUnknown_80FE940
_080607F4: .4byte gUnknown_202EE10
_080607F8: .4byte gUnknown_8106B60
_080607FC: .4byte gWhichTextPtr1
	thumb_func_end CreateFieldItemMenu

	thumb_func_start sub_8060800
sub_8060800:
	push {r4-r7,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	movs r1, 0
	ldr r0, _0806083C
	ldr r2, [r0]
	mov r12, r0
	ldr r6, _08060840
	cmp r1, r2
	bge _08060828
	adds r3, r6, 0
_08060816:
	movs r7, 0
	ldrsh r0, [r3, r7]
	cmp r0, 0x1
	bgt _08060820
	adds r1, 0x1
_08060820:
	adds r3, 0x2
	subs r2, 0x1
	cmp r2, 0
	bne _08060816
_08060828:
	lsls r0, r4, 1
	adds r0, r6
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, 0x1
	bgt _08060844
	adds r3, r4, 0
	adds r2, r1, 0
	movs r1, 0
	b _0806084C
	.align 2, 0
_0806083C: .4byte gUnknown_202F258
_08060840: .4byte gUnknown_202F248
_08060844:
	subs r3, r4, r1
	mov r7, r12
	ldr r0, [r7]
	subs r2, r0, r1
_0806084C:
	cmp r5, 0
	beq _08060858
	movs r0, 0
	strb r2, [r5]
	strb r3, [r5, 0x1]
	strb r0, [r5, 0x3]
_08060858:
	adds r0, r1, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8060800

	thumb_func_start sub_8060860
sub_8060860:
	push {lr}
	adds r1, r0, 0
	ldr r0, _08060880
	movs r2, 0x1A
	ldrsh r0, [r0, r2]
	cmp r0, 0x1
	ble _0806087C
	ldr r0, _08060884
	lsls r1, 1
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	ble _08060888
_0806087C:
	movs r0, 0
	b _0806088A
	.align 2, 0
_08060880: .4byte gUnknown_202EE10
_08060884: .4byte gUnknown_202F248
_08060888:
	movs r0, 0x1
_0806088A:
	pop {r1}
	bx r1
	thumb_func_end sub_8060860

	thumb_func_start sub_8060890
sub_8060890:
	push {r4,lr}
	adds r3, r0, 0
	ldr r1, _080608B4
	ldr r2, _080608B8
	movs r4, 0x1E
	ldrsh r0, [r2, r4]
	lsls r0, 1
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x1
	beq _080608D0
	cmp r0, 0x1
	bgt _080608BC
	cmp r0, 0
	beq _080608C2
	b _080608E8
	.align 2, 0
_080608B4: .4byte gUnknown_202F248
_080608B8: .4byte gUnknown_202EE10
_080608BC:
	cmp r0, 0x2
	beq _080608DC
	b _080608E8
_080608C2:
	ldr r1, _080608CC
	ldrb r0, [r2, 0x18]
	adds r0, 0x1
	b _080608EC
	.align 2, 0
_080608CC: .4byte gUnknown_202F238
_080608D0:
	ldr r1, _080608D8
	ldrb r0, [r2, 0x18]
	adds r0, 0xB
	b _080608EC
	.align 2, 0
_080608D8: .4byte gUnknown_202F238
_080608DC:
	ldr r1, _080608E4
	movs r0, 0x80
	b _080608EC
	.align 2, 0
_080608E4: .4byte gUnknown_202F238
_080608E8:
	ldr r1, _080608FC
	subs r0, 0x74
_080608EC:
	strb r0, [r1]
	ldrh r0, [r3]
	strh r0, [r1, 0x4]
	ldrh r0, [r3, 0x2]
	strh r0, [r1, 0x6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080608FC: .4byte gUnknown_202F238
	thumb_func_end sub_8060890

	thumb_func_start sub_8060900
sub_8060900:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r9, r0
	ldr r4, _08060964
	adds r1, r4, 0
	movs r2, 0xA
	bl sub_8044CC8
	adds r7, r0, 0
	mov r0, r9
	ldr r0, [r0, 0x70]
	mov r10, r0
	ldr r1, _08060968
	movs r0, 0
	str r0, [r1]
	ldrb r0, [r4]
	cmp r0, 0x8F
	bls _0806092C
	b _08060BD0
_0806092C:
	cmp r0, 0x80
	bne _080609B0
	ldrb r1, [r7, 0x2]
	movs r0, 0x9
	bl sub_8044F5C
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	beq _08060992
	movs r2, 0
	ldr r0, _0806096C
	ldr r0, [r0]
	ldr r1, _08060970
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08060978
	ldr r0, _08060974
	ldr r0, [r0]
	adds r0, 0x4C
	ldrb r0, [r0]
	movs r2, 0x1
	ands r2, r0
	b _08060988
	.align 2, 0
_08060964: .4byte gUnknown_202F238
_08060968: .4byte gUnknown_202EE6C
_0806096C: .4byte gDungeonGlobalData
_08060970: .4byte 0x0000065b
_08060974: .4byte gTeamInventory_203B460
_08060978:
	mov r0, r10
	adds r0, 0x60
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060988
	movs r2, 0x1
_08060988:
	cmp r2, 0
	beq _08060992
	movs r0, 0x9
	bl sub_8044FF0
_08060992:
	ldr r0, _08060A20
	ldrb r0, [r0]
	cmp r0, 0x80
	bne _080609B0
	ldr r0, _08060A24
	ldr r0, [r0]
	ldr r2, _08060A28
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _080609B0
	ldrb r1, [r7, 0x2]
	movs r0, 0xA
	bl sub_8044F5C
_080609B0:
	adds r0, r7, 0
	bl sub_8044DC8
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _080609E8
	ldrb r1, [r7, 0x2]
	adds r0, r4, 0
	bl sub_8044F5C
	ldrb r1, [r7]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080609D6
	adds r0, r4, 0
	bl sub_8044FF0
_080609D6:
	adds r0, r7, 0
	bl sub_8046F00
	lsls r0, 24
	cmp r0, 0
	bne _080609E8
	adds r0, r4, 0
	bl sub_8044FF0
_080609E8:
	ldr r0, _08060A20
	ldrb r0, [r0]
	cmp r0, 0x14
	bhi _08060A6C
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	beq _08060A0A
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08060A6C
_08060A0A:
	ldrb r1, [r7]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08060A3A
	ldrb r1, [r7, 0x2]
	movs r0, 0x3D
	bl sub_8044F5C
	b _08060A42
	.align 2, 0
_08060A20: .4byte gUnknown_202F238
_08060A24: .4byte gDungeonGlobalData
_08060A28: .4byte 0x0000065b
_08060A2C:
	movs r0, 0x3C
	bl sub_8044FF0
	movs r0, 0x3D
	bl sub_8044FF0
	b _08060A6C
_08060A3A:
	ldrb r1, [r7, 0x2]
	movs r0, 0x3C
	bl sub_8044F5C
_08060A42:
	movs r3, 0
	ldr r0, _08060AD4
	ldr r2, [r0]
	movs r4, 0x1
_08060A4A:
	ldrb r1, [r2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08060A64
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08060A64
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08060A2C
_08060A64:
	adds r2, 0x4
	adds r3, 0x1
	cmp r3, 0x13
	ble _08060A4A
_08060A6C:
	ldr r0, _08060AD8
	ldrb r0, [r0]
	cmp r0, 0x81
	beq _08060AE8
	cmp r0, 0x80
	beq _08060B3C
	movs r3, 0
	mov r8, r3
	ldrb r1, [r7, 0x2]
	movs r0, 0x36
	bl sub_8044F5C
	movs r6, 0
_08060A86:
	ldr r0, _08060ADC
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _08060AE0
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08060ABE
	ldr r0, [r4, 0x70]
	ldr r3, _08060AE4
	adds r5, r0, r3
	movs r0, 0
	strb r0, [r5]
	adds r0, r4, 0
	bl CannotUseItems
	lsls r0, 24
	cmp r0, 0
	bne _08060ABE
	movs r0, 0x1
	mov r8, r0
	mov r1, r8
	strb r1, [r5]
_08060ABE:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08060A86
	mov r2, r8
	cmp r2, 0
	bne _08060B3C
	movs r0, 0x36
	bl sub_8044FF0
	b _08060B3C
	.align 2, 0
_08060AD4: .4byte gTeamInventory_203B460
_08060AD8: .4byte gUnknown_202F238
_08060ADC: .4byte gDungeonGlobalData
_08060AE0: .4byte 0x0001357c
_08060AE4: .4byte 0x00000157
_08060AE8:
	ldr r0, _08060B10
	ldr r0, [r0]
	ldr r3, _08060B14
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _08060B3C
	ldr r0, _08060B18
	ldr r0, [r0]
	adds r0, 0x4C
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060B1C
	ldrb r1, [r7, 0x2]
	movs r0, 0x3E
	bl sub_8044F5C
	b _08060B24
	.align 2, 0
_08060B10: .4byte gDungeonGlobalData
_08060B14: .4byte 0x0000065b
_08060B18: .4byte gTeamInventory_203B460
_08060B1C:
	ldrb r1, [r7, 0x2]
	movs r0, 0x37
	bl sub_8044F5C
_08060B24:
	mov r0, r9
	bl CannotUseItems
	lsls r0, 24
	cmp r0, 0
	beq _08060B3C
	movs r0, 0x37
	bl sub_8044FF0
	movs r0, 0x3E
	bl sub_8044FF0
_08060B3C:
	ldr r0, _08060B64
	ldrb r0, [r0]
	cmp r0, 0x14
	bhi _08060B78
	mov r1, r9
	movs r2, 0x4
	ldrsh r0, [r1, r2]
	movs r3, 0x6
	ldrsh r1, [r1, r3]
	bl GetMapTile_1
	ldr r0, [r0, 0x14]
	cmp r0, 0
	bne _08060B68
	ldrb r1, [r7, 0x2]
	movs r0, 0x8
	bl sub_8044F5C
	b _08060B78
	.align 2, 0
_08060B64: .4byte gUnknown_202F238
_08060B68:
	bl GetEntityType
	cmp r0, 0x3
	bne _08060B78
	ldrb r1, [r7, 0x2]
	movs r0, 0x3A
	bl sub_8044F5C
_08060B78:
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	bne _08060B8E
	ldrb r1, [r7, 0x2]
	movs r0, 0x27
	bl sub_8044F5C
	b _08060BAE
_08060B8E:
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08060BA6
	ldrb r1, [r7, 0x2]
	movs r0, 0x41
	bl sub_8044F5C
	b _08060BAE
_08060BA6:
	ldrb r1, [r7, 0x2]
	movs r0, 0xB
	bl sub_8044F5C
_08060BAE:
	mov r0, r10
	bl ToolboxEnabled
	lsls r0, 24
	cmp r0, 0
	beq _08060BBC
	b _08060CCC
_08060BBC:
	movs r0, 0x27
	bl sub_8044FF0
	movs r0, 0x41
	bl sub_8044FF0
	movs r0, 0xB
	bl sub_8044FF0
	b _08060CCC
_08060BD0:
	ldrb r1, [r4]
	subs r1, 0x90
	ldr r0, _08060C50
	mov r9, r0
	ldr r0, [r0]
	lsls r1, 2
	ldr r2, _08060C54
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08060CCC
	ldr r3, [r4, 0x70]
	mov r8, r3
	movs r5, 0
	adds r0, r4, 0
	bl CannotUseItems
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r6, r1, 31
	ldr r0, _08060C58
	ldr r0, [r0]
	adds r0, 0x4C
	ldrb r0, [r0]
	movs r4, 0x1
	ands r4, r0
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bne _08060C22
	movs r5, 0x1
_08060C22:
	ldrb r0, [r7, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x9
	bne _08060C32
	movs r5, 0x1
_08060C32:
	mov r1, r9
	ldr r0, [r1]
	ldr r2, _08060C5C
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08060C78
	cmp r4, 0
	beq _08060C60
	ldrb r1, [r7, 0x2]
	movs r0, 0x3E
	bl sub_8044F5C
	b _08060C68
	.align 2, 0
_08060C50: .4byte gDungeonGlobalData
_08060C54: .4byte 0x0001357c
_08060C58: .4byte gTeamInventory_203B460
_08060C5C: .4byte 0x0000065b
_08060C60:
	ldrb r1, [r7, 0x2]
	movs r0, 0x37
	bl sub_8044F5C
_08060C68:
	cmp r6, 0
	beq _08060C78
	movs r0, 0x37
	bl sub_8044FF0
	movs r0, 0x3E
	bl sub_8044FF0
_08060C78:
	mov r3, r8
	ldrb r0, [r3, 0x7]
	cmp r0, 0
	beq _08060CBA
	adds r0, r7, 0
	bl sub_8044DC8
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _08060CCC
	ldrb r1, [r7, 0x2]
	adds r0, r4, 0
	bl sub_8044F5C
	ldrb r1, [r7]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08060CA6
	adds r0, r4, 0
	bl sub_8044FF0
_08060CA6:
	adds r0, r7, 0
	bl sub_8046F00
	lsls r0, 24
	cmp r0, 0
	bne _08060CCC
	adds r0, r4, 0
	bl sub_8044FF0
	b _08060CCC
_08060CBA:
	ldrb r1, [r7, 0x2]
	movs r0, 0x38
	bl sub_8044F5C
	cmp r5, 0
	beq _08060CCC
	movs r0, 0x38
	bl sub_8044FF0
_08060CCC:
	ldrb r1, [r7, 0x2]
	movs r0, 0xC
	bl sub_8044F5C
	bl sub_8045064
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8060900

	thumb_func_start sub_8060CE8
sub_8060CE8:
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _08060D18
	ldr r0, _08060D1C
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r4, 0
	bl SetAction
	ldr r0, _08060D20
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [r4, 0x4]
	str r1, [r4, 0x8]
	movs r0, 0
	strb r0, [r4, 0xC]
	strh r0, [r4, 0x10]
	strh r0, [r4, 0x12]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060D18: .4byte gUnknown_202EE44
_08060D1C: .4byte gUnknown_202EE10
_08060D20: .4byte gUnknown_202F238
	thumb_func_end sub_8060CE8

	thumb_func_start sub_8060D24
sub_8060D24:
	push {r4,lr}
	bl GetLeaderEntity
	movs r1, 0
	movs r2, 0xB
	bl sub_8044D90
	adds r4, r0, 0
	movs r0, 0
	movs r1, 0
	bl sub_803ECB4
	adds r0, r4, 0
	bl sub_801B3C0
_08060D42:
	movs r0, 0x16
	bl sub_803E46C
	bl sub_801B410
	cmp r0, 0
	beq _08060D42
	bl sub_801B450
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8060D24

	thumb_func_start sub_8060D64
sub_8060D64:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r4, r0, 0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	movs r7, 0
	ldr r0, _08060E28
	ldr r0, [r0]
	ldr r1, _08060E2C
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08060DB8
	cmp r6, 0
	bne _08060DB8
	ldr r5, _08060E30
	ldr r0, [r5]
	ldrb r1, [r0]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08060DA2
	strh r7, [r4]
	movs r7, 0x1
_08060DA2:
	ldr r0, [r5]
	adds r0, 0x28
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08060DB8
	lsls r0, r7, 1
	adds r0, r4
	strh r3, [r0]
	adds r7, 0x1
_08060DB8:
	cmp r2, 0
	beq _08060DD4
	ldr r0, [sp, 0x18]
	adds r0, 0x4
	bl sub_804ACE4
	lsls r0, 24
	cmp r0, 0
	beq _08060DD4
	lsls r0, r7, 1
	adds r0, r4
	movs r1, 0x2
	strh r1, [r0]
	adds r7, 0x1
_08060DD4:
	cmp r6, 0
	bne _08060E1A
	mov r2, r8
	cmp r2, 0
	bne _08060E1A
	movs r5, 0
	lsls r0, r7, 1
	adds r6, r0, r4
_08060DE4:
	ldr r0, _08060E28
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08060E34
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08060E14
	ldr r0, [r4, 0x70]
	adds r0, 0x60
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08060E14
	adds r0, r5, 0x4
	strh r0, [r6]
	adds r6, 0x2
	adds r7, 0x1
_08060E14:
	adds r5, 0x1
	cmp r5, 0x3
	ble _08060DE4
_08060E1A:
	adds r0, r7, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060E28: .4byte gDungeonGlobalData
_08060E2C: .4byte 0x0000065b
_08060E30: .4byte gTeamInventory_203B460
_08060E34: .4byte 0x0001357c
	thumb_func_end sub_8060D64

	thumb_func_start sub_8060E38
sub_8060E38:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x7C
	str r0, [sp, 0x78]
	add r4, sp, 0x18
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [r4, 0x4]
	movs r0, 0x2
	strh r0, [r4, 0x8]
	strh r0, [r4, 0xA]
	movs r0, 0xE
	strh r0, [r4, 0xC]
	movs r0, 0x10
	strh r0, [r4, 0xE]
	strh r0, [r4, 0x10]
	ldr r0, _08061018
	str r0, [r4, 0x14]
	movs r0, 0x3
	str r0, [r4, 0x1C]
	str r0, [r4, 0x34]
	str r0, [r4, 0x4C]
	movs r5, 0
	mov r9, r4
	add r0, sp, 0x4
	mov r8, r0
_08060E7A:
	ldr r6, _0806101C
	ldr r0, [r6]
	lsls r1, r5, 2
	ldr r2, _08061020
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08060E9E
	ldr r0, [r4, 0x70]
	ldr r2, _08061024
	adds r1, r0, r2
	movs r0, 0x1
	strb r0, [r1]
_08060E9E:
	adds r5, 0x1
	cmp r5, 0x3
	ble _08060E7A
	ldr r0, [r6]
	ldr r1, _08061028
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08060EBC
	movs r0, 0x3
	mov r2, r9
	str r0, [r2, 0x4]
	ldrh r0, [r2, 0xA]
	adds r0, 0x1
	strh r0, [r2, 0xA]
_08060EBC:
	ldr r6, _0806102C
_08060EBE:
	movs r7, 0
	mov r0, sp
	mov r1, r9
	movs r2, 0x1
	bl DrawFieldTeamMenu
	movs r0, 0
	mov r10, r0
_08060ECE:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	lsls r0, 2
	add r0, r8
	ldr r1, [r0]
	cmp r1, 0
	blt _08060F00
	ldr r0, _0806101C
	ldr r0, [r0]
	lsls r1, 2
	ldr r2, _08061020
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl sub_806A2BC
	adds r4, 0x4
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
_08060F00:
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	ldr r4, _08061030
	ldrh r1, [r4, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08060F26
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_80136E0
_08060F26:
	ldrh r1, [r4, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08060F3E
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_8013744
_08060F3E:
	ldrh r1, [r4, 0x2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08060F5A
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	add r1, sp, 0x14
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	bne _08061046
	bl sub_8083D30
_08060F5A:
	ldrh r1, [r4, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08060F6C
	ldr r2, _08061034
	ldrb r0, [r2]
	cmp r0, 0
	beq _08060F7E
_08060F6C:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	add r1, sp, 0x14
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	bne _08061040
	bl sub_8083D30
_08060F7E:
	ldr r0, _08061030
	ldrh r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08060F92
	ldr r2, _08061038
	ldrb r0, [r2]
	cmp r0, 0
	beq _08060ECE
_08060F92:
	bl sub_8083D30
	movs r7, 0x1
_08060F98:
	ldr r5, _0806102C
	movs r1, 0x18
	ldrsh r0, [r5, r1]
	lsls r0, 2
	add r0, r8
	ldr r1, [r0]
	cmp r1, 0
	blt _08060FCC
	ldr r0, _0806101C
	ldr r0, [r0]
	lsls r1, 2
	ldr r2, _08061020
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl sub_806A2BC
	adds r4, 0x4
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
_08060FCC:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	bl sub_804AA60
	cmp r7, 0
	beq _08060FE2
	b _0806110C
_08060FE2:
	movs r1, 0x18
	ldrsh r0, [r5, r1]
	str r0, [sp]
	ldr r1, _0806103C
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	str r0, [r1]
	mov r0, sp
	bl sub_806145C
	mov r0, r10
	cmp r0, 0
	beq _08061064
	ldr r1, [sp, 0x78]
	ldr r4, [r1, 0x70]
	adds r0, r4, 0
	adds r0, 0x44
	movs r1, 0x1B
	bl SetAction
	ldr r0, [sp]
	lsls r0, 2
	add r0, r8
	ldr r0, [r0]
	adds r4, 0x48
	strb r0, [r4]
	b _08061116
	.align 2, 0
_08061018: .4byte gUnknown_202F270
_0806101C: .4byte gDungeonGlobalData
_08061020: .4byte 0x0001357c
_08061024: .4byte 0x00000157
_08061028: .4byte 0x0000065b
_0806102C: .4byte gUnknown_202EE10
_08061030: .4byte gRealInputs
_08061034: .4byte gUnknown_202EE39
_08061038: .4byte gUnknown_202EE3A
_0806103C: .4byte gUnknown_202F260
_08061040:
	bl sub_8083D08
	b _08060F98
_08061046:
	bl sub_8083D44
	movs r2, 0x1
	mov r10, r2
	b _08060F98
_08061050:
	ldr r1, [sp, 0x78]
	ldr r0, [r1, 0x70]
	adds r0, 0x44
	mov r1, sp
	bl sub_80615B4
	bl sub_8083D08
	movs r4, 0
	b _080610EA
_08061064:
	mov r0, r9
	movs r1, 0x12
	bl sub_805FC30
	adds r4, r5, 0
	ldr r5, _08061100
	adds r7, r4, 0
	adds r7, 0x2A
_08061074:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08061098
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08061098:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080610B0
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_080610B0:
	ldrh r1, [r5, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080610C2
	ldr r2, _08061104
	ldrb r0, [r2]
	cmp r0, 0
	beq _080610D4
_080610C2:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _08061050
	bl sub_8083D30
_080610D4:
	ldrh r1, [r5, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080610E4
	ldrb r0, [r7]
	cmp r0, 0
	beq _08061074
_080610E4:
	bl sub_8083D30
	movs r4, 0x1
_080610EA:
	ldr r0, _08061108
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	cmp r4, 0x1
	bne _080610FC
	b _08060EBE
_080610FC:
	movs r7, 0
	b _08061116
	.align 2, 0
_08061100: .4byte gRealInputs
_08061104: .4byte gUnknown_202EE39
_08061108: .4byte gUnknown_202EE10
_0806110C:
	bl GetLeaderEntity
	movs r1, 0
	bl sub_806A2BC
_08061116:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	adds r0, r7, 0
	add sp, 0x7C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8060E38

	thumb_func_start DrawFieldTeamMenu
DrawFieldTeamMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r9, r0
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x8]
	movs r7, 0
	movs r1, 0
	mov r2, r8
	ldr r0, [r2, 0x4]
	cmp r0, 0x6
	bne _08061154
	movs r1, 0x1
_08061154:
	mov r10, r1
	bl GetLeaderEntity
	adds r1, r0, 0
	add r0, sp, 0x4
	bl sub_8069D18
	movs r6, 0
_08061164:
	ldr r0, _08061318
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r3, _0806131C
	adds r0, r3
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080611AC
	lsls r1, r7, 2
	mov r0, r9
	adds r0, 0x4
	adds r0, r1
	str r6, [r0]
	ldr r0, [r4, 0x70]
	mov r1, r9
	adds r1, 0x14
	adds r1, r7
	ldr r5, _08061320
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, 0x4]
	ldr r0, [r4, 0x4]
	cmp r1, r0
	bne _080611AA
	ldr r1, _08061324
	ldr r0, [r1]
	cmp r0, 0
	bge _080611AA
	str r7, [r1]
_080611AA:
	adds r7, 0x1
_080611AC:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08061164
	ldr r0, _08061324
	ldr r1, [r0]
	adds r5, r0, 0
	cmp r1, r7
	blt _080611C0
	subs r0, r7, 0x1
	str r0, [r5]
_080611C0:
	ldr r0, [r5]
	cmp r0, 0
	bge _080611CA
	movs r0, 0
	str r0, [r5]
_080611CA:
	adds r6, r7, 0
	mov r0, r10
	negs r3, r0
	cmp r7, 0x3
	bgt _080611F4
	movs r1, 0x1
	negs r1, r1
	mov r12, r1
	mov r2, r9
	adds r2, 0x14
	movs r4, 0
	lsls r0, r7, 2
	adds r1, r0, 0x4
	add r1, r9
_080611E6:
	mov r0, r12
	stm r1!, {r0}
	adds r0, r2, r6
	strb r4, [r0]
	adds r6, 0x1
	cmp r6, 0x3
	ble _080611E6
_080611F4:
	ldr r1, _08061328
	movs r4, 0
	movs r0, 0x1
	strb r0, [r1]
	strb r4, [r1, 0x1]
	strb r4, [r1, 0x3]
	ldr r0, _0806132C
	ldr r1, [r5]
	strh r1, [r0, 0x18]
	strh r7, [r0, 0x1A]
	strh r7, [r0, 0x1C]
	strh r4, [r0, 0x1E]
	strh r4, [r0, 0x20]
	strh r4, [r0, 0x4]
	mov r1, r10
	orrs r3, r1
	asrs r1, r3, 31
	movs r2, 0x10
	ands r1, r2
	strh r1, [r0, 0x6]
	strh r4, [r0, 0xC]
	strh r4, [r0, 0xE]
	strh r4, [r0, 0x14]
	str r4, [r0]
	adds r0, 0x28
	bl sub_801317C
	adds r0, r7, 0
	movs r1, 0
	bl sub_80095E4
	mov r2, r10
	cmp r2, 0
	beq _0806123A
	adds r0, 0x2
_0806123A:
	mov r3, r8
	strh r0, [r3, 0x10]
	strh r0, [r3, 0xE]
	movs r0, 0x8
	ldr r5, _08061328
	strb r0, [r5, 0x2]
	ldr r0, [sp, 0x8]
	cmp r0, 0
	beq _0806125C
	mov r1, r8
	adds r1, 0x18
	mov r0, r8
	adds r0, 0x48
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
_0806125C:
	mov r0, r8
	movs r1, 0x1
	bl sub_803ECB4
	ldr r0, _0806132C
	movs r1, 0
	bl sub_80137B0
	movs r0, 0
	bl sub_80073B8
	mov r0, r10
	cmp r0, 0
	beq _08061286
	ldr r2, _08061330
	str r4, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
_08061286:
	movs r6, 0
	cmp r6, r7
	blt _0806128E
	b _08061440
_0806128E:
	lsls r1, r6, 2
	mov r0, r9
	adds r0, 0x4
	adds r0, r1
	ldr r1, [r0]
	cmp r1, 0
	bge _0806129E
	b _08061438
_0806129E:
	ldr r0, _08061318
	ldr r0, [r0]
	lsls r1, 2
	ldr r2, _0806131C
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _080612BA
	b _08061438
_080612BA:
	ldr r5, [r4, 0x70]
	mov r0, r9
	adds r0, 0x14
	adds r0, r6
	ldrb r0, [r0]
	movs r2, 0x2
	cmp r0, 0
	beq _080612CC
	movs r2, 0x6
_080612CC:
	ldr r4, _08061334
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8070968
	ldr r0, _08061338
	ldr r1, [r0]
	ldrb r2, [r5, 0xA]
	movs r0, 0x64
	muls r0, r2
	adds r1, r0
	ldr r3, _0806133C
	adds r1, r3
	movs r2, 0
	ldrsh r0, [r1, r2]
	bl sub_806A538
	lsls r0, 24
	cmp r0, 0
	beq _08061388
	movs r3, 0x10
	ldrsh r2, [r5, r3]
	adds r1, r2, 0
	cmp r2, 0
	bge _08061300
	adds r1, r2, 0x3
_08061300:
	movs r3, 0xE
	ldrsh r0, [r5, r3]
	asrs r1, 2
	cmp r0, r1
	bgt _08061344
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _08061340
	bl strcpy
	b _080613EE
	.align 2, 0
_08061318: .4byte gDungeonGlobalData
_0806131C: .4byte 0x0001357c
_08061320: .4byte 0x00000157
_08061324: .4byte gUnknown_202F260
_08061328: .4byte gUnknown_202F270
_0806132C: .4byte gUnknown_202EE10
_08061330: .4byte gUnknown_8106BB0
_08061334: .4byte gAvailablePokemonNames
_08061338: .4byte gRecruitedPokemonRef
_0806133C: .4byte 0x00008e02
_08061340: .4byte gUnknown_8106BB4
_08061344:
	movs r0, 0xE
	ldrsh r3, [r5, r0]
	lsls r0, r1, 1
	cmp r3, r0
	bgt _08061360
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _0806135C
	bl strcpy
	b _080613EE
	.align 2, 0
_0806135C: .4byte gUnknown_8106BB8
_08061360:
	adds r0, r1
	cmp r3, r0
	bgt _08061378
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _08061374
	bl strcpy
	b _080613EE
	.align 2, 0
_08061374: .4byte gUnknown_8106BBC
_08061378:
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _08061384
	bl strcpy
	b _080613EE
	.align 2, 0
_08061384: .4byte gUnknown_8106BC0
_08061388:
	movs r1, 0x10
	ldrsh r2, [r5, r1]
	adds r1, r2, 0
	cmp r2, 0
	bge _08061394
	adds r1, r2, 0x3
_08061394:
	movs r3, 0xE
	ldrsh r0, [r5, r3]
	asrs r1, 2
	cmp r0, r1
	bgt _080613B0
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _080613AC
	bl strcpy
	b _080613EE
	.align 2, 0
_080613AC: .4byte gUnknown_8106BC4
_080613B0:
	movs r0, 0xE
	ldrsh r3, [r5, r0]
	lsls r0, r1, 1
	cmp r3, r0
	bgt _080613CC
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _080613C8
	bl strcpy
	b _080613EE
	.align 2, 0
_080613C8: .4byte gUnknown_8106BC8
_080613CC:
	adds r0, r1
	cmp r3, r0
	bgt _080613E4
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _080613E0
	bl strcpy
	b _080613EE
	.align 2, 0
_080613E0: .4byte gUnknown_8106BCC
_080613E4:
	adds r0, r4, 0
	adds r0, 0x50
	ldr r1, _0806141C
	bl strcpy
_080613EE:
	ldr r0, _08061420
	movs r2, 0xE
	ldrsh r1, [r5, r2]
	str r1, [r0]
	movs r3, 0x10
	ldrsh r1, [r5, r3]
	str r1, [r0, 0x4]
	ldr r0, _08061424
	adds r1, r6, 0
	bl sub_8013800
	adds r1, r0, 0
	ldrb r0, [r5, 0x7]
	cmp r0, 0
	beq _0806142C
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	ldr r2, _08061428
	movs r3, 0
	bl xxx_format_and_draw
	b _08061438
	.align 2, 0
_0806141C: .4byte gUnknown_8106BD0
_08061420: .4byte gUnknown_202DE30
_08061424: .4byte gUnknown_202EE10
_08061428: .4byte gUnknown_8106BD4
_0806142C:
	str r0, [sp]
	movs r0, 0x9
	ldr r2, _08061458
	movs r3, 0
	bl xxx_format_and_draw
_08061438:
	adds r6, 0x1
	cmp r6, r7
	bge _08061440
	b _0806128E
_08061440:
	movs r0, 0
	bl sub_80073E0
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061458: .4byte gUnknown_8106BE0
	thumb_func_end DrawFieldTeamMenu

	thumb_func_start sub_806145C
sub_806145C:
	push {r4-r6,lr}
	ldr r2, _08061560
	movs r1, 0
	str r1, [r2]
	ldr r5, _08061564
	ldr r2, [r5]
	ldr r1, _08061568
	movs r3, 0x18
	ldrsh r1, [r1, r3]
	lsls r1, 2
	adds r0, 0x4
	adds r0, r1
	ldr r0, [r0]
	lsls r0, 2
	ldr r1, _0806156C
	adds r2, r1
	adds r2, r0
	ldr r6, [r2]
	ldr r4, [r6, 0x70]
	movs r0, 0x1B
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0x19
	movs r1, 0
	bl sub_8044F5C
	ldrb r0, [r4, 0x7]
	cmp r0, 0
	bne _080614C8
	ldr r2, [r5]
	ldr r3, _08061570
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _080614C0
	adds r0, r4, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x41
	bne _080614B8
	ldr r1, _08061574
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _080614C0
_080614B8:
	movs r0, 0x34
	movs r1, 0
	bl sub_8044F5C
_080614C0:
	movs r0, 0x1C
	movs r1, 0
	bl sub_8044F5C
_080614C8:
	movs r0, 0x30
	movs r1, 0
	bl sub_8044F5C
	ldrb r0, [r4, 0x7]
	cmp r0, 0
	bne _0806154C
	movs r0, 0x1A
	movs r1, 0
	bl sub_8044F5C
	ldrb r0, [r4, 0x7]
	cmp r0, 0
	bne _0806154C
	ldr r0, _08061564
	ldr r1, [r0]
	ldr r2, _08061574
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806154C
	ldr r3, _08061578
	adds r0, r1, r3
	ldrb r0, [r0]
	bl sub_8090158
	lsls r0, 24
	cmp r0, 0
	beq _0806154C
	movs r0, 0x3B
	movs r1, 0
	bl sub_8044F5C
	movs r5, 0x1
	ldrb r0, [r4, 0xA]
	cmp r0, 0x3
	bhi _08061530
	ldr r2, _0806157C
	ldrb r1, [r4, 0xA]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _08061580
	adds r1, r0
	ldr r0, [r2]
	adds r0, r1
	movs r1, 0xA
	ldrsh r0, [r0, r1]
	bl sub_806A538
	lsls r0, 24
	cmp r0, 0
	beq _08061532
_08061530:
	movs r5, 0
_08061532:
	adds r0, r6, 0
	movs r1, 0
	bl CannotMove
	lsls r0, 24
	cmp r0, 0
	beq _08061542
	movs r5, 0
_08061542:
	cmp r5, 0
	bne _0806154C
	movs r0, 0x3B
	bl sub_8044FF0
_0806154C:
	adds r0, r4, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	beq _0806155A
	cmp r0, 0x47
	bne _08061584
_0806155A:
	movs r0, 0x1
	b _08061586
	.align 2, 0
_08061560: .4byte gUnknown_202EE6C
_08061564: .4byte gDungeonGlobalData
_08061568: .4byte gUnknown_202EE10
_0806156C: .4byte 0x0001357c
_08061570: .4byte 0x0000065d
_08061574: .4byte 0x0000065c
_08061578: .4byte 0x00000644
_0806157C: .4byte gRecruitedPokemonRef
_08061580: .4byte 0x00008df8
_08061584:
	movs r0, 0
_08061586:
	cmp r0, 0
	beq _080615A8
	movs r0, 0x19
	bl sub_8044FF0
	movs r0, 0x3B
	bl sub_8044FF0
	movs r0, 0x1A
	bl sub_8044FF0
	movs r0, 0x30
	bl sub_8044FF0
	movs r0, 0x34
	bl sub_8044FF0
_080615A8:
	bl sub_8045064
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_806145C

	thumb_func_start sub_80615B4
sub_80615B4:
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	ldr r1, _080615E0
	ldr r0, _080615E4
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r5, 0
	bl SetAction
	ldm r4!, {r0}
	lsls r0, 2
	adds r4, r0
	ldr r0, [r4]
	strb r0, [r5, 0x4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080615E0: .4byte gUnknown_202EE44
_080615E4: .4byte gUnknown_202EE10
	thumb_func_end sub_80615B4

	thumb_func_start sub_80615E8
sub_80615E8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x7C
	adds r5, r0, 0
	mov r4, sp
	mov r0, sp
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x4]
	movs r1, 0x2
	strh r1, [r4, 0x8]
	strh r1, [r4, 0xA]
	movs r2, 0x12
	strh r2, [r4, 0xC]
	movs r0, 0xE
	strh r0, [r4, 0xE]
	strh r2, [r4, 0x10]
	strh r1, [r4, 0x12]
	ldr r0, _08061720
	str r0, [sp, 0x14]
	movs r0, 0x3
	str r0, [sp, 0x1C]
	str r0, [sp, 0x34]
	str r0, [sp, 0x4C]
	ldr r0, _08061724
	ldr r1, [r0]
	ldrb r0, [r5, 0x4]
	lsls r0, 2
	ldr r2, _08061728
	adds r1, r2
	adds r1, r0
	ldr r1, [r1]
	str r1, [sp, 0x74]
	ldr r0, [r1, 0x70]
	mov r8, r0
	movs r1, 0
	str r1, [sp, 0x70]
	movs r2, 0
	str r2, [sp, 0x6C]
	add r0, sp, 0x60
	mov r10, r0
_08061646:
	movs r1, 0x1
	str r1, [sp, 0x78]
	movs r7, 0
	ldr r0, _08061720
	strb r1, [r0]
	strb r7, [r0, 0x1]
	movs r1, 0xA
	strb r1, [r0, 0x2]
	strb r7, [r0, 0x3]
	mov r0, sp
	movs r1, 0x1
	bl sub_803ECB4
	ldr r0, [sp, 0x6C]
	mov r1, r10
	mov r2, r8
	movs r3, 0
	bl sub_806195C
	movs r2, 0
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, 0xB
	beq _08061684
_08061676:
	adds r2, 0x1
	cmp r2, 0x7
	bgt _08061684
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0xB
	bne _08061676
_08061684:
	ldr r4, _0806172C
	movs r1, 0
	strh r2, [r4, 0x1A]
	movs r0, 0x8
	strh r0, [r4, 0x1C]
	strh r1, [r4, 0x1E]
	strh r1, [r4, 0x20]
	strh r1, [r4, 0x4]
	movs r0, 0x10
	strh r0, [r4, 0x6]
	strh r1, [r4, 0xC]
	strh r1, [r4, 0xE]
	strh r1, [r4, 0x14]
	str r1, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	add r2, sp, 0x70
	ldrh r2, [r2]
	strh r2, [r4, 0x18]
	mov r9, r4
	mov r6, r10
_080616BA:
	mov r0, r9
	bl AddMenuCursorSprite
	ldrb r0, [r6, 0x8]
	cmp r0, 0xB
	beq _080616CA
	bl sub_80623B0
_080616CA:
	ldr r0, [sp, 0x6C]
	cmp r0, 0
	beq _080616D4
	bl sub_8062230
_080616D4:
	movs r0, 0x3D
	bl sub_803E46C
	ldr r0, _08061730
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08061740
	movs r0, 0x1
	bl sub_8083CE0
	mov r1, r9
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0x7
	bne _08061738
	ldrb r0, [r6, 0x8]
	cmp r0, 0xB
	beq _0806171A
	ldr r5, [sp, 0x6C]
	adds r5, 0x1
	ldr r6, _08061734
	movs r4, 0x5
_08061704:
	ldr r1, [r6]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x3D
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061704
	str r5, [sp, 0x6C]
_0806171A:
	movs r0, 0x7
	str r0, [sp, 0x70]
	b _08061926
	.align 2, 0
_08061720: .4byte gUnknown_202F270
_08061724: .4byte gDungeonGlobalData
_08061728: .4byte 0x0001357c
_0806172C: .4byte gUnknown_202EE10
_08061730: .4byte gRealInputs
_08061734: .4byte gUnknown_203B080
_08061738:
	mov r0, r9
	movs r1, 0
	bl sub_80136E0
_08061740:
	ldr r0, _08061788
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0806179C
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _0806178C
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _08061794
	ldr r0, [sp, 0x6C]
	cmp r0, 0
	beq _08061780
	adds r5, r0, 0
	subs r5, 0x1
	ldr r6, _08061790
	movs r4, 0x5
_0806176A:
	ldr r1, [r6]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x3D
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _0806176A
	str r5, [sp, 0x6C]
_08061780:
	movs r1, 0
	str r1, [sp, 0x70]
	b _08061926
	.align 2, 0
_08061788: .4byte gRealInputs
_0806178C: .4byte gUnknown_202EE10
_08061790: .4byte gUnknown_203B084
_08061794:
	adds r0, r1, 0
	movs r1, 0
	bl sub_8013744
_0806179C:
	ldr r4, _080617C8
	ldrh r1, [r4, 0x2]
	movs r0, 0x8
	ands r0, r1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	beq _080617DE
	mov r2, r9
	movs r1, 0x18
	ldrsh r0, [r2, r1]
	mov r2, r10
	adds r1, r2, r0
	ldrb r4, [r1]
	str r0, [sp, 0x70]
	bl sub_8083D44
	adds r0, r4, 0
	bl sub_8062748
_080617C4:
	movs r7, 0
	b _08061926
	.align 2, 0
_080617C8: .4byte gRealInputs
_080617CC:
	bl sub_8083D08
	mov r0, r9
	movs r1, 0x18
	ldrsh r4, [r0, r1]
	cmp r4, 0
	beq _080617DC
	b _08061900
_080617DC:
	b _080618C4
_080617DE:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080617F4
	ldr r2, _080618BC
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	bne _080617F4
	b _0806190C
_080617F4:
	mov r2, r9
	movs r0, 0x18
	ldrsh r1, [r2, r0]
	mov r2, r10
	adds r0, r2, r1
	ldrb r7, [r0]
	str r1, [sp, 0x70]
	bl sub_8062D68
	bl sub_8083D08
	ldr r0, _080618C0
	str r5, [r0]
	movs r0, 0x2F
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0xC
	movs r1, 0
	bl sub_8044F5C
	ldr r0, [sp, 0x74]
	movs r1, 0x1
	bl CannotMove
	lsls r0, 24
	cmp r0, 0
	beq _08061832
	movs r0, 0x2F
	bl sub_8044FF0
_08061832:
	mov r0, sp
	movs r1, 0x16
	bl sub_805FC30
	ldr r5, _080618BC
	adds r6, r4, 0
	adds r4, r5, 0
	adds r4, 0x2A
_08061842:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x3D
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08061866
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_08061866:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0806187E
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_0806187E:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08061892
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _080618A4
_08061892:
	movs r1, 0x18
	ldrsh r0, [r5, r1]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _080617CC
	bl sub_8083D30
_080618A4:
	ldrh r1, [r6, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080618B4
	ldrb r0, [r4]
	cmp r0, 0
	beq _08061842
_080618B4:
	bl sub_8083D30
	b _080617C4
	.align 2, 0
_080618BC: .4byte gUnknown_202EE10
_080618C0: .4byte gUnknown_202EE6C
_080618C4:
	ldr r0, _080618FC
	bl PlaySoundEffect
	mov r0, r8
	adds r0, 0x94
	strb r7, [r0]
	mov r1, r8
	adds r1, 0x78
	movs r0, 0x6
	strb r0, [r1]
	mov r0, r8
	adds r0, 0x80
	str r4, [r0]
	adds r0, 0x4
	str r4, [r0]
	subs r0, 0x8
	strh r4, [r0]
	mov r2, r8
	ldrb r0, [r2, 0x7]
	cmp r0, 0
	beq _080618F0
	b _080617C4
_080618F0:
	ldr r0, [sp, 0x74]
	movs r1, 0x1
	bl MoveIfPossible
	b _080617C4
	.align 2, 0
_080618FC: .4byte 0x00000133
_08061900:
	adds r0, r7, 0
	bl sub_8062748
	movs r0, 0
	str r0, [sp, 0x78]
	b _080617C4
_0806190C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08061920
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _08061920
	b _080616BA
_08061920:
	bl sub_8083D30
	movs r7, 0x1
_08061926:
	ldr r1, [sp, 0x78]
	cmp r1, 0
	beq _08061932
	ldr r0, _08061958
	bl AddMenuCursorSprite
_08061932:
	movs r0, 0x3D
	bl sub_803E46C
	cmp r7, 0
	bne _0806193E
	b _08061646
_0806193E:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0x7C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061958: .4byte gUnknown_202EE10
	thumb_func_end sub_80615E8

	thumb_func_start sub_806195C
sub_806195C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	adds r5, r0, 0
	mov r9, r1
	str r2, [sp, 0x10]
	adds r7, r3, 0
	subs r5, 0x1
	adds r0, r7, 0
	bl sub_80073B8
	ldr r0, _080619B4
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x10
	movs r1, 0
	adds r3, r7, 0
	bl xxx_call_draw_string
	movs r0, 0x14
	mov r8, r0
	movs r1, 0xB
	mov r0, r9
	adds r0, 0x8
_08061994:
	strb r1, [r0]
	subs r0, 0x1
	cmp r0, r9
	bge _08061994
	bl sub_8083654
	ldrb r1, [r0, 0x9]
	add r0, sp, 0x4
	bl GetAvailTacticsforLvl
	movs r6, 0x1
	negs r6, r6
	movs r1, 0
	mov r10, r1
	b _080619FC
	.align 2, 0
_080619B4: .4byte gUnknown_80FE954
_080619B8:
	ldr r0, _080619DC
	adds r1, r4, 0
	bl CopyTacticsNameToBuffer
	ldr r0, [sp, 0x10]
	adds r0, 0x94
	ldrb r0, [r0]
	cmp r0, r4
	bne _080619E4
	mov r0, r10
	str r0, [sp]
	movs r0, 0x10
	mov r1, r8
	ldr r2, _080619E0
	adds r3, r7, 0
	bl xxx_format_and_draw
	b _080619F4
	.align 2, 0
_080619DC: .4byte gAvailablePokemonNames
_080619E0: .4byte gUnknown_8106BEC
_080619E4:
	mov r1, r10
	str r1, [sp]
	movs r0, 0x10
	mov r1, r8
	ldr r2, _08061A34
	adds r3, r7, 0
	bl xxx_format_and_draw
_080619F4:
	adds r6, 0x1
	movs r0, 0xC
	add r8, r0
	adds r5, 0x1
_080619FC:
	cmp r6, 0x9
	bgt _08061A1E
	cmp r5, 0
	blt _080619F4
	cmp r5, 0xB
	bgt _080619F4
	mov r0, sp
	adds r0, r5
	adds r0, 0x4
	ldrb r4, [r0]
	cmp r6, 0x8
	bhi _08061A1A
	mov r1, r9
	adds r0, r1, r6
	strb r4, [r0]
_08061A1A:
	cmp r4, 0xB
	bne _080619B8
_08061A1E:
	adds r0, r7, 0
	bl sub_80073E0
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061A34: .4byte gUnknown_8106BF4
	thumb_func_end sub_806195C

	thumb_func_start sub_8061A38
sub_8061A38:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x130
	adds r5, r0, 0
	lsls r1, 24
	lsrs r6, r1, 24
	add r4, sp, 0xB0
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [r4, 0x4]
	movs r1, 0x2
	strh r1, [r4, 0x8]
	strh r1, [r4, 0xA]
	movs r2, 0x12
	strh r2, [r4, 0xC]
	movs r0, 0xE
	strh r0, [r4, 0xE]
	strh r2, [r4, 0x10]
	strh r1, [r4, 0x12]
	ldr r0, _08061AA4
	str r0, [r4, 0x14]
	movs r0, 0x3
	str r0, [r4, 0x1C]
	str r0, [r4, 0x34]
	str r0, [r4, 0x4C]
	movs r0, 0
	str r0, [sp, 0x114]
	mov r8, r0
	ldr r0, _08061AA8
	ldr r1, [r0]
	ldrb r0, [r5, 0x4]
	lsls r0, 2
	ldr r2, _08061AAC
	adds r1, r2
	adds r1, r0
	ldr r1, [r1]
	str r1, [sp, 0x110]
	ldr r0, [r1, 0x70]
	str r0, [sp, 0x11C]
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	beq _08061AA0
	cmp r0, 0x47
	bne _08061AB0
_08061AA0:
	movs r0, 0x1
	b _08061AB2
	.align 2, 0
_08061AA4: .4byte gUnknown_202F270
_08061AA8: .4byte gDungeonGlobalData
_08061AAC: .4byte 0x0001357c
_08061AB0:
	movs r0, 0
_08061AB2:
	adds r1, r0, 0
	cmp r1, 0
	beq _08061ACE
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	str r0, [sp, 0x14]
	str r0, [sp, 0x18]
	movs r1, 0x1
	str r1, [sp, 0x118]
	b _08061AFE
_08061ACE:
	cmp r6, 0
	beq _08061AE6
	movs r0, 0x4
	str r0, [sp, 0x4]
	str r1, [sp, 0x8]
	str r1, [sp, 0xC]
	str r1, [sp, 0x10]
	str r1, [sp, 0x14]
	str r1, [sp, 0x18]
	movs r2, 0x1
	str r2, [sp, 0x118]
	b _08061AFE
_08061AE6:
	movs r0, 0x2
	str r0, [sp, 0x4]
	movs r0, 0x1
	str r0, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0x5
	str r0, [sp, 0x10]
	str r6, [sp, 0x14]
	str r6, [sp, 0x18]
	movs r0, 0x4
	str r0, [sp, 0x118]
_08061AFE:
	add r2, sp, 0x5C
	movs r0, 0
	strh r0, [r2]
	mov r1, sp
	adds r1, 0x72
	strh r0, [r1]
	ldr r3, _08061BB4
	strh r0, [r3, 0x18]
	subs r1, 0x56
	str r1, [sp, 0x12C]
	add r2, sp, 0x80
	mov r9, r2
	adds r7, r3, 0
_08061B18:
	movs r0, 0
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0x120]
	movs r2, 0
	str r2, [sp, 0x124]
	movs r0, 0x1
	str r0, [sp, 0x128]
	ldr r4, _08061BB8
	ldr r1, _08061BBC
	add r2, sp, 0x118
	ldrb r2, [r2]
	strb r2, [r1]
	add r0, sp, 0x114
	ldrb r0, [r0]
	strb r0, [r1, 0x1]
	movs r0, 0xA
	strb r0, [r1, 0x2]
	mov r2, r10
	strb r2, [r1, 0x3]
	add r0, sp, 0xB0
	movs r1, 0x1
	bl sub_803ECB4
	ldr r0, [sp, 0x12C]
	ldr r1, [sp, 0x110]
	bl sub_8069844
	ldr r1, [sp, 0x114]
	lsls r0, r1, 2
	mov r5, sp
	adds r5, r0
	adds r5, 0x4
	ldr r0, [r5]
	mov r2, r10
	str r2, [sp]
	ldr r2, [sp, 0x12C]
	add r3, sp, 0x80
	bl CreatePokemonInfoTabScreen
	add r0, sp, 0x114
	ldrh r0, [r0]
	strh r0, [r7, 0x1E]
	add r1, sp, 0x118
	ldrh r1, [r1]
	strh r1, [r7, 0x20]
	movs r2, 0
	ldrsh r0, [r4, r2]
	adds r0, 0xF
	lsls r0, 3
	strh r0, [r7, 0xC]
	movs r1, 0x2
	ldrsh r0, [r4, r1]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r7, 0xE]
	mov r2, r10
	strh r2, [r7, 0x14]
	strh r2, [r7, 0x4]
	movs r0, 0x10
	strh r0, [r7, 0x6]
	mov r0, r10
	str r0, [r7]
	adds r0, r7, 0
	adds r0, 0x28
	bl sub_801317C
	mov r1, r10
	strh r1, [r7, 0x18]
	strh r1, [r7, 0x1A]
	strh r1, [r7, 0x1C]
	ldr r5, [r5]
	cmp r5, 0x1
	bne _08061C10
	movs r2, 0
	add r1, sp, 0x8C
	b _08061BC8
	.align 2, 0
_08061BB4: .4byte gUnknown_202EE10
_08061BB8: .4byte gUnknown_2027370
_08061BBC: .4byte gUnknown_202F270
_08061BC0:
	adds r1, 0x4
	adds r2, 0x1
	cmp r2, 0x7
	bgt _08061BCE
_08061BC8:
	ldr r0, [r1]
	cmp r0, 0
	bne _08061BC0
_08061BCE:
	cmp r2, 0
	beq _08061C44
	movs r0, 0x1
	str r0, [sp, 0x124]
	strh r2, [r7, 0x1A]
	b _08061C38
_08061BDA:
	movs r0, 0x18
	ldrsh r2, [r7, r0]
	lsls r1, r2, 2
	add r0, sp, 0x8C
	adds r0, r1
	ldr r4, [r0]
	mov r8, r2
	bl sub_8083D44
	adds r0, r4, 0
	bl sub_806285C
	movs r1, 0
	str r1, [sp, 0x128]
	b _080621E4
_08061BF8:
	movs r2, 0x18
	ldrsh r0, [r7, r2]
	mov r2, r9
	adds r1, r2, r0
	ldrb r4, [r1]
	mov r8, r0
	bl sub_8083D44
	adds r0, r4, 0
	bl sub_806262C
	b _08062082
_08061C10:
	cmp r5, 0x4
	bne _08061C48
	movs r1, 0
	add r2, sp, 0x80
	ldrb r0, [r2]
	cmp r0, 0
	beq _08061C2E
	mov r2, r9
_08061C20:
	adds r1, 0x1
	cmp r1, 0x7
	bgt _08061C2E
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08061C20
_08061C2E:
	cmp r1, 0
	beq _08061C44
	movs r0, 0x1
	str r0, [sp, 0x120]
	strh r1, [r7, 0x1A]
_08061C38:
	movs r0, 0x8
	strh r0, [r7, 0x1C]
	adds r0, r7, 0
	movs r1, 0
	bl sub_80137B0
_08061C44:
	mov r1, r8
	strh r1, [r7, 0x18]
_08061C48:
	ldr r0, _08061CF8
	bl AddMenuCursorSprite
	movs r0, 0
	ldr r1, _08061CFC
	bl sub_8014140
	adds r4, r0, 0
	movs r5, 0
	movs r6, 0
	ldr r2, [sp, 0x120]
	cmp r2, 0
	beq _08061C80
	mov r1, r9
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08061C70
	movs r5, 0x1
	bl sub_80623B0
_08061C70:
	add r1, sp, 0x5C
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _08061C80
	movs r6, 0x1
	bl sub_8062230
_08061C80:
	ldr r2, [sp, 0x124]
	cmp r2, 0
	beq _08061CA6
	mov r1, r9
	ldr r0, [r1, 0x2C]
	cmp r0, 0
	beq _08061C94
	movs r5, 0x1
	bl sub_80623B0
_08061C94:
	movs r1, 0x72
	add r1, sp
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _08061CA6
	movs r6, 0x1
	bl sub_8062230
_08061CA6:
	movs r0, 0x1C
	bl sub_803E46C
	ldr r0, _08061D00
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _08061D4E
	bl sub_80048C8
	lsls r0, 24
	cmp r0, 0
	bne _08061D4E
	ldr r0, _08061D04
	ldrh r1, [r0, 0x2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08061CD6
	ldr r2, _08061CF8
	adds r0, r2, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _08061D08
_08061CD6:
	movs r0, 0
	bl sub_8083CE0
	ldr r2, [sp, 0x114]
	adds r2, 0x1
	str r2, [sp, 0x114]
	lsls r0, r2, 2
	add r0, sp
	adds r0, 0x4
	ldr r0, [r0]
	cmp r0, 0
	beq _08061CF0
	b _080621E6
_08061CF0:
	movs r0, 0
	str r0, [sp, 0x114]
	b _080621E6
	.align 2, 0
_08061CF8: .4byte gUnknown_202EE10
_08061CFC: .4byte gUnknown_8106B8C
_08061D00: .4byte gUnknown_202F270
_08061D04: .4byte gRealInputs
_08061D08:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08061D1A
	adds r0, r2, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	beq _08061D4E
_08061D1A:
	movs r0, 0
	bl sub_8083CE0
	ldr r1, [sp, 0x114]
	subs r1, 0x1
	str r1, [sp, 0x114]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08061D30
	b _080621E6
_08061D30:
	movs r2, 0x5
	str r2, [sp, 0x114]
	ldr r0, [sp, 0x18]
	cmp r0, 0
	beq _08061D3C
	b _080621E6
_08061D3C:
	add r1, sp, 0x18
_08061D3E:
	subs r1, 0x4
	ldr r0, [sp, 0x114]
	subs r0, 0x1
	str r0, [sp, 0x114]
	ldr r0, [r1]
	cmp r0, 0
	beq _08061D3E
	b _080621E6
_08061D4E:
	ldr r1, [sp, 0x124]
	cmp r1, 0
	bne _08061D56
	b _08061E8A
_08061D56:
	cmp r4, 0x2
	bne _08061D98
	cmp r5, 0
	beq _08061D98
	movs r0, 0
	bl sub_8083CE0
	mov r2, r9
	ldr r0, [r2, 0x2C]
	cmp r0, 0
	beq _08061D8E
	ldr r5, _08061D94
	movs r4, 0x5
_08061D70:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061D70
	movs r1, 0x72
	add r1, sp
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_08061D8E:
	movs r2, 0x7
	mov r8, r2
	b _080621E6
	.align 2, 0
_08061D94: .4byte gUnknown_203B080
_08061D98:
	ldr r0, _08061DDC
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08061DF0
	movs r0, 0
	bl sub_8083CE0
	ldr r1, _08061DE0
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0x7
	bne _08061DE8
	mov r1, r9
	ldr r0, [r1, 0x2C]
	cmp r0, 0
	bne _08061DBE
	b _08061F04
_08061DBE:
	ldr r5, _08061DE4
	movs r4, 0x5
_08061DC2:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061DC2
	movs r2, 0x72
	add r2, sp
	b _08061EFE
	.align 2, 0
_08061DDC: .4byte gRealInputs
_08061DE0: .4byte gUnknown_202EE10
_08061DE4: .4byte gUnknown_203B080
_08061DE8:
	adds r0, r1, 0
	movs r1, 0
	bl sub_80136E0
_08061DF0:
	cmp r4, 0x1
	bne _08061E28
	cmp r6, 0
	beq _08061E28
	movs r2, 0x72
	add r2, sp
	movs r1, 0
	ldrsh r0, [r2, r1]
	cmp r0, 0
	bne _08061E06
	b _08061F96
_08061E06:
	ldr r5, _08061E24
	movs r4, 0x5
_08061E0A:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061E0A
	movs r1, 0x72
	add r1, sp
	b _08061F90
	.align 2, 0
_08061E24: .4byte gUnknown_203B084
_08061E28:
	ldr r0, _08061E74
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08061E36
	b _08061FB0
_08061E36:
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _08061E78
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _08061E80
	movs r2, 0x72
	add r2, sp
	movs r1, 0
	ldrsh r0, [r2, r1]
	cmp r0, 0
	bne _08061E54
	b _08061F96
_08061E54:
	ldr r5, _08061E7C
	movs r4, 0x5
_08061E58:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061E58
	movs r1, 0x72
	add r1, sp
	b _08061F90
	.align 2, 0
_08061E74: .4byte gRealInputs
_08061E78: .4byte gUnknown_202EE10
_08061E7C: .4byte gUnknown_203B084
_08061E80:
	adds r0, r1, 0
	movs r1, 0
	bl sub_8013744
	b _08061FB0
_08061E8A:
	ldr r0, [sp, 0x120]
	cmp r0, 0
	bne _08061E92
	b _08061FB0
_08061E92:
	cmp r4, 0x2
	bne _08061EC0
	cmp r5, 0
	beq _08061EC0
	mov r1, r9
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08061F04
	ldr r5, _08061EBC
	movs r4, 0x5
_08061EA6:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061EA6
	b _08061EFC
	.align 2, 0
_08061EBC: .4byte gUnknown_203B080
_08061EC0:
	ldr r0, _08061F0C
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08061F20
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _08061F10
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0x7
	bne _08061F18
	mov r1, r9
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08061F04
	ldr r5, _08061F14
	movs r4, 0x5
_08061EE8:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061EE8
_08061EFC:
	add r2, sp, 0x5C
_08061EFE:
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
_08061F04:
	movs r0, 0x7
	mov r8, r0
	b _080621E6
	.align 2, 0
_08061F0C: .4byte gRealInputs
_08061F10: .4byte gUnknown_202EE10
_08061F14: .4byte gUnknown_203B080
_08061F18:
	adds r0, r1, 0
	movs r1, 0
	bl sub_80136E0
_08061F20:
	cmp r4, 0x1
	bne _08061F50
	cmp r6, 0
	beq _08061F50
	add r2, sp, 0x5C
	movs r1, 0
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _08061F96
	ldr r5, _08061F4C
	movs r4, 0x5
_08061F36:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061F36
	b _08061F8E
	.align 2, 0
_08061F4C: .4byte gUnknown_203B084
_08061F50:
	ldr r0, _08061F9C
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08061FB0
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _08061FA0
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _08061FA8
	add r2, sp, 0x5C
	movs r1, 0
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _08061F96
	ldr r5, _08061FA4
	movs r4, 0x5
_08061F7A:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08061F7A
_08061F8E:
	add r1, sp, 0x5C
_08061F90:
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
_08061F96:
	movs r2, 0
	mov r8, r2
	b _080621E6
	.align 2, 0
_08061F9C: .4byte gRealInputs
_08061FA0: .4byte gUnknown_202EE10
_08061FA4: .4byte gUnknown_203B084
_08061FA8:
	adds r0, r1, 0
	movs r1, 0
	bl sub_8013744
_08061FB0:
	bl sub_80048C8
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08061FBE
	b _08061C48
_08061FBE:
	ldr r5, _0806208C
	ldrh r1, [r5, 0x2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08061FDA
	ldr r0, [sp, 0x124]
	cmp r0, 0
	beq _08061FD2
	b _08061BDA
_08061FD2:
	ldr r2, [sp, 0x120]
	cmp r2, 0
	beq _08061FDA
	b _08061BF8
_08061FDA:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08061FF0
	ldr r2, _08062090
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	bne _08061FF0
	b _080621CA
_08061FF0:
	ldr r0, [sp, 0x124]
	cmp r0, 0
	beq _080620BC
	movs r1, 0x18
	ldrsh r2, [r7, r1]
	lsls r1, r2, 2
	add r0, sp, 0x8C
	adds r0, r1
	ldr r6, [r0]
	mov r8, r2
	bl sub_8062D68
	ldr r0, _08062094
	str r4, [r0]
	bl sub_8083D08
	movs r0, 0xC
	movs r1, 0
	bl sub_8044F5C
	add r0, sp, 0xB0
	movs r1, 0x16
	bl sub_805FC30
	ldr r4, _08062090
	movs r2, 0x2A
	adds r2, r4
	mov r10, r2
_08062028:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1C
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0806204C
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_0806204C:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08062064
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_08062064:
	ldrh r1, [r5, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062078
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08062098
_08062078:
	bl sub_8083D08
	adds r0, r6, 0
	bl sub_806285C
_08062082:
	movs r0, 0
	str r0, [sp, 0x128]
	mov r10, r0
	b _080621E6
	.align 2, 0
_0806208C: .4byte gRealInputs
_08062090: .4byte gUnknown_202EE10
_08062094: .4byte gUnknown_202EE6C
_08062098:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080620A8
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, 0
	beq _08062028
_080620A8:
	bl sub_8083D30
	b _080621BA
_080620AE:
	bl sub_8083D08
	movs r1, 0x18
	ldrsh r0, [r7, r1]
	cmp r0, 0
	bne _080621B0
	b _08062198
_080620BC:
	ldr r2, [sp, 0x120]
	cmp r2, 0
	bne _080620C4
	b _080621C0
_080620C4:
	movs r0, 0x18
	ldrsh r1, [r7, r0]
	mov r2, r9
	adds r0, r2, r1
	ldrb r6, [r0]
	mov r8, r1
	bl sub_8062D68
	ldr r0, _08062190
	ldr r1, [sp, 0x124]
	str r1, [r0]
	bl sub_8083D08
	movs r0, 0x28
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0xC
	movs r1, 0
	bl sub_8044F5C
	ldr r0, [sp, 0x110]
	movs r1, 0x1
	bl CannotMove
	lsls r0, 24
	cmp r0, 0
	beq _08062102
	movs r0, 0x28
	bl sub_8044FF0
_08062102:
	add r0, sp, 0xB0
	movs r1, 0x16
	bl sub_805FC30
	ldr r4, _08062194
	movs r2, 0x2A
	adds r2, r4
	mov r10, r2
_08062112:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1C
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08062136
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08062136:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0806214E
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_0806214E:
	ldrh r1, [r5, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062162
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08062174
_08062162:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _080620AE
	bl sub_8083D30
_08062174:
	ldrh r1, [r5, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08062186
	mov r2, r10
	ldrb r0, [r2]
	cmp r0, 0
	beq _08062112
_08062186:
	bl sub_8083D30
	movs r0, 0
	mov r10, r0
	b _080621E6
	.align 2, 0
_08062190: .4byte gUnknown_202EE6C
_08062194: .4byte gUnknown_202EE10
_08062198:
	ldr r0, _080621AC
	bl PlaySoundEffect
	ldr r0, [sp, 0x11C]
	adds r0, 0x8C
	adds r1, r6, 0
	bl ToggleIQSkill
	b _080621BA
	.align 2, 0
_080621AC: .4byte 0x00000133
_080621B0:
	adds r0, r6, 0
	bl sub_806262C
	movs r1, 0
	str r1, [sp, 0x128]
_080621BA:
	movs r2, 0
	mov r10, r2
	b _080621E6
_080621C0:
	bl sub_8083D08
	movs r0, 0x1
	mov r10, r0
	b _080621E6
_080621CA:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080621DE
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _080621DE
	b _08061C48
_080621DE:
	bl sub_8083D30
	movs r1, 0x1
_080621E4:
	mov r10, r1
_080621E6:
	ldr r2, [sp, 0x128]
	cmp r2, 0
	beq _08062204
	ldr r0, [sp, 0x120]
	cmp r0, 0
	bne _080621F8
	ldr r1, [sp, 0x124]
	cmp r1, 0
	beq _080621FE
_080621F8:
	ldr r0, _0806222C
	bl AddMenuCursorSprite
_080621FE:
	movs r0, 0x1C
	bl sub_803E46C
_08062204:
	mov r2, r10
	cmp r2, 0
	bne _0806220C
	b _08061B18
_0806220C:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	ldr r0, [sp, 0x110]
	bl LoadIQSkills
	add sp, 0x130
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806222C: .4byte gUnknown_202EE10
	thumb_func_end sub_8061A38

	thumb_func_start sub_8062230
sub_8062230:
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x8
	ldr r0, _08062380
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08062248
	b _08062372
_08062248:
	ldr r0, _08062384
	mov r9, r0
	movs r0, 0
	movs r1, 0
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _08062388
	ands r1, r0
	ldr r3, _0806238C
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r1, sp
	ldrh r1, [r1]
	adds r2, r3, 0
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08062390
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r6, _08062394
	mov r8, r6
	mov r0, r8
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08062398
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _0806239C
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	movs r4, 0x80
	lsls r4, 7
	mov r0, sp
	ldrh r1, [r0]
	ldr r6, _080623A0
	adds r0, r6, 0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	orrs r4, r0
	ands r3, r1
	orrs r3, r4
	str r3, [sp]
	movs r1, 0x80
	lsls r1, 6
	mov r5, sp
	ldrh r0, [r5, 0x2]
	ldr r2, _080623A4
	ands r2, r0
	orrs r2, r1
	ands r2, r6
	movs r3, 0xFC
	lsls r3, 2
	ldrh r1, [r5, 0x4]
	movs r0, 0xFC
	lsls r0, 8
	ands r0, r1
	orrs r0, r3
	mov r1, r8
	ands r0, r1
	movs r3, 0xF
	movs r1, 0xF0
	lsls r1, 8
	ldr r4, _080623A8
	ands r0, r4
	orrs r0, r1
	strh r0, [r5, 0x4]
	mov r6, r9
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x8
	ands r0, r4
	lsls r0, 4
	ldrh r1, [r5, 0x6]
	ands r3, r1
	orrs r3, r0
	strh r3, [r5, 0x6]
	movs r3, 0
	ldrsh r0, [r6, r3]
	lsls r0, 3
	adds r0, 0x40
	ldr r1, _080623AC
	ands r0, r1
	movs r1, 0xFE
	lsls r1, 8
	ands r2, r1
	orrs r2, r0
	strh r2, [r5, 0x2]
	movs r1, 0x80
	lsls r1, 1
	mov r0, sp
	movs r2, 0
	movs r3, 0
	bl AddSprite
_08062372:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062380: .4byte gUnknown_202EDCC
_08062384: .4byte gUnknown_2027370
_08062388: .4byte 0x0000feff
_0806238C: .4byte 0xffff0000
_08062390: .4byte 0x0000fdff
_08062394: .4byte 0x0000f3ff
_08062398: .4byte 0x0000efff
_0806239C: .4byte 0x0000dfff
_080623A0: .4byte 0x00003fff
_080623A4: .4byte 0x0000c1ff
_080623A8: .4byte 0x00000fff
_080623AC: .4byte 0x000001ff
	thumb_func_end sub_8062230

	thumb_func_start sub_80623B0
sub_80623B0:
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r0, _080624D4
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _080623C2
	b _080624CA
_080623C2:
	ldr r6, _080624D8
	movs r0, 0
	movs r1, 0
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _080624DC
	ands r1, r0
	ldr r3, _080624E0
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r1, sp
	ldrh r1, [r1]
	adds r2, r3, 0
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080624E4
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r5, _080624E8
	adds r0, r5, 0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080624EC
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080624F0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	movs r4, 0x80
	lsls r4, 7
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080624F4
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	orrs r4, r0
	ands r3, r1
	orrs r3, r4
	str r3, [sp]
	mov r3, sp
	movs r2, 0xFC
	lsls r2, 2
	ldrh r1, [r3, 0x4]
	movs r0, 0xFC
	lsls r0, 8
	ands r0, r1
	orrs r0, r2
	ands r0, r5
	movs r2, 0xF
	movs r1, 0xF0
	lsls r1, 8
	ldr r4, _080624F8
	ands r0, r4
	orrs r0, r1
	strh r0, [r3, 0x4]
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x70
	ands r0, r4
	lsls r0, 4
	ldrh r1, [r3, 0x6]
	ands r2, r1
	orrs r2, r0
	strh r2, [r3, 0x6]
	movs r1, 0
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x40
	ldr r1, _080624FC
	ands r0, r1
	strh r0, [r3, 0x2]
	subs r1, 0xFF
	mov r0, sp
	movs r2, 0
	movs r3, 0
	bl AddSprite
_080624CA:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080624D4: .4byte gUnknown_202EDCC
_080624D8: .4byte gUnknown_2027370
_080624DC: .4byte 0x0000feff
_080624E0: .4byte 0xffff0000
_080624E4: .4byte 0x0000fdff
_080624E8: .4byte 0x0000f3ff
_080624EC: .4byte 0x0000efff
_080624F0: .4byte 0x0000dfff
_080624F4: .4byte 0x00003fff
_080624F8: .4byte 0x00000fff
_080624FC: .4byte 0x000001ff
	thumb_func_end sub_80623B0

	thumb_func_start sub_8062500
sub_8062500:
	push {r4,r5,lr}
	ldr r0, _0806257C
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08062574
	ldr r5, _08062580
	ldr r0, _08062584
	ldrh r2, [r0]
	ldr r1, _08062588
	ands r1, r2
	ldr r2, _0806258C
	ands r1, r2
	ldr r4, _08062590
	ands r1, r4
	ldr r2, _08062594
	ands r1, r2
	ldr r2, _08062598
	ands r1, r2
	movs r3, 0x80
	lsls r3, 7
	ldr r2, _0806259C
	ands r1, r2
	orrs r1, r3
	strh r1, [r0]
	movs r3, 0xFC
	lsls r3, 2
	ldrh r2, [r0, 0x4]
	movs r1, 0xFC
	lsls r1, 8
	ands r1, r2
	orrs r1, r3
	ands r1, r4
	movs r3, 0xF
	movs r2, 0xF0
	lsls r2, 8
	ldr r4, _080625A0
	ands r1, r4
	orrs r1, r2
	strh r1, [r0, 0x4]
	movs r2, 0x2
	ldrsh r1, [r5, r2]
	lsls r1, 3
	adds r1, 0x60
	ands r1, r4
	lsls r1, 4
	ldrh r2, [r0, 0x6]
	ands r3, r2
	orrs r3, r1
	strh r3, [r0, 0x6]
	movs r1, 0x70
	strh r1, [r0, 0x2]
	adds r1, 0x90
	movs r2, 0
	movs r3, 0
	bl AddSprite
_08062574:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806257C: .4byte gUnknown_202EDCC
_08062580: .4byte gUnknown_2027370
_08062584: .4byte gUnknown_202F268
_08062588: .4byte 0x0000feff
_0806258C: .4byte 0x0000fdff
_08062590: .4byte 0x0000f3ff
_08062594: .4byte 0x0000efff
_08062598: .4byte 0x0000dfff
_0806259C: .4byte 0x00003fff
_080625A0: .4byte 0x00000fff
	thumb_func_end sub_8062500

	thumb_func_start sub_80625A4
sub_80625A4:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	adds r7, r0, 0
	mov r9, r1
	mov r0, sp
	bl sub_801317C
	movs r4, 0
	cmp r4, r7
	bge _0806261A
	subs r0, r7, 0x1
	mov r8, r0
	mov r5, sp
_080625C4:
	lsls r0, r4, 2
	add r0, r9
	ldr r0, [r0]
	mov r1, sp
	bl sub_80639E4
	adds r6, r4, 0x1
	b _080625E8
_080625D4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080625E2
	ldrb r0, [r5, 0x2]
	cmp r0, 0
	beq _080625E8
_080625E2:
	bl sub_8083D30
	b _08062614
_080625E8:
	cmp r4, r8
	bge _080625F0
	bl sub_8062500
_080625F0:
	mov r0, sp
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _08062628
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062610
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _080625D4
_08062610:
	bl sub_8083D08
_08062614:
	adds r4, r6, 0
	cmp r4, r7
	blt _080625C4
_0806261A:
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062628: .4byte gRealInputs
	thumb_func_end sub_80625A4

	thumb_func_start sub_806262C
sub_806262C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x88
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	mov r0, sp
	adds r0, 0x70
	str r0, [sp, 0x84]
	add r0, sp, 0x10
	mov r8, r0
	movs r0, 0
	mov r9, r0
	add r7, sp, 0x4
	add r6, sp, 0x80
_08062650:
	add r0, sp, 0x4
	bl sub_801317C
	mov r0, r8
	bl sub_80140B4
	mov r0, r8
	str r6, [r0, 0x14]
	movs r1, 0x1
	add r0, sp, 0x80
	strb r1, [r0]
	mov r0, r9
	strb r0, [r6, 0x1]
	movs r0, 0x10
	strb r0, [r6, 0x2]
	mov r0, r9
	strb r0, [r6, 0x3]
	mov r0, r8
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	mov r0, r10
	bl GetIQSkillName
	adds r1, r0, 0
	ldr r0, _080626CC
	bl strcpy
	ldr r0, _080626D0
	ldr r2, [r0]
	mov r0, r9
	str r0, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	mov r0, r10
	bl GetIQSkillDescription
	adds r2, r0, 0
	mov r0, r9
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x10
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	mov r0, r10
	bl GetIQSkillDescription
	ldr r1, [sp, 0x84]
	bl sub_8097DF0
	adds r5, r0, 0
	b _080626EA
	.align 2, 0
_080626CC: .4byte gUnknown_202DE58
_080626D0: .4byte gUnknown_80FE95C
_080626D4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080626E2
	ldrb r0, [r7, 0x2]
	cmp r0, 0
	beq _080626EA
_080626E2:
	movs r4, 0x1
	bl sub_8083D30
	b _08062718
_080626EA:
	cmp r5, 0
	beq _080626F2
	bl sub_8062500
_080626F2:
	add r0, sp, 0x4
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _0806272C
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062712
	ldrb r0, [r7, 0x1]
	cmp r0, 0
	beq _080626D4
_08062712:
	movs r4, 0
	bl sub_8083D08
_08062718:
	cmp r4, 0
	bne _08062730
	cmp r5, 0
	beq _08062730
	adds r0, r5, 0
	ldr r1, [sp, 0x84]
	bl sub_80625A4
	b _08062650
	.align 2, 0
_0806272C: .4byte gRealInputs
_08062730:
	movs r0, 0x4
	movs r1, 0x3E
	bl sub_803E708
	add sp, 0x88
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_806262C

	thumb_func_start sub_8062748
sub_8062748:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x88
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	mov r0, sp
	adds r0, 0x70
	str r0, [sp, 0x84]
	add r0, sp, 0x10
	mov r8, r0
	movs r0, 0
	mov r9, r0
	add r7, sp, 0x4
	add r6, sp, 0x80
_0806276C:
	add r0, sp, 0x4
	bl sub_801317C
	mov r0, r8
	bl sub_80140B4
	mov r0, r8
	str r6, [r0, 0x14]
	movs r1, 0x1
	add r0, sp, 0x80
	strb r1, [r0]
	mov r0, r9
	strb r0, [r6, 0x1]
	movs r0, 0x10
	strb r0, [r6, 0x2]
	mov r0, r9
	strb r0, [r6, 0x3]
	mov r0, r8
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	ldr r0, _080627E0
	mov r1, r10
	bl CopyTacticsNameToBuffer
	ldr r0, _080627E4
	ldr r2, [r0]
	mov r0, r9
	str r0, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	mov r0, r10
	bl GetTacticsDescription
	adds r2, r0, 0
	mov r0, r9
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x10
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	mov r0, r10
	bl GetTacticsDescription
	ldr r1, [sp, 0x84]
	bl sub_8097DF0
	adds r5, r0, 0
	b _080627FE
	.align 2, 0
_080627E0: .4byte gUnknown_202DE58
_080627E4: .4byte gUnknown_80FE960
_080627E8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080627F6
	ldrb r0, [r7, 0x2]
	cmp r0, 0
	beq _080627FE
_080627F6:
	movs r4, 0x1
	bl sub_8083D30
	b _0806282C
_080627FE:
	cmp r5, 0
	beq _08062806
	bl sub_8062500
_08062806:
	add r0, sp, 0x4
	movs r1, 0
	bl nullsub_34
	movs r0, 0x3E
	bl sub_803E46C
	ldr r0, _08062840
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062826
	ldrb r0, [r7, 0x1]
	cmp r0, 0
	beq _080627E8
_08062826:
	movs r4, 0
	bl sub_8083D08
_0806282C:
	cmp r4, 0
	bne _08062844
	cmp r5, 0
	beq _08062844
	adds r0, r5, 0
	ldr r1, [sp, 0x84]
	bl sub_80625A4
	b _0806276C
	.align 2, 0
_08062840: .4byte gRealInputs
_08062844:
	movs r0, 0x4
	movs r1, 0x3E
	bl sub_803E708
	add sp, 0x88
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8062748

	thumb_func_start sub_806285C
sub_806285C:
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0xD4
	mov r10, r0
	add r0, sp, 0x10
	mov r8, r0
	add r5, sp, 0x70
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x74]
	add r1, sp, 0x78
	movs r6, 0
	movs r0, 0
	mov r9, r0
	movs r0, 0x2
	strh r0, [r1]
	strh r0, [r1, 0x2]
	add r1, sp, 0x7C
	movs r0, 0x1A
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x7E
	movs r1, 0xC
	strh r1, [r0]
	add r0, sp, 0x80
	strh r1, [r0]
	add r0, sp, 0x84
	add r4, sp, 0xD0
	str r4, [r0]
	add r0, sp, 0x88
	movs r1, 0x3
	str r1, [r0, 0x4]
	add r0, sp, 0xA0
	str r1, [r0, 0x4]
	add r0, sp, 0xB8
	str r1, [r0, 0x4]
	mov r0, r8
	adds r1, r5, 0
	movs r2, 0x60
	bl memcpy
	add r0, sp, 0x4
	bl sub_801317C
	movs r0, 0x1
	strb r0, [r4]
	strb r6, [r4, 0x1]
	movs r0, 0x10
	strb r0, [r4, 0x2]
	strb r6, [r4, 0x3]
	mov r0, r8
	movs r1, 0x1
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	mov r0, r10
	bl sub_808E4FC
	adds r1, r0, 0
	ldr r0, _0806291C
	bl strcpy
	ldr r0, _08062920
	ldr r2, [r0]
	mov r0, r9
	str r0, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	mov r0, r10
	bl sub_808E51C
	adds r2, r0, 0
	mov r0, r9
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x10
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	add r4, sp, 0x4
	b _08062938
	.align 2, 0
_0806291C: .4byte gUnknown_202DE58
_08062920: .4byte gUnknown_80FE964
_08062924:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08062932
	ldrb r0, [r4, 0x2]
	cmp r0, 0
	beq _08062938
_08062932:
	bl sub_8083D30
	b _0806295C
_08062938:
	add r0, sp, 0x4
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _08062974
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062958
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08062924
_08062958:
	bl sub_8083D08
_0806295C:
	movs r0, 0x4
	movs r1, 0x3E
	bl sub_803E708
	add sp, 0xD4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062974: .4byte gRealInputs
	thumb_func_end sub_806285C

	thumb_func_start DrawFieldGiveItemMenu
DrawFieldGiveItemMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x80
	mov r8, r0
	adds r6, r1, 0
	add r4, sp, 0x1C
	ldr r1, _080629AC
	adds r0, r4, 0
	movs r2, 0x60
	bl memcpy
	movs r0, 0
	str r0, [sp, 0x7C]
	mov r1, r8
	cmp r1, 0
	beq _080629A2
	subs r0, 0x1
	str r0, [r1]
_080629A2:
	cmp r6, 0x1
	bne _080629BA
	add r1, sp, 0x4C
	ldr r0, _080629B0
	b _080629C2
	.align 2, 0
_080629AC: .4byte gUnknown_8106C30
_080629B0: .4byte gUnknown_8106C00
_080629B4:
	bl sub_8083D08
	b _08062AF4
_080629BA:
	cmp r6, 0x2
	bne _080629CA
	add r1, sp, 0x4C
	ldr r0, _08062A38
_080629C2:
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
_080629CA:
	add r0, sp, 0x4
	adds r1, r4, 0
	movs r2, 0
	bl DrawFieldTeamMenu
	movs r0, 0x1
	bl sub_80073B8
	ldr r0, _08062A3C
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	movs r1, 0x3
	movs r3, 0x1
	bl xxx_call_draw_string
	movs r0, 0x1
	bl sub_80073E0
	ldr r0, _08062A40
	mov r9, r0
	add r7, sp, 0x8
	ldr r1, _08062A44
	mov r10, r1
_080629FC:
	mov r2, r10
	movs r3, 0x18
	ldrsh r0, [r2, r3]
	lsls r0, 2
	adds r0, r7, r0
	ldr r5, [r0]
	cmp r5, 0
	blt _08062A70
	ldr r0, _08062A48
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08062A4C
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08062A5A
	cmp r9, r5
	beq _08062A5A
	cmp r6, 0x1
	bne _08062A50
	adds r0, r4, 0
	bl sub_8062B74
	b _08062A5A
	.align 2, 0
_08062A38: .4byte gUnknown_8106C18
_08062A3C: .4byte gWhichTextPtr2
_08062A40: .4byte 0xfffffc27
_08062A44: .4byte gUnknown_202EE10
_08062A48: .4byte gDungeonGlobalData
_08062A4C: .4byte 0x0001357c
_08062A50:
	cmp r6, 0x2
	bne _08062A5A
	adds r0, r4, 0
	bl sub_8062CA8
_08062A5A:
	mov r9, r5
	adds r0, r4, 0
	movs r1, 0
	bl sub_806A2BC
	adds r0, r4, 0x4
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
_08062A70:
	ldr r5, _08062B40
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	ldr r4, _08062B44
	ldrh r1, [r4, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08062A98
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_08062A98:
	ldrh r1, [r4, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08062AB0
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_08062AB0:
	ldrh r1, [r4, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062AC4
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08062AD8
_08062AC4:
	movs r3, 0x18
	ldrsh r0, [r5, r3]
	add r1, sp, 0x18
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _08062AD4
	b _080629B4
_08062AD4:
	bl sub_8083D30
_08062AD8:
	ldr r0, _08062B44
	ldrh r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08062AEC
	ldr r5, _08062B48
	ldrb r0, [r5]
	cmp r0, 0
	beq _080629FC
_08062AEC:
	bl sub_8083D30
	movs r0, 0x1
	str r0, [sp, 0x7C]
_08062AF4:
	ldr r4, _08062B40
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	bl sub_804AA60
	bl GetLeaderEntity
	movs r1, 0
	bl sub_806A2BC
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x4
	movs r1, 0x3E
	bl sub_803E708
	ldr r1, [sp, 0x7C]
	cmp r1, 0
	bne _08062B3C
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r7, r0
	ldr r5, [r0]
	mov r3, r8
	cmp r3, 0
	beq _08062B38
	str r5, [r3]
_08062B38:
	cmp r5, 0
	bge _08062B4C
_08062B3C:
	movs r0, 0
	b _08062B5A
	.align 2, 0
_08062B40: .4byte gUnknown_202EE10
_08062B44: .4byte gRealInputs
_08062B48: .4byte gUnknown_202EE3A
_08062B4C:
	ldr r0, _08062B6C
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r5, _08062B70
	adds r0, r5
	adds r0, r1
	ldr r0, [r0]
_08062B5A:
	add sp, 0x80
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062B6C: .4byte gDungeonGlobalData
_08062B70: .4byte 0x0001357c
	thumb_func_end DrawFieldGiveItemMenu

	thumb_func_start sub_8062B74
sub_8062B74:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	mov r10, r0
	ldr r0, [r0, 0x70]
	mov r9, r0
	movs r0, 0x2
	bl sub_8008C54
	movs r0, 0x2
	bl sub_80073B8
	ldr r0, _08062BD0
	mov r1, r10
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08062BD4
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	movs r1, 0x10
	mov r8, r1
	mov r0, r9
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08062BDE
	mov r0, r9
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	beq _08062BCA
	cmp r0, 0x47
	bne _08062BD8
_08062BCA:
	movs r0, 0x1
	b _08062BDA
	.align 2, 0
_08062BD0: .4byte gAvailablePokemonNames
_08062BD4: .4byte gUnknown_80FE978
_08062BD8:
	movs r0, 0
_08062BDA:
	cmp r0, 0
	beq _08062BF4
_08062BDE:
	ldr r2, _08062BF0
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	mov r1, r8
	movs r3, 0x2
	bl xxx_format_and_draw
	b _08062C8A
	.align 2, 0
_08062BF0: .4byte gUnknown_8106C90
_08062BF4:
	movs r7, 0
	movs r4, 0x8C
	lsls r4, 1
	add r4, r9
	adds r5, r4, 0
_08062BFE:
	add r0, sp, 0x4
	movs r1, 0
	movs r2, 0xC
	bl memset
	movs r0, 0x6A
	str r0, [sp, 0x8]
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08062C80
	mov r1, r9
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	beq _08062C22
	movs r0, 0x2
	b _08062C24
_08062C22:
	movs r0, 0x4
_08062C24:
	str r0, [sp, 0x4]
	mov r0, r10
	adds r1, r5, 0
	movs r2, 0x1
	bl IsMoveUsable
	add r1, sp, 0x4
	movs r2, 0
	lsls r0, 24
	cmp r0, 0
	bne _08062C3C
	movs r2, 0x1
_08062C3C:
	strb r2, [r1, 0x8]
	ldr r0, _08062CA0
	adds r1, r5, 0
	add r2, sp, 0x4
	bl sub_80928C0
	ldrb r1, [r4]
	movs r0, 0x2
	ands r0, r1
	movs r6, 0xD
	cmp r0, 0
	bne _08062C6C
	movs r6, 0x8
	cmp r7, 0
	beq _08062C6C
	mov r2, r8
	subs r2, 0x2
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0x2
	movs r1, 0xC
	movs r3, 0x78
	bl sub_80078A4
_08062C6C:
	movs r0, 0
	str r0, [sp]
	adds r0, r6, 0
	mov r1, r8
	ldr r2, _08062CA4
	movs r3, 0x2
	bl xxx_format_and_draw
	movs r0, 0xC
	add r8, r0
_08062C80:
	adds r4, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x3
	ble _08062BFE
_08062C8A:
	movs r0, 0x2
	bl sub_80073E0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062CA0: .4byte gUnknown_202DE58
_08062CA4: .4byte gUnknown_8106C98
	thumb_func_end sub_8062B74

	thumb_func_start sub_8062CA8
sub_8062CA8:
	push {r4-r7,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldr r5, [r4, 0x70]
	movs r0, 0x2
	bl sub_8008C54
	movs r0, 0x2
	bl sub_80073B8
	ldr r0, _08062CF8
	adds r1, r4, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08062CFC
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	movs r7, 0x8
	movs r6, 0x12
	adds r0, r5, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08062D08
	adds r0, r5, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	beq _08062CF4
	cmp r0, 0x47
	bne _08062D00
_08062CF4:
	movs r0, 0x1
	b _08062D02
	.align 2, 0
_08062CF8: .4byte gAvailablePokemonNames
_08062CFC: .4byte gUnknown_80FE940
_08062D00:
	movs r0, 0
_08062D02:
	adds r4, r0, 0
	cmp r4, 0
	beq _08062D18
_08062D08:
	ldr r2, _08062D14
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	b _08062D2C
	.align 2, 0
_08062D14: .4byte gUnknown_8106C90
_08062D18:
	adds r2, r5, 0
	adds r2, 0x60
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08062D3C
	ldr r2, _08062D38
	str r4, [sp]
	adds r0, r7, 0
_08062D2C:
	adds r1, r6, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	b _08062D52
	.align 2, 0
_08062D38: .4byte gUnknown_8106C9C
_08062D3C:
	ldr r0, _08062D60
	adds r1, r2, 0
	bl sub_8045C18
	ldr r2, _08062D64
	str r4, [sp]
	adds r0, r7, 0
	adds r1, r6, 0
	movs r3, 0x2
	bl xxx_format_and_draw
_08062D52:
	movs r0, 0x2
	bl sub_80073E0
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062D60: .4byte gUnknown_202DE58
_08062D64: .4byte gUnknown_8106C98
	thumb_func_end sub_8062CA8

	thumb_func_start sub_8062D68
sub_8062D68:
	push {lr}
	ldr r0, _08062D84
	movs r1, 0
	strh r1, [r0, 0x1E]
	strh r1, [r0, 0x20]
	strh r1, [r0, 0xC]
	strh r1, [r0, 0xE]
	strh r1, [r0, 0x14]
	adds r0, 0x28
	bl sub_801317C
	pop {r0}
	bx r0
	.align 2, 0
_08062D84: .4byte gUnknown_202EE10
	thumb_func_end sub_8062D68

	thumb_func_start sub_8062D88
sub_8062D88:
	movs r0, 0x1
	bx lr
	thumb_func_end sub_8062D88

	thumb_func_start sub_8062D8C
sub_8062D8C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r10, r0
	ldrb r5, [r0, 0x4]
	ldr r0, _08062E24
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08062E28
	adds r0, r2
	adds r0, r1
	ldr r0, [r0]
	str r0, [sp, 0x4]
	adds r7, r0, 0
_08062DAE:
	movs r0, 0
	mov r9, r0
	movs r6, 0
	movs r4, 0
	adds r2, r7, 0x4
	mov r8, r2
_08062DBA:
	ldr r0, _08062E24
	ldr r0, [r0]
	lsls r1, r4, 2
	ldr r2, _08062E28
	adds r0, r2
	adds r0, r1
	ldr r0, [r0]
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _08062DDA
	cmp r4, r5
	bne _08062DD8
	mov r9, r6
_08062DD8:
	adds r6, 0x1
_08062DDA:
	adds r4, 0x1
	cmp r4, 0x3
	ble _08062DBA
	adds r0, r7, 0
	movs r1, 0
	bl sub_806A2BC
	mov r0, r8
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
	movs r0, 0x1
	bl sub_8044C10
	str r6, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x1
	mov r3, r9
	bl sub_8062F90
	lsls r0, 24
	cmp r0, 0
	beq _08062E10
	b _08062F80
_08062E10:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bne _08062E6C
	adds r6, r5, 0
	movs r4, 0
	b _08062E2E
	.align 2, 0
_08062E24: .4byte gDungeonGlobalData
_08062E28: .4byte 0x0001357c
_08062E2C:
	adds r4, 0x1
_08062E2E:
	cmp r4, 0x3
	bgt _08062E54
	adds r5, 0x1
	cmp r5, 0x3
	ble _08062E3A
	movs r5, 0
_08062E3A:
	ldr r0, _08062E64
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08062E68
	adds r0, r2
	adds r0, r1
	ldr r7, [r0]
	adds r0, r7, 0
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _08062E2C
_08062E54:
	mov r0, r10
	strb r5, [r0, 0x4]
	cmp r6, r5
	beq _08062F32
	movs r0, 0
	bl sub_8083CE0
	b _08062F32
	.align 2, 0
_08062E64: .4byte gDungeonGlobalData
_08062E68: .4byte 0x0001357c
_08062E6C:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7
	bne _08062EC0
	adds r6, r5, 0
	movs r4, 0
	b _08062E80
_08062E7E:
	adds r4, 0x1
_08062E80:
	cmp r4, 0x3
	bgt _08062EA6
	subs r5, 0x1
	cmp r5, 0
	bge _08062E8C
	movs r5, 0x3
_08062E8C:
	ldr r0, _08062EB8
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08062EBC
	adds r0, r2
	adds r0, r1
	ldr r7, [r0]
	adds r0, r7, 0
	bl sub_8071A8C
	lsls r0, 24
	cmp r0, 0
	beq _08062E7E
_08062EA6:
	mov r0, r10
	strb r5, [r0, 0x4]
	cmp r6, r5
	beq _08062F32
	movs r0, 0
	bl sub_8083CE0
	b _08062F32
	.align 2, 0
_08062EB8: .4byte gDungeonGlobalData
_08062EBC: .4byte 0x0001357c
_08062EC0:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1D
	bne _08062ED6
	bl sub_805F1A0
	bl sub_80637E8
	b _08062F32
_08062ED6:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1E
	bne _08062EF6
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	bl sub_805F1A0
	movs r1, 0x1
	bl sub_8063A70
	b _08062F32
_08062EF6:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x33
	bne _08062F16
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	bl sub_805F1A0
	movs r1, 0
	bl sub_8063A70
	b _08062F32
_08062F16:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1F
	bne _08062F3A
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	bl sub_805F1A0
	bl sub_8063B54
_08062F32:
	movs r0, 0x1
	bl sub_8044C10
	b _08062F5E
_08062F3A:
	bl sub_805F1AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x21
	bne _08062F5E
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	bl sub_805F1A0
	movs r1, 0x1
	bl sub_8063CF0
	movs r0, 0x1
	bl sub_8044C10
_08062F5E:
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	bne _08062F6A
	b _08062DAE
_08062F6A:
	ldr r0, [sp, 0x4]
	movs r1, 0
	bl sub_806A2BC
	ldr r0, [sp, 0x4]
	adds r0, 0x4
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_804A728
_08062F80:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8062D8C

	thumb_func_start sub_8062F90
sub_8062F90:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xE8
	mov r8, r0
	str r3, [sp, 0xDC]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xD4]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0xD8]
	ldr r0, [r0, 0x70]
	mov r9, r0
	bl GetLeaderEntity
	ldr r0, [r0, 0x70]
	str r0, [sp, 0xE4]
	add r4, sp, 0x70
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x74]
	add r0, sp, 0x78
	movs r6, 0
	movs r1, 0x2
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r1, sp, 0x7C
	movs r0, 0x12
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x7E
	movs r1, 0x10
	strh r1, [r0]
	add r0, sp, 0x80
	strh r1, [r0]
	add r5, sp, 0xD0
	str r5, [sp, 0x84]
	movs r1, 0x3
	str r1, [sp, 0x8C]
	add r0, sp, 0xA0
	str r1, [r0, 0x4]
	add r0, sp, 0xB8
	str r1, [r0, 0x4]
	add r0, sp, 0x10
	adds r1, r4, 0
	movs r2, 0x60
	bl memcpy
	ldr r0, _080630A4
	str r6, [r0]
	movs r3, 0
	ldr r7, [sp, 0xE4]
	adds r7, 0x44
_08063008:
	lsls r0, r3, 3
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r1
	mov r1, r9
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08063032
	ldrb r1, [r2, 0x1]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08063032
	movs r0, 0xFD
	ands r0, r1
	strb r0, [r2, 0x1]
	ldr r0, _080630A4
	str r3, [r0]
_08063032:
	adds r3, 0x1
	cmp r3, 0x3
	ble _08063008
_08063038:
	movs r5, 0
	movs r2, 0
	str r2, [sp, 0xE0]
	mov r10, r2
	add r0, sp, 0xD0
	str r0, [sp]
	add r1, sp, 0x70
	str r1, [sp, 0x4]
	ldr r2, [sp, 0xDC]
	str r2, [sp, 0x8]
	ldr r0, [sp, 0x108]
	str r0, [sp, 0xC]
	mov r0, r8
	mov r1, r9
	ldr r2, [sp, 0xD4]
	add r3, sp, 0x10
	bl sub_80633E4
_0806305C:
	ldr r0, _080630A8
	add r1, sp, 0x70
	bl AddMenuCursorSprite_
	movs r0, 0x1E
	bl sub_803E46C
	ldr r2, _080630AC
	ldrh r1, [r2, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080630DE
	ldrh r0, [r2]
	lsrs r0, 8
	movs r1, 0x1
	ands r0, r1
	ldr r1, _080630A8
	movs r2, 0x18
	ldrsh r6, [r1, r2]
	cmp r0, 0
	beq _080630BA
	movs r0, 0x8C
	lsls r0, 1
	add r0, r9
	adds r1, r6, 0
	bl sub_8092F80
	ldr r1, _080630A4
	str r0, [r1]
	cmp r6, r0
	beq _080630B0
	movs r0, 0
	bl sub_8083CE0
	b _080630B4
	.align 2, 0
_080630A4: .4byte gUnknown_202F2D8
_080630A8: .4byte gUnknown_202EE10
_080630AC: .4byte gRealInputs
_080630B0:
	bl sub_8083D30
_080630B4:
	movs r0, 0x1
	mov r10, r0
	b _080631F4
_080630BA:
	movs r0, 0x8C
	lsls r0, 1
	add r0, r9
	adds r1, r6, 0
	bl sub_8092D80
	adds r1, r0, 0
	ldr r0, _08063118
	bl sub_8013780
	ldr r1, _08063118
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r6, r0
	beq _080630DE
	movs r0, 0
	bl sub_8083CE0
_080630DE:
	ldr r2, _0806311C
	ldrh r1, [r2, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08063150
	ldrh r0, [r2]
	lsrs r0, 8
	movs r1, 0x1
	ands r0, r1
	ldr r4, _08063118
	movs r1, 0x18
	ldrsh r6, [r4, r1]
	cmp r0, 0
	beq _0806312E
	movs r0, 0x8C
	lsls r0, 1
	add r0, r9
	adds r1, r6, 0
	bl sub_8093130
	ldr r1, _08063120
	str r0, [r1]
	cmp r6, r0
	beq _08063124
	movs r0, 0
	bl sub_8083CE0
	b _08063128
	.align 2, 0
_08063118: .4byte gUnknown_202EE10
_0806311C: .4byte gRealInputs
_08063120: .4byte gUnknown_202F2D8
_08063124:
	bl sub_8083D30
_08063128:
	movs r2, 0x1
	mov r10, r2
	b _080631F4
_0806312E:
	movs r0, 0x8C
	lsls r0, 1
	add r0, r9
	adds r1, r6, 0
	bl sub_8092DB8
	adds r1, r0, 0
	adds r0, r4, 0
	bl sub_8013780
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r6, r0
	beq _08063150
	movs r0, 0
	bl sub_8083CE0
_08063150:
	ldr r4, _08063174
	ldrh r1, [r4, 0x4]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08063168
	ldr r6, _08063178
	adds r0, r6, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806317C
_08063168:
	adds r0, r7, 0
	movs r1, 0x6
	bl SetAction
	b _080631F4
	.align 2, 0
_08063174: .4byte gRealInputs
_08063178: .4byte gUnknown_202EE10
_0806317C:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0806318E
	adds r0, r6, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	beq _08063198
_0806318E:
	adds r0, r7, 0
	movs r1, 0x7
	bl SetAction
	b _080631F4
_08063198:
	bl sub_8062D88
	ldrh r1, [r4, 0x2]
	ands r0, r1
	cmp r0, 0
	bne _080631AE
	adds r0, r6, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _080631C8
_080631AE:
	ldr r2, [sp, 0xD4]
	cmp r2, 0
	beq _080631C2
	ldrh r0, [r4]
	lsrs r0, 8
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080631C2
	movs r5, 0x3
_080631C2:
	bl sub_8083D08
	b _080631F4
_080631C8:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0806321C
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _08063214
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080631EC
	adds r0, r6, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _080631EC
	b _0806305C
_080631EC:
	bl sub_8083D30
	movs r0, 0x1
	str r0, [sp, 0xE0]
_080631F4:
	ldr r4, _08063210
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1E
	bl sub_803E46C
	ldrh r0, [r7]
	subs r0, 0x6
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _08063224
	b _080633CC
	.align 2, 0
_08063210: .4byte gUnknown_202EE10
_08063214:
	movs r5, 0x2
	bl sub_8083D44
	b _080631F4
_0806321C:
	movs r5, 0x1
	bl sub_8083D44
	b _080631F4
_08063224:
	mov r1, r10
	cmp r1, 0
	beq _0806322C
	b _08063038
_0806322C:
	ldr r2, [sp, 0xE0]
	cmp r2, 0
	beq _08063234
	b _080633B6
_08063234:
	ldr r6, _08063270
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	str r0, [r6]
	cmp r5, 0x1
	bne _08063274
	adds r0, r7, 0
	movs r1, 0x1D
	bl SetAction
	mov r0, r8
	adds r0, 0x24
	ldrb r1, [r0]
	ldr r0, [sp, 0xE4]
	adds r0, 0x48
	strb r1, [r0]
	ldr r1, [r6]
	ldr r0, [sp, 0xE4]
	adds r0, 0x50
	strb r1, [r0]
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x8
	movs r1, 0x1B
	bl sub_803E708
	b _080633B6
	.align 2, 0
_08063270: .4byte gUnknown_202F2D8
_08063274:
	mov r0, r8
	ldr r1, [sp, 0xD4]
	ldr r2, [sp, 0xD8]
	bl sub_8063698
	cmp r5, 0x3
	bne _08063298
	movs r0, 0x20
	bl sub_8044FB4
	adds r6, r0, 0
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _080632CC
	movs r0, 0x21
	b _080632BC
_08063298:
	cmp r5, 0x2
	bne _080632DE
	mov r2, r9
	ldrb r0, [r2, 0x7]
	cmp r0, 0
	beq _080632BA
	movs r0, 0x1E
	bl sub_8044FB4
	adds r6, r0, 0
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _080632CC
	movs r0, 0x33
	b _080632BC
_080632BA:
	movs r0, 0x1F
_080632BC:
	bl sub_8044FB4
	adds r6, r0, 0
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _080632DE
_080632CC:
	mov r0, r8
	bl GetTeamMemberEntityIndex
	adds r2, r0, 0
	adds r0, r7, 0
	adds r1, r6, 0
	bl sub_80637BC
	b _080633B6
_080632DE:
	movs r0, 0x2
	bl sub_8009524
	add r0, sp, 0x10
	movs r1, 0x16
	bl sub_805FC30
	ldr r6, _0806337C
	ldr r5, _08063380
	movs r0, 0x2A
	adds r0, r6
	mov r10, r0
	adds r4, r7, 0
_080632F8:
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0806331C
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_80136E0
_0806331C:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08063334
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_8013744
_08063334:
	bl sub_8062D88
	ldrh r1, [r5, 0x2]
	ands r1, r0
	cmp r1, 0
	bne _0806334A
	adds r0, r6, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08063388
_0806334A:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _08063384
	mov r0, r8
	bl GetTeamMemberEntityIndex
	adds r1, r0, 0
	adds r0, r4, 0
	bl sub_80637A4
	ldrh r0, [r4]
	subs r0, 0x14
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08063376
	bl sub_8083D08
_08063376:
	movs r6, 0
	b _080633A0
	.align 2, 0
_0806337C: .4byte gUnknown_202EE10
_08063380: .4byte gRealInputs
_08063384:
	bl sub_8083D30
_08063388:
	ldrh r1, [r5, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0806339A
	mov r2, r10
	ldrb r0, [r2]
	cmp r0, 0
	beq _080632F8
_0806339A:
	bl sub_8083D30
	movs r6, 0x1
_080633A0:
	ldr r0, _080633E0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	cmp r6, 0x1
	bne _080633B2
	b _08063038
_080633B2:
	movs r0, 0
	str r0, [sp, 0xE0]
_080633B6:
	movs r0, 0x1
	cmp r0, 0
	beq _080633CC
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x8
	movs r1, 0x1E
	bl sub_803E708
_080633CC:
	ldr r0, [sp, 0xE0]
	add sp, 0xE8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080633E0: .4byte gUnknown_202EE10
	thumb_func_end sub_8062F90

	thumb_func_start sub_80633E4
sub_80633E4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	str r0, [sp, 0x20]
	adds r7, r1, 0
	adds r4, r3, 0
	ldr r0, [sp, 0x44]
	mov r8, r0
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	add r1, sp, 0x8
	ldr r0, _08063508
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	movs r0, 0
	add r5, sp, 0x50
	ldrb r6, [r5]
	mov r5, r8
	strb r6, [r5]
	add r6, sp, 0x4C
	ldrb r6, [r6]
	strb r6, [r5, 0x1]
	strb r0, [r5, 0x3]
	movs r6, 0
	ldr r5, _0806350C
	ldr r0, _08063510
	mov r9, r0
	movs r1, 0x1
	mov r12, r1
	movs r3, 0x8C
	lsls r3, 1
	adds r2, r7, r3
	movs r3, 0x3
_08063432:
	ldrb r1, [r2]
	mov r0, r12
	ands r0, r1
	cmp r0, 0
	beq _0806343E
	adds r6, 0x1
_0806343E:
	adds r2, 0x8
	subs r3, 0x1
	cmp r3, 0
	bge _08063432
	movs r3, 0x4
	mov r1, r9
	ldr r0, [r1]
	movs r1, 0
	strh r0, [r5, 0x18]
	strh r6, [r5, 0x1A]
	strh r3, [r5, 0x1C]
	add r2, sp, 0x4C
	ldrh r2, [r2]
	strh r2, [r5, 0x1E]
	add r3, sp, 0x50
	ldrh r3, [r3]
	strh r3, [r5, 0x20]
	strh r1, [r5, 0x4]
	movs r0, 0x10
	strh r0, [r5, 0x6]
	strh r1, [r5, 0x14]
	str r1, [r5]
	adds r0, r5, 0
	adds r0, 0x28
	bl sub_801317C
	movs r0, 0x4
	movs r1, 0xC
	bl sub_80095E4
	adds r0, 0x2
	strh r0, [r4, 0x10]
	strh r0, [r4, 0xE]
	movs r0, 0xD
	mov r6, r8
	strb r0, [r6, 0x2]
	movs r0, 0x2
	strh r0, [r4, 0x8]
	adds r1, r4, 0
	adds r1, 0x18
	adds r0, r4, 0
	adds r0, 0x48
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	adds r1, r4, 0
	adds r1, 0x30
	add r0, sp, 0x8
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r5, 0
	movs r1, 0
	bl sub_80137B0
	ldr r1, _08063514
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r0, 0x10
	lsls r0, 3
	strh r0, [r5, 0xC]
	movs r3, 0x2
	ldrsh r0, [r1, r3]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r5, 0xE]
	ldr r0, _08063518
	adds r1, r7, 0
	movs r2, 0
	bl SetMessageArgument_2
	movs r3, 0
	movs r5, 0x1
_080634DE:
	lsls r1, r3, 3
	movs r4, 0x8C
	lsls r4, 1
	adds r1, r4
	adds r1, r7, r1
	ldr r6, [sp, 0x48]
	adds r4, r6, r3
	movs r0, 0
	strb r0, [r4]
	ldrb r1, [r1]
	adds r2, r5, 0
	ands r2, r1
	cmp r2, 0
	bne _0806351C
	ldr r1, _0806350C
	movs r4, 0x18
	ldrsh r0, [r1, r4]
	cmp r0, r3
	bne _08063526
	strh r2, [r1, 0x18]
	b _08063526
	.align 2, 0
_08063508: .4byte gUnknown_8106CAC
_0806350C: .4byte gUnknown_202EE10
_08063510: .4byte gUnknown_202F2D8
_08063514: .4byte gUnknown_2027370
_08063518: .4byte gAvailablePokemonNames
_0806351C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08063526
	strb r5, [r4]
_08063526:
	adds r3, 0x1
	cmp r3, 0x3
	ble _080634DE
	movs r5, 0x8C
	lsls r5, 1
	adds r2, r7, r5
	mov r6, r10
	str r6, [sp]
	ldr r0, [sp, 0x4C]
	str r0, [sp, 0x4]
	movs r0, 0x4
	ldr r1, [sp, 0x20]
	movs r3, 0
	bl sub_8063578
	movs r0, 0x2
	bl sub_80073B8
	ldr r0, _08063574
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	movs r1, 0
	movs r3, 0x2
	bl xxx_format_and_draw
	movs r0, 0x2
	bl sub_80073E0
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063574: .4byte gUnknown_80FDFE8
	thumb_func_end sub_80633E4

	thumb_func_start sub_8063578
sub_8063578:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	str r0, [sp, 0x10]
	str r1, [sp, 0x14]
	adds r5, r2, 0
	mov r8, r3
	ldr r0, [sp, 0x40]
	ldr r4, [sp, 0x44]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	ldr r0, [r1, 0x70]
	str r0, [sp, 0x1C]
	mov r0, r8
	bl sub_80073B8
	ldr r0, _080635FC
	ldr r1, [sp, 0x14]
	movs r2, 0
	bl SetMessageArgument
	lsls r4, 3
	adds r4, 0xA
	ldr r0, _08063600
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	adds r0, r4, 0
	movs r1, 0
	mov r3, r8
	bl xxx_format_and_draw
	movs r1, 0
	mov r9, r1
	ldr r0, [sp, 0x10]
	cmp r9, r0
	bge _08063676
	add r1, sp, 0x4
	mov r10, r1
	adds r7, r5, 0
_080635D0:
	movs r0, 0
	str r0, [sp, 0x4]
	movs r0, 0x6A
	str r0, [sp, 0x8]
	movs r0, 0
	mov r1, r10
	strb r0, [r1, 0x8]
	mov r1, sp
	ldrb r0, [r1, 0x18]
	mov r1, r10
	strb r0, [r1, 0x9]
	ldrb r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08063668
	ldr r1, [sp, 0x1C]
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	beq _08063604
	movs r0, 0x2
	b _08063606
	.align 2, 0
_080635FC: .4byte gAvailablePokemonNames
_08063600: .4byte gUnknown_80FE978
_08063604:
	movs r0, 0x4
_08063606:
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x14]
	adds r1, r5, 0
	movs r2, 0x1
	bl IsMoveUsable
	add r1, sp, 0x4
	movs r2, 0
	lsls r0, 24
	cmp r0, 0
	bne _0806361E
	movs r2, 0x1
_0806361E:
	strb r2, [r1, 0x8]
	ldr r0, _0806368C
	adds r1, r5, 0
	add r2, sp, 0x4
	bl sub_80928C0
	ldr r0, _08063690
	mov r1, r9
	bl sub_8013800
	adds r4, r0, 0
	ldrb r1, [r7]
	movs r0, 0x2
	ands r0, r1
	movs r6, 0xD
	cmp r0, 0
	bne _08063658
	movs r6, 0x8
	mov r0, r9
	cmp r0, 0
	beq _08063658
	subs r2, r4, 0x2
	movs r0, 0x7
	str r0, [sp]
	mov r0, r8
	movs r1, 0xC
	movs r3, 0x78
	bl sub_80078A4
_08063658:
	movs r1, 0
	str r1, [sp]
	adds r0, r6, 0
	adds r1, r4, 0
	ldr r2, _08063694
	mov r3, r8
	bl xxx_format_and_draw
_08063668:
	adds r7, 0x8
	adds r5, 0x8
	movs r0, 0x1
	add r9, r0
	ldr r1, [sp, 0x10]
	cmp r9, r1
	blt _080635D0
_08063676:
	mov r0, r8
	bl sub_80073E0
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806368C: .4byte gUnknown_202DE58
_08063690: .4byte gUnknown_202EE10
_08063694: .4byte gUnknown_8106CC4
	thumb_func_end sub_8063578

	thumb_func_start sub_8063698
sub_8063698:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	ldr r4, [r0, 0x70]
	ldr r0, _080636E8
	ldr r0, [r0]
	lsls r0, 3
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r1
	adds r5, r4, r0
	ldr r1, _080636EC
	movs r0, 0
	str r0, [r1]
	ldrb r0, [r4, 0x7]
	cmp r0, 0
	beq _080636FA
	cmp r7, 0
	beq _080636D0
	movs r0, 0x14
	movs r1, 0
	bl sub_8044F5C
_080636D0:
	ldrb r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08063702
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080636F0
	movs r0, 0x33
	b _080636F2
	.align 2, 0
_080636E8: .4byte gUnknown_202F2D8
_080636EC: .4byte gUnknown_202EE6C
_080636F0:
	movs r0, 0x1E
_080636F2:
	movs r1, 0
	bl sub_8044F5C
	b _08063702
_080636FA:
	movs r0, 0x1F
	movs r1, 0
	bl sub_8044F5C
_08063702:
	cmp r6, 0
	beq _08063716
	movs r0, 0x20
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0x21
	movs r1, 0
	bl sub_8044F5C
_08063716:
	movs r0, 0x1D
	movs r1, 0
	bl sub_8044F5C
	cmp r6, 0
	bne _0806372A
	movs r0, 0x20
	bl sub_8044FF0
	b _08063754
_0806372A:
	ldr r5, _080637A0
	ldr r1, [r5]
	adds r0, r4, 0
	bl sub_8063C88
	lsls r0, 24
	cmp r0, 0
	bne _08063740
	movs r0, 0x20
	bl sub_8044FF0
_08063740:
	ldr r1, [r5]
	adds r0, r4, 0
	bl sub_8063DD4
	lsls r0, 24
	cmp r0, 0
	bne _08063754
	movs r0, 0x21
	bl sub_8044FF0
_08063754:
	ldr r5, _080637A0
	ldr r1, [r5]
	adds r0, r4, 0
	bl sub_8063DD4
	lsls r0, 24
	cmp r0, 0
	bne _0806376A
	movs r0, 0x21
	bl sub_8044FF0
_0806376A:
	cmp r7, 0
	beq _08063792
	movs r0, 0
	ldr r1, [r5]
	cmp r1, 0x3
	bgt _08063788
	mov r0, r8
	movs r2, 0x1
	bl IsMoveIndexUsable
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r0, r1, 31
_08063788:
	cmp r0, 0
	bne _08063792
	movs r0, 0x14
	bl sub_8044FF0
_08063792:
	bl sub_8045064
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080637A0: .4byte gUnknown_202F2D8
	thumb_func_end sub_8063698

	thumb_func_start sub_80637A4
sub_80637A4:
	push {lr}
	adds r2, r1, 0
	ldr r1, _080637B8
	movs r3, 0x18
	ldrsh r1, [r1, r3]
	bl sub_80637BC
	pop {r0}
	bx r0
	.align 2, 0
_080637B8: .4byte gUnknown_202EE10
	thumb_func_end sub_80637A4

	thumb_func_start sub_80637BC
sub_80637BC:
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r2, 0
	ldr r0, _080637E0
	lsls r1, 2
	adds r1, r0
	ldrh r1, [r1]
	adds r0, r4, 0
	bl SetAction
	strb r5, [r4, 0x4]
	ldr r0, _080637E4
	ldr r0, [r0]
	strb r0, [r4, 0xC]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080637E0: .4byte gUnknown_202EE44
_080637E4: .4byte gUnknown_202F2D8
	thumb_func_end sub_80637BC

	thumb_func_start sub_80637E8
sub_80637E8:
	push {lr}
	adds r3, r0, 0
	ldr r0, _08063828
	ldr r1, [r0]
	ldrb r0, [r3, 0x4]
	lsls r0, 2
	ldr r2, _0806382C
	adds r1, r2
	adds r1, r0
	ldr r0, [r1]
	ldr r0, [r0, 0x70]
	ldrb r1, [r3, 0xC]
	lsls r1, 3
	adds r1, r0, r1
	ldr r2, _08063830
	adds r2, r1
	mov r12, r2
	ldrb r2, [r2]
	movs r1, 0x2
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r1
	ldrb r1, [r3, 0xC]
	movs r2, 0x4
	bl sub_8063834
	pop {r0}
	bx r0
	.align 2, 0
_08063828: .4byte gDungeonGlobalData
_0806382C: .4byte 0x0001357c
_08063830: .4byte 0x00000119
	thumb_func_end sub_80637E8

	thumb_func_start sub_8063834
sub_8063834:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x7C
	str r0, [sp, 0x74]
	str r1, [sp, 0x78]
	adds r4, r2, 0
	mov r0, sp
	bl sub_80140B4
	add r0, sp, 0x70
	str r0, [sp, 0x14]
	movs r1, 0x1
	mov r9, r1
	ldr r3, [sp, 0x78]
	adds r3, 0x1
	add r2, sp, 0x60
	mov r10, r2
	cmp r3, r4
	bge _08063894
	lsls r0, r3, 3
	ldr r1, [sp, 0x74]
	adds r2, r0, r1
	ldrb r1, [r2]
	mov r0, r9
	ands r0, r1
	cmp r0, 0
	beq _08063894
	movs r6, 0x2
	movs r5, 0x1
_08063874:
	ldrb r1, [r2]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _08063894
	movs r0, 0x1
	add r9, r0
	adds r2, 0x8
	adds r3, 0x1
	cmp r3, r4
	bge _08063894
	ldrb r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _08063874
_08063894:
	movs r4, 0
	ldr r6, _0806393C
_08063898:
	movs r7, 0
	mov r1, r9
	add r2, sp, 0x70
	strb r1, [r2]
	adds r1, r2, 0
	strb r4, [r1, 0x1]
	movs r0, 0xC
	strb r0, [r1, 0x2]
	strb r7, [r1, 0x3]
	strh r4, [r6, 0x1E]
	mov r0, r9
	strh r0, [r6, 0x20]
	ldr r1, _08063940
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r0, 0x17
	lsls r0, 3
	strh r0, [r6, 0xC]
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r6, 0xE]
	strh r7, [r6, 0x14]
	strh r7, [r6, 0x4]
	movs r0, 0x10
	strh r0, [r6, 0x6]
	str r7, [r6]
	adds r0, r6, 0
	adds r0, 0x28
	bl sub_801317C
	strh r7, [r6, 0x18]
	strh r7, [r6, 0x1A]
	strh r7, [r6, 0x1C]
	mov r0, sp
	movs r1, 0x1
	bl sub_803ECB4
	ldr r0, [sp, 0x78]
	adds r1, r0, r4
	lsls r1, 3
	ldr r2, [sp, 0x74]
	adds r1, r2, r1
	adds r0, r4, 0
	movs r2, 0
	mov r3, r10
	bl sub_8093DE8
	mov r8, r0
_080638FE:
	mov r0, r8
	cmp r0, 0
	beq _08063908
	bl sub_8062500
_08063908:
	ldr r5, _08063944
	adds r0, r5, 0
	movs r1, 0
	bl nullsub_34
	movs r0, 0x1C
	bl sub_803E46C
	bl sub_8062D88
	ldr r1, _08063948
	ldrh r1, [r1, 0x2]
	ands r0, r1
	cmp r0, 0
	bne _0806392C
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _0806394C
_0806392C:
	bl sub_8083D08
	movs r7, 0x1
	mov r1, r8
	cmp r1, 0
	beq _080639AE
	movs r7, 0x2
	b _080639AE
	.align 2, 0
_0806393C: .4byte gUnknown_202EE10
_08063940: .4byte gUnknown_2027370
_08063944: .4byte gUnknown_202EE38
_08063948: .4byte gRealInputs
_0806394C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0806395A
	ldrb r0, [r5, 0x2]
	cmp r0, 0
	beq _08063962
_0806395A:
	bl sub_8083D30
	movs r7, 0x1
	b _080639AE
_08063962:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08063970
	ldrb r0, [r5, 0x4]
	cmp r0, 0
	beq _08063986
_08063970:
	adds r0, r4, 0
	cmp r4, 0
	bne _08063978
	mov r4, r9
_08063978:
	subs r4, 0x1
	cmp r0, r4
	beq _080639AE
	movs r0, 0
	bl sub_8083CE0
	b _080639AE
_08063986:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08063994
	ldrb r0, [r5, 0x3]
	cmp r0, 0
	beq _080638FE
_08063994:
	adds r1, r4, 0
	mov r0, r9
	subs r0, 0x1
	cmp r4, r0
	bne _080639A2
	movs r4, 0
	b _080639A4
_080639A2:
	adds r4, 0x1
_080639A4:
	cmp r1, r4
	beq _080639AE
	movs r0, 0
	bl sub_8083CE0
_080639AE:
	cmp r7, 0x1
	beq _080639CA
	cmp r7, 0
	bne _080639B8
	b _08063898
_080639B8:
	mov r2, r8
	cmp r2, 0
	bne _080639C0
	b _08063898
_080639C0:
	mov r0, r8
	mov r1, r10
	bl sub_80625A4
	b _08063898
_080639CA:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0x7C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8063834

	thumb_func_start sub_80639E4
sub_80639E4:
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	adds r6, r1, 0
	ldr r4, _08063A5C
	adds r0, r4, 0
	bl sub_80140B4
	ldr r0, _08063A60
	str r0, [r4, 0x14]
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08063A64
	ldr r1, [r5]
	bl strcpy
	ldr r2, _08063A68
	movs r4, 0
	str r4, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldr r2, [r5, 0x4]
	str r4, [sp]
	movs r0, 0x4
	movs r1, 0x10
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	ldr r0, _08063A6C
	strh r4, [r0, 0x1E]
	strh r4, [r0, 0x20]
	strh r4, [r0, 0xC]
	strh r4, [r0, 0xE]
	strh r4, [r0, 0x14]
	strh r4, [r0, 0x4]
	movs r1, 0x10
	strh r1, [r0, 0x6]
	str r4, [r0]
	strh r4, [r0, 0x18]
	strh r4, [r0, 0x1A]
	strh r4, [r0, 0x1C]
	adds r0, r6, 0
	bl sub_801317C
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063A5C: .4byte gUnknown_202F278
_08063A60: .4byte gUnknown_8106CC8
_08063A64: .4byte gAvailablePokemonNames
_08063A68: .4byte gUnknown_8106CCC
_08063A6C: .4byte gUnknown_202EE10
	thumb_func_end sub_80639E4

	thumb_func_start sub_8063A70
sub_8063A70:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r1, _08063B1C
	ldr r2, [r1]
	ldrb r1, [r0, 0x4]
	lsls r1, 2
	ldr r3, _08063B20
	adds r2, r3
	adds r2, r1
	ldr r6, [r2]
	ldr r5, [r6, 0x70]
	ldrb r0, [r0, 0xC]
	lsls r0, 3
	movs r2, 0x8C
	lsls r2, 1
	adds r0, r2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, 0x8
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	negs r0, r0
	lsrs r0, 31
	mov r8, r0
	ldr r0, _08063B24
	mov r9, r0
	movs r1, 0x1
	mov r12, r1
	adds r2, r5, r2
	movs r7, 0xF7
	movs r3, 0x3
_08063ABC:
	ldrb r1, [r2]
	mov r0, r12
	ands r0, r1
	cmp r0, 0
	beq _08063ACC
	adds r0, r7, 0
	ands r0, r1
	strb r0, [r2]
_08063ACC:
	adds r2, 0x8
	subs r3, 0x1
	cmp r3, 0
	bge _08063ABC
	mov r0, r9
	adds r1, r4, 0
	movs r2, 0
	bl sub_80928C0
	mov r3, r8
	cmp r3, 0
	bne _08063AEC
	ldrb r1, [r4]
	movs r0, 0x8
	orrs r0, r1
	strb r0, [r4]
_08063AEC:
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r5, r1
	bl sub_80936D8
	ldrb r1, [r4, 0x1]
	movs r0, 0x2
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldr r0, _08063B28
	bl PlaySoundEffect
	mov r3, r10
	cmp r3, 0
	beq _08063B42
	mov r0, r8
	cmp r0, 0
	bne _08063B30
	ldr r0, _08063B2C
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	b _08063B3A
	.align 2, 0
_08063B1C: .4byte gDungeonGlobalData
_08063B20: .4byte 0x0001357c
_08063B24: .4byte gUnknown_202DE58
_08063B28: .4byte 0x00000133
_08063B2C: .4byte gUnknown_80F8B40
_08063B30:
	ldr r0, _08063B50
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
_08063B3A:
	movs r0, 0x78
	movs r1, 0x1F
	bl sub_803E708
_08063B42:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063B50: .4byte gUnknown_80F8B64
	thumb_func_end sub_8063A70

	thumb_func_start sub_8063B54
sub_8063B54:
	push {r4-r6,lr}
	ldr r1, _08063BA4
	ldr r2, [r1]
	ldrb r1, [r0, 0x4]
	lsls r1, 2
	ldr r3, _08063BA8
	adds r2, r3
	adds r2, r1
	ldr r1, [r2]
	ldr r5, [r1, 0x70]
	ldrb r4, [r0, 0xC]
	lsls r4, 3
	movs r6, 0x8C
	lsls r6, 1
	adds r4, r6
	adds r4, r5, r4
	ldr r0, _08063BAC
	adds r1, r4, 0
	movs r2, 0
	bl sub_80928C0
	ldrb r0, [r4]
	movs r1, 0x4
	eors r0, r1
	strb r0, [r4]
	adds r5, r6
	adds r0, r5, 0
	bl sub_80936D8
	ldrb r1, [r4, 0x1]
	movs r0, 0x2
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldr r0, _08063BB0
	bl PlaySoundEffect
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063BA4: .4byte gDungeonGlobalData
_08063BA8: .4byte 0x0001357c
_08063BAC: .4byte gUnknown_202DE58
_08063BB0: .4byte 0x00000133
	thumb_func_end sub_8063B54

	thumb_func_start sub_8063BB4
sub_8063BB4:
	push {r4-r7,lr}
	ldr r1, _08063C70
	ldr r2, [r1]
	ldrb r1, [r0, 0x4]
	lsls r1, 2
	ldr r3, _08063C74
	adds r2, r3
	adds r2, r1
	ldr r1, [r2]
	ldr r6, [r1, 0x70]
	ldrb r5, [r0, 0xC]
	ldr r0, _08063C78
	lsls r4, r5, 3
	movs r7, 0x8C
	lsls r7, 1
	adds r1, r4, r7
	adds r1, r6, r1
	movs r2, 0
	bl sub_80928C0
	adds r4, r6, r4
	ldr r0, _08063C7C
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, 0x2
	orrs r0, r1
	strb r0, [r2]
	movs r3, 0
	adds r5, 0x1
	cmp r5, 0x3
	bgt _08063C2C
	lsls r2, r5, 3
	adds r0, r2, r6
	adds r1, r7, 0
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08063C2C
	adds r0, r2, r7
	adds r2, r0, r6
	movs r4, 0x2
_08063C0A:
	ldrb r1, [r2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08063C2C
	adds r3, 0x1
	cmp r3, 0x3
	bgt _08063C2C
	adds r2, 0x8
	adds r5, 0x1
	cmp r5, 0x3
	bgt _08063C2C
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08063C0A
_08063C2C:
	lsls r0, r5, 3
	adds r0, r6
	movs r4, 0x8C
	lsls r4, 1
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08063C42
	movs r5, 0x4
_08063C42:
	cmp r5, 0x3
	bgt _08063C5C
	lsls r1, r5, 3
	adds r1, r4
	adds r1, r6, r1
	ldrb r2, [r1]
	movs r0, 0x2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _08063C80
	movs r2, 0
	bl sub_80928C0
_08063C5C:
	adds r0, r6, r4
	bl sub_80936D8
	ldr r0, _08063C84
	bl PlaySoundEffect
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063C70: .4byte gDungeonGlobalData
_08063C74: .4byte 0x0001357c
_08063C78: .4byte gUnknown_202DE58
_08063C7C: .4byte 0x00000119
_08063C80: .4byte gUnknown_202DEA8
_08063C84: .4byte 0x00000133
	thumb_func_end sub_8063BB4

	thumb_func_start sub_8063C88
sub_8063C88:
	push {r4-r7,lr}
	adds r4, r0, 0
	movs r7, 0
	adds r5, r1, 0
	lsls r0, r5, 3
	adds r0, r4, r0
	movs r1, 0x8D
	lsls r1, 1
	adds r0, r1
	ldrh r0, [r0]
	bl DoesMoveCharge
	lsls r0, 24
	cmp r0, 0
	beq _08063CAE
_08063CA6:
	movs r0, 0
	b _08063CEA
_08063CAA:
	movs r7, 0x1
	b _08063CE8
_08063CAE:
	adds r5, 0x1
	movs r6, 0
	lsls r0, r5, 3
	movs r1, 0x8C
	lsls r1, 1
	adds r0, r1
	adds r4, r0, r4
_08063CBC:
	ldrh r0, [r4, 0x2]
	bl DoesMoveCharge
	lsls r0, 24
	cmp r0, 0
	bne _08063CA6
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08063CE8
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08063CAA
	adds r4, 0x8
	adds r5, 0x1
	cmp r5, 0x3
	bgt _08063CE8
	adds r6, 0x1
	cmp r6, 0x3
	ble _08063CBC
_08063CE8:
	adds r0, r7, 0
_08063CEA:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8063C88

	thumb_func_start sub_8063CF0
sub_8063CF0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r1, _08063D98
	ldr r2, [r1]
	ldrb r1, [r0, 0x4]
	lsls r1, 2
	ldr r3, _08063D9C
	adds r2, r3
	adds r2, r1
	ldr r7, [r2]
	ldr r6, [r7, 0x70]
	ldrb r5, [r0, 0xC]
	movs r0, 0
	mov r8, r0
	ldr r0, _08063DA0
	lsls r4, r5, 3
	movs r1, 0x8C
	lsls r1, 1
	mov r9, r1
	adds r1, r4, r1
	adds r1, r6, r1
	movs r2, 0
	bl sub_80928C0
	adds r4, r6, r4
	ldr r3, _08063DA4
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, 0x2
	orrs r0, r1
	strb r0, [r2]
	adds r5, 0x1
	movs r3, 0
	cmp r5, 0x3
	bgt _08063D70
	movs r0, 0x2
	mov r12, r0
	lsls r0, r5, 3
	add r0, r9
	adds r2, r0, r6
	movs r4, 0xFD
_08063D4E:
	ldrb r1, [r2]
	mov r0, r12
	ands r0, r1
	cmp r0, 0
	beq _08063D70
	adds r0, r4, 0
	ands r0, r1
	strb r0, [r2]
	movs r1, 0x1
	mov r8, r1
	adds r2, 0x8
	adds r5, 0x1
	adds r3, 0x1
	cmp r3, 0x3
	bgt _08063D70
	cmp r5, 0x3
	ble _08063D4E
_08063D70:
	movs r2, 0x8C
	lsls r2, 1
	adds r0, r6, r2
	bl sub_80936D8
	ldr r0, _08063DA8
	bl PlaySoundEffect
	mov r3, r10
	cmp r3, 0
	beq _08063DC2
	mov r0, r8
	cmp r0, 0
	beq _08063DB0
	ldr r0, _08063DAC
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _08063DBA
	.align 2, 0
_08063D98: .4byte gDungeonGlobalData
_08063D9C: .4byte 0x0001357c
_08063DA0: .4byte gUnknown_202DE58
_08063DA4: .4byte 0x00000119
_08063DA8: .4byte 0x00000133
_08063DAC: .4byte gUnknown_80F8B88
_08063DB0:
	ldr r0, _08063DD0
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
_08063DBA:
	movs r0, 0x78
	movs r1, 0x1F
	bl sub_803E708
_08063DC2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063DD0: .4byte gUnknown_80F8BB4
	thumb_func_end sub_8063CF0

	thumb_func_start sub_8063DD4
sub_8063DD4:
	push {r4-r7,lr}
	adds r3, r0, 0
	adds r2, r1, 0
	movs r5, 0
	adds r2, 0x1
	movs r4, 0
	cmp r2, 0x3
	bgt _08063E20
	lsls r0, r2, 3
	movs r6, 0x8C
	lsls r6, 1
	adds r0, r6
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08063E20
	movs r5, 0x1
	adds r2, 0x1
	movs r7, 0x2
	lsls r0, r2, 3
	adds r0, r6
	adds r3, r0, r3
_08063E04:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _08063E20
	cmp r2, 0x3
	bgt _08063E20
	ldrb r1, [r3]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _08063E20
	movs r5, 0x1
	adds r3, 0x8
	adds r2, 0x1
	b _08063E04
_08063E20:
	cmp r5, 0
	bne _08063E28
	movs r0, 0
	b _08063E2A
_08063E28:
	movs r0, 0x1
_08063E2A:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8063DD4

	thumb_func_start sub_8063E30
sub_8063E30:
	push {r4-r7,lr}
	adds r5, r0, 0
	adds r1, 0x1
	movs r4, 0
	cmp r1, 0x7
	bgt _08063E62
	movs r7, 0x2
	movs r6, 0xFD
	lsls r0, r1, 3
	adds r3, r0, r5
_08063E44:
	ldrb r2, [r3]
	adds r0, r7, 0
	ands r0, r2
	cmp r0, 0
	beq _08063E62
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r3]
	adds r3, 0x8
	adds r1, 0x1
	adds r4, 0x1
	cmp r4, 0x7
	bgt _08063E62
	cmp r1, 0x7
	ble _08063E44
_08063E62:
	adds r0, r5, 0
	bl sub_80936F4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8063E30

	thumb_func_start sub_8063E70
sub_8063E70:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xD0
	str r0, [sp, 0xC4]
	adds r7, r1, 0
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0xC8]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xCC]
	add r4, sp, 0x60
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x64]
	add r0, sp, 0x68
	movs r6, 0
	movs r1, 0x2
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r1, sp, 0x6C
	movs r0, 0x12
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x6E
	movs r1, 0x10
	strh r1, [r0]
	add r0, sp, 0x70
	strh r1, [r0]
	add r5, sp, 0xC0
	str r5, [sp, 0x74]
	movs r1, 0x3
	str r1, [sp, 0x7C]
	add r0, sp, 0x90
	str r1, [r0, 0x4]
	add r0, sp, 0xA8
	str r1, [r0, 0x4]
	mov r0, sp
	adds r1, r4, 0
	movs r2, 0x60
	bl memcpy
	ldr r0, _08063F80
	str r6, [r0]
	ldr r1, _08063F84
	mov r8, r1
	mov r9, r0
	ldr r2, _08063F88
	mov r10, r2
_08063EE0:
	ldr r0, [sp, 0xC4]
	adds r1, r7, 0
	mov r2, sp
	add r3, sp, 0xC0
	bl sub_8064228
_08063EEC:
	mov r0, r8
	bl AddMenuCursorSprite
	movs r0, 0x1E
	bl sub_803E46C
	mov r0, r10
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08063F2A
	mov r1, r8
	movs r2, 0x18
	ldrsh r4, [r1, r2]
	adds r0, r7, 0
	adds r1, r4, 0
	bl sub_8092E1C
	adds r1, r0, 0
	mov r0, r8
	bl sub_8013780
	mov r1, r8
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r4, r0
	beq _08063F2A
	movs r0, 0
	bl sub_8083CE0
_08063F2A:
	mov r0, r10
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08063F5C
	mov r1, r8
	movs r2, 0x18
	ldrsh r4, [r1, r2]
	adds r0, r7, 0
	adds r1, r4, 0
	bl sub_8092E8C
	adds r1, r0, 0
	mov r0, r8
	bl sub_8013780
	mov r1, r8
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r4, r0
	beq _08063F5C
	movs r0, 0
	bl sub_8083CE0
_08063F5C:
	bl sub_8062D88
	mov r2, r10
	ldrh r1, [r2, 0x2]
	ands r0, r1
	cmp r0, 0
	bne _08063F76
	ldr r2, _08063F84
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08063F8C
_08063F76:
	bl sub_8083D08
	movs r4, 0
	b _08063FB2
	.align 2, 0
_08063F80: .4byte gUnknown_202F2D8
_08063F84: .4byte gUnknown_202EE10
_08063F88: .4byte gRealInputs
_08063F8C:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08063FD4
	ldr r0, [sp, 0xCC]
	cmp r0, 0
	beq _08063EEC
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08063FAC
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	beq _08063EEC
_08063FAC:
	bl sub_8083D30
	movs r4, 0x1
_08063FB2:
	ldr r5, _08063FD0
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x1E
	bl sub_803E46C
	cmp r4, 0x1
	bne _08063FDC
	movs r0, 0x1
	negs r0, r0
	mov r1, r9
	str r0, [r1]
	b _080640FA
	.align 2, 0
_08063FD0: .4byte gUnknown_202EE10
_08063FD4:
	bl sub_8083D44
	movs r4, 0x2
	b _08063FB2
_08063FDC:
	ldr r6, _08064004
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	str r0, [r6]
	cmp r4, 0x2
	bne _08064008
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	movs r0, 0x8
	movs r1, 0x1B
	bl sub_803E708
	ldr r1, [r6]
	adds r0, r7, 0
	movs r2, 0x4
	bl sub_8063834
	b _08063EE0
	.align 2, 0
_08064004: .4byte gUnknown_202F2D8
_08064008:
	adds r0, r7, 0
	bl sub_8064310
	mov r0, sp
	movs r1, 0x16
	bl sub_805FC30
	adds r4, r5, 0
	ldr r6, _0806408C
	adds r5, 0x2A
_0806401C:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064040
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08064040:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08064058
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_08064058:
	bl sub_8062D88
	ldrh r1, [r6, 0x2]
	ands r1, r0
	cmp r1, 0
	bne _0806406E
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806409C
_0806406E:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _08064098
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	cmp r0, 0x2
	bne _08064090
	bl sub_8083D08
	b _08064094
	.align 2, 0
_0806408C: .4byte gRealInputs
_08064090:
	bl sub_8083D1C
_08064094:
	movs r4, 0
	b _080640B2
_08064098:
	bl sub_8083D30
_0806409C:
	ldrh r1, [r6, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080640AC
	ldrb r0, [r5]
	cmp r0, 0
	beq _0806401C
_080640AC:
	bl sub_8083D30
	movs r4, 0x1
_080640B2:
	ldr r6, _080640E4
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x1B
	bl sub_803E46C
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	cmp r4, 0x1
	bne _080640CE
	b _08063EE0
_080640CE:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	cmp r0, 0x1
	bne _080640E8
	mov r2, r9
	ldr r1, [r2]
	adds r0, r7, 0
	bl sub_8063E30
	b _08063EE0
	.align 2, 0
_080640E4: .4byte gUnknown_202EE10
_080640E8:
	cmp r0, 0x2
	bne _080640FA
	mov r0, r9
	ldr r1, [r0]
	adds r0, r7, 0
	movs r2, 0x8
	bl sub_8063834
	b _08063EE0
_080640FA:
	ldr r1, _08064140
	ldr r2, [r1]
	cmp r2, 0
	bge _08064104
	b _08064214
_08064104:
	ldr r0, [sp, 0xC8]
	cmp r0, 0
	beq _08064160
	movs r4, 0
	lsls r0, r2, 3
	adds r1, r7, r0
	adds r0, r2, 0x1
	cmp r0, 0x7
	bgt _08064130
	lsls r0, 3
	adds r0, r7
	ldrb r2, [r0]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _08064130
	movs r0, 0x2
	ands r0, r2
	lsls r0, 24
	lsrs r0, 24
	negs r0, r0
	lsrs r4, r0, 31
_08064130:
	ldr r0, _08064144
	movs r2, 0
	bl sub_80928C0
	cmp r4, 0
	beq _0806414C
	ldr r0, _08064148
	b _0806414E
	.align 2, 0
_08064140: .4byte gUnknown_202F2D8
_08064144: .4byte gUnknown_202DE58
_08064148: .4byte gUnknown_80FDF00
_0806414C:
	ldr r0, _0806415C
_0806414E:
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_8052B8C
	adds r3, r0, 0
	b _08064162
	.align 2, 0
_0806415C: .4byte gUnknown_80FDF70
_08064160:
	movs r3, 0x1
_08064162:
	cmp r3, 0x1
	beq _08064168
	b _08063EE0
_08064168:
	mov r1, r9
	ldr r0, [r1]
	lsls r0, 3
	adds r0, r7
	movs r1, 0
	strb r1, [r0]
	mov r2, r9
	ldr r0, [r2]
	adds r2, r0, 0x1
	cmp r2, 0x7
	bgt _080641BC
	lsls r0, r2, 3
	adds r4, r7, r0
	ldrb r1, [r4]
	ands r3, r1
	cmp r3, 0
	beq _080641BC
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080641BC
	movs r0, 0
	mov r12, r0
	movs r6, 0x1
	adds r3, r4, 0
	movs r5, 0x2
_0806419C:
	mov r1, r12
	strb r1, [r4]
	adds r3, 0x8
	adds r2, 0x1
	cmp r2, 0x7
	bgt _080641BC
	adds r4, r3, 0
	ldrb r1, [r3]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _080641BC
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	bne _0806419C
_080641BC:
	movs r4, 0
	movs r6, 0x1
	adds r3, r7, 0
	add r5, sp, 0x60
	movs r2, 0x7
_080641C6:
	ldrb r1, [r3]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _080641D8
	ldr r0, [r3]
	ldr r1, [r3, 0x4]
	stm r5!, {r0,r1}
	adds r4, 0x1
_080641D8:
	adds r3, 0x8
	subs r2, 0x1
	cmp r2, 0
	bge _080641C6
	cmp r4, 0x7
	bgt _080641F4
	movs r1, 0
_080641E6:
	lsls r0, r4, 3
	add r0, sp
	adds r0, 0x60
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x7
	ble _080641E6
_080641F4:
	add r4, sp, 0x60
	adds r3, r7, 0
	movs r2, 0x7
_080641FA:
	ldm r4!, {r0,r1}
	stm r3!, {r0,r1}
	subs r2, 0x1
	cmp r2, 0
	bge _080641FA
	ldr r2, _08064210
	ldr r0, [r2]
	cmp r0, 0
	blt _08064214
	movs r0, 0x1
	b _08064216
	.align 2, 0
_08064210: .4byte gUnknown_202F2D8
_08064214:
	movs r0, 0
_08064216:
	add sp, 0xD0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8063E70

	thumb_func_start sub_8064228
sub_8064228:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r9, r0
	mov r10, r1
	adds r5, r2, 0
	adds r7, r3, 0
	movs r1, 0
	movs r0, 0x1
	strb r0, [r7]
	strb r1, [r7, 0x1]
	strb r1, [r7, 0x3]
	mov r8, r1
	ldr r6, _08064304
	ldr r0, _08064308
	mov r12, r0
	movs r4, 0x1
	mov r2, r10
	movs r3, 0x7
_08064254:
	ldrb r1, [r2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08064262
	movs r1, 0x1
	add r8, r1
_08064262:
	adds r2, 0x8
	subs r3, 0x1
	cmp r3, 0
	bge _08064254
	mov r2, r12
	ldr r0, [r2]
	movs r4, 0
	strh r0, [r6, 0x18]
	mov r3, r8
	strh r3, [r6, 0x1A]
	strh r3, [r6, 0x1C]
	strh r4, [r6, 0x1E]
	strh r4, [r6, 0x20]
	strh r4, [r6, 0x4]
	movs r0, 0x10
	strh r0, [r6, 0x6]
	strh r4, [r6, 0xC]
	strh r4, [r6, 0xE]
	strh r4, [r6, 0x14]
	str r4, [r6]
	adds r0, r6, 0
	adds r0, 0x28
	bl sub_801317C
	mov r0, r8
	movs r1, 0xC
	bl sub_80095E4
	adds r0, 0x2
	strh r0, [r5, 0x10]
	strh r0, [r5, 0xE]
	movs r0, 0xE
	strb r0, [r7, 0x2]
	movs r0, 0x2
	strh r0, [r5, 0x8]
	adds r1, r5, 0
	adds r1, 0x18
	adds r0, r5, 0
	adds r0, 0x48
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	adds r1, r5, 0
	adds r1, 0x30
	adds r0, r5, 0
	adds r0, 0x48
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r6, 0
	movs r1, 0
	bl sub_80137B0
	ldr r0, _0806430C
	mov r7, r9
	ldr r1, [r7, 0x70]
	movs r2, 0
	bl SetMessageArgument_2
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r8
	mov r1, r9
	mov r2, r10
	movs r3, 0
	bl sub_8063578
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064304: .4byte gUnknown_202EE10
_08064308: .4byte gUnknown_202F2D8
_0806430C: .4byte gAvailablePokemonNames
	thumb_func_end sub_8064228

	thumb_func_start sub_8064310
sub_8064310:
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _08064350
	movs r0, 0
	str r0, [r1]
	movs r0, 0x22
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0x21
	movs r1, 0
	bl sub_8044F5C
	ldr r0, _08064354
	ldr r1, [r0]
	adds r0, r4, 0
	bl sub_8064358
	lsls r0, 24
	cmp r0, 0
	bne _08064340
	movs r0, 0x21
	bl sub_8044FF0
_08064340:
	movs r0, 0x1D
	movs r1, 0
	bl sub_8044F5C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064350: .4byte gUnknown_202EE6C
_08064354: .4byte gUnknown_202F2D8
	thumb_func_end sub_8064310

	thumb_func_start sub_8064358
sub_8064358:
	push {r4-r6,lr}
	adds r3, r0, 0
	adds r2, r1, 0
	movs r5, 0
	adds r2, 0x1
	movs r4, 0
	cmp r2, 0x7
	bgt _0806439C
	lsls r0, r2, 3
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0806439C
	movs r5, 0x1
	adds r2, 0x1
	movs r6, 0x2
	lsls r0, r2, 3
	adds r3, r0, r3
_08064380:
	adds r4, 0x1
	cmp r4, 0x7
	bgt _0806439C
	cmp r2, 0x7
	bgt _0806439C
	ldrb r1, [r3]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0806439C
	movs r5, 0x1
	adds r3, 0x8
	adds r2, 0x1
	b _08064380
_0806439C:
	cmp r5, 0
	bne _080643A4
	movs r0, 0
	b _080643A6
_080643A4:
	movs r0, 0x1
_080643A6:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8064358

	thumb_func_start sub_80643AC
sub_80643AC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xE4
	adds r7, r0, 0
	add r0, sp, 0x68
	mov r9, r0
	mov r1, sp
	adds r1, 0x6C
	str r1, [sp, 0xD0]
	mov r2, sp
	adds r2, 0x6E
	str r2, [sp, 0xD4]
	mov r0, sp
	adds r0, 0x70
	str r0, [sp, 0xD8]
	adds r1, 0xC
	str r1, [sp, 0xDC]
	adds r2, 0x22
	str r2, [sp, 0xE0]
	adds r0, 0x38
	str r0, [sp, 0xC8]
	subs r1, 0x18
	str r1, [sp, 0xC4]
	add r2, sp, 0xC0
	mov r10, r2
	ldr r5, _080644C8
	adds r0, r7, 0x4
	str r0, [sp, 0xCC]
	ldr r1, _080644CC
	mov r8, r1
	movs r6, 0
_080643F0:
	movs r4, 0
	ldr r0, [sp, 0xC4]
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x64]
	movs r0, 0x2
	mov r2, r9
	strh r0, [r2]
	strh r0, [r2, 0x2]
	movs r0, 0x12
	ldr r1, [sp, 0xD0]
	strh r0, [r1]
	movs r0, 0x4
	ldr r2, [sp, 0xD4]
	strh r0, [r2]
	movs r0, 0x10
	ldr r1, [sp, 0xD8]
	strh r0, [r1]
	mov r2, r10
	str r2, [sp, 0x74]
	movs r0, 0x3
	ldr r1, [sp, 0xDC]
	str r0, [r1, 0x4]
	ldr r2, [sp, 0xE0]
	str r0, [r2, 0x4]
	ldr r1, [sp, 0xC8]
	str r0, [r1, 0x4]
	mov r0, sp
	ldr r1, [sp, 0xC4]
	movs r2, 0x60
	bl memcpy
	bl sub_8083D44
	adds r0, r7, 0x4
	mov r1, sp
	mov r2, r10
	bl sub_806455C
	movs r0, 0x2D
	bl sub_803E46C
	adds r0, r7, 0
	bl sub_80645D4
	strh r4, [r5, 0x8]
	strh r4, [r5, 0xA]
	mov r0, sp
	movs r1, 0x16
	bl sub_805FC30
_0806445C:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x2D
	bl sub_803E46C
	mov r2, r8
	ldrh r1, [r2, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064482
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_08064482:
	mov r0, r8
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0806449C
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_0806449C:
	mov r2, r8
	ldrh r1, [r2, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080644B2
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064510
_080644B2:
	movs r1, 0x18
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	bne _080644D0
	bl sub_8083D08
	ldr r0, [sp, 0xCC]
	bl sub_80645F8
	movs r4, 0x2
	b _0806452A
	.align 2, 0
_080644C8: .4byte gUnknown_202EE10
_080644CC: .4byte gRealInputs
_080644D0:
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _0806450C
	ldr r4, [r7, 0x70]
	adds r4, 0x44
	ldr r1, _08064508
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r4, 0
	bl SetAction
	bl sub_8083D08
	strb r6, [r4, 0x4]
	strh r6, [r4, 0x8]
	strh r6, [r4, 0xA]
	strb r6, [r4, 0xC]
	strh r6, [r4, 0x10]
	strh r6, [r4, 0x12]
	movs r4, 0
	b _0806452A
	.align 2, 0
_08064508: .4byte gUnknown_202EE44
_0806450C:
	bl sub_8083D30
_08064510:
	mov r0, r8
	ldrh r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064524
	ldr r1, _08064554
	ldrb r0, [r1]
	cmp r0, 0
	beq _0806445C
_08064524:
	bl sub_8083D30
	movs r4, 0x1
_0806452A:
	ldr r0, _08064558
	bl AddMenuCursorSprite
	movs r0, 0x2D
	bl sub_803E46C
	cmp r4, 0x2
	bne _0806453C
	b _080643F0
_0806453C:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0xE4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064554: .4byte gUnknown_202EE3A
_08064558: .4byte gUnknown_202EE10
	thumb_func_end sub_80643AC

	thumb_func_start sub_806455C
sub_806455C:
	push {r4,r5,lr}
	sub sp, 0x54
	adds r4, r0, 0
	adds r0, r1, 0
	movs r5, 0
	movs r1, 0x1
	strb r1, [r2]
	strb r5, [r2, 0x1]
	movs r1, 0xC
	strb r1, [r2, 0x2]
	strb r5, [r2, 0x3]
	movs r1, 0x1
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	movs r1, 0
	ldrsh r0, [r4, r1]
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	bl GetMapTile_1
	adds r4, r0, 0
	ldr r0, _080645D0
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0
	bl xxx_call_draw_string
	ldr r0, [r4, 0x14]
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080645C0
	ldr r1, [r4, 0x14]
	add r0, sp, 0x4
	movs r2, 0
	bl SetMessageArgument
	str r5, [sp]
	movs r0, 0x8
	movs r1, 0x12
	add r2, sp, 0x4
	movs r3, 0
	bl xxx_call_draw_string
_080645C0:
	movs r0, 0
	bl sub_80073E0
	add sp, 0x54
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080645D0: .4byte gUnknown_80FE708
	thumb_func_end sub_806455C

	thumb_func_start sub_80645D4
sub_80645D4:
	push {lr}
	ldr r1, _080645F4
	movs r0, 0
	str r0, [r1]
	movs r0, 0x25
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0xC
	movs r1, 0
	bl sub_8044F5C
	bl sub_8045064
	pop {r0}
	bx r0
	.align 2, 0
_080645F4: .4byte gUnknown_202EE6C
	thumb_func_end sub_80645D4

	thumb_func_start sub_80645F8
sub_80645F8:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x110
	str r0, [sp, 0xE4]
	mov r0, sp
	adds r0, 0x84
	str r0, [sp, 0xF4]
	mov r1, sp
	adds r1, 0x88
	str r1, [sp, 0xF8]
	mov r2, sp
	adds r2, 0x8C
	str r2, [sp, 0xFC]
	mov r3, sp
	adds r3, 0x8E
	str r3, [sp, 0x100]
	adds r0, 0xC
	str r0, [sp, 0x104]
	adds r1, 0xC
	str r1, [sp, 0x108]
	adds r2, 0xC
	str r2, [sp, 0x10C]
	adds r3, 0x22
	str r3, [sp, 0xEC]
	adds r0, 0x38
	str r0, [sp, 0xF0]
	add r6, sp, 0x14
	subs r1, 0x74
	str r1, [sp, 0xE8]
	add r2, sp, 0x80
	mov r10, r2
	add r3, sp, 0xE0
	mov r9, r3
_08064640:
	movs r7, 0
	mov r0, r10
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	ldr r1, [sp, 0xF4]
	str r0, [r1]
	movs r0, 0x2
	ldr r2, [sp, 0xF8]
	strh r0, [r2]
	strh r0, [r2, 0x2]
	movs r0, 0x1A
	ldr r3, [sp, 0xFC]
	strh r0, [r3]
	movs r0, 0xC
	ldr r1, [sp, 0x100]
	strh r0, [r1]
	ldr r2, [sp, 0x104]
	strh r0, [r2]
	mov r3, r9
	ldr r0, [sp, 0x108]
	str r3, [r0]
	movs r0, 0x3
	ldr r1, [sp, 0x10C]
	str r0, [r1, 0x4]
	ldr r2, [sp, 0xEC]
	str r0, [r2, 0x4]
	ldr r3, [sp, 0xF0]
	str r0, [r3, 0x4]
	ldr r0, [sp, 0xE8]
	mov r1, r10
	movs r2, 0x60
	bl memcpy
	adds r0, r6, 0
	bl sub_801317C
	movs r1, 0x1
	add r0, sp, 0xE0
	strb r1, [r0]
	movs r1, 0
	mov r0, r9
	strb r1, [r0, 0x1]
	movs r0, 0x10
	mov r2, r9
	strb r0, [r2, 0x2]
	strb r1, [r2, 0x3]
	ldr r3, [sp, 0xE4]
	movs r1, 0
	ldrsh r0, [r3, r1]
	movs r2, 0x2
	ldrsh r1, [r3, r2]
	bl GetMapTile_1
	ldr r4, [r0, 0x14]
	cmp r4, 0
	bne _080646B8
	b _080647D8
_080646B8:
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x2
	beq _080646C4
	b _080647D8
_080646C4:
	ldr r0, [sp, 0xE8]
	movs r1, 0
	bl sub_803ECB4
	adds r0, r4, 0
	bl GetTrapData
	adds r4, r0, 0
	ldrb r1, [r4]
	mov r0, r10
	bl GetTrapName
	movs r0, 0
	bl sub_80073B8
	str r7, [sp]
	movs r0, 0x10
	movs r1, 0
	mov r2, r10
	movs r3, 0
	bl xxx_call_draw_string
	ldr r5, _08064720
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r5
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r1, 0x18
	movs r3, 0
	bl xxx_call_draw_string
	movs r0, 0
	bl sub_80073E0
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	add r1, sp, 0x4
	bl sub_8097DF0
	adds r5, r0, 0
	b _08064738
	.align 2, 0
_08064720: .4byte gTrapDescriptions
_08064724:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064732
	ldrb r0, [r6, 0x2]
	cmp r0, 0
	beq _08064738
_08064732:
	bl sub_8083D30
	b _080647D8
_08064738:
	cmp r5, 0
	beq _08064740
	bl sub_8062500
_08064740:
	adds r0, r6, 0
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _08064788
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064760
	ldrb r0, [r6, 0x1]
	cmp r0, 0
	beq _08064724
_08064760:
	bl sub_8083D08
	cmp r5, 0
	beq _080647D8
	movs r4, 0
	cmp r4, r5
	blt _08064770
	b _08064640
_08064770:
	subs r3, r5, 0x1
	mov r8, r3
_08064774:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0x4
	ldr r0, [r0]
	adds r1, r6, 0
	bl sub_80639E4
	adds r7, r4, 0x1
	b _080647A0
	.align 2, 0
_08064788: .4byte gRealInputs
_0806478C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0806479A
	ldrb r0, [r6, 0x2]
	cmp r0, 0
	beq _080647A0
_0806479A:
	bl sub_8083D30
	b _080647CC
_080647A0:
	cmp r4, r8
	bge _080647A8
	bl sub_8062500
_080647A8:
	adds r0, r6, 0
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _080647D4
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080647C8
	ldrb r0, [r6, 0x1]
	cmp r0, 0
	beq _0806478C
_080647C8:
	bl sub_8083D08
_080647CC:
	adds r4, r7, 0
	cmp r4, r5
	blt _08064774
	b _08064640
	.align 2, 0
_080647D4: .4byte gRealInputs
_080647D8:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0x110
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80645F8

	thumb_func_start sub_80647F0
sub_80647F0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xE4
	adds r7, r0, 0
	add r0, sp, 0x68
	mov r9, r0
	mov r1, sp
	adds r1, 0x6C
	str r1, [sp, 0xD0]
	mov r2, sp
	adds r2, 0x6E
	str r2, [sp, 0xD4]
	mov r0, sp
	adds r0, 0x70
	str r0, [sp, 0xD8]
	adds r1, 0xC
	str r1, [sp, 0xDC]
	adds r2, 0x22
	str r2, [sp, 0xE0]
	adds r0, 0x38
	str r0, [sp, 0xC8]
	subs r1, 0x18
	str r1, [sp, 0xC4]
	add r2, sp, 0xC0
	mov r10, r2
	ldr r5, _0806490C
	adds r0, r7, 0x4
	str r0, [sp, 0xCC]
	ldr r1, _08064910
	mov r8, r1
	movs r6, 0
_08064834:
	movs r4, 0
	ldr r0, [sp, 0xC4]
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x64]
	movs r0, 0x2
	mov r2, r9
	strh r0, [r2]
	strh r0, [r2, 0x2]
	movs r0, 0x12
	ldr r1, [sp, 0xD0]
	strh r0, [r1]
	movs r0, 0x4
	ldr r2, [sp, 0xD4]
	strh r0, [r2]
	movs r0, 0x10
	ldr r1, [sp, 0xD8]
	strh r0, [r1]
	mov r2, r10
	str r2, [sp, 0x74]
	movs r0, 0x3
	ldr r1, [sp, 0xDC]
	str r0, [r1, 0x4]
	ldr r2, [sp, 0xE0]
	str r0, [r2, 0x4]
	ldr r1, [sp, 0xC8]
	str r0, [r1, 0x4]
	mov r0, sp
	ldr r1, [sp, 0xC4]
	movs r2, 0x60
	bl memcpy
	bl sub_8083D44
	adds r0, r7, 0x4
	mov r1, sp
	mov r2, r10
	bl sub_80649A0
	movs r0, 0x2E
	bl sub_803E46C
	adds r0, r7, 0
	bl sub_8064A18
	strh r4, [r5, 0x8]
	strh r4, [r5, 0xA]
	mov r0, sp
	movs r1, 0x16
	bl sub_805FC30
_080648A0:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x2E
	bl sub_803E46C
	mov r2, r8
	ldrh r1, [r2, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080648C6
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_080648C6:
	mov r0, r8
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080648E0
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_080648E0:
	mov r2, r8
	ldrh r1, [r2, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080648F6
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064954
_080648F6:
	movs r1, 0x18
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	bne _08064914
	bl sub_8083D08
	ldr r0, [sp, 0xCC]
	bl sub_8064A3C
	movs r4, 0x2
	b _0806496E
	.align 2, 0
_0806490C: .4byte gUnknown_202EE10
_08064910: .4byte gRealInputs
_08064914:
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	beq _08064950
	ldr r4, [r7, 0x70]
	adds r4, 0x44
	ldr r1, _0806494C
	movs r2, 0x18
	ldrsh r0, [r5, r2]
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r0]
	adds r0, r4, 0
	bl SetAction
	bl sub_8083D08
	strb r6, [r4, 0x4]
	strh r6, [r4, 0x8]
	strh r6, [r4, 0xA]
	strb r6, [r4, 0xC]
	strh r6, [r4, 0x10]
	strh r6, [r4, 0x12]
	movs r4, 0
	b _0806496E
	.align 2, 0
_0806494C: .4byte gUnknown_202EE44
_08064950:
	bl sub_8083D30
_08064954:
	mov r0, r8
	ldrh r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064968
	ldr r1, _08064998
	ldrb r0, [r1]
	cmp r0, 0
	beq _080648A0
_08064968:
	bl sub_8083D30
	movs r4, 0x1
_0806496E:
	ldr r0, _0806499C
	bl AddMenuCursorSprite
	movs r0, 0x2E
	bl sub_803E46C
	cmp r4, 0x2
	bne _08064980
	b _08064834
_08064980:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0xE4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064998: .4byte gUnknown_202EE3A
_0806499C: .4byte gUnknown_202EE10
	thumb_func_end sub_80647F0

	thumb_func_start sub_80649A0
sub_80649A0:
	push {r4,r5,lr}
	sub sp, 0x4
	adds r0, r1, 0
	movs r3, 0
	movs r1, 0x1
	strb r1, [r2]
	strb r3, [r2, 0x1]
	movs r1, 0xB
	strb r1, [r2, 0x2]
	strb r3, [r2, 0x3]
	movs r1, 0x1
	bl sub_803ECB4
	movs r0, 0
	bl sub_80073B8
	bl sub_8043D10
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080649E4
	cmp r0, 0x1
	ble _080649D4
	cmp r0, 0x2
	beq _080649DC
_080649D4:
	ldr r0, _080649D8
	b _080649E6
	.align 2, 0
_080649D8: .4byte gUnknown_80FE70C
_080649DC:
	ldr r0, _080649E0
	b _080649E6
	.align 2, 0
_080649E0: .4byte gUnknown_80FE720
_080649E4:
	ldr r0, _08064A14
_080649E6:
	ldr r5, [r0]
	movs r4, 0
	str r4, [sp]
	movs r0, 0xC
	movs r1, 0
	adds r2, r5, 0
	movs r3, 0
	bl xxx_call_draw_string
	str r4, [sp]
	movs r0, 0x8
	movs r1, 0x12
	adds r2, r5, 0
	movs r3, 0
	bl xxx_call_draw_string
	movs r0, 0
	bl sub_80073E0
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064A14: .4byte gUnknown_80FE724
	thumb_func_end sub_80649A0

	thumb_func_start sub_8064A18
sub_8064A18:
	push {lr}
	ldr r1, _08064A38
	movs r0, 0
	str r0, [r1]
	movs r0, 0x26
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0xC
	movs r1, 0
	bl sub_8044F5C
	bl sub_8045064
	pop {r0}
	bx r0
	.align 2, 0
_08064A38: .4byte gUnknown_202EE6C
	thumb_func_end sub_8064A18

	thumb_func_start sub_8064A3C
sub_8064A3C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xE8
	mov r0, sp
	adds r0, 0x20
	str r0, [sp, 0xE4]
	add r1, sp, 0x80
	mov r10, r1
	add r0, sp, 0xE0
	mov r9, r0
	add r5, sp, 0x14
_08064A58:
	mov r0, r10
	movs r1, 0
	movs r2, 0x60
	bl memset
	add r1, sp, 0x84
	movs r0, 0x6
	str r0, [r1]
	add r0, sp, 0x88
	movs r1, 0x2
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r1, sp, 0x8C
	movs r0, 0x1A
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x8E
	movs r1, 0xC
	strh r1, [r0]
	add r0, sp, 0x90
	strh r1, [r0]
	add r0, sp, 0x94
	mov r1, r9
	str r1, [r0]
	add r0, sp, 0x98
	movs r1, 0x3
	str r1, [r0, 0x4]
	add r0, sp, 0xB0
	str r1, [r0, 0x4]
	add r0, sp, 0xC8
	str r1, [r0, 0x4]
	ldr r0, [sp, 0xE4]
	mov r1, r10
	movs r2, 0x60
	bl memcpy
	add r0, sp, 0x14
	bl sub_801317C
	movs r0, 0x1
	mov r1, r9
	strb r0, [r1]
	movs r0, 0
	strb r0, [r1, 0x1]
	movs r0, 0x10
	strb r0, [r1, 0x2]
	movs r0, 0
	strb r0, [r1, 0x3]
	ldr r0, [sp, 0xE4]
	movs r1, 0
	bl sub_803ECB4
	bl sub_8043D10
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08064B0C
	lsls r4, 2
	adds r0, r4, r0
	ldr r2, [r0]
	movs r1, 0
	str r1, [sp]
	movs r0, 0x10
	movs r3, 0
	bl xxx_call_draw_string
	ldr r0, _08064B10
	adds r4, r0
	ldr r4, [r4]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x18
	adds r2, r4, 0
	movs r3, 0
	bl xxx_call_draw_string
	movs r0, 0
	bl sub_80073E0
	adds r0, r4, 0
	add r1, sp, 0x4
	bl sub_8097DF0
	adds r6, r0, 0
	b _08064B28
	.align 2, 0
_08064B0C: .4byte gUnknown_80F8104
_08064B10: .4byte gUnknown_80F7F70
_08064B14:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064B22
	ldrb r0, [r5, 0x2]
	cmp r0, 0
	beq _08064B28
_08064B22:
	bl sub_8083D30
	b _08064BC8
_08064B28:
	cmp r6, 0
	beq _08064B30
	bl sub_8062500
_08064B30:
	adds r0, r5, 0
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _08064B78
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064B50
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _08064B14
_08064B50:
	bl sub_8083D08
	cmp r6, 0
	beq _08064BC8
	movs r4, 0
	cmp r4, r6
	blt _08064B60
	b _08064A58
_08064B60:
	subs r1, r6, 0x1
	mov r8, r1
_08064B64:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0x4
	ldr r0, [r0]
	adds r1, r5, 0
	bl sub_80639E4
	adds r7, r4, 0x1
	b _08064B90
	.align 2, 0
_08064B78: .4byte gRealInputs
_08064B7C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064B8A
	ldrb r0, [r5, 0x2]
	cmp r0, 0
	beq _08064B90
_08064B8A:
	bl sub_8083D30
	b _08064BBC
_08064B90:
	cmp r4, r8
	bge _08064B98
	bl sub_8062500
_08064B98:
	adds r0, r5, 0
	movs r1, 0
	bl nullsub_34
	movs r0, 0x16
	bl sub_803E46C
	ldr r0, _08064BC4
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064BB8
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _08064B7C
_08064BB8:
	bl sub_8083D08
_08064BBC:
	adds r4, r7, 0
	cmp r4, r6
	blt _08064B64
	b _08064A58
	.align 2, 0
_08064BC4: .4byte gRealInputs
_08064BC8:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0xE8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8064A3C

	thumb_func_start sub_8064BE0
sub_8064BE0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _08064C94
	ldr r0, [r0]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	movs r1, 0x4
	mov r9, r1
	cmp r0, 0
	beq _08064C02
	movs r0, 0x5
	mov r9, r0
_08064C02:
	ldr r1, _08064C98
	movs r0, 0
	str r0, [r1]
	mov r10, r0
	ldr r6, _08064C9C
	ldr r7, _08064CA0
	movs r1, 0x2A
	adds r1, r6
	mov r8, r1
_08064C14:
	movs r5, 0
	bl sub_8065250
_08064C1A:
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r7, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064C3E
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_80136E0
_08064C3E:
	ldrh r1, [r7, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08064C56
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_8013744
_08064C56:
	ldrh r1, [r7, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064C6A
	adds r0, r6, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064CAA
_08064C6A:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	cmp r0, 0x4
	bne _08064C8C
	ldr r0, _08064C94
	ldr r0, [r0]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064CA4
	bl IsBossBattle
	lsls r0, 24
	cmp r0, 0
	bne _08064CA4
_08064C8C:
	bl sub_8083D08
	b _08064CC0
	.align 2, 0
_08064C94: .4byte gDungeonGlobalData
_08064C98: .4byte gUnknown_202F2E0
_08064C9C: .4byte gUnknown_202EE10
_08064CA0: .4byte gRealInputs
_08064CA4:
	bl sub_8083D30
	b _08064CC0
_08064CAA:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064CBA
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0
	beq _08064C1A
_08064CBA:
	bl sub_8083D30
	movs r5, 0x1
_08064CC0:
	ldr r4, _08064D68
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	mov r0, r10
	cmp r0, 0
	bne _08064C14
	cmp r5, 0
	bne _08064D4C
	ldr r5, _08064D6C
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	str r0, [r5]
	cmp r0, 0
	bne _08064CE8
	bl sub_8064D74
_08064CE8:
	ldr r0, [r5]
	cmp r0, 0x1
	bne _08064CF2
	bl sub_80650C0
_08064CF2:
	ldr r0, [r5]
	cmp r0, 0x2
	bne _08064CFC
	bl sub_80532B4
_08064CFC:
	ldr r0, [r5]
	cmp r0, 0x3
	bne _08064D06
	bl sub_806519C
_08064D06:
	ldr r0, _08064D70
	ldr r0, [r0]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064D2A
	bl IsBossBattle
	lsls r0, 24
	cmp r0, 0
	bne _08064D2A
	ldr r0, [r5]
	cmp r0, 0x4
	bne _08064D2A
	bl sub_8065FB4
_08064D2A:
	ldr r0, _08064D6C
	ldr r0, [r0]
	cmp r0, r9
	bne _08064D36
	bl sub_8065BF4
_08064D36:
	ldr r0, _08064D70
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	bne _08064D4C
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	bne _08064D4C
	b _08064C14
_08064D4C:
	bl sub_8040A84
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064D68: .4byte gUnknown_202EE10
_08064D6C: .4byte gUnknown_202F2E0
_08064D70: .4byte gDungeonGlobalData
	thumb_func_end sub_8064BE0

	thumb_func_start sub_8064D74
sub_8064D74:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r6, _08064DE0
	ldr r7, _08064DE4
	movs r0, 0x2A
	adds r0, r6
	mov r8, r0
_08064D84:
	movs r5, 0
	bl CreateFieldGameOptionsMenu
_08064D8A:
	adds r0, r6, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r7, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064DAE
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_80136E0
_08064DAE:
	ldrh r1, [r7, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08064DC6
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r6, 0
	movs r1, 0x1
	bl sub_8013744
_08064DC6:
	ldrh r1, [r7, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064DDA
	adds r0, r6, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08064DE8
_08064DDA:
	bl sub_8083D08
	b _08064DFE
	.align 2, 0
_08064DE0: .4byte gUnknown_202EE10
_08064DE4: .4byte gRealInputs
_08064DE8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08064DF8
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0
	beq _08064D8A
_08064DF8:
	bl sub_8083D30
	movs r5, 0x1
_08064DFE:
	ldr r4, _08064E2C
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	cmp r5, 0
	bne _08064E56
	ldr r0, _08064E30
	ldr r1, _08064E34
	ldr r0, [r0]
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08064E38
	bl sub_8064E68
	b _08064E40
	.align 2, 0
_08064E2C: .4byte gUnknown_202EE10
_08064E30: .4byte gUnknown_203B46C
_08064E34: .4byte gUnknown_202F2E8
_08064E38:
	cmp r0, 0x1
	bne _08064E4C
	bl sub_8064F50
_08064E40:
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	bl sub_8065040
	b _08064D84
_08064E4C:
	cmp r0, 0x2
	bne _08064D84
	bl sub_806509C
	b _08064D84
_08064E56:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8064D74

	thumb_func_start sub_8064E68
sub_8064E68:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r7, 0
	ldr r0, _08064EDC
	strh r7, [r0, 0x18]
	adds r4, r0, 0
	ldr r6, _08064EE0
	movs r0, 0x2A
	adds r0, r4
	mov r8, r0
_08064E7E:
	movs r7, 0
	movs r5, 0
	bl CreateFieldDungeonMenu
_08064E86:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064EAA
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08064EAA:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08064EC2
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_08064EC2:
	ldrh r1, [r6, 0x4]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08064EE4
	movs r0, 0
	bl sub_8083CE0
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	bl sub_8065A8C
	b _08064F2E
	.align 2, 0
_08064EDC: .4byte gUnknown_202EE10
_08064EE0: .4byte gRealInputs
_08064EE4:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08064EFC
	movs r0, 0
	bl sub_8083CE0
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	bl sub_8065B3C
	b _08064F2E
_08064EFC:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064F0E
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0
	beq _08064F14
_08064F0E:
	bl sub_8083D08
	b _08064F30
_08064F14:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08064F24
	bl sub_8083D30
	movs r7, 0x1
	b _08064F30
_08064F24:
	bl sub_8065BEC
	lsls r0, 24
	cmp r0, 0
	beq _08064E86
_08064F2E:
	movs r5, 0x1
_08064F30:
	ldr r0, _08064F4C
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	cmp r5, 0
	bne _08064E7E
	adds r0, r7, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08064F4C: .4byte gUnknown_202EE10
	thumb_func_end sub_8064E68

	thumb_func_start sub_8064F50
sub_8064F50:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r7, 0
	ldr r0, _08064FC8
	strh r7, [r0, 0x18]
	adds r4, r0, 0
	ldr r6, _08064FCC
	movs r0, 0x2A
	adds r0, r4
	mov r8, r0
_08064F66:
	movs r7, 0
	movs r5, 0
	bl CreateFieldOthersMenu
_08064F6E:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08064F92
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08064F92:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08064FAA
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_08064FAA:
	ldrh r1, [r6, 0x4]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08064FD0
	movs r0, 0
	bl sub_8083CE0
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	adds r0, 0x5
	bl sub_8065A8C
	b _0806501C
	.align 2, 0
_08064FC8: .4byte gUnknown_202EE10
_08064FCC: .4byte gRealInputs
_08064FD0:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08064FEA
	movs r0, 0
	bl sub_8083CE0
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	adds r0, 0x5
	bl sub_8065B3C
	b _0806501C
_08064FEA:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08064FFC
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0
	beq _08065002
_08064FFC:
	bl sub_8083D08
	b _0806501E
_08065002:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08065012
	bl sub_8083D30
	movs r7, 0x1
	b _0806501E
_08065012:
	bl sub_8065BF0
	lsls r0, 24
	cmp r0, 0
	beq _08064F6E
_0806501C:
	movs r5, 0x1
_0806501E:
	ldr r0, _0806503C
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	cmp r5, 0
	bne _08064F66
	adds r0, r7, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806503C: .4byte gUnknown_202EE10
	thumb_func_end sub_8064F50

	thumb_func_start sub_8065040
sub_8065040:
	push {r4,lr}
	lsls r0, 24
	movs r4, 0
	cmp r0, 0
	beq _0806505C
	ldr r0, _08065058
	bl GameOptionsNotChange
	lsls r0, 24
	cmp r0, 0
	bne _0806505E
	b _08065062
	.align 2, 0
_08065058: .4byte gUnknown_202F2E8
_0806505C:
	movs r4, 0x1
_0806505E:
	cmp r4, 0
	beq _08065088
_08065062:
	ldr r0, _08065090
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0x1
	bne _08065088
	ldr r0, _08065094
	ldr r1, [r0]
	ldr r0, _08065098
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [r0]
	str r0, [r1]
	bl sub_803E13C
	bl sub_8040238
_08065088:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065090: .4byte gUnknown_80FEBF8
_08065094: .4byte gUnknown_203B46C
_08065098: .4byte gUnknown_202F2E8
	thumb_func_end sub_8065040

	thumb_func_start sub_806509C
sub_806509C:
	push {lr}
	ldr r0, _080650BC
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_8052B8C
	cmp r0, 0x1
	bne _080650B8
	movs r0, 0
	bl InitializeGameOptions
	bl sub_803E13C
_080650B8:
	pop {r0}
	bx r0
	.align 2, 0
_080650BC: .4byte gUnknown_80FEC28
	thumb_func_end sub_806509C

	thumb_func_start sub_80650C0
sub_80650C0:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0
	mov r9, r0
	ldr r5, _08065134
	ldr r6, _08065138
	movs r1, 0x2A
	adds r1, r5
	mov r8, r1
_080650D6:
	movs r7, 0
	bl sub_806544C
_080650DC:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08065100
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_08065100:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08065118
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_08065118:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0806512C
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806513C
_0806512C:
	bl sub_8083D08
	b _08065152
	.align 2, 0
_08065134: .4byte gUnknown_202EE10
_08065138: .4byte gRealInputs
_0806513C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0806514C
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0
	beq _080650DC
_0806514C:
	bl sub_8083D30
	movs r7, 0x1
_08065152:
	ldr r4, _08065178
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	mov r0, r9
	cmp r0, 0
	bne _080650D6
	cmp r7, 0
	bne _0806518E
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _0806517C
	bl sub_80651D0
	b _08065184
	.align 2, 0
_08065178: .4byte gUnknown_202EE10
_0806517C:
	cmp r0, 0x1
	bne _08065184
	bl sub_80651FC
_08065184:
	bl sub_805F1AC
	lsls r0, 16
	cmp r0, 0
	beq _080650D6
_0806518E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80650C0

	thumb_func_start sub_806519C
sub_806519C:
	push {lr}
	ldr r0, _080651CC
	ldr r1, [r0]
	movs r2, 0xCF
	lsls r2, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, 0x34
	adds r1, r2
	ldrb r1, [r1]
	movs r2, 0
	bl sub_80319A4
_080651B6:
	movs r0, 0x47
	bl sub_803E46C
	bl sub_80319F8
	cmp r0, 0
	beq _080651B6
	bl sub_8031A3C
	pop {r0}
	bx r0
	.align 2, 0
_080651CC: .4byte gDungeonGlobalData
	thumb_func_end sub_806519C

	thumb_func_start sub_80651D0
sub_80651D0:
	push {lr}
	ldr r0, _080651F0
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_8052B8C
	cmp r0, 0x1
	bne _080651F4
	bl sub_805F1A0
	movs r1, 0x2B
	bl SetAction
	movs r0, 0
	b _080651F6
	.align 2, 0
_080651F0: .4byte gUnknown_80FDE6C
_080651F4:
	movs r0, 0x1
_080651F6:
	pop {r1}
	bx r1
	thumb_func_end sub_80651D0

	thumb_func_start sub_80651FC
sub_80651FC:
	push {r4,r5,lr}
	ldr r0, _08065238
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_8052B8C
	adds r5, r0, 0
	cmp r5, 0x1
	bne _08065248
	bl sub_805F1A0
	movs r1, 0x2E
	bl SetAction
	ldr r4, _0806523C
	bl GetLeaderEntity
	adds r2, r0, 0
	adds r0, r4, 0
	movs r1, 0
	bl sub_8083AB0
	ldr r0, _08065240
	ldr r0, [r0]
	ldr r1, _08065244
	adds r0, r1
	strb r5, [r0]
	movs r0, 0
	b _0806524A
	.align 2, 0
_08065238: .4byte gUnknown_80FDEB8
_0806523C: .4byte 0x0000021b
_08065240: .4byte gDungeonGlobalData
_08065244: .4byte 0x00000654
_08065248:
	movs r0, 0x1
_0806524A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80651FC

	thumb_func_start sub_8065250
sub_8065250:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC8
	add r5, sp, 0x64
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x68]
	add r0, sp, 0x6C
	movs r4, 0
	movs r7, 0
	movs r1, 0x2
	mov r9, r1
	mov r1, r9
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r0, sp, 0x70
	movs r1, 0x12
	mov r10, r1
	mov r1, r10
	strh r1, [r0]
	adds r0, 0x2
	movs r1, 0x10
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	add r0, sp, 0x74
	strh r1, [r0]
	add r6, sp, 0xC4
	str r6, [sp, 0x78]
	movs r1, 0x3
	str r1, [sp, 0x80]
	add r0, sp, 0x94
	str r1, [r0, 0x4]
	add r0, sp, 0xAC
	str r1, [r0, 0x4]
	add r0, sp, 0x4
	adds r1, r5, 0
	movs r2, 0x60
	bl memcpy
	movs r0, 0x1
	strb r0, [r6]
	strb r4, [r6, 0x1]
	strb r4, [r6, 0x3]
	ldr r4, _080653D0
	ldr r0, _080653D4
	ldr r0, [r0]
	strh r0, [r4, 0x18]
	ldr r1, _080653D8
	ldr r0, [r1]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	movs r5, 0x5
	cmp r0, 0
	beq _080652D2
	movs r5, 0x6
_080652D2:
	strh r5, [r4, 0x1A]
	strh r5, [r4, 0x1C]
	strh r7, [r4, 0x1E]
	strh r7, [r4, 0x20]
	strh r7, [r4, 0x4]
	mov r0, r8
	strh r0, [r4, 0x6]
	strh r7, [r4, 0xC]
	strh r7, [r4, 0xE]
	strh r7, [r4, 0x14]
	str r7, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	add r0, sp, 0x4
	mov r1, r10
	strh r1, [r0, 0xC]
	adds r0, r5, 0
	movs r1, 0xC
	bl sub_80095E4
	add r2, sp, 0x4
	adds r1, r2, 0
	adds r0, 0x2
	strh r0, [r1, 0x10]
	strh r0, [r2, 0xE]
	movs r0, 0xA
	strb r0, [r6, 0x2]
	adds r0, r1, 0
	mov r1, r9
	strh r1, [r0, 0x8]
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	movs r0, 0
	bl sub_80073B8
	movs r5, 0
	ldr r0, _080653DC
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _080653E0
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _080653E4
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _080653E8
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	movs r5, 0x4
	adds r0, r4, 0
	movs r1, 0x3
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _080653EC
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, _080653D8
	ldr r0, [r1]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806540E
	bl IsBossBattle
	lsls r0, 24
	cmp r0, 0
	bne _080653F4
	movs r5, 0x5
	adds r0, r4, 0
	movs r1, 0x4
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _080653F0
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	b _0806540E
	.align 2, 0
_080653D0: .4byte gUnknown_202EE10
_080653D4: .4byte gUnknown_202F2E0
_080653D8: .4byte gDungeonGlobalData
_080653DC: .4byte gUnknown_80FE8F8
_080653E0: .4byte gUnknown_80FE9CC
_080653E4: .4byte gUnknown_80FE9E8
_080653E8: .4byte gUnknown_80FE9F8
_080653EC: .4byte gUnknown_80FEA10
_080653F0: .4byte gUnknown_80FEA28
_080653F4:
	movs r5, 0x5
	adds r0, r4, 0
	movs r1, 0x4
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _08065440
	ldr r2, [r0]
	str r7, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
_0806540E:
	ldr r0, _08065444
	adds r1, r5, 0
	bl sub_8013800
	adds r1, r0, 0
	ldr r0, _08065448
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	add sp, 0xC8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065440: .4byte gUnknown_80FEA44
_08065444: .4byte gUnknown_202EE10
_08065448: .4byte gUnknown_80FEA50
	thumb_func_end sub_8065250

	thumb_func_start sub_806544C
sub_806544C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC8
	add r0, sp, 0x64
	mov r10, r0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x68]
	add r0, sp, 0x6C
	movs r4, 0
	movs r5, 0
	movs r1, 0x2
	mov r9, r1
	mov r2, r9
	strh r2, [r0]
	strh r2, [r0, 0x2]
	add r0, sp, 0x70
	movs r7, 0x12
	strh r7, [r0]
	adds r0, 0x2
	movs r6, 0x10
	strh r6, [r0]
	add r0, sp, 0x74
	strh r6, [r0]
	add r0, sp, 0xC4
	mov r8, r0
	str r0, [sp, 0x78]
	movs r1, 0x3
	str r1, [sp, 0x80]
	add r0, sp, 0x94
	str r1, [r0, 0x4]
	add r0, sp, 0xAC
	str r1, [r0, 0x4]
	add r0, sp, 0x4
	mov r1, r10
	movs r2, 0x60
	bl memcpy
	movs r0, 0x1
	mov r1, r8
	strb r0, [r1]
	strb r4, [r1, 0x1]
	strb r4, [r1, 0x3]
	ldr r4, _08065568
	strh r5, [r4, 0x18]
	mov r2, r9
	strh r2, [r4, 0x1A]
	strh r2, [r4, 0x1C]
	strh r5, [r4, 0x1E]
	strh r5, [r4, 0x20]
	strh r5, [r4, 0x4]
	strh r6, [r4, 0x6]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	strh r5, [r4, 0x14]
	str r5, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	add r0, sp, 0x4
	strh r7, [r0, 0xC]
	movs r0, 0x2
	movs r1, 0xC
	bl sub_80095E4
	add r2, sp, 0x4
	adds r1, r2, 0
	adds r0, 0x2
	strh r0, [r1, 0x10]
	strh r0, [r2, 0xE]
	movs r0, 0xA
	mov r1, r8
	strb r0, [r1, 0x2]
	adds r0, r2, 0
	mov r2, r9
	strh r2, [r0, 0x8]
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	movs r0, 0
	bl sub_80073B8
	ldr r0, _0806556C
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	adds r1, r0, 0
	ldr r6, _08065570
	movs r2, 0xAC
	lsls r2, 1
	adds r0, r6, r2
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013800
	adds r1, r0, 0
	movs r2, 0xB8
	lsls r2, 1
	adds r0, r6, r2
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	add sp, 0xC8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065568: .4byte gUnknown_202EE10
_0806556C: .4byte gUnknown_80FE8F4
_08065570: .4byte gUnknown_80F7C50
	thumb_func_end sub_806544C

	thumb_func_start CreateFieldGameOptionsMenu
CreateFieldGameOptionsMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xD4
	add r0, sp, 0x10
	mov r10, r0
	add r7, sp, 0x70
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x74]
	add r0, sp, 0x78
	movs r4, 0
	movs r6, 0
	movs r1, 0x2
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r0, sp, 0x7C
	movs r1, 0xC
	strh r1, [r0]
	adds r0, 0x2
	movs r1, 0x10
	mov r9, r1
	mov r1, r9
	strh r1, [r0]
	add r0, sp, 0x80
	strh r1, [r0]
	add r0, sp, 0x84
	add r1, sp, 0xD0
	mov r8, r1
	str r1, [r0]
	add r0, sp, 0x88
	movs r5, 0x3
	str r5, [r0, 0x4]
	add r0, sp, 0xA0
	str r5, [r0, 0x4]
	add r0, sp, 0xB8
	str r5, [r0, 0x4]
	mov r0, r10
	adds r1, r7, 0
	movs r2, 0x60
	bl memcpy
	movs r0, 0x1
	mov r1, r8
	strb r0, [r1]
	strb r4, [r1, 0x1]
	strb r4, [r1, 0x3]
	ldr r4, _080656AC
	strh r6, [r4, 0x18]
	strh r5, [r4, 0x1A]
	strh r5, [r4, 0x1C]
	strh r6, [r4, 0x1E]
	strh r6, [r4, 0x20]
	strh r6, [r4, 0x4]
	mov r0, r9
	strh r0, [r4, 0x6]
	strh r6, [r4, 0xC]
	strh r6, [r4, 0xE]
	strh r6, [r4, 0x14]
	str r6, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	movs r0, 0xC
	mov r1, r10
	strh r0, [r1, 0xC]
	movs r0, 0x3
	movs r1, 0xC
	bl sub_80095E4
	adds r0, 0x2
	mov r1, r10
	strh r0, [r1, 0x10]
	strh r0, [r1, 0xE]
	movs r0, 0xA
	mov r1, r8
	strb r0, [r1, 0x2]
	movs r1, 0x2
	mov r0, r10
	strh r1, [r0, 0x8]
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013800
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_8013800
	str r0, [sp, 0xC]
	movs r0, 0
	bl sub_80073B8
	ldr r0, _080656B0
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x4]
	ldr r0, _080656B4
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x8]
	ldr r0, _080656B8
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0xC]
	ldr r0, _080656BC
	ldr r2, [r0]
	str r6, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	add sp, 0xD4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080656AC: .4byte gUnknown_202EE10
_080656B0: .4byte gGameOptionsTextPtr
_080656B4: .4byte gOptionsDungeonTextPtr
_080656B8: .4byte gOptionsOthersTextPtr
_080656BC: .4byte gUnknown_80FE748
	thumb_func_end CreateFieldGameOptionsMenu

	thumb_func_start CreateFieldDungeonMenu
CreateFieldDungeonMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xDC
	add r0, sp, 0x18
	mov r9, r0
	add r7, sp, 0x78
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x7C]
	add r0, sp, 0x80
	movs r5, 0
	movs r1, 0x2
	mov r10, r1
	mov r2, r10
	strh r2, [r0]
	strh r2, [r0, 0x2]
	add r1, sp, 0x84
	movs r0, 0x12
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x86
	movs r3, 0x10
	mov r8, r3
	mov r4, r8
	strh r4, [r0]
	add r0, sp, 0x88
	strh r4, [r0]
	add r0, sp, 0x8C
	add r6, sp, 0xD8
	str r6, [r0]
	add r0, sp, 0x90
	movs r1, 0x3
	str r1, [r0, 0x4]
	add r0, sp, 0xA8
	str r1, [r0, 0x4]
	add r0, sp, 0xC0
	str r1, [r0, 0x4]
	mov r0, r9
	adds r1, r7, 0
	movs r2, 0x60
	bl memcpy
	adds r1, r7, 0
	ldr r0, _0806583C
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	movs r0, 0x1
	strb r0, [r6]
	movs r0, 0
	strb r0, [r6, 0x1]
	strb r0, [r6, 0x3]
	ldr r4, _08065840
	movs r0, 0x5
	strh r0, [r4, 0x1A]
	strh r0, [r4, 0x1C]
	strh r5, [r4, 0x1E]
	strh r5, [r4, 0x20]
	strh r5, [r4, 0x4]
	mov r1, r8
	strh r1, [r4, 0x6]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	strh r5, [r4, 0x14]
	str r5, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	movs r0, 0x18
	mov r2, r9
	strh r0, [r2, 0xC]
	movs r0, 0x5
	movs r1, 0xC
	bl sub_80095E4
	adds r0, 0x2
	mov r3, r9
	strh r0, [r3, 0x10]
	strh r0, [r3, 0xE]
	movs r0, 0xA
	strb r0, [r6, 0x2]
	mov r0, r10
	strh r0, [r3, 0x8]
	mov r0, r9
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	adds r0, r4, 0
	movs r1, 0
	bl sub_8013800
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013800
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_8013800
	str r0, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0x3
	bl sub_8013800
	str r0, [sp, 0x10]
	adds r0, r4, 0
	movs r1, 0x4
	bl sub_8013800
	str r0, [sp, 0x14]
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08065844
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x4]
	ldr r0, _08065848
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x8]
	ldr r0, _0806584C
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0xC]
	ldr r0, _08065850
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x10]
	ldr r0, _08065854
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [sp, 0x14]
	ldr r0, _08065858
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r0, _0806585C
	ldrb r0, [r0]
	adds r4, r7, 0
	cmp r0, 0
	beq _08065860
	ldr r2, [sp, 0x4]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x88
	movs r3, 0x15
	bl sub_80078A4
	b _08065872
	.align 2, 0
_0806583C: .4byte gUnknown_8106CE8
_08065840: .4byte gUnknown_202EE10
_08065844: .4byte gOptionsDungeonTextPtr
_08065848: .4byte gUnknown_80FE764
_0806584C: .4byte gUnknown_80FE788
_08065850: .4byte gUnknown_80FE7A8
_08065854: .4byte gUnknown_80FE7C0
_08065858: .4byte gUnknown_80FE7E4
_0806585C: .4byte gUnknown_202F2E8
_08065860:
	ldr r2, [sp, 0x4]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x50
	movs r3, 0x16
	bl sub_80078A4
_08065872:
	ldr r0, _08065890
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08065894
	ldr r2, [sp, 0x8]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x88
	movs r3, 0x16
	bl sub_80078A4
	b _080658A6
	.align 2, 0
_08065890: .4byte gUnknown_202F2E8
_08065894:
	ldr r2, [sp, 0x8]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x50
	movs r3, 0x12
	bl sub_80078A4
_080658A6:
	ldr r0, _080658C4
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _080658C8
	ldr r2, [sp, 0xC]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x88
	movs r3, 0x10
	bl sub_80078A4
	b _080658DA
	.align 2, 0
_080658C4: .4byte gUnknown_202F2E8
_080658C8:
	ldr r2, [sp, 0xC]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x50
	movs r3, 0xC
	bl sub_80078A4
_080658DA:
	ldr r0, _080658F8
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	beq _080658FC
	ldr r2, [sp, 0x10]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x88
	movs r3, 0xC
	bl sub_80078A4
	b _0806590E
	.align 2, 0
_080658F8: .4byte gUnknown_202F2E8
_080658FC:
	ldr r2, [sp, 0x10]
	adds r2, 0xA
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x50
	movs r3, 0x10
	bl sub_80078A4
_0806590E:
	ldr r0, _08065944
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 2
	adds r1, r0, r1
	lsls r1, 3
	adds r1, 0x50
	ldr r2, [sp, 0x14]
	adds r2, 0xA
	adds r0, r4, r0
	ldr r3, [r0]
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	bl sub_80078A4
	movs r0, 0
	bl sub_80073E0
	add sp, 0xDC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065944: .4byte gUnknown_202F2E8
	thumb_func_end CreateFieldDungeonMenu

	thumb_func_start CreateFieldOthersMenu
CreateFieldOthersMenu:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xCC
	add r0, sp, 0x64
	mov r10, r0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x68]
	add r0, sp, 0x6C
	movs r4, 0
	movs r5, 0
	movs r1, 0x2
	mov r9, r1
	mov r2, r9
	strh r2, [r0]
	strh r2, [r0, 0x2]
	add r1, sp, 0x70
	movs r0, 0x12
	strh r0, [r1]
	mov r0, sp
	adds r0, 0x72
	movs r6, 0x10
	strh r6, [r0]
	add r0, sp, 0x74
	strh r6, [r0]
	add r3, sp, 0xC4
	mov r8, r3
	str r3, [sp, 0x78]
	movs r1, 0x3
	str r1, [sp, 0x80]
	add r0, sp, 0x94
	str r1, [r0, 0x4]
	add r0, sp, 0xAC
	str r1, [r0, 0x4]
	add r0, sp, 0x4
	mov r1, r10
	movs r2, 0x60
	bl memcpy
	mov r1, r10
	ldr r0, _08065A78
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	movs r0, 0x1
	mov r7, r8
	strb r0, [r7]
	strb r4, [r7, 0x1]
	strb r4, [r7, 0x3]
	ldr r4, _08065A7C
	strh r0, [r4, 0x1A]
	strh r0, [r4, 0x1C]
	strh r5, [r4, 0x1E]
	strh r5, [r4, 0x20]
	strh r5, [r4, 0x4]
	strh r6, [r4, 0x6]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	strh r5, [r4, 0x14]
	str r5, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	add r1, sp, 0x4
	movs r0, 0x18
	strh r0, [r1, 0xC]
	movs r0, 0x1
	movs r1, 0xC
	bl sub_80095E4
	add r2, sp, 0x4
	adds r1, r2, 0
	adds r0, 0x2
	strh r0, [r1, 0x10]
	strh r0, [r2, 0xE]
	movs r0, 0xA
	strb r0, [r7, 0x2]
	adds r0, r1, 0
	mov r1, r9
	strh r1, [r0, 0x8]
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	movs r4, 0
	mov r7, r10
	add r6, sp, 0xC8
	adds r5, r6, 0
_08065A0A:
	ldr r0, _08065A7C
	adds r1, r4, 0
	bl sub_8013800
	stm r5!, {r0}
	adds r4, 0x1
	cmp r4, 0
	ble _08065A0A
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08065A80
	ldr r2, [r0]
	movs r4, 0
	str r4, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, [r6]
	ldr r0, _08065A84
	ldr r2, [r0]
	str r4, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	ldr r0, _08065A88
	ldrb r1, [r0, 0x8]
	lsls r3, r1, 2
	adds r1, r3, r1
	lsls r1, 3
	adds r1, 0x50
	add r0, sp, 0xC8
	ldr r2, [r0]
	adds r2, 0xA
	adds r3, r7, r3
	ldr r3, [r3]
	movs r0, 0x7
	str r0, [sp]
	movs r0, 0
	bl sub_80078A4
	movs r0, 0
	bl sub_80073E0
	add sp, 0xCC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065A78: .4byte gUnknown_8106CF4
_08065A7C: .4byte gUnknown_202EE10
_08065A80: .4byte gOptionsOthersTextPtr
_08065A84: .4byte gOptionsWindowColorPtr
_08065A88: .4byte gUnknown_202F2E8
	thumb_func_end CreateFieldOthersMenu

	thumb_func_start sub_8065A8C
sub_8065A8C:
	push {lr}
	cmp r0, 0x5
	bhi _08065B38
	lsls r0, 2
	ldr r1, _08065A9C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065A9C: .4byte _08065AA0
	.align 2, 0
_08065AA0:
	.4byte _08065AB8
	.4byte _08065ACC
	.4byte _08065AE0
	.4byte _08065AF4
	.4byte _08065B08
	.4byte _08065B22
_08065AB8:
	ldr r2, _08065AC8
	movs r1, 0
	ldrb r0, [r2]
	cmp r0, 0
	bne _08065AC4
	movs r1, 0x1
_08065AC4:
	strb r1, [r2]
	b _08065B38
	.align 2, 0
_08065AC8: .4byte gUnknown_202F2E8
_08065ACC:
	ldr r2, _08065ADC
	movs r1, 0
	ldrb r0, [r2, 0x1]
	cmp r0, 0
	bne _08065AD8
	movs r1, 0x1
_08065AD8:
	strb r1, [r2, 0x1]
	b _08065B38
	.align 2, 0
_08065ADC: .4byte gUnknown_202F2E8
_08065AE0:
	ldr r2, _08065AF0
	movs r1, 0
	ldrb r0, [r2, 0x2]
	cmp r0, 0
	bne _08065AEC
	movs r1, 0x1
_08065AEC:
	strb r1, [r2, 0x2]
	b _08065B38
	.align 2, 0
_08065AF0: .4byte gUnknown_202F2E8
_08065AF4:
	ldr r2, _08065B04
	movs r1, 0
	ldrb r0, [r2, 0x3]
	cmp r0, 0
	bne _08065B00
	movs r1, 0x1
_08065B00:
	strb r1, [r2, 0x3]
	b _08065B38
	.align 2, 0
_08065B04: .4byte gUnknown_202F2E8
_08065B08:
	ldr r1, _08065B18
	ldrb r0, [r1, 0x4]
	cmp r0, 0
	bne _08065B1C
	movs r0, 0x2
	strb r0, [r1, 0x4]
	b _08065B38
	.align 2, 0
_08065B18: .4byte gUnknown_202F2E8
_08065B1C:
	subs r0, 0x1
	strb r0, [r1, 0x4]
	b _08065B38
_08065B22:
	ldr r1, _08065B30
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	bne _08065B34
	movs r0, 0x2
	b _08065B36
	.align 2, 0
_08065B30: .4byte gUnknown_202F2E8
_08065B34:
	subs r0, 0x1
_08065B36:
	strb r0, [r1, 0x8]
_08065B38:
	pop {r0}
	bx r0
	thumb_func_end sub_8065A8C

	thumb_func_start sub_8065B3C
sub_8065B3C:
	push {lr}
	cmp r0, 0x5
	bhi _08065BE8
	lsls r0, 2
	ldr r1, _08065B4C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065B4C: .4byte _08065B50
	.align 2, 0
_08065B50:
	.4byte _08065B68
	.4byte _08065B7C
	.4byte _08065B90
	.4byte _08065BA4
	.4byte _08065BB8
	.4byte _08065BD2
_08065B68:
	ldr r2, _08065B78
	movs r1, 0
	ldrb r0, [r2]
	cmp r0, 0
	bne _08065B74
	movs r1, 0x1
_08065B74:
	strb r1, [r2]
	b _08065BE8
	.align 2, 0
_08065B78: .4byte gUnknown_202F2E8
_08065B7C:
	ldr r2, _08065B8C
	movs r1, 0
	ldrb r0, [r2, 0x1]
	cmp r0, 0
	bne _08065B88
	movs r1, 0x1
_08065B88:
	strb r1, [r2, 0x1]
	b _08065BE8
	.align 2, 0
_08065B8C: .4byte gUnknown_202F2E8
_08065B90:
	ldr r2, _08065BA0
	movs r1, 0
	ldrb r0, [r2, 0x2]
	cmp r0, 0
	bne _08065B9C
	movs r1, 0x1
_08065B9C:
	strb r1, [r2, 0x2]
	b _08065BE8
	.align 2, 0
_08065BA0: .4byte gUnknown_202F2E8
_08065BA4:
	ldr r2, _08065BB4
	movs r1, 0
	ldrb r0, [r2, 0x3]
	cmp r0, 0
	bne _08065BB0
	movs r1, 0x1
_08065BB0:
	strb r1, [r2, 0x3]
	b _08065BE8
	.align 2, 0
_08065BB4: .4byte gUnknown_202F2E8
_08065BB8:
	ldr r1, _08065BC8
	ldrb r0, [r1, 0x4]
	cmp r0, 0x2
	bne _08065BCC
	movs r0, 0
	strb r0, [r1, 0x4]
	b _08065BE8
	.align 2, 0
_08065BC8: .4byte gUnknown_202F2E8
_08065BCC:
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _08065BE8
_08065BD2:
	ldr r1, _08065BE0
	ldrb r0, [r1, 0x8]
	cmp r0, 0x2
	bne _08065BE4
	movs r0, 0
	b _08065BE6
	.align 2, 0
_08065BE0: .4byte gUnknown_202F2E8
_08065BE4:
	adds r0, 0x1
_08065BE6:
	strb r0, [r1, 0x8]
_08065BE8:
	pop {r0}
	bx r0
	thumb_func_end sub_8065B3C

	thumb_func_start sub_8065BEC
sub_8065BEC:
	movs r0, 0
	bx lr
	thumb_func_end sub_8065BEC

	thumb_func_start sub_8065BF0
sub_8065BF0:
	movs r0, 0
	bx lr
	thumb_func_end sub_8065BF0

	thumb_func_start sub_8065BF4
sub_8065BF4:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r5, _08065C60
	ldr r6, _08065C64
	movs r0, 0x2A
	adds r0, r5
	mov r8, r0
_08065C04:
	movs r7, 0
	bl sub_8065CAC
_08065C0A:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldrh r1, [r6, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08065C2E
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80136E0
_08065C2E:
	ldrh r1, [r6, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08065C46
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8013744
_08065C46:
	ldrh r1, [r6, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08065C5A
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08065C68
_08065C5A:
	bl sub_8083D08
	b _08065C7E
	.align 2, 0
_08065C60: .4byte gUnknown_202EE10
_08065C64: .4byte gRealInputs
_08065C68:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08065C78
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0
	beq _08065C0A
_08065C78:
	bl sub_8083D30
	movs r7, 0x1
_08065C7E:
	ldr r4, _08065C9C
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	cmp r7, 0
	bne _08065CA0
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	bl sub_8065DBC
	b _08065C04
	.align 2, 0
_08065C9C: .4byte gUnknown_202EE10
_08065CA0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8065BF4

	thumb_func_start sub_8065CAC
sub_8065CAC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC8
	add r0, sp, 0x64
	mov r10, r0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x68]
	add r0, sp, 0x6C
	movs r4, 0
	movs r5, 0
	movs r1, 0x2
	mov r9, r1
	mov r1, r9
	strh r1, [r0]
	strh r1, [r0, 0x2]
	add r0, sp, 0x70
	movs r7, 0xC
	strh r7, [r0]
	adds r0, 0x2
	movs r6, 0x10
	strh r6, [r0]
	add r0, sp, 0x74
	strh r6, [r0]
	add r0, sp, 0xC4
	mov r8, r0
	str r0, [sp, 0x78]
	movs r1, 0x3
	str r1, [sp, 0x80]
	add r0, sp, 0x94
	str r1, [r0, 0x4]
	add r0, sp, 0xAC
	str r1, [r0, 0x4]
	add r0, sp, 0x4
	mov r1, r10
	movs r2, 0x60
	bl memcpy
	movs r0, 0x1
	mov r1, r8
	strb r0, [r1]
	strb r4, [r1, 0x1]
	strb r4, [r1, 0x3]
	ldr r4, _08065DB0
	strh r5, [r4, 0x18]
	movs r0, 0x7
	strh r0, [r4, 0x1A]
	strh r0, [r4, 0x1C]
	strh r5, [r4, 0x1E]
	strh r5, [r4, 0x20]
	strh r5, [r4, 0x4]
	strh r6, [r4, 0x6]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	strh r5, [r4, 0x14]
	str r5, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	add r0, sp, 0x4
	strh r7, [r0, 0xC]
	movs r0, 0x7
	movs r1, 0xC
	bl sub_80095E4
	add r2, sp, 0x4
	adds r1, r2, 0
	adds r0, 0x2
	strh r0, [r1, 0x10]
	strh r0, [r2, 0xE]
	movs r0, 0xA
	mov r1, r8
	strb r0, [r1, 0x2]
	adds r0, r2, 0
	mov r1, r9
	strh r1, [r0, 0x8]
	movs r1, 0x1
	bl sub_803ECB4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08065DB4
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0x10
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	movs r4, 0
	ldr r5, _08065DB8
_08065D7A:
	ldr r0, _08065DB0
	adds r1, r4, 0
	bl sub_8013800
	adds r1, r0, 0
	ldm r5!, {r2}
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r3, 0
	bl xxx_format_and_draw
	adds r4, 0x1
	cmp r4, 0x6
	ble _08065D7A
	movs r0, 0
	bl sub_80073E0
	add sp, 0xC8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065DB0: .4byte gUnknown_202EE10
_08065DB4: .4byte gUnknown_80FF770
_08065DB8: .4byte gUnknown_80FF774
	thumb_func_end sub_8065CAC

	thumb_func_start sub_8065DBC
sub_8065DBC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xEC
	adds r6, r0, 0
	ldr r0, _08065F28
	ldr r0, [r0]
	ldrb r1, [r0, 0x9]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	str r0, [sp, 0xC8]
	mov r0, sp
	adds r0, 0x6C
	str r0, [sp, 0xD4]
	mov r1, sp
	adds r1, 0x70
	str r1, [sp, 0xD8]
	mov r2, sp
	adds r2, 0x72
	str r2, [sp, 0xDC]
	adds r0, 0x8
	str r0, [sp, 0xE0]
	adds r1, 0xC
	str r1, [sp, 0xE4]
	adds r2, 0x22
	str r2, [sp, 0xE8]
	adds r0, 0x38
	str r0, [sp, 0xD0]
	subs r1, 0x18
	str r1, [sp, 0xCC]
	movs r2, 0x10
	mov r10, r2
	ldr r5, _08065F2C
	add r0, sp, 0xC4
	mov r9, r0
	add r1, sp, 0x4
	mov r8, r1
_08065E0C:
	movs r7, 0
	ldr r0, [sp, 0xCC]
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [sp, 0x68]
	movs r0, 0x2
	ldr r2, [sp, 0xD4]
	strh r0, [r2]
	strh r0, [r2, 0x2]
	movs r0, 0xC
	ldr r1, [sp, 0xD8]
	strh r0, [r1]
	mov r0, r10
	ldr r2, [sp, 0xDC]
	strh r0, [r2]
	ldr r1, [sp, 0xE0]
	strh r0, [r1]
	mov r2, r9
	str r2, [sp, 0x78]
	movs r0, 0x3
	ldr r1, [sp, 0xE4]
	str r0, [r1, 0x4]
	ldr r2, [sp, 0xE8]
	str r0, [r2, 0x4]
	ldr r1, [sp, 0xD0]
	str r0, [r1, 0x4]
	add r0, sp, 0x4
	ldr r1, [sp, 0xCC]
	movs r2, 0x60
	bl memcpy
	movs r1, 0x7
	add r0, sp, 0xC4
	strb r1, [r0]
	mov r2, r9
	strb r6, [r2, 0x1]
	movs r0, 0
	strb r0, [r2, 0x3]
	strh r6, [r5, 0x1E]
	strh r1, [r5, 0x20]
	strh r7, [r5, 0x1A]
	strh r7, [r5, 0x18]
	strh r7, [r5, 0x1C]
	strh r7, [r5, 0x4]
	mov r1, r10
	strh r1, [r5, 0x6]
	strh r7, [r5, 0x14]
	str r7, [r5]
	adds r0, r5, 0
	adds r0, 0x28
	bl sub_801317C
	movs r0, 0x18
	mov r2, r8
	strh r0, [r2, 0xC]
	movs r0, 0x8
	movs r1, 0xC
	bl sub_80095E4
	adds r0, 0x2
	mov r1, r8
	strh r0, [r1, 0x10]
	strh r0, [r1, 0xE]
	movs r0, 0xA
	mov r2, r9
	strb r0, [r2, 0x2]
	movs r0, 0x2
	strh r0, [r1, 0x8]
	add r0, sp, 0x4
	movs r1, 0x1
	bl sub_803ECB4
	ldr r1, _08065F30
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r0, 0x13
	lsls r0, 3
	strh r0, [r5, 0xC]
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r5, 0xE]
	movs r0, 0
	bl sub_80073B8
	lsls r0, r6, 3
	adds r0, 0x10
	ldr r1, _08065F34
	lsls r4, r6, 2
	adds r1, r4, r1
	ldr r2, [r1]
	str r7, [sp]
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	ldr r1, _08065F38
	ldr r2, [sp, 0xC8]
	lsls r0, r2, 5
	adds r4, r0
	adds r4, r1
	ldr r2, [r4]
	str r7, [sp]
	movs r0, 0x8
	movs r1, 0x10
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
_08065EF4:
	adds r0, r5, 0
	bl AddMenuCursorSprite
	movs r0, 0x24
	bl sub_803E46C
	ldr r0, _08065F3C
	ldrh r1, [r0, 0x2]
	mov r0, r10
	ands r0, r1
	cmp r0, 0
	bne _08065F16
	adds r0, r5, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _08065F40
_08065F16:
	movs r0, 0
	bl sub_8083CE0
	adds r6, 0x1
	cmp r6, 0x7
	bne _08065F64
	movs r6, 0
	b _08065F64
	.align 2, 0
_08065F28: .4byte gUnknown_203B46C
_08065F2C: .4byte gUnknown_202EE10
_08065F30: .4byte gUnknown_2027370
_08065F34: .4byte gUnknown_80FF774
_08065F38: .4byte gUnknown_80FF7EC
_08065F3C: .4byte gRealInputs
_08065F40:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08065F52
	adds r0, r5, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	beq _08065F68
_08065F52:
	movs r0, 0
	bl sub_8083CE0
	subs r6, 0x1
	movs r0, 0x1
	negs r0, r0
	cmp r6, r0
	bne _08065F64
	movs r6, 0x6
_08065F64:
	movs r7, 0x1
	b _08065F94
_08065F68:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08065F7A
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08065F80
_08065F7A:
	bl sub_8083D08
	b _08065F94
_08065F80:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08065F90
	ldr r1, _08065FB0
	ldrb r0, [r1]
	cmp r0, 0
	beq _08065EF4
_08065F90:
	bl sub_8083D30
_08065F94:
	movs r0, 0x24
	bl sub_803E46C
	cmp r7, 0
	beq _08065FA0
	b _08065E0C
_08065FA0:
	add sp, 0xEC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065FB0: .4byte gUnknown_202EE3A
	thumb_func_end sub_8065DBC

	thumb_func_start sub_8065FB4
sub_8065FB4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _08065FE0
	add sp, r4
	movs r0, 0
	mov r10, r0
	ldr r4, _08065FE4
	ldr r0, [r4]
	ldr r1, _08065FE8
	adds r0, r1
	ldrb r0, [r0]
	bl GetRecruitable
	lsls r0, 24
	cmp r0, 0
	bne _08065FF0
	ldr r0, _08065FEC
	b _08065FFE
	.align 2, 0
_08065FE0: .4byte 0xfffff608
_08065FE4: .4byte gDungeonGlobalData
_08065FE8: .4byte 0x00000644
_08065FEC: .4byte gUnknown_80FA5F4
_08065FF0:
	ldr r0, [r4]
	ldr r2, _0806600C
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08066014
	ldr r0, _08066010
_08065FFE:
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	b _08066194
	.align 2, 0
_0806600C: .4byte 0x0000065d
_08066010: .4byte gUnknown_80FA61C
_08066014:
	mov r0, sp
	bl sub_80664FC
	ldr r6, _08066130
_0806601C:
	movs r0, 0
	mov r8, r0
	mov r1, r10
	lsls r0, r1, 2
	add r0, r10
	lsls r0, 6
	subs r0, r1
	lsls r0, 2
	add r0, sp
	mov r9, r0
	ldr r0, _08066134
	strb r1, [r0, 0x1]
	ldr r0, _08066138
	movs r1, 0x1
	bl sub_803ECB4
	mov r2, r8
	strh r2, [r6, 0x1A]
	strh r2, [r6, 0x18]
	strh r2, [r6, 0x1C]
	mov r0, r10
	strh r0, [r6, 0x1E]
	movs r0, 0x2
	strh r0, [r6, 0x20]
	strh r2, [r6, 0x4]
	movs r0, 0x10
	strh r0, [r6, 0x6]
	strh r2, [r6, 0x14]
	mov r1, r8
	str r1, [r6]
	adds r0, r6, 0
	adds r0, 0x28
	bl sub_801317C
	ldr r0, _0806613C
	mov r2, r8
	str r2, [r0]
	movs r1, 0
	ldr r0, _08066140
	strb r1, [r0]
	mov r0, r9
	mov r1, r10
	bl sub_80661AC
	ldr r1, _08066144
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r0, 0x10
	lsls r0, 3
	strh r0, [r6, 0xC]
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r6, 0xE]
_0806608C:
	movs r5, 0
	ldr r0, _08066140
	strb r5, [r0]
	movs r0, 0
	ldr r1, _08066148
	bl sub_8014140
	adds r4, r0, 0
	mov r0, r9
	adds r1, r4, 0
	bl sub_8066288
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, 31
	mov r0, r9
	adds r1, r4, 0
	bl sub_8066358
	lsls r0, 24
	cmp r0, 0
	beq _080660BE
	movs r5, 0x1
_080660BE:
	cmp r5, 0
	bne _080660CE
	ldr r0, _08066130
	bl AddMenuCursorSprite
	movs r0, 0x45
	bl sub_803E46C
_080660CE:
	ldr r2, _08066140
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080660E2
	movs r0, 0x1
	movs r1, 0x8
	bl sub_8066434
_080660E2:
	ldr r0, _08066140
	ldrb r1, [r0]
	movs r7, 0x2
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _080660F8
	movs r0, 0
	movs r1, 0x70
	bl sub_8066434
_080660F8:
	ldr r5, _0806614C
	ldrh r1, [r5, 0x2]
	movs r0, 0x30
	ands r0, r1
	cmp r0, 0
	bne _0806611A
	ldr r4, _08066130
	adds r0, r4, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	bne _0806611A
	adds r0, r4, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _08066150
_0806611A:
	movs r0, 0
	bl sub_8083CE0
	movs r0, 0
	mov r1, r10
	cmp r1, 0
	bne _0806612A
	movs r0, 0x1
_0806612A:
	mov r10, r0
	b _08066184
	.align 2, 0
_08066130: .4byte gUnknown_202EE10
_08066134: .4byte gUnknown_203B43C
_08066138: .4byte gUnknown_8106D08
_0806613C: .4byte gUnknown_202F2F8
_08066140: .4byte gUnknown_202F2FC
_08066144: .4byte gUnknown_2027370
_08066148: .4byte gUnknown_8106D68
_0806614C: .4byte gRealInputs
_08066150:
	bl sub_80048C8
	lsls r0, 24
	cmp r0, 0
	bne _0806608C
	ldrh r1, [r5, 0x2]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	bne _0806616E
	adds r0, r4, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	beq _08066174
_0806616E:
	bl sub_8083D30
	b _0806618C
_08066174:
	movs r0, 0xC
	ands r0, r1
	cmp r0, 0
	beq _0806608C
	bl sub_8083D08
	movs r2, 0x1
	mov r8, r2
_08066184:
	mov r0, r8
	cmp r0, 0
	bne _0806618C
	b _0806601C
_0806618C:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
_08066194:
	ldr r3, _080661A8
	add sp, r3
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080661A8: .4byte 0x000009f8
	thumb_func_end sub_8065FB4

	thumb_func_start sub_80661AC
sub_80661AC:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x44
	adds r6, r0, 0
	adds r5, r1, 0
	ldr r0, _080661DC
	ldr r4, [r0]
	movs r0, 0x20
	mov r8, r0
	movs r0, 0
	bl sub_80073B8
	cmp r5, 0
	bne _080661E4
	ldr r0, _080661E0
	ldr r2, [r0]
	str r5, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0
	bl xxx_call_draw_string
	b _080661F6
	.align 2, 0
_080661DC: .4byte gUnknown_202F2F8
_080661E0: .4byte gUnknown_80FEA68
_080661E4:
	ldr r0, _08066254
	ldr r2, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x14
	movs r1, 0
	movs r3, 0
	bl xxx_call_draw_string
_080661F6:
	movs r1, 0x9F
	lsls r1, 3
	adds r0, r6, r1
	ldr r1, [r0]
	cmp r1, 0
	beq _08066260
	movs r7, 0x7
	lsls r0, r4, 1
	adds r5, r0, r6
_08066208:
	cmp r4, 0
	blt _08066244
	movs r1, 0x9F
	lsls r1, 3
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r4, r0
	bge _08066244
	movs r1, 0xD4
	lsls r1, 2
	adds r0, r6, r1
	adds r0, r4
	ldrb r2, [r0]
	add r0, sp, 0x4
	ldr r1, _08066258
	bl sprintf_2
	movs r0, 0
	ldrsh r1, [r5, r0]
	ldr r0, _0806625C
	bl sub_808D930
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	mov r1, r8
	add r2, sp, 0x4
	movs r3, 0
	bl xxx_format_and_draw
_08066244:
	subs r7, 0x1
	adds r5, 0x2
	adds r4, 0x1
	movs r1, 0xC
	add r8, r1
	cmp r7, 0
	bge _08066208
	b _08066270
	.align 2, 0
_08066254: .4byte gUnknown_80FEA80
_08066258: .4byte gUnknown_8106D8C
_0806625C: .4byte gAvailablePokemonNames
_08066260:
	ldr r0, _08066284
	ldr r2, [r0]
	str r1, [sp]
	movs r0, 0x8
	mov r1, r8
	movs r3, 0
	bl xxx_call_draw_string
_08066270:
	movs r0, 0
	bl sub_80073E0
	add sp, 0x44
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066284: .4byte gUnknown_80FEA8C
	thumb_func_end sub_80661AC

	thumb_func_start sub_8066288
sub_8066288:
	push {r4,r5,lr}
	sub sp, 0x44
	adds r5, r0, 0
	adds r3, r1, 0
	ldr r0, _080662B8
	ldr r4, [r0]
	cmp r4, 0
	beq _080662B4
	subs r4, 0x1
	ldr r2, _080662BC
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080662C0
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _080662C4
	cmp r3, 0x1
	beq _080662C4
_080662B4:
	movs r0, 0
	b _0806633E
	.align 2, 0
_080662B8: .4byte gUnknown_202F2F8
_080662BC: .4byte gUnknown_202F2FC
_080662C0: .4byte gRealInputs
_080662C4:
	movs r0, 0
	bl sub_8083CE0
	movs r0, 0
	bl sub_80073B8
	movs r0, 0x10
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x10
	movs r3, 0x90
	bl sub_80087EC
	ldr r1, _08066348
	movs r2, 0xD4
	lsls r2, 2
	adds r0, r5, r2
	adds r0, r4
	ldrb r2, [r0]
	add r0, sp, 0x4
	bl sprintf_2
	ldr r0, _0806634C
	lsls r1, r4, 1
	adds r1, r5, r1
	movs r2, 0
	ldrsh r1, [r1, r2]
	bl sub_808D930
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x14
	add r2, sp, 0x4
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	movs r0, 0x45
	bl sub_803E46C
	ldr r5, _08066350
	movs r4, 0x5
_08066320:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x45
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08066320
	ldr r1, _08066354
	ldr r0, [r1]
	subs r0, 0x1
	str r0, [r1]
	movs r0, 0x1
_0806633E:
	add sp, 0x44
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_08066348: .4byte gUnknown_8106D8C
_0806634C: .4byte gAvailablePokemonNames
_08066350: .4byte gUnknown_203B084
_08066354: .4byte gUnknown_202F2F8
	thumb_func_end sub_8066288

	thumb_func_start sub_8066358
sub_8066358:
	push {r4-r6,lr}
	sub sp, 0x44
	adds r5, r0, 0
	adds r3, r1, 0
	ldr r0, _08066394
	ldr r0, [r0]
	adds r4, r0, 0
	adds r4, 0x8
	movs r6, 0x80
	movs r1, 0x9F
	lsls r1, 3
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, r4
	ble _08066390
	ldr r2, _08066398
	ldrb r0, [r2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806639C
	ldrh r1, [r0, 0x4]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _080663A0
	cmp r3, 0x2
	beq _080663A0
_08066390:
	movs r0, 0
	b _0806641A
	.align 2, 0
_08066394: .4byte gUnknown_202F2F8
_08066398: .4byte gUnknown_202F2FC
_0806639C: .4byte gRealInputs
_080663A0:
	movs r0, 0
	bl sub_8083CE0
	movs r0, 0
	bl sub_80073B8
	movs r0, 0x10
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	adds r2, r6, 0
	movs r3, 0x48
	bl sub_80087EC
	ldr r1, _08066424
	movs r2, 0xD4
	lsls r2, 2
	adds r0, r5, r2
	adds r0, r4
	ldrb r2, [r0]
	add r0, sp, 0x4
	bl sprintf_2
	ldr r0, _08066428
	lsls r1, r4, 1
	adds r1, r5, r1
	movs r2, 0
	ldrsh r1, [r1, r2]
	bl sub_808D930
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	adds r1, r6, 0
	add r2, sp, 0x4
	movs r3, 0
	bl xxx_format_and_draw
	movs r0, 0
	bl sub_80073E0
	movs r0, 0xD
	bl sub_803E46C
	ldr r5, _0806642C
	movs r4, 0x5
_080663FC:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0xD
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _080663FC
	ldr r1, _08066430
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	movs r0, 0x1
_0806641A:
	add sp, 0x44
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08066424: .4byte gUnknown_8106D8C
_08066428: .4byte gAvailablePokemonNames
_0806642C: .4byte gUnknown_203B080
_08066430: .4byte gUnknown_202F2F8
	thumb_func_end sub_8066358

	thumb_func_start sub_8066434
sub_8066434:
	push {r4-r7,lr}
	mov r12, r1
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r7, _080664C8
	ldr r0, _080664CC
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _080664C0
	ldr r0, _080664D0
	ldrh r1, [r0]
	ldr r3, _080664D4
	ands r3, r1
	ldr r1, _080664D8
	ands r3, r1
	ldr r1, _080664DC
	ands r3, r1
	ldr r1, _080664E0
	ands r3, r1
	ldr r1, _080664E4
	ands r3, r1
	negs r1, r2
	orrs r1, r2
	asrs r1, 31
	movs r2, 0x80
	lsls r2, 6
	ands r2, r1
	ldrh r1, [r0, 0x2]
	ldr r4, _080664E8
	ands r4, r1
	orrs r4, r2
	movs r5, 0xF
	ldr r2, _080664EC
	movs r6, 0x2
	ldrsh r1, [r7, r6]
	lsls r1, 3
	add r1, r12
	ands r1, r2
	lsls r1, 4
	ldrh r2, [r0, 0x6]
	ands r5, r2
	orrs r5, r1
	strh r5, [r0, 0x6]
	movs r2, 0
	ldrsh r1, [r7, r2]
	lsls r1, 3
	adds r1, 0x40
	ldr r2, _080664F0
	ands r1, r2
	movs r2, 0xFE
	lsls r2, 8
	ands r4, r2
	orrs r4, r1
	movs r2, 0x80
	lsls r2, 7
	ldr r1, _080664F4
	ands r3, r1
	orrs r3, r2
	strh r3, [r0]
	ands r4, r1
	strh r4, [r0, 0x2]
	ldr r1, _080664F8
	strh r1, [r0, 0x4]
	movs r1, 0x7F
	movs r2, 0
	movs r3, 0
	bl AddSprite
_080664C0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080664C8: .4byte gUnknown_2027370
_080664CC: .4byte gUnknown_202EDCC
_080664D0: .4byte gUnknown_202F300
_080664D4: .4byte 0x0000feff
_080664D8: .4byte 0x0000fdff
_080664DC: .4byte 0x0000f3ff
_080664E0: .4byte 0x0000efff
_080664E4: .4byte 0x0000dfff
_080664E8: .4byte 0x0000c1ff
_080664EC: .4byte 0x00000fff
_080664F0: .4byte 0x000001ff
_080664F4: .4byte 0x00003fff
_080664F8: .4byte 0x0000f3f0
	thumb_func_end sub_8066434

	thumb_func_start sub_80664FC
sub_80664FC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C0
	str r0, [sp, 0x1A8]
	movs r7, 0
	ldr r2, _08066604
	ldr r3, _08066608
	movs r1, 0
_08066512:
	mov r4, sp
	adds r0, r4, r7
	strb r1, [r0]
	adds r7, 0x1
	cmp r7, r2
	ble _08066512
	movs r4, 0
	adds r1, r3, 0
	ldr r0, [r3]
	ldr r7, _0806660C
	adds r0, r7
	ldr r0, [r0]
	cmp r4, r0
	bge _08066578
	ldr r6, _08066610
_08066530:
	movs r5, 0x1
	ldr r2, [r1]
	lsls r0, r4, 3
	adds r0, r2, r0
	ldr r7, _08066614
	adds r1, r0, r7
	movs r7, 0
	ldrsh r1, [r1, r7]
	movs r7, 0xD1
	lsls r7, 6
	adds r0, r7
	movs r7, 0
	ldrsh r0, [r0, r7]
	cmp r1, 0
	bne _08066554
	cmp r0, 0
	beq _08066566
	movs r5, 0x2
_08066554:
	adds r0, r2, r6
	str r3, [sp, 0x1BC]
	bl ExtractSpeciesIndex
	lsls r0, 16
	asrs r0, 16
	add r0, sp
	strb r5, [r0]
	ldr r3, [sp, 0x1BC]
_08066566:
	adds r6, 0x8
	adds r4, 0x1
	ldr r1, _08066608
	ldr r0, [r1]
	ldr r2, _0806660C
	adds r0, r2
	ldr r0, [r0]
	cmp r4, r0
	blt _08066530
_08066578:
	ldr r0, [r3]
	ldr r4, _08066618
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806658A
	add r1, sp, 0x17C
	movs r0, 0x1
	strb r0, [r1]
_0806658A:
	movs r0, 0x5
_0806658C:
	subs r0, 0x1
	cmp r0, 0
	bge _0806658C
	movs r7, 0
_08066594:
	movs r0, 0
	mov r8, r0
	movs r1, 0x1
	adds r2, r7, 0x1
	str r2, [sp, 0x1AC]
	lsls r4, r7, 2
	str r4, [sp, 0x1B0]
_080665A2:
	lsls r0, r1, 16
	asrs r6, r0, 16
	movs r0, 0x7
	mov r10, r0
	movs r2, 0
	mov r9, r2
	mov r4, sp
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r1, 0x1
	str r1, [sp, 0x1B4]
	cmp r0, 0
	bne _080665BE
	b _08066704
_080665BE:
	cmp r7, 0
	bne _08066620
	adds r0, r6, 0
	bl sub_806F9BC
	lsls r0, 24
	cmp r0, 0
	bne _080665D0
	b _08066704
_080665D0:
	adds r0, r6, 0
	bl IsExclusivePokemonUnlocked
	lsls r0, 24
	cmp r0, 0
	bne _080665DE
	b _08066704
_080665DE:
	adds r0, r6, 0
	bl GetBaseRecruit
	lsls r0, 16
	ldr r1, _0806661C
	cmp r0, r1
	bne _080665EE
	b _08066704
_080665EE:
	cmp r6, 0x97
	bne _0806669E
	movs r0, 0x7A
	bl sub_80860A8
	lsls r0, 24
	cmp r0, 0
	bne _08066600
	b _08066704
_08066600:
	b _0806669E
	.align 2, 0
_08066604: .4byte 0x000001a7
_08066608: .4byte gDungeonGlobalData
_0806660C: .4byte 0x000037e4
_08066610: .4byte 0x0000343c
_08066614: .4byte 0x0000343e
_08066618: .4byte 0x0000066e
_0806661C: .4byte 0xfc190000
_08066620:
	movs r5, 0
	ldr r0, _080666CC
	ldr r2, [r0]
	movs r4, 0x1
	movs r3, 0xCE
	lsls r3, 1
_0806662C:
	ldrb r1, [r2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0806663E
	movs r1, 0x8
	ldrsh r0, [r2, r1]
	cmp r0, r6
	beq _08066646
_0806663E:
	adds r2, 0x58
	adds r5, 0x1
	cmp r5, r3
	ble _0806662C
_08066646:
	ldr r0, _080666D0
	cmp r5, r0
	beq _08066650
	movs r2, 0x1
	mov r9, r2
_08066650:
	mov r4, r9
	cmp r4, 0
	bne _0806669E
	movs r5, 0
	ldr r2, _080666CC
_0806665A:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _080666D4
	adds r1, r0
	ldr r0, [r2]
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806668C
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	str r2, [sp, 0x1B8]
	bl sub_806A564
	lsls r0, 24
	ldr r2, [sp, 0x1B8]
	cmp r0, 0
	bne _0806668C
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	cmp r0, r6
	beq _08066692
_0806668C:
	adds r5, 0x1
	cmp r5, 0x3
	ble _0806665A
_08066692:
	cmp r5, 0x4
	beq _0806669E
	movs r2, 0x1
	mov r9, r2
	movs r4, 0x6
	mov r10, r4
_0806669E:
	cmp r7, 0
	bne _080666D8
	mov r1, sp
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _080666B0
	movs r2, 0x2
	mov r10, r2
_080666B0:
	mov r4, r8
	lsls r0, r4, 1
	ldr r1, [sp, 0x1A8]
	adds r0, r1, r0
	strh r6, [r0]
	movs r2, 0xD4
	lsls r2, 2
	adds r0, r1, r2
	add r0, r8
	mov r4, r10
	strb r4, [r0]
	movs r0, 0x1
	add r8, r0
	b _08066704
	.align 2, 0
_080666CC: .4byte gRecruitedPokemonRef
_080666D0: .4byte 0x0000019d
_080666D4: .4byte 0x00008df8
_080666D8:
	mov r1, r9
	cmp r1, 0
	beq _08066704
	ldr r2, [sp, 0x1B0]
	adds r0, r2, r7
	lsls r0, 6
	subs r0, r7
	lsls r0, 2
	ldr r4, [sp, 0x1A8]
	adds r0, r4
	mov r2, r8
	lsls r1, r2, 1
	adds r1, r0, r1
	strh r6, [r1]
	movs r4, 0xD4
	lsls r4, 2
	adds r0, r4
	add r0, r8
	mov r1, r10
	strb r1, [r0]
	movs r2, 0x1
	add r8, r2
_08066704:
	ldr r1, [sp, 0x1B4]
	ldr r0, _08066740
	cmp r1, r0
	bgt _0806670E
	b _080665A2
_0806670E:
	ldr r4, [sp, 0x1B0]
	adds r0, r4, r7
	lsls r0, 6
	subs r0, r7
	lsls r0, 2
	ldr r7, [sp, 0x1A8]
	adds r0, r7
	movs r1, 0x9F
	lsls r1, 3
	adds r0, r1
	mov r2, r8
	str r2, [r0]
	ldr r7, [sp, 0x1AC]
	cmp r7, 0x1
	bgt _0806672E
	b _08066594
_0806672E:
	add sp, 0x1C0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066740: .4byte 0x000001a3
	thumb_func_end sub_80664FC

	thumb_func_start sub_8066744
sub_8066744:
	push {lr}
	ldr r1, [r0, 0x70]
	adds r1, 0x48
	movs r2, 0x1
	strb r2, [r1]
	adds r0, 0x4
	movs r1, 0
	bl sub_8045DB4
	pop {r0}
	bx r0
	thumb_func_end sub_8066744

	thumb_func_start sub_806675C
sub_806675C:
	push {r4-r7,lr}
	adds r5, r0, 0
	lsls r1, 24
	lsrs r7, r1, 24
	movs r1, 0
	movs r2, 0xFE
	bl sub_8044D90
	adds r4, r0, 0
	movs r3, 0
	ldr r6, _080667C0
_08066772:
	lsls r1, r3, 2
	ldr r0, [r6]
	adds r1, r0, r1
	ldrb r2, [r1]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _08066798
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	beq _08066798
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	bne _080667EC
	movs r0, 0xEF
	ands r0, r2
	strb r0, [r1]
_08066798:
	adds r3, 0x1
	cmp r3, 0x13
	ble _08066772
	ldr r0, _080667C4
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _080667C8
	bl PlaySoundEffect
	cmp r7, 0
	beq _08066812
	ldrb r1, [r4]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080667D0
	ldr r0, _080667CC
	b _080667DE
	.align 2, 0
_080667C0: .4byte gTeamInventory_203B460
_080667C4: .4byte gUnknown_202DE58
_080667C8: .4byte 0x00000133
_080667CC: .4byte gUnknown_80F8D04
_080667D0:
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	bne _08066808
	ldr r0, _080667E8
_080667DE:
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
	b _08066812
	.align 2, 0
_080667E8: .4byte gUnknown_80F8CE4
_080667EC:
	ldr r0, _08066800
	bl sub_8045BF8
	ldr r0, _08066804
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
	b _08066838
	.align 2, 0
_08066800: .4byte gUnknown_202DE58
_08066804: .4byte gUnknown_80F8C7C
_08066808:
	ldr r0, _08066840
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
_08066812:
	ldrb r0, [r4]
	movs r1, 0x10
	orrs r1, r0
	strb r1, [r4]
	movs r0, 0x8
	ands r1, r0
	cmp r1, 0
	beq _08066838
	cmp r7, 0
	beq _08066838
	ldr r0, _08066844
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _08066848
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
_08066838:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066840: .4byte gUnknown_80F8CE8
_08066844: .4byte gUnknown_202DE58
_08066848: .4byte gUnknown_80F8BE0
	thumb_func_end sub_806675C

	thumb_func_start sub_806684C
sub_806684C:
	push {r4-r6,lr}
	adds r5, r0, 0
	lsls r1, 24
	lsrs r6, r1, 24
	movs r4, 0
_08066856:
	ldr r0, _0806688C
	lsls r1, r4, 2
	ldr r0, [r0]
	adds r1, r0, r1
	ldrb r2, [r1]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _080668B8
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	beq _080668B8
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _08066898
	ldr r0, _08066890
	bl sub_8045BF8
	ldr r0, _08066894
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
	b _080668BE
	.align 2, 0
_0806688C: .4byte gTeamInventory_203B460
_08066890: .4byte gUnknown_202DE58
_08066894: .4byte gUnknown_80F8C7C
_08066898:
	movs r0, 0xEF
	ands r0, r2
	strb r0, [r1]
	ldr r0, _080668C4
	bl sub_8045BF8
	ldr r0, _080668C8
	bl PlaySoundEffect
	cmp r6, 0
	beq _080668B8
	ldr r0, _080668CC
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
_080668B8:
	adds r4, 0x1
	cmp r4, 0x13
	ble _08066856
_080668BE:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080668C4: .4byte gUnknown_202DE58
_080668C8: .4byte 0x00000133
_080668CC: .4byte gUnknown_80F8D20
	thumb_func_end sub_806684C

	thumb_func_start sub_80668D0
sub_80668D0:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	adds r6, r0, 0
	movs r1, 0x1
	bl sub_8044DA4
	mov r8, r0
	ldr r4, [r6, 0x70]
	ldr r7, [r0, 0x70]
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x2
	bl sub_8044D90
	adds r5, r0, 0
	adds r4, 0x48
	ldrb r0, [r4]
	movs r1, 0
	mov r9, r1
	cmp r0, 0x80
	bne _08066904
	movs r2, 0x1
	mov r9, r2
_08066904:
	mov r0, r9
	cmp r0, 0
	bne _08066928
	ldrb r1, [r5]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0x18
	bne _08066928
	ldr r0, _08066920
	adds r1, r5, 0
	bl sub_8045BF8
	ldr r0, _08066924
	b _08066950
	.align 2, 0
_08066920: .4byte gUnknown_202DEA8
_08066924: .4byte gUnknown_80F8C44
_08066928:
	ldr r0, _0806695C
	mov r1, r8
	movs r2, 0
	bl SetMessageArgument
	adds r1, r7, 0
	adds r1, 0x60
	ldrb r2, [r1]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _08066A04
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _08066968
	ldr r0, _08066960
	bl sub_8045BF8
	ldr r0, _08066964
_08066950:
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	b _08066A96
	.align 2, 0
_0806695C: .4byte gUnknown_202DFE8
_08066960: .4byte gUnknown_202DEA8
_08066964: .4byte gUnknown_80F8C40
_08066968:
	ldr r1, [r7, 0x60]
	str r1, [sp]
	ldr r2, [r5]
	str r2, [sp, 0x4]
	movs r4, 0xEF
	mov r0, sp
	ldrb r0, [r0]
	ands r0, r4
	ldr r3, _080669A8
	ands r1, r3
	orrs r1, r0
	str r1, [sp]
	add r5, sp, 0x4
	ldrb r0, [r5]
	ands r0, r4
	ands r2, r3
	orrs r2, r0
	str r2, [sp, 0x4]
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x64
	bl sub_8044DF0
	mov r1, r9
	cmp r1, 0
	beq _080669AC
	adds r0, r6, 0x4
	mov r1, sp
	movs r2, 0x1
	bl sub_80460F8
	b _080669B2
	.align 2, 0
_080669A8: .4byte 0xffffff00
_080669AC:
	mov r0, sp
	bl AddItemToInventory
_080669B2:
	ldr r0, [sp, 0x4]
	str r0, [r7, 0x60]
	ldr r4, _080669F4
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8045BF8
	adds r4, 0x50
	adds r0, r4, 0
	mov r1, sp
	bl sub_8045BF8
	ldr r0, _080669F8
	bl PlaySoundEffect
	ldr r0, _080669FC
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	add r0, sp, 0x4
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08066A52
	ldr r0, _08066A00
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	b _08066A52
	.align 2, 0
_080669F4: .4byte gUnknown_202DE58
_080669F8: .4byte 0x0000014d
_080669FC: .4byte gUnknown_80F8CA8
_08066A00: .4byte gUnknown_80F8BE0
_08066A04:
	ldr r2, [r5]
	str r2, [sp, 0x8]
	movs r1, 0xEF
	add r4, sp, 0x8
	ldrb r0, [r4]
	ands r0, r1
	ldr r1, _08066AA4
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x8]
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x65
	bl sub_8044DF0
	ldr r0, [sp, 0x8]
	str r0, [r7, 0x60]
	ldr r0, _08066AA8
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _08066AAC
	bl PlaySoundEffect
	ldr r0, _08066AB0
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	ldrb r1, [r4]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08066A52
	ldr r0, _08066AB4
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
_08066A52:
	mov r0, r8
	bl sub_806A6E8
	mov r1, r8
	adds r1, 0x4
	mov r0, r8
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _08066A74
	adds r0, r6, 0
	mov r1, r8
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_08066A74:
	ldrb r0, [r7, 0x7]
	cmp r0, 0
	bne _08066A86
	ldrh r1, [r7]
	movs r2, 0x80
	lsls r2, 7
	adds r0, r2, 0
	orrs r0, r1
	strh r0, [r7]
_08066A86:
	ldr r0, _08066AB8
	ldr r0, [r0]
	ldr r1, _08066ABC
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_807AB38
_08066A96:
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066AA4: .4byte 0xffffff00
_08066AA8: .4byte gUnknown_202DE58
_08066AAC: .4byte 0x0000014d
_08066AB0: .4byte gUnknown_80F8D44
_08066AB4: .4byte gUnknown_80F8BE0
_08066AB8: .4byte gDungeonGlobalData
_08066ABC: .4byte 0x00003a08
	thumb_func_end sub_80668D0

	thumb_func_start sub_8066AC0
sub_8066AC0:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r7, r0, 0
	movs r1, 0
	bl sub_8044DA4
	adds r6, r0, 0
	ldr r2, [r6, 0x70]
	mov r8, r2
	adds r5, r2, 0
	adds r5, 0x60
	ldr r0, _08066AF0
	ldr r0, [r0]
	adds r0, 0x4C
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08066AF8
	ldr r0, _08066AF4
	b _08066B10
	.align 2, 0
_08066AF0: .4byte gTeamInventory_203B460
_08066AF4: .4byte gUnknown_80F8D60
_08066AF8:
	ldrb r1, [r5]
	movs r0, 0x8
	ands r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08066B24
	ldr r0, _08066B1C
	adds r1, r5, 0
	bl sub_8045BF8
	ldr r0, _08066B20
_08066B10:
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _08066BAC
	.align 2, 0
_08066B1C: .4byte gUnknown_202DE58
_08066B20: .4byte gUnknown_80F8BE0
_08066B24:
	ldr r2, [r2, 0x60]
	str r2, [sp]
	movs r1, 0xEF
	mov r0, sp
	ldrb r0, [r0]
	ands r0, r1
	ldr r1, _08066BB8
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	ldr r0, _08066BBC
	mov r1, sp
	bl sub_8045BF8
	ldr r0, _08066BC0
	adds r1, r6, 0
	movs r2, 0
	bl SetMessageArgument
	strb r4, [r5, 0x2]
	strb r4, [r5, 0x1]
	strb r4, [r5]
	mov r0, sp
	bl AddItemToInventory
	ldr r0, _08066BC4
	bl PlaySoundEffect
	ldr r0, _08066BC8
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	adds r0, r6, 0
	bl sub_806A6E8
	adds r1, r6, 0x4
	adds r0, r6, 0
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _08066B86
	adds r0, r7, 0
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_08066B86:
	mov r1, r8
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	bne _08066B9C
	ldrh r1, [r1]
	movs r2, 0x80
	lsls r2, 7
	adds r0, r2, 0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
_08066B9C:
	ldr r0, _08066BCC
	ldr r0, [r0]
	ldr r2, _08066BD0
	adds r0, r2
	ldrb r1, [r0]
	adds r0, r7, 0
	bl sub_807AB38
_08066BAC:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066BB8: .4byte 0xffffff00
_08066BBC: .4byte gUnknown_202DE58
_08066BC0: .4byte gAvailablePokemonNames
_08066BC4: .4byte 0x0000014d
_08066BC8: .4byte gUnknown_80F8D7C
_08066BCC: .4byte gDungeonGlobalData
_08066BD0: .4byte 0x00003a08
	thumb_func_end sub_8066AC0

	thumb_func_start sub_8066BD4
sub_8066BD4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r7, r0, 0
	movs r1, 0
	bl sub_8044DA4
	mov r9, r0
	ldr r0, [r0, 0x70]
	mov r8, r0
	mov r10, r8
	mov r6, r8
	adds r6, 0x60
	ldr r2, _08066C10
	adds r0, r7, 0
	movs r1, 0x1
	bl sub_8044D90
	adds r5, r0, 0
	ldrb r2, [r6]
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _08066C18
	ldr r0, _08066C14
	adds r1, r6, 0
	b _08066C26
	.align 2, 0
_08066C10: .4byte 0x00001565
_08066C14: .4byte gUnknown_202DE58
_08066C18:
	ldrb r1, [r5]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0x18
	bne _08066C40
	ldr r0, _08066C38
	adds r1, r5, 0
_08066C26:
	bl sub_8045BF8
	ldr r0, _08066C3C
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _08066CC8
	.align 2, 0
_08066C38: .4byte gUnknown_202DE58
_08066C3C: .4byte gUnknown_80F8BE0
_08066C40:
	movs r1, 0xEF
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r6]
	ldrb r0, [r5]
	ands r1, r0
	strb r1, [r5]
	ldr r4, _08066CD8
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_8045BF8
	adds r4, 0x50
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8045BF8
	ldr r0, _08066CDC
	mov r1, r9
	movs r2, 0
	bl SetMessageArgument
	mov r2, r8
	ldr r1, [r2, 0x60]
	ldr r0, [r5]
	str r0, [r2, 0x60]
	str r1, [r5]
	ldr r0, _08066CE0
	bl PlaySoundEffect
	ldr r0, _08066CE4
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	mov r1, r9
	adds r1, 0x4
	mov r0, r9
	bl sub_80706A4
	lsls r0, 24
	cmp r0, 0
	beq _08066CA2
	adds r0, r7, 0
	mov r1, r9
	movs r2, 0
	movs r3, 0
	bl sub_807D148
_08066CA2:
	mov r1, r10
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	bne _08066CB8
	ldrh r1, [r1]
	movs r2, 0x80
	lsls r2, 7
	adds r0, r2, 0
	orrs r0, r1
	mov r1, r10
	strh r0, [r1]
_08066CB8:
	ldr r0, _08066CE8
	ldr r0, [r0]
	ldr r2, _08066CEC
	adds r0, r2
	ldrb r1, [r0]
	adds r0, r7, 0
	bl sub_807AB38
_08066CC8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066CD8: .4byte gUnknown_202DE58
_08066CDC: .4byte gUnknown_202DFE8
_08066CE0: .4byte 0x0000014d
_08066CE4: .4byte gUnknown_80F8DB4
_08066CE8: .4byte gDungeonGlobalData
_08066CEC: .4byte 0x00003a08
	thumb_func_end sub_8066BD4

	thumb_func_start sub_8066CF0
sub_8066CF0:
	push {lr}
	movs r1, 0
	bl sub_8044DA4
	ldr r0, [r0, 0x70]
	adds r0, 0xFC
	movs r1, 0x1
	strb r1, [r0]
	pop {r0}
	bx r0
	thumb_func_end sub_8066CF0

	thumb_func_start sub_8066D04
sub_8066D04:
	push {r4-r6,lr}
	adds r4, r0, 0
	ldr r6, [r4, 0x70]
	movs r1, 0
	movs r2, 0x4
	bl sub_8044D90
	adds r5, r0, 0
	ldr r0, _08066D2C
	adds r1, r5, 0
	bl sub_8045BF8
	adds r0, r6, 0
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0x80
	bne _08066D34
	ldr r0, _08066D30
	b _08066DB2
	.align 2, 0
_08066D2C: .4byte gUnknown_202DE58
_08066D30: .4byte gUnknown_80F8DE0
_08066D34:
	cmp r0, 0x14
	bhi _08066D4C
	ldrb r1, [r5]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0x18
	bne _08066D4C
	ldr r0, _08066D48
	b _08066DB2
	.align 2, 0
_08066D48: .4byte gUnknown_80F8BE0
_08066D4C:
	adds r0, r6, 0
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0x81
	bne _08066D68
	ldrb r1, [r5]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08066D68
	ldr r0, _08066D64
	b _08066DB2
	.align 2, 0
_08066D64: .4byte gUnknown_80F8BE0
_08066D68:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	movs r2, 0x6
	ldrsh r1, [r4, r2]
	bl GetMapTile_1
	adds r2, r0, 0
	ldrh r1, [r2]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	bne _08066DB0
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _08066DB0
	ldr r6, [r2, 0x14]
	cmp r6, 0
	bne _08066DB0
	ldrb r1, [r5]
	movs r0, 0xEF
	ands r0, r1
	strb r0, [r5]
	ldr r0, _08066DBC
	adds r1, r5, 0
	bl sub_8045BF8
	adds r0, r4, 0x4
	adds r1, r5, 0
	movs r2, 0x1
	bl sub_80460F8
	lsls r0, 24
	cmp r0, 0
	bne _08066DC4
_08066DB0:
	ldr r0, _08066DC0
_08066DB2:
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	b _08066DF8
	.align 2, 0
_08066DBC: .4byte gUnknown_202DE58
_08066DC0: .4byte gUnknown_80F8E04
_08066DC4:
	strb r6, [r5, 0x2]
	strb r6, [r5, 0x1]
	strb r6, [r5]
	bl FillInventoryGaps
	ldr r0, _08066E00
	bl PlaySoundEffect
	ldr r0, _08066E04
	adds r1, r4, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08066E08
	ldr r1, [r0]
	adds r0, r4, 0
	bl SendMessage
	ldr r0, _08066E0C
	ldr r0, [r0]
	ldr r1, _08066E10
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_807AB38
_08066DF8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066E00: .4byte 0x0000014d
_08066E04: .4byte gAvailablePokemonNames
_08066E08: .4byte gUnknown_80F8E28
_08066E0C: .4byte gDungeonGlobalData
_08066E10: .4byte 0x00003a08
	thumb_func_end sub_8066D04

	thumb_func_start sub_8066E14
sub_8066E14:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r9, r0
	ldr r0, [r0, 0x70]
	mov r10, r0
	mov r0, r9
	movs r1, 0
	movs r2, 0x5
	bl sub_8044D90
	adds r6, r0, 0
	mov r0, r9
	movs r1, 0x1
	movs r2, 0x6
	bl sub_8044D90
	adds r2, r0, 0
	adds r7, r2, 0
	mov r0, r10
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0x80
	beq _08066E54
	ldr r0, _08066E50
	b _08066F1E
	.align 2, 0
_08066E50: .4byte gUnknown_80F8E2C
_08066E54:
	mov r0, r10
	adds r0, 0x50
	ldrb r1, [r0]
	str r0, [sp, 0x8]
	cmp r1, 0x14
	bhi _08066E80
	ldrb r1, [r2]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0x18
	bne _08066E80
	ldr r0, _08066E78
	adds r1, r2, 0
	bl sub_8045BF8
	ldr r0, _08066E7C
	b _08066F1E
	.align 2, 0
_08066E78: .4byte gUnknown_202DE58
_08066E7C: .4byte gUnknown_80F8BE0
_08066E80:
	ldr r1, [sp, 0x8]
	ldrb r0, [r1]
	cmp r0, 0x81
	bne _08066EA8
	adds r2, r7, 0
	ldrb r1, [r2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08066EA8
	ldr r0, _08066EA0
	adds r1, r2, 0
	bl sub_8045BF8
	ldr r0, _08066EA4
	b _08066F1E
	.align 2, 0
_08066EA0: .4byte gUnknown_202DEA8
_08066EA4: .4byte gUnknown_80F8C48
_08066EA8:
	mov r2, r9
	movs r3, 0x4
	ldrsh r0, [r2, r3]
	movs r3, 0x6
	ldrsh r1, [r2, r3]
	bl GetMapTile_1
	ldr r0, [r0, 0x14]
	cmp r0, 0
	beq _08066ECC
	bl GetEntityType
	cmp r0, 0x3
	beq _08066ECC
	ldr r0, _08066EC8
	b _08066F1E
	.align 2, 0
_08066EC8: .4byte gUnknown_80F8E54
_08066ECC:
	adds r0, r6, 0
	ldr r5, [r0]
	str r5, [sp]
	adds r4, r7, 0
	ldr r6, [r4]
	mov r8, sp
	str r6, [sp, 0x4]
	movs r3, 0xEF
	mov r0, sp
	ldrb r2, [r0]
	ands r2, r3
	ldr r1, _08066F28
	adds r0, r1, 0
	ands r0, r5
	orrs r0, r2
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, 0x4]
	ands r0, r3
	ands r1, r6
	orrs r1, r0
	str r1, [sp, 0x4]
	mov r5, r10
	adds r5, 0x4C
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80461C8
	movs r0, 0
	strb r0, [r4, 0x2]
	strb r0, [r4, 0x1]
	strb r0, [r4]
	add r1, sp, 0x4
	adds r0, r5, 0
	movs r2, 0x1
	bl sub_80460F8
	lsls r0, 24
	cmp r0, 0
	bne _08066F30
	ldr r0, _08066F2C
_08066F1E:
	ldr r1, [r0]
	mov r0, r9
	bl SendMessage
	b _08066F7E
	.align 2, 0
_08066F28: .4byte 0xffffff00
_08066F2C: .4byte gUnknown_80F8E78
_08066F30:
	ldr r3, [sp, 0x8]
	ldrb r0, [r3]
	cmp r0, 0x81
	bne _08066F40
	ldr r0, [sp]
	mov r1, r10
	str r0, [r1, 0x60]
	b _08066F46
_08066F40:
	mov r0, sp
	bl AddItemToInventory
_08066F46:
	bl FillInventoryGaps
	ldr r4, _08066F90
	add r1, sp, 0x4
	adds r0, r4, 0
	bl sub_8045BF8
	adds r4, 0x50
	adds r0, r4, 0
	mov r1, sp
	bl sub_8045BF8
	ldr r0, _08066F94
	bl PlaySoundEffect
	ldr r0, _08066F98
	ldr r1, [r0]
	mov r0, r9
	bl SendMessage
	ldr r0, _08066F9C
	ldr r0, [r0]
	ldr r2, _08066FA0
	adds r0, r2
	ldrb r1, [r0]
	mov r0, r9
	bl sub_807AB38
_08066F7E:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066F90: .4byte gUnknown_202DE58
_08066F94: .4byte 0x0000014d
_08066F98: .4byte gUnknown_80F8EAC
_08066F9C: .4byte gDungeonGlobalData
_08066FA0: .4byte 0x00003a08
	thumb_func_end sub_8066E14

	thumb_func_start sub_8066FA4
sub_8066FA4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	adds r7, r0, 0
	ldr r0, [r7, 0x70]
	mov r9, r0
	movs r1, 0x4
	ldrsh r0, [r7, r1]
	movs r2, 0x6
	ldrsh r1, [r7, r2]
	bl GetMapTile_1
	mov r10, r0
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x7
	bl sub_8044D90
	adds r4, r0, 0
	adds r5, r4, 0
	ldr r0, _08067000
	mov r8, r0
	adds r1, r4, 0
	bl sub_8045BF8
	mov r0, r9
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0x14
	bhi _08067008
	ldrb r1, [r4]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0x18
	bne _08067008
	mov r0, r8
	adds r0, 0x50
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _08067004
	b _0806709E
	.align 2, 0
_08067000: .4byte gUnknown_202DE58
_08067004: .4byte gUnknown_80F8C48
_08067008:
	mov r0, r9
	adds r0, 0x48
	ldrb r1, [r0]
	str r0, [sp, 0x8]
	cmp r1, 0x81
	bne _08067028
	adds r0, r5, 0
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08067028
	ldr r0, _08067024
	b _0806709E
	.align 2, 0
_08067024: .4byte gUnknown_80F8C44
_08067028:
	mov r1, r10
	ldr r0, [r1, 0x14]
	cmp r0, 0
	beq _08067040
	bl GetEntityType
	cmp r0, 0x3
	beq _08067040
	ldr r0, _0806703C
	b _0806709E
	.align 2, 0
_0806703C: .4byte gUnknown_80F8E54
_08067040:
	mov r2, r10
	ldr r0, [r2, 0x14]
	bl GetItemData
	adds r4, r0, 0
	ldr r0, _080670A8
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r6, [r5]
	str r6, [sp]
	ldr r4, [r4]
	mov r8, sp
	str r4, [sp, 0x4]
	movs r3, 0xEF
	mov r0, sp
	ldrb r2, [r0]
	ands r2, r3
	ldr r1, _080670AC
	adds r0, r1, 0
	ands r0, r6
	orrs r0, r2
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, 0x4]
	ands r0, r3
	ands r1, r4
	orrs r1, r0
	str r1, [sp, 0x4]
	adds r4, r7, 0x4
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80461C8
	movs r0, 0
	strb r0, [r5, 0x2]
	strb r0, [r5, 0x1]
	strb r0, [r5]
	adds r0, r4, 0
	mov r1, sp
	movs r2, 0x1
	bl sub_80460F8
	lsls r0, 24
	cmp r0, 0
	bne _080670B4
	ldr r0, _080670B0
_0806709E:
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	b _080670EE
	.align 2, 0
_080670A8: .4byte gUnknown_202DEA8
_080670AC: .4byte 0xffffff00
_080670B0: .4byte gUnknown_80F8E78
_080670B4:
	ldr r1, [sp, 0x8]
	ldrb r0, [r1]
	cmp r0, 0x81
	bne _080670C4
	ldr r0, [sp, 0x4]
	mov r2, r9
	str r0, [r2, 0x60]
	b _080670CA
_080670C4:
	add r0, sp, 0x4
	bl AddItemToInventory
_080670CA:
	bl FillInventoryGaps
	ldr r0, _08067100
	bl PlaySoundEffect
	ldr r0, _08067104
	ldr r1, [r0]
	adds r0, r7, 0
	bl SendMessage
	ldr r0, _08067108
	ldr r0, [r0]
	ldr r1, _0806710C
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r7, 0
	bl sub_807AB38
_080670EE:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067100: .4byte 0x0000014d
_08067104: .4byte gUnknown_80F8EAC
_08067108: .4byte gDungeonGlobalData
_0806710C: .4byte 0x00003a08
	thumb_func_end sub_8066FA4

	thumb_func_start sub_8067110
sub_8067110:
	push {r4-r6,lr}
	sub sp, 0xC
	adds r5, r0, 0
	ldr r4, [r5, 0x70]
	movs r1, 0
	movs r2, 0x8
	bl sub_8044D90
	adds r6, r0, 0
	ldr r0, _08067190
	adds r1, r6, 0
	bl sub_8045BF8
	ldr r0, _08067194
	adds r1, r4, 0
	movs r2, 0
	bl SetMessageArgument_2
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8048D50
	lsls r0, 24
	cmp r0, 0
	beq _08067188
	adds r0, r6, 0
	bl sub_80464AC
	adds r1, r0, 0
	adds r0, r5, 0
	bl SendMessage
	ldr r0, [r6]
	str r0, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0x66
	bl sub_8044DF0
	movs r0, 0x1E
	movs r1, 0x11
	bl sub_803E708
	str r5, [sp]
	add r0, sp, 0x8
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	adds r3, r5, 0
	bl sub_80479B8
	ldr r0, _08067198
	ldr r0, [r0]
	ldr r1, _0806719C
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_807AB38
_08067188:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067190: .4byte gUnknown_202DE58
_08067194: .4byte gAvailablePokemonNames
_08067198: .4byte gDungeonGlobalData
_0806719C: .4byte 0x00003a08
	thumb_func_end sub_8067110

	thumb_func_start sub_80671A0
sub_80671A0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	adds r6, r0, 0
	ldr r0, [r6, 0x70]
	mov r8, r0
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x9
	bl sub_8044D90
	adds r4, r0, 0
	mov r0, r8
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0x81
	bne _080671E8
	ldrb r1, [r4]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080671E8
	ldr r0, _080671E0
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _080671E4
	b _08067230
	.align 2, 0
_080671E0: .4byte gUnknown_202DE58
_080671E4: .4byte gUnknown_80F8BE0
_080671E8:
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	beq _08067202
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08067220
_08067202:
	ldrb r1, [r4]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _08067220
	ldr r0, _08067218
	adds r1, r4, 0
	bl sub_8045BF8
	ldr r0, _0806721C
	b _08067230
	.align 2, 0
_08067218: .4byte gUnknown_202DE58
_0806721C: .4byte gUnknown_80F8BE0
_08067220:
	adds r0, r6, 0
	movs r1, 0x1
	bl ShouldAvoidEnemiesAndShowEffect
	lsls r0, 24
	cmp r0, 0
	beq _08067248
	ldr r0, _08067244
_08067230:
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	movs r0, 0x14
	movs r1, 0x4C
	bl sub_803E708
	b _080674F8
	.align 2, 0
_08067244: .4byte gUnknown_80FF76C
_08067248:
	ldr r2, [r4]
	str r2, [sp, 0x4]
	movs r1, 0xEF
	add r0, sp, 0x4
	ldrb r0, [r0]
	ands r0, r1
	ldr r1, _080672C0
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x4]
	mov r0, r8
	adds r0, 0x48
	ldrb r1, [r0]
	adds r5, r0, 0
	cmp r1, 0x80
	bne _08067272
	movs r4, 0
	adds r0, 0x4
	movs r1, 0x1
	bl sub_80461C8
_08067272:
	movs r7, 0x1
	ldr r0, [sp, 0x4]
	lsrs r0, 16
	lsls r0, 24
	lsrs r0, 24
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	beq _0806729A
	ldr r0, [sp, 0x4]
	lsrs r0, 16
	lsls r0, 24
	lsrs r0, 24
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080672A8
_0806729A:
	ldr r0, [sp, 0x4]
	lsrs r0, 8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _080672A8
	movs r7, 0
_080672A8:
	cmp r7, 0
	beq _080672C4
	ldrb r0, [r5]
	cmp r0, 0x80
	beq _080672F6
	movs r0, 0
	strb r0, [r4, 0x2]
	strb r0, [r4, 0x1]
	strb r0, [r4]
	bl FillInventoryGaps
	b _080672F6
	.align 2, 0
_080672C0: .4byte 0xffffff00
_080672C4:
	ldrb r0, [r5]
	cmp r0, 0x80
	bne _080672F0
	ldr r2, [sp, 0x4]
	lsrs r0, r2, 8
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 16
	ldr r1, _080672EC
	ands r2, r1
	orrs r2, r0
	str r2, [sp, 0x4]
	mov r0, r8
	adds r0, 0x4C
	add r1, sp, 0x4
	movs r2, 0x1
	bl sub_80460F8
	b _080672F6
	.align 2, 0
_080672EC: .4byte 0xffff00ff
_080672F0:
	ldrb r0, [r4, 0x1]
	subs r0, 0x1
	strb r0, [r4, 0x1]
_080672F6:
	adds r0, r6, 0
	movs r1, 0x29
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _08067310
	movs r0, 0x8
	bl DungeonRandomCapped
	mov r1, r8
	adds r1, 0x46
	strb r0, [r1]
_08067310:
	adds r0, r6, 0
	bl sub_8045888
	lsls r0, 24
	movs r1, 0xE0
	add r1, r8
	mov r10, r1
	adds r1, r6, 0x4
	str r1, [sp, 0x10]
	add r1, sp, 0xC
	mov r9, r1
	cmp r0, 0
	beq _08067364
	mov r0, r8
	adds r0, 0x46
	ldrb r4, [r0]
	movs r1, 0xB2
	lsls r1, 1
	adds r0, r6, 0
	bl sub_80421C0
	movs r7, 0x7
	movs r5, 0x7
_0806733E:
	subs r4, 0x1
	ands r4, r7
	adds r0, r6, 0
	movs r1, 0
	adds r2, r4, 0
	bl sub_806CDD4
	movs r0, 0x2
	movs r1, 0x15
	bl sub_803E708
	subs r5, 0x1
	cmp r5, 0
	bge _0806733E
	movs r1, 0xB3
	lsls r1, 1
	add r1, r8
	movs r0, 0x4
	strb r0, [r1]
_08067364:
	add r4, sp, 0x4
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	beq _08067380
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08067384
_08067380:
	movs r0, 0x1
	strb r0, [r4, 0x1]
_08067384:
	ldr r0, _080673B0
	add r4, sp, 0x4
	adds r1, r4, 0
	bl sub_8045C08
	ldr r0, _080673B4
	mov r1, r8
	movs r2, 0
	bl SetMessageArgument_2
	ldrb r0, [r4, 0x2]
	bl GetItemType
	lsls r0, 24
	cmp r0, 0
	bne _080673BC
	ldr r0, _080673B8
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
	b _080673C6
	.align 2, 0
_080673B0: .4byte gUnknown_202DE58
_080673B4: .4byte gAvailablePokemonNames
_080673B8: .4byte gUnknown_80F8EC8
_080673BC:
	ldr r0, _080673F8
	ldr r1, [r0]
	adds r0, r6, 0
	bl SendMessage
_080673C6:
	add r0, sp, 0x4
	ldrb r0, [r0, 0x2]
	bl GetItemType
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	bl sub_8042208
	adds r0, r6, 0
	movs r1, 0x27
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _08067400
	ldr r0, _080673FC
	ldr r1, [sp, 0xC]
	ands r1, r0
	movs r0, 0x80
	lsls r0, 1
	orrs r1, r0
	str r1, [sp, 0xC]
	b _08067408
	.align 2, 0
_080673F8: .4byte gUnknown_80F8EC4
_080673FC: .4byte 0xffff00ff
_08067400:
	ldr r1, _0806741C
	ldr r0, [sp, 0xC]
	ands r0, r1
	str r0, [sp, 0xC]
_08067408:
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, 0x1
	beq _08067440
	cmp r0, 0x1
	bgt _08067420
	cmp r0, 0
	beq _08067426
	b _08067462
	.align 2, 0
_0806741C: .4byte 0xffff00ff
_08067420:
	cmp r0, 0x2
	beq _0806744C
	b _08067462
_08067426:
	ldr r1, _08067438
	ldr r0, [sp, 0xC]
	ands r0, r1
	ldr r1, _0806743C
	ands r0, r1
	movs r1, 0xA0
	lsls r1, 12
	b _0806745E
	.align 2, 0
_08067438: .4byte 0xffffff00
_0806743C: .4byte 0x0000ffff
_08067440:
	ldr r1, _08067448
	ldr r0, [sp, 0xC]
	ands r0, r1
	b _08067456
	.align 2, 0
_08067448: .4byte 0xffffff00
_0806744C:
	ldr r1, _080674B4
	ldr r0, [sp, 0xC]
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
_08067456:
	ldr r1, _080674B8
	ands r0, r1
	movs r1, 0xC6
	lsls r1, 15
_0806745E:
	orrs r0, r1
	str r0, [sp, 0xC]
_08067462:
	adds r0, r6, 0
	movs r1, 0xF
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _08067486
	ldr r1, _080674B4
	ldr r0, [sp, 0xC]
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	ldr r1, _080674B8
	ands r0, r1
	movs r1, 0xC6
	lsls r1, 15
	orrs r0, r1
	str r0, [sp, 0xC]
_08067486:
	add r0, sp, 0x4
	ldrb r0, [r0, 0x2]
	bl GetItemType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080674BC
	add r4, sp, 0x8
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_8083904
	mov r0, r9
	str r0, [sp]
	adds r0, r6, 0
	add r1, sp, 0x4
	ldr r2, [sp, 0x10]
	adds r3, r4, 0
	bl sub_80475C4
	b _080674D0
	.align 2, 0
_080674B4: .4byte 0xffffff00
_080674B8: .4byte 0x0000ffff
_080674BC:
	mov r0, r8
	adds r0, 0x46
	ldrb r3, [r0]
	mov r1, r9
	str r1, [sp]
	adds r0, r6, 0
	add r1, sp, 0x4
	ldr r2, [sp, 0x10]
	bl sub_8047190
_080674D0:
	adds r0, r6, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080674F8
	mov r0, r8
	adds r0, 0x46
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_806CE68
	ldr r0, _08067508
	ldr r0, [r0]
	ldr r1, _0806750C
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r6, 0
	bl sub_807AB38
_080674F8:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067508: .4byte gDungeonGlobalData
_0806750C: .4byte 0x00003a08
	thumb_func_end sub_80671A0

	thumb_func_start sub_8067510
sub_8067510:
	push {r4,lr}
	adds r4, r0, 0
	bl sub_806773C
	adds r1, r0, 0
	movs r2, 0x1
	negs r2, r2
	adds r0, r4, 0
	bl sub_8067558
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8067510

	thumb_func_start sub_806752C
sub_806752C:
	push {r4,lr}
	ldr r1, _08067550
	ldr r1, [r1]
	ldrb r0, [r0, 0x4]
	lsls r0, 2
	ldr r2, _08067554
	adds r1, r2
	adds r1, r0
	ldr r4, [r1]
	bl GetLeaderEntity
	adds r1, r4, 0
	movs r2, 0
	bl sub_8067558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067550: .4byte gDungeonGlobalData
_08067554: .4byte 0x0001357c
	thumb_func_end sub_806752C

	thumb_func_start sub_8067558
sub_8067558:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x12C
	adds r6, r0, 0
	adds r5, r1, 0
	mov r9, r2
	ldr r0, [r6, 0x70]
	mov r8, r0
	cmp r5, 0
	bne _0806757C
	ldr r0, _08067578
	ldr r1, [r0]
	movs r0, 0
	b _08067716
	.align 2, 0
_08067578: .4byte gUnknown_80F8EE4
_0806757C:
	adds r0, r6, 0
	bl sub_8070BC0
	lsls r0, 24
	cmp r0, 0
	bne _08067594
	ldr r0, _08067590
	ldr r1, [r0]
	movs r0, 0
	b _08067716
	.align 2, 0
_08067590: .4byte gUnknown_80F8EE4
_08067594:
	adds r0, r6, 0
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0
	bl CanTarget
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080675AA
	b _0806771E
_080675AA:
	adds r0, r5, 0
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0
	bl CanTarget
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080675C0
	b _0806771E
_080675C0:
	ldr r7, [r5, 0x70]
	ldr r4, _08067608
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0
	bl SetMessageArgument_2
	adds r4, 0x50
	adds r0, r4, 0
	mov r1, r8
	movs r2, 0x7
	bl SetMessageArgument_2
	bl sub_8084778
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_807A96C
	adds r0, r5, 0
	bl sub_8070BC0
	lsls r0, 24
	cmp r0, 0
	beq _08067600
	adds r0, r5, 0
	movs r1, 0x1
	bl CannotMove
	lsls r0, 24
	cmp r0, 0
	beq _08067610
_08067600:
	ldr r0, _0806760C
	ldr r1, [r0]
	movs r0, 0
	b _08067716
	.align 2, 0
_08067608: .4byte gAvailablePokemonNames
_0806760C: .4byte gUnknown_80FE008
_08067610:
	adds r0, r6, 0x4
	adds r1, r5, 0x4
	bl CalculateFacingDir
	adds r1, r0, 0
	adds r0, r6, 0
	bl sub_806CEFC
	mov r1, r9
	cmp r1, 0
	blt _0806762E
	adds r0, r5, 0
	bl sub_806CEFC
	b _0806763C
_0806762E:
	mov r0, r8
	adds r0, 0x46
	ldrb r1, [r0]
	adds r1, 0x4
	adds r0, r5, 0
	bl sub_806CEFC
_0806763C:
	ldrb r0, [r7, 0x8]
	cmp r0, 0x1
	bne _08067648
	bl sub_807EF84
	b _0806772A
_08067648:
	adds r0, r7, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _08067694
	ldr r0, _08067668
	ldr r1, [r0]
	ldr r2, _0806766C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08067674
	ldr r0, _08067670
	ldr r1, [r0]
	movs r0, 0
	b _08067716
	.align 2, 0
_08067668: .4byte gDungeonGlobalData
_0806766C: .4byte 0x0000066e
_08067670: .4byte gUnknown_80FF674
_08067674:
	ldr r3, _08067688
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806768C
	adds r0, r5, 0
	bl sub_80845E0
	b _0806772A
	.align 2, 0
_08067688: .4byte 0x00000677
_0806768C:
	adds r0, r5, 0
	bl sub_8084448
	b _0806772A
_08067694:
	movs r0, 0x4
	ldrsh r5, [r7, r0]
	movs r6, 0
	adds r0, r7, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	bne _080676AA
	movs r5, 0xD2
	lsls r5, 1
	b _080676CC
_080676AA:
	cmp r0, 0x47
	bne _080676B8
	ldr r5, _080676B4
	b _080676CC
	.align 2, 0
_080676B4: .4byte 0x000001a5
_080676B8:
	cmp r0, 0x41
	bne _080676CC
	ldr r0, _080676E8
	ldr r0, [r0]
	ldr r1, _080676EC
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _080676CC
	movs r6, 0x1
_080676CC:
	movs r3, 0x10
	ldrsh r2, [r7, r3]
	adds r0, r2, 0
	cmp r2, 0
	bge _080676D8
	adds r0, r2, 0x3
_080676D8:
	movs r3, 0xE
	ldrsh r1, [r7, r3]
	asrs r0, 2
	cmp r1, r0
	bgt _080676F0
	movs r2, 0x2
	b _08067708
	.align 2, 0
_080676E8: .4byte gDungeonGlobalData
_080676EC: .4byte 0x0000065c
_080676F0:
	movs r0, 0xE
	ldrsh r4, [r7, r0]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 1
	movs r1, 0xA
	bl __divsi3
	movs r2, 0
	cmp r4, r0
	bgt _08067708
	movs r2, 0x1
_08067708:
	mov r0, sp
	adds r1, r5, 0
	adds r3, r6, 0
	bl sub_806A3D4
	movs r0, 0
	mov r1, sp
_08067716:
	movs r2, 0x1
	bl PrintFieldMessage
	b _0806772A
_0806771E:
	ldr r0, _08067738
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806772A:
	add sp, 0x12C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067738: .4byte gUnknown_80F8EE4
	thumb_func_end sub_8067558

	thumb_func_start sub_806773C
sub_806773C:
	push {r4,r5,lr}
	adds r5, r0, 0
	bl sub_80696A8
	adds r4, r0, 0
	cmp r4, 0
	beq _08067760
	adds r0, r4, 0
	bl GetEntityType
	cmp r0, 0x1
	bne _08067760
	ldr r0, [r5, 0x70]
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	bne _08067760
	adds r0, r4, 0
	b _08067762
_08067760:
	movs r0, 0
_08067762:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_806773C

	thumb_func_start sub_8067768
sub_8067768:
	push {r4,lr}
	ldr r1, _0806778C
	ldr r1, [r1]
	ldrb r0, [r0, 0x4]
	lsls r0, 2
	ldr r2, _08067790
	adds r1, r2
	adds r1, r0
	ldr r4, [r1]
	bl GetLeaderEntity
	adds r1, r4, 0
	movs r2, 0
	bl sub_8067794
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806778C: .4byte gDungeonGlobalData
_08067790: .4byte 0x0001357c
	thumb_func_end sub_8067768

	thumb_func_start sub_8067794
sub_8067794:
	push {r4-r7,lr}
	sub sp, 0x40
	adds r7, r1, 0
	ldr r4, [r7, 0x70]
	cmp r7, 0
	bne _080677B4
	ldr r0, _080677B0
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	b _0806786C
	.align 2, 0
_080677B0: .4byte gUnknown_80F8F08
_080677B4:
	ldr r0, _080677F0
	adds r1, r7, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _080677F4
	ldr r5, [r0]
	ldr r0, _080677F8
	ldr r6, [r0]
	ldrb r2, [r4, 0xA]
	cmp r2, 0
	blt _08067834
	ldr r1, _080677FC
	movs r0, 0x64
	muls r0, r2
	ldr r2, _08067800
	adds r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	bl sub_806A564
	lsls r0, 24
	cmp r0, 0
	beq _0806780C
	ldr r0, _08067804
	ldr r5, [r0]
	ldr r0, _08067808
	b _08067832
	.align 2, 0
_080677F0: .4byte gAvailablePokemonNames
_080677F4: .4byte gUnknown_80F9094
_080677F8: .4byte gUnknown_80F913C
_080677FC: .4byte gRecruitedPokemonRef
_08067800: .4byte 0x00008df8
_08067804: .4byte gUnknown_80F9114
_08067808: .4byte gUnknown_80F9154
_0806780C:
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	bl sub_806A58C
	lsls r0, 24
	cmp r0, 0
	beq _08067834
	bl sub_8044210
	lsls r0, 24
	cmp r0, 0
	beq _0806782C
	ldr r0, _08067828
	b _0806782E
	.align 2, 0
_08067828: .4byte gUnknown_80F90DC
_0806782C:
	ldr r0, _08067874
_0806782E:
	ldr r5, [r0]
	ldr r0, _08067878
_08067832:
	ldr r6, [r0]
_08067834:
	movs r0, 0
	adds r1, r5, 0
	movs r2, 0
	bl sub_8052B8C
	cmp r0, 0x1
	bne _0806786C
	ldr r4, _0806787C
	mov r0, sp
	adds r1, r4, 0
	movs r2, 0x40
	bl strncpy
	ldr r1, _08067880
	adds r0, r7, 0
	movs r2, 0
	bl sub_8068FE0
	adds r0, r4, 0
	mov r1, sp
	movs r2, 0x40
	bl strncpy
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806786C:
	add sp, 0x40
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067874: .4byte gUnknown_80F90C8
_08067878: .4byte gUnknown_80F9150
_0806787C: .4byte gAvailablePokemonNames
_08067880: .4byte 0x0000021d
	thumb_func_end sub_8067794

	thumb_func_start sub_8067884
sub_8067884:
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r6, 0
	b _0806789A
_0806788E:
	ldr r1, _08067900
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _080678C6
	adds r6, 0x1
_0806789A:
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8070828
	cmp r6, r0
	bge _080678C6
	ldr r4, [r5, 0x70]
	adds r0, r4, 0
	adds r0, 0x50
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	adds r0, r5, 0
	movs r2, 0x1
	movs r3, 0
	bl sub_8055A00
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	beq _0806788E
_080678C6:
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8057588
	bl sub_8044B28
	lsls r0, 24
	cmp r0, 0
	bne _080678F6
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080678F0
	ldr r0, [r5, 0x70]
	adds r0, 0x50
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_806A9B4
_080678F0:
	adds r0, r5, 0
	bl sub_806A1B0
_080678F6:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067900: .4byte 0x00000159
	thumb_func_end sub_8067884

	thumb_func_start sub_8067904
sub_8067904:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	adds r5, r0, 0
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	ldr r6, [r5, 0x70]
	ldr r1, _08067940
	movs r0, 0
	str r0, [r1]
	add r0, sp, 0x8
	mov r1, r9
	bl InitPokemonMove
	adds r0, r6, 0
	adds r0, 0xBC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0806794C
	ldr r0, _08067944
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08067948
	b _08067962
	.align 2, 0
_08067940: .4byte gUnknown_202F208
_08067944: .4byte gAvailablePokemonNames
_08067948: .4byte gUnknown_80F8F20
_0806794C:
	adds r0, r6, 0
	adds r0, 0xAC
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _08067974
	ldr r0, _0806796C
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08067970
_08067962:
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
	b _08067A56
	.align 2, 0
_0806796C: .4byte gAvailablePokemonNames
_08067970: .4byte gUnknown_80F8F38
_08067974:
	movs r0, 0xB0
	lsls r0, 1
	movs r1, 0
	mov r10, r1
	cmp r9, r0
	bne _08067984
	movs r2, 0x1
	mov r10, r2
_08067984:
	movs r0, 0
	mov r8, r0
	movs r7, 0
	add r4, sp, 0x8
	b _080679D2
_0806798E:
	movs r1, 0xBC
	lsls r1, 1
	adds r0, r6, r1
	strh r7, [r0]
	ldrb r0, [r4]
	movs r1, 0x8
	orrs r0, r1
	orrs r0, r7
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r4]
	movs r0, 0xA
	strb r0, [r4, 0x4]
	str r7, [sp]
	str r4, [sp, 0x4]
	adds r0, r5, 0
	mov r1, r10
	movs r2, 0
	movs r3, 0
	bl sub_8055FA0
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080679DE
	ldr r2, _08067A68
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _080679DE
	movs r0, 0x1
	add r8, r0
_080679D2:
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8070828
	cmp r8, r0
	blt _0806798E
_080679DE:
	adds r0, r5, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08067A56
	movs r0, 0xB0
	lsls r0, 1
	cmp r9, r0
	bne _08067A04
	ldr r0, _08067A6C
	ldr r0, [r0]
	cmp r0, 0
	bne _08067A04
	ldr r0, _08067A70
	ldr r1, [r0]
	adds r0, r5, 0
	bl SendMessage
_08067A04:
	ldrb r0, [r6, 0x7]
	cmp r0, 0
	beq _08067A50
	movs r0, 0xB0
	lsls r0, 1
	cmp r9, r0
	beq _08067A50
	ldr r4, _08067A74
	adds r3, r6, 0
	adds r3, 0x46
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0]
	ldrh r1, [r5, 0x4]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _08067A78
	ldr r1, [sp, 0x10]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x10]
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x2]
	ldrh r2, [r5, 0x6]
	adds r0, r2
	lsls r0, 16
	ldr r2, _08067A7C
	ands r1, r2
	orrs r1, r0
	str r1, [sp, 0x10]
	add r0, sp, 0x10
	movs r1, 0x1
	bl sub_807FE44
_08067A50:
	adds r0, r5, 0
	bl sub_8071DA4
_08067A56:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067A68: .4byte 0x00000159
_08067A6C: .4byte gUnknown_202F208
_08067A70: .4byte gUnknown_80FC690
_08067A74: .4byte gAdjacentTileOffsets
_08067A78: .4byte 0xffff0000
_08067A7C: .4byte 0x0000ffff
	thumb_func_end sub_8067904

	thumb_func_start sub_8067A80
sub_8067A80:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x6C
	str r1, [sp, 0x68]
	mov r8, r2
	mov r9, r3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x64]
	ldr r1, _08067AC8
	add r0, sp, 0x4
	movs r2, 0x60
	bl memcpy
	ldr r1, _08067ACC
	movs r0, 0
	str r0, [r1]
	mov r10, r0
	cmp r10, r8
	blt _08067AB0
	b _08067ED8
_08067AB0:
	ldr r5, _08067AD0
	mov r4, r9
	mov r3, r8
_08067AB6:
	ldm r4!, {r2}
	ldrh r1, [r2]
	adds r0, r5, 0
	ands r0, r1
	strh r0, [r2]
	subs r3, 0x1
	cmp r3, 0
	bne _08067AB6
	b _08067ED8
	.align 2, 0
_08067AC8: .4byte gUnknown_8106DC8
_08067ACC: .4byte gUnknown_202F30C
_08067AD0: .4byte 0x00007fff
_08067AD4:
	movs r7, 0
	ldr r1, _08067B98
	movs r0, 0x1
	strb r0, [r1]
	strb r7, [r1, 0x1]
	movs r0, 0xE
	strb r0, [r1, 0x2]
	strb r7, [r1, 0x3]
	add r0, sp, 0x4
	movs r1, 0x1
	bl sub_803ECB4
	ldr r5, _08067B9C
	ldr r2, [r5]
	ldr r0, [sp, 0x68]
	str r0, [sp]
	ldr r0, [sp, 0x64]
	mov r1, r9
	mov r3, r8
	bl sub_8067F00
	ldr r4, _08067BA0
	mov r0, r8
	cmp r0, 0x8
	ble _08067B08
	movs r0, 0x8
_08067B08:
	strh r0, [r4, 0x1A]
	mov r1, r10
	strh r1, [r4, 0x18]
	movs r0, 0x8
	strh r0, [r4, 0x1C]
	strh r7, [r4, 0x1E]
	strh r7, [r4, 0x20]
	strh r7, [r4, 0x4]
	movs r0, 0x12
	strh r0, [r4, 0x6]
	strh r7, [r4, 0xC]
	strh r7, [r4, 0xE]
	strh r7, [r4, 0x14]
	str r7, [r4]
	adds r0, r4, 0
	adds r0, 0x28
	bl sub_801317C
	adds r0, r4, 0
	movs r1, 0
	bl sub_80137B0
	adds r6, r5, 0
_08067B36:
	ldr r0, _08067BA0
	bl AddMenuCursorSprite
	movs r5, 0
	movs r7, 0
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	cmp r0, 0x8
	ble _08067B50
	movs r5, 0x1
	bl sub_80684C4
_08067B50:
	ldr r0, [r6]
	cmp r0, 0
	beq _08067B5C
	movs r7, 0x1
	bl sub_8068344
_08067B5C:
	movs r0, 0
	ldr r1, _08067BA4
	bl sub_8014140
	adds r4, r0, 0
	movs r0, 0x37
	bl sub_803E46C
	cmp r4, 0x2
	bne _08067BAC
	cmp r5, 0
	beq _08067BAC
	ldr r0, [r6]
	mov r3, r8
	subs r0, r3, r0
	cmp r0, 0x8
	ble _08067BF0
	ldr r5, _08067BA8
	movs r4, 0x5
_08067B82:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x37
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08067B82
	b _08067BEA
	.align 2, 0
_08067B98: .4byte gUnknown_202F308
_08067B9C: .4byte gUnknown_202F30C
_08067BA0: .4byte gUnknown_202EE10
_08067BA4: .4byte gUnknown_8106DA4
_08067BA8: .4byte gUnknown_203B080
_08067BAC:
	ldr r0, _08067BF8
	ldrh r1, [r0, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08067C0C
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _08067BFC
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0x7
	bne _08067C04
	ldr r0, [r6]
	mov r3, r8
	subs r0, r3, r0
	cmp r0, 0x8
	ble _08067BF0
	ldr r5, _08067C00
	movs r4, 0x5
_08067BD6:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x37
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08067BD6
_08067BEA:
	ldr r0, [r6]
	adds r0, 0x1
	str r0, [r6]
_08067BF0:
	movs r7, 0
	movs r0, 0x7
	mov r10, r0
	b _08067CF6
	.align 2, 0
_08067BF8: .4byte gRealInputs
_08067BFC: .4byte gUnknown_202EE10
_08067C00: .4byte gUnknown_203B080
_08067C04:
	adds r0, r1, 0
	movs r1, 0
	bl sub_80136E0
_08067C0C:
	cmp r4, 0x1
	bne _08067C44
	cmp r7, 0
	beq _08067C44
	ldr r0, [r6]
	cmp r0, 0
	beq _08067C38
	ldr r5, _08067C40
	movs r4, 0x5
_08067C1E:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x37
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08067C1E
	ldr r0, [r6]
	subs r0, 0x1
	str r0, [r6]
_08067C38:
	movs r7, 0
	movs r1, 0
	mov r10, r1
	b _08067CF6
	.align 2, 0
_08067C40: .4byte gUnknown_203B084
_08067C44:
	ldr r0, _08067C8C
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08067CA0
	movs r0, 0x1
	bl sub_8083CE0
	ldr r1, _08067C90
	movs r2, 0x18
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _08067C98
	ldr r0, [r6]
	cmp r0, 0
	beq _08067C84
	ldr r5, _08067C94
	movs r4, 0x5
_08067C6A:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x37
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08067C6A
	ldr r0, [r6]
	subs r0, 0x1
	str r0, [r6]
_08067C84:
	movs r7, 0
	movs r3, 0
	mov r10, r3
	b _08067CF6
	.align 2, 0
_08067C8C: .4byte gRealInputs
_08067C90: .4byte gUnknown_202EE10
_08067C94: .4byte gUnknown_203B084
_08067C98:
	adds r0, r1, 0
	movs r1, 0
	bl sub_8013744
_08067CA0:
	bl sub_80048C8
	lsls r0, 24
	cmp r0, 0
	beq _08067CAC
	b _08067B36
_08067CAC:
	ldr r0, _08067CD4
	ldrh r1, [r0, 0x2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08067D40
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08067CCC
	ldr r2, _08067CD8
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08067CDC
_08067CCC:
	bl sub_8083D08
	movs r7, 0x1
	b _08067CF6
	.align 2, 0
_08067CD4: .4byte gRealInputs
_08067CD8: .4byte gUnknown_202EE10
_08067CDC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08067CF0
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _08067CF0
	b _08067B36
_08067CF0:
	bl sub_8083D30
	movs r7, 0x2
_08067CF6:
	ldr r4, _08067D34
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x37
	bl sub_803E46C
	cmp r7, 0
	bne _08067D0A
	b _08067AD4
_08067D0A:
	cmp r7, 0x2
	bne _08067D48
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	mov r10, r0
	ldr r0, _08067D38
	ldr r0, [r0]
	ldr r2, [sp, 0x68]
	cmp r0, r2
	bge _08067D20
	b _08067AD4
_08067D20:
	ldr r0, _08067D3C
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0x1
	bne _08067D32
	b _08067ED8
_08067D32:
	b _08067AD4
	.align 2, 0
_08067D34: .4byte gUnknown_202EE10
_08067D38: .4byte gUnknown_202F310
_08067D3C: .4byte gUnknown_80FDFB8
_08067D40:
	bl sub_8083D1C
	movs r7, 0x3
	b _08067CF6
_08067D48:
	cmp r7, 0x3
	bne _08067D64
	movs r0, 0x18
	ldrsh r3, [r4, r0]
	mov r10, r3
	ldr r0, _08067D60
	ldr r0, [r0]
	add r0, r10
	lsls r0, 2
	add r0, r9
	b _08067ED0
	.align 2, 0
_08067D60: .4byte gUnknown_202F30C
_08067D64:
	movs r2, 0x18
	ldrsh r1, [r4, r2]
	mov r10, r1
	ldr r0, _08067DAC
	ldr r0, [r0]
	adds r4, r0, r1
	ldr r1, _08067DB0
	movs r0, 0
	str r0, [r1]
	movs r0, 0x29
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0x2A
	movs r1, 0
	bl sub_8044F5C
	movs r0, 0x40
	movs r1, 0
	bl sub_8044F5C
	lsls r0, r4, 2
	add r0, r9
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r3, 0x80
	lsls r3, 8
	adds r1, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08067DBC
	movs r0, 0x29
	bl sub_8044FF0
	b _08067DC2
	.align 2, 0
_08067DAC: .4byte gUnknown_202F30C
_08067DB0: .4byte gUnknown_202EE6C
_08067DB4:
	bl sub_8083D08
	movs r7, 0x1
	b _08067E6E
_08067DBC:
	movs r0, 0x2A
	bl sub_8044FF0
_08067DC2:
	lsls r0, r4, 2
	mov r2, r9
	adds r1, r0, r2
	ldr r2, [r1]
	ldrb r1, [r2, 0x2]
	adds r6, r0, 0
	cmp r1, 0
	bne _08067DDC
	ldrb r1, [r2, 0x4]
	cmp r1, 0x40
	beq _08067DDC
	cmp r1, 0x41
	bne _08067DE2
_08067DDC:
	movs r0, 0x29
	bl sub_8044FF0
_08067DE2:
	bl sub_8045064
	add r0, sp, 0x4
	movs r1, 0x15
	bl sub_805FC30
	ldr r4, _08067EA0
	ldr r5, _08067EA4
	adds r7, r4, 0
	adds r7, 0x2A
_08067DF6:
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x37
	bl sub_803E46C
	ldrh r1, [r5, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08067E1A
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80136E0
_08067E1A:
	ldrh r1, [r5, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08067E32
	movs r0, 0x1
	bl sub_8083CE0
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8013744
_08067E32:
	ldrh r1, [r5, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08067E46
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _08067E58
_08067E46:
	movs r3, 0x18
	ldrsh r0, [r4, r3]
	bl sub_8044F3C
	lsls r0, 24
	cmp r0, 0
	bne _08067DB4
	bl sub_8083D30
_08067E58:
	ldrh r1, [r5, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08067E68
	ldrb r0, [r7]
	cmp r0, 0
	beq _08067DF6
_08067E68:
	bl sub_8083D30
	movs r7, 0
_08067E6E:
	ldr r4, _08067EA0
	adds r0, r4, 0
	bl AddMenuCursorSprite
	movs r0, 0x37
	bl sub_803E46C
	cmp r7, 0
	bne _08067E82
	b _08067AD4
_08067E82:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08067EA8
	mov r2, r9
	adds r0, r6, r2
	ldr r1, [r0]
	ldrh r2, [r1]
	movs r3, 0x80
	lsls r3, 8
	adds r0, r3, 0
	orrs r0, r2
	strh r0, [r1]
	b _08067EBC
	.align 2, 0
_08067EA0: .4byte gUnknown_202EE10
_08067EA4: .4byte gRealInputs
_08067EA8:
	cmp r0, 0x1
	bne _08067ECC
	mov r1, r9
	adds r0, r6, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	ldr r3, _08067EC8
	adds r1, r3, 0
	ands r0, r1
	strh r0, [r2]
_08067EBC:
	mov r0, r8
	mov r1, r9
	bl sub_8068310
	b _08067AD4
	.align 2, 0
_08067EC8: .4byte 0x00007fff
_08067ECC:
	mov r1, r9
	adds r0, r6, r1
_08067ED0:
	ldr r0, [r0]
	bl sub_806806C
	b _08067AD4
_08067ED8:
	mov r0, r8
	mov r1, r9
	bl sub_8068310
	ldr r0, _08067EFC
	ldr r0, [r0]
	ldr r2, [sp, 0x68]
	cmp r0, r2
	bge _08067EEC
	b _08067AD4
_08067EEC:
	add sp, 0x6C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067EFC: .4byte gUnknown_202F310
	thumb_func_end sub_8067A80

	thumb_func_start sub_8067F00
sub_8067F00:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r4, r0, 0
	mov r9, r1
	str r3, [sp, 0x4]
	lsls r4, 24
	lsrs r4, 24
	subs r7, r2, 0x1
	movs r0, 0x16
	mov r8, r0
	movs r0, 0
	bl sub_80073B8
	ldr r0, _08067F44
	adds r1, r4, 0
	movs r2, 0
	bl sub_8092578
	ldr r2, _08067F48
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	movs r1, 0
	movs r3, 0
	bl xxx_format_and_draw
	movs r1, 0
	mov r10, r1
	b _08067FF6
	.align 2, 0
_08067F44: .4byte gAvailablePokemonNames
_08067F48: .4byte gUnknown_8106E28
_08067F4C:
	ldr r4, _08067F8C
	lsls r6, r7, 2
	mov r0, r9
	adds r5, r6, r0
	ldr r1, [r5]
	adds r0, r4, 0
	movs r2, 0
	bl PrintColoredPokeNameToBuffer
	adds r4, 0x50
	ldr r0, [r5]
	movs r2, 0x8
	ldrsh r1, [r0, r2]
	adds r0, r4, 0
	bl sub_808D930
	ldr r1, _08067F90
	adds r0, r7, 0x1
	str r0, [r1]
	ldr r0, [r5]
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	beq _08067F9C
	ldr r0, _08067F94
	ldr r1, _08067F98
	bl strcpy
	b _08067FA4
	.align 2, 0
_08067F8C: .4byte gAvailablePokemonNames
_08067F90: .4byte gUnknown_202DE30
_08067F94: .4byte gUnknown_202DE58
_08067F98: .4byte gUnknown_8106E2C
_08067F9C:
	ldr r0, _08067FCC
	ldr r1, _08067FD0
	bl strcpy
_08067FA4:
	mov r1, r9
	adds r0, r6, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	ands r0, r1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	beq _08067FD8
	ldr r2, _08067FD4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x7
	mov r1, r8
	movs r3, 0
	bl xxx_format_and_draw
	b _08067FE6
	.align 2, 0
_08067FCC: .4byte gUnknown_202DE58
_08067FD0: .4byte gUnknown_8106E30
_08067FD4: .4byte gUnknown_8106E34
_08067FD8:
	ldr r2, _08068028
	str r0, [sp]
	movs r0, 0x7
	mov r1, r8
	movs r3, 0
	bl xxx_format_and_draw
_08067FE6:
	movs r2, 0x1
	add r10, r2
	movs r0, 0xC
	add r8, r0
	adds r7, 0x1
	mov r1, r10
	cmp r1, 0x9
	bgt _08068000
_08067FF6:
	cmp r7, 0
	blt _08067FE6
	ldr r2, [sp, 0x4]
	cmp r7, r2
	blt _08067F4C
_08068000:
	movs r0, 0
	bl sub_80073E0
	movs r0, 0x1
	bl sub_80073B8
	ldr r0, _0806802C
	ldr r0, [r0]
	ldr r1, [sp, 0x28]
	cmp r0, r1
	blt _08068034
	ldr r2, _08068030
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x2
	movs r3, 0x1
	bl xxx_format_and_draw
	b _0806804C
	.align 2, 0
_08068028: .4byte gUnknown_8106E48
_0806802C: .4byte gUnknown_202F310
_08068030: .4byte gUnknown_8106E5C
_08068034:
	ldr r1, _08068064
	ldr r2, [sp, 0x28]
	subs r0, r2, r0
	str r0, [r1]
	ldr r2, _08068068
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r1, 0x2
	movs r3, 0x1
	bl xxx_format_and_draw
_0806804C:
	movs r0, 0x1
	bl sub_80073E0
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068064: .4byte gUnknown_202DE30
_08068068: .4byte gUnknown_8106E6C
	thumb_func_end sub_8067F00

	thumb_func_start sub_806806C
sub_806806C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x110
	str r0, [sp, 0x108]
	add r4, sp, 0x98
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x60
	bl memset
	movs r0, 0x6
	str r0, [r4, 0x4]
	movs r1, 0x2
	strh r1, [r4, 0x8]
	strh r1, [r4, 0xA]
	movs r2, 0x12
	strh r2, [r4, 0xC]
	movs r0, 0xE
	strh r0, [r4, 0xE]
	strh r2, [r4, 0x10]
	strh r1, [r4, 0x12]
	ldr r0, _080681B4
	str r0, [r4, 0x14]
	movs r0, 0x3
	str r0, [r4, 0x1C]
	str r0, [r4, 0x34]
	str r0, [r4, 0x4C]
	movs r7, 0
	add r1, sp, 0x44
	strh r7, [r1]
	mov r0, sp
	adds r0, 0x5A
	strh r7, [r0]
	ldr r0, _080681B8
	strh r7, [r0, 0x18]
	mov r9, r1
	adds r1, 0xB4
	str r1, [sp, 0x10C]
	add r2, sp, 0x68
	mov r10, r2
	adds r6, r0, 0
_080680C4:
	movs r3, 0
	mov r8, r3
	add r1, sp, 0xF8
	ldr r0, _080681BC
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080681B4
	movs r2, 0x4
	strb r2, [r1]
	strb r7, [r1, 0x1]
	movs r0, 0xA
	strb r0, [r1, 0x2]
	mov r4, r8
	strb r4, [r1, 0x3]
	strh r7, [r6, 0x1E]
	strh r2, [r6, 0x20]
	mov r0, r8
	strh r0, [r6, 0x1A]
	strh r0, [r6, 0x18]
	strh r0, [r6, 0x1C]
	strh r0, [r6, 0x4]
	movs r0, 0x10
	strh r0, [r6, 0x6]
	mov r1, r8
	strh r1, [r6, 0x14]
	mov r2, r8
	str r2, [r6]
	adds r0, r6, 0
	adds r0, 0x28
	bl sub_801317C
	add r0, sp, 0x98
	movs r1, 0x1
	bl sub_803ECB4
	ldr r0, _080681C0
	ldr r0, [r0]
	ldr r3, _080681C4
	adds r0, r3
	ldrb r2, [r0]
	add r0, sp, 0x4
	ldr r1, [sp, 0x108]
	bl sub_808FF20
	lsls r4, r7, 2
	mov r0, sp
	adds r0, r4
	adds r0, 0xF8
	ldr r0, [r0]
	mov r1, r8
	str r1, [sp]
	adds r1, r7, 0
	add r2, sp, 0x4
	mov r3, r10
	bl CreatePokemonInfoTabScreen
	ldr r1, _080681C8
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r0, 0xF
	lsls r0, 3
	strh r0, [r6, 0xC]
	movs r3, 0x2
	ldrsh r0, [r1, r3]
	adds r0, 0x1
	lsls r0, 3
	subs r0, 0x2
	strh r0, [r6, 0xE]
_08068150:
	ldr r0, _080681B8
	bl AddMenuCursorSprite
	ldr r1, [sp, 0x10C]
	adds r0, r1, r4
	ldr r0, [r0]
	cmp r0, 0x4
	bne _0806817A
	mov r2, r10
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _0806816C
	bl sub_80684C4
_0806816C:
	mov r3, r9
	movs r1, 0
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _0806817A
	bl sub_8068344
_0806817A:
	movs r0, 0
	ldr r1, _080681CC
	bl sub_8014140
	adds r5, r0, 0
	movs r0, 0x1C
	bl sub_803E46C
	ldr r3, _080681D0
	ldrh r1, [r3, 0x2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _080681A2
	ldr r2, _080681B8
	adds r0, r2, 0
	adds r0, 0x2B
	ldrb r0, [r0]
	cmp r0, 0
	beq _080681D4
_080681A2:
	movs r0, 0
	bl sub_8083CE0
	adds r7, 0x1
	cmp r7, 0x4
	beq _080681B0
	b _080682E8
_080681B0:
	movs r7, 0
	b _080682E8
	.align 2, 0
_080681B4: .4byte gUnknown_202F308
_080681B8: .4byte gUnknown_202EE10
_080681BC: .4byte gUnknown_8106E80
_080681C0: .4byte gDungeonGlobalData
_080681C4: .4byte 0x0000065a
_080681C8: .4byte gUnknown_2027370
_080681CC: .4byte gUnknown_8106DA4
_080681D0: .4byte gRealInputs
_080681D4:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _080681E6
	adds r0, r2, 0
	adds r0, 0x2C
	ldrb r0, [r0]
	cmp r0, 0
	beq _080681FA
_080681E6:
	movs r0, 0
	bl sub_8083CE0
	subs r7, 0x1
	movs r0, 0x1
	negs r0, r0
	cmp r7, r0
	bne _080682E8
	movs r7, 0x3
	b _080682E8
_080681FA:
	ldr r2, [sp, 0x10C]
	adds r0, r2, r4
	ldr r0, [r0]
	cmp r0, 0x4
	bne _08068294
	ldrh r1, [r3, 0x4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08068212
	cmp r5, 0x2
	bne _08068248
_08068212:
	mov r3, r10
	ldrb r0, [r3, 0x8]
	cmp r0, 0
	beq _08068248
	movs r0, 0
	bl sub_8083CE0
	ldr r5, _08068244
	movs r4, 0x5
_08068224:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _08068224
	mov r4, r9
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _080682E8
	.align 2, 0
_08068244: .4byte gUnknown_203B080
_08068248:
	ldr r0, _0806828C
	ldrh r1, [r0, 0x4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08068258
	cmp r5, 0x1
	bne _08068294
_08068258:
	mov r1, r9
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _08068294
	movs r0, 0
	bl sub_8083CE0
	ldr r5, _08068290
	movs r4, 0x5
_0806826C:
	ldr r1, [r5]
	movs r0, 0
	bl _call_via_r1
	movs r0, 0x1C
	bl sub_803E46C
	subs r4, 0x1
	cmp r4, 0
	bge _0806826C
	mov r3, r9
	ldrh r0, [r3]
	subs r0, 0x1
	strh r0, [r3]
	b _080682E8
	.align 2, 0
_0806828C: .4byte gRealInputs
_08068290: .4byte gUnknown_203B084
_08068294:
	bl sub_80048C8
	lsls r0, 24
	cmp r0, 0
	beq _080682A0
	b _08068150
_080682A0:
	ldr r0, _080682C4
	ldrh r1, [r0, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080682B8
	ldr r2, _080682C8
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	cmp r0, 0
	beq _080682CC
_080682B8:
	bl sub_8083D08
	movs r4, 0x1
	mov r8, r4
	b _080682E8
	.align 2, 0
_080682C4: .4byte gRealInputs
_080682C8: .4byte gUnknown_202EE10
_080682CC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _080682E0
	adds r0, r2, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, 0
	bne _080682E0
	b _08068150
_080682E0:
	bl sub_8083D30
	movs r0, 0x1
	mov r8, r0
_080682E8:
	movs r0, 0x37
	bl sub_803E46C
	mov r1, r8
	cmp r1, 0
	bne _080682F6
	b _080680C4
_080682F6:
	movs r0, 0
	movs r1, 0
	bl sub_803EAF0
	add sp, 0x110
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_806806C

	thumb_func_start sub_8068310
sub_8068310:
	push {r4-r6,lr}
	movs r4, 0
	ldr r6, _08068340
	cmp r4, r0
	bge _08068338
	movs r5, 0x80
	lsls r5, 8
	adds r3, r1, 0
	adds r2, r0, 0
_08068322:
	ldr r0, [r3]
	ldrh r1, [r0]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _08068330
	adds r4, 0x1
_08068330:
	adds r3, 0x4
	subs r2, 0x1
	cmp r2, 0
	bne _08068322
_08068338:
	str r4, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068340: .4byte gUnknown_202F310
	thumb_func_end sub_8068310

	thumb_func_start sub_8068344
sub_8068344:
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x8
	ldr r0, _08068494
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0806835C
	b _08068486
_0806835C:
	ldr r0, _08068498
	mov r9, r0
	movs r0, 0
	movs r1, 0
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _0806849C
	ands r1, r0
	ldr r3, _080684A0
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r1, sp
	ldrh r1, [r1]
	adds r2, r3, 0
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080684A4
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r6, _080684A8
	mov r8, r6
	mov r0, r8
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080684AC
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080684B0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	movs r4, 0x80
	lsls r4, 7
	mov r0, sp
	ldrh r1, [r0]
	ldr r6, _080684B4
	adds r0, r6, 0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	orrs r4, r0
	ands r3, r1
	orrs r3, r4
	str r3, [sp]
	movs r1, 0x80
	lsls r1, 6
	mov r5, sp
	ldrh r0, [r5, 0x2]
	ldr r2, _080684B8
	ands r2, r0
	orrs r2, r1
	ands r2, r6
	movs r3, 0xFC
	lsls r3, 2
	ldrh r1, [r5, 0x4]
	movs r0, 0xFC
	lsls r0, 8
	ands r0, r1
	orrs r0, r3
	mov r1, r8
	ands r0, r1
	movs r3, 0xF
	movs r1, 0xF0
	lsls r1, 8
	ldr r4, _080684BC
	ands r0, r4
	orrs r0, r1
	strh r0, [r5, 0x4]
	mov r6, r9
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x8
	ands r0, r4
	lsls r0, 4
	ldrh r1, [r5, 0x6]
	ands r3, r1
	orrs r3, r0
	strh r3, [r5, 0x6]
	movs r3, 0
	ldrsh r0, [r6, r3]
	lsls r0, 3
	adds r0, 0x40
	ldr r1, _080684C0
	ands r0, r1
	movs r1, 0xFE
	lsls r1, 8
	ands r2, r1
	orrs r2, r0
	strh r2, [r5, 0x2]
	movs r1, 0x80
	lsls r1, 1
	mov r0, sp
	movs r2, 0
	movs r3, 0
	bl AddSprite
_08068486:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068494: .4byte gUnknown_202EDCC
_08068498: .4byte gUnknown_2027370
_0806849C: .4byte 0x0000feff
_080684A0: .4byte 0xffff0000
_080684A4: .4byte 0x0000fdff
_080684A8: .4byte 0x0000f3ff
_080684AC: .4byte 0x0000efff
_080684B0: .4byte 0x0000dfff
_080684B4: .4byte 0x00003fff
_080684B8: .4byte 0x0000c1ff
_080684BC: .4byte 0x00000fff
_080684C0: .4byte 0x000001ff
	thumb_func_end sub_8068344

	thumb_func_start sub_80684C4
sub_80684C4:
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r0, _080685E8
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	bne _080684D6
	b _080685DE
_080684D6:
	ldr r6, _080685EC
	movs r0, 0
	movs r1, 0
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _080685F0
	ands r1, r0
	ldr r3, _080685F4
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	mov r1, sp
	ldrh r1, [r1]
	adds r2, r3, 0
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080685F8
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r5, _080685FC
	adds r0, r5, 0
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08068600
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08068604
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r2, r3, 0
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	movs r4, 0x80
	lsls r4, 7
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08068608
	ands r0, r1
	adds r1, r3, 0
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	orrs r4, r0
	ands r3, r1
	orrs r3, r4
	str r3, [sp]
	mov r3, sp
	movs r2, 0xFC
	lsls r2, 2
	ldrh r1, [r3, 0x4]
	movs r0, 0xFC
	lsls r0, 8
	ands r0, r1
	orrs r0, r2
	ands r0, r5
	movs r2, 0xF
	movs r1, 0xF0
	lsls r1, 8
	ldr r4, _0806860C
	ands r0, r4
	orrs r0, r1
	strh r0, [r3, 0x4]
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x70
	ands r0, r4
	lsls r0, 4
	ldrh r1, [r3, 0x6]
	ands r2, r1
	orrs r2, r0
	strh r2, [r3, 0x6]
	movs r1, 0
	ldrsh r0, [r6, r1]
	lsls r0, 3
	adds r0, 0x40
	ldr r1, _08068610
	ands r0, r1
	strh r0, [r3, 0x2]
	subs r1, 0xFF
	mov r0, sp
	movs r2, 0
	movs r3, 0
	bl AddSprite
_080685DE:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080685E8: .4byte gUnknown_202EDCC
_080685EC: .4byte gUnknown_2027370
_080685F0: .4byte 0x0000feff
_080685F4: .4byte 0xffff0000
_080685F8: .4byte 0x0000fdff
_080685FC: .4byte 0x0000f3ff
_08068600: .4byte 0x0000efff
_08068604: .4byte 0x0000dfff
_08068608: .4byte 0x00003fff
_0806860C: .4byte 0x00000fff
_08068610: .4byte 0x000001ff
	thumb_func_end sub_80684C4

	thumb_func_start sub_8068614
sub_8068614:
	push {lr}
	ldr r0, _0806862C
	ldr r1, _08068630
	bl OpenFileAndGetFileDataPtr
	ldr r1, _08068634
	ldr r1, [r1]
	ldr r2, _08068638
	adds r1, r2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806862C: .4byte gUnknown_8106E98
_08068630: .4byte gMonsterFileArchive
_08068634: .4byte gDungeonGlobalData
_08068638: .4byte 0x000181e4
	thumb_func_end sub_8068614

	thumb_func_start sub_806863C
sub_806863C:
	push {lr}
	ldr r0, _08068650
	ldr r0, [r0]
	ldr r1, _08068654
	adds r0, r1
	ldr r0, [r0]
	bl CloseFile
	pop {r0}
	bx r0
	.align 2, 0
_08068650: .4byte gDungeonGlobalData
_08068654: .4byte 0x000181e4
	thumb_func_end sub_806863C

	thumb_func_start sub_8068658
sub_8068658:
	push {r4-r6,lr}
	movs r4, 0
	ldr r6, _08068740
	ldr r5, _08068744
	ldr r3, _08068748
	movs r2, 0
_08068664:
	ldr r0, [r5]
	lsls r1, r4, 2
	adds r0, r3
	adds r0, r1
	str r2, [r0]
	adds r4, 0x1
	cmp r4, r6
	ble _08068664
	ldr r0, _0806874C
	movs r1, 0x1
	bl sub_8068838
	movs r4, 0
	ldr r1, _08068744
	ldr r0, [r1]
	ldr r2, _08068750
	adds r0, r2
	ldr r0, [r0]
	cmp r4, r0
	bge _080686B2
	adds r6, r1, 0
	ldr r5, _08068754
_08068690:
	ldr r0, [r6]
	adds r0, r5
	bl ExtractSpeciesIndex
	lsls r0, 16
	asrs r0, 16
	movs r1, 0x1
	bl sub_8068838
	adds r5, 0x8
	adds r4, 0x1
	ldr r0, [r6]
	ldr r1, _08068750
	adds r0, r1
	ldr r0, [r0]
	cmp r4, r0
	blt _08068690
_080686B2:
	ldr r0, _08068744
	ldr r0, [r0]
	movs r2, 0xD1
	lsls r2, 3
	adds r1, r0, r2
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _080686CA
	movs r1, 0x1
	bl sub_8068838
_080686CA:
	movs r4, 0
	ldr r6, _08068758
	movs r5, 0x1
_080686D0:
	movs r0, 0x64
	muls r0, r4
	ldr r1, _0806875C
	adds r0, r1
	ldr r1, [r6]
	adds r1, r0
	ldrh r2, [r1]
	adds r0, r5, 0
	ands r0, r2
	cmp r0, 0
	beq _080686F8
	lsrs r0, r2, 1
	ands r0, r5
	cmp r0, 0
	beq _080686F8
	movs r2, 0xE
	ldrsh r0, [r1, r2]
	movs r1, 0
	bl sub_8068838
_080686F8:
	adds r4, 0x1
	cmp r4, 0x3
	ble _080686D0
	ldr r0, _08068744
	ldr r0, [r0]
	ldr r1, _08068760
	adds r0, r1
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, 0x31
	bne _08068738
	movs r4, 0
	ldr r5, _08068758
_08068712:
	movs r0, 0x58
	muls r0, r4
	ldr r1, _08068764
	adds r0, r1
	ldr r1, [r5]
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068732
	movs r1, 0x8
	ldrsh r0, [r2, r1]
	movs r1, 0x1
	bl sub_8068838
_08068732:
	adds r4, 0x1
	cmp r4, 0x3
	ble _08068712
_08068738:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068740: .4byte 0x000001a7
_08068744: .4byte gDungeonGlobalData
_08068748: .4byte 0x00017b44
_0806874C: .4byte 0x000001a5
_08068750: .4byte 0x000037e4
_08068754: .4byte 0x0000343c
_08068758: .4byte gRecruitedPokemonRef
_0806875C: .4byte 0x00008df8
_08068760: .4byte 0x00003a14
_08068764: .4byte 0x00008f88
	thumb_func_end sub_8068658

	thumb_func_start sub_8068768
sub_8068768:
	push {r4,r5,lr}
	movs r5, 0
_0806876C:
	ldr r0, _080687A4
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _080687A8
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	cmp r4, 0
	beq _08068796
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08068796
	ldr r0, [r4, 0x70]
	movs r1, 0x4
	ldrsh r0, [r0, r1]
	movs r1, 0
	bl sub_8068838
_08068796:
	adds r5, 0x1
	cmp r5, 0x13
	ble _0806876C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080687A4: .4byte gDungeonGlobalData
_080687A8: .4byte 0x000135cc
	thumb_func_end sub_8068768

	thumb_func_start sub_80687AC
sub_80687AC:
	ldr r0, _080687C4
	ldr r1, [r0]
	ldr r0, _080687C8
	adds r2, r1, r0
	movs r0, 0x80
	lsls r0, 3
	str r0, [r2]
	ldr r0, _080687CC
	adds r1, r0
	movs r0, 0xA
	str r0, [r1]
	bx lr
	.align 2, 0
_080687C4: .4byte gDungeonGlobalData
_080687C8: .4byte 0x000037f0
_080687CC: .4byte 0x000037f4
	thumb_func_end sub_80687AC

	thumb_func_start sub_80687D0
sub_80687D0:
	lsls r0, 16
	ldr r1, _080687E4
	ldr r1, [r1]
	asrs r0, 14
	ldr r2, _080687E8
	adds r1, r2
	adds r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_080687E4: .4byte gDungeonGlobalData
_080687E8: .4byte 0x00017b44
	thumb_func_end sub_80687D0

	thumb_func_start sub_80687EC
sub_80687EC:
	push {r4,r5,lr}
	sub sp, 0xC
	lsls r0, 16
	asrs r2, r0, 16
	ldr r5, _08068828
	ldr r0, [r5]
	lsls r4, r2, 2
	ldr r1, _0806882C
	adds r0, r1
	adds r0, r4
	ldr r0, [r0]
	cmp r0, 0
	bne _08068820
	ldr r1, _08068830
	mov r0, sp
	bl sprintf
	ldr r1, _08068834
	mov r0, sp
	bl OpenFileAndGetFileDataPtr
	ldr r1, [r5]
	ldr r2, _0806882C
	adds r1, r2
	adds r1, r4
	str r0, [r1]
_08068820:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068828: .4byte gDungeonGlobalData
_0806882C: .4byte 0x00017b44
_08068830: .4byte gUnknown_8106EA0
_08068834: .4byte gMonsterFileArchive
	thumb_func_end sub_80687EC

	thumb_func_start sub_8068838
sub_8068838:
	push {r4,lr}
	lsls r0, 16
	asrs r4, r0, 16
	lsls r1, 24
	cmp r1, 0
	bne _08068864
	movs r0, 0xCF
	lsls r0, 1
	cmp r4, r0
	beq _0806885E
	adds r0, 0x3
	cmp r4, r0
	beq _0806885E
	adds r0, 0x1
	cmp r4, r0
	beq _0806885E
	adds r0, 0x1
	cmp r4, r0
	bne _08068864
_0806885E:
	bl sub_80688B0
	b _0806887A
_08068864:
	adds r0, r4, 0
	bl sub_80687EC
	ldr r1, _08068880
	adds r0, r4, r1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x3
	bhi _0806887A
	bl sub_8068884
_0806887A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068880: .4byte 0xfffffe88
	thumb_func_end sub_8068838

	thumb_func_start sub_8068884
sub_8068884:
	push {lr}
	movs r0, 0xBC
	lsls r0, 1
	bl sub_80687EC
	ldr r0, _080688A8
	bl sub_80687EC
	movs r0, 0xBD
	lsls r0, 1
	bl sub_80687EC
	ldr r0, _080688AC
	bl sub_80687EC
	pop {r0}
	bx r0
	.align 2, 0
_080688A8: .4byte 0x00000179
_080688AC: .4byte 0x0000017b
	thumb_func_end sub_8068884

	thumb_func_start sub_80688B0
sub_80688B0:
	push {lr}
	ldr r0, _080688C8
	ldr r0, [r0]
	movs r1, 0xE0
	lsls r1, 6
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	bl sub_80687EC
	pop {r0}
	bx r0
	.align 2, 0
_080688C8: .4byte gDungeonGlobalData
	thumb_func_end sub_80688B0

	thumb_func_start sub_80688CC
sub_80688CC:
	push {r4-r6,lr}
	movs r5, 0
	ldr r6, _08068900
_080688D2:
	ldr r0, [r6]
	lsls r4, r5, 2
	ldr r1, _08068904
	adds r0, r1
	adds r0, r4
	ldr r0, [r0]
	cmp r0, 0
	beq _080688F2
	bl CloseFile
	ldr r0, [r6]
	ldr r1, _08068904
	adds r0, r1
	adds r0, r4
	movs r1, 0
	str r1, [r0]
_080688F2:
	adds r5, 0x1
	ldr r0, _08068908
	cmp r5, r0
	ble _080688D2
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068900: .4byte gDungeonGlobalData
_08068904: .4byte 0x00017b44
_08068908: .4byte 0x000001a7
	thumb_func_end sub_80688CC

	thumb_func_start sub_806890C
sub_806890C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x64
	movs r0, 0
	mov r8, r0
	mov r10, r0
	ldr r6, _08068A60
	add r5, sp, 0x8
_08068922:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	ldr r2, [r6]
	adds r7, r2, r0
	ldrh r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068A1C
	lsrs r0, r1, 1
	movs r3, 0x1
	ands r0, r3
	cmp r0, 0
	beq _08068A1C
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r0, _08068A64
	adds r0, r4
	mov r9, r0
	adds r0, r2, r0
	mov r1, r10
	bl xxx_pokemonstruct_index_to_pokemon2_808DE30
	ldr r0, _08068A68
	ldr r0, [r0]
	ldr r1, _08068A6C
	adds r0, r1
	ldrb r0, [r0]
	bl GetLevelCondition
	lsls r0, 24
	cmp r0, 0
	beq _08068A06
	movs r0, 0x80
	lsls r0, 1
	str r0, [sp, 0x60]
	movs r2, 0x8
	ldrsh r1, [r7, r2]
	add r0, sp, 0x60
	str r0, [sp]
	movs r3, 0
	str r3, [sp, 0x4]
	add r0, sp, 0x8
	movs r2, 0
	bl sub_808CFD0
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r5, 0x3]
	ldr r2, _08068A70
	adds r0, r2
	strb r1, [r0]
	ldr r1, [r6]
	adds r1, r4
	ldrh r2, [r5, 0x14]
	movs r3, 0x8E
	lsls r3, 8
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r5, 0x16]
	adds r3, 0x8
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r2, [r5, 0x16]
	adds r3, 0x2
	adds r0, r1, r3
	strh r2, [r0]
	ldrb r0, [r5, 0x18]
	ldr r2, _08068A74
	adds r1, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r5, 0x19]
	adds r3, 0x3
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r5, 0x1A]
	adds r2, 0x2
	adds r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r5, 0x1B]
	adds r3, 0x2
	adds r0, r3
	strb r1, [r0]
	ldr r2, [r6]
	ldr r1, _08068A78
	adds r0, r2, r1
	adds r0, r4
	ldr r1, [sp, 0x24]
	str r1, [r0]
	adds r2, r4
	adds r3, 0x35
	adds r1, r2, r3
	ldr r0, [sp, 0x28]
	str r0, [r1]
	add r0, sp, 0x2C
	ldrb r0, [r0]
	ldr r1, _08068A7C
	adds r2, r1
	strb r0, [r2]
	ldr r0, [r6]
	add r0, r9
	adds r0, 0x1C
	add r1, sp, 0x34
	bl sub_8093F50
_08068A06:
	ldr r0, [r6]
	adds r0, r4
	ldr r2, _08068A80
	adds r0, r2
	mov r3, r8
	strh r3, [r0]
	movs r0, 0x1
	add r8, r0
	mov r1, r8
	cmp r1, 0x4
	beq _08068A2A
_08068A1C:
	movs r2, 0x1
	add r10, r2
	movs r0, 0xCE
	lsls r0, 1
	cmp r10, r0
	bgt _08068A2A
	b _08068922
_08068A2A:
	mov r3, r8
	cmp r3, 0x3
	bgt _08068A50
	ldr r4, _08068A60
	ldr r3, _08068A64
	movs r2, 0
	movs r0, 0x64
	mov r1, r8
	muls r1, r0
_08068A3C:
	ldr r0, [r4]
	adds r0, r1
	adds r0, r3
	strh r2, [r0]
	adds r1, 0x64
	movs r0, 0x1
	add r8, r0
	mov r0, r8
	cmp r0, 0x3
	ble _08068A3C
_08068A50:
	add sp, 0x64
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068A60: .4byte gRecruitedPokemonRef
_08068A64: .4byte 0x00008df8
_08068A68: .4byte gDungeonGlobalData
_08068A6C: .4byte 0x00000644
_08068A70: .4byte 0x00008dfb
_08068A74: .4byte 0x00008e0c
_08068A78: .4byte 0x00008e10
_08068A7C: .4byte 0x00008e48
_08068A80: .4byte 0x00008e04
	thumb_func_end sub_806890C

	thumb_func_start sub_8068A84
sub_8068A84:
	push {r4-r7,lr}
	adds r6, r0, 0
	movs r4, 0
	movs r5, 0
	ldr r7, _08068AE0
_08068A8E:
	movs r0, 0x64
	muls r0, r5
	ldr r1, _08068AE4
	adds r0, r1
	ldr r1, [r7]
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068AB2
	movs r1, 0xE
	ldrsh r0, [r2, r1]
	bl GetPokemonSize
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0
_08068AB2:
	adds r5, 0x1
	cmp r5, 0x3
	ble _08068A8E
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	bl GetPokemonSize
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0
	cmp r4, 0x6
	ble _08068B04
	ldr r0, _08068AE8
	adds r1, r6, 0
	movs r2, 0
	bl PrintColoredPokeNameToBuffer
	ldrb r0, [r6, 0x4]
	cmp r0, 0x4A
	bne _08068AF0
	ldr r0, _08068AEC
	b _08068BB2
	.align 2, 0
_08068AE0: .4byte gRecruitedPokemonRef
_08068AE4: .4byte 0x00008df8
_08068AE8: .4byte gAvailablePokemonNames
_08068AEC: .4byte gUnknown_80FE0F4
_08068AF0:
	cmp r0, 0x47
	bne _08068AFC
	ldr r0, _08068AF8
	b _08068BB2
	.align 2, 0
_08068AF8: .4byte gUnknown_80FE0F8
_08068AFC:
	ldr r0, _08068B00
	b _08068BB2
	.align 2, 0
_08068B00: .4byte gUnknown_80FE0AC
_08068B04:
	movs r5, 0
	ldr r2, _08068B6C
_08068B08:
	movs r0, 0x64
	muls r0, r5
	ldr r1, _08068B70
	adds r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08068B80
	adds r0, r4, 0
	adds r1, r6, 0
	ldr r2, _08068B74
	bl xxx_pokemonstruct_to_pokemon2_808DE50
	ldrh r0, [r4]
	movs r1, 0x1
	movs r2, 0
	orrs r1, r0
	strh r1, [r4]
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x19
	bgt _08068B3E
	movs r0, 0x1A
	strh r0, [r4, 0x8]
_08068B3E:
	ldrh r0, [r4]
	movs r1, 0x2
	orrs r0, r1
	strh r0, [r4]
	strh r5, [r4, 0xC]
	adds r0, r4, 0
	adds r0, 0x40
	strb r2, [r0, 0x2]
	strb r2, [r0, 0x1]
	strb r2, [r0]
	ldr r0, _08068B78
	adds r1, r6, 0
	movs r2, 0x6
	bl PrintColoredPokeNameToBuffer
	ldrb r0, [r6, 0x4]
	cmp r0, 0x4A
	beq _08068BB0
	cmp r0, 0x47
	beq _08068BD0
	ldr r0, _08068B7C
	b _08068BB2
	.align 2, 0
_08068B6C: .4byte gRecruitedPokemonRef
_08068B70: .4byte 0x00008df8
_08068B74: .4byte 0x000055aa
_08068B78: .4byte gAvailablePokemonNames
_08068B7C: .4byte gUnknown_80FE134
_08068B80:
	adds r5, 0x1
	cmp r5, 0x3
	ble _08068B08
	ldr r0, _08068B9C
	adds r1, r6, 0
	movs r2, 0x6
	bl PrintColoredPokeNameToBuffer
	ldrb r0, [r6, 0x4]
	cmp r0, 0x4A
	bne _08068BA4
	ldr r0, _08068BA0
	b _08068BB2
	.align 2, 0
_08068B9C: .4byte gAvailablePokemonNames
_08068BA0: .4byte gUnknown_80FE0F4
_08068BA4:
	cmp r0, 0x47
	bne _08068BC4
	ldr r0, _08068BAC
	b _08068BB2
	.align 2, 0
_08068BAC: .4byte gUnknown_80FE0F8
_08068BB0:
	ldr r0, _08068BC0
_08068BB2:
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	b _08068BD0
	.align 2, 0
_08068BC0: .4byte gUnknown_80FE168
_08068BC4:
	ldr r0, _08068BD8
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_08068BD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068BD8: .4byte gUnknown_80FE0AC
	thumb_func_end sub_8068A84

	thumb_func_start sub_8068BDC
sub_8068BDC:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _08068CC4
	add sp, r4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x220]
	movs r1, 0
	mov r0, sp
	adds r0, 0x39
_08068BF6:
	strb r1, [r0]
	subs r0, 0x1
	cmp r0, sp
	bge _08068BF6
	movs r6, 0
	ldr r0, _08068CC8
	mov r8, r0
	movs r7, 0x1
_08068C06:
	movs r0, 0x64
	muls r0, r6
	ldr r1, _08068CCC
	adds r0, r1
	mov r2, r8
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r1, [r4]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _08068C50
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	bl sub_806A564
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _08068C50
	adds r4, 0x40
	ldrb r1, [r4]
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _08068C50
	ldrb r0, [r4, 0x2]
	cmp r0, 0x69
	bne _08068C50
	adds r0, r4, 0
	bl GetMoneyValue
	bl AddToTeamMoney
	strb r5, [r4, 0x2]
	strb r5, [r4, 0x1]
	strb r5, [r4]
_08068C50:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08068C06
	movs r6, 0
	movs r5, 0x1
_08068C5A:
	ldr r1, _08068CC8
	movs r0, 0x64
	muls r0, r6
	ldr r2, _08068CCC
	adds r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	ldrb r1, [r4]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _08068CFE
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	bl sub_806A564
	lsls r0, 24
	cmp r0, 0
	bne _08068CFE
	ldr r1, _08068CD0
	adds r0, r1, 0
	ldrh r2, [r4, 0xE]
	adds r0, r2
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x2
	bhi _08068C96
	movs r0, 0xBC
	lsls r0, 1
	strh r0, [r4, 0xE]
_08068C96:
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	bl sub_806A58C
	lsls r0, 24
	cmp r0, 0
	beq _08068CE8
	ldr r0, _08068CD4
	ldr r0, [r0]
	ldr r1, _08068CD8
	adds r0, r1
	ldrb r0, [r0]
	bl GetLevelCondition
	lsls r0, 24
	cmp r0, 0
	beq _08068CDC
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	adds r1, r4, 0
	bl sub_808DFDC
	b _08068CFE
	.align 2, 0
_08068CC4: .4byte 0xfffffdd8
_08068CC8: .4byte gRecruitedPokemonRef
_08068CCC: .4byte 0x00008df8
_08068CD0: .4byte 0xfffffe87
_08068CD4: .4byte gDungeonGlobalData
_08068CD8: .4byte 0x00000644
_08068CDC:
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	adds r1, r4, 0
	bl xxx_pokemon2_to_pokemonstruct_index_808DF2C
	b _08068CFE
_08068CE8:
	ldr r0, [sp, 0x220]
	cmp r0, 0
	beq _08068CFE
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	bl GetFriendArea
	lsls r0, 24
	lsrs r0, 24
	add r0, sp
	strb r5, [r0]
_08068CFE:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08068C5A
	movs r1, 0
_08068D06:
	lsls r0, r1, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, sp
	add r0, r8
	ldrb r0, [r0]
	adds r1, 0x1
	str r1, [sp, 0x224]
	cmp r0, 0
	bne _08068D1C
	b _08068F08
_08068D1C:
	mov r0, r8
	add r1, sp, 0x1F0
	movs r2, 0x1
	movs r3, 0x1
	bl sub_8092404
	mov r0, r8
	add r1, sp, 0x214
	movs r2, 0
	movs r3, 0
	bl sub_8092638
	movs r7, 0
	add r1, sp, 0x1F0
	ldrh r0, [r1]
	ldr r2, _08068E10
	cmp r0, r2
	beq _08068D60
	ldr r0, _08068E14
	ldr r3, [r0]
	adds r5, r2, 0
	add r2, sp, 0x3C
	movs r4, 0x58
_08068D4A:
	ldrh r0, [r1]
	muls r0, r4
	adds r0, r3, r0
	stm r2!, {r0}
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, 0x14
	bgt _08068D60
	ldrh r0, [r1]
	cmp r0, r5
	bne _08068D4A
_08068D60:
	movs r6, 0
	ldr r2, _08068E14
	mov r10, r2
	movs r3, 0
	mov r9, r3
_08068D6A:
	movs r0, 0x64
	muls r0, r6
	ldr r1, _08068E18
	adds r0, r1
	mov r2, r10
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068DD6
	movs r3, 0xA
	ldrsh r0, [r5, r3]
	bl sub_806A5A4
	lsls r0, 24
	cmp r0, 0
	beq _08068DD6
	movs r1, 0xE
	ldrsh r0, [r5, r1]
	bl GetFriendArea
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r8
	bne _08068DD6
	ldr r2, [sp, 0x220]
	cmp r2, 0
	beq _08068DD6
	add r4, sp, 0x3C
	lsls r0, r7, 2
	adds r4, r0
	add r0, sp, 0x90
	movs r1, 0x58
	muls r1, r6
	adds r0, r1
	str r0, [r4]
	adds r1, r5, 0
	bl xxx_pokemon2_to_pokemonstruct_808DF44
	ldr r2, [r4]
	ldrh r0, [r2]
	movs r3, 0x80
	lsls r3, 7
	adds r1, r3, 0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	mov r1, r9
	strb r1, [r0, 0xC]
	ldr r0, [r4]
	strb r1, [r0, 0x10]
	adds r7, 0x1
_08068DD6:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08068D6A
	add r0, sp, 0x214
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r7, r0
	bgt _08068E1C
	cmp r7, 0
	bgt _08068DEC
	b _08068F08
_08068DEC:
	add r5, sp, 0x3C
	movs r3, 0x80
	lsls r3, 7
	adds r6, r3, 0
	adds r4, r7, 0
_08068DF6:
	ldr r1, [r5]
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, 0
	beq _08068E06
	adds r0, r1, 0
	bl sub_808D1DC
_08068E06:
	adds r5, 0x4
	subs r4, 0x1
	cmp r4, 0
	bne _08068DF6
	b _08068F08
	.align 2, 0
_08068E10: .4byte 0x0000ffff
_08068E14: .4byte gRecruitedPokemonRef
_08068E18: .4byte 0x00008df8
_08068E1C:
	ldr r0, _08068E78
	mov r1, r8
	movs r2, 0
	bl sub_8092578
	ldr r0, _08068E7C
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	add r4, sp, 0x3C
_08068E34:
	add r0, sp, 0x214
	movs r2, 0
	ldrsh r1, [r0, r2]
	subs r1, r7, r1
	mov r0, r8
	adds r2, r7, 0
	adds r3, r4, 0
	bl sub_8067A80
	movs r6, 0
	cmp r6, r7
	bge _08068E8E
	movs r5, 0x80
	lsls r5, 8
	adds r3, r4, 0
_08068E52:
	ldr r2, [r3]
	ldrh r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068E86
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _08068E86
	ldrb r0, [r2, 0x4]
	subs r0, 0x44
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08068E80
	movs r0, 0x1
	b _08068E82
	.align 2, 0
_08068E78: .4byte gUnknown_202DE58
_08068E7C: .4byte gUnknown_80FE1A4
_08068E80:
	movs r0, 0
_08068E82:
	cmp r0, 0
	bne _08068E8E
_08068E86:
	adds r3, 0x4
	adds r6, 0x1
	cmp r6, r7
	blt _08068E52
_08068E8E:
	cmp r6, r7
	beq _08068EA2
	ldr r0, _08068F24
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0x1
	bne _08068E34
_08068EA2:
	cmp r7, 0
	ble _08068ED4
	movs r3, 0x80
	lsls r3, 8
	mov r9, r3
	adds r3, r4, 0
	movs r0, 0x1
	mov r8, r0
	movs r5, 0
	adds r6, r7, 0
_08068EB6:
	ldr r2, [r3]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, 0
	beq _08068ECC
	mov r0, r9
	ands r0, r1
	cmp r0, 0
	beq _08068ECC
	strh r5, [r2]
_08068ECC:
	adds r3, 0x4
	subs r6, 0x1
	cmp r6, 0
	bne _08068EB6
_08068ED4:
	cmp r7, 0
	ble _08068F08
	movs r1, 0x80
	lsls r1, 7
	adds r5, r1, 0
	adds r6, r7, 0
_08068EE0:
	ldr r2, [r4]
	ldrh r1, [r2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068F00
	adds r0, r1, 0
	ands r0, r5
	cmp r0, 0
	beq _08068F00
	adds r0, r2, 0
	bl sub_808D1DC
	ldr r1, [r4]
	movs r0, 0
	strh r0, [r1]
_08068F00:
	adds r4, 0x4
	subs r6, 0x1
	cmp r6, 0
	bne _08068EE0
_08068F08:
	ldr r1, [sp, 0x224]
	cmp r1, 0x39
	bgt _08068F10
	b _08068D06
_08068F10:
	movs r3, 0x8A
	lsls r3, 2
	add sp, r3
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068F24: .4byte gUnknown_80FE20C
	thumb_func_end sub_8068BDC

	thumb_func_start sub_8068F28
sub_8068F28:
	push {r4-r7,lr}
	movs r6, 0
	ldr r7, _08068F5C
_08068F2E:
	movs r0, 0x64
	muls r0, r6
	ldr r1, _08068F60
	adds r0, r1
	ldr r1, [r7]
	adds r4, r1, r0
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08068F74
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	bl sub_806A564
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	beq _08068F64
	movs r0, 0
	strh r0, [r4]
	b _08068F74
	.align 2, 0
_08068F5C: .4byte gRecruitedPokemonRef
_08068F60: .4byte 0x00008df8
_08068F64:
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	bl sub_806A538
	lsls r0, 24
	cmp r0, 0
	beq _08068F74
	strh r5, [r4]
_08068F74:
	adds r6, 0x1
	cmp r6, 0x3
	ble _08068F2E
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8068F28

	thumb_func_start sub_8068F80
sub_8068F80:
	push {r4,r5,lr}
	bl GetLeaderEntity
	adds r5, r0, 0
	ldr r0, _08068FD4
	ldr r4, [r0]
	ldr r1, _08068FD8
	adds r0, r4, r1
	movs r1, 0
	strb r1, [r0]
	ldr r2, _08068FDC
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, 0x6
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, 0
	adds r0, 0xC0
	str r1, [r0]
	cmp r5, 0
	beq _08068FCC
	adds r0, r5, 0
	bl GetMapTileForDungeonEntity_2
	ldrh r0, [r0]
	lsrs r0, 5
	movs r1, 0x1
	ands r0, r1
	movs r2, 0xD3
	lsls r2, 3
	adds r1, r4, r2
	strb r0, [r1]
	adds r2, 0x1
	adds r1, r4, r2
	strb r0, [r1]
	adds r0, r5, 0x4
	bl sub_804AC20
_08068FCC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068FD4: .4byte gDungeonGlobalData
_08068FD8: .4byte 0x0000066c
_08068FDC: .4byte 0x0000066d
	thumb_func_end sub_8068F80

	thumb_func_start sub_8068FE0
sub_8068FE0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x84
	mov r8, r0
	str r2, [sp, 0x74]
	lsls r1, 16
	asrs r1, 16
	mov r9, r1
	ldr r7, [r0, 0x70]
	bl GetMapTileForDungeonEntity_2
	adds r4, r0, 0
	ldr r0, [sp, 0x74]
	cmp r0, 0
	bne _0806900E
	mov r0, sp
	bl sub_80457DC
	mov r1, sp
	str r1, [sp, 0x74]
_0806900E:
	ldr r0, [r4, 0x10]
	cmp r0, r8
	bne _08069018
	movs r0, 0
	str r0, [r4, 0x10]
_08069018:
	mov r2, r8
	movs r3, 0x4
	ldrsh r0, [r2, r3]
	movs r3, 0x6
	ldrsh r1, [r2, r3]
	bl sub_80402AC
	movs r5, 0
	adds r6, r7, 0
	adds r6, 0xC8
	movs r0, 0xB0
	adds r0, r7
	mov r10, r0
	mov r1, r8
	adds r1, 0x22
	str r1, [sp, 0x80]
	mov r2, r8
	adds r2, 0x20
	str r2, [sp, 0x7C]
	adds r3, r7, 0
	adds r3, 0x40
	str r3, [sp, 0x78]
_08069044:
	ldr r0, _080690E4
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _080690E8
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	cmp r4, 0
	beq _08069072
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08069072
	ldr r0, [r4, 0x70]
	adds r1, r0, 0
	adds r1, 0x80
	ldr r0, [r1]
	cmp r0, r8
	bne _08069072
	movs r0, 0
	str r0, [r1]
_08069072:
	adds r5, 0x1
	cmp r5, 0x13
	ble _08069044
	ldrb r0, [r6]
	cmp r0, 0x2
	bne _0806908A
	ldr r0, _080690E4
	ldr r0, [r0]
	ldr r3, _080690EC
	adds r0, r3
	movs r1, 0
	strb r1, [r0]
_0806908A:
	mov r1, r10
	ldrb r0, [r1]
	subs r0, 0x3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080690A2
	adds r0, r7, 0
	adds r0, 0x9C
	ldr r0, [r0]
	bl sub_8076CB4
_080690A2:
	mov r0, r8
	bl sub_8078084
	movs r0, 0
	ldr r2, [sp, 0x80]
	strb r0, [r2]
	ldr r3, [sp, 0x7C]
	strb r0, [r3]
	ldr r1, _080690F0
	str r0, [r1]
	ldr r1, [sp, 0x78]
	ldrb r0, [r1]
	cmp r0, 0x41
	bne _080690FC
	ldr r3, _080690E4
	ldr r2, [r3]
	ldr r1, _080690F4
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, 0
	bne _080690FC
	movs r0, 0x1
	strb r0, [r2, 0x10]
	strh r1, [r7, 0xE]
	ldr r0, [r3]
	ldr r2, _080690F8
	adds r0, r2
	mov r1, r8
	movs r2, 0
	bl SetMessageArgument
	b _08069484
	.align 2, 0
_080690E4: .4byte gDungeonGlobalData
_080690E8: .4byte 0x000135cc
_080690EC: .4byte 0x000037fc
_080690F0: .4byte gLeaderPokemon
_080690F4: .4byte 0x0000065c
_080690F8: .4byte 0x000005f4
_080690FC:
	ldrb r0, [r7, 0x7]
	cmp r0, 0
	bne _08069104
	b _0806928E
_08069104:
	movs r0, 0x3C
	movs r1, 0x49
	bl sub_803E708
	bl sub_80532B4
	ldr r5, _08069198
	ldr r2, [r5]
	ldrb r0, [r2, 0x6]
	cmp r0, 0
	bne _080691C8
	ldr r3, _0806919C
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _080691E0
	movs r0, 0x87
	lsls r0, 2
	cmp r9, r0
	beq _080691E0
	adds r0, 0x6
	cmp r9, r0
	beq _080691E0
	subs r0, 0x4
	cmp r9, r0
	beq _080691E0
	ldr r1, _080691A0
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _080691E0
	ldr r6, _080691A4
	adds r0, r2, r6
	movs r1, 0
	ldrsb r1, [r0, r1]
	cmp r1, 0
	blt _080691E0
	adds r3, 0xA
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _080691E0
	cmp r1, 0
	ble _080691B4
	ldr r0, _080691A8
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	adds r4, r0, 0
	cmp r4, 0x1
	bne _080691E0
	ldr r0, _080691AC
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	ldr r0, [r5]
	strb r4, [r0, 0x4]
	ldr r0, [r5]
	strb r4, [r0, 0x6]
	ldr r0, [r5]
	ldr r1, _080691B0
	adds r0, r1
	strb r4, [r0]
	ldr r1, [r5]
	adds r1, r6
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	b _08069484
	.align 2, 0
_08069198: .4byte gDungeonGlobalData
_0806919C: .4byte 0x0000066e
_080691A0: .4byte 0x00003a0d
_080691A4: .4byte 0x0000067b
_080691A8: .4byte gUnknown_80FE268
_080691AC: .4byte gUnknown_80FE28C
_080691B0: .4byte 0x00000654
_080691B4:
	ldr r0, _080691C4
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
	b _080691E0
	.align 2, 0
_080691C4: .4byte gUnknown_80FE2D0
_080691C8:
	movs r1, 0x1
	strb r1, [r2, 0x4]
	ldr r0, [r5]
	strb r1, [r0, 0x6]
	ldr r0, [r5]
	ldr r2, _080691DC
	adds r0, r2
	strb r1, [r0]
	b _08069484
	.align 2, 0
_080691DC: .4byte 0x00000654
_080691E0:
	mov r0, r9
	ldr r1, [sp, 0x74]
	mov r2, r8
	bl sub_8083AB0
	ldr r0, _080691F8
	cmp r9, r0
	bne _0806928E
	movs r6, 0
	movs r5, 0
	b _080691FE
	.align 2, 0
_080691F8: .4byte 0x0000021f
_080691FC:
	adds r5, 0x1
_080691FE:
	cmp r5, 0x3
	bgt _08069228
	ldr r0, _080692C4
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r3, _080692C8
	adds r0, r3
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _080691FC
	ldr r6, [r4, 0x70]
	adds r0, r6, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x41
	bne _080691FC
_08069228:
	cmp r6, 0
	beq _0806928E
	ldr r5, _080692CC
	ldrb r0, [r6, 0xA]
	movs r1, 0x64
	muls r1, r0
	ldr r2, _080692D0
	adds r1, r2
	ldr r2, [r5]
	adds r4, r2, r1
	adds r1, r6, 0
	bl sub_806C264
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	bl sub_806A58C
	lsls r0, 24
	cmp r0, 0
	beq _0806928A
	ldr r0, _080692C4
	ldr r0, [r0]
	ldr r1, _080692D4
	adds r0, r1
	ldrb r0, [r0]
	bl GetLevelCondition
	lsls r0, 24
	cmp r0, 0
	bne _0806926E
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	adds r1, r4, 0
	bl xxx_pokemon2_to_pokemonstruct_index_808DF2C
_0806926E:
	bl sub_8044210
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _0806928A
	movs r3, 0xA
	ldrsh r1, [r4, r3]
	movs r0, 0x58
	muls r0, r1
	ldr r1, [r5]
	adds r0, r1
	adds r0, 0x28
	strb r2, [r0]
_0806928A:
	movs r0, 0
	strh r0, [r4]
_0806928E:
	ldrb r0, [r7, 0x6]
	cmp r0, 0
	beq _080692DC
	movs r5, 0
	movs r1, 0xB4
	lsls r1, 1
	adds r0, r7, r1
	movs r2, 0x98
	adds r2, r7
	mov r10, r2
	ldrb r3, [r0]
	cmp r5, r3
	bge _0806930A
	ldr r4, _080692D8
	subs r1, 0x1
	adds r2, r7, r1
	movs r3, 0
	adds r1, r0, 0
_080692B2:
	ldrb r0, [r2]
	adds r0, r5
	adds r0, r4
	strb r3, [r0]
	adds r5, 0x1
	ldrb r0, [r1]
	cmp r5, r0
	blt _080692B2
	b _0806930A
	.align 2, 0
_080692C4: .4byte gDungeonGlobalData
_080692C8: .4byte 0x0001357c
_080692CC: .4byte gRecruitedPokemonRef
_080692D0: .4byte 0x00008df8
_080692D4: .4byte 0x00000644
_080692D8: .4byte gUnknown_202EE76
_080692DC:
	movs r5, 0
	movs r1, 0xB4
	lsls r1, 1
	adds r0, r7, r1
	movs r2, 0x98
	adds r2, r7
	mov r10, r2
	ldrb r3, [r0]
	cmp r5, r3
	bge _0806930A
	ldr r4, _0806932C
	subs r1, 0x1
	adds r2, r7, r1
	movs r3, 0
	adds r1, r0, 0
_080692FA:
	ldrb r0, [r2]
	adds r0, r5
	adds r0, r4
	strb r3, [r0]
	adds r5, 0x1
	ldrb r0, [r1]
	cmp r5, r0
	blt _080692FA
_0806930A:
	ldr r1, [sp, 0x78]
	ldrb r0, [r1]
	cmp r0, 0x4A
	bne _08069338
	ldr r2, _08069330
	ldr r1, [r2]
	movs r0, 0x2
	strb r0, [r1, 0x10]
	ldr r0, [r2]
	ldr r2, _08069334
	adds r0, r2
	mov r1, r8
	movs r2, 0
	bl SetMessageArgument
	b _08069352
	.align 2, 0
_0806932C: .4byte gUnknown_202EE70
_08069330: .4byte gDungeonGlobalData
_08069334: .4byte 0x000005f4
_08069338:
	cmp r0, 0x47
	bne _08069352
	ldr r2, _08069494
	ldr r1, [r2]
	movs r0, 0x3
	strb r0, [r1, 0x10]
	ldr r0, [r2]
	ldr r3, _08069498
	adds r0, r3
	mov r1, r8
	movs r2, 0
	bl SetMessageArgument
_08069352:
	bl GetLeaderEntity
	cmp r0, 0
	beq _080693C6
	movs r0, 0x87
	lsls r0, 2
	cmp r9, r0
	beq _080693C6
	ldrb r0, [r7, 0x7]
	cmp r0, 0
	bne _080693C6
	ldr r4, _08069494
	ldr r0, [r4]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _080693C6
	adds r0, r7, 0
	adds r0, 0xA4
	ldrb r1, [r0]
	movs r2, 0
	movs r0, 0xFA
	lsls r0, 1
	cmp r9, r0
	bne _08069384
	movs r2, 0x1
_08069384:
	mov r0, r8
	bl sub_8084E00
	ldr r1, _0806949C
	adds r0, r1, 0
	ldrh r2, [r7, 0x4]
	adds r0, r2
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x2
	bhi _080693C6
	bl IsBossBattle
	lsls r0, 24
	cmp r0, 0
	bne _080693C6
	ldrb r0, [r7, 0x6]
	cmp r0, 0
	beq _080693CC
	ldr r0, [r4]
	ldr r3, _080694A0
	adds r0, r3
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, _080694A4
	ldr r1, [r0]
	mov r0, r8
	bl sub_805239C
	bl sub_803E178
	bl sub_8049ED4
_080693C6:
	ldrb r0, [r7, 0x6]
	cmp r0, 0
	bne _08069466
_080693CC:
	ldr r6, _080694A8
	ldrb r0, [r7, 0xA]
	movs r1, 0x64
	muls r1, r0
	ldr r2, _080694AC
	adds r1, r2
	ldr r2, [r6]
	adds r4, r2, r1
	adds r1, r7, 0
	bl sub_806C264
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	bl sub_806A58C
	lsls r0, 24
	cmp r0, 0
	beq _08069462
	ldr r5, _08069494
	ldr r0, [r5]
	ldr r1, _080694B0
	adds r0, r1
	ldrb r0, [r0]
	bl GetLevelCondition
	lsls r0, 24
	cmp r0, 0
	bne _0806940E
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	adds r1, r4, 0
	bl xxx_pokemon2_to_pokemonstruct_index_808DF2C
_0806940E:
	bl sub_8044210
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _0806942A
	movs r3, 0xA
	ldrsh r1, [r4, r3]
	movs r0, 0x58
	muls r0, r1
	ldr r1, [r6]
	adds r0, r1
	adds r0, 0x28
	strb r2, [r0]
_0806942A:
	ldrb r1, [r7, 0x7]
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, 31
	ldr r0, [r5]
	ldr r2, _080694B4
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _08069448
	ldr r3, [sp, 0x78]
	ldrb r0, [r3]
	cmp r0, 0x41
	bne _08069448
	movs r1, 0x1
_08069448:
	cmp r1, 0
	bne _08069462
	movs r0, 0xA
	ldrsh r1, [r4, r0]
	movs r0, 0x58
	muls r1, r0
	ldr r0, _080694A8
	ldr r0, [r0]
	adds r1, r0
	ldrh r2, [r1]
	ldr r0, _080694B8
	ands r0, r2
	strh r0, [r1]
_08069462:
	movs r0, 0
	strh r0, [r4]
_08069466:
	mov r1, r10
	ldr r0, [r1]
	bl DeletePokemonDungeonSprite
	ldr r0, _080694BC
	movs r2, 0
	str r2, [r0]
	ldr r0, _08069494
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0xC]
	mov r3, r8
	str r2, [r3]
	bl sub_8045ACC
_08069484:
	add sp, 0x84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069494: .4byte gDungeonGlobalData
_08069498: .4byte 0x000005f4
_0806949C: .4byte 0xfffffe5f
_080694A0: .4byte 0x000037fe
_080694A4: .4byte gUnknown_80FA580
_080694A8: .4byte gRecruitedPokemonRef
_080694AC: .4byte 0x00008df8
_080694B0: .4byte 0x00000644
_080694B4: .4byte 0x0000065c
_080694B8: .4byte 0x0000fffd
_080694BC: .4byte gLeaderPokemon
	thumb_func_end sub_8068FE0

	thumb_func_start sub_80694C0
sub_80694C0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r4, r0, 0
	adds r7, r1, 0
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	adds r0, r7, 0
	mov r1, r8
	bl GetMapTile_2
	mov r10, r0
	ldr r5, [r4, 0x70]
	adds r6, r5, 0
	adds r6, 0xB0
	ldrb r0, [r6]
	subs r0, 0x3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080694FC
	adds r0, r5, 0
	adds r0, 0x9C
	ldr r0, [r0]
	bl sub_8076CB4
_080694FC:
	ldrb r0, [r6]
	cmp r0, 0x7
	beq _0806950A
	cmp r0, 0x5
	beq _0806950A
	cmp r0, 0x2
	bne _08069512
_0806950A:
	adds r0, r4, 0
	adds r1, r4, 0
	bl SendImmobilizeEndMessage
_08069512:
	movs r0, 0x4
	ldrsh r2, [r4, r0]
	cmp r7, r2
	bne _08069522
	movs r1, 0x6
	ldrsh r0, [r4, r1]
	cmp r8, r0
	beq _080695DE
_08069522:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	cmp r0, 0
	blt _08069552
	movs r1, 0x6
	ldrsh r0, [r4, r1]
	cmp r0, 0
	blt _08069552
	adds r1, r0, 0
	adds r0, r2, 0
	bl GetMapTile_2
	adds r1, r0, 0
	ldr r0, [r1, 0x10]
	cmp r0, r4
	bne _08069546
	movs r0, 0
	str r0, [r1, 0x10]
_08069546:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	movs r2, 0x6
	ldrsh r1, [r4, r2]
	bl sub_80402AC
_08069552:
	ldrh r0, [r4, 0x4]
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0x6]
	strh r0, [r4, 0xA]
	strh r7, [r4, 0x4]
	mov r0, r8
	strh r0, [r4, 0x6]
	ldrb r0, [r5, 0x7]
	cmp r0, 0
	beq _0806956E
	ldr r0, _0806959C
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, 0x2]
_0806956E:
	mov r2, r10
	str r4, [r2, 0x10]
	ldrb r0, [r5, 0x7]
	cmp r0, 0
	beq _08069588
	ldr r0, _080695A0
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, 0x2]
	ldr r0, _080695A4
	ldr r1, [r0]
	movs r0, 0
	strb r0, [r1, 0x1]
_08069588:
	adds r0, r7, 0
	mov r1, r8
	bl sub_80402AC
	mov r2, r9
	cmp r2, 0
	beq _080695A8
	cmp r2, 0x1
	beq _080695C4
	b _080695CE
	.align 2, 0
_0806959C: .4byte gUnknown_203B410
_080695A0: .4byte gUnknown_202EE0C
_080695A4: .4byte gDungeonGlobalData
_080695A8:
	ldr r0, [r5, 0x70]
	str r0, [r5, 0x74]
	ldr r0, [r5, 0x6C]
	str r0, [r5, 0x70]
	ldr r0, [r5, 0x68]
	str r0, [r5, 0x6C]
	adds r0, r5, 0
	adds r0, 0xE4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _080695CE
	ldr r0, [r4, 0x8]
	str r0, [r5, 0x68]
	b _080695CE
_080695C4:
	ldr r0, [r4, 0x4]
	str r0, [r5, 0x68]
	str r0, [r5, 0x6C]
	str r0, [r5, 0x70]
	str r0, [r5, 0x74]
_080695CE:
	mov r1, r10
	ldrb r0, [r1, 0x9]
	adds r1, r4, 0
	adds r1, 0x25
	strb r0, [r1]
	adds r0, r4, 0
	bl sub_806CF98
_080695DE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80694C0

	thumb_func_start sub_80695EC
sub_80695EC:
	push {r4-r7,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	adds r7, r2, 0
	ldr r1, [r4, 0x70]
	adds r5, r1, 0
	adds r0, r1, 0
	adds r0, 0xB0
	ldrb r0, [r0]
	subs r0, 0x3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08069612
	adds r0, r1, 0
	adds r0, 0x9C
	ldr r0, [r0]
	bl sub_8076CB4
_08069612:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	cmp r6, r0
	bne _08069622
	movs r1, 0x6
	ldrsh r0, [r4, r1]
	cmp r7, r0
	beq _08069658
_08069622:
	ldrh r0, [r4, 0x4]
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0x6]
	strh r0, [r4, 0xA]
	strh r6, [r4, 0x4]
	strh r7, [r4, 0x6]
	ldr r0, [r5, 0x70]
	str r0, [r5, 0x74]
	ldr r0, [r5, 0x6C]
	str r0, [r5, 0x70]
	ldr r0, [r5, 0x68]
	str r0, [r5, 0x6C]
	adds r0, r5, 0
	adds r0, 0xE4
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08069648
	ldr r0, [r4, 0x8]
	str r0, [r5, 0x68]
_08069648:
	adds r0, r6, 0
	adds r1, r7, 0
	bl GetMapTile_1
	ldrb r1, [r0, 0x9]
	adds r0, r4, 0
	adds r0, 0x25
	strb r1, [r0]
_08069658:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80695EC

	thumb_func_start sub_8069660
sub_8069660:
	push {r4,r5,lr}
	adds r4, r0, 0
	ldr r0, [r4, 0x70]
	adds r5, r0, 0
	adds r5, 0x46
	ldrb r1, [r5]
	adds r0, r4, 0
	bl sub_8070F80
	lsls r0, 24
	cmp r0, 0
	bne _0806967C
	movs r0, 0
	b _0806969E
_0806967C:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, _080696A4
	ldrb r2, [r5]
	lsls r2, 2
	adds r2, r1
	movs r3, 0
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r3, 0x6
	ldrsh r1, [r4, r3]
	movs r3, 0x2
	ldrsh r2, [r2, r3]
	adds r1, r2
	bl GetMapTile_1
	ldr r0, [r0, 0x10]
_0806969E:
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080696A4: .4byte gAdjacentTileOffsets
	thumb_func_end sub_8069660

	thumb_func_start sub_80696A8
sub_80696A8:
	push {r4,r5,lr}
	adds r4, r0, 0
	ldr r0, [r4, 0x70]
	adds r5, r0, 0
	adds r5, 0x46
	ldrb r1, [r5]
	adds r0, r4, 0
	bl CanAttackInFront
	lsls r0, 24
	cmp r0, 0
	beq _080696F4
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, _080696F0
	ldrb r2, [r5]
	lsls r2, 2
	adds r2, r1
	movs r3, 0
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r3, 0x6
	ldrsh r1, [r4, r3]
	movs r3, 0x2
	ldrsh r2, [r2, r3]
	adds r1, r2
	bl GetMapTile_1
	ldr r1, [r0, 0x10]
	cmp r1, 0
	beq _080696F4
	ldr r0, [r1]
	cmp r0, 0x1
	bne _080696F4
	adds r0, r1, 0
	b _080696F6
	.align 2, 0
_080696F0: .4byte gAdjacentTileOffsets
_080696F4:
	movs r0, 0
_080696F6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80696A8

	thumb_func_start sub_80696FC
sub_80696FC:
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldr r3, [r4, 0x70]
	ldr r5, _08069764
	adds r3, 0x46
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r5
	ldrh r0, [r0]
	ldrh r1, [r4, 0x4]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _08069768
	ldr r2, [sp]
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r5
	ldrh r0, [r0, 0x2]
	ldrh r1, [r4, 0x6]
	adds r0, r1
	lsls r0, 16
	ldr r1, _0806976C
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	movs r2, 0
	ldrsh r0, [r0, r2]
	asrs r1, 16
	bl GetMapTile_1
	adds r5, r0, 0
	adds r0, r4, 0
	mov r1, sp
	bl sub_80705F0
	lsls r0, 24
	cmp r0, 0
	bne _08069770
	ldr r1, [r5, 0x10]
	cmp r1, 0
	beq _08069770
	ldr r0, [r1]
	cmp r0, 0x1
	bne _08069770
	adds r0, r1, 0
	b _08069772
	.align 2, 0
_08069764: .4byte gAdjacentTileOffsets
_08069768: .4byte 0xffff0000
_0806976C: .4byte 0x0000ffff
_08069770:
	movs r0, 0
_08069772:
	add sp, 0x4
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80696FC

	thumb_func_start sub_806977C
sub_806977C:
	push {r4-r7,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldr r0, [r4, 0x70]
	ldr r7, _0806982C
	adds r5, r0, 0
	adds r5, 0x46
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldrh r0, [r0]
	ldrh r1, [r4, 0x4]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _08069830
	ldr r2, [sp]
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldrh r0, [r0, 0x2]
	ldrh r1, [r4, 0x6]
	adds r0, r1
	lsls r0, 16
	ldr r1, _08069834
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	movs r2, 0
	ldrsh r0, [r0, r2]
	asrs r1, 16
	bl GetMapTile_1
	mov r6, sp
	adds r0, r4, 0
	mov r1, sp
	bl sub_80705F0
	lsls r0, 24
	cmp r0, 0
	bne _08069838
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	ldrsh r0, [r0, r1]
	lsls r0, 1
	ldrh r2, [r4, 0x4]
	adds r0, r2
	mov r1, sp
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	movs r1, 0x2
	ldrsh r0, [r0, r1]
	lsls r0, 1
	ldrh r2, [r4, 0x6]
	adds r0, r2
	strh r0, [r6, 0x2]
	mov r0, sp
	movs r1, 0
	ldrsh r0, [r0, r1]
	movs r2, 0x2
	ldrsh r1, [r6, r2]
	bl GetMapTile_1
	adds r5, r0, 0
	adds r0, r4, 0
	mov r1, sp
	bl sub_80705F0
	lsls r0, 24
	cmp r0, 0
	bne _08069838
	ldr r1, [r5, 0x10]
	cmp r1, 0
	beq _08069838
	ldr r0, [r1]
	cmp r0, 0x1
	bne _08069838
	adds r0, r1, 0
	b _0806983A
	.align 2, 0
_0806982C: .4byte gAdjacentTileOffsets
_08069830: .4byte 0xffff0000
_08069834: .4byte 0x0000ffff
_08069838:
	movs r0, 0
_0806983A:
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_806977C

	thumb_func_start sub_8069844
sub_8069844:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	mov r8, r1
	ldr r5, [r1, 0x70]
	adds r0, r6, 0x2
	adds r1, r5, 0
	movs r2, 0
	bl SetMessageArgument_2
	ldrh r0, [r5, 0x2]
	strh r0, [r6]
	movs r1, 0xE
	ldrsh r0, [r5, r1]
	str r0, [r6, 0x24]
	movs r2, 0x10
	ldrsh r0, [r5, r2]
	str r0, [r6, 0x28]
	ldrb r0, [r5, 0x9]
	str r0, [r6, 0x2C]
	ldr r0, [r5, 0x18]
	str r0, [r6, 0x30]
	movs r2, 0
_08069874:
	adds r1, r6, 0
	adds r1, 0x34
	adds r1, r2
	adds r0, r5, 0
	adds r0, 0x14
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r6, 0
	adds r1, 0x36
	adds r1, r2
	adds r0, r5, 0
	adds r0, 0x16
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r6, 0
	adds r1, 0x16
	adds r1, r2
	adds r0, r5, 0
	adds r0, 0x5C
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r6, 0
	adds r1, 0x18
	adds r1, r2
	adds r0, r5, 0
	adds r0, 0x5E
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, 0x1
	ble _08069874
	ldrb r2, [r5, 0x7]
	adds r1, r6, 0
	adds r1, 0x38
	movs r0, 0
	strb r2, [r1]
	adds r2, r6, 0
	adds r2, 0x39
	strb r0, [r2]
	adds r3, r6, 0
	adds r3, 0x3A
	strb r0, [r3]
	adds r4, r6, 0
	adds r4, 0x3B
	strb r0, [r4]
	movs r7, 0x3C
	adds r7, r6
	mov r12, r7
	strb r0, [r7]
	adds r0, r5, 0
	adds r0, 0x60
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806995C
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0806995C
	adds r1, r5, 0
	adds r1, 0x62
	ldrb r0, [r1]
	cmp r0, 0x13
	bne _08069908
	ldr r0, _080699A4
	ldrb r0, [r0]
	ldrb r7, [r2]
	adds r0, r7
	strb r0, [r2]
_08069908:
	ldrb r0, [r1]
	cmp r0, 0x2B
	bne _08069918
	ldr r0, _080699A8
	ldrb r0, [r0]
	ldrb r7, [r2]
	adds r0, r7
	strb r0, [r2]
_08069918:
	ldrb r0, [r1]
	cmp r0, 0x21
	bne _08069928
	ldr r0, _080699AC
	ldrb r0, [r0]
	ldrb r2, [r3]
	adds r0, r2
	strb r0, [r3]
_08069928:
	ldrb r0, [r1]
	cmp r0, 0x2B
	bne _08069938
	ldr r0, _080699A8
	ldrb r0, [r0]
	ldrb r7, [r3]
	adds r0, r7
	strb r0, [r3]
_08069938:
	ldrb r0, [r1]
	cmp r0, 0x1E
	bne _08069948
	ldr r0, _080699B0
	ldrb r0, [r0]
	ldrb r2, [r4]
	adds r0, r2
	strb r0, [r4]
_08069948:
	ldrb r0, [r1]
	cmp r0, 0x22
	bne _0806995C
	ldr r0, _080699B4
	ldrb r0, [r0]
	mov r7, r12
	ldrb r7, [r7]
	adds r0, r7
	mov r1, r12
	strb r0, [r1]
_0806995C:
	adds r0, r5, 0
	adds r0, 0x94
	ldrb r1, [r0]
	adds r0, r6, 0
	adds r0, 0x54
	strb r1, [r0]
	ldr r0, [r5, 0x60]
	str r0, [r6, 0x20]
	ldrh r0, [r5, 0xC]
	movs r1, 0
	strh r0, [r6, 0x3E]
	ldr r0, [r5, 0x40]
	str r0, [r6, 0x1C]
	adds r0, r6, 0
	adds r0, 0x44
	strb r1, [r0]
	adds r0, 0x4
	strb r1, [r0]
	adds r0, r5, 0
	adds r0, 0x8C
	ldr r0, [r0]
	str r0, [r6, 0x50]
	ldr r0, _080699B8
	ldr r0, [r0]
	ldr r2, _080699BC
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _080699C0
	adds r0, r5, 0
	bl sub_806A4DC
	adds r1, r6, 0
	adds r1, 0x4C
	b _080699C6
	.align 2, 0
_080699A4: .4byte gUnknown_810AC60
_080699A8: .4byte gUnknown_810AC68
_080699AC: .4byte gUnknown_810AC62
_080699B0: .4byte gUnknown_810AC64
_080699B4: .4byte gUnknown_810AC66
_080699B8: .4byte gDungeonGlobalData
_080699BC: .4byte 0x0000065a
_080699C0:
	adds r1, r6, 0
	adds r1, 0x4C
	movs r0, 0x3
_080699C6:
	strb r0, [r1]
	movs r4, 0
	movs r7, 0x10
	ldrsh r0, [r5, r7]
	cmp r0, 0
	bge _080699D4
	adds r0, 0x3
_080699D4:
	movs r2, 0xE
	ldrsh r1, [r5, r2]
	asrs r0, 2
	cmp r1, r0
	bgt _080699E8
	adds r1, r6, 0
	adds r1, 0x58
	movs r0, 0x6
	strb r0, [r1]
	movs r4, 0x1
_080699E8:
	ldr r0, _08069A24
	ldr r0, [r0]
	ldr r7, _08069A28
	adds r0, r7
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069A02
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0xB
	strb r1, [r0]
	adds r4, 0x1
_08069A02:
	movs r1, 0x9E
	lsls r1, 1
	adds r0, r5, r1
	ldr r0, [r0]
	bl RoundUpFixedPoint
	cmp r0, 0
	bne _08069A38
	ldrb r0, [r5, 0x7]
	cmp r0, 0
	beq _08069A2C
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x13
	b _08069A34
	.align 2, 0
_08069A24: .4byte gDungeonGlobalData
_08069A28: .4byte 0x00000676
_08069A2C:
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x3B
_08069A34:
	strb r1, [r0]
	adds r4, 0x1
_08069A38:
	mov r2, r8
	ldr r0, [r2, 0x70]
	movs r7, 0x82
	lsls r7, 1
	adds r2, r0, r7
	ldr r0, [r2]
	cmp r0, 0x1
	ble _08069A54
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x1B
	strb r1, [r0]
	adds r4, 0x1
_08069A54:
	ldr r0, [r2]
	cmp r0, 0
	bgt _08069A66
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x28
	strb r1, [r0]
	adds r4, 0x1
_08069A66:
	ldr r0, [r5, 0x2C]
	cmp r0, 0xFF
	ble _08069AAE
	ldr r0, [r5, 0x30]
	cmp r0, 0xFF
	ble _08069AAE
	ldr r0, [r5, 0x34]
	cmp r0, 0xFF
	ble _08069AAE
	ldr r0, [r5, 0x38]
	cmp r0, 0xFF
	ble _08069AAE
	movs r1, 0x1C
	ldrsh r0, [r5, r1]
	cmp r0, 0x9
	ble _08069AAE
	movs r2, 0x1E
	ldrsh r0, [r5, r2]
	cmp r0, 0x9
	ble _08069AAE
	movs r7, 0x20
	ldrsh r0, [r5, r7]
	cmp r0, 0x9
	ble _08069AAE
	movs r1, 0x22
	ldrsh r0, [r5, r1]
	cmp r0, 0x9
	ble _08069AAE
	movs r2, 0x24
	ldrsh r0, [r5, r2]
	cmp r0, 0x9
	ble _08069AAE
	movs r7, 0x26
	ldrsh r0, [r5, r7]
	cmp r0, 0x9
	bgt _08069ABA
_08069AAE:
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x37
	strb r1, [r0]
	adds r4, 0x1
_08069ABA:
	adds r0, r5, 0
	adds r0, 0xA8
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069AD2
	cmp r4, 0xB
	bgt _08069AD2
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	strb r1, [r0]
	adds r4, 0x1
_08069AD2:
	adds r0, r5, 0
	adds r0, 0xAC
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069AEC
	cmp r4, 0xB
	bgt _08069AEC
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x6
	strb r1, [r0]
	adds r4, 0x1
_08069AEC:
	adds r0, r5, 0
	adds r0, 0xB0
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B06
	cmp r4, 0xB
	bgt _08069B06
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0xB
	strb r1, [r0]
	adds r4, 0x1
_08069B06:
	adds r0, r5, 0
	adds r0, 0xBC
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B20
	cmp r4, 0xB
	bgt _08069B20
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x13
	strb r1, [r0]
	adds r4, 0x1
_08069B20:
	adds r0, r5, 0
	adds r0, 0xC0
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B3A
	cmp r4, 0xB
	bgt _08069B3A
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x1B
	strb r1, [r0]
	adds r4, 0x1
_08069B3A:
	adds r0, r5, 0
	adds r0, 0xC4
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B54
	cmp r4, 0xB
	bgt _08069B54
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x28
	strb r1, [r0]
	adds r4, 0x1
_08069B54:
	adds r0, r5, 0
	adds r0, 0xC8
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B6E
	cmp r4, 0xB
	bgt _08069B6E
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x37
	strb r1, [r0]
	adds r4, 0x1
_08069B6E:
	adds r0, r5, 0
	adds r0, 0xD0
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069B88
	cmp r4, 0xB
	bgt _08069B88
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x3B
	strb r1, [r0]
	adds r4, 0x1
_08069B88:
	adds r0, r5, 0
	adds r0, 0xDC
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069BA2
	cmp r4, 0xB
	bgt _08069BA2
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x3E
	strb r1, [r0]
	adds r4, 0x1
_08069BA2:
	adds r0, r5, 0
	adds r0, 0xE0
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069BBC
	cmp r4, 0xB
	bgt _08069BBC
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x43
	strb r1, [r0]
	adds r4, 0x1
_08069BBC:
	adds r0, r5, 0
	adds r0, 0xE4
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069BD6
	cmp r4, 0xB
	bgt _08069BD6
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x46
	strb r1, [r0]
	adds r4, 0x1
_08069BD6:
	adds r0, r5, 0
	adds r0, 0xE8
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069BF0
	cmp r4, 0xB
	bgt _08069BF0
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x4A
	strb r1, [r0]
	adds r4, 0x1
_08069BF0:
	adds r0, r5, 0
	adds r0, 0xEC
	ldrb r1, [r0]
	cmp r1, 0
	beq _08069C0A
	cmp r4, 0xB
	bgt _08069C0A
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	adds r1, 0x4E
	strb r1, [r0]
	adds r4, 0x1
_08069C0A:
	movs r1, 0x89
	lsls r1, 1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069C26
	cmp r4, 0xB
	bgt _08069C26
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x50
	strb r1, [r0]
	adds r4, 0x1
_08069C26:
	adds r0, r5, 0
	adds r0, 0xF0
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069C40
	cmp r4, 0xB
	bgt _08069C40
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x51
	strb r1, [r0]
	adds r4, 0x1
_08069C40:
	adds r0, r5, 0
	adds r0, 0xF1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069C5A
	cmp r4, 0xB
	bgt _08069C5A
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x52
	strb r1, [r0]
	adds r4, 0x1
_08069C5A:
	adds r0, r5, 0
	adds r0, 0xF4
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069C74
	cmp r4, 0xB
	bgt _08069C74
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x53
	strb r1, [r0]
	adds r4, 0x1
_08069C74:
	adds r0, r5, 0
	adds r0, 0xF5
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069C8E
	cmp r4, 0xB
	bgt _08069C8E
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x54
	strb r1, [r0]
	adds r4, 0x1
_08069C8E:
	mov r0, r8
	bl ShouldAvoidEnemies
	lsls r0, 24
	cmp r0, 0
	beq _08069CAA
	cmp r4, 0xB
	bgt _08069CAA
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x55
	strb r1, [r0]
	adds r4, 0x1
_08069CAA:
	adds r0, r5, 0
	adds r0, 0xFD
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069CC4
	cmp r4, 0xB
	bgt _08069CC4
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x56
	strb r1, [r0]
	adds r4, 0x1
_08069CC4:
	mov r0, r8
	movs r1, 0
	bl sub_8070828
	cmp r0, 0x1
	ble _08069CE0
	cmp r4, 0xB
	bgt _08069CE0
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x57
	strb r1, [r0]
	adds r4, 0x1
_08069CE0:
	adds r0, r5, 0
	adds r0, 0xF2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069CFA
	cmp r4, 0xB
	bgt _08069D0E
	adds r0, r6, 0
	adds r0, 0x58
	adds r0, r4
	movs r1, 0x58
	strb r1, [r0]
	adds r4, 0x1
_08069CFA:
	cmp r4, 0xB
	bgt _08069D0E
	adds r1, r6, 0
	adds r1, 0x58
	movs r2, 0
_08069D04:
	adds r0, r1, r4
	strb r2, [r0]
	adds r4, 0x1
	cmp r4, 0xB
	ble _08069D04
_08069D0E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8069844

	thumb_func_start sub_8069D18
sub_8069D18:
	push {r4,r5,lr}
	ldr r3, [r1, 0x70]
	ldr r4, _08069D48
	adds r3, 0x46
	ldrb r2, [r3]
	lsls r2, 2
	adds r2, r4
	ldrh r2, [r2]
	ldrh r5, [r1, 0x4]
	adds r2, r5
	strh r2, [r0]
	ldrb r2, [r3]
	lsls r2, 2
	adds r2, r4
	ldrh r2, [r2, 0x2]
	ldrh r1, [r1, 0x6]
	adds r2, r1
	strh r2, [r0, 0x2]
	ldrb r1, [r3]
	movs r0, 0x1
	ands r0, r1
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_08069D48: .4byte gAdjacentTileOffsets
	thumb_func_end sub_8069D18

	thumb_func_start sub_8069D4C
sub_8069D4C:
	push {r4-r6,lr}
	sub sp, 0xC
	adds r5, r0, 0
	ldr r4, [r1, 0x70]
	ldrh r0, [r4, 0x2]
	strh r0, [r5]
	ldr r0, [r1, 0x4]
	str r0, [r5, 0x4]
	adds r0, r4, 0
	adds r0, 0xF7
	ldrb r0, [r0]
	cmp r0, 0
	beq _08069D6A
	ldrh r0, [r4, 0x12]
	b _08069D6C
_08069D6A:
	ldrh r0, [r4, 0x10]
_08069D6C:
	strh r0, [r5, 0x8]
	ldrb r0, [r4, 0x9]
	strh r0, [r5, 0xE]
	movs r0, 0x2
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, 0x9]
	mov r0, sp
	bl GetPokemonLevelData
	ldr r0, [sp]
	str r0, [r5, 0x10]
	ldrb r0, [r4, 0x14]
	strb r0, [r5, 0xA]
	ldrb r0, [r4, 0x15]
	strb r0, [r5, 0xB]
	ldrb r0, [r4, 0x16]
	strb r0, [r5, 0xC]
	ldrb r0, [r4, 0x17]
	strb r0, [r5, 0xD]
	ldr r0, [r4, 0x60]
	str r0, [r5, 0x1C]
	adds r1, r5, 0
	adds r1, 0x20
	movs r2, 0x8C
	lsls r2, 1
	adds r0, r4, r2
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	movs r3, 0x9E
	lsls r3, 1
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r5, 0x14]
	movs r6, 0xA0
	lsls r6, 1
	adds r0, r4, r6
	ldr r0, [r0]
	str r0, [r5, 0x18]
	ldr r0, [r4, 0x3C]
	str r0, [r5, 0x44]
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8069D4C

	.align 2, 0
