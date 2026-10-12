#include "global.h"

// Animation data: a header, `count` 12-byte animations at +unk8, each with
// its 4-byte frames at +framesOffset.
struct AnimHeader
{
    u16 unk0;
    u16 count;
    u32 unk4;
    u32 animsOffset;
};

struct Anim
{
    u32 unk0;
    u16 numFrames;
    u16 unk6;
    u32 framesOffset;
};

struct AnimFrame
{
    u16 unk0;
    u16 duration;
};

// Advances an animation by one tick. Returns TRUE when a non-looping
// animation has finished (it then stays on its last frame).
bool32 sub_08004214(u16 animId, u16 *frame, u16 *timer, struct AnimHeader *data, u32 loop)
{
    struct Anim *anim;
    struct AnimFrame *animFrame;
    bool32 finished;

    if (data->count < animId)
        return FALSE;
    anim = (struct Anim *)((u8 *)data + data->animsOffset);
    anim += animId;
    if (anim->numFrames <= *frame)
        *frame = 0;
    animFrame = (struct AnimFrame *)((u8 *)anim + anim->framesOffset);
    animFrame += *frame;
    finished = FALSE;
    if (animFrame->duration <= *timer)
    {
        (*frame)++;
        *timer = 0;
        if (anim->numFrames <= *frame)
        {
            if (loop)
            {
                *frame = 0;
            }
            else
            {
                *timer = animFrame->duration + 1;
                *frame = anim->numFrames - 1;
                finished = TRUE;
            }
        }
    }
    else
    {
        (*timer)++;
    }
    return finished;
}

// A sprite frame: `numParts` 8-byte parts at +partsOffset.
struct SpriteFrame
{
    u16 unk0;
    u16 numParts;
    u32 unk4;
    u32 partsOffset;
};

// One hardware sprite of a frame (laid out like OAM attributes).
struct SpritePart
{
    u8 unk0;
    u8 unk1;           // bits 6-7: shape
    u8 unk2;
    u8 unk3;           // bits 6-7: size
    u16 tile:10;
    u16 tileHigh:2;
    u16 unk4_12:4;
    u16 unk6;
} __attribute__((packed, aligned(2)));

extern const u32 gUnknown_080FB0D8[];   // tile data size by sprite size, non-square shapes
extern const u32 gUnknown_080FB0E8[];   // same for square sprites

void QueueCopy(const void *src, void *dest, u32 size);

// Queues the copies of a frame's tile data (from `tiles`, 32 bytes per
// tile) to `dest`, one part after the other.
void sub_08004288(u16 animId, u16 frame, struct AnimHeader *data, u8 *tiles, u8 *dest)
{
    u8 *out;
    struct SpriteFrame *spriteFrame;
    struct Anim *anim;
    struct AnimFrame *animFrame;
    struct SpritePart *part;
    u32 size;
    u32 i;

    if (data->count < animId)
        return;
    spriteFrame = (struct SpriteFrame *)((u8 *)data + data->unk4);
    anim = (struct Anim *)((u8 *)data + data->animsOffset);
    anim += animId;
    animFrame = (struct AnimFrame *)((u8 *)anim + anim->framesOffset);
    animFrame += frame;
    spriteFrame += animFrame->unk0;
    part = (struct SpritePart *)((u8 *)spriteFrame + spriteFrame->partsOffset);
    out = dest;
    size = 0;
    for (i = 0; i < spriteFrame->numParts; i++, part++)
    {
        u8 *src = tiles + ((part->tile | (part->tileHigh << 10)) << 5);

        out += size;
        if (part->unk1 >> 6)
            size = gUnknown_080FB0D8[part->unk3 >> 6];
        else
            size = gUnknown_080FB0E8[part->unk3 >> 6];
        QueueCopy(src, out, size);
    }
}
