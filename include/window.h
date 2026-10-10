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

extern struct Unknown_03006418 *gUnknown_03006418;
extern struct Unknown_0300641C *gUnknown_0300641C;
extern u8 gUnknown_03006420;
extern u8 gUnknown_03006424;

#endif // GUARD_WINDOW_H
