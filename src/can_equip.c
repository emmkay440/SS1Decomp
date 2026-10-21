#include "global.h"
#include "data_record.h"
#include "item.h"
#include "player.h"
#include "player_stats.h"

u32 GetPlayerClass(void);

// Item word bits this function tests.
struct ItemAppraisal
{
    u32 unk0:15;
    u32 unappraised15:1;  // category 5
    u32 unk16:10;
    u32 unappraised:1;    // weapons, armor, head gear
    u32 unk27:5;
};

// TRUE if the player may equip `item`: it must be appraised and allowed for
// the player's class (a class bit mask in its record; category 5 items
// suit every class). Weapons also need the class's skill level for the
// weapon type (record +0x159; the Mage has no requirement), armor and
// head gear a minimum STR. Other categories are always TRUE.
bool32 CanEquipItem(struct Item *item)
{
    struct PlayerStats *stats = &gPlayerStats;
    u8 *record;
    u8 classes;
    u8 required;
    u8 level;

    if (item == NULL)
        return FALSE;
    switch (item->category)
    {
    case ITEM_CATEGORY_WEAPON:
        if (((struct ItemAppraisal *)item)->unappraised)
            return FALSE;
        record = GetDataRecord(item->id | 0x50000);
        classes = record[0x15A];
        required = record[0x152];
        switch ((s32)GetPlayerClass())
        {
        case 0:
            switch (record[0x159])
            {
            case 3:
            case 4:
                level = gPlayerStats.skillBlock.skills[2].level;
                break;
            case 5:
            case 6:
                level = gPlayerStats.skillBlock.skills[1].level;
                break;
            case 1:
            case 2:
                level = gPlayerStats.skillBlock.skills[0].level;
                break;
            }
            break;
        case 1:
            required = 0;
            level = 0;
            break;
        case 2:
            switch (record[0x159])
            {
            case 3:
            case 4:
                level = stats->skillBlock.skills[1].level;
                break;
            case 9:
                level = gPlayerStats.skillBlock.skills[0].level;
                break;
            }
            break;
        case 3:
            switch (record[0x159])
            {
            case 7:
                level = stats->skillBlock.skills[1].level;
                break;
            case 5:
            case 6:
                level = gPlayerStats.skillBlock.skills[0].level;
                break;
            }
            break;
        }
        if (level < required)
            return FALSE;
        break;
    case ITEM_CATEGORY_ARMOR:
        if (((struct ItemAppraisal *)item)->unappraised)
            return FALSE;
    {
        u8 *armor = GetDataRecord(item->id | 0x60000);

        classes = armor[0xF8];
        if (armor[0xF1] > (s16)gPlayers[GetMultiplayerId()].str)
            return FALSE;
    }
        break;
    case ITEM_CATEGORY_HEAD:
        if (((struct ItemAppraisal *)item)->unappraised)
            return FALSE;
    {
        u8 *head = GetDataRecord(item->id | 0x70000);

        classes = head[0xF8];
        if (head[0xF1] > (s16)gPlayers[GetMultiplayerId()].str)
            return FALSE;
    }
        break;
    case ITEM_CATEGORY_5:
        if (((struct ItemAppraisal *)item)->unappraised15)
            return FALSE;
        classes = 0xF;
        break;
    default:
        return TRUE;
    }
    if (!((classes >> (stats->classAndColor >> 2)) & 1))
        return FALSE;
    return TRUE;
}
