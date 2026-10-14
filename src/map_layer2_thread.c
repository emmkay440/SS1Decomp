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

u32 sub_08007544(void);
u32 sub_080074CC(void);
u32 sub_08001F98(void);
void sub_080216E0(u16 *x, u16 *y);
void sub_0800481C(u16 index, s16 *map, u16 x, u16 y);
void sub_08004AE4(u16 index, s16 x, s16 y, u32 redraw);
void sub_080045C8(u32 *record, u32 area);
void sub_08004FB4(void);
void sub_0800F308(u16 duration);

// Thread of the second map layer (gMapLayer_03003C00): once the area is
// up, draws BG1-3 around the local player (or the area's start), then
// scrolls them each frame. Flags 4/8 reload the map (music faded, palette
// and window color reset, BG redrawn); flag 2 or sub_080074CC ends it,
// freeing the BG tilemap buffers (unless flag 2) and the map.
void sub_080055F8(void)
{
    u16 x;
    u16 y;
    u32 id;
    u32 i;
    u32 redraw;
    u32 done;
    struct MapEntry *entry;

    gMapLayer_03003C00.flags = 1;
    while (!(gUnknown_030063D8->unk9C & 2) && !sub_08007544())
        WaitFrame();
    id = GetMultiplayerId();
    if (sub_08007544())
    {
        x = (gPlayers[id].x >> 15) - 15;
        y = (gPlayers[id].y >> 15) - 10;
    }
    else
    {
        sub_080216E0(&x, &y);
    }
    sub_0800481C(1, gMapLayer_03003C00.map, x, y);
    sub_0800481C(2, gMapLayer_03003C00.map, x, y);
    sub_0800481C(3, gMapLayer_03003C00.map, x, y);
    if (!sub_08001F98())
        PlayBGM(10);
    while (!(gMapLayer_03003C00.flags & 2) && !sub_080074CC())
    {
        if (gMapLayer_03003C00.flags & 0xC)
        {
            if (!sub_08001F98())
                FadeOutBGM(2);
            WaitEvent(0x514C9);
            if (gMapLayer_03003C00.flags & 2)
                goto end;
            if ((done = sub_080074CC()) != 0)
                goto end;
            LoadPalette(15, (u8 *)GetDataRecord(0x120002) + 0x1E0, 1);
            gPaletteBuffer[0xF1] = gPlayerStats.options.windowR
                                 | (gPlayerStats.options.windowG << 5)
                                 | (gPlayerStats.options.windowB << 10);
            gPlayers[id].layer = done;
            x = (gPlayers[id].x >> 15) - 15;
            y = (gPlayers[id].y >> 15) - 10;
            sub_0800481C(1, gMapLayer_03003C00.map, x, y);
            sub_0800481C(2, gMapLayer_03003C00.map, x, y);
            sub_0800481C(3, gMapLayer_03003C00.map, x, y);
            redraw = 1;
            if (!sub_08001F98())
                PlayBGM(10);
            sub_080045C8((u32 *)gMapLayer_03003C00.record, 0);
            gMapLayer_03003C00.flags &= ~0xC;
            sub_0800F308(6);
        }
        for (i = 1; i < 4; i++)
            sub_08004AE4(i, gMapLayer_03003C00.originX, gMapLayer_03003C00.originY, redraw);
        redraw = 0;
        sub_08004FB4();
        WaitFrame();
    }
end:
    for (i = 1; i < 4; i++)
    {
        entry = &gMapLayer_03003C00.entries[(u16)i];
        if (entry->unk8 != 0)
        {
            entry->unkE = 0;
            entry->unkC = 0;
            entry->unk2 = 0;
            entry->unk0 = 0;
        }
        if (!(gMapLayer_03003C00.flags & 2) && gUnknown_03003C90[i] != NULL)
        {
            Free(gUnknown_03003C90[i]);
            gUnknown_03003C90[i] = NULL;
        }
    }
    Free(gMapLayer_03003C00.map);
    gMapLayer_03003C00.map = NULL;
    gMapLayer_03003C00.flags = 0x80000000;
}
