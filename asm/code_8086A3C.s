	#include "asm/constants/gba_constants.inc"
	#include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8086F54
sub_8086F54:
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	movs r0, 0xFC
	lsls r0, 24
	adds r1, r0
	lsrs r1, 24
	cmp r1, 0x1
	bhi _08086FA8
	movs r5, 0
_08086F6A:
	ldr r0, _08086FB0
	ldr r0, [r0]
	lsls r1, r5, 2
	ldr r2, _08086FB4
	adds r0, r2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r4, 0
	bl EntityExists
	lsls r0, 24
	cmp r0, 0
	beq _08086F8E
	ldr r0, [r4, 0x70]
	adds r0, 0xA4
	ldrb r0, [r0]
	cmp r0, r6
	bne _08086FA8
_08086F8E:
	adds r5, 0x1
	cmp r5, 0xF
	ble _08086F6A
	movs r0, 0
	cmp r0, 0
	bne _08086FA8
	movs r0, 0x3
	bl sub_8097FA8
	ldr r0, _08086FB0
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x2]
_08086FA8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086FB0: .4byte gDungeonGlobalData
_08086FB4: .4byte 0x0001358c
	thumb_func_end sub_8086F54

	thumb_func_start TeamMeaniesPreFightDialogue
TeamMeaniesPreFightDialogue:
	push {r4,lr}
	bl xxx_call_GetLeaderEntity
	adds r4, r0, 0
	bl sub_8086448
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087048
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _0808704C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	bl sub_8087144
	movs r0, 0xA
	bl sub_8083E88
	ldr r0, _08087050
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087054
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087058
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _0808705C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087060
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r4, 0xC
	adds r0, r4, 0
	movs r1, 0x10
	bl ShiftCameraToPosition
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08087048: .4byte gTeamMeaniesPreFightDialogue_1
_0808704C: .4byte gTeamMeaniesPreFightDialogue_2
_08087050: .4byte gTeamMeaniesPreFightDialogue_3
_08087054: .4byte gTeamMeaniesPreFightDialogue_4
_08087058: .4byte gTeamMeaniesPreFightDialogue_5
_0808705C: .4byte gTeamMeaniesPreFightDialogue_6
_08087060: .4byte gTeamMeaniesPreFightDialogue_7
	thumb_func_end TeamMeaniesPreFightDialogue

	thumb_func_start TeamMeaniesReFightDialogue
TeamMeaniesReFightDialogue:
	push {r4,r5,lr}
	bl xxx_call_GetLeaderEntity
	adds r4, r0, 0
	bl GetPartnerEntity
	adds r5, r0, 0
	bl sub_8086448
	ldr r0, _08087118
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _0808711C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	bl sub_8087144
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087120
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087124
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r4, 0
	movs r1, 0x6
	movs r2, 0x4
	bl sub_806CDD4
	adds r0, r5, 0
	movs r1, 0x6
	movs r2, 0x4
	bl sub_806CDD4
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x4
	bl sub_806CDD4
	adds r0, r5, 0
	movs r1, 0x7
	movs r2, 0x4
	bl sub_806CDD4
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _08087128
	bl DisplayDungeonDialogue
	ldr r0, _0808712C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r4, 0xC
	adds r0, r4, 0
	movs r1, 0x10
	bl ShiftCameraToPosition
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087118: .4byte gTeamMeaniesReFightDialogue_1
_0808711C: .4byte gTeamMeaniesPreFightDialogue_2
_08087120: .4byte gTeamMeaniesReFightDialogue_2
_08087124: .4byte gTeamMeaniesReFightDialogue_3
_08087128: .4byte gTeamMeaniesReFightDialogue_4
_0808712C: .4byte gTeamMeaniesReFightDialogue_5
	thumb_func_end TeamMeaniesReFightDialogue

	thumb_func_start sub_8087130
sub_8087130:
	push {lr}
	bl sub_8086448
	ldr r0, _08087140
	bl sub_80866C4
	pop {r0}
	bx r0
	.align 2, 0
_08087140: .4byte gUnknown_8101440
	thumb_func_end sub_8087130

	thumb_func_start sub_8087144
sub_8087144:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xF0
	movs r0, 0x5
	bl GetEntityFromClientType
	adds r7, r0, 0
	movs r0, 0x6
	bl GetEntityFromClientType
	mov r8, r0
	movs r0, 0x7
	bl GetEntityFromClientType
	mov r9, r0
	ldr r1, _080871E0
	mov r0, sp
	movs r2, 0x38
	bl memcpy
	add r6, sp, 0x38
	ldr r1, _080871E4
	adds r0, r6, 0
	movs r2, 0x38
	bl memcpy
	add r4, sp, 0x70
	ldr r1, _080871E8
	adds r0, r4, 0
	movs r2, 0x38
	bl memcpy
	add r5, sp, 0xA8
	mov r0, sp
	str r0, [r5]
	str r6, [r5, 0x4]
	str r4, [r5, 0x8]
	add r4, sp, 0xB4
	str r7, [r4]
	mov r3, r8
	str r3, [r4, 0x4]
	mov r0, r9
	str r0, [r4, 0x8]
	movs r0, 0xA
	bl sub_8083E88
	adds r0, r7, 0
	bl sub_8086A54
	mov r0, r8
	bl sub_8086A54
	mov r0, r9
	bl sub_8086A54
	add r6, sp, 0xC0
	adds r0, r6, 0
	adds r1, r5, 0
	adds r2, r4, 0
	movs r3, 0x3
	bl sub_8085B4C
	ldr r0, [r7, 0x70]
	ldr r2, _080871EC
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
	mov r3, r8
	ldr r0, [r3, 0x70]
	adds r0, r2
	strb r1, [r0]
	mov r3, r9
	ldr r0, [r3, 0x70]
	adds r0, r2
	strb r1, [r0]
	b _080871F6
	.align 2, 0
_080871E0: .4byte gUnknown_810739C
_080871E4: .4byte gUnknown_81073D4
_080871E8: .4byte gUnknown_810740C
_080871EC: .4byte 0x0000015f
_080871F0:
	movs r0, 0x46
	bl sub_803E46C
_080871F6:
	adds r0, r6, 0
	bl sub_8085B80
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _080871F0
	ldr r0, [r7, 0x70]
	ldr r1, _0808722C
	adds r0, r1
	strb r2, [r0]
	mov r3, r8
	ldr r0, [r3, 0x70]
	adds r0, r1
	strb r2, [r0]
	mov r3, r9
	ldr r0, [r3, 0x70]
	adds r0, r1
	strb r2, [r0]
	add sp, 0xF0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808722C: .4byte 0x0000015f
	thumb_func_end sub_8087144

	thumb_func_start sub_8087230
sub_8087230:
	push {r4-r6,lr}
	bl xxx_call_GetLeaderEntity
	adds r6, r0, 0
	movs r0, 0x8
	bl GetEntityFromClientType
	adds r5, r0, 0
	movs r0, 0x72
	bl sub_8083E88
	bl sub_8085374
	bl sub_80854D4
	movs r0, 0x4
	bl sub_8085930
	ldr r4, _08087294
	adds r0, r4, 0
	bl sub_80855E4
	adds r0, r5, 0
	movs r1, 0
	bl SetFacingDirection
	adds r0, r5, 0
	bl _call_via_r4
	movs r1, 0x4
	ldrsh r0, [r6, r1]
	movs r2, 0x6
	ldrsh r1, [r6, r2]
	subs r1, 0x3
	bl sub_8085860
	ldr r4, _08087298
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, 0
	bl CopySpeciesNametoBuffer
	adds r4, 0x50
	adds r0, r4, 0
	movs r1, 0x91
	bl CopySpeciesNametoBuffer
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08087294: .4byte sub_8086A3C
_08087298: .4byte gUnknown_202E038
	thumb_func_end sub_8087230

	thumb_func_start sub_808729C
sub_808729C:
	push {r4-r6,lr}
	sub sp, 0x4
	bl xxx_call_GetLeaderEntity
	adds r5, r0, 0
	movs r0, 0x8
	bl GetEntityFromClientType
	adds r4, r0, 0
	bl sub_80854D4
	movs r0, 0x4
	bl sub_8085930
	ldr r6, _080872DC
	adds r0, r6, 0
	bl sub_80855E4
	movs r0, 0x91
	bl sub_8086AE4
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _080872E0
	movs r1, 0x87
	lsls r1, 2
	adds r0, r4, 0
	movs r2, 0
	bl sub_8068FE0
	b _08087300
	.align 2, 0
_080872DC: .4byte sub_8086A3C
_080872E0:
	ldr r0, _0808732C
	movs r3, 0
	ldrsh r2, [r0, r3]
	str r1, [sp]
	adds r0, r4, 0
	adds r1, r4, 0
	movs r3, 0
	bl sub_8072008
	adds r0, r4, 0
	movs r1, 0
	bl SetFacingDirection
	adds r0, r4, 0
	bl _call_via_r6
_08087300:
	movs r1, 0x4
	ldrsh r0, [r5, r1]
	movs r2, 0x6
	ldrsh r1, [r5, r2]
	subs r1, 0x3
	bl sub_8085860
	ldr r4, _08087330
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, 0
	bl CopySpeciesNametoBuffer
	adds r4, 0x50
	adds r0, r4, 0
	movs r1, 0x91
	bl CopySpeciesNametoBuffer
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808732C: .4byte gUnknown_80F57CC
_08087330: .4byte gUnknown_202E038
	thumb_func_end sub_808729C

	thumb_func_start sub_8087334
sub_8087334:
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	movs r2, 0xF9
	lsls r2, 24
	adds r1, r2
	lsrs r1, 24
	cmp r1, 0x2
	bhi _0808735A
	cmp r0, 0x8
	bne _0808735A
	movs r0, 0x5
	bl sub_8097FA8
	ldr r0, _08087360
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x2]
_0808735A:
	pop {r0}
	bx r0
	.align 2, 0
_08087360: .4byte gDungeonGlobalData
	thumb_func_end sub_8087334

	thumb_func_start ZapdosPreFightDialogue
ZapdosPreFightDialogue:
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x70
	bl xxx_call_GetLeaderEntity
	mov r9, r0
	bl GetPartnerEntity
	adds r6, r0, 0
	movs r0, 0x8
	bl GetEntityFromClientType
	str r0, [sp, 0x68]
	bl sub_8086448
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r6, 0
	bl SpriteLookAroundEffect
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r6, 0
	movs r1, 0x4
	movs r2, 0x1
	movs r3, 0x2
	bl sub_80869E4
	mov r0, r9
	movs r1, 0x4
	movs r2, 0x2
	movs r3, 0x6
	bl sub_80869E4
	ldr r0, _08087470
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r6, 0
	movs r1, 0x4
	movs r2, 0x2
	movs r3, 0x4
	bl sub_80869E4
	mov r0, r9
	movs r1, 0x4
	movs r2, 0x1
	movs r3, 0x4
	bl sub_80869E4
	ldr r0, _08087474
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	movs r0, 0x3
	bl ZapdosScreenFlash
	bl sub_8083F14
	movs r0, 0xED
	lsls r0, 1
	bl PlaySoundEffect
	ldr r0, _08087478
	bl DisplayDungeonDialogue
	ldr r0, [sp, 0x68]
	bl ZapdosDropInEffect
	movs r0, 0x9
	bl sub_8083E88
	adds r0, r6, 0
	movs r1, 0x6
	movs r2, 0x4
	bl sub_806CDD4
	ldr r0, _0808747C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	adds r0, r6, 0
	movs r1, 0x2
	movs r2, 0x1
	movs r3, 0x1
	bl sub_80869E4
	mov r1, sp
	ldr r0, _08087480
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	mov r0, sp
	str r0, [sp, 0x58]
	str r6, [sp, 0x5C]
	add r4, sp, 0x18
	add r1, sp, 0x58
	add r2, sp, 0x5C
	adds r0, r4, 0
	movs r3, 0x1
	bl sub_8085B4C
	ldr r0, [r6, 0x70]
	ldr r2, _08087484
	adds r1, r0, r2
	movs r0, 0x1
	strb r0, [r1]
	add r7, sp, 0x28
	add r3, sp, 0x48
	mov r8, r3
	add r0, sp, 0x60
	mov r10, r0
	mov r1, sp
	adds r1, 0x64
	str r1, [sp, 0x6C]
	b _0808748E
	.align 2, 0
_08087470: .4byte gUnknown_81014B0
_08087474: .4byte gUnknown_8101504
_08087478: .4byte gUnknown_81015A0
_0808747C: .4byte gUnknown_81015D4
_08087480: .4byte gUnknown_810744C
_08087484: .4byte 0x0000015f
_08087488:
	movs r0, 0x46
	bl sub_803E46C
_0808748E:
	adds r0, r4, 0
	bl sub_8085B80
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _08087488
	ldr r0, [r6, 0x70]
	ldr r2, _08087510
	adds r0, r2
	strb r5, [r0]
	ldr r0, [r6, 0x70]
	ldr r4, _08087514
	adds r0, r4
	movs r1, 0x1
	strb r1, [r0]
	adds r0, r6, 0
	movs r1, 0x2
	movs r2, 0x2
	movs r3, 0x4
	bl sub_80869E4
	ldr r0, _08087518
	bl DisplayDungeonDialogue
	movs r0, 0x3C
	movs r1, 0x46
	bl sub_803E708
	ldr r0, _0808751C
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	ldr r0, [r6, 0x70]
	adds r0, r4
	strb r5, [r0]
	adds r0, r6, 0
	movs r1, 0x2
	movs r2, 0x2
	movs r3, 0x5
	bl sub_80869E4
	adds r1, r7, 0
	ldr r0, _08087520
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r3,r4}
	stm r1!, {r3,r4}
	str r7, [sp, 0x60]
	str r6, [sp, 0x64]
	mov r0, r8
	mov r1, r10
	ldr r2, [sp, 0x6C]
	movs r3, 0x1
	bl sub_8085B4C
	mov r4, r9
	adds r4, 0xC
	b _0808752A
	.align 2, 0
_08087510: .4byte 0x0000015f
_08087514: .4byte 0x0000015d
_08087518: .4byte gUnknown_81015E8
_0808751C: .4byte gUnknown_8101624
_08087520: .4byte gUnknown_8107464
_08087524:
	movs r0, 0x46
	bl sub_803E46C
_0808752A:
	mov r0, r8
	bl sub_8085B80
	lsls r0, 24
	cmp r0, 0
	bne _08087524
	adds r0, r6, 0
	movs r1, 0x2
	movs r2, 0x1
	movs r3, 0x3
	bl sub_80869E4
	ldr r0, _080875B0
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	movs r0, 0x3
	bl ZapdosScreenFlash
	ldr r0, _080875B4
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	movs r0, 0x1
	bl ZapdosScreenFlash
	ldr r0, _080875B8
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	movs r0, 0x2
	bl ZapdosScreenFlash
	ldr r0, _080875BC
	bl DisplayDungeonDialogue
	movs r0, 0xA
	movs r1, 0x46
	bl sub_803E708
	movs r1, 0x96
	lsls r1, 1
	ldr r0, [sp, 0x68]
	movs r2, 0xB
	bl SetupBossFightHP
	adds r0, r4, 0
	movs r1, 0x10
	bl ShiftCameraToPosition
	add sp, 0x70
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080875B0: .4byte gUnknown_810165C
_080875B4: .4byte gUnknown_8101750
_080875B8: .4byte gUnknown_810178C
_080875BC: .4byte gUnknown_81017B4
	thumb_func_end ZapdosPreFightDialogue

    .align 2,0
