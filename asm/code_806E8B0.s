	#include "asm/constants/gba_constants.inc"
  	#include "asm/macros.inc"

  	.syntax unified

  	.text

	thumb_func_start sub_806E8B0
sub_806E8B0:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	adds r6, r0, 0
	mov r9, r1
	adds r0, r2, 0
	str r3, [sp]
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0x1
	movs r1, 0x1
	mov r8, r1
	movs r2, 0x1
	str r2, [sp, 0x4]
	str r1, [sp, 0x8]
	bl sub_8092354
	movs r2, 0
	mov r10, r2
	lsls r0, 24
	cmp r0, 0
	bne _0806E8E6
	movs r0, 0x1
	mov r10, r0
_0806E8E6:
	adds r0, r6, 0
	movs r1, 0x11
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806E92C
	ldr r5, [r6, 0x70]
	adds r0, r6, 0
	bl HasNegativeStatus
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl SetVisualFlags
	lsls r0, 24
	lsrs r0, 24
	cmp r4, 0
	beq _0806E916
	movs r7, 0x2
_0806E916:
	cmp r0, 0
	beq _0806E92C
	adds r0, r6, 0
	bl sub_80428B0
	ldr r0, _0806EADC
	ldr r2, [r0]
	adds r0, r6, 0
	mov r1, r9
	bl sub_80522F4
_0806E92C:
	adds r0, r6, 0
	movs r1, 0x22
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	bne _0806E948
	adds r0, r6, 0
	movs r1, 0x4B
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806E98E
_0806E948:
	ldr r2, [r6, 0x70]
	movs r4, 0
	ldr r0, [sp, 0x30]
	cmp r0, 0x20
	bgt _0806E95A
	mov r1, r10
	cmp r1, 0
	bne _0806E95A
	movs r4, 0x1
_0806E95A:
	movs r1, 0x80
	lsls r1, 1
	adds r0, r2, 0
	adds r2, r4, 0
	bl SetVisualFlags
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r4, 0
	beq _0806E978
	lsls r0, r7, 1
	adds r7, r0, r7
	mov r2, r8
	lsls r2, 1
	mov r8, r2
_0806E978:
	cmp r1, 0
	beq _0806E98E
	adds r0, r6, 0
	bl sub_80428C4
	ldr r0, _0806EAE0
	ldr r2, [r0]
	adds r0, r6, 0
	mov r1, r9
	bl sub_80522F4
_0806E98E:
	adds r0, r6, 0
	movs r1, 0x30
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806E9AC
	mov r0, r10
	cmp r0, 0
	bne _0806E9AC
	lsls r0, r7, 1
	adds r7, r0, r7
	mov r1, r8
	lsls r1, 1
	mov r8, r1
_0806E9AC:
	ldr r0, [r6, 0x70]
	ldrb r0, [r0, 0x6]
	movs r4, 0x1
	cmp r0, 0
	beq _0806E9B8
	movs r4, 0
_0806E9B8:
	adds r0, r6, 0
	movs r1, 0x38
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806E9EA
	mov r2, r10
	cmp r2, 0x1
	bne _0806E9EA
	ldr r0, _0806EAE4
	ldr r0, [r0]
	ldr r1, _0806EAE8
	adds r0, r1
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806E9EA
	lsls r0, r7, 4
	subs r7, r0, r7
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 1
	mov r8, r0
_0806E9EA:
	adds r0, r6, 0
	movs r1, 0x3F
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806EA1C
	mov r0, r10
	cmp r0, 0x1
	bne _0806EA1C
	ldr r0, _0806EAE4
	ldr r0, [r0]
	ldr r1, _0806EAEC
	adds r0, r1
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806EA1C
	lsls r0, r7, 4
	subs r7, r0, r7
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 1
	mov r8, r0
_0806EA1C:
	mov r0, r9
	movs r1, 0x6
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806EA38
	mov r0, r10
	cmp r0, 0
	bne _0806EA38
	lsls r7, 2
	mov r1, r8
	lsls r0, r1, 2
	add r8, r0
_0806EA38:
	mov r0, r9
	movs r1, 0x34
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806EA90
	mov r2, r10
	cmp r2, 0
	bne _0806EA90
	mov r0, r9
	ldr r5, [r0, 0x70]
	bl HasNegativeStatus
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x8
	adds r2, r4, 0
	bl SetVisualFlags
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r4, 0
	beq _0806EA7A
	ldr r2, [sp, 0x4]
	lsls r0, r2, 1
	adds r2, r0, r2
	str r2, [sp, 0x4]
	ldr r0, [sp, 0x8]
	lsls r0, 1
	str r0, [sp, 0x8]
_0806EA7A:
	cmp r1, 0
	beq _0806EA90
	mov r0, r9
	bl sub_8042940
	ldr r0, _0806EAF0
	ldr r2, [r0]
	adds r0, r6, 0
	mov r1, r9
	bl sub_80522F4
_0806EA90:
	ldr r1, [sp]
	ldr r0, [r1]
	muls r0, r7
	str r0, [r1]
	ldr r2, [sp, 0x2C]
	ldr r0, [r2]
	ldr r1, [sp, 0x4]
	muls r0, r1
	str r0, [r2]
	mov r2, r8
	cmp r2, 0x1
	beq _0806EAB6
	ldr r1, [sp]
	ldr r0, [r1]
	mov r1, r8
	bl __divsi3
	ldr r2, [sp]
	str r0, [r2]
_0806EAB6:
	ldr r0, [sp, 0x8]
	cmp r0, 0x1
	beq _0806EACA
	ldr r1, [sp, 0x2C]
	ldr r0, [r1]
	ldr r1, [sp, 0x8]
	bl __divsi3
	ldr r2, [sp, 0x2C]
	str r0, [r2]
_0806EACA:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EADC: .4byte gUnknown_80FEE04
_0806EAE0: .4byte gUnknown_80FEE2C
_0806EAE4: .4byte gDungeonGlobalData
_0806EAE8: .4byte 0x000037fa
_0806EAEC: .4byte 0x000037f8
_0806EAF0: .4byte gUnknown_80FEE54
	thumb_func_end sub_806E8B0

	thumb_func_start sub_806EAF4
sub_806EAF4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8C
	str r0, [sp, 0x70]
	mov r9, r1
	adds r7, r3, 0
	ldr r0, [sp, 0xB8]
	ldr r1, [sp, 0xBC]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x74]
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x78]
	ldr r0, [sp, 0x70]
	ldr r0, [r0, 0x70]
	mov r10, r0
	mov r1, r9
	ldr r1, [r1, 0x70]
	str r1, [sp, 0x7C]
	adds r0, r2, 0
	bl sub_8092354
	movs r2, 0
	str r2, [sp, 0x80]
	lsls r0, 24
	cmp r0, 0
	bne _0806EB3A
	movs r3, 0x1
	str r3, [sp, 0x80]
_0806EB3A:
	bl sub_806F500
	mov r6, r10
	ldrb r0, [r6, 0x7]
	cmp r0, 0
	bne _0806EB72
	movs r0, 0x9E
	lsls r0, 1
	add r0, r10
	ldr r0, [r0]
	bl RoundUpFixedPoint
	adds r1, r0, 0
	cmp r1, 0
	bne _0806EB72
	movs r0, 0x1
	ldr r2, [sp, 0xB0]
	str r0, [r2]
	str r1, [r2, 0x4]
	movs r0, 0x2
	str r0, [r2, 0x8]
	add r3, sp, 0x74
	ldrb r3, [r3]
	strb r3, [r2, 0xC]
	strb r1, [r2, 0xD]
	strb r1, [r2, 0xE]
	strb r1, [r2, 0xF]
	b _0806F294
_0806EB72:
	ldr r0, _0806EBA4
	cmp r4, r0
	bne _0806EBA8
	mov r0, r9
	movs r1, 0x35
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806EBA8
	movs r0, 0x1
	ldr r6, [sp, 0xB0]
	str r0, [r6]
	movs r1, 0
	str r1, [r6, 0x4]
	movs r0, 0x2
	str r0, [r6, 0x8]
	add r0, sp, 0x74
	ldrb r0, [r0]
	strb r0, [r6, 0xC]
	strb r1, [r6, 0xD]
	strb r1, [r6, 0xE]
	strb r1, [r6, 0xF]
	b _0806F294
	.align 2, 0
_0806EBA4: .4byte 0x00000163
_0806EBA8:
	add r1, sp, 0x74
	ldrb r2, [r1]
	ldr r1, [sp, 0xB0]
	strb r2, [r1, 0xC]
	ldr r1, _0806EDA4
	ldr r0, [r1]
	movs r2, 0x9A
	lsls r2, 1
	adds r0, r2
	add r3, sp, 0x74
	ldrb r3, [r3]
	strb r3, [r0]
	ldr r2, [r1]
	movs r6, 0x9C
	lsls r6, 1
	adds r0, r2, r6
	ldr r1, [sp, 0x80]
	str r1, [r0]
	lsls r1, 1
	mov r0, r10
	adds r0, 0x1C
	adds r0, r1
	movs r3, 0
	ldrsh r4, [r0, r3]
	mov r8, r1
	ldr r6, [sp, 0x78]
	cmp r6, 0
	beq _0806EBF8
	ldr r0, [sp, 0x74]
	cmp r0, 0x2
	bne _0806EBF8
	mov r1, r10
	movs r3, 0x28
	ldrsh r0, [r1, r3]
	adds r4, r0
	ldrh r1, [r1, 0x28]
	movs r6, 0xA2
	lsls r6, 1
	adds r0, r2, r6
	strh r1, [r0]
_0806EBF8:
	mov r0, r10
	movs r2, 0x4
	ldrsh r1, [r0, r2]
	ldr r0, _0806EDA8
	cmp r1, r0
	bne _0806EC06
	adds r4, 0x2
_0806EC06:
	movs r0, 0xD1
	lsls r0, 1
	cmp r1, r0
	bne _0806EC10
	subs r4, 0x2
_0806EC10:
	ldr r0, _0806EDAC
	cmp r1, r0
	bne _0806EC18
	subs r4, 0x2
_0806EC18:
	cmp r4, 0
	bge _0806EC1E
	movs r4, 0
_0806EC1E:
	cmp r4, 0x14
	ble _0806EC24
	movs r4, 0x14
_0806EC24:
	ldr r6, _0806EDA4
	ldr r0, [r6]
	movs r3, 0x9F
	lsls r3, 1
	adds r0, r3
	strb r4, [r0]
	ldr r1, [r6]
	mov r5, r10
	adds r5, 0x14
	ldr r0, [sp, 0x80]
	adds r2, r5, r0
	ldrb r0, [r2]
	adds r0, r7
	adds r3, 0x2
	adds r1, r3
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, r7
	lsls r0, 8
	ldr r2, _0806EDB0
	lsls r1, r4, 2
	adds r1, r2
	ldr r1, [r1]
	bl sub_8009DA4
	adds r2, r0, 0
	ldr r0, [sp, 0x80]
	lsls r4, r0, 2
	mov r0, r10
	adds r0, 0x2C
	adds r0, r4
	ldr r1, [r0]
	adds r0, r2, 0
	bl sub_8009DA4
	adds r2, r0, 0
	str r5, [sp, 0x88]
	cmp r2, 0
	bge _0806EC74
	adds r0, 0xFF
_0806EC74:
	asrs r0, 8
	str r0, [sp, 0x8]
	ldr r0, [sp, 0x7C]
	adds r0, 0x20
	add r0, r8
	movs r1, 0
	ldrsh r3, [r0, r1]
	ldr r2, [sp, 0x80]
	cmp r2, 0
	bne _0806ECA0
	ldr r0, [sp, 0x7C]
	adds r0, 0xC0
	ldrb r0, [r0]
	cmp r0, 0x6
	bne _0806ECA0
	ldr r0, [r6]
	movs r6, 0xBD
	lsls r6, 1
	adds r1, r0, r6
	movs r0, 0x1
	strb r0, [r1]
	adds r3, 0x1
_0806ECA0:
	ldr r0, [sp, 0x7C]
	movs r2, 0x4
	ldrsh r1, [r0, r2]
	ldr r0, _0806EDA8
	cmp r1, r0
	bne _0806ECAE
	subs r3, 0x2
_0806ECAE:
	movs r0, 0xD1
	lsls r0, 1
	cmp r1, r0
	bne _0806ECB8
	adds r3, 0x2
_0806ECB8:
	ldr r0, _0806EDAC
	cmp r1, r0
	bne _0806ECC0
	subs r3, 0x2
_0806ECC0:
	cmp r3, 0
	bge _0806ECC6
	movs r3, 0
_0806ECC6:
	cmp r3, 0x14
	ble _0806ECCC
	movs r3, 0x14
_0806ECCC:
	ldr r5, _0806EDA4
	ldr r0, [r5]
	ldr r6, _0806EDB4
	adds r0, r6
	strb r3, [r0]
	ldr r2, [r5]
	ldr r0, [sp, 0x7C]
	adds r0, 0x16
	ldr r1, [sp, 0x80]
	adds r0, r1
	ldrb r1, [r0]
	adds r6, 0x3
	adds r2, r6
	strh r1, [r2]
	ldrb r0, [r0]
	lsls r0, 8
	ldr r2, _0806EDB8
	lsls r1, r3, 2
	adds r1, r2
	ldr r1, [r1]
	bl sub_8009DA4
	adds r2, r0, 0
	ldr r0, [sp, 0x7C]
	adds r0, 0x34
	adds r0, r4
	ldr r1, [r0]
	adds r0, r2, 0
	bl sub_8009DA4
	cmp r0, 0
	bge _0806ED0E
	adds r0, 0xFF
_0806ED0E:
	asrs r0, 8
	str r0, [sp, 0xC]
	movs r0, 0x64
	bl DungeonRandomCapped
	str r0, [sp, 0x84]
	ldr r0, [sp, 0x80]
	cmp r0, 0
	bne _0806EDC8
	ldr r0, [sp, 0x70]
	movs r1, 0x13
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806ED4A
	ldr r2, _0806EDBC
	movs r3, 0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x8]
	ldr r1, [r5]
	movs r6, 0xB0
	lsls r6, 1
	adds r1, r6
	ldrb r0, [r2]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
_0806ED4A:
	ldr r0, [sp, 0x70]
	movs r1, 0x2B
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806ED74
	ldr r2, _0806EDC0
	movs r3, 0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x8]
	ldr r1, [r5]
	movs r6, 0xB0
	lsls r6, 1
	adds r1, r6
	ldrb r0, [r2]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
_0806ED74:
	ldr r3, [sp, 0x78]
	cmp r3, 0
	beq _0806EE4A
	mov r0, r9
	movs r1, 0x1E
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806EE4A
	ldr r2, _0806EDC4
	movs r6, 0
	ldrsh r1, [r2, r6]
	ldr r0, [sp, 0xC]
	adds r0, r1
	str r0, [sp, 0xC]
	ldr r0, [r5]
	movs r3, 0xB1
	lsls r3, 1
	adds r1, r0, r3
	ldrb r0, [r2]
	ldrb r6, [r1]
	adds r0, r6
	b _0806EE48
	.align 2, 0
_0806EDA4: .4byte gDungeonGlobalData
_0806EDA8: .4byte 0x000001a1
_0806EDAC: .4byte 0x000001a3
_0806EDB0: .4byte gUnknown_80F504C
_0806EDB4: .4byte 0x0000013f
_0806EDB8: .4byte gUnknown_80F50A0
_0806EDBC: .4byte gUnknown_810AC60
_0806EDC0: .4byte gUnknown_810AC68
_0806EDC4: .4byte gUnknown_810AC64
_0806EDC8:
	ldr r0, [sp, 0x78]
	cmp r0, 0
	beq _0806EDF6
	mov r0, r9
	movs r1, 0x22
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806EDF6
	ldr r2, _0806EEF8
	movs r3, 0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, 0xC]
	adds r0, r1
	str r0, [sp, 0xC]
	ldr r0, [r5]
	ldr r6, _0806EEFC
	adds r1, r0, r6
	ldrb r0, [r2]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
_0806EDF6:
	ldr r0, [sp, 0x70]
	movs r1, 0x21
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806EE20
	ldr r2, _0806EF00
	movs r3, 0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x8]
	ldr r0, _0806EF04
	ldr r0, [r0]
	ldr r6, _0806EF08
	adds r1, r0, r6
	ldrb r0, [r2]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
_0806EE20:
	ldr r0, [sp, 0x70]
	movs r1, 0x2B
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806EE4A
	ldr r2, _0806EF0C
	movs r3, 0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x8]
	ldr r0, _0806EF04
	ldr r0, [r0]
	ldr r6, _0806EF08
	adds r1, r0, r6
	ldrb r0, [r2]
	ldrb r2, [r1]
	adds r0, r2
_0806EE48:
	strb r0, [r1]
_0806EE4A:
	ldr r0, _0806EF04
	ldr r2, [r0]
	movs r3, 0xA3
	lsls r3, 1
	adds r1, r2, r3
	add r0, sp, 0x8
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, 0xA4
	lsls r6, 1
	adds r1, r2, r6
	add r4, sp, 0xC
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, [sp, 0x8]
	cmp r0, 0
	bge _0806EE70
	movs r0, 0
	str r0, [sp, 0x8]
_0806EE70:
	ldr r1, _0806EF10
	ldr r0, [sp, 0x8]
	cmp r0, r1
	ble _0806EE7C
	ldr r0, _0806EF14
	str r0, [sp, 0x8]
_0806EE7C:
	movs r3, 0xA8
	lsls r3, 1
	add r3, r10
	ldrh r2, [r3]
	ldr r1, _0806EF18
	adds r0, r1, 0
	ands r0, r2
	strh r0, [r3]
	movs r2, 0xA7
	lsls r2, 1
	add r2, r10
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	str r4, [sp]
	ldr r0, [sp, 0x84]
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x70]
	mov r1, r9
	ldr r2, [sp, 0x74]
	add r3, sp, 0x8
	bl sub_806E8B0
	add r5, sp, 0x10
	ldr r1, [sp, 0x8]
	ldr r0, [sp, 0xC]
	subs r1, r0
	adds r0, r5, 0
	bl sub_800A020
	add r4, sp, 0x18
	adds r0, r4, 0
	movs r1, 0x8
	bl sub_800A020
	adds r0, r5, 0
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_800A3F0
	mov r1, r10
	ldrb r6, [r1, 0x6]
	mov r8, r5
	adds r7, r4, 0
	cmp r6, 0
	bne _0806EF20
	ldrb r1, [r1, 0x9]
	adds r0, r7, 0
	bl sub_800A020
	str r6, [sp, 0x20]
	ldr r0, _0806EF1C
	add r2, sp, 0x20
	str r0, [r2, 0x4]
	adds r0, r7, 0
	adds r1, r7, 0
	bl sub_800A34C
	mov r2, r10
	ldrb r0, [r2, 0x9]
	lsls r0, 1
	b _0806EF60
	.align 2, 0
_0806EEF8: .4byte gUnknown_810AC66
_0806EEFC: .4byte 0x00000163
_0806EF00: .4byte gUnknown_810AC62
_0806EF04: .4byte gDungeonGlobalData
_0806EF08: .4byte 0x00000161
_0806EF0C: .4byte gUnknown_810AC68
_0806EF10: .4byte 0x000003e6
_0806EF14: .4byte 0x000003e7
_0806EF18: .4byte 0x0000feff
_0806EF1C: .4byte 0x0000aaaa
_0806EF20:
	ldr r3, [sp, 0x88]
	ldr r6, [sp, 0x80]
	adds r0, r3, r6
	ldrb r0, [r0]
	str r0, [sp, 0x28]
	movs r0, 0x1
	str r0, [sp, 0x2C]
	add r3, sp, 0x28
	add r0, sp, 0x2C
	str r0, [sp]
	ldr r0, [sp, 0x84]
	str r0, [sp, 0x4]
	ldr r0, [sp, 0x70]
	mov r1, r9
	ldr r2, [sp, 0x74]
	bl sub_806E8B0
	ldr r1, [sp, 0x28]
	adds r0, r7, 0
	bl sub_800A020
	add r4, sp, 0x20
	adds r0, r4, 0
	movs r1, 0x3
	bl sub_800A020
	adds r0, r7, 0
	adds r1, r7, 0
	adds r2, r4, 0
	bl sub_800A3F0
	ldr r0, [sp, 0x28]
_0806EF60:
	movs r1, 0x3
	bl __divsi3
	adds r6, r0, 0
	add r5, sp, 0x30
	adds r0, r5, 0
	mov r1, r8
	adds r2, r7, 0
	bl sub_800A6D0
	ldr r4, _0806F098
	ldr r0, [r4]
	movs r1, 0xA5
	lsls r1, 1
	adds r0, r1
	movs r2, 0
	mov r8, r2
	strh r6, [r0]
	adds r0, r5, 0
	bl sub_800A048
	ldr r1, [r4]
	movs r3, 0xA6
	lsls r3, 1
	adds r1, r3
	strh r0, [r1]
	ldr r0, [sp, 0x30]
	ldr r1, [sp, 0x34]
	str r0, [sp, 0x38]
	str r1, [sp, 0x3C]
	str r0, [sp, 0x48]
	str r1, [sp, 0x4C]
	add r6, sp, 0x38
	adds r0, r6, 0
	adds r1, r6, 0
	adds r2, r6, 0
	bl sub_800A34C
	mov r0, r8
	str r0, [sp, 0x40]
	ldr r0, _0806F09C
	add r5, sp, 0x40
	str r0, [r5, 0x4]
	adds r0, r6, 0
	adds r1, r6, 0
	adds r2, r5, 0
	bl sub_800A34C
	adds r0, r5, 0
	movs r1, 0x2
	bl sub_800A020
	add r4, sp, 0x48
	adds r0, r4, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_800A34C
	ldr r1, [sp, 0xC]
	adds r0, r5, 0
	bl sub_800A020
	adds r0, r4, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_800A6F0
	adds r0, r5, 0
	movs r1, 0xA
	bl sub_800A020
	adds r0, r4, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_800A6D0
	add r5, sp, 0x50
	adds r0, r5, 0
	adds r1, r6, 0
	adds r2, r4, 0
	bl sub_800A6D0
	ldr r4, _0806F0A0
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_800A2F0
	lsls r0, 24
	mov r8, r5
	cmp r0, 0
	beq _0806F01E
	ldr r0, [r4]
	ldr r1, [r4, 0x4]
	str r0, [sp, 0x50]
	str r1, [sp, 0x54]
_0806F01E:
	ldr r4, _0806F0A4
	mov r0, r8
	adds r1, r4, 0
	bl sub_800A2F0
	lsls r0, 24
	cmp r0, 0
	beq _0806F036
	ldr r0, [r4]
	ldr r1, [r4, 0x4]
	str r0, [sp, 0x50]
	str r1, [sp, 0x54]
_0806F036:
	add r4, sp, 0x58
	ldr r1, [sp, 0xB0]
	str r1, [sp]
	adds r0, r4, 0
	ldr r1, [sp, 0x70]
	mov r2, r9
	ldr r3, [sp, 0x74]
	bl sub_806E100
	lsls r0, 24
	lsrs r5, r0, 24
	adds r7, r4, 0
	ldr r2, [sp, 0x74]
	cmp r2, 0x2
	bne _0806F0BC
	mov r0, r9
	bl GetFlashFireStatus
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0806F0BC
	ldr r3, [sp, 0x7C]
	movs r6, 0xA9
	lsls r6, 1
	adds r1, r3, r6
	ldrb r0, [r1]
	cmp r0, 0
	bne _0806F0BC
	ldr r0, [sp, 0x78]
	cmp r0, 0
	beq _0806F118
	movs r0, 0x1
	strb r0, [r1]
	ldr r0, _0806F0A8
	mov r1, r9
	movs r2, 0
	bl SetMessageArgument
	cmp r4, 0x1
	bne _0806F0B0
	ldr r0, _0806F0AC
	ldr r2, [r0]
	ldr r0, [sp, 0x70]
	mov r1, r9
	bl sub_80522F4
	b _0806F0BC
	.align 2, 0
_0806F098: .4byte gDungeonGlobalData
_0806F09C: .4byte 0x00000ccc
_0806F0A0: .4byte gUnknown_8106F24
_0806F0A4: .4byte gUnknown_8106F04
_0806F0A8: .4byte gUnknown_202DFE8
_0806F0AC: .4byte gUnknown_80FAE00
_0806F0B0:
	ldr r0, _0806F15C
	ldr r2, [r0]
	ldr r0, [sp, 0x70]
	mov r1, r9
	bl sub_80522F4
_0806F0BC:
	ldr r1, [sp, 0x78]
	cmp r1, 0
	beq _0806F118
	ldr r2, [sp, 0x80]
	cmp r2, 0
	bne _0806F0EE
	ldr r0, [sp, 0x7C]
	adds r0, 0xC4
	ldrb r4, [r0]
	cmp r4, 0x1
	bne _0806F0EE
	mov r0, r9
	bl sub_8041B74
	ldr r2, _0806F160
	adds r0, r7, 0
	adds r1, r7, 0
	bl sub_800A34C
	ldr r0, _0806F164
	ldr r0, [r0]
	movs r3, 0xB3
	lsls r3, 1
	adds r0, r3
	strb r4, [r0]
_0806F0EE:
	ldr r6, [sp, 0x80]
	cmp r6, 0x1
	bne _0806F118
	ldr r0, [sp, 0x7C]
	adds r0, 0xC4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0806F118
	mov r0, r9
	bl sub_8041B5C
	ldr r2, _0806F160
	adds r0, r7, 0
	adds r1, r7, 0
	bl sub_800A34C
	ldr r0, _0806F164
	ldr r0, [r0]
	ldr r1, _0806F168
	adds r0, r1
	strb r6, [r0]
_0806F118:
	mov r0, r9
	movs r1, 0xC
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	bne _0806F1F4
	mov r0, r9
	movs r1, 0x13
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	bne _0806F1F4
	mov r3, r10
	ldrb r0, [r3, 0x6]
	ldr r4, [sp, 0xAC]
	cmp r0, 0
	beq _0806F140
	movs r4, 0
_0806F140:
	mov r0, r10
	adds r0, 0xDC
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0806F170
	ldr r4, _0806F16C
	ldr r0, _0806F164
	ldr r0, [r0]
	movs r6, 0xB4
	lsls r6, 1
	adds r0, r6
	movs r1, 0x1
	strb r1, [r0]
	b _0806F1DA
	.align 2, 0
_0806F15C: .4byte gUnknown_80FADD8
_0806F160: .4byte gUnknown_8106F1C
_0806F164: .4byte gDungeonGlobalData
_0806F168: .4byte 0x00000167
_0806F16C: .4byte 0x000003e7
_0806F170:
	ldr r0, [sp, 0x70]
	movs r1, 0xC
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806F194
	ldr r0, _0806F2A4
	movs r1, 0
	ldrsh r0, [r0, r1]
	adds r4, r0
	ldr r0, _0806F2A8
	ldr r0, [r0]
	movs r2, 0xB2
	lsls r2, 1
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
_0806F194:
	mov r0, r9
	movs r1, 0xD
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806F1B6
	ldr r0, _0806F2A4
	movs r3, 0
	ldrsh r0, [r0, r3]
	adds r4, r0
	ldr r0, _0806F2A8
	ldr r0, [r0]
	ldr r6, _0806F2AC
	adds r1, r0, r6
	movs r0, 0x1
	strb r0, [r1]
_0806F1B6:
	cmp r5, 0
	beq _0806F1DA
	ldr r0, [sp, 0x70]
	movs r1, 0x1
	bl HasIQSkill
	lsls r0, 24
	cmp r0, 0
	beq _0806F1DA
	ldr r0, _0806F2B0
	movs r1, 0
	ldrsh r4, [r0, r1]
	ldr r0, _0806F2A8
	ldr r0, [r0]
	ldr r2, _0806F2B4
	adds r1, r0, r2
	movs r0, 0x1
	strb r0, [r1]
_0806F1DA:
	movs r0, 0x64
	bl DungeonRandomCapped
	cmp r0, r4
	bge _0806F1F4
	ldr r2, _0806F2B8
	adds r0, r7, 0
	adds r1, r7, 0
	bl sub_800A34C
	movs r0, 0x1
	ldr r3, [sp, 0xB0]
	strb r0, [r3, 0xD]
_0806F1F4:
	mov r0, r8
	bl sub_800A048
	ldr r5, _0806F2A8
	ldr r1, [r5]
	movs r6, 0xAA
	lsls r6, 1
	adds r1, r6
	str r0, [r1]
	mov r0, r8
	mov r1, r8
	adds r2, r7, 0
	bl sub_800A34C
	ldr r0, [r5]
	movs r1, 0xAE
	lsls r1, 1
	adds r0, r1
	ldr r2, [sp, 0xB4]
	str r2, [r0]
	add r4, sp, 0x60
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_800A088
	mov r0, r8
	mov r1, r8
	adds r2, r4, 0
	bl sub_800A34C
	mov r0, r8
	bl sub_800A048
	ldr r1, [r5]
	movs r3, 0xA8
	lsls r3, 1
	adds r1, r3
	str r0, [r1]
	movs r0, 0x80
	lsls r0, 7
	bl DungeonRandomCapped
	movs r6, 0
	str r6, [sp, 0x58]
	movs r1, 0xE0
	lsls r1, 8
	adds r0, r1
	str r0, [r7, 0x4]
	mov r0, r8
	mov r1, r8
	adds r2, r7, 0
	bl sub_800A34C
	add r4, sp, 0x68
	adds r0, r4, 0
	movs r1, 0x64
	bl sub_800A020
	adds r0, r7, 0
	adds r1, r4, 0
	adds r2, r7, 0
	bl sub_800A34C
	adds r0, r7, 0
	bl sub_800A048
	ldr r1, [r5]
	movs r2, 0xAC
	lsls r2, 1
	adds r1, r2
	str r0, [r1]
	mov r0, r8
	bl sub_800A048
	ldr r3, [sp, 0xB0]
	str r0, [r3]
	str r6, [r3, 0x4]
	cmp r0, 0
	bne _0806F294
	strb r0, [r3, 0xD]
_0806F294:
	add sp, 0x8C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2A4: .4byte gUnknown_80F4DAE
_0806F2A8: .4byte gDungeonGlobalData
_0806F2AC: .4byte 0x00000165
_0806F2B0: .4byte gUnknown_80F4DB0
_0806F2B4: .4byte 0x00000169
_0806F2B8: .4byte gUnknown_8106F14
	thumb_func_end sub_806EAF4

	thumb_func_start sub_806F2BC
sub_806F2BC:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x14
	adds r5, r0, 0
	mov r12, r1
	ldr r7, [sp, 0x2C]
	lsls r2, 24
	lsrs r4, r2, 24
	adds r6, r3, 0
	cmp r6, 0
	bgt _0806F2D6
	movs r6, 0x1
_0806F2D6:
	ldr r0, _0806F320
	cmp r6, r0
	ble _0806F2DE
	adds r6, r0, 0
_0806F2DE:
	movs r0, 0
	mov r8, r0
	strb r4, [r7, 0xC]
	str r7, [sp]
	add r0, sp, 0x4
	adds r1, r5, 0
	mov r2, r12
	adds r3, r4, 0
	bl sub_806E100
	add r4, sp, 0xC
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_800A020
	adds r0, r4, 0
	adds r1, r4, 0
	add r2, sp, 0x4
	bl sub_800A34C
	adds r0, r4, 0
	bl sub_800A048
	str r0, [r7]
	mov r0, r8
	str r0, [r7, 0x4]
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F320: .4byte 0x000003e7
	thumb_func_end sub_806F2BC

	thumb_func_start sub_806F324
sub_806F324:
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x94
	mov r8, r0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r4, r3, 16
	asrs r4, 16
	add r0, sp, 0x10
	bl sub_80457DC
	add r2, sp, 0x84
	str r5, [sp, 0x84]
	movs r0, 0x2
	str r0, [r2, 0x8]
	movs r0, 0
	strb r0, [r2, 0xC]
	str r6, [r2, 0x4]
	strb r0, [r2, 0xD]
	strb r0, [r2, 0xE]
	strb r0, [r2, 0xF]
	str r0, [sp]
	str r4, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	add r0, sp, 0x10
	mov r1, r8
	movs r3, 0
	bl sub_806D010
	add sp, 0x94
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_806F324

	thumb_func_start sub_806F370
sub_806F370:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	mov r10, r0
	adds r7, r1, 0
	mov r9, r3
	ldr r0, [sp, 0x50]
	ldr r1, [sp, 0x54]
	ldr r3, [sp, 0x58]
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	asrs r1, 16
	mov r8, r1
	adds r5, r2, 0
	movs r0, 0x2
	str r0, [sp, 0x18]
	str r3, [sp, 0x14]
	add r0, sp, 0x10
	movs r1, 0
	strb r4, [r0, 0xC]
	strb r1, [r0, 0xD]
	strb r1, [r0, 0xE]
	cmp r4, 0
	beq _0806F3FC
	ldr r1, [r7, 0x70]
	movs r2, 0
	lsls r0, r4, 3
	mov r3, sp
	adds r3, 0x20
	str r3, [sp, 0x28]
	ldr r6, _0806F408
	mov r12, r6
	adds r1, 0x5C
	adds r0, r4
	lsls r3, r0, 2
	ldr r4, [sp, 0x28]
_0806F3C0:
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r3
	add r0, r12
	movs r6, 0
	ldrsh r0, [r0, r6]
	stm r4!, {r0}
	adds r2, 0x1
	cmp r2, 0x1
	ble _0806F3C0
	adds r0, r7, 0
	movs r1, 0x35
	bl HasAbility
	lsls r0, 24
	cmp r0, 0
	beq _0806F3FC
	ldr r2, _0806F40C
	ldr r1, [sp, 0x28]
	ldr r0, [r1, 0x4]
	lsls r0, 2
	ldr r1, [sp, 0x20]
	lsls r1, 4
	adds r0, r1
	adds r0, r2
	ldr r0, [r0]
	cmp r0, 0x3
	beq _0806F3FC
	movs r5, 0
_0806F3FC:
	str r5, [sp, 0x10]
	cmp r5, 0
	bne _0806F410
	add r1, sp, 0x10
	movs r0, 0x1
	b _0806F414
	.align 2, 0
_0806F408: .4byte gTypeEffectivenessChart
_0806F40C: .4byte gUnknown_80F54B4
_0806F410:
	add r1, sp, 0x10
	movs r0, 0
_0806F414:
	strb r0, [r1, 0xF]
	mov r3, r9
	str r3, [sp]
	mov r6, r8
	str r6, [sp, 0x4]
	ldr r0, [sp, 0x5C]
	str r0, [sp, 0x8]
	ldr r0, [sp, 0x60]
	str r0, [sp, 0xC]
	mov r0, r10
	adds r1, r7, 0
	add r2, sp, 0x10
	movs r3, 0
	bl sub_806D010
	ldr r0, [sp, 0x4C]
	cmp r0, 0
	beq _0806F440
	add r0, sp, 0x10
	ldrb r0, [r0, 0xF]
	ldr r1, [sp, 0x4C]
	strb r0, [r1]
_0806F440:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_806F370

	thumb_func_start SetShopkeeperAggression
SetShopkeeperAggression:
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r4, [r1, 0x70]
	adds r6, r4, 0
	ldrb r0, [r4, 0x8]
	cmp r0, 0
	beq _0806F47A
	adds r0, r5, 0
	bl GetEntityType
	cmp r0, 0x1
	bne _0806F47A
	ldr r0, [r5, 0x70]
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	beq _0806F476
	movs r0, 0x2
	strb r0, [r4, 0x8]
	b _0806F47A
_0806F476:
	movs r0, 0x3
	strb r0, [r6, 0x8]
_0806F47A:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end SetShopkeeperAggression

	thumb_func_start sub_806F480
sub_806F480:
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	ldr r2, [r0, 0x70]
	adds r3, r2, 0
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _0806F49E
	cmp r1, 0
	beq _0806F49A
	movs r0, 0x2
	strb r0, [r2, 0x8]
	b _0806F49E
_0806F49A:
	movs r0, 0x3
	strb r0, [r3, 0x8]
_0806F49E:
	pop {r0}
	bx r0
	thumb_func_end sub_806F480

	thumb_func_start sub_806F4A4
sub_806F4A4:
	push {r4-r6,lr}
	lsls r1, 24
	lsrs r4, r1, 24
	ldr r5, [r0, 0x70]
	movs r1, 0xE
	bl HasType
	lsls r0, 24
	cmp r0, 0
	beq _0806F4CE
	cmp r4, 0x1
	beq _0806F4C0
	cmp r4, 0x7
	bne _0806F4CE
_0806F4C0:
	adds r0, r5, 0
	adds r0, 0xF5
	ldrb r0, [r0]
	cmp r0, 0
	bne _0806F4CE
_0806F4CA:
	movs r0, 0
	b _0806F4F6
_0806F4CE:
	movs r2, 0
	lsls r0, r4, 3
	ldr r6, _0806F4FC
	adds r3, r5, 0
	adds r3, 0x5C
	adds r0, r4
	lsls r1, r0, 2
_0806F4DC:
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	adds r0, r6
	movs r4, 0
	ldrsh r0, [r0, r4]
	cmp r0, 0
	beq _0806F4CA
	adds r2, 0x1
	cmp r2, 0x1
	ble _0806F4DC
	movs r0, 0x1
_0806F4F6:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806F4FC: .4byte gTypeEffectivenessChart
	thumb_func_end sub_806F4A4

	thumb_func_start sub_806F500
sub_806F500:
	ldr r0, _0806F5F4
	ldr r0, [r0]
	mov r12, r0
	movs r0, 0x9A
	lsls r0, 1
	add r0, r12
	movs r1, 0
	strb r1, [r0]
	str r1, [r0, 0x4]
	strb r1, [r0, 0x8]
	strb r1, [r0, 0x9]
	movs r2, 0xA
	strb r2, [r0, 0xA]
	strb r2, [r0, 0xB]
	movs r2, 0
	movs r3, 0x1
	strh r3, [r0, 0xC]
	strh r3, [r0, 0xE]
	strh r1, [r0, 0x10]
	strh r1, [r0, 0x14]
	strh r1, [r0, 0x12]
	strh r1, [r0, 0x16]
	strh r1, [r0, 0x18]
	str r1, [r0, 0x1C]
	str r1, [r0, 0x24]
	str r1, [r0, 0x28]
	movs r0, 0xB0
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F5F8
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB1
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F5FC
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB2
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F600
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB3
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F604
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB4
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F608
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB5
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB6
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F60C
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F610
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB7
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F614
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB8
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F618
	add r0, r12
	strb r2, [r0]
	movs r0, 0xB9
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F61C
	add r0, r12
	strb r2, [r0]
	movs r0, 0xBA
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F620
	add r0, r12
	strb r2, [r0]
	movs r0, 0xBB
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F624
	add r0, r12
	strb r2, [r0]
	movs r0, 0xBC
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	ldr r0, _0806F628
	add r0, r12
	strb r2, [r0]
	movs r0, 0xBD
	lsls r0, 1
	add r0, r12
	strb r2, [r0]
	bx lr
	.align 2, 0
_0806F5F4: .4byte gDungeonGlobalData
_0806F5F8: .4byte 0x00000161
_0806F5FC: .4byte 0x00000163
_0806F600: .4byte 0x00000165
_0806F604: .4byte 0x00000167
_0806F608: .4byte 0x00000169
_0806F60C: .4byte 0x0000016b
_0806F610: .4byte 0x0000016d
_0806F614: .4byte 0x0000016f
_0806F618: .4byte 0x00000171
_0806F61C: .4byte 0x00000173
_0806F620: .4byte 0x00000175
_0806F624: .4byte 0x00000177
_0806F628: .4byte 0x00000179
	thumb_func_end sub_806F500

	thumb_func_start sub_806F62C
sub_806F62C:
	ldr r1, _0806F638
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806F638: .4byte gUnknown_8106F7C
	thumb_func_end sub_806F62C

	thumb_func_start sub_806F63C
sub_806F63C:
	push {lr}
	ldr r1, _0806F658
	ldr r1, [r1]
	ldr r2, _0806F65C
	adds r1, r2
	ldr r1, [r1, 0x10]
	cmp r1, r0
	bne _0806F652
	adds r0, r1, 0
	bl sub_803F508
_0806F652:
	pop {r0}
	bx r0
	.align 2, 0
_0806F658: .4byte gDungeonGlobalData
_0806F65C: .4byte 0x000181e8
	thumb_func_end sub_806F63C

	thumb_func_start sub_806F660
sub_806F660:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r6, r0, 0
	mov r8, r1
	ldr r0, [r6, 0x70]
	mov r10, r0
	ldr r4, [r1, 0x70]
	movs r1, 0x1
	negs r1, r1
	mov r9, r1
	movs r2, 0x4
	ldrsh r0, [r4, r2]
	bl GetPokemonSize
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _0806F6C0
	ldr r3, [r0]
	ldr r1, _0806F6C4
	adds r0, r3, r1
	ldrh r2, [r0]
	subs r0, r2, 0x4
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _0806F702
	lsls r0, r2, 16
	asrs r1, r0, 16
	cmp r1, 0x9
	beq _0806F702
	cmp r1, 0xF
	beq _0806F702
	adds r0, r2, 0
	subs r0, 0x2C
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x4
	bhi _0806F6CC
	ldr r2, _0806F6C8
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0806F702
	b _0806F8FC
	.align 2, 0
_0806F6C0: .4byte gDungeonGlobalData
_0806F6C4: .4byte 0x00003a14
_0806F6C8: .4byte 0x0000065c
_0806F6CC:
	cmp r1, 0x31
	bne _0806F6F0
	ldr r1, _0806F6EC
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0806F6DC
	b _0806F8FC
_0806F6DC:
	movs r0, 0xCF
	lsls r0, 1
	bl sub_8097900
	lsls r0, 24
	cmp r0, 0
	bne _0806F702
	b _0806F8FC
	.align 2, 0
_0806F6EC: .4byte 0x00000659
_0806F6F0:
	ldr r2, _0806F834
	adds r0, r3, r2
	ldrb r0, [r0]
	bl GetRecruitable
	lsls r0, 24
	cmp r0, 0
	bne _0806F702
	b _0806F8FC
_0806F702:
	ldr r0, _0806F838
	ldr r0, [r0]
	ldr r3, _0806F83C
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806F712
	b _0806F8FC
_0806F712:
	ldrh r1, [r4, 0x2]
	adds r0, r1, 0
	subs r0, 0x90
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x2
	bls _0806F766
	lsls r0, r1, 16
	asrs r1, r0, 16
	ldr r0, _0806F840
	cmp r1, r0
	beq _0806F766
	subs r0, 0x1
	cmp r1, r0
	beq _0806F766
	adds r0, 0x2
	cmp r1, r0
	beq _0806F766
	adds r0, 0x8A
	cmp r1, r0
	beq _0806F766
	adds r0, 0x1
	cmp r1, r0
	beq _0806F766
	adds r0, 0x4
	cmp r1, r0
	beq _0806F766
	subs r0, 0x1
	cmp r1, r0
	beq _0806F766
	adds r0, 0x2
	cmp r1, r0
	beq _0806F766
	subs r0, 0x9
	cmp r1, r0
	beq _0806F766
	adds r0, 0x1
	cmp r1, r0
	beq _0806F766
	adds r0, 0x1
	cmp r1, r0
	bne _0806F776
_0806F766:
	movs r1, 0x2
	ldrsh r0, [r4, r1]
	bl HasRecruitedMon
	lsls r0, 24
	cmp r0, 0
	beq _0806F776
	b _0806F8FC
_0806F776:
	movs r2, 0x2
	ldrsh r0, [r4, r2]
	bl sub_806F9BC
	lsls r0, 24
	cmp r0, 0
	bne _0806F786
	b _0806F8FC
_0806F786:
	movs r3, 0x4
	ldrsh r1, [r6, r3]
	mov r2, r8
	movs r3, 0x4
	ldrsh r0, [r2, r3]
	subs r1, r0
	cmp r1, 0
	bge _0806F798
	negs r1, r1
_0806F798:
	cmp r1, 0x1
	ble _0806F79E
	b _0806F8FC
_0806F79E:
	movs r0, 0x6
	ldrsh r1, [r6, r0]
	mov r2, r8
	movs r3, 0x6
	ldrsh r0, [r2, r3]
	subs r1, r0
	cmp r1, 0
	bge _0806F7B0
	negs r1, r1
_0806F7B0:
	cmp r1, 0x1
	ble _0806F7B6
	b _0806F8FC
_0806F7B6:
	adds r0, r4, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r0, 0x4A
	bne _0806F7C2
	b _0806F8FC
_0806F7C2:
	adds r0, r4, 0
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0806F7CE
	b _0806F8FC
_0806F7CE:
	mov r0, r8
	adds r1, r6, 0
	bl CanSee
	lsls r0, 24
	cmp r0, 0
	bne _0806F7DE
	b _0806F8FC
_0806F7DE:
	bl sub_806F910
	movs r0, 0xFA
	lsls r0, 2
	bl DungeonRandomCapped
	adds r7, r0, 0
	movs r1, 0x2
	ldrsh r0, [r4, r1]
	bl GetBaseRecruit
	lsls r0, 16
	asrs r4, r0, 16
	ldr r0, _0806F844
	cmp r4, r0
	bne _0806F800
	b _0806F8FC
_0806F800:
	adds r0, r6, 0
	movs r1, 0x2E
	bl HasItem
	lsls r0, 24
	cmp r0, 0
	beq _0806F816
	ldr r0, _0806F848
	movs r2, 0
	ldrsh r0, [r0, r2]
	adds r4, r0
_0806F816:
	ldr r0, _0806F84C
	mov r3, r10
	ldrb r1, [r3, 0x9]
	lsls r1, 1
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	adds r4, r0
	cmp r7, r4
	bge _0806F8FC
	movs r4, 0
	movs r0, 0x6
	subs r3, r0, r5
	ldr r7, _0806F850
	b _0806F856
	.align 2, 0
_0806F834: .4byte 0x00000644
_0806F838: .4byte gDungeonGlobalData
_0806F83C: .4byte 0x0000065d
_0806F840: .4byte 0x0000010d
_0806F844: .4byte 0xfffffc19
_0806F848: .4byte gUnknown_80F5008
_0806F84C: .4byte gUnknown_80F5700
_0806F850: .4byte gUnknown_202EE70
_0806F854:
	adds r4, 0x1
_0806F856:
	cmp r4, r3
	bgt _0806F878
	movs r2, 0
	cmp r2, r5
	bge _0806F872
	adds r1, r4, r7
	b _0806F86C
_0806F864:
	adds r1, 0x1
	adds r2, 0x1
	cmp r2, r5
	bge _0806F872
_0806F86C:
	ldrb r0, [r1]
	cmp r0, 0
	beq _0806F864
_0806F872:
	cmp r2, r5
	bne _0806F854
	mov r9, r4
_0806F878:
	movs r0, 0x1
	negs r0, r0
	cmp r9, r0
	beq _0806F8F4
	movs r4, 0
	ldr r3, _0806F8BC
	ldr r0, [r3]
	ldr r2, _0806F8C0
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806F8B4
	adds r7, r3, 0
	adds r5, r2, 0
	movs r2, 0
	movs r3, 0x1
_0806F89C:
	adds r2, 0x64
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0806F8B4
	ldr r0, [r7]
	adds r0, r2, r0
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0806F89C
_0806F8B4:
	cmp r4, 0x4
	beq _0806F8F4
	movs r4, 0
	b _0806F8C6
	.align 2, 0
_0806F8BC: .4byte gRecruitedPokemonRef
_0806F8C0: .4byte 0x00008df8
_0806F8C4:
	adds r4, 0x1
_0806F8C6:
	cmp r4, 0x3
	bgt _0806F8E2
	ldr r0, _0806F8EC
	ldr r0, [r0]
	lsls r1, r4, 2
	ldr r3, _0806F8F0
	adds r0, r3
	adds r0, r1
	ldr r0, [r0]
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _0806F8C4
_0806F8E2:
	cmp r4, 0x4
	beq _0806F8F4
	movs r0, 0x1
	b _0806F8FE
	.align 2, 0
_0806F8EC: .4byte gDungeonGlobalData
_0806F8F0: .4byte 0x0001357c
_0806F8F4:
	adds r0, r6, 0
	mov r1, r8
	bl nullsub_96
_0806F8FC:
	movs r0, 0
_0806F8FE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_806F660

	thumb_func_start nullsub_96
nullsub_96:
	bx lr
	thumb_func_end nullsub_96

	thumb_func_start sub_806F910
sub_806F910:
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r5, 0
	movs r6, 0
	movs r7, 0x40
_0806F91C:
	ldr r0, _0806F9AC
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _0806F9B0
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	adds r1, r6, 0x1
	mov r8, r1
	cmp r0, 0
	beq _0806F98A
	ldr r0, [r4, 0x70]
	movs r2, 0x4
	ldrsh r0, [r0, r2]
	bl GetPokemonSize
	lsls r0, 24
	lsrs r1, r0, 24
	adds r0, r4, 0
	adds r0, 0x68
	strh r7, [r0]
	ldr r0, [r4, 0x70]
	ldr r2, _0806F9B4
	adds r0, r2
	strb r6, [r0]
	ldr r0, [r4, 0x70]
	adds r2, 0x1
	adds r0, r2
	strb r1, [r0]
	cmp r1, 0
	beq _0806F978
	ldr r3, _0806F9B8
	movs r2, 0x1
_0806F966:
	cmp r5, 0x5
	bgt _0806F972
	adds r0, r5, r3
	strb r2, [r0]
	adds r7, 0x10
	adds r5, 0x1
_0806F972:
	subs r1, 0x1
	cmp r1, 0
	bne _0806F966
_0806F978:
	adds r0, r4, 0
	bl sub_806CEBC
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_806CCB4
_0806F98A:
	mov r6, r8
	cmp r6, 0x3
	ble _0806F91C
	cmp r5, 0x5
	bgt _0806F9A2
	ldr r2, _0806F9B8
	movs r1, 0
_0806F998:
	adds r0, r5, r2
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x5
	ble _0806F998
_0806F9A2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F9AC: .4byte gDungeonGlobalData
_0806F9B0: .4byte 0x0001357c
_0806F9B4: .4byte 0x00000167
_0806F9B8: .4byte gUnknown_202EE70
	thumb_func_end sub_806F910

	thumb_func_start sub_806F9BC
sub_806F9BC:
	push {r4,r5,lr}
	sub sp, 0xC
	lsls r0, 16
	asrs r4, r0, 16
	ldr r5, _0806FA40
	ldr r0, [r5]
	movs r1, 0xCB
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0806FA3C
	adds r0, r4, 0
	bl sub_808529C
	lsls r0, 24
	cmp r0, 0
	beq _0806FA3C
	cmp r4, 0x97
	bne _0806F9F2
	ldr r0, [r5]
	movs r1, 0xCF
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0806FA3C
_0806F9F2:
	movs r0, 0xCC
	lsls r0, 1
	cmp r4, r0
	beq _0806FA3C
	ldr r0, _0806FA44
	cmp r4, r0
	beq _0806FA3C
	ldr r0, _0806FA48
	cmp r4, r0
	beq _0806FA3C
	movs r0, 0xD1
	lsls r0, 1
	cmp r4, r0
	beq _0806FA3C
	ldr r0, _0806FA4C
	cmp r4, r0
	beq _0806FA3C
	adds r0, r4, 0
	bl GetUnk12
	lsls r0, 24
	cmp r0, 0
	bne _0806FA50
	adds r0, r4, 0
	bl GetFriendArea
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	movs r2, 0
	movs r3, 0
	bl sub_8092638
	mov r0, sp
	ldrb r0, [r0, 0x4]
	cmp r0, 0
	bne _0806FA50
_0806FA3C:
	movs r0, 0
	b _0806FA52
	.align 2, 0
_0806FA40: .4byte gDungeonGlobalData
_0806FA44: .4byte 0x00000199
_0806FA48: .4byte 0x000001a1
_0806FA4C: .4byte 0x000001a3
_0806FA50:
	movs r0, 0x1
_0806FA52:
	add sp, 0xC
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_806F9BC

	thumb_func_start sub_806FA5C
sub_806FA5C:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	mov r8, r0
	adds r5, r1, 0
	adds r6, r2, 0
	adds r0, r5, 0x4
	mov r1, r8
	adds r1, 0x4
	bl CalculateFacingDir
	adds r4, r0, 0
	movs r0, 0
	mov r10, r0
	movs r1, 0
	ldrsh r0, [r6, r1]
	bl GetFriendArea
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	adds r0, r5, 0
	adds r0, 0x22
	mov r2, r10
	strb r2, [r0]
	mov r0, r8
	adds r1, r5, 0
	bl sub_807A0CC
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_806CE68
	ldr r0, _0806FAD4
	movs r3, 0
	ldrsh r1, [r6, r3]
	bl CopyCyanSpeciesNametoBuffer
	ldr r0, _0806FAD8
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0
	bne _0806FAE4
	movs r4, 0
	ldrsh r1, [r6, r4]
	ldr r0, _0806FADC
	cmp r1, r0
	beq _0806FB28
	ldr r0, _0806FAE0
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
	b _0806FB28
	.align 2, 0
_0806FAD4: .4byte gAvailablePokemonNames
_0806FAD8: .4byte gUnknown_80F9FE8
_0806FADC: .4byte 0x0000019d
_0806FAE0: .4byte gUnknown_80FA004
_0806FAE4:
	movs r7, 0
	ldr r3, _0806FB2C
	ldr r0, [r3]
	ldr r2, _0806FB30
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806FB1A
	mov r12, r3
	adds r4, r2, 0
	movs r2, 0
	movs r3, 0x1
_0806FB00:
	adds r2, 0x64
	adds r7, 0x1
	cmp r7, 0x3
	bgt _0806FB1A
	mov r1, r12
	ldr r0, [r1]
	adds r0, r2, r0
	adds r0, r4
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0806FB00
_0806FB1A:
	cmp r7, 0x4
	bne _0806FB38
	ldr r0, _0806FB34
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
_0806FB28:
	movs r0, 0
	b _0806FCF0
	.align 2, 0
_0806FB2C: .4byte gRecruitedPokemonRef
_0806FB30: .4byte 0x00008df8
_0806FB34: .4byte gUnknown_80FA030
_0806FB38:
	mov r0, r9
	bl GetFriendAreaStatus
	lsls r0, 24
	cmp r0, 0
	bne _0806FB4E
	mov r0, r9
	bl UnlockFriendArea
	movs r2, 0x1
	mov r10, r2
_0806FB4E:
	movs r1, 0xFA
	lsls r1, 1
	adds r0, r5, 0
	mov r2, r8
	bl sub_8068FE0
	ldr r1, _0806FC40
	movs r0, 0x64
	muls r0, r7
	ldr r3, _0806FC44
	adds r0, r3
	ldr r1, [r1]
	adds r5, r1, r0
	movs r4, 0
	movs r0, 0x3
	strh r0, [r5]
	strb r4, [r5, 0x2]
	ldrh r0, [r6, 0xE]
	strb r0, [r5, 0x3]
	movs r0, 0x1
	strh r0, [r5, 0x8]
	adds r0, r5, 0
	adds r0, 0x4C
	movs r1, 0
	bl SetDefaultIQSkills
	ldr r0, [r6, 0x44]
	str r0, [r5, 0x54]
	adds r0, r5, 0
	adds r0, 0x50
	strb r4, [r0]
	ldr r0, _0806FC48
	strh r0, [r5, 0xA]
	strh r7, [r5, 0xC]
	ldrh r0, [r6]
	strh r0, [r5, 0xE]
	ldr r0, _0806FC4C
	ldr r0, [r0]
	ldr r4, _0806FC50
	adds r0, r4
	ldr r0, [r0]
	str r0, [r5, 0x4]
	ldrh r0, [r6, 0x8]
	strh r0, [r5, 0x10]
	ldrh r0, [r6, 0x8]
	strh r0, [r5, 0x12]
	ldr r0, [r6, 0x14]
	str r0, [r5, 0x44]
	ldr r0, [r6, 0x18]
	str r0, [r5, 0x48]
	movs r2, 0
	adds r7, r6, 0
	adds r7, 0x20
	adds r4, r6, 0
	adds r4, 0xA
	adds r3, r6, 0
	adds r3, 0xC
	adds r1, r5, 0
	adds r1, 0x14
_0806FBC4:
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	adds r1, 0x1
	adds r2, 0x1
	cmp r2, 0x1
	ble _0806FBC4
	ldr r0, [r6, 0x10]
	str r0, [r5, 0x18]
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r7, 0
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [r6, 0x1C]
	str r0, [r5, 0x40]
	adds r4, r5, 0
	adds r4, 0x58
	movs r1, 0
	ldrsh r0, [r6, r1]
	bl GetMonSpecies
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0xA
	bl BoundedCopyStringtoBuffer
	bl sub_8097848
	movs r2, 0
	ldrsh r0, [r6, r2]
	movs r3, 0x4
	ldrsh r1, [r6, r3]
	movs r3, 0x6
	ldrsh r2, [r6, r3]
	add r3, sp, 0xC
	str r3, [sp]
	movs r3, 0
	str r3, [sp, 0x4]
	movs r3, 0x1
	str r3, [sp, 0x8]
	adds r3, r5, 0
	bl sub_806B8CC
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0
	bne _0806FC58
	ldr r0, _0806FC54
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
	strh r7, [r5]
	b _0806FCEE
	.align 2, 0
_0806FC40: .4byte gRecruitedPokemonRef
_0806FC44: .4byte 0x00008df8
_0806FC48: .4byte 0x0000ffff
_0806FC4C: .4byte gDungeonGlobalData
_0806FC50: .4byte 0x00000644
_0806FC54: .4byte gUnknown_80FA058
_0806FC58:
	bl sub_8083D88
	movs r0, 0xA0
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _0806FC78
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0x1
	bne _0806FC94
	b _0806FC88
	.align 2, 0
_0806FC78: .4byte gUnknown_80FA090
_0806FC7C:
	ldr r0, _0806FD00
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806FC88:
	adds r0, r4, 0
	bl sub_805FBE8
	lsls r0, 24
	cmp r0, 0
	beq _0806FC7C
_0806FC94:
	ldr r4, _0806FD04
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0
	bl sub_808D9DC
	ldr r0, _0806FD08
	ldr r1, [r0]
	mov r0, r8
	bl SendMessage
	mov r0, r10
	cmp r0, 0
	beq _0806FCD8
	bl xxx_call_GetLeaderEntity
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _0806FD0C
	mov r1, r9
	bl sub_8092558
	movs r0, 0xCE
	bl PlaySound
	ldr r0, _0806FD10
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806FCD8:
	movs r1, 0
	ldrsh r0, [r6, r1]
	cmp r0, 0x97
	bne _0806FCEE
	ldr r2, _0806FD14
	ldr r1, [r2]
	movs r0, 0x1
	strb r0, [r1, 0x4]
	ldr r1, [r2]
	movs r0, 0x3
	strb r0, [r1, 0x11]
_0806FCEE:
	movs r0, 0x1
_0806FCF0:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806FD00: .4byte gUnknown_80FA0C8
_0806FD04: .4byte gAvailablePokemonNames
_0806FD08: .4byte gUnknown_80FA0F0
_0806FD0C: .4byte gUnknown_202E628
_0806FD10: .4byte gUnknown_80FA120
_0806FD14: .4byte gDungeonGlobalData
	thumb_func_end sub_806FA5C

	thumb_func_start sub_806FD18
sub_806FD18:
	push {r4-r7,lr}
	ldr r4, [r0, 0x70]
	movs r6, 0x1
	negs r6, r6
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	bl GetPokemonSize
	lsls r0, 24
	lsrs r5, r0, 24
	movs r2, 0x2
	ldrsh r0, [r4, r2]
	bl sub_806F9BC
	lsls r0, 24
	cmp r0, 0
	beq _0806FDEC
	bl sub_806F910
	movs r4, 0
	movs r0, 0x6
	subs r3, r0, r5
	ldr r7, _0806FD48
	b _0806FD4E
	.align 2, 0
_0806FD48: .4byte gUnknown_202EE70
_0806FD4C:
	adds r4, 0x1
_0806FD4E:
	cmp r4, r3
	bgt _0806FD70
	movs r2, 0
	cmp r2, r5
	bge _0806FD6A
	adds r1, r4, r7
	b _0806FD64
_0806FD5C:
	adds r1, 0x1
	adds r2, 0x1
	cmp r2, r5
	bge _0806FD6A
_0806FD64:
	ldrb r0, [r1]
	cmp r0, 0
	beq _0806FD5C
_0806FD6A:
	cmp r2, r5
	bne _0806FD4C
	adds r6, r4, 0
_0806FD70:
	movs r0, 0x1
	negs r0, r0
	cmp r6, r0
	beq _0806FDEC
	movs r4, 0
	ldr r3, _0806FDB4
	ldr r0, [r3]
	ldr r2, _0806FDB8
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806FDAC
	adds r6, r3, 0
	adds r5, r2, 0
	movs r2, 0
	movs r3, 0x1
_0806FD94:
	adds r2, 0x64
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0806FDAC
	ldr r0, [r6]
	adds r0, r2, r0
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0806FD94
_0806FDAC:
	cmp r4, 0x4
	beq _0806FDEC
	movs r4, 0
	b _0806FDBE
	.align 2, 0
_0806FDB4: .4byte gRecruitedPokemonRef
_0806FDB8: .4byte 0x00008df8
_0806FDBC:
	adds r4, 0x1
_0806FDBE:
	cmp r4, 0x3
	bgt _0806FDDA
	ldr r0, _0806FDE4
	ldr r0, [r0]
	lsls r1, r4, 2
	ldr r2, _0806FDE8
	adds r0, r2
	adds r0, r1
	ldr r0, [r0]
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	bne _0806FDBC
_0806FDDA:
	cmp r4, 0x4
	beq _0806FDEC
	movs r0, 0x1
	b _0806FDEE
	.align 2, 0
_0806FDE4: .4byte gDungeonGlobalData
_0806FDE8: .4byte 0x0001357c
_0806FDEC:
	movs r0, 0
_0806FDEE:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_806FD18

	thumb_func_start sub_806FDF4
sub_806FDF4:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x60
	str r0, [sp, 0x58]
	mov r10, r1
	str r2, [sp, 0x5C]
	movs r0, 0
	mov r9, r0
	str r0, [r2]
	add r0, sp, 0xC
	bl sub_8069D4C
	movs r6, 0
	ldr r3, _0806FE50
	ldr r0, [r3]
	ldr r2, _0806FE54
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0806FE46
	adds r5, r3, 0
	adds r4, r2, 0
	movs r2, 0
	movs r3, 0x1
_0806FE2E:
	adds r2, 0x64
	adds r6, 0x1
	cmp r6, 0x3
	bgt _0806FE46
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, r4
	ldrb r1, [r0]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0806FE2E
_0806FE46:
	cmp r6, 0x4
	bne _0806FE58
	movs r0, 0
	b _0806FFF8
	.align 2, 0
_0806FE50: .4byte gRecruitedPokemonRef
_0806FE54: .4byte 0x00008df8
_0806FE58:
	add r0, sp, 0xC
	movs r1, 0
	ldrsh r0, [r0, r1]
	bl GetFriendArea
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, _0806FF74
	movs r0, 0x64
	muls r0, r6
	ldr r2, _0806FF78
	adds r0, r2
	ldr r1, [r1]
	adds r5, r1, r0
	movs r4, 0
	movs r0, 0x3
	strh r0, [r5]
	strb r4, [r5, 0x2]
	add r0, sp, 0xC
	ldrh r0, [r0, 0xE]
	strb r0, [r5, 0x3]
	movs r0, 0x1
	strh r0, [r5, 0x8]
	adds r0, r5, 0
	adds r0, 0x4C
	movs r1, 0
	bl SetDefaultIQSkills
	ldr r0, [sp, 0x50]
	str r0, [r5, 0x54]
	adds r0, r5, 0
	adds r0, 0x50
	strb r4, [r0]
	ldr r0, _0806FF7C
	strh r0, [r5, 0xA]
	strh r6, [r5, 0xC]
	add r0, sp, 0xC
	ldrh r0, [r0]
	strh r0, [r5, 0xE]
	ldr r0, _0806FF80
	ldr r0, [r0]
	ldr r3, _0806FF84
	adds r0, r3
	ldr r0, [r0]
	str r0, [r5, 0x4]
	add r0, sp, 0xC
	ldrh r0, [r0, 0x8]
	strh r0, [r5, 0x10]
	add r0, sp, 0xC
	ldrh r0, [r0, 0x8]
	strh r0, [r5, 0x12]
	ldr r0, [sp, 0x20]
	str r0, [r5, 0x44]
	ldr r0, [sp, 0x24]
	str r0, [r5, 0x48]
	movs r2, 0
	add r6, sp, 0x2C
	add r4, sp, 0x54
	mov r8, r4
	mov r4, sp
	adds r4, 0x16
	add r3, sp, 0x18
	adds r1, r5, 0
	adds r1, 0x14
_0806FED8:
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	adds r1, 0x1
	adds r2, 0x1
	cmp r2, 0x1
	ble _0806FED8
	ldr r0, [sp, 0x1C]
	str r0, [r5, 0x18]
	adds r1, r5, 0
	adds r1, 0x1C
	adds r0, r6, 0
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [sp, 0x28]
	str r0, [r5, 0x40]
	adds r4, r5, 0
	adds r4, 0x58
	add r0, sp, 0xC
	movs r1, 0
	ldrsh r0, [r0, r1]
	bl GetMonSpecies
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0xA
	bl BoundedCopyStringtoBuffer
	adds r0, r7, 0
	bl GetFriendAreaStatus
	lsls r0, 24
	cmp r0, 0
	bne _0806FF34
	adds r0, r7, 0
	bl UnlockFriendArea
	movs r2, 0x1
	mov r9, r2
_0806FF34:
	bl sub_8097848
	movs r1, 0xFA
	lsls r1, 1
	mov r0, r10
	ldr r2, [sp, 0x58]
	bl sub_8068FE0
	add r0, sp, 0xC
	movs r3, 0
	ldrsh r0, [r0, r3]
	add r1, sp, 0xC
	movs r2, 0x4
	ldrsh r1, [r1, r2]
	add r2, sp, 0xC
	movs r3, 0x6
	ldrsh r2, [r2, r3]
	mov r3, r8
	str r3, [sp]
	movs r3, 0
	str r3, [sp, 0x4]
	str r3, [sp, 0x8]
	adds r3, r5, 0
	bl sub_806B8CC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0806FF88
	strh r0, [r5]
	b _0806FFF6
	.align 2, 0
_0806FF74: .4byte gRecruitedPokemonRef
_0806FF78: .4byte 0x00008df8
_0806FF7C: .4byte 0x0000ffff
_0806FF80: .4byte gDungeonGlobalData
_0806FF84: .4byte 0x00000644
_0806FF88:
	ldr r0, _0806FF9C
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl sub_8052B8C
	cmp r0, 0x1
	bne _0806FFB8
	b _0806FFAC
	.align 2, 0
_0806FF9C: .4byte gUnknown_80FA090
_0806FFA0:
	ldr r0, _08070008
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806FFAC:
	adds r0, r4, 0
	bl sub_805FBE8
	lsls r0, 24
	cmp r0, 0
	beq _0806FFA0
_0806FFB8:
	mov r4, r9
	cmp r4, 0
	beq _0806FFE6
	bl xxx_call_GetLeaderEntity
	adds r1, r0, 0
	ldr r0, _0807000C
	movs r2, 0
	bl SetMessageArgument
	ldr r0, _08070010
	adds r1, r7, 0
	bl sub_8092558
	movs r0, 0xCE
	bl PlaySound
	ldr r0, _08070014
	ldr r1, [r0]
	movs r0, 0
	movs r2, 0x1
	bl PrintFieldMessage
_0806FFE6:
	ldr r0, _08070018
	adds r1, r5, 0
	movs r2, 0
	bl sub_808D9DC
	ldr r0, [sp, 0x54]
	ldr r1, [sp, 0x5C]
	str r0, [r1]
_0806FFF6:
	movs r0, 0x1
_0806FFF8:
	add sp, 0x60
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08070008: .4byte gUnknown_80FA0C8
_0807000C: .4byte gAvailablePokemonNames
_08070010: .4byte gUnknown_202E628
_08070014: .4byte gUnknown_80FA120
_08070018: .4byte gUnknown_202E088
	thumb_func_end sub_806FDF4

        .align 2,0
