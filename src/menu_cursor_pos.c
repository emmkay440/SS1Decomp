#include "global.h"
#include "menu_cursor.h"

// Sets a slot's screen position (unk0, unk1) from its type and subSlot.
void sub_08045304(struct MenuSlotBytes *slot)
{
    u8 index;

    switch (slot->type)
    {
    case 1:
        slot->unk0 = 0x2C - slot->subSlot * 16;
        slot->unk1 = slot->subSlot * 8 + 0x1F;
        break;
    case 2:
        if (slot->subSlot == 0)
        {
            slot->unk0 = 0x3C;
            slot->unk1 = 0x3F;
        }
        else if (slot->subSlot > 2)
        {
            slot->unk0 = 0x24;
            slot->unk1 = 0x50;
        }
        else if (slot->subSlot > 1)
        {
            slot->unk0 = 0xB;
            slot->unk1 = 0x57;
        }
        else
        {
            slot->unk0 = 0x3C;
            slot->unk1 = 0x5F;
        }
        break;
    case 3:
        slot->unk0 = (u8)(slot->subSlot % 5) * 16 + 0x58;
        slot->unk1 = (u8)(slot->subSlot / 5) * 16 + 0x1F;
        break;
    case 4:
        slot->unk0 = slot->subSlot * 16 - 0x3F;
        slot->unk1 = slot->subSlot * 8 + 0x1F;
        break;
    case 5:
        slot->unk0 = 0xC9;
        slot->unk1 = 0x59;
        break;
    case 6:
        index = slot->subSlot - gUnknown_030005BB * 15;
        slot->unk0 = (u8)(index % 3) * 16 - 0x40;
        slot->unk1 = (u8)(index / 3) * 16 + 0x1F;
        break;
    }
}
