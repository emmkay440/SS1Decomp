#include "global.h"
#include "item.h"
#include "player.h"
#include "queue.h"
#include "sound.h"
#include "thread.h"

struct LinkEntry
{
    u32 unk0;
    u32 unk4;
    u32 unk8;          // +0x08 the queue entry being sent
    u32 unkC;
};

struct LinkEntry *sub_08001E78(u32 id);
u32 sub_08001F64(void);
u32 sub_08001F98(void);
bool32 sub_08027940(void);
void sub_08027140(s32 a, s32 b);
struct FieldItem *FindFieldItemNear(s32 x, s32 y, u32 layer);
bool32 PickUpFieldItem(struct FieldItem *fieldItem);

// sub_080294D8, inlined.
static inline struct Unknown_03006720 *GetQueueFront(void)
{
    struct Unknown_03006720 *entry = gUnknown_03006720;

    if (entry->unkA & 1)
        return entry;
    return NULL;
}

// sub_080293B4, inlined.
static inline void PopQueue(void)
{
    u32 i;

    if ((s32)--gUnknown_03006758 < 0)
        gUnknown_03006758 = 0;
    for (i = 0; i < gUnknown_03006758; i++)
        gUnknown_03006720[i] = gUnknown_03006720[i + 1];
    gUnknown_03006720[i].unkA = 0;
}

// sub_0802901C, inlined.
static inline bool32 PushQueueEmpty(void)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->unk4.f.kind = 0;
    return TRUE;
}

// sub_0802913C, inlined.
static inline bool32 PushQueueItem(u32 type, u32 arg, u32 *data)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->arg = arg;
    entry->type = type;
    entry->unk4.raw = *data;
    entry->unk4.f.kind = 6;
    return TRUE;
}

// sub_08029270, inlined.
static inline bool32 PushQueueBytes(u32 value, u8 a, u8 b, u8 c)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unk8 = 0;
    entry->unkA = 1;
    entry->unk4.k.kind = 12;
    entry->unk4.k.who = value;
    entry->unk4.bytes[1] = a;
    entry->unk4.bytes[2] = b;
    entry->unk4.bytes[3] = c;
    return TRUE;
}

// Marks the entry as sent and waits for unkA bit 2, sending it every
// frame. TRUE if it took more than `timeout` frames.
static inline bool32 WaitForAck(struct Unknown_03006720 *entry, struct LinkEntry *link, u32 timeout)
{
    u32 frames;
    bool32 timedOut;

    entry->unkA &= ~1;
    if (entry->unkA & 8)
        entry->unkA |= 2;
    else
        entry->unkA |= 2;
    frames = 0;
    timedOut = FALSE;
    while (!(entry->unkA & 4))
    {
        link->unk8 = *(u32 *)entry;
        link->unkC = entry->unk4.raw;
        WaitFrame();
        if (frames++ > timeout)
        {
            timedOut = TRUE;
            break;
        }
    }
    return timedOut;
}

// Thread gUnknownThread_03006730 (started by sub_080292DC): sends the
// front entry of the queue through the local player's link entry and
// drops it once handled. Kinds 2, 3, 5-7, 9 and 12-15 wait for the other
// side (unkA bit 2) for up to 10 + 5 * (4 - id) frames; on a timeout the
// entry is moved behind a more urgent one (sub_08027940). Kind 8 picks up
// the field item at the entry's position. With nothing queued, an empty
// entry is queued.
void sub_08027A90(void)
{
    struct LinkEntry *link;
    struct Unknown_03006720 *entry;
    struct FieldItem *item;
    u32 timeout;

    sub_08001E78(GetMultiplayerId());
    timeout = (4 - GetMultiplayerId()) * 5 + 10;
    for (;;)
    {
        WaitFrame();
        link = sub_08001E78(GetMultiplayerId());
        entry = GetQueueFront();
        if (entry != NULL)
        {
            switch (entry->unk4.f.kind)
            {
            case 0:
            case 1:
            case 4:
            case 10:
            case 11:
                link->unk8 = *(u32 *)entry;
                link->unkC = entry->unk4.raw;
                WaitFrame();
                entry->unkA = 2;
                PopQueue();
                break;
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 9:
            case 12:
            case 13:
            case 14:
            case 15:
                if (WaitForAck(entry, link, timeout))
                    goto retry;
                if (entry->unk4.f.kind == 2)
                {
                    SignalEvent(QUEUE_EVENT);
                    PushQueueBytes(12, 0, 0, 0);
                }
                PopQueue();
                break;
            case 8:
                if (!sub_08001F64())
                {
                    link->unk8 = *(u32 *)entry;
                    link->unkC = entry->unk4.raw;
                    if (WaitForAck(entry, link, timeout))
                    {
                    retry:
                        if (!sub_08027940())
                            entry->unkA = 1;
                        break;
                    }
                    PopQueue();
                }
                else
                {
                    item = FindFieldItemNear(entry->arg << 12, entry->unk20 << 12,
                                             ((struct PlayerInfo *)gPlayers[GetMultiplayerId()].unkD0)->layer);
                    if (PickUpFieldItem(item))
                    {
                        PushQueueItem(0, item->unk10, (u32 *)&item->item);
                        PlaySE(0x26);
                    }
                    else
                    {
                        sub_08027140(0x9000F, 30);
                    }
                    PopQueue();
                }
                break;
            }
        }
        else
        {
            PushQueueEmpty();
        }
    }
}
