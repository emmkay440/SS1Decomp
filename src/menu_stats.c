#include "global.h"
#include "item.h"
#include "menu.h"
#include "player_stats.h"

// Stats/skills menu (working copies gMenuStatBlock / gMenuSkillBlock) and
// some item helpers.

extern struct StatBlock *gMenuStatBlock;
extern struct SkillBlock *gMenuSkillBlock;
extern u16 gMenuSavedStatPoints;
extern u16 gMenuSavedSkillPoints;
extern u8 gUnknown_0300047A;
extern u8 gUnknown_0300047B;
extern u8 gUnknown_0300047C;
extern u32 gUnknown_0300048C;
extern u32 gUnknown_03000490;
extern s8 gUnknown_030004C0;
extern u8 gUnknown_03000479;
extern u8 gMenuPage;
extern struct Item *gMenuSelectedItem;
extern struct MenuSlot gMenuSelectedSlot;
extern u32 *gMenuWeapons;
extern struct Item *gUnknown_030004A4;

void bzero(void *dest, u32 size);
u8 CanPutItemInSlot(struct MenuSlot *slot, struct Item *item);
void SetWeapon(u8 i, u32 item);
void SetArmor(u32 item);
void sub_08013A64(u32 item);
void sub_08013A84(u32 item);
void sub_080140AC(void);
void sub_08016DC0(void);
void GetWeapons(u32 *dest);

u16 sub_08041074(void)
{
    return gMenuStatBlock->statPoints;
}

// Adds skill points gained since the menu opened to the menu's copy.
struct SkillBlock *sub_08041080(void)
{
    struct SkillBlock skills;

    GetSkillBlock(&skills);
    if (gMenuSavedSkillPoints != skills.points)
    {
        gMenuSkillBlock->points += skills.points - gMenuSavedSkillPoints;
        gMenuSavedSkillPoints = skills.points;
    }
    return gMenuSkillBlock;
}

u16 sub_080410BC(void)
{
    return gMenuSkillBlock->points;
}

bool32 CanSwapItems(struct MenuSlot *slot, struct Item *item)
{
    if (!CanPutItemInSlot(slot, gMenuSelectedItem))
        return FALSE;
    if (!CanPutItemInSlot(&gMenuSelectedSlot, item))
        return FALSE;
    if (gMenuSelectedItem->category == ITEM_CATEGORY_STACK && item->category != ITEM_CATEGORY_STACK
     && gUnknown_03000479)
        return FALSE;
    return TRUE;
}

// Unappraised flag: bit 26 for weapons/armor/head gear, bit 15 for category 5.
u32 IsItemUnappraised(struct Item *item)
{
    u32 raw = *(u32 *)item;

    switch (item->category)
    {
    case 2:
        return (raw << 5) >> 31;
    case 3:
        return (raw << 5) >> 31;
    case 4:
        return (raw << 5) >> 31;
    case 5:
        return (raw << 16) >> 31;
    }
    return 0;
}

// Equips *item in the slot for its category. Usable items: TRUE for ids 8-11.
bool32 EquipItem(struct Item *item, u8 slot)
{
    if (item == NULL)
        return FALSE;
    switch (item->category)
    {
    case 2:
        SetWeapon(slot, *(u32 *)item);
        sub_080140AC();
        return TRUE;
    case 4:
        sub_08013A64(*(u32 *)item);
        return TRUE;
    case 3:
        SetArmor(*(u32 *)item);
        return TRUE;
    case 5:
        sub_08013A84(*(u32 *)item);
        return TRUE;
    case 1:
        if ((u32)(item->id - 8) <= 3)
            return TRUE;
        break;
    }
    return FALSE;
}

// TRUE if the menu changed the level of skill `i`.
bool32 sub_080411D0(u8 i)
{
    struct SkillBlock skills;

    GetSkillBlock(&skills);
    if (skills.skills[i].level != gMenuSkillBlock->skills[i].level)
        return TRUE;
    return FALSE;
}

// Same as sub_080411D0; the original inlines it into sub_08041208.
static inline u8 SkillLevelChanged(u8 i)
{
    struct SkillBlock skills;

    GetSkillBlock(&skills);
    if (skills.skills[i].level != gMenuSkillBlock->skills[i].level)
        return TRUE;
    return FALSE;
}

bool32 sub_08041208(u8 i, u8 max)
{
    struct SkillBlock skills;

    if (!SkillLevelChanged(i))
    {
        GetSkillBlock(&skills);
        if (skills.skills[i].unk2 >= max)
            return FALSE;
    }
    return TRUE;
}
