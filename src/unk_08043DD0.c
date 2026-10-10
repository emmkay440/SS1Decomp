#include "global.h"

// Same layout as struct MenuSlot, with type/subSlot as separate bytes.
struct MenuSlotBytes
{
    u8 unk0;
    u8 unk1;
    u8 type;
    u8 subSlot;
};

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
