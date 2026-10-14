#include "global.h"
#include "area_state.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "map.h"
#include "player.h"
#include "player_stats.h"
#include "sound.h"
#include "thread.h"

extern u16 *gUnknown_03003C90[4];   // BG tilemap buffers (32 x 32)

struct Unknown_080FB0F8
{
    u16 unk0;          // number of maps in the area?
    u16 unk2;
    u8 unk4[0x5C];
};                     // size 0x60

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];

u32 sub_08007544(void);
u32 sub_080074CC(void);
u32 sub_08001F98(void);
void sub_080216E0(u16 *x, u16 *y);
void sub_080046E4(u16 index, s16 *map, u16 x, u16 y);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_08004AE4(u16 index, s16 x, s16 y, u32 redraw);
void sub_080045C8(u32 *record, u32 area);
void sub_08004FB4(void);
void sub_0800F308(u16 duration);

// Thread of the first map layer (gMapLayer_03003910), like sub_080055F8:
// draws BG1-3 (sub_080046E4) around the local player or the area's start,
// starts the area's music (area id, or 11 / 12 / 13 on the area's last
// map), scrolls each frame and reloads on flags 4/8.
void sub_08005278(void)
{
    u16 x;
    u16 y;
    u32 id;
    u32 i;
    u32 redraw;
    u32 done;
    struct MapEntry *entry;

    gMapLayer_03003910.flags = 1;
    while (!(gUnknown_030063D8->unk9C & 2) && !sub_08007544())
        WaitFrame();
    id = GetMultiplayerId();
    if (sub_08007544())
    {
        x = (gPlayers[id].x >> 15) - 15;
        y = (gPlayers[id].y >> 15) - 11;
    }
    else
    {
        sub_080216E0(&x, &y);
    }
    x -= 15;
    y -= 11;
    WaitFrame();
    WaitFrame();
    sub_080046E4(1, gMapLayer_03003910.map, x, y);
    sub_080046E4(2, gMapLayer_03003910.map, x, y);
    sub_080046E4(3, gMapLayer_03003910.map, x, y);
    if (!sub_08001F98())
    {
        if (gUnknown_080FB0F8[gMapLayer_03003910.unk68].unk0 - 1 == gMapLayer_03003910.unk6C)
        {
            if (gMapLayer_03003910.unk68 != 8)
                PlayBGM(11);
            else
                PlayBGM(12);
        }
        else if (gMapLayer_03003910.unk68 <= 8)
            PlayBGM(gMapLayer_03003910.unk68);
        else
            PlayBGM(8);
    }
    while (!(gMapLayer_03003910.flags & 2) && !(done = sub_080074CC()))
    {
        if (gMapLayer_03003910.flags & 0xC)
        {
            if (!sub_08001F98())
                FadeOutBGM(2);
            sub_080044E4(0, 0, 0, 0, 0, 0);
            WaitEvent(0x514C8);
            if (gMapLayer_03003910.flags & 2)
                goto end;
            if (sub_080074CC())
                goto end;
            if (!sub_08001F98())
            {
                if (gUnknown_080FB0F8[gMapLayer_03003910.unk68].unk0 - 1 == gMapLayer_03003910.unk6C)
                {
                    if (gMapLayer_03003910.unk68 != 8)
                    {
                        if (gUnknown_030063D8->unk9E != 1)
                            PlayBGM(11);
                        else
                            PlayBGM(gMapLayer_03003910.unk68);
                    }
                    else if (gUnknown_030063D8->unk9E == 1)
                        PlayBGM(13);
                    else
                        PlayBGM(12);
                }
                else if (gMapLayer_03003910.unk68 <= 8)
                    PlayBGM(gMapLayer_03003910.unk68);
                else
                    PlayBGM(8);
            }
            x = (gPlayers[id].x >> 15) - 15;
            y = (gPlayers[id].y >> 15) - 11;
            if (x & 0x8000)
                x = 0;
            if (y & 0x8000)
                y = 0;
            if (x > gMapLayer_03003910.width - 30)
                x = gMapLayer_03003910.width - 30;
            if ((s16)gMapLayer_03003910.originY < 0)
                gMapLayer_03003910.originY = 0;
            if (y > gMapLayer_03003910.height - 20)
                y = gMapLayer_03003910.height - 20;
            sub_080046E4(1, gMapLayer_03003910.map, x, y);
            sub_080046E4(2, gMapLayer_03003910.map, x, y);
            sub_080046E4(3, gMapLayer_03003910.map, x, y);
            redraw = 1;
            gMapLayer_03003910.flags &= ~0xC;
            sub_080045C8((u32 *)gMapLayer_03003910.record, gMapLayer_03003910.unk68);
            sub_0800F308(6);
        }
        for (i = 1; i < 4; i++)
            sub_08004AE4(i, gMapLayer_03003910.originX, gMapLayer_03003910.originY, redraw);
        redraw = 0;
        sub_08004FB4();
        WaitFrame();
    }
end:
    for (i = 1; i < 4; i++)
    {
        entry = &gMapLayer_03003910.entries[(u16)i];
        if (entry->unk8 != 0)
        {
            entry->unkE = 0;
            entry->unkC = 0;
            entry->unk2 = 0;
            entry->unk0 = 0;
        }
        if (!(gMapLayer_03003910.flags & 2) && gUnknown_03003C90[i] != NULL)
        {
            Free(gUnknown_03003C90[i]);
            gUnknown_03003C90[i] = NULL;
        }
    }
    Free(gMapLayer_03003910.map);
    gMapLayer_03003910.map = NULL;
    gMapLayer_03003910.flags = 0x80000000;
}
