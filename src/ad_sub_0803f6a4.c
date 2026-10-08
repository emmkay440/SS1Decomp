#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"

extern struct Item *gMenuInventory;
extern struct Item *gMenuWeapons;
extern u32 *gMenuEquipment;
extern struct StatBlock *gMenuStatBlock;
extern struct SkillBlock *gMenuSkillBlock;
extern void *gUnknown_03000494;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern u32 gUnknown_030004B8;

void sub_0803F6A4(void) {
    if (gMenuInventory != NULL) {
        Free(gMenuInventory);
    }
    if (gMenuWeapons != NULL) {
        Free(gMenuWeapons);
    }
    if (gUnknown_03000494 != NULL) {
        Free(gUnknown_03000494);
    }
    if (gMenuEquipment != NULL) {
        Free(gMenuEquipment);
    }
    if (gUnknown_030004A4 != NULL) {
        Free(gUnknown_030004A4);
    }
    if (gUnknown_030004A8 != NULL) {
        Free(gUnknown_030004A8);
    }
    if (gMenuStatBlock != NULL) {
        Free(gMenuStatBlock);
    }
    if (gMenuSkillBlock != NULL) {
        Free(gMenuSkillBlock);
    }
    if (gUnknown_030004B8 != NULL) {
        Free(gUnknown_030004B8);
    }
}
