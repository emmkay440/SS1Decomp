#include "global.h"
#include "item.h"
#include "player_stats.h"

#define MAX_STACK 100000

// The category 7 slot with the largest count that isn't full, from `start`
// on; -1 if there is none.
static inline s32 FindStack(s32 start)
{
    s32 slot = start;
    struct Item *item;
    s32 best;
    s32 i;

    if (slot < 0)
        slot = 0;
    item = &gPlayerStats.inventory[slot];
    best = -1;
    for (i = slot; i < INVENTORY_SIZE; i++, item++)
    {
        if (item->category == 7)
        {
            s32 count = item->count;

            if (best < count && count != MAX_STACK)
            {
                slot = i;
                best = count;
            }
        }
    }
    if (best < 0)
        return -1;
    return slot;
}

static inline s32 FindFreeSlot(void)
{
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (gPlayerStats.inventory[i].category == 0)
            return i;
    }
    return -1;
}

// Stores an item in a free slot, with bit 14 cleared.
static inline bool32 SetSlot(s32 slot, struct Item *item)
{
    if (gPlayerStats.inventory[slot].category != 0)
        return FALSE;
    gPlayerStats.inventory[slot] = *item;
    gPlayerStats.inventory[slot].flag14 = 0;
    return TRUE;
}

// Puts an item into the inventory. A category 7 item (stackable, count in
// bits 15-31) is first added to the existing stacks, up to 100000 each;
// what is left of it, or any other item, goes into the first free slot
// with bit 14 cleared. Returns FALSE if there is no free slot (the item
// then keeps the count that didn't fit).
bool32 AddItemToInventory(struct Item *item)
{
    s32 slot;

    if (item->category == 7)
    {
        s32 prev = -1;

        // Stops when FindStack gives the same slot again or none. (The
        // ?: is what puts both tests at the bottom of the loop.)
        while (prev != (slot = FindStack(prev)) ? slot >= 0 : FALSE)
        {
            struct Item *stack;
            u32 total;

            prev = slot;
            if (slot >= INVENTORY_SIZE)
                break;
            stack = &gPlayerStats.inventory[slot];
            total = stack->count + item->count;
            if (total <= MAX_STACK)
            {
                stack->count = total;
                return TRUE;
            }
            stack->count = MAX_STACK;
            item->count = total - MAX_STACK;
        }
    }
    slot = FindFreeSlot();
    if (slot < 0)
        return FALSE;
    return SetSlot(slot, item);
}
