#include "global.h"
#include "sprite_obj.h"
#include "heap.h"
#include "save.h"
#include "copy_queue.h"
#include "thread.h"

extern struct SaveSlotInfo *gUnknown_03000764;
extern u8 gUnknown_030005F0;
extern u8 gUnknown_030005F5;
extern u8 gUnknown_030005F8;
extern u16 gUnknown_03000614[3];
extern u16 gUnknown_0300061C[3];

bool32 sub_0802F374(struct SaveSlotInfo *info, u8 slot);
void sub_080472FC(void);

extern u16 gUnknown_03000614[3];
extern u16 gUnknown_0300061C[3];
extern u8 gUnknown_030005F7;
extern struct SpriteObj gUnknown_03000730;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);

// Animates and draws the two arrows; gUnknown_030005F7 picks which one is
// drawn scaled and which sprite goes between them (like sub_08043B28).
void sub_0804837C(void)
{
    u8 flag;

    sub_08026C40(&gUnknown_03000730, 4, &gUnknown_03000614[0], &gUnknown_0300061C[0], 1);
    sub_08026C40(&gUnknown_03000730, 5, &gUnknown_03000614[1], &gUnknown_0300061C[1], 1);
    flag = gUnknown_030005F7;
    if (flag)
    {
        sub_08026BC4(&gUnknown_03000730, 0xCC, 0x94, 4, gUnknown_03000614[0]);
        sub_08026B90(&gUnknown_03000730, 0xE2, 0x94, 5, gUnknown_03000614[1]);
        sub_08026B90(&gUnknown_03000730, 0xD7, 0x94, 8, 0);
    }
    else
    {
        sub_08026B90(&gUnknown_03000730, 0xCC, 0x94, 4, gUnknown_03000614[0]);
        sub_08026BC4(&gUnknown_03000730, 0xE2, 0x94, 5, gUnknown_03000614[1]);
        sub_08026B90(&gUnknown_03000730, 0xD7, 0x94, 9, flag);
    }
}

void sub_08048428(void)
{
    if (gUnknown_03000764 != NULL)
        Free(gUnknown_03000764);
}

u8 sub_08048440(void)
{
    u8 state = gUnknown_030005F0;

    if (state != 10 && state != 12)
        return FALSE;
    return TRUE;
}

u8 sub_08048458(void)
{
    return gUnknown_030005F0;
}

void sub_08048464(void)
{
    if (gUnknown_03000764 != NULL)
        sub_0802F374(gUnknown_03000764, gUnknown_030005F5);
}

// Queues a copy and waits a frame; large copies go 0x1000 bytes per frame
// (a remainder below 0x1000 is dropped).
void sub_08048484(const u8 *src, u8 *dest, u32 size)
{
    s32 i;
    s32 count;

    if (size > 0xFFF)
    {
        count = size >> 12;
        for (i = 0; i < count; i++)
        {
            QueueCopy(src + i * 0x1000, dest + i * 0x1000, 0x1000);
            if (gUnknown_030005F8 != 2)
                sub_080472FC();
            WaitFrame();
        }
    }
    else
    {
        QueueCopy(src, dest, size);
        if (gUnknown_030005F8 != 2)
            sub_080472FC();
        WaitFrame();
    }
}

void sub_080484F0(void)
{
    u8 i;

    for (i = 0; i < 3; i++)
    {
        gUnknown_03000614[i] = 0;
        gUnknown_0300061C[i] = 0;
    }
}

// TRUE if the selected slot's name has a character other than 0 or 0xFF in
// its first 11.
bool32 sub_0804851C(void)
{
    u8 i;

    for (i = 0; i < 11; i++)
    {
        if (gUnknown_03000764[gUnknown_030005F5].name[i] != 0
            && gUnknown_03000764[gUnknown_030005F5].name[i] != 0xFF)
            return TRUE;
    }
    return FALSE;
}
