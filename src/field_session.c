#include "global.h"
#include "data_record.h"
#include "display.h"
#include "player.h"
#include "player_stats.h"
#include "sound.h"
#include "thread.h"

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

extern u32 gGameFlags;
extern u8 gUnknown_03006920;
extern u32 gUnknown_03003D08;

u32 sub_0800F298(void);
void sub_0804C9C4(void);
void sub_08021804(void);
void sub_0800F53C(void);
void sub_08007700(void);
void sub_08007714(void);
u32 GetThreadCount(void);
void sub_08001F24(u32 id);
u32 sub_080076A8(void);
void sub_0800454C(void);
void sub_0800C3C0(void);
void sub_080186A8(void);
void InitFieldItems(void);
void sub_08022AB4(void);
void sub_08018254(void);
u32 sub_08001EC4(void);
void sub_0800AF90(u16 id);
void sub_08027280(void);
void sub_0802901C(void);
void sub_08007554(void);
void sub_08004EF8(void);
void sub_08020F94(void);
void sub_08021180(void);
void sub_0802103C(void);
u32 sub_080074F0(void);
void sub_0800F1EC(u16 duration);
void sub_0800F308(u16 duration);
u32 sub_080229E0(void);
u32 sub_080076E0(void);
u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_08007670(void);
u32 sub_080077C0(void);
void sub_0800ED74(void);
u32 sub_08001F08(void);
u32 sub_08007578(void);
u32 sub_080074CC(void);
void SndMPlayAllStop(void);
void sub_080244F4(void);
void sub_08001FA8(void);
void sub_08001E40(void);
void sub_08029418(void);
void sub_08007500(void);
void sub_0800C46C(void);
void sub_08018278(void);
u32 sub_0800F2B0(void);
void sub_0800F3A0();
void QuitToTitle(u32 a);
void SoftReset(u32 flags);

// A field session (a guess). On the first start (gPlayerStats.unk26C 0)
// and unless `mode` is 1, waits for the fade and resets the window layer
// first. Then loads the area state, palettes and threads, starts every
// player (sub_0800AF90) and runs the per-frame checks until
// sub_08001F08, sub_08007578 or sub_080074CC is nonzero. Then stops
// everything, sets gPlayerStats `quit` and soft-resets.
void sub_08006144(u32 mode)
{
    u32 i;
    u8 unused[12];  // only takes stack space

    if (mode != 1 && gPlayerStats.unk26C == 0)
    {
        union BgCntValue cnt;

        while (!sub_0800F298())
            WaitFrame();
        gBgRegsBuffer[0x20] = 0xFF;
        gBgRegsBuffer[0x22] = 0x10;
        gUnknown_03006920 = 0;
        sub_0804C9C4();
        WaitFrame();
        DisableDisplayLayers(0, 0x2000, 1);
        WaitEvent(0x11201100);
        cnt.bits.value = 0x1C08;
        SetBgCnt(0, &cnt.raw);
        sub_08021804();
        sub_0800F53C();
    }
    if (gPlayerStats.unk270.b.quit)
        sub_08007700();
    else
        sub_08007714();
    GetThreadCount();
    sub_08001F24(GetMultiplayerId());
    if (mode == 1)
        gGameFlags |= 2;
    else if (sub_080076A8())
        gUnknown_03003D08 = gPlayerStats.unk270.w.unk10;
    else
        gUnknown_03003D08 = gPlayerStats.unk270.w.unk0;
    SetMusicEnabled(gPlayerStats.options.bgm);
    LoadPalette(15, (u8 *)GetDataRecord(0x120002) + 0x1E0, 1);
    gPaletteBuffer[0xF1] = gPlayerStats.options.windowR
                         | (gPlayerStats.options.windowG << 5)
                         | (gPlayerStats.options.windowB << 10);
    sub_0800454C();
    sub_0800C3C0();
    sub_080186A8();
    InitFieldItems();
    sub_08022AB4();
    sub_08018254();
    WaitFrame();
    for (i = 0; i < sub_08001EC4(); i++)
        sub_0800AF90(i);
    sub_08027280();
    sub_0802901C();
    sub_08007554();
    sub_08004EF8();
    sub_08020F94();
    sub_08021180();
    sub_0802103C();
    if (gPlayerStats.unk26C == 0 && !sub_080074F0())
    {
        sub_0800F1EC(30);
        gPlayerStats.unk26C = 1;
    }
    else
    {
        sub_0800F308(6);
    }
    sub_08007554();
    while (!sub_08001F08() && !sub_08007578() && !sub_080074CC())
    {
        if (!sub_080229E0() && !sub_080076E0() && !sub_08007510() && !sub_08007604() && !sub_08007670()
         && !sub_080077C0())
            sub_0800ED74();
        WaitFrame();
    }
    SndMPlayAllStop();
    while (!sub_0800F298())
        WaitFrame();
    if (sub_08001F08())
    {
        sub_080244F4();
        sub_08001FA8();
        sub_08001E40();
    }
    WaitFrame();
    WaitFrame();
    WaitFrame();
    sub_08029418();
    sub_08007500();
    sub_0800C46C();
    sub_08018278();
    if (!sub_0800F2B0())
    {
        sub_0800F3A0();
        while (!sub_0800F298())
            WaitFrame();
    }
    gPlayerStats.unk270.b.quit = 1;
    QuitToTitle(1);
    gUnknown_03006920 = 1;
    sub_0804C9C4();
    WaitEvent(0x11201100);
    SoftReset(0);
}
