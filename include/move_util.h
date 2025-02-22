#ifndef GUARD_MOVE_UTIL_H
#define GUARD_MOVE_UTIL_H

#include "dungeon_entity.h"

bool8 IsMoveIndexUsable(struct DungeonEntity *pokemon, s32 moveIndex, bool8 hasPPChecker);
bool8 IsMoveUsable(struct DungeonEntity *pokemon, struct PokemonMove *move, bool8 hasPPChecker);

#endif
