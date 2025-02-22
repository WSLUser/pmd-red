#include "global.h"
#include "dungeon_util.h"

#include "dungeon_map_access.h"

const struct Position gAdjacentTileOffsets[] = {
    {0, 1},
    {1, 1},
    {1, 0},
    {1, -1},
    {0, -1},
    {-1, -1},
    {-1, 0},
    {-1, 1}
};

bool8 EntityExists(struct DungeonEntity *entity)
{
    if (!entity)
    {
        return FALSE;
    }
    return entity->entityType != ENTITY_NONE;
}

u32 GetEntityType(struct DungeonEntity *entity)
{
    return entity->entityType;
}

u8 GetEntityRoomIndex(struct DungeonEntity *entity)
{
    return entity->roomIndex;
}

struct DungeonEntityData* GetTrapData(struct DungeonEntity *entity)
{
    return entity->entityData;
}

struct ItemSlot* GetItemData(struct DungeonEntity *entity)
{
    return (struct ItemSlot *)entity->entityData;
}

struct DungeonEntityData* GetTrapData_1(struct DungeonEntity *entity)
{
    return entity->entityData;
}

struct ItemSlot* GetItemData_1(struct DungeonEntity *entity)
{
    return (struct ItemSlot*)entity->entityData;
}

struct MapTile* GetMapTileForDungeonEntity_1(struct DungeonEntity *entity)
{
    return GetMapTile_1(entity->posWorld.x, entity->posWorld.y);
}

struct MapTile* GetMapTileForDungeonEntity_2(struct DungeonEntity *entity)
{
    return GetMapTile_2(entity->posWorld.x, entity->posWorld.y);
}
