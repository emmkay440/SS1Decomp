#include "global.h"
#include "display.h"
#include "heap.h"
#include "sprite_obj.h"

extern u8 gUnknown_030004C8;
extern u8 gUnknown_030004CB;
extern void *gUnknown_030004FC;
extern void *gUnknown_03000500;
extern void *gUnknown_03000504;
extern void *gUnknown_03000508;
extern void *gUnknown_0300050C;
extern struct SpriteObj gUnknown_03000510;

void sub_08041D30(void);
void sub_08041DE8(void);
void sub_080420EC(void);
void sub_0804288C(void);
void sub_08043378(void);
void sub_08046110(void);

// Frees the five buffers at gUnknown_030004FC.
void sub_08043C5C(void)
{
    if (gUnknown_030004FC != NULL)
    {
        Free(gUnknown_030004FC);
        gUnknown_030004FC = NULL;
    }
    if (gUnknown_03000500 != NULL)
    {
        Free(gUnknown_03000500);
        gUnknown_03000500 = NULL;
    }
    if (gUnknown_03000504 != NULL)
    {
        Free(gUnknown_03000504);
        gUnknown_03000504 = NULL;
    }
    if (gUnknown_03000508 != NULL)
    {
        Free(gUnknown_03000508);
        gUnknown_03000508 = NULL;
    }
    if (gUnknown_0300050C != NULL)
    {
        Free(gUnknown_0300050C);
        gUnknown_0300050C = NULL;
    }
}

void sub_08043CC8(void)
{
    u8 unused[12];

    sub_08041D30();
    sub_080420EC();
    if ((u8)(gUnknown_030004C8 - 8) > 1)
        sub_08041DE8();
    sub_0804288C();
    sub_08043378();
    sub_08046110();
}

void sub_08043CFC(u32 a, u32 b)
{
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[1] = gUnknown_030004CB;
    gUnknown_030004CB++;
    sub_08026B90(&gUnknown_03000510, 0x78, 0x78, a, b);
}

void sub_08043D3C(u8 value)
{
    gUnknown_030004C8 = value;
}
