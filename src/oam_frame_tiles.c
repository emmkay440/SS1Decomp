#include "global.h"

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

void QueueCopy(const void *src, void *dest, u32 size);

#define COPY_ROW(size)              \
    {                               \
        QueueCopy(src, dest, size); \
        src += 0x400;               \
        dest += 0x400;              \
    }

// Queues the tiles of frame `frame` of animation `anim` of sprite
// `record` from the 2D sheet `tiles` (rows of 0x400 bytes) to `vram`,
// one row of each object at a time, the first object's tile at `vram`.
// Shape 1 and 2 objects of the largest size are tested as size 4, so
// they are never copied (a bug in the original, or a guess).
void sub_080030DC(u16 anim, u16 frame, struct SpriteRecord *record, u8 *tiles, u8 *vram)
{
    struct SpriteFrame *frames;
    struct SpriteAnim *entry;
    struct SpriteOam *obj;
    u32 anims;
    u32 list;
    u32 firstTile;
    u32 i;
    u8 *src;
    u8 *dest;

    frames = (struct SpriteFrame *)(record->frames + (u32)record);
    anims = (u32)record + record->anims;
    entry = (struct SpriteAnim *)(anim * sizeof(struct SpriteAnim) + anims);
    if (entry->frameCount > frame)
    {
        list = entry->frames + (u32)entry;
        list += frame * 4;
        frames += *(u16 *)list;
        // the objects follow at an offset from the frame
        obj = (struct SpriteOam *)frames->oams;
        obj = (struct SpriteOam *)((u32)obj + (u32)frames);
        firstTile = obj->tileNum;
        for (i = 0; i < frames->count; i++, obj++)
        {
            dest = vram + (obj->tileNum - firstTile) * 32;
            src = tiles + obj->tileNum * 0x400;
            switch (obj->shape)
            {
            case 0:
                switch (obj->size)
                {
                case 0:
                    COPY_ROW(0x20);
                    break;
                case 1:
                    COPY_ROW(0x40);
                    COPY_ROW(0x40);
                    break;
                case 2:
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    break;
                case 3:
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    break;
                }
                break;
            case 1:
                switch (obj->size)
                {
                case 0:
                    COPY_ROW(0x40);
                    break;
                case 1:
                    COPY_ROW(0x80);
                    break;
                case 2:
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    break;
                case 4:
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    COPY_ROW(0x100);
                    break;
                }
                break;
            case 2:
                switch (obj->size)
                {
                case 0:
                    COPY_ROW(0x20);
                    COPY_ROW(0x20);
                    break;
                case 1:
                    COPY_ROW(0x20);
                    COPY_ROW(0x20);
                    COPY_ROW(0x20);
                    COPY_ROW(0x20);
                    break;
                case 2:
                    COPY_ROW(0x40);
                    COPY_ROW(0x40);
                    COPY_ROW(0x40);
                    COPY_ROW(0x40);
                    break;
                case 4:
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    COPY_ROW(0x80);
                    break;
                }
                break;
            }
        }
    }
}
