#ifndef GUARD_WINDOW_H
#define GUARD_WINDOW_H

#include "thread.h"

// Two arrays of thread-driven records (windows?): 0x34-byte ones at
// gUnknown_03006418 and 0x88-byte ones at gUnknown_0300641C (four of each),
// with byte masks of the live ones.
struct Unknown_03006418
{
    struct Thread thread;
    u8 unk28[0xC];
};

struct Unknown_0300641C
{
    struct Thread thread;
    u8 unk28[0x60];
};

// A message window (gUnknown_03006418 entries, sub_08021874).
struct Window
{
    struct Thread thread;
    u16 x;             // +0x28 center, in tiles
    u16 y;
    u16 width;         // +0x2C
    u16 height;
    u8 state;          // +0x30
    u8 slot;           // +0x31 bit in gUnknown_03006424
};

extern struct Unknown_03006418 *gUnknown_03006418;
extern struct Unknown_0300641C *gUnknown_0300641C;
extern u8 gUnknown_03006420;
extern u8 gUnknown_03006424;

#endif // GUARD_WINDOW_H
