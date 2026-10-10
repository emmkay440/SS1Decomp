#include "global.h"
#include "save.h"

union CursorCell
{
    u16 raw;
    struct
    {
        u8 column;
        u8 row;
    } c;
};

struct CursorPos
{
    u8 x;
    u8 y;
};

extern u8 gUnknown_030005F0;
extern u8 gUnknown_030005F2;
extern u8 gUnknown_030005F5;
extern struct CursorPos gUnknown_030005FC;
extern union CursorCell gUnknown_03000600;
extern struct SaveSlotInfo *gUnknown_03000764;

// In state 5 (name entry): screen position of the cursor for its cell. On
// pages 0 and 1 the columns come in three groups with a gap between them.
void sub_08047E78(void)
{
    if (gUnknown_030005F0 == 5)
    {
        if (gUnknown_03000600.raw == 0x60C)
        {
            gUnknown_030005FC.x = 0xE4;
            gUnknown_030005FC.y = 0x94;
        }
        else
        {
            switch (gUnknown_030005F2)
            {
            case 0:
            case 1:
                {
                    u8 column = gUnknown_03000600.c.column;
                    u8 base = 0x10;

                    if (column > 4)
                    {
                        base = 0x20;
                        if (column <= 9)
                            base = 0x18;
                    }
                    gUnknown_030005FC.x = base + gUnknown_03000600.c.column * 16;
                    gUnknown_030005FC.y = gUnknown_03000600.c.row * 16 + 0x30;
                }
                break;
            case 2:
                gUnknown_030005FC.x = gUnknown_03000600.c.column * 16 + 0x10;
                gUnknown_030005FC.y = gUnknown_03000600.c.row * 16 + 0x30;
                break;
            }
        }
    }
}

// Replaces the empty characters before the last one of the selected slot's
// name with 0xFF (a space?).
void sub_08047EFC(void)
{
    u8 last = 0;
    u8 i;

    for (i = 0; i < 11; i++)
    {
        if (gUnknown_03000764[gUnknown_030005F5].name[i] != 0)
            last = i;
    }
    for (i = 0; i < last; i++)
    {
        if (gUnknown_03000764[gUnknown_030005F5].name[i] == 0)
            gUnknown_03000764[gUnknown_030005F5].name[i] = 0xFF;
    }
}
