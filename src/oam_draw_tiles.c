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
    u8 unk1_0:6;
    u8 shape:2;
    s16 x:9;
    u16 unk2_9:5;
    u16 size:2;
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
extern u32 gUnknown_030031E8;   // object tiles used this frame (a guess)
extern const u32 gUnknown_080FB0B8[];   // tiles by size, non-square shapes
extern const u32 gUnknown_080FB0C8[];   // tiles by size, square objects

// Like sub_08002F48, but the objects get consecutive tile numbers from
// the next free object tile instead of the frame's own: adds frame
// `frame` of animation `anim` of sprite `record` to the OAM buffer at
// (x, y), the palettes mapped through `palettes`. Returns the VRAM
// address for the frame's tiles, 0 when the buffer fills up and -1 for
// a full buffer or a bad animation.
u32 sub_0800336C(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 *palettes,
                 struct SpriteRecord *record)
{
    struct SpriteFrame *frames;
    struct SpriteAnim *entry;
    struct SpriteOam *src;
    struct OamData *dest;
    u32 base;
    u32 list;
    struct SpriteOam *obj;
    u32 shape;
    u16 tile;
    u32 i;
    s32 objX;
    s32 objY;
    u32 count;

    count = gUnknown_030031E4;
    if (count > 128)
        return -1;
    if (record->animCount < anim)
        return -1;
    base = gUnknown_030031E8;
    frames = (struct SpriteFrame *)(record->frames + (u32)record);
    entry = (struct SpriteAnim *)((u32)record + record->anims) + anim;
    list = (u32)entry + entry->frames;
    list += frame * 4;
    frames += *(u16 *)list;
    src = (struct SpriteOam *)((u8 *)frames + frames->oams);
    dest = &gOamBuffer[count];
    tile = 0;
    for (i = 0; i < frames->count; i++, dest++, src++)
    {
        // FAKE (maybe a macro, decomp-permuter): the do/while; x is the
        // 9-bit signed field, shifted by hand.
        do
        {
            obj = src;
            *dest = *(struct OamData *)src;
            objX = ((u16 *)src)[1] << 23;
            objX >>= 23;
            objY = src->y;
            objY += y;
            objX += x;
        } while (0);
        dest->priority = priority;
        dest->paletteNum = palettes[dest->paletteNum];
        if ((u32)(objX + 64) > 304 || objY > 160 || objY < -64)
        {
            dest->size = 0;
            dest->shape = 0;
            objY = 160;
        }
        dest->x = objX;
        dest->y = objY;
        dest->tileNum = tile + base;
        shape = obj->shape;
        if (shape)
            tile += gUnknown_080FB0B8[obj->size];
        else
            tile += gUnknown_080FB0C8[obj->size];
        if (++gUnknown_030031E4 > 128)
            return 0;
    }
    gUnknown_030031E8 += tile;
    return base * 32 + 0x06010000;
}
