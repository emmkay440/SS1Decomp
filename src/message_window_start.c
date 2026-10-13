#include "global.h"
#include "data_record.h"
#include "heap.h"
#include "sprite_obj.h"
#include "thread.h"
#include "window.h"

// A message window (the 0x88-byte records at gUnknown_0300641C).
struct MessageWindow
{
    struct Thread thread;
    void *window;          // +0x28 the frame (sub_08021874)
    struct SpriteObj obj;  // +0x2C only set up when unk84 is -2
    void *text;            // +0x60 data record
    u32 unk64;
    u8 lines;              // +0x68
    u8 unk69;
    u8 y;                  // +0x6A in tiles
    u16 unk6C;
    u16 unk6E;
    u8 slot;               // +0x70 bit in gUnknown_03006420
    u32 unk74;             // +0x74 starts as 1 (7 in sub_080228D4)
    u16 unk78;
    u16 unk7A;
    u16 unk7C;
    u16 unk7E;
    u16 unk80;
    s32 unk84;             // +0x84 the fifth argument
};                         // size 0x88

extern u16 gLanguage;

void *sub_08021874(u8 x, u8 y, u8 width, u8 height);
void MessageWindowThread(void);

static inline u8 FindFreeMessageWindow(void)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (!((gUnknown_03006420 >> i) & 1))
            return i;
    }
    return 0xFF;
}

// Opens a message window: a frame 27 tiles wide at row `y`, tall enough
// for `lines` lines of 13 pixels, showing data record `text`, driven by
// MessageWindowThread. With `e` == -2 it also sets up a sprite object
// that depends on the language (the same sprites as the save select
// yes/no arrows). Returns NULL if all four are in use or no frame is free.
// `a` and `c` are not used.
struct MessageWindow *StartMessageWindow(u32 a, u8 y, u32 c, u8 lines, s32 e, u32 text)
{
    struct MessageWindow *window;
    u8 slot = FindFreeMessageWindow();
    s32 unk69;

    if (slot == 0xFF)
        return NULL;
    window = (struct MessageWindow *)&gUnknown_0300641C[slot];
    window->slot = slot;
    window->window = sub_08021874(0, y, 27, (lines * 13) >> 3);
    unk69 = 0;         // set before the sprite setup, which never changes it
    if (e == -2)
    {
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&window->obj, 0x10006A, 0, 0x80000000);
            break;
        case 2:
            sub_08026ADC(&window->obj, 0x100073, 0, 0x80000000);
            break;
        case 3:
            sub_08026ADC(&window->obj, 0x10007B, 0, 0x80000000);
            break;
        case 4:
            sub_08026ADC(&window->obj, 0x100083, 0, 0x80000000);
            break;
        case 5:
            sub_08026ADC(&window->obj, 0x10008D, 0, 0x80000000);
            break;
        }
    }
    if (window->window == NULL)
        return NULL;
    window->unk69 = unk69;
    window->y = y;
    window->lines = lines;
    window->text = GetDataRecord(text);
    window->unk6C = 0;
    window->unk6E = 0;
    window->unk74 = 1;
    window->unk84 = e;
    window->unk80 = 0;
    window->unk78 = 0;
    window->unk7A = 0;
    window->unk7C = 0;
    window->unk7E = 0;
    window->unk64 = 0;
    window->thread.entry = MessageWindowThread;
    window->thread.onExit = NULL;
    window->thread.stack = Alloc(0x400);
    window->thread.sp = (u8 *)window->thread.stack + 0x3FC;
    window->thread.priority = 0x13;
    window->thread.next = NULL;
    window->thread.prev = NULL;
    CreateThread(&window->thread, window);
    gUnknown_03006420 |= 1 << window->slot;
    return window;
}
