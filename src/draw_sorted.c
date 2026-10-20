#include "global.h"
#include "display.h"

// The sprite draw list (see src/draw_list.c).
struct DrawNode
{
    struct DrawNode *prev;
    struct DrawNode *next;
    u32 unk8;
    u32 unkC;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    void *unk1C;
    u8 unk20[2];
    u8 unk22;
};                     // size 0x24

extern struct DrawNode *gUnknown_030031EC;   // head
extern struct DrawNode *gUnknown_030031F0;   // tail
extern u32 gUnknown_030031F4;                // nodes used
extern struct DrawNode gUnknown_03003200[50];

struct DrawNode *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h)
{
    struct DrawNode *node;
    struct DrawNode *p;

    if (gUnknown_030031F4 > 49)
        return NULL;
    node = &gUnknown_03003200[gUnknown_030031F4];
    gUnknown_030031F4++;
    node->unk8 = a;
    node->unkC = b;
    node->unk10 = c;
    node->unk12 = d;
    node->unk22 = e;
    node->unk1C = f;
    node->unk14 = g;
    node->unk18 = h;
    node->prev = NULL;
    node->next = NULL;
    if (gUnknown_030031F0 == NULL)
    {
        gUnknown_030031EC = node;
        gUnknown_030031F0 = node;
        node->prev = NULL;
        node->next = NULL;
    }
    else
    {
        if (0)
        {
        head:
            gUnknown_030031EC = node;
            p->prev = node;
            node->next = p;
            return node;
        }
        // the head insert sits before the loop and the loop is entered at
        // its test, with the step at the top
        p = gUnknown_030031EC;
        goto check;
        for (;;)
        {
            p = p->next;
        check:
            if (p != NULL)
            {
                if ((s32)p->unkC < b && p->unk22 >= e)
                {
                    if (p->prev == NULL)
                        goto head;
                    p->prev->next = node;
                    node->next = p;
                    node->prev = p->prev;
                    p->prev = node;
                    return node;
                }
            }
            else
            {
                break;
            }
        }
        gUnknown_030031F0->next = node;
        node->prev = gUnknown_030031F0;
        node->next = p;
        gUnknown_030031F0 = node;
    }
    return node;
}
