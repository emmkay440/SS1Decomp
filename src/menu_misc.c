#include "global.h"
#include "display.h"
#include "heap.h"
#include "sprite_obj.h"

extern u8 gUnknown_030004C8;
extern u8 gUnknown_030004C9;
extern u8 gUnknown_030004CA;
extern u8 gUnknown_030004CB;
extern u8 gUnknown_030004CC;
extern u16 gUnknown_030004D0[10];
extern u16 gUnknown_030004E8[10];
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

extern struct SpriteObj gUnknown_03000548;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_0802706C(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d, u8 e);
u8 sub_08045FBC(void);

// Animates and draws the two arrows; sub_08045FBC() picks which of them is
// drawn scaled and which sprite goes between them.
void sub_08043B28(void)
{
    u8 flag;

    sub_08026C40(&gUnknown_03000548, 4, &gUnknown_030004D0[0], &gUnknown_030004E8[0], 1);
    sub_08026C40(&gUnknown_03000548, 5, &gUnknown_030004D0[1], &gUnknown_030004E8[1], 1);
    flag = sub_08045FBC();
    if (flag)
    {
        sub_08026BC4(&gUnknown_03000548, 0xCC, 0x7C, 4, gUnknown_030004D0[0]);
        sub_08026B90(&gUnknown_03000548, 0xE2, 0x7C, 5, gUnknown_030004D0[1]);
        sub_0802706C(&gUnknown_03000548, 0xD7, 0x7C, 8, 0, 0);
    }
    else
    {
        sub_08026B90(&gUnknown_03000548, 0xCC, 0x7C, 4, gUnknown_030004D0[0]);
        sub_08026BC4(&gUnknown_03000548, 0xE2, 0x7C, 5, gUnknown_030004D0[1]);
        sub_0802706C(&gUnknown_03000548, 0xD7, 0x7C, 9, flag, flag);
    }
}

// Resets this screen's state.
void sub_08043BD8(void)
{
    u8 i;

    gUnknown_030004C8 = 0;
    gUnknown_030004CB = 0;
    gUnknown_030004CA = 0;
    gUnknown_030004C9 = 1;
    gUnknown_030004CC = 0;
    gUnknown_030004FC = NULL;
    gUnknown_03000500 = NULL;
    gUnknown_03000504 = NULL;
    gUnknown_03000508 = NULL;
    gUnknown_0300050C = NULL;
    for (i = 0; i < 10; i++)
    {
        gUnknown_030004D0[i] = 0;
        gUnknown_030004E8[i] = 0;
    }
}

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
