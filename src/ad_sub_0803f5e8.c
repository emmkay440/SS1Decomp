#include "global.h"
#include "item.h"
#include "player_stats.h"

extern u8 gMenuPage;
extern u8 gUnknown_03000479;
extern u8 gUnknown_0300047A;
extern u8 gUnknown_0300047B;
extern u8 gUnknown_0300047C;
extern u32 gUnknown_03000488;
extern u32 gMenuHeldCount;
extern s8 gUnknown_030004C0;
extern u16 gMenuSavedStatPoints;
extern u16 gMenuSavedSkillPoints;
extern struct Item *gMenuInventory;
extern struct Item *gMenuWeapons;
extern void *gUnknown_03000494;
extern struct Item *gMenuEquipment;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern struct Item *gMenuSelectedItem;
extern struct StatBlock *gMenuStatBlock;
extern struct SkillBlock *gMenuSkillBlock;
extern u32 gUnknown_0300048C;
extern u32 gUnknown_03000490;
extern u32 gUnknown_030004B8;

void sub_0803F5E8(void) {
    gMenuPage = 0;
    gUnknown_03000479 = 0;
    gUnknown_03000488 = 0;
    gMenuHeldCount = 0;
    gUnknown_0300047A = 0;
    gUnknown_030004C0 = -1;
    gUnknown_0300047B = 0;
    gUnknown_0300047C = 0;
    gUnknown_0300048C = 0;
    gUnknown_03000490 = 0;
    gMenuSavedStatPoints = 0;
    gMenuSavedSkillPoints = 0;
    gMenuInventory = NULL;
    gMenuWeapons = NULL;
    gUnknown_03000494 = NULL;
    gMenuEquipment = NULL;
    gUnknown_030004A4 = NULL;
    gUnknown_030004A8 = NULL;
    gMenuSelectedItem = NULL;
    gMenuStatBlock = NULL;
    gMenuSkillBlock = NULL;
    gUnknown_030004B8 = 0;
}
