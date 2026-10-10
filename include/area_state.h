#ifndef GUARD_AREA_STATE_H
#define GUARD_AREA_STATE_H

// The structure gUnknown_030063D8 points to: state of the current area
// (map data pointers, flags). Only the fields code has touched so far.
struct Unknown_030063D8
{
    void *unk0;         // +0x00 (u16 at +0xC of it: a count)
    void *unk4;         // +0x04 8-byte entries
    void *unk8;         // +0x08 freed by sub_0802173C
    u32 unkC[5];        // +0x0C
    u8 unk20[0x64];
    u16 unk84;          // +0x84
    u8 unk86[0x16];
    u16 unk9C;          // +0x9C flags; bit 1: enemies may spawn (sub_0800EAD8)
    u8 unk9E[0xD];
    u8 unkAB;           // +0xAB set once SignalEvent(3000) has been sent
    u8 unkAC[0x2E];
    u8 unkDA;           // +0xDA
};

extern struct Unknown_030063D8 *gUnknown_030063D8;

#endif // GUARD_AREA_STATE_H
