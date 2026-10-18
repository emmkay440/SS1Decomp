#include "global.h"

struct OamData
{
    u32 y:8;
    u32 affineMode:2;
    u32 objMode:2;
    u32 mosaic:1;
    u32 bpp:1;
    u32 shape:2;
    u32 x:9;
    u32 matrixNum:5;
    u32 size:2;
    u16 tileNum:10;
    u16 priority:2;
    u16 paletteNum:4;
    u16 affineParam;
};

// An object entry of a sprite frame: OAM attributes 0-2, y and x being
// offsets from the sprite's position.
struct SpriteOam
{
    s8 y;
    u8 unk1;
    u16 x:9;
    u16 unk2_9:7;
    u16 tileNum:10;
    u16 unk4_10:6;
    u16 unk6;
};

struct SpriteFrame
{
    u16 unk0;
    u16 count;         // +0x02 objects
    u32 unk4;
    s32 oams;          // +0x08 offset from the frame to its objects
};

struct SpriteAnim
{
    u16 unk0;
    u16 unk2;
    u16 frameCount;    // +0x04
    u16 unk6;
    s32 frames;        // +0x08 offset to u32 entries, frame index in the low half
};

struct SpriteRecord
{
    u16 unk0;
    u16 animCount;     // +0x02
    s32 frames;        // +0x04 offset to the struct SpriteFrame array
    s32 anims;         // +0x08 offset to the struct SpriteAnim array
};

extern struct OamData gOamBuffer[];
extern u32 gUnknown_030031E4;   // OAM entries used this frame

// Adds frame `frame` of animation `anim` of sprite `record` to the OAM
// buffer at (x, y): priority, palette and a tile number relative to
// `tileBase` are set on every object; objects too far off the screen
// are hidden. Returns FALSE when the buffer is full (128 entries), TRUE
// otherwise (also for a bad animation or frame).
bool32 sub_08002F48(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 palette,
                    struct SpriteRecord *record, u16 tileBase)
{
    struct SpriteFrame *frames;
    u32 anims;
    u32 list;
    struct SpriteAnim *entry;
    struct SpriteOam *src;
    struct OamData *dest;
    u32 firstTile;
    u32 i;
    s32 objX;
    s32 objY;
    u32 count;

    count = gUnknown_030031E4;
    if (count > 128)
        return FALSE;
    frames = (struct SpriteFrame *)((u8 *)record + record->frames);
    anims = (u32)record + record->anims;
    if (anim < record->animCount)
    {
        entry = (struct SpriteAnim *)(anim * sizeof(struct SpriteAnim) + anims);
        if (entry->frameCount > frame)
        {
            list = entry->frames + (u32)entry;
            list += frame * 4;
            frames += *(u16 *)list;
            src = (struct SpriteOam *)((u8 *)frames + frames->oams);
            firstTile = src->tileNum;
            dest = &gOamBuffer[count];
            for (i = 0; i < frames->count; i++, dest++, src++)
            {
                ((u16 *)dest)[0] = ((u16 *)src)[0];
                ((u16 *)dest)[1] = ((u16 *)src)[1];
                ((u16 *)dest)[2] = ((u16 *)src)[2];
                // the do/while is probably a macro in the original (same in
                // src/oam_draw_tiles.c); x is the 9-bit field sign-extended
                // by hand.
                do
                {
                    objX = ((struct OamData *)src)->x << 23;
                    objX >>= 23;
                    objY = src->y;
                    objY += y;
                    objX += x;
                } while (0);
                dest->priority = priority;
                dest->paletteNum = palette;
                if ((u32)(objX + 64) > 304)
                {
                    dest->shape = 0;
                    dest->size = 0;
                    objY = 160;
                }
                if ((u32)(objY + 64) > 224)
                {
                    dest->shape = 0;
                    dest->size = 0;
                    objY = 160;
                }
                dest->x = objX;
                dest->y = objY;
                dest->tileNum -= firstTile;
                dest->tileNum += tileBase;
                if (++gUnknown_030031E4 > 128)
                    return FALSE;
            }
        }
    }
    return TRUE;
}
