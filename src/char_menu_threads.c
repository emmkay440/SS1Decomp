#include "global.h"
#include "heap.h"
#include "thread.h"
#include "sprite_obj.h"
#include "data_record.h"
#include "item.h"

extern struct Thread gCharacterMenuThread;
extern struct Thread gUnknownThread_030064E0;
extern struct Thread gUnknownThread_030066B0;

void *sub_08001430(u32 size);
void CharacterMenuThread(void);
void sub_08025940(void);
void sub_080260E8(void);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

extern struct SpriteObj gUnknown_03006510[];

u32 sub_080004A4(u32 *value, u32 divisor);

// Draws a number below 10000 at (x, y) with the sprites of object `which`:
// the hundreds as one sprite (if any), then the last two digits as one
// sprite, with a 0 sprite between them when the rest is below 10.
void sub_08026E70(s32 x, s32 y, u32 value, u8 which)
{
    struct SpriteObj *obj = &gUnknown_03006510[which];
    u8 digits[2];

    digits[0] = sub_080004A4(&value, 100);
    digits[1] = value;
    if (digits[0] != 0)
        sub_08003518(x - 12, y, 0, digits[0], 0, obj->unk1C, obj->unk8, obj->unk0);
    if (digits[1] < 10 && digits[0] != 0)
        sub_08003518(x - 6, y, 0, 0, 0, obj->unk1C, obj->unk8, obj->unk0);
    sub_08003518(x, y, 0, digits[1], 0, obj->unk1C, obj->unk8, obj->unk0);
}

extern u16 gLanguage;
extern u16 gUnknown_03003CA0;      // character advance

u32 sub_0800ED80(u16 *str);
void sub_0800EB30(u16 *str, s32 x, s32 y);

// Draws the name of a weapon, armor or head item (category 13 record picked
// by bits 15-19 of the item word; one 56-byte string per language) at
// (x, y), or centered on x if `centered` is negative.
void sub_08026F20(s32 x, s32 y, struct Item *item, s32 centered)
{
    u8 *record;
    u16 *name;
    s16 offset;

    if (item == NULL)
        return;
    switch (item->category)
    {
    case ITEM_CATEGORY_USABLE:
        return;
    case ITEM_CATEGORY_WEAPON:
        record = GetDataRecord(((*(u32 *)item << 12) >> 27) | 0xD0000);
        break;
    case ITEM_CATEGORY_ARMOR:
        record = GetDataRecord(((*(u32 *)item << 12) >> 27) | 0xD0000);
        break;
    case ITEM_CATEGORY_HEAD:
        record = GetDataRecord(((*(u32 *)item << 12) >> 27) | 0xD0000);
        break;
    default:
        return;
    }
    offset = 0;
    name = (u16 *)(record + gLanguage * 56);
    if (centered < 0)
        offset = -((s32)(sub_0800ED80(name) * gUnknown_03003CA0) / 2);
    sub_0800EB30(name, x + offset, y);
}

void StartCharacterMenu(void)
{
    u8 *stack;

    gCharacterMenuThread.priority = 52;
    stack = sub_08001430(0x800);
    gCharacterMenuThread.stack = stack;
    gCharacterMenuThread.entry = CharacterMenuThread;
    gCharacterMenuThread.sp = stack + 0x7FC;
    gCharacterMenuThread.onExit = NULL;
    CreateThread(&gCharacterMenuThread);
}

void sub_08026FD0(void)
{
    u8 *stack;

    if (!IsThreadInList(&gUnknownThread_030064E0))
    {
        gUnknownThread_030064E0.priority = 60;
        stack = sub_08001430(0x200);
        gUnknownThread_030064E0.stack = stack;
        gUnknownThread_030064E0.entry = sub_08025940;
        gUnknownThread_030064E0.sp = stack + 0x1FC;
        gUnknownThread_030064E0.onExit = NULL;
        CreateThread(&gUnknownThread_030064E0);
    }
}

void sub_08027010(void)
{
    u8 *stack;

    if (!IsThreadInList(&gUnknownThread_030066B0))
    {
        gUnknownThread_030066B0.priority = 60;
        stack = Alloc(0x200);
        gUnknownThread_030066B0.stack = stack;
        gUnknownThread_030066B0.entry = sub_080260E8;
        gUnknownThread_030066B0.sp = stack + 0x1FC;
        gUnknownThread_030066B0.onExit = NULL;
        CreateThread(&gUnknownThread_030066B0);
    }
}

bool32 sub_08027050(void)
{
    if (IsThreadInList(&gCharacterMenuThread))
        return TRUE;
    return FALSE;
}

struct Unknown_0802706C
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 unkC[0x10];
    u8 unk1C[4];
};

void sub_0802706C(struct Unknown_0802706C *p, u32 a, u32 b, u16 c, u16 d, u8 e)
{
    sub_08003518(a, b, c, d, e, p->unk1C, p->unk8, p->unk0);
}

// out = a + (b - a) * t / 1024, as two rounded-toward-zero products.
void Lerp1024(s32 *out, s32 a, s32 b, s32 t)
{
    b = (b * t) / 1024;
    a = (a * (1024 - t)) / 1024;
    *out = b + a;
}
