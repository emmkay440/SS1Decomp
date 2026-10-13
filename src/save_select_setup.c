#include "global.h"
#include "display.h"
#include "sprite_obj.h"
#include "thread.h"

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

extern u16 gLanguage;
extern u8 gUnknown_030005F8;
extern struct SpriteObj gUnknown_03000628[4];
extern struct SpriteObj gUnknown_030006F8;
extern struct SpriteObj gUnknown_03000730;

void sub_0800EC74(void);
void sub_0800EE44(u32 row);
void sub_0800ED08(void);
void sub_0800F1EC(u16 duration);
void sub_08046F6C(u32 a);

// Display setup of the save select screen: BG control registers, text
// setup, the four sprite objects 0x100000-0x100003 and the two arrow
// objects, whose sprites depend on the language (1-5). Ends with a fade
// in (sub_0800F1EC).
void sub_08046D90(void)
{
    union BgCntValue cnt;

    DisplayOff();
    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    cnt.bits.value = 0x1F03;
    SetBgCnt(3, &cnt.raw);
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    cnt.raw = 0x1C00;
    SetBgCnt(0, &cnt.raw);
    sub_0800EC74();
    sub_0800EE44(0);
    sub_0800ED08();
    gUnknown_030005F8 = 2;
    sub_08046F6C(0);
    sub_08026ADC(&gUnknown_03000628[0], 0x100000, 0, 1);
    sub_08026ADC(&gUnknown_03000628[1], 0x100002, 0, 1);
    sub_08026ADC(&gUnknown_03000628[2], 0x100001, 0, 1);
    sub_08026ADC(&gUnknown_03000628[3], 0x100003, 0, 1);
    switch (gLanguage)
    {
    case 1:
        sub_08026ADC(&gUnknown_030006F8, 0x100069, 9, 6);
        sub_08026ADC(&gUnknown_03000730, 0x10006A, 9, 6);
        break;
    case 2:
        sub_08026ADC(&gUnknown_030006F8, 0x100072, 9, 6);
        sub_08026ADC(&gUnknown_03000730, 0x100073, 9, 6);
        break;
    case 3:
        sub_08026ADC(&gUnknown_030006F8, 0x100071, 9, 6);
        sub_08026ADC(&gUnknown_03000730, 0x10007B, 9, 6);
        break;
    case 4:
        sub_08026ADC(&gUnknown_030006F8, 0x100084, 9, 6);
        sub_08026ADC(&gUnknown_03000730, 0x100083, 9, 6);
        break;
    case 5:
        sub_08026ADC(&gUnknown_030006F8, 0x10008E, 9, 6);
        sub_08026ADC(&gUnknown_03000730, 0x10008D, 9, 6);
        break;
    }
    DisplayOn();
    sub_0800F1EC(6);
    WaitFrame();
    gUnknown_030005F8 = 2;
}
