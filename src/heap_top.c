#include "global.h"
#include "heap.h"

// Nothing calls it.
void sub_0800142C(void)
{
}

// Like Alloc, but searches the free list backwards and takes the end of
// the block it finds (used for thread stacks).
void *sub_08001430(u32 size)
{
    struct HeapBlock *block;
    struct HeapBlock *rest;
    struct HeapBlock *next;
    u32 space;

    size = (size + 3) & ~3;
    if (size < 16)
        size = 16;
    for (block = gHeap.sentinel.freePrev; block != &gHeap.sentinel; block = block->freePrev)
    {
        next = block->next;
        space = (u32)next - (u32)block;
        if (space >= size + 0x10)
        {
            if (space >= size + 0x30)
            {
                rest = block;
                block = (struct HeapBlock *)((u8 *)next - size - 0x10);
                block->u.b.prev = (u32)rest;
                block->next = rest->next;
                rest->next->u.b.prev = (u32)block;
                rest->next = block;
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

// Size of the largest free block (including its header). Nothing calls it.
u32 sub_080014C0(void)
{
    struct HeapBlock *block;
    u32 largest = 0;

    for (block = gHeap.sentinel.freeNext; block != &gHeap.sentinel; block = block->freeNext)
    {
        u32 space = (u32)block->next - (u32)block;

        if (largest < space)
            largest = space;
    }
    return largest;
}

// Total size of the free blocks (including headers). Nothing calls it.
u32 sub_080014E4(void)
{
    struct HeapBlock *block;
    u32 total = 0;

    for (block = gHeap.sentinel.freeNext; block != &gHeap.sentinel; block = block->freeNext)
        total += (u32)block->next - (u32)block;
    return total;
}
