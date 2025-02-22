#include "global.h"
#include "status.h"
#include "constants/status.h"
#include "constants/ability.h"
#include "dungeon_pokemon_attributes.h"
#include "dungeon_ai_targeting.h"
#include "dungeon_map_access.h"
#include "dungeon_util.h"
#include "dungeon_items.h"
#include "code_808417C.h"
#include "map.h"

extern u8 gAvailablePokemonNames[];
extern u8 gUnknown_202DE58[];

extern u8 *gUnknown_80FC084[];
extern u8 *gUnknown_80FC090[];
extern u8 *gUnknown_80FC1C4[];
extern u8 *gUnknown_80FC218[];
extern u8 *gUnknown_80FD550[];
extern u8 *gUnknown_80FCA60[];
extern u8 *gUnknown_80FC184[];
extern u8 *gUnknown_80FC0B8[];
extern u8 *gUnknown_80FC0C8[];
extern u8 *gUnknown_80FC118[];
extern u8 *gUnknown_80FC11C[];
extern u8 *gUnknown_80FC114[];
extern u8 *gUnknown_80FC180[];
extern u8 *gUnknown_80FC0FC[];
extern u8 *gUnknown_80FC0AC[];
extern u8 *gUnknown_80FC09C[];
extern u8 *gUnknown_80FC1F0[];
extern u8 *gUnknown_80FC1A4[];
extern u8 *gUnknown_80FCA64[];
extern s16 gUnknown_80F4E3C[];
extern u8 *gUnknown_80FCC18[];
extern u8 *gUnknown_80FB2E0[];
extern u8 *gUnknown_80FB300[];
extern s16 gUnknown_80F4E50[];
extern u8 *gUnknown_80FB2CC[];
extern u8 *gUnknown_80FB2AC[];
extern u8 *gUnknown_80FF01C[];
extern u8 *gUnknown_80FCBF8[];
extern s16 gUnknown_80F4E40[];
extern u8 *gUnknown_80FA124[];
extern u8 *gUnknown_80FC2B8[];
extern u8 *gUnknown_80FC298[];
extern u8 *gUnknown_80FC2D8[];
extern u8 *gUnknown_80FC298[];
extern s16 gUnknown_80F4E48[];
extern s16 gUnknown_80F4E4C[];
extern u8 *gUnknown_80FB27C[];
extern u8 *gUnknown_80FB25C[];
extern u8 *gUnknown_80FCDB4[];
extern u8 *gUnknown_80FD500[];
extern s16 gUnknown_80F4ECC[];
extern u8 *gUnknown_80FB960[];
extern u8 *gUnknown_80FB940[];

extern void sub_8041BF8(struct DungeonEntity *);
extern void sub_8041BE8(struct DungeonEntity *);
extern void sub_8041CCC(struct DungeonEntity *);
extern void sub_8041CB8(struct DungeonEntity *r0);
extern void sub_8041C1C(struct DungeonEntity *r0);
extern s32 GetMovementSpeed(struct DungeonEntity *);

extern void sub_8042060(struct DungeonEntity *, s32);
extern bool8 sub_8071728(struct DungeonEntity * param_1, struct DungeonEntity * param_2, u8 param_3);
extern void sub_8041FB4(struct DungeonEntity *r0, u32 r1);
extern void sub_8041FD8(struct DungeonEntity *r0, u32 r1);
extern void sub_80522F4(struct DungeonEntity *r1, struct DungeonEntity *r2, u8 *);
extern s32 sub_8009DA4(s32, s32);

extern void sub_804201C(struct DungeonEntity *r0, u32 r1);
extern void sub_8041FFC(struct DungeonEntity *r0, u32 r1);

extern void SetMessageArgument(char[], struct DungeonEntity*, u32);
extern void SetMessageArgument_2(char[], struct DungeonEntityData*, u32);
extern void sub_8041C58(struct DungeonEntity *r0);
extern void DungeonEntityUpdateStatusSprites(struct DungeonEntity *);
extern void sub_8042040(struct DungeonEntity *, s32);
extern void sub_80420A0(struct DungeonEntity *);

u8 GetFlashFireStatus(struct DungeonEntity *pokemon)
{
    if (!EntityExists(pokemon) || !HasAbility(pokemon, ABILITY_FLASH_FIRE))
    {
        return FLASH_FIRE_STATUS_NONE;
    }
    if (pokemon->entityData->flashFireBoost > 1)
    {
        return FLASH_FIRE_STATUS_MAXED;
    }
    return FLASH_FIRE_STATUS_NOT_MAXED;
}

static inline s32 UpdateFlashFireBoost_sub(struct DungeonEntityData * entityData)
{
    s32 flashFireBoost;

    flashFireBoost = entityData->flashFireBoost;
    flashFireBoost++;
    if (FLASH_FIRE_STATUS_MAXED < flashFireBoost) {
      flashFireBoost = FLASH_FIRE_STATUS_NOT_MAXED;
    }
    return flashFireBoost;
}

void UpdateFlashFireBoost(struct DungeonEntity * pokemon, struct DungeonEntity *target)
{
  struct DungeonEntityData * entityData;
  struct DungeonEntityData * entityData_1;
  s32 flashFireBoost;

  if (EntityExists(target)) {
    entityData = target->entityData;
    entityData_1 = entityData;
    SetMessageArgument(gAvailablePokemonNames,target,0);
    flashFireBoost = UpdateFlashFireBoost_sub(entityData);
    if (entityData_1->flashFireBoost != flashFireBoost) {
      entityData_1->flashFireBoost = flashFireBoost;
      sub_8041C58(target);
    }
    DungeonEntityUpdateStatusSprites(target);
  }
}

void sub_80772C0(struct DungeonEntity *pokemon, struct DungeonEntity *target, u32 statStage, s32 param_4, bool8 displayMessage)
{
  struct DungeonEntityData *entityData;
  s32 oldMulti;
  
  if (!EntityExists(target)) {
    return;
  }

  if (statStage != STAT_STAGE_ATTACK) {
    strcpy(gUnknown_202DE58,*gUnknown_80FC0C8);
  }
  else {
    strcpy(gUnknown_202DE58,*gUnknown_80FC0B8);
  }
  if ((param_4 < 0x100) && sub_8071728(pokemon,target,displayMessage)) {
    return;
  }
  
  if ((HasItem(target,ITEM_ID_TWIST_BAND)) && (param_4 < 0x100)) {
    SetMessageArgument(gAvailablePokemonNames,target,0);
    sub_80522F4(pokemon,target,*gUnknown_80FD550);
    return;
  }

  if (HasAbility(target, ABILITY_HYPER_CUTTER) && (statStage == STAT_STAGE_ATTACK) && (param_4 < 0x100)) {
    if (displayMessage) {
        SetMessageArgument(gAvailablePokemonNames,target,0);
        sub_80522F4(pokemon,target,*gUnknown_80FCA60);
    }
    return;
  }

  entityData = target->entityData;
  SetMessageArgument(gAvailablePokemonNames,target,0);
  oldMulti = entityData->attackMultipliers[statStage];

  if (param_4 < 0x100) {
    sub_8041FD8(target,statStage);
  }
  else {
    sub_8041FB4(target,statStage);
  }

  entityData->attackMultipliers[statStage] = sub_8009DA4(entityData->attackMultipliers[statStage],param_4);

  if (entityData->attackMultipliers[statStage] < 2) {
    entityData->attackMultipliers[statStage] = 2;
  }
  if (0x63fd < entityData->attackMultipliers[statStage]) {
    entityData->attackMultipliers[statStage] = 0x63fd; // 25597
  }
  if (oldMulti > entityData->attackMultipliers[statStage]) {
    sub_80522F4(pokemon,target,*gUnknown_80FC11C);
  }
  else if (oldMulti < entityData->attackMultipliers[statStage]) {
    sub_80522F4(pokemon,target,*gUnknown_80FC118);
  }
  else
  {
    sub_80522F4(pokemon,target,*gUnknown_80FC184);
  }
  DungeonEntityUpdateStatusSprites(target);
}

void sub_8077434(struct DungeonEntity *pokemon, struct DungeonEntity *target, u32 statStage, s32 param_4, bool8 displayMessage)
{
  struct DungeonEntityData *entityData;
  s32 oldMulti;
  
  if (!EntityExists(target)) {
    return;
  }

  if (statStage != STAT_STAGE_DEFENSE) {
    strcpy(gUnknown_202DE58,*gUnknown_80FC0AC);
  }
  else {
    strcpy(gUnknown_202DE58,*gUnknown_80FC09C);
  }
  if ((param_4 < 0x100) && sub_8071728(pokemon,target,displayMessage)) {
    return;
  }

  entityData = target->entityData;
  SetMessageArgument(gAvailablePokemonNames,target,0);
  oldMulti = entityData->defenseMultipliers[statStage];

  if (param_4 < 0x100) {
    sub_804201C(target,statStage);
  }
  else {
    sub_8041FFC(target,statStage);
  }

  entityData->defenseMultipliers[statStage] = sub_8009DA4(entityData->defenseMultipliers[statStage],param_4);

  if (entityData->defenseMultipliers[statStage] < 2) {
    entityData->defenseMultipliers[statStage] = 2;
  }
  if (0x63fd < entityData->defenseMultipliers[statStage]) {
    entityData->defenseMultipliers[statStage] = 0x63fd; // 25597
  }
  if (oldMulti > entityData->defenseMultipliers[statStage]) {
    sub_80522F4(pokemon,target,*gUnknown_80FC114);
  }
  else if (oldMulti < entityData->defenseMultipliers[statStage]) {
    sub_80522F4(pokemon,target,*gUnknown_80FC0FC);
  }
  else
  {
    sub_80522F4(pokemon,target,*gUnknown_80FC180);
  }
  DungeonEntityUpdateStatusSprites(target);
}

void sub_8077540(struct DungeonEntity * pokemon, struct DungeonEntity * target, s32 statStage)
{
  struct DungeonEntityData *entityData;

  if (EntityExists(target)) {
    entityData = target->entityData;
    SetMessageArgument(gAvailablePokemonNames,target,0);
    sub_8042040(target,statStage);
    if (statStage != STAT_STAGE_ACCURACY) {
        strcpy(gUnknown_202DE58,*gUnknown_80FC090);
    }
    else {
        strcpy(gUnknown_202DE58,*gUnknown_80FC084);
    }
    if (entityData->accuracyStages[statStage] < MAX_STAT_STAGE) {
      entityData->accuracyStages[statStage]++;
      sub_80522F4(pokemon,target,*gUnknown_80FC1C4);
    }
    else {
      sub_80522F4(pokemon,target,*gUnknown_80FC218);
    }
    DungeonEntityUpdateStatusSprites(target);
  }
}

void sub_80775DC(struct DungeonEntity * pokemon, struct DungeonEntity * target, s32 statStage, bool8 displayMessage)
{
  struct DungeonEntityData *entityData;

  if (EntityExists(target)) {
    if (statStage != STAT_STAGE_ACCURACY) {
        strcpy(gUnknown_202DE58,*gUnknown_80FC090);
    }
    else {
        strcpy(gUnknown_202DE58,*gUnknown_80FC084);
    }
    if (!sub_8071728(pokemon,target,displayMessage)) {
      if (HasAbility(target, ABILITY_KEEN_EYE) && (statStage == STAT_STAGE_ACCURACY)){
        if(displayMessage)
        {
            SetMessageArgument(gAvailablePokemonNames,target,0);
            sub_80522F4(pokemon,target,*gUnknown_80FCA64);
        }
      }
      else {
        entityData = target->entityData;
        SetMessageArgument(gAvailablePokemonNames,target,0);
        sub_8042060(target,statStage);
        if (entityData->accuracyStages[statStage] != 0) {
          entityData->accuracyStages[statStage]--;
          sub_80522F4(pokemon,target,*gUnknown_80FC1A4);
        }
        else {
          sub_80522F4(pokemon,target,*gUnknown_80FC1F0);
        }
        DungeonEntityUpdateStatusSprites(target);
      }
    }
  }
}

void sub_80776C0(struct DungeonEntity * pokemon,struct DungeonEntity * target, bool8 displayMessage)
{
  struct DungeonEntityData *entityData;
  
  if (EntityExists(target)) {
    if (!HasSafeguardStatus(pokemon, target, displayMessage)) {
      if (HasAbility(target, ABILITY_INNER_FOCUS)){
            SetMessageArgument(gAvailablePokemonNames,target,0);
            if(displayMessage)
                sub_80522F4(pokemon,target,*gUnknown_80FCC18);
      }
      else {
        entityData = target->entityData;
        SetMessageArgument(gAvailablePokemonNames,target,0);
        if(entityData->volatileStatus != VOLATILE_STATUS_CRINGING)
        {
            entityData->volatileStatus = VOLATILE_STATUS_CRINGING;
            entityData->volatileStatusTurnsLeft = CalculateStatusTurns(target, gUnknown_80F4E3C, TRUE) +  1;
            sub_80420A0(target);
            sub_80522F4(pokemon,target,*gUnknown_80FB2E0);
        }
        else
        {
            sub_80522F4(pokemon,target,*gUnknown_80FB300);
        }
        DungeonEntityUpdateStatusSprites(target);
      }
    }
  }
}

void sub_8077780(struct DungeonEntity * pokemon, struct DungeonEntity * target, bool8 displayMessage)
{
  struct MapTile *mapTile;
  register struct DungeonEntityData *entityData;
  struct DungeonEntity *mapPokemonEntity;
  int index;
  bool8 bVar6;
  bool8 bVar7;
  
  if ((EntityExists(target)) && (!HasSafeguardStatus(pokemon,target,displayMessage))) {
    if (HasAbility(target, ABILITY_LIMBER)) {
      SetMessageArgument(gAvailablePokemonNames,target,0);
      if (displayMessage) {
        sub_80522F4(pokemon,target,*gUnknown_80FCBF8);
      }
    }
    else
    {
      bVar6 = TRUE;
      entityData = target->entityData;
      SetMessageArgument(gAvailablePokemonNames,target,0);
      if (entityData->nonVolatileStatus != NON_VOLATILE_STATUS_PARALYZED) {
        entityData->nonVolatileStatus = NON_VOLATILE_STATUS_PARALYZED;
        entityData->nonVolatileStatusTurnsLeft = CalculateStatusTurns(target,gUnknown_80F4E50,1) + 1;
        entityData->nonVolatileStatusDamageTimer = 0;
        entityData->fillAF = 0;
        bVar6 = FALSE;
        sub_80522F4(pokemon,target,*gUnknown_80FB2AC);
        sub_8041C1C(target);
        GetMovementSpeed(target);
      }
      else {
        sub_80522F4(pokemon,target,*gUnknown_80FB2CC);
      }
      if ((HasAbility(target, ABILITY_SYNCHRONIZE)) && (!bVar6)) {
        bVar7 = FALSE;

        for(index = 0; index < NUM_DIRECTIONS; index++)
        {
          mapTile = GetMapTile_1(target->posWorld.x + gAdjacentTileOffsets[index].x,target->posWorld.y + gAdjacentTileOffsets[index].y);
          mapPokemonEntity = mapTile->pokemon;
          if ((EntityExists(mapPokemonEntity)) && (GetEntityType(mapPokemonEntity) == ENTITY_POKEMON)) {
            if (!bVar7) {
              bVar7 = TRUE;
              SetMessageArgument_2(gAvailablePokemonNames,entityData,0);
              sub_80522F4(pokemon,target,*gUnknown_80FF01C);
            }
            if (sub_807167C(target,mapPokemonEntity) == 1) {
              sub_8077780(pokemon, mapPokemonEntity, displayMessage);
            }
          }
        }
      }
      DungeonEntityUpdateStatusSprites(target);
    }
  }
}

void sub_8077910(struct DungeonEntity * pokemon, struct DungeonEntity * target, s32 turns, bool8 diplayMessage)
{
  s32 movSpeed;
  s32 index;
  s32 movSpeed_1;
  struct DungeonEntityData *entityData;
  
  if (!EntityExists(target)) {
    return;
  }
  if (turns == 0) {
    turns = CalculateStatusTurns(target,gUnknown_80F4E40,0) + 1;
  }
  entityData = target->entityData;
  SetMessageArgument(gAvailablePokemonNames,target,0);
  movSpeed = GetMovementSpeed(target);
  if (movSpeed == 4) {
    if (diplayMessage)
        sub_80522F4(pokemon,target,*gUnknown_80FC2B8);
  }
  else {
    for(index = 0; index < NUM_SPEED_TURN_COUNTERS; index++)
    {
        if(entityData->speedUpTurnsLeft[index]  == 0)
        {
            entityData->speedUpTurnsLeft[index]  = turns;
            break;
        }
    } 
    movSpeed_1 = GetMovementSpeed(target);
    if (movSpeed == movSpeed_1) {
        sub_80522F4(pokemon,target,*gUnknown_80FC298);
    }
    else
    {
        sub_8041CB8(target);
        sub_80522F4(pokemon,target,gUnknown_80FA124[movSpeed_1]);
        entityData->unkF8 = 1;
        entityData->attacking = FALSE;
    }
  }
  DungeonEntityUpdateStatusSprites(target);
}

void sub_80779F0(struct DungeonEntity * pokemon, struct DungeonEntity * target, s32 param_3, bool8 displayMessage)
{
  s32 movSpeed;
  s32 iVar4;
  s32 index;
  s32 movSpeed_1;
  struct DungeonEntityData *entityData;
  
  if (!EntityExists(target)) {
    return;
  }
  if (HasSafeguardStatus(pokemon,target,displayMessage)) {
    return;
  }
  entityData = target->entityData;
  SetMessageArgument(gAvailablePokemonNames,target,0);
  movSpeed = GetMovementSpeed(target);
  if (movSpeed == 0) {
    if (displayMessage)
        sub_80522F4(pokemon,target,*gUnknown_80FC2D8);
  }
  else {
    for(iVar4 = 0; iVar4 < param_3; iVar4++)
    {
        for(index = 0; index < NUM_SPEED_TURN_COUNTERS; index++)
        {
            if (entityData->slowTurnsLeft[index]== 0) {
                entityData->slowTurnsLeft[index] = CalculateStatusTurns(target,gUnknown_80F4E48,1) + 1;
                break;
            }
        }
    }
    movSpeed_1 = GetMovementSpeed(target);
    if (movSpeed == movSpeed_1) {
        if (displayMessage)
            sub_80522F4(pokemon,target,*gUnknown_80FC298);
    }
    else
    {
        sub_8041CCC(target);
        sub_80522F4(pokemon,target,gUnknown_80FA124[movSpeed_1]);
    }
  }
  DungeonEntityUpdateStatusSprites(target);
}

void sub_8077AE4(struct DungeonEntity * pokemon, struct DungeonEntity * target, bool8 displayMessage)
{
  struct DungeonEntityData *entityData;
  
  if (!EntityExists(target)) {
    return;
  }

  if (HasSafeguardStatus(pokemon,target,displayMessage)) {
    return;
  }

  SetMessageArgument(gAvailablePokemonNames,target,0);
  if (HasItem(target,ITEM_ID_PERSIM_BAND)) {
    if (displayMessage)
        sub_80522F4(pokemon,target,*gUnknown_80FD500);
  }
  else
  {
    if (HasAbility(target, ABILITY_OWN_TEMPO)) {
        if (displayMessage)
            sub_80522F4(pokemon,target,*gUnknown_80FCDB4);
    }
    else
    {
      sub_8041BE8(target);
      entityData = target->entityData;
      if (entityData->volatileStatus != VOLATILE_STATUS_CONFUSED) {
        entityData->volatileStatus = VOLATILE_STATUS_CONFUSED;
        entityData->volatileStatusTurnsLeft = CalculateStatusTurns(target,gUnknown_80F4E4C,1) + 1;
        sub_80522F4(pokemon,target,*gUnknown_80FB25C);
      }
      else {
        sub_80522F4(pokemon,target,*gUnknown_80FB27C);
      }
      DungeonEntityUpdateStatusSprites(target);
    }
  }
}

void sub_8077BB4(struct DungeonEntity * pokemon, struct DungeonEntity * target, bool8 displayMessage)
{
  struct DungeonEntityData *iVar3;
  
  if ((EntityExists(target)) && (!HasSafeguardStatus(pokemon,target,displayMessage))) {
    iVar3 = target->entityData;
    SetMessageArgument(gAvailablePokemonNames,target,0);
    if (iVar3->volatileStatus != VOLATILE_STATUS_COWERING) {
      iVar3->volatileStatus = VOLATILE_STATUS_COWERING;
      iVar3->volatileStatusTurnsLeft = CalculateStatusTurns(target,gUnknown_80F4ECC,1) + 1;
      sub_8041BF8(target);
      sub_80522F4(pokemon,target,*gUnknown_80FB940);
    }
    else {
      sub_80522F4(pokemon,target,*gUnknown_80FB960);
    }
    DungeonEntityUpdateStatusSprites(target);
  }
}
