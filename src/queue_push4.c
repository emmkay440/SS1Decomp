#include "global.h"
#include "player.h"
#include "player_stats.h"
#include "queue.h"

extern u32 gUnknown_030064D8;
extern u32 gUnknown_03006788;

u32 sub_08001F64(void);
u32 sub_08001F98(void);
u32 sub_08007604(void);

// Queues kind 13 for player `who`. When sub_08001F64() is set and `mode`
// is 1 it puts the player in state 9 instead (returns FALSE if that isn't
// possible now); otherwise only one kind 13 entry is queued at a time.
bool32 sub_08027828(u32 mode, u32 who, u32 value)
{
    struct Unknown_03006720 *entry;
    struct Player *player;
    struct Player *players;
    struct PlayerStats *stats;
    u32 count;
    u32 i;

    if (sub_08001F98())
    {
        if (gUnknown_03006758 >= QUEUE_SIZE)
        {
        fail:
            return FALSE;
        }
        if (sub_08001F64())
        {
            if (mode == 1)
            {
                if (sub_08007604() || gUnknown_030064D8 != 0 || gUnknown_03006788 == 0)
                    goto fail;
                players = gPlayers;
                player = &players[who];
                player->unk0A = 0;
                player->state = 9;
                player->unk0E = 12;
                player->pendingDamage[0] = 0;
                player->pendingDamage[1] = 0;
                player->unk10 &= ~0x100;
                stats = &gPlayerStats;
                ((u8 *)&stats->unk84)[2] = 0;
                gUnknown_03006788 = 0;
                gUnknown_030064D8 = who + 1;
                return TRUE;
            }
        }
        else
        {
            entry = gUnknown_03006720;
            count = 0;
            for (i = 0; i < gUnknown_03006758; i++, entry++)
            {
                if (entry->unkA != 0)
                {
                    u32 kind = entry->unk4.k.kind;

                    if (kind == 13)
                        count++;
                }
            }
            if (count != 0)
                return TRUE;
            gPlayers[who].unk10 |= 0x100;
        }
        entry = &gUnknown_03006720[gUnknown_03006758];
        gUnknown_03006758++;
        entry->unk8 = 0;
        entry->unkA = 1;
        entry->unk4.k.kind = 13;
        entry->unk4.k.who = mode;
        entry->type = who;
        entry->unk4.bytes[1] = value;
    }
    return TRUE;
}
