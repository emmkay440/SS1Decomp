#include "global.h"
#include "heap.h"

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

// First fit over the free list. Sizes are rounded up to 4 bytes, minimum 16.
// A block is split when at least 0x20 bytes would be left for the rest.
void *Alloc(u32 size)
{
    struct HeapBlock *block;
    struct HeapBlock *rest;
    u32 space;

    size = (size + 3) & ~3;
    if (size < 16)
        size = 16;
    for (block = gHeap.sentinel.freeNext; block != &gHeap.sentinel; block = block->freeNext)
    {
        space = (u32)block->next - (u32)block;
        if (space >= size + 0x10)
        {
            if (space >= size + 0x30)
            {
                rest = (struct HeapBlock *)((u8 *)block + size + 0x10);
                rest->u.b.prev = (u32)block;
                rest->next = block->next;
                rest->freePrev = block->freePrev;
                rest->freeNext = block->freeNext;
                rest->u.b.used = 0;
                block->next->u.b.prev = (u32)rest;
                block->next = rest;
                block->freePrev->freeNext = rest;
                block->freeNext->freePrev = rest;
            }
            else
            {
                block->freePrev->freeNext = block->freeNext;
                block->freeNext->freePrev = block->freePrev;
            }
            block->u.b.used = 1;
            return block + 1;
        }
    }
    return NULL;
}
