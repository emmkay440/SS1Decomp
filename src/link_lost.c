#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
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

extern struct Thread gUnknown_030065E0[2];
extern struct Thread gUnknown_03006630[2];
extern struct Thread gPlayerThreads[];
extern struct Thread gMenuScreenThread;
extern struct Thread gUnknownThread_030068F0;
extern struct Thread gHudThread;
extern struct Thread gCharacterMenuThread;
extern struct Thread gUnknownThread_03003CB0;
extern struct Thread gUnknownThread_030064E0;
extern u16 gLanguage;
extern u16 gKeysNew;

u32 sub_0800F298(void);
void sub_0800F3A0(u16 duration);
void sub_0800F308(u16 duration);
void sub_0800F244(u16 duration);
void sub_08007500(void);
void sub_0802297C(void);
void sub_08020F54(void);
u32 sub_08001EC4(void);
void sub_08001E40(void);
void *LZ77DecompressAlloc(const u32 *src);
void sub_0800EC74(void);
void sub_0800EE44(u32 a);
void sub_0800ED08(void);
void SoftReset(u32 flags);

#define KILL_IF_RUNNING(thread)      \
    if (IsThreadInList(thread))      \
        KillThread(thread)

// Ends the game after a lost connection (a guess: it runs when
// sub_08001F08 is set at the end of a field session): fades out, kills the
// field threads, shows a full-screen picture for the language (data
// records 0x5B, 0x97, 0x96, 0xA8, 0xA7) until START, then soft-resets.
void sub_080244F4(void)
{
    union BgCntValue cnt;
    u32 *record;
    void *tiles;
    void *palette;
    void *tilemap;
    u16 i;

    while (!sub_0800F298())
        WaitFrame();
    sub_0800F3A0(6);
    while (!sub_0800F298())
        WaitFrame();
    DisableSoundVSync();
    sub_08007500();
    sub_0802297C();
    KILL_IF_RUNNING(&gUnknown_030065E0[0]);
    KILL_IF_RUNNING(&gUnknown_030065E0[1]);
    KILL_IF_RUNNING(&gUnknown_03006630[0]);
    KILL_IF_RUNNING(&gUnknown_03006630[1]);
    sub_08020F54();
    SignalEvent(3001);
    SignalEvent(0x514C9);
    SignalEvent(0x514C8);
    for (i = 0; i < sub_08001EC4(); i++)
    {
        KILL_IF_RUNNING(&gPlayerThreads[i]);
    }
    KILL_IF_RUNNING(&gMenuScreenThread);
    KILL_IF_RUNNING(&gUnknownThread_030068F0);
    KILL_IF_RUNNING(&gHudThread);
    KILL_IF_RUNNING(&gCharacterMenuThread);
    KILL_IF_RUNNING(&gUnknownThread_03003CB0);
    KILL_IF_RUNNING(&gUnknownThread_030064E0);
    sub_08001E40();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    switch (gLanguage)
    {
    case 1:
        record = GetDataRecord(0x5B);
        break;
    case 2:
        record = GetDataRecord(0x97);
        break;
    case 3:
        record = GetDataRecord(0x96);
        break;
    case 4:
        record = GetDataRecord(0xA8);
        break;
    case 5:
        record = GetDataRecord(0xA7);
        break;
    }
    tiles = GetDataRecord(record[0]);
    palette = GetDataRecord((*record++ & 0xFFFF) | 0x120000);
    do  // FAKE (maybe a macro): only matches inside a do/while(0)
    {
        tilemap = LZ77DecompressAlloc(record);
    } while (0);
    QueueCopy(tiles, (void *)VRAM, 0x8000);
    QueueCopy(tilemap, (void *)(VRAM + 0xE800), 0x800);
    WaitFrame();
    WaitFrame();
    sub_0800EC74();
    sub_0800EE44(0);
    sub_0800ED08();
    WaitFrame();
    WaitFrame();
    Free(tilemap);
    LoadPalette(0, palette, 16);
    DisableDisplayLayers(0x7F00, 0, 0);
    EnableDisplayLayers(0x200, 0, 1);
    cnt.bits.value = 0x1D00;
    SetBgCnt(1, &cnt.raw);
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    sub_0800F308(6);
    while (!sub_0800F298())
    {
        gBgRegsBuffer[2] = 0;
        gBgRegsBuffer[3] = 0;
        WaitFrame();
    }
    while (!(gKeysNew & START_BUTTON))
    {
        gBgRegsBuffer[2] = 0;
        gBgRegsBuffer[3] = 0;
        WaitFrame();
    }
    sub_0800F244(6);
    while (!sub_0800F298())
        WaitFrame();
    SoftReset(0);
}
