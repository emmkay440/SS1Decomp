#ifndef GUARD_CONSTANTS_ITEMS_H
#define GUARD_CONSTANTS_ITEMS_H

// Item words (inventory slots, weapons, armor); see docs/variables.md.
#define ITEM_CATEGORY(item) (((item) >> 4) & 7)
#define ITEM_ID(item)       (((item) >> 7) & 0x7F)
#define ITEM_COUNT(item)    ((u32)(item) >> 15)   // stackable items

#define ITEM_CATEGORY_NONE   0
#define ITEM_CATEGORY_USABLE 1  // checked against the Mage's inventory
#define ITEM_CATEGORY_WEAPON 2
#define ITEM_CATEGORY_ARMOR  3  // guess
#define ITEM_CATEGORY_STACK  7  // stacks in AddItemToInventory

// Usable item ids (category 1), from the in-game inventory (2026-10-07)
#define ITEM_HERB          0
#define ITEM_GODDESS_TEAR  3
#define ITEM_ANGEL_WING    6

#endif // GUARD_CONSTANTS_ITEMS_H
