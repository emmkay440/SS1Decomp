#include "global.h"
#include "area_state.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gSpawnerThreads;
extern struct Thread *gUnknownThreadPtr_0300640C;
extern struct Thread *gUnknownThreadPtr_03006410;
extern struct Thread *gUnknownThreadPtr_03006404;
extern struct Thread *gUnknownThreadPtr_03006408;
extern struct Thread *gUnknownThreadPtr_030063D0;
extern struct Thread *gUnknownThreadPtr_030063F4;
extern struct Thread *gUnknownThreadPtr_030063F0;
extern struct Thread *gUnknownThreadPtr_030063FC;
extern struct Thread *gUnknownThreadPtr_030063DC;
extern struct Thread *gUnknownThreadPtr_030063E0;
extern struct Thread *gUnknownThreadPtr_030063CC;
extern struct Thread *gUnknownThreadPtr_030063F8;
extern struct Thread *gUnknownThreadPtr_030063E8;
extern struct Thread *gUnknownThreadPtr_030063D4;
extern struct Thread *gUnknownThreadPtr_03006414;
extern struct Thread *gUnknownThreadPtr_030063EC;
extern struct Thread *gUnknownThreadPtr_030063E4;
extern struct Thread *gUnknownThreadPtr_03006400;

void sub_08020F54(void);

// The original loads the pointer's address before calling Alloc.
#define ALLOC_THREADS(ptr, count)                           \
{                                                           \
    struct Thread **_p = &(ptr);                            \
    *_p = Alloc((count) * sizeof(struct Thread));           \
}

// Allocates the area state and the area's thread slots.
void sub_080186A8(void)
{
    struct Unknown_030063D8 **statePtr = &gUnknown_030063D8;
    struct Unknown_030063D8 *state;

    state = Alloc(0x1F8);
    *statePtr = state;
    state->unk0 = NULL;
    state->unk8 = NULL;
    state->unk4 = NULL;
    state->unk9A = 0xFFFF;
    state->unk9C = 0;
    ALLOC_THREADS(gSpawnerThreads, 5);
    ALLOC_THREADS(gUnknownThreadPtr_0300640C, 1);
    ALLOC_THREADS(gUnknownThreadPtr_03006410, 1);
    ALLOC_THREADS(gUnknownThreadPtr_03006404, 1);
    ALLOC_THREADS(gUnknownThreadPtr_03006408, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063D0, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063F4, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063F0, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063FC, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063DC, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063E0, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063CC, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063F8, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063E8, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063D4, 1);
    ALLOC_THREADS(gUnknownThreadPtr_03006414, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063EC, 1);
    ALLOC_THREADS(gUnknownThreadPtr_030063E4, 1);
    ALLOC_THREADS(gUnknownThreadPtr_03006400, 1);
    sub_08020F54();
}
