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
    u16 tileHi:2;
    u16 unk4_12:4;
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

void QueueCopy(const void *src, void *dest, u32 size);

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

// Byte 3 of an OAM entry (the top of attribute 1).
struct OamAttr1Hi
{
    u8 xHi:1;
    u8 matrixLo:3;
    u8 matrix2:1;
    u8 matrix3:1;
    u8 size:2;
};

extern u32 gUnknown_030031E0;   // affine matrices used this frame

// Like sub_08003518 for an affine sprite: every object uses the next
// free rotation/scaling matrix, set from (xScale, yScale, rotation).
// Off-screen objects are hidden. Returns the number of matrices in use.
u32 sub_08003724(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 *palettes,
                 struct SpriteRecord *record, u8 *tiles, u16 xScale, u16 yScale,
                 u16 rotation)
{
    struct ObjAffineSrcData affine;
    struct SpriteFrame *frames;
    struct SpriteAnim *entry;
    struct SpriteOam *src;
    struct SpriteOam *oams;
    struct SpriteOam *obj;
    struct OamData *dest;
    struct OamData *mat;
    struct OamAttr1Hi *hi;
    u32 vram;
    u32 i;
    u32 base;
    u32 matrix;
    u16 param;
    u32 list;
    u32 size;
    u16 tile;
    u32 shape;
    s32 objX;
    s32 objY;
    u32 count;

    count = gUnknown_030031E4;
    if (count > 127)
        return -1;
    if (record->animCount < anim)
        return -1;
    base = gUnknown_030031E8;
    matrix = gUnknown_030031E0;
    frames = (struct SpriteFrame *)(record->frames + (u32)record);
    entry = (struct SpriteAnim *)((u32)record + record->anims) + anim;
    list = (u32)entry + entry->frames;
    list += frame * 4;
    frames += *(u16 *)list;
    oams = (struct SpriteOam *)((u8 *)frames + frames->oams);
    dest = &gOamBuffer[count];
    vram = base * 32 + 0x06010000;
    tile = 0;
    size = 0;
    src = oams;
    for (i = 0; i < frames->count; i++, dest++, src++)
    {
        obj = src;
        param = dest->affineParam;
        do
        {
            *dest = *(struct OamData *)obj;
            objX = ((struct OamData *)obj)->x << 23;
            objX >>= 23;
            objY = obj->y;
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
        dest->tileNum = base + tile;
        vram += size;
        shape = obj->shape;
        if (shape)
        {
            size = gUnknown_080FB0B8[obj->size];
            tile += size;
        }
        else
        {
            size = gUnknown_080FB0C8[obj->size];
            tile += size;
        }
        dest->affineMode = 1;
        hi = (struct OamAttr1Hi *)((u8 *)dest + 3);
        hi->matrixLo = matrix % 4;
        hi->matrix2 = (matrix / 4) % 2;
        hi->matrix3 = (matrix / 8) % 2;
        dest->affineParam = param;
        if (++gUnknown_030031E4 > 127)
            return 0;
        size *= 32;
        QueueCopy(tiles + ((obj->tileNum | (obj->tileHi << 10)) << 5), (void *)vram, size);
    }
    mat = gOamBuffer;
    mat += gUnknown_030031E0++ * 4;
    affine.xScale = xScale;
    affine.yScale = yScale;
    affine.rotation = rotation;
    ObjAffineSet(&affine, &mat->affineParam, 1, 8);
    gUnknown_030031E8 += tile;
    return gUnknown_030031E0;
}
