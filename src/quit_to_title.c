#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "map.h"
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

extern struct Thread gUnknown_030065E0[2];
extern struct Thread gUnknown_03006630[2];
extern struct Thread gPlayerThreads[];
extern struct Thread gMenuScreenThread;
extern struct Thread gUnknownThread_030068F0;
extern struct Thread gHudThread;
extern struct Thread gCharacterMenuThread;
extern struct Thread gUnknownThread_03003CB0;
extern struct Thread gUnknownThread_030064E0;
extern struct Thread gUnknownThread_030066B0;
extern struct Thread gUnknownThread_03006380;
extern struct Thread gEnemyThreads[];
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
void sub_08007648(void);
void sub_08007564(void);
void sub_0800765C(void);
u32 sub_08001F08(void);
void sub_08001F34(void);
bool32 sub_0800F430(void);
void sub_08021C44(void);
void sub_08021804(void);
void *StartMessageWindow(u32 a, u8 y, u32 c, u8 lines, s32 e, u32 text);
bool32 sub_0802294C(void *window);
bool32 SaveGame(void);
void sub_080229D4(void *window, u32 a);
u32 sub_08022964(void *window);
u32 sub_080077C0(void);
u32 sub_08016FA0(void);
u32 sub_080074F0(void);
u32 sub_08001F64(void);
u32 sub_080076A8(void);
bool32 sub_08029270(u32 value, u8 a, u8 b, u8 c);
void sub_0800F3DC(u16 duration);
extern u32 gUnknown_03003D08;

#define KILL_IF_RUNNING(thread)      \
    if (IsThreadInList(thread))      \
        KillThread(thread)

// The save mask (gUnknown_03003D08) into the save data, unless
// sub_080074F0().
#define STORE_SAVE_MASK()                                                   \
{                                                                           \
    if (!sub_080074F0())                                                    \
    {                                                                       \
        if (sub_080076A8())                                                 \
            gPlayerStats.unk270.w.unk10 = gUnknown_03003D08;                \
        else                                                                \
            gPlayerStats.unk270.w.unk0 = gUnknown_03003D08;                 \
    }                                                                       \
}

// The menu's END: with `direct` 0, asks first (0x9001C) and saves right
// there (soft reset after a good save, message 0x9001E after a failed
// one). Otherwise kills the field threads, shows message 0x900FD and
// saves, trying up to four times, before going back.
void QuitToTitle(u32 direct)
{
    union BgCntValue cnt;
    void *window;
    u32 i;

    sub_08007648();
    if (sub_080077C0() || sub_08016FA0())
    {
        sub_0800765C();
        return;
    }
    if (direct == 0)
    {
        window = StartMessageWindow(1, 14, 25, 2, -2, 0x9001C);
        sub_080229D4(window, 1);
        do
            WaitFrame();
        while (!sub_0802294C(window));
        if (!sub_08022964(window))
            goto done;
        if (sub_080074F0() && sub_08001F64())
        {
            sub_08029270(2, 0, 0, 0);
            for (i = 0; i < 60; i++)
                WaitFrame();
        }
        SndMPlayAllStop();
        for (i = 0; i < 60; i++)
            WaitFrame();
        DisableSoundVSync();
        STORE_SAVE_MASK();
        if (sub_080074F0() && sub_08001F64())
            sub_08001F34();
        if (!SaveGame())
        {
            EnableSoundVSync();
            window = StartMessageWindow(1, 14, 25, 2, 60, 0x9001D);
            do
                WaitFrame();
            while (!sub_0802294C(window));
            sub_0800F244(10);
            while (!sub_0800F298())
                WaitFrame();
            sub_08007500();
            SoftReset(0);
        }
        else
        {
            EnableSoundVSync();
            window = StartMessageWindow(1, 14, 25, 2, -1, 0x9001E);
            do
                WaitFrame();
            while (!sub_0802294C(window));
        }
        goto done;
    }
    while (!sub_0800F298())
        WaitFrame();
    if (sub_0800F430())
    {
        sub_0800F3A0(6);
        while (!sub_0800F298())
            WaitFrame();
    }
    gBgRegsBuffer[29] = 0;
    DisableDisplayLayers(0x7F00, 0, 1);
    KILL_IF_RUNNING(&gMenuScreenThread);
    KILL_IF_RUNNING(&gUnknownThread_030068F0);
    KILL_IF_RUNNING(&gHudThread);
    KILL_IF_RUNNING(&gCharacterMenuThread);
    KILL_IF_RUNNING(&gUnknownThread_03003CB0);
    KILL_IF_RUNNING(&gUnknownThread_030064E0);
    KILL_IF_RUNNING(&gUnknownThread_03006380);
    cnt.bits.value = 0x1C08;
    SetBgCnt(0, &cnt.raw);
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    sub_08021C44();
    KILL_IF_RUNNING(&gUnknown_030065E0[0]);
    KILL_IF_RUNNING(&gUnknown_030065E0[1]);
    KILL_IF_RUNNING(&gUnknown_03006630[0]);
    KILL_IF_RUNNING(&gUnknown_03006630[1]);
    for (i = 0; i < sub_08001EC4(); i++)
    {
        KILL_IF_RUNNING(&gPlayerThreads[i]);
    }
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    sub_08020F54();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    WaitFrame();
    sub_08021804();
    WaitFrame();
    WaitFrame();
    EnableDisplayLayers(0x1100, 0, 1);
    sub_0800EC74();
    sub_0800EE44(0);
    sub_0800ED08();
    sub_0800F308(6);
    while (!sub_0800F298())
        WaitFrame();
    window = StartMessageWindow(1, 14, 25, 2, 120, 0x900FD);
    do
        WaitFrame();
    while (!sub_0802294C(window));
    SndMPlayAllStop();
    for (i = 0; i < 60; i++)
        WaitFrame();
    STORE_SAVE_MASK();
    i = 0;
retry:
    DisableSoundVSync();
    if (!SaveGame())
    {
        EnableSoundVSync();
        window = StartMessageWindow(1, 14, 25, 2, 60, 0x9001D);
        sub_080229D4(window, 1);
        do
            WaitFrame();
        while (!sub_0802294C(window));
        sub_0800F3DC(10);
        while (!sub_0800F298())
            WaitFrame();
    }
    else
    {
        EnableSoundVSync();
        window = StartMessageWindow(1, 14, 25, 2, -1, 0x9001E);
        do
            WaitFrame();
        while (!sub_0802294C(window));
        if (i <= 2)
        {
            i++;
            goto retry;
        }
    }
done:
    sub_0800765C();
}
