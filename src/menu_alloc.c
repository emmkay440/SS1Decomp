#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"
#include "save.h"

void bzero(void *dest, u32 size);

extern u8 gMenuPage;
extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern u32 *gMenuEquipment;
extern u16 *gUnknown_03000494;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern struct Options *gUnknown_030004B8;
extern u16 *gMenuStatBlock;          // struct StatBlock (read here as u16s)
extern u16 gMenuSavedStatPoints;
extern struct SkillBlock *gMenuSkillBlock;
extern u16 gMenuSavedSkillPoints;
extern u32 gUnknown_03000488;

void GetInventory(u32 *dest);
void GetStatBlock(void *dest);
void GetSkillBlock(struct SkillBlock *dest);
void GetWeapons(u32 *dest);
u32 sub_08013A58(void);
u32 GetArmor(void);
u32 sub_08013A78(void);
void sub_08013AC4(u16 *dest);
void sub_08013B94(u32 which, struct Item *dest);
void GetStorage(struct Item *dest);
void GetOptions(struct Options *dest);
u32 sub_08040D44(void);

static inline void CopyCharacter(void)
{
    gMenuInventory = Alloc(100);
    GetInventory((u32 *)gMenuInventory);
    gMenuStatBlock = Alloc(0x1C);
    bzero(gMenuStatBlock, 0x1C);
    GetStatBlock(gMenuStatBlock);
    gMenuSavedStatPoints = gMenuStatBlock[12];
    gMenuSkillBlock = Alloc(0x24);
    bzero(gMenuSkillBlock, 0x24);
    GetSkillBlock(gMenuSkillBlock);
    gMenuSavedSkillPoints = *(u16 *)gMenuSkillBlock;
}

// Makes the menu's working copies for `page` (written back by
// ApplyMenuChanges): inventory, stats and skills; equipment except on page
// 7; a 20 x 3 list on pages 2-4 (sub_08013B94) and the storage except on
// page 1. Page 8 only copies the character, page 9 the options, page 6
// nothing.
void sub_0803F73C(u8 page)
{
    gMenuPage = page;
    if (gMenuPage != 6 && gMenuPage != 8 && gMenuPage != 9)
    {
        CopyCharacter();
        if (gMenuPage != 7)
        {
            gMenuWeapons = Alloc(12);
            GetWeapons(gMenuWeapons);
            gMenuEquipment = Alloc(16);
            gMenuEquipment[0] = sub_08013A58();
            gMenuEquipment[1] = GetArmor();
            gMenuEquipment[2] = sub_08013A78();
            bzero(&gMenuEquipment[3], 4);
            gUnknown_03000494 = Alloc(12);
            sub_08013AC4(gUnknown_03000494);
        }
        if (gMenuPage != 1)
        {
            if (gMenuPage != 5)
            {
                gUnknown_030004A4 = Alloc(0x3C);
                bzero(gUnknown_030004A4, 0x3C);
                switch (gMenuPage)
                {
                case 2:
                    sub_08013B94(0, gUnknown_030004A4);
                    break;
                case 3:
                    sub_08013B94(1, gUnknown_030004A4);
                    break;
                case 4:
                    sub_08013B94(2, gUnknown_030004A4);
                    break;
                }
                gUnknown_030004A8 = Alloc(0xF0);
                bzero(gUnknown_030004A8, 0xF0);
                GetStorage(gUnknown_030004A8);
            }
            else
            {
                gUnknown_030004A4 = Alloc(0xF0);
                bzero(gUnknown_030004A4, 0xF0);
                GetStorage(gUnknown_030004A4);
            }
        }
    }
    else if (gMenuPage == 8)
    {
        CopyCharacter();
    }
    else if (gMenuPage == 9)
    {
        gUnknown_030004B8 = Alloc(4);
        bzero(gUnknown_030004B8, 4);
        GetOptions(gUnknown_030004B8);
    }
    gUnknown_03000488 = sub_08040D44();
}
