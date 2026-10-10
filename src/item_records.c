#include "global.h"
#include "player_stats.h"
#include "item.h"
#include "data_record.h"

void *GetWeaponRecord(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 2)
        record = GetDataRecord(item->id | 0x50000);
    return record;
}

void *GetArmorRecord(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 3)
        record = GetDataRecord(item->id | 0x60000);
    return record;
}

void *GetHeadRecord(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 4)
        record = GetDataRecord(item->id | 0x70000);
    return record;
}

void *GetUsableItemRecord(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 1)
        record = GetDataRecord(item->id | 0xA0000);
    return record;
}

void *GetCategory5Record(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 5)
        record = GetDataRecord(item->id | 0xB0000);
    return record;
}

void *GetCategory6Record(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == 6)
        record = GetDataRecord(item->id | 0x160000);
    return record;
}
