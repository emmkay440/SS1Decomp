#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "player_stats.h"
#include "sound.h"
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

extern u16 gKeysNew;
extern u16 gKeysRepeat;
extern u16 gLanguage;
extern u32 gUnknown_030031A8; // title menu choice (see TitleMenuThread)
extern u8 gUnknown_03006920;

u32 sub_08001F88(void);
void sub_08001E40(void);
void sub_08001E08(void);
void StartSaveSelect(void);
void sub_0804C9C4(void);
void sub_08021804(void);
void SndMPlayAllStop(void);
u32 sub_0800F2DC(void);
u32 sub_0800F298(void);
void sub_0800F1EC(u16 duration);
void sub_0800F244(u16 duration);
void sub_0800F348(u16 duration);
void sub_0800F3DC(u16 duration);
void *LZ77DecompressAlloc(const u32 *src);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u32 b, u32 c, u32 d);

// The title screen thread: waits for event 20 (end of the logos), shows
// the title picture (record 1) and the "press start" sprite, START opens
// a two-item menu: choice 0 stops the link (single player), choice 1
// starts the link thread (multiplayer), both go to the save select.
// Nothing pressed for 0x708 frames gives choice 2, which starts the
// picture screen thread (sub_0804C9C4; the intro/attract pictures, a
// guess). The menu closes again after 0x384 idle frames. Never returns.
void TitleMenuThread(void)
{
    struct SpriteObj obj;
    u16 frame;
    u16 timer;
    union BgCntValue cnt;
    u32 idle;
    u32 *record;
    u32 *p;
    u8 *tiles;
    void *palette;
    void *tilemap;
    u16 i;
    u32 running;
    u32 menuOpen;
    u32 timedOut;

    WaitFrame();
    gPlayerStats.options.bgm = 1;
    gPlayerStats.options.windowR = 7;
    gPlayerStats.options.windowG = 11;
    gPlayerStats.options.windowB = 16;
    SetMusicEnabled(1);

    for (;;)
    {
        WaitEvent(20);
        if (gDispCnt.bits.forcedBlank)
            DisplayOn();
        if (sub_08001F88())
            sub_08001E40();
        idle = 0;
        timedOut = 0;
        ClearCopyQueue();
        WaitFrame();
        WaitFrame();
        WaitFrame();
        WaitFrame();
        SetDispCntFlags(1, 0, 0, 0, 0);
        DisableDisplayLayers(0xF00, 0, 1);
        EnableDisplayLayers(0x1200, 0, 1);
        cnt.bits.value = 0x1C08;
        SetBgCnt(0, &cnt.raw);
        cnt.raw = 0x1D00;
        SetBgCnt(1, &cnt.raw);
        gBgRegsBuffer[0] = 0;
        gBgRegsBuffer[1] = 0;
        gBgRegsBuffer[2] = 0;
        gBgRegsBuffer[3] = 0;
        gBgRegsBuffer[4] = 0;
        gBgRegsBuffer[5] = 0;
        gBgRegsBuffer[6] = 0;
        gBgRegsBuffer[7] = 0;
        record = GetDataRecord(1);
        tiles = GetDataRecord(record[0]);
        p = record;
        palette = GetDataRecord((*p++ & 0xFFFF) | 0x120000);
        tilemap = LZ77DecompressAlloc(p);
        if (record[0] & 0x10000000)
        {
            if (record[0] & 0x20000000)
                QueueCopy(tiles, (void *)(VRAM + 0x4000), 0x4000);
            else
                QueueCopy(tiles, (void *)VRAM, 0x4000);
        }
        else
        {
            for (i = 0; i < 32; i++)
            {
                QueueCopy(tiles + (i << 10), (void *)(VRAM + (i << 10)), 0x400);
                WaitFrame();
            }
        }
        QueueCopy(tilemap, (void *)(VRAM + 0xE800), 0x1000);
        WaitFrame();
        Free(tilemap);
        LoadPalette(0, palette, 16);
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&obj, 0x10006C, 14, 1);
            break;
        case 2:
            sub_08026ADC(&obj, 0x100075, 14, 1);
            break;
        case 3:
            sub_08026ADC(&obj, 0x100074, 14, 1);
            break;
        case 4:
            sub_08026ADC(&obj, 0x100082, 14, 1);
            break;
        case 5:
            sub_08026ADC(&obj, 0x10008C, 14, 1);
            break;
        }
        sub_08021804();
        WaitFrame();
        WaitFrame();
        if (!sub_0800F2DC())
            sub_0800F1EC(30);
        else
            sub_0800F348(30);

        gUnknown_030031A8 = 0;
        running = TRUE;
        menuOpen = FALSE;
        frame = 0;
        timer = 0;
        PlaySE(0);
        while (running)
        {
            if (menuOpen)
            {
                if (gKeysRepeat & DPAD_DOWN)
                {
                    idle = 0;
                    PlaySE(14);
                    gUnknown_030031A8 = 1;
                }
                else if (gKeysRepeat & DPAD_UP)
                {
                    idle = 0;
                    PlaySE(14);
                    gUnknown_030031A8 = 0;
                }
                else if (gKeysNew & A_BUTTON)
                {
                    idle = 0;
                    PlaySE(15);
                    running = FALSE;
                }
            }
            else if (gKeysNew & START_BUTTON)
            {
                menuOpen = TRUE;
                PlaySE(15);
                idle = 0;
            }
            if (idle++ > 0x708)
            {
                timedOut = TRUE;
                break;
            }
            if (idle > 0x384)
                menuOpen = FALSE;
            if (menuOpen)
            {
                sub_08026B90(&obj, 0x78, 0x70, 0, gUnknown_030031A8);
            }
            else
            {
                sub_08026C40(&obj, 4, (u32)&frame, (u32)&timer, 1);
                sub_08026B90(&obj, 0x78, 0x70, 4, frame);
            }
            WaitFrame();
        }

        FadeOutAllMusicPlayers(2);
        FadeOutBGM(2);
        if (menuOpen)
        {
            frame = 0;
            timer = 0;
        }
        if (timedOut)
            sub_0800F3DC(30);
        else
            sub_0800F244(30);
        while (!sub_0800F298())
        {
            if (menuOpen)
            {
                if (!timedOut)
                {
                    sub_08026C40(&obj, gUnknown_030031A8 + 1, (u32)&frame, (u32)&timer, 1);
                    sub_08026B90(&obj, 0x78, 0x70, gUnknown_030031A8 + 1, frame);
                }
                else
                {
                    sub_08026B90(&obj, 0x78, 0x70, 0, gUnknown_030031A8);
                }
            }
            else
            {
                sub_08026C40(&obj, 4, (u32)&frame, (u32)&timer, 1);
                sub_08026B90(&obj, 0x78, 0x70, 4, frame);
            }
            WaitFrame();
        }
        SndMPlayAllStop();
        sub_08026B64(&obj);
        if (timedOut)
            gUnknown_030031A8 = 2;
        switch (gUnknown_030031A8)
        {
        case 0:
            if (sub_08001F88())
                sub_08001E40();
            StartSaveSelect();
            break;
        case 1:
            if (!sub_08001F88())
                sub_08001E08();
            StartSaveSelect();
            break;
        case 2:
            if (sub_08001F88())
                sub_08001E40();
            gUnknown_03006920 = 0;
            sub_0804C9C4();
            break;
        }
    }
}
