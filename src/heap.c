#include "global.h"
#include "heap.h"

// A heap block header. The first word is the previous block's address with
// the "in use" flag in bit 31; code also reads it as a plain pointer while
// the flag is clear.
struct HeapBlock
{
    union
    {
        struct HeapBlock *prevPtr;
        struct
        {
            u32 prev:31;
            u32 used:1;
        } b;
    } u;
    struct HeapBlock *next;
    struct HeapBlock *freePrev;
    struct HeapBlock *freeNext;
};

struct Heap
{
    struct HeapBlock sentinel;   // free list head
    u32 start;
    u32 size;
};

extern struct Heap gHeap;

#define HEAP_SIZE 0x40000

// One free block covering all of EWRAM, between two "used" marker blocks
// at its start and end.
void InitHeap(void)
{
    struct HeapBlock *first = (struct HeapBlock *)(EWRAM_START + 0x10);

    first->u.prevPtr = (struct HeapBlock *)EWRAM_START;
    first->next = (struct HeapBlock *)(EWRAM_START + HEAP_SIZE - 0x10);
    first->freePrev = &gHeap.sentinel;
    first->freeNext = &gHeap.sentinel;
    first->u.b.used = 0;
    first->u.prevPtr->u.b.used = 1;
    first->u.prevPtr->u.b.prev = 0;
    first->u.prevPtr->next = first;
    first->u.prevPtr->freePrev = &gHeap.sentinel;
    first->u.prevPtr->freeNext = NULL;
    first->next->u.b.used = 1;
    first->next->u.b.prev = (u32)first;
    first->next->next = NULL;
    first->u.prevPtr->freePrev = NULL;
    first->u.prevPtr->freeNext = &gHeap.sentinel;
    gHeap.sentinel.u.prevPtr = first->next;
    gHeap.sentinel.next = first;
    gHeap.sentinel.freePrev = first;
    gHeap.sentinel.freeNext = first;
    gHeap.start = EWRAM_START;
    gHeap.size = HEAP_SIZE - 1;
}
