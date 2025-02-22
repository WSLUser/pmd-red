#ifndef GUARD_DUNGEON_POKEMON_ATTRIBUTES_H
#define GUARD_DUNGEON_POKEMON_ATTRIBUTES_H

#include "dungeon_entity.h"

bool8 HasSafeguardStatus(struct DungeonEntity * param_1, struct DungeonEntity * param_2, bool8 displayMessage);
bool8 sub_80717A4(struct DungeonEntity *pokemon, u16 moveID);
bool8 HasAbility(struct DungeonEntity *pokemon, u8 ability);
bool8 HasType(struct DungeonEntity *pokemon, u8 type);
bool8 CanSeeInvisible(struct DungeonEntity *pokemon);
bool8 HasTactic(struct DungeonEntity *pokemon, u8 tactic);
bool8 HasIQSkill(struct DungeonEntity *pokemon, u8 IQSkill);
void LoadIQSkills(struct DungeonEntity *pokemon);
bool8 CanSeeTeammate(struct DungeonEntity * pokemon);
u8 GetMoveTypeForPokemon(struct DungeonEntity *pokemon, struct PokemonMove *pokeMove);
s32 CalculateMovePower(struct DungeonEntity *pokemon, struct PokemonMove *pokeMove);
bool8 ToolboxEnabled(struct DungeonEntityData *pokemon);
bool8 SetVisualFlags(struct DungeonEntityData *entityData, u16 newFlag, bool8 param_3);

#endif
