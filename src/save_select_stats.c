#include "global.h"
#include "player_stats.h"
#include "save.h"

// The second block sub_08016FF8 gives for a class (12 bytes).
struct ClassDerived
{
    u16 attack;
    u16 defense;
    u8 unk4[0x8];
};

extern u8 gUnknown_030005F8;

void sub_08016FF8(u32 class, struct StatBlock *stats, struct ClassDerived *other);
void sub_08022F60(s32 x, s32 y, u32 value, u8 color);

// Save select: draws the numbers of a slot's character with (x, y) as the
// origin: level, attack, defense, VIT, then STR, DEX, INT in a second
// column, and unk6 (or unk7 in color 2 when the slot's unk4 is set). An
// empty slot shows the class's starting values at level 1. Nothing is
// drawn while gUnknown_030005F8 is 0; a 2 there becomes 1.
// (Which stat each row shows follows SaveSlotInfo's field names.)
void sub_08047D40(struct SaveSlotInfo *slot, u8 x, u8 y)
{
    struct SaveSlotInfo info;
    struct StatBlock stats;
    struct ClassDerived derived;

    if (gUnknown_030005F8 == 0)
        return;
    if (gUnknown_030005F8 == 2)
        gUnknown_030005F8 = 1;
    if (slot->valid)
    {
        info = *slot;
    }
    else
    {
        sub_08016FF8(slot->class, &stats, &derived);
        info.attack = derived.attack;
        info.defense = derived.defense;
        info.vit = stats.vit;
        info.str = stats.str;
        info.dex = stats.dex;
        info.int_ = stats.int_;
        info.level = 1;
        info.unk6 = 1;
    }
    sub_08022F60(x + 0x48, y + 0x28, info.level, 0);
    sub_08022F60(x + 0x34, y + 0x30, (s16)info.attack, 0);
    sub_08022F60(x + 0x34, y + 0x38, (s16)info.defense, 0);
    sub_08022F60(x + 0x34, y + 0x40, (s16)info.vit, 0);
    sub_08022F60(x + 0x6C, y + 0x30, (s16)info.str, 0);
    sub_08022F60(x + 0x6C, y + 0x38, (s16)info.dex, 0);
    sub_08022F60(x + 0x6C, y + 0x40, (s16)info.int_, 0);
    if (slot->unk4 == 0)
        sub_08022F60(x + 0x7B, y + 0x28, info.unk6, 0);
    else
        sub_08022F60(x + 0x7B, y + 0x28, info.unk7, 2);
}
