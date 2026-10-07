#ifndef GUARD_CONSTANTS_ITEMS_H
#define GUARD_CONSTANTS_ITEMS_H

// Item words (inventory slots, weapons, armor); see docs/variables.md.
#define ITEM_CATEGORY(item) (((item) >> 4) & 7)
#define ITEM_ID(item)       (((item) >> 7) & 0x7F)
#define ITEM_COUNT(item)    ((u32)(item) >> 15)   // stackable items; other items keep other data there
#define ITEM_UNAPPRAISED    (1 << 26)  // "?robe": can't be equipped (CanPutItemInSlot)

#define ITEM_CATEGORY_NONE   0
#define ITEM_CATEGORY_USABLE 1  // checked against the Mage's inventory
#define ITEM_CATEGORY_WEAPON 2
#define ITEM_CATEGORY_ARMOR  3  // body slot (gPlayerStats.armor)
#define ITEM_CATEGORY_HEAD   4  // head slot (+0x7C); Bandana
#define ITEM_CATEGORY_5      5  // third equipment slot (+0x84)
#define ITEM_CATEGORY_6      6  // Mithril (material?)
#define ITEM_CATEGORY_STACK  7  // gold: stacks of up to 100000 (shops take from them)

// Usable item ids (category 1), from the in-game inventory (2026-10-07)
#define ITEM_HERB          0
#define ITEM_GODDESS_TEAR  3
#define ITEM_ANGEL_WING    6
#define ITEM_VALUING_SCROLL 12

// Weapons (category 2); data records: GetDataRecord(5 << 16 | id)
#define WEAPON_SHORT_SWORD  0
#define WEAPON_LONG_SWORD   2
#define WEAPON_SHORT_SPEAR  16
#define WEAPON_TOMAHAWK     39

// Armor (category 3); data records: GetDataRecord(6 << 16 | id)
#define ARMOR_ROBE          0
#define ARMOR_COTTON_ROBE   2

// Head (category 4); data records: GetDataRecord(7 << 16 | id)
#define HEAD_BANDANA        1

// Category 6
#define MATERIAL_MITHRIL    0

#endif // GUARD_CONSTANTS_ITEMS_H
