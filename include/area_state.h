#ifndef GUARD_AREA_STATE_H
#define GUARD_AREA_STATE_H

// A place where enemies spawn when a player comes near (sub_080199B4).
struct SpawnPoint
{
    u16 x;              // in 8-pixel units; the first word is -1 once used up
    u16 y;
    u8 unk4[0x2C];
};                      // size 0x30

// A trap on the map: it hurts the local player standing on it once per
// trigger (sub_0801CFB0).
struct AreaTrap
{
    u16 x;              // in 8-pixel units
    u16 y;
    u32 key;            // sprite record (only the first entry's is used)
    u16 anim;
    u16 unkA;
};                      // size 0xC

// A trap that stays active until all of its switches are on (bits of
// unk92) (sub_0801D2C4).
struct AreaSwitchedTrap
{
    u16 x;              // in 8-pixel units
    u16 y;
    u16 switches[8];    // 1-based bit numbers in unk92; 0: unused
    u32 key;            // +0x14 sprite record (only the first entry's is used)
    u16 anim;           // +0x18
    u16 unk1A;
};                      // size 0x1C

// A trap that goes off by itself every `period` frames (sub_0801D5D8).
struct AreaTimedTrap
{
    u16 x;              // in 8-pixel units
    u16 y;
    u16 period;
    u16 anim;
    u32 key;            // sprite record
};                      // size 0xC

// A pillar that blocks players and enemies until all of its switches are
// on (bits of unk92); then it rises out of the way (sub_0801DBC8).
struct AreaPillar
{
    u16 x;              // in 8-pixel units
    u16 y;
    u16 anim;
    u16 fixed;          // nonzero: never rises
    u16 switches[8];    // 1-based bit numbers in unk92; 0: unused
    u32 key;            // +0x18 sprite record (only the first entry's is used)
};                      // size 0x1C

// A switch on the map that animates while a player stands on it
// (sub_0801D928).
struct AreaSwitch
{
    u16 x;              // in 8-pixel units
    u16 y;
    u16 unk4;
    u16 unk6;           // nonzero: not animated
    u32 key;            // sprite record (only the first entry's is used)
};                      // size 0xC

// A spot on the map that lights up when the local player stands on it
// (sub_0801CDE0).
struct AreaMarker
{
    u16 x;              // in 8-pixel units
    u16 y;
    u32 key;            // sprite record (only the first entry's is used)
    u16 anim;
    u16 unkA;
};                      // size 0xC

// A warp pad of an area (a guess): standing next to it and pressing the
// player's key moves the player to the destination.
struct AreaWarp
{
    u16 x;              // in tiles
    u16 y;
    u16 destX;
    u16 destY;
};

// The structure gUnknown_030063D8 points to: state of the current area
// (map data pointers, flags). Only the fields code has touched so far.
struct Unknown_030063D8
{
    void *unk0;         // +0x00 (u16 at +0xC of it: a count)
    void *unk4;         // +0x04 8-byte entries
    struct SpawnPoint *unk8; // +0x08 spawn points; freed by sub_0802173C
    u32 unkC[5];        // +0x0C
    struct AreaMarker *unk20; // +0x20 unk86 markers (sub_0801CDE0)
    struct AreaTrap *unk24; // +0x24 unk88 traps (sub_0801CFB0)
    struct AreaSwitchedTrap *unk28; // +0x28 unk8A traps (sub_0801D2C4)
    struct AreaTimedTrap *unk2C; // +0x2C unk8C timed traps (sub_0801D5D8)
    struct AreaSwitch *unk30; // +0x30 unk8E switches (sub_0801D928)
    struct AreaPillar *unk34; // +0x34 unk90 pillars (sub_0801DBC8)
    u8 unk38[0x8];
    struct AreaWarp *unk40; // +0x40 unk96 warp pads (sub_0801EA78)
    u8 unk44[0x4];
    u16 unk48[5][5];    // +0x48 five lists of ids (sub_08019B98)
    u16 unk7A[5];       // +0x7A their lengths
    u16 unk84;          // +0x84
    u16 unk86;          // +0x86 number of unk20 markers
    u16 unk88;          // +0x88 number of unk24 entries
    u16 unk8A;          // +0x8A number of unk28 traps
    u16 unk8C;          // +0x8C number of unk2C timed traps
    u16 unk8E;          // +0x8E number of unk30 switches
    u16 unk90;          // +0x90 number of unk34 pillars
    u16 unk92;          // +0x92 bit n: marker n reached
    u16 unk94;
    u16 unk96;          // +0x96 number of unk40 warp pads
    u8 unk98[0x2];
    u16 unk9A;          // +0x9A 0xFFFF at start
    u16 unk9C;          // +0x9C flags; bit 1: enemies may spawn (sub_0800EAD8)
    u16 unk9E;          // +0x9E number of unk8 spawn points
    u8 unkA0[0x4];
    u16 unkA4;          // +0xA4 set while leaving through the area exit (sub_0801AAC8, a guess)
    u8 unkA6[0x5];
    u8 unkAB;           // +0xAB set once SignalEvent(3000) has been sent
    u8 unkAC[0x20];
    u8 unkCC[0xE];      // +0xCC indexed past its end: row * 15 + entry (sub_080216E0)
    u8 unkDA;           // +0xDA
};

// An area's data record: a list of entries, each pointing at its data.
struct AreaHeader
{
    u8 unk0[0x8];
    u32 entriesOffset;  // +0x08 from the header to the entries
    u16 entryCount;     // +0x0C
};

struct AreaEntry
{
    u16 unk0;
    u16 kind;           // 0: start positions (AreaPos list), 3: see sub_08019300
    u32 offset;         // from the entry to its data
};

struct AreaPos
{
    u16 x;              // in tiles
    u16 y;
    u8 unk4[0x4];
};

extern struct Unknown_030063D8 *gUnknown_030063D8;

#endif // GUARD_AREA_STATE_H
