#include "global.h"
#include "heap.h"
#include "item.h"
#include "player.h"
#include "thread.h"

extern struct Item *gUnknown_030063AC;
extern struct Item *gUnknown_030063B8;
extern struct Item *gUnknown_030063A8;

u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007604(void);
void sub_08023048(s32 x, s32 y, struct Item *item, u32 d);

// Thread: draws the field items on the local player's layer every frame
// until sub_080074CC() says to stop, then frees the item lists.
void sub_08013264(void)
{
    u32 me = GetMultiplayerId();
    struct FieldItem *fieldItem;
    u32 i;

    while (!sub_080074CC())
    {
        if (!sub_08007510() && !sub_08007604())
        {
            fieldItem = gFieldItems;
            for (i = 0; i < NUM_FIELD_ITEMS; i++, fieldItem++)
            {
                if ((fieldItem->active & 1) && fieldItem->layer == gPlayers[me].layer)
                    sub_08023048(fieldItem->x, fieldItem->y, &fieldItem->item, 1);
            }
        }
        WaitFrame();
    }
    Free(gFieldItems);
    Free(gUnknown_030063AC);
    Free(gUnknown_030063B8);
    Free(gUnknown_030063A8);
    gFieldItems = NULL;
    gUnknown_030063AC = NULL;
    gUnknown_030063B8 = NULL;
    gUnknown_030063A8 = NULL;
}
