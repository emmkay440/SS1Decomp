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
