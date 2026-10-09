#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"
#include "thread.h"

// Menu screen (MenuScreen) working state: sub_0803F5E8 resets it,
// sub_0803F6A4 frees its buffers.
extern u8 gMenuPage;
extern u8 gUnknown_03000479;
extern u8 gUnknown_0300047A;
extern u8 gUnknown_0300047B;
extern u8 gUnknown_0300047C;
extern u32 gUnknown_03000488;
extern u32 gMenuHeldCount;
extern u32 gUnknown_0300048C;
extern u32 gUnknown_03000490;
extern s8 gUnknown_030004C0;
extern u16 gMenuSavedStatPoints;
extern u16 gMenuSavedSkillPoints;
extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern void *gUnknown_03000494;
extern u32 *gMenuEquipment;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern struct Item *gMenuSelectedItem;
extern struct StatBlock *gMenuStatBlock;
extern struct SkillBlock *gMenuSkillBlock;
extern void *gUnknown_030004B8;
extern u8 gUnknown_03006880;
extern u8 gMenuThreadStack[0x400];
extern struct Thread gMenuScreenThread;

void MenuScreen(void);
void sub_0803F5B4(void);

void sub_08045F24(void);
void sub_08043C5C(void);
void sub_0803F6A4(void);
void sub_08045234(u8 value);
void sub_08043D3C(u8 value);
void sub_0803F73C(u8 value);

// Starts MenuScreen on its static stack; sub_0803F5B4 cleans up after it.
void StartMenuScreen(u8 arg)
{
    u8 *stack;

    gUnknown_03006880 = arg;
    stack = gMenuThreadStack;
    gMenuScreenThread.entry = MenuScreen;
    gMenuScreenThread.sp = stack + 0x3FC;
    gMenuScreenThread.stack = stack;
    gMenuScreenThread.priority = 0x37;
    gMenuScreenThread.prev = NULL;
    gMenuScreenThread.next = NULL;
    gMenuScreenThread.onExit = sub_0803F5B4;
    CreateThread(&gMenuScreenThread, 0);
}

void sub_0803F5B4(void)
{
    sub_08045F24();
    sub_08043C5C();
    sub_0803F6A4();
}

// Passes the same value to three modules (sub_08043D3C just stores it).
void sub_0803F5C8(u8 value)
{
    sub_08045234(value);
    sub_08043D3C(value);
    sub_0803F73C(value);
}

void sub_0803F5E8(void)
{
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
    gUnknown_030004B8 = NULL;
}

void sub_0803F6A4(void)
{
    if (gMenuInventory != NULL)
        Free(gMenuInventory);
    if (gMenuWeapons != NULL)
        Free(gMenuWeapons);
    if (gUnknown_03000494 != NULL)
        Free(gUnknown_03000494);
    if (gMenuEquipment != NULL)
        Free(gMenuEquipment);
    if (gUnknown_030004A4 != NULL)
        Free(gUnknown_030004A4);
    if (gUnknown_030004A8 != NULL)
        Free(gUnknown_030004A8);
    if (gMenuStatBlock != NULL)
        Free(gMenuStatBlock);
    if (gMenuSkillBlock != NULL)
        Free(gMenuSkillBlock);
    if (gUnknown_030004B8 != NULL)
        Free(gUnknown_030004B8);
}
