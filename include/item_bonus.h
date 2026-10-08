#ifndef GUARD_ITEM_BONUS_H
#define GUARD_ITEM_BONUS_H

// Stat bonuses on equipment records (GetDataRecord): three slots, each a
// type byte and a signed amount. The record kind decides where they sit.
// What each bonus type means is unknown.

struct BonusesAt153
{
    u8 unk0[0x153];
    u8 type[3];
    s8 value[3];
};

struct BonusesAtF2
{
    u8 unk0[0xF2];
    u8 type[3];
    s8 value[3];
};

struct BonusesAt150
{
    u8 unk0[0x150];
    u8 type[3];
    s8 value[3];
};

#endif // GUARD_ITEM_BONUS_H
