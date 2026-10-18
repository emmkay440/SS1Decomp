#include "global.h"
#include "item.h"
#include "menu.h"
#include "player_stats.h"

// gPlayers +0x48..+0x53 (sub_08016E4C).
struct AttackBlock
{
    s16 attack;
    s16 defense;
    u16 unk4;
    s16 maxSp;
    s16 maxHp;
    u16 unkA;
};

u8 sub_080460F8(void);
void sub_08016DC0(void);
void sub_08014114(void);
void sub_08014160(void);
void sub_08016E4C(void *dest);
void sub_08016E24(void *dest);
bool32 sub_08045F50(void);
struct Item *sub_08040C98(void);
struct MenuSlot *sub_08046004(void);
struct Item *sub_0804087C(struct MenuSlot *slot);
u32 sub_0800F78C(struct Item *item);
struct Item *sub_08040C24(void);
struct Item *sub_08040C3C(void);
u32 sub_08043DB8(u16 a, u16 b);
u32 sub_08043DA0(s32 a, s32 b);
void sub_08022F60(s32 x, s32 y, u32 value, u8 color);

// Category 1 items 8-11 raise one stat by one (a guess: stat seeds); flag
// the stat and count it in `stats`.
#define COUNT_STAT_ITEM(item, flags, stats)          \
    if ((item)->category == 1)                       \
    {                                                \
        switch ((item)->id)                          \
        {                                            \
        case 8:                                      \
            flags |= 2;                              \
            (stats)->str++;                          \
            break;                                   \
        case 9:                                      \
            flags |= 4;                              \
            (stats)->vit++;                          \
            break;                                   \
        case 10:                                     \
            flags |= 0x400000;                       \
            (stats)->dex++;                          \
            break;                                   \
        case 11:                                     \
            flags |= 8;                              \
            (stats)->int_++;                         \
            break;                                   \
        }                                            \
    }

// Item menu: redraws the status values that the selected item (and the
// equipped one of its kind) would change, colored by whether they go up or
// down (sub_08043DB8 / sub_08043DA0).
void sub_08042FF8(void)
{
    struct StatBlock before;
    struct StatBlock after;
    struct AttackBlock atkBefore;
    struct AttackBlock atkAfter;
    struct Item *item;
    u32 flags;
    u8 color;

    if (sub_080460F8() == 2)
    {
        sub_08016DC0();
        sub_08014114();
        sub_08014160();
        sub_08016DC0();
    }
    sub_08016E4C(&atkBefore);
    sub_08016E24(&before);
    if (sub_080460F8() != 2)
    {
        sub_08016DC0();
        sub_08014114();
        sub_08014160();
        sub_08016DC0();
    }
    sub_08016E4C(&atkAfter);
    sub_08016E24(&after);
    if (sub_08045F50())
        item = sub_08040C98();
    else
        item = sub_0804087C(sub_08046004());
    flags = sub_0800F78C(item);
    COUNT_STAT_ITEM(item, flags, &after);
    switch (item->category)
    {
    case 2:
        item = sub_08040C24();
        item += gPlayerStats.currentWeapon;
        break;
    case 4:
        item = sub_08040C3C();
        break;
    case 3:
        item = sub_08040C3C() + 1;
        break;
    case 5:
        item = sub_08040C3C() + 2;
        break;
    default:
        item = NULL;
        break;
    }
    if (item != NULL)
    {
        flags |= sub_0800F78C(item);
        COUNT_STAT_ITEM(item, flags, &after);
    }
    if (atkBefore.attack != atkAfter.attack)
        flags |= 0x200;
    if ((u16)atkBefore.defense != (u16)atkAfter.defense)
        flags |= 0x400;
    if (before.vit != after.vit)
        flags |= 4;
    if ((s16)before.str != (s16)after.str)
        flags |= 2;
    if ((s16)before.dex != (s16)after.dex)
        flags |= 0x400000;
    if ((s16)before.int_ != (s16)after.int_)
        flags |= 8;
    if ((s16)before.unkA != (s16)after.unkA)
        flags |= 0x40;
    if ((s16)before.unkC != (s16)after.unkC)
        flags |= 0x80;
    if ((s16)before.unkE != (s16)after.unkE)
        flags |= 0x100;
    if (flags & 0x40)
    {
        color = sub_08043DB8(before.unkA, after.unkA);
        sub_08022F60(0x48, 0x78, (s16)after.unkA, color);
    }
    if (flags & 0x80)
    {
        color = sub_08043DB8(before.unkC, after.unkC);
        sub_08022F60(0x48, 0x80, (s16)after.unkC, color);
    }
    if (flags & 0x100)
    {
        color = sub_08043DB8(before.unkE, after.unkE);
        sub_08022F60(0x48, 0x88, (s16)after.unkE, color);
    }
    if (flags & 0x200)
    {
        color = sub_08043DA0(atkBefore.attack, atkAfter.attack);
        sub_08022F60(0x98, 0x78, atkAfter.attack, color);
    }
    if (flags & 0x400)
    {
        color = sub_08043DA0(atkBefore.defense, atkAfter.defense);
        sub_08022F60(0x98, 0x80, atkAfter.defense, color);
    }
    if (flags & 4)
    {
        color = sub_08043DB8(before.vit, after.vit);
        sub_08022F60(0x98, 0x88, (s16)after.vit, color);
    }
    if (flags & 2)
    {
        color = sub_08043DB8(before.str, after.str);
        sub_08022F60(0xE8, 0x78, (s16)after.str, color);
    }
    if (flags & 0x400000)
    {
        color = sub_08043DB8(before.dex, after.dex);
        sub_08022F60(0xE8, 0x80, (s16)after.dex, color);
    }
    if (flags & 8)
    {
        color = sub_08043DB8(before.int_, after.int_);
        sub_08022F60(0xE8, 0x88, (s16)after.int_, color);
    }
}
