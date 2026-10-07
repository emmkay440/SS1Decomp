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

u8 CanPutItemInSlot(struct MenuSlot *slot, struct Item *item);
void SetWeapon(u8 i, u32 item);
void SetArmor(u32 item);
void sub_08013A64(u32 item);
void sub_08013A84(u32 item);
void sub_080140AC(void);
void sub_08016DC0(void);
void GetWeapons(u32 *dest);
void bzero(void *dest, u32 size);

void ApplyAllocatedPoints(void)
{
    SetStatBlock(gMenuStatBlock);
    gMenuSavedStatPoints = gMenuStatBlock->statPoints;
    SetSkillBlock(gMenuSkillBlock);
    gMenuSavedSkillPoints = gMenuSkillBlock->points;
}

u8 sub_08041294(void)
{
    return gUnknown_0300047A;
}

void sub_080412A0(u32 a, u32 b)
{
    gUnknown_0300047C = 0xA0;
    gUnknown_0300047B = 0xA0;
    gUnknown_0300048C = a;
    gUnknown_03000490 = b;
}

bool32 HaveSkillsChanged(void)
{
    struct SkillBlock skills;
    u8 i;

    GetSkillBlock(&skills);
    for (i = 0; i < NUM_SKILLS; i++)
    {
        if (skills.skills[i].unk2 != gMenuSkillBlock->skills[i].unk2
         || skills.skills[i].level != gMenuSkillBlock->skills[i].level)
            return TRUE;
    }
    return FALSE;
}

void CycleWeapon(void)
{
    u8 unused[0x18];

    if (++gPlayerStats.currentWeapon > 2)
        gPlayerStats.currentWeapon = 0;
    sub_080140AC();
    if (gMenuWeapons != NULL)
        GetWeapons(gMenuWeapons);
    sub_08016DC0();
    sub_08016DC0();
}

u32 sub_0804134C(struct Item *item)
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

void AppraiseItem(struct Item *item)
{
    switch (item->category)
    {
    case 2:
        ((struct ItemFlags *)item)->unappraised = 0;
        break;
    case 3:
        ((struct ItemFlags *)item)->unappraised = 0;
        break;
    case 4:
        ((struct ItemFlags *)item)->unappraised = 0;
        break;
    case 5:
        ((struct ItemFlags *)item)->unappraised15 = 0;
        break;
    }
}

s8 sub_080413B4(void)
{
    return gUnknown_030004C0;
}

void sub_080413C4(u8 i)
{
    if ((u8)(gMenuPage - 2) <= 2)
        bzero(&gUnknown_030004A4[i], 4);
}

void sub_080413F4(void)
{
    gUnknown_030004C0 = -1;
}

// Recompute derived stats as if the menu's stat block were applied, then
// put the real one back.
void sub_08041404(void)
{
    struct StatBlock stats;

    GetStatBlock(&stats);
    SetStatBlock(gMenuStatBlock);
    sub_08016DC0();
    SetStatBlock(&stats);
}

void sub_0804142C(void)
{
    struct SkillBlock skills;

    GetSkillBlock(&skills);
    SetSkillBlock(gMenuSkillBlock);
    sub_08016DC0();
    SetSkillBlock(&skills);
}
