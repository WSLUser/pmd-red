#ifndef GUARD_TILE_TYPES_H
#define GUARD_TILE_TYPES_H

#include "map.h"

#define DUNGEON_WATER_TYPE_NONE 0
#define DUNGEON_WATER_TYPE_LAVA 1
#define DUNGEON_WATER_TYPE_WATER 2

extern const u8 gDungeonWaterType[];

bool8 IsTileGround(struct MapTile* tile);
bool8 IsWaterTileset();

#endif
