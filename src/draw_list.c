#include "global.h"
#include "display.h"

// An entry of the list at gUnknown_030031EC; each one is drawn with
// sub_08003518 once per frame (sub_0800449C is the first call in
// FrameUpdate).
struct DrawNode
{
    u16 unk0;
    u16 unk2;
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
};

extern struct DrawNode *gUnknown_030031EC;

void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

void sub_0800449C(void)
{
    struct DrawNode *node;

    for (node = gUnknown_030031EC; node != NULL; node = node->next)
        sub_08003518(node->unk8, node->unkC, node->unk10, node->unk12, node->unk22,
                     node->unk1C, node->unk14, node->unk18);
}

s32 sub_080044DC(struct DrawNode *node)
{
    return node->unk2 - 1;
}

// Blend registers in the buffer: control (targets a / b, effect c), alpha
// (d, e) and brightness (f).
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f)
{
    gBgRegsBuffer[0x20] = a | (c << 6) | (b << 8);
    gBgRegsBuffer[0x21] = d | (e << 8);
    gBgRegsBuffer[0x22] = f;
}

// Mosaic register in the buffer, from its four sizes.
void sub_08004524(u8 a, u8 b, u8 c, u8 d)
{
    gBgRegsBuffer[0x1E] = a | (b << 4) | (c << 8) | (d << 12);
}
