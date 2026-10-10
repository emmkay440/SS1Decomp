#ifndef GUARD_QUEUE_H
#define GUARD_QUEUE_H

// The queue at gUnknown_03006720 (gUnknown_03006758 entries): pushed by
// src/queue_push.c, consumed by the threads in src/unk_080292D0.c.

// A queue entry. The second word is seen as a whole, as kind + value, or
// as four bytes, depending on the kind.
struct Unknown_03006720
{
    u32 type:8;
    u32 arg:12;
    u32 unk20:12;
    union
    {
        u32 raw;
        struct
        {
            u32 kind:4;
            u32 value:28;
        } f;
        u8 bytes[4];
        struct
        {
            u8 kind:4;
            u8 who:4;      // kind 14 (sub_08029484)
        } k;
        struct
        {
            u32 kind:4;
            u32 who:4;
            u32 unk8:4;
            u32 unk12:8;
            u32 unk20:8;
        } m;           // kind 11 (sub_08027790)
    } unk4;
    u16 unk8;
    u16 unkA;
};

#define QUEUE_SIZE 180
#define QUEUE_EVENT 0x069DBE17   // waited on by sub_080291B0 / sub_08029220

extern struct Unknown_03006720 *gUnknown_03006720;
extern u32 gUnknown_03006758;
extern u32 gUnknown_030066E8;
extern u32 gUnknown_0300671C;

#endif // GUARD_QUEUE_H
