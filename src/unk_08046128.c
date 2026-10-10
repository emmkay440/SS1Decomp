#include "global.h"
#include "item.h"
#include "menu.h"
#include "copy_queue.h"
#include "display.h"
#include "thread.h"
#include "data_record.h"

extern struct MenuSlotBytes gUnknown_030005D8;
extern struct MenuSlot gUnknown_030005D0;

struct Item *sub_08040BF8(void);
void sub_0800EC38(void);
void sub_0800F1EC(u16 duration);
bool32 sub_0800F298(void);

// Points gUnknown_030005D8 at the first empty slot of the menu inventory
// (slot 12 if it's full).
void sub_08046128(void)
{
    struct Item *item;
    s32 i;

    gUnknown_030005D8.type = 3;
    gUnknown_030005D8.subSlot = 12;
    item = sub_08040BF8();
    for (i = 0; i < 25; i++, item++)
    {
        if (item->category == ITEM_CATEGORY_NONE)
        {
            gUnknown_030005D8.subSlot = i;
            break;
        }
    }
}

// Same family as the gUnknown_030005D4 accessors in unk_030005B8_2.c.
struct MenuSlot *sub_08046170(void)
{
    return &gUnknown_030005D0;
}

struct BgCntWord
{
    u16 raw;
};

// Screen setup: text layer on BG0 (char base 2, screen base 28), palette 0
// from a data record, then a 6-frame fade in.
void sub_08046178(void)
{
    struct BgCntWord cnt;

    sub_0800EC38();
    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    EnableDisplayLayers(0x1100, 0, 1);
    cnt.raw = 0x1C08;
    SetBgCnt(0, &cnt.raw);
    LoadPalette(0, GetDataRecord(*(u16 *)GetDataRecord(1) | 0x120000), 15);
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    sub_0800F1EC(6);
    while (!sub_0800F298())
        WaitFrame();
    DisplayOn();
}

// Queues a copy and waits a frame; large copies go 0x1000 bytes per frame
// (a remainder below 0x1000 is dropped). Same as sub_08048484 without the
// sub_080472FC call.
void sub_0804620C(const u8 *src, u8 *dest, u32 size)
{
    s32 i;
    s32 count;

    if (size > 0xFFF)
    {
        count = size >> 12;
        for (i = 0; i < count; i++)
        {
            QueueCopy(src + i * 0x1000, dest + i * 0x1000, 0x1000);
            WaitFrame();
        }
    }
    else
    {
        QueueCopy(src, dest, size);
        WaitFrame();
    }
}
