#include "global.h"
#include "menu.h"

u8 sub_0803F9D4(struct MenuSlotBytes *slot);

// 2 if sub_0803F9D4 accepts the slot (type, subSlot), else 0.
u32 sub_08043DD0(u8 type, u8 subSlot)
{
    struct MenuSlotBytes slot;

    slot.type = type;
    slot.subSlot = subSlot;
    if (sub_0803F9D4(&slot))
        return 2;
    return 0;
}
