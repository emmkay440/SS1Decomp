#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "map.h"
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

#define KILL_IF_RUNNING(thread)      \
    if (IsThreadInList(thread))      \
        KillThread(thread)

// Waits a frame unless the link is lost (sub_08001F08); then returns.
#define WAIT_FRAME_OR_RETURN()      \
{                                   \
    if (sub_08001F08())             \
        return;                     \
    WaitFrame();                    \
}

// Saves and restarts after a link session ends (a guess): waits 80 frames
// and for the fades, kills the field and menu threads, shows message
// 0x900FE, then saves (message 0x9001D) or, after a failed try, shows
// 0x9001E and tries again, four times at most. Soft-resets at the end.
// Returns early when sub_08001F08() becomes set.
void sub_080247D0(void)
{
    union BgCntValue cnt;
    void *window;
    u32 i;

    sub_08007648();
    for (i = 0; i < 80; i++)
        WAIT_FRAME_OR_RETURN();
    sub_08001F34();
    while (!sub_0800F298())
        WAIT_FRAME_OR_RETURN();
    if (sub_0800F430())
    {
        sub_0800F3A0(6);
        while (!sub_0800F298())
            WAIT_FRAME_OR_RETURN();
    }
    gBgRegsBuffer[29] = 0;
    sub_08007564();
    gMapLayer_03003910.flags |= 0xC;
    gMapLayer_03003C00.flags |= 0xC;
    KILL_IF_RUNNING(&gUnknownThread_030066B0);
    KILL_IF_RUNNING(&gMenuScreenThread);
    KILL_IF_RUNNING(&gUnknownThread_030068F0);
    KILL_IF_RUNNING(&gHudThread);
    KILL_IF_RUNNING(&gCharacterMenuThread);
    KILL_IF_RUNNING(&gUnknownThread_03003CB0);
    KILL_IF_RUNNING(&gUnknownThread_030064E0);
    KILL_IF_RUNNING(&gUnknownThread_03006380);
    for (i = 0; i < 5; i++)
    {
        KILL_IF_RUNNING(&gEnemyThreads[i]);
    }
    sub_08021C44();
    KILL_IF_RUNNING(&gUnknown_030065E0[0]);
    KILL_IF_RUNNING(&gUnknown_030065E0[1]);
    KILL_IF_RUNNING(&gUnknown_03006630[0]);
    KILL_IF_RUNNING(&gUnknown_03006630[1]);
    for (i = 0; i < sub_08001EC4(); i++)
    {
        KILL_IF_RUNNING(&gPlayerThreads[i]);
    }
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    sub_08020F54();
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    WAIT_FRAME_OR_RETURN();
    if (sub_08001F08())
        return;
    DisableDisplayLayers(0x7F00, 0, 0);
    EnableDisplayLayers(0x1100, 0, 1);
    cnt.bits.value = 0x1C08;
    SetBgCnt(0, &cnt.raw);
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    sub_08021804();
    window = StartMessageWindow(1, 14, 25, 2, 60, 0x900FE);
    sub_0800F308(6);
    while (!sub_0800F298())
        WaitFrame();
    do
        WaitFrame();
    while (!sub_0802294C(window));
    SndMPlayAllStop();
    for (i = 0; i < 60; i++)
        WaitFrame();
    i = 0;
retry:
    DisableSoundVSync();
    if (!SaveGame())
    {
        window = StartMessageWindow(1, 14, 25, 2, 60, 0x9001D);
        do
            WaitFrame();
        while (!sub_0802294C(window));
        sub_0800F3A0(10);
        while (!sub_0800F298())
            WaitFrame();
        sub_08007500();
    }
    else
    {
        EnableSoundVSync();
        window = StartMessageWindow(1, 14, 25, 2, 60, 0x9001E);
        do
            WaitFrame();
        while (!sub_0802294C(window));
        if (i <= 2)
        {
            i++;
            goto retry;
        }
    }
    sub_0800765C();
    sub_0800F244(6);
    while (!sub_0800F298())
        WaitFrame();
    SoftReset(0);
}
