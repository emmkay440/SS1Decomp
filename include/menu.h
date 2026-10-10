#ifndef GUARD_MENU_H
#define GUARD_MENU_H

// A slot in MenuScreen (inventory, equipment, ...). CanPutItemInSlot reads
// type and subSlot; some code compares both at once as a u16.
// agbcc aligns every struct and union to 4 bytes, so type/subSlot can't be
// a nested struct; MENU_SLOT_TYPE/SUBSLOT give byte access to pos.
struct MenuSlot
{
    u8 unk0;
    u8 unk1;
    u16 pos;          // low byte: type (1 weapon, 2 equipment, ...), high: subSlot
};

#define MENU_SLOT_TYPE(slot)    (((u8 *)&(slot)->pos)[0])
#define MENU_SLOT_SUBSLOT(slot) (((u8 *)&(slot)->pos)[1])

// Same layout with type/subSlot as separate bytes, for code that accesses
// them as base + offset.
struct MenuSlotBytes
{
    u8 unk0;
    u8 unk1;
    u8 type;
    u8 subSlot;
};

struct MenuSlot *sub_08040CA4(void);
void sub_08040C54(void);

#endif // GUARD_MENU_H
