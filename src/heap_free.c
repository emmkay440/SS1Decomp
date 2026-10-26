// Draft: 2 lines off. It does `r4 = ptr; r1 = r4`; the original does
// `r1 = ptr; r4 = r1`. The integer copy in its own do/while(0) came from
// decomp-permuter.
// The goto reproduces the original loop entry (test at the bottom, entered
// with the first compare already done).
#include "global.h"
#include "heap.h"

// Frees a block and merges it with free neighbours. A block with used
// neighbours on both sides goes into the free list after the nearest free
// block before it (or at the head).
void Free(void *ptr)
{
    struct HeapBlock *block = ptr;
    struct HeapBlock *next;
    struct HeapBlock *b;  // FAKE (decomp-permuter): a copy of block
    struct HeapBlock *prev;
    u32 addr;

    addr = (u32)ptr;
    block--;
    b = block;
    if (addr < gHeap.start || addr > gHeap.start + gHeap.size)
        return;
    b->u.b.used = 0;
    next = b->next;
    prev = b->u.prevPtr;
    if (!prev->u.b.used)
    {
        next->u.b.prev = (u32)prev;
        prev->next = next;
        if (!next->u.b.used)
        {
            prev->next = next->next;
            next->next->u.b.prev = (u32)prev;
            next->freePrev->freeNext = next->freeNext;
            next->freeNext->freePrev = next->freePrev;
        }
    }
    else if (!next->u.b.used)
    {
        b->next = next->next;
        next->next->u.b.prev = (u32)b;
        b->freePrev = next->freePrev;
        b->freeNext = next->freeNext;
        next->freePrev->freeNext = b;
        next->freeNext->freePrev = b;
        b->u.b.used = 0;
    }
    else
    {
        struct HeapBlock *head;
        struct HeapBlock *first;

        b->u.b.used = 0;
        first = gHeap.sentinel.next;
        if (b != first)
        {
            goto check;
            do
            {
                prev = (struct HeapBlock *)prev->u.b.prev;
                if (!prev->u.b.used)
                {
                    b->freePrev = prev;
                    b->freeNext = prev->freeNext;
                    prev->freeNext->freePrev = b;
                    prev->freeNext = b;
                    return;
                }
                first = gHeap.sentinel.next;
            check:
                ;
            } while (prev != first);
        }
        b->freePrev = &gHeap.sentinel;
        head = gHeap.sentinel.freeNext;
        b->freeNext = head;
        do  // FAKE (decomp-permuter): a no-op do/while (maybe a macro)
        {
            head->freePrev = b;
            gHeap.sentinel.freeNext = b;
        } while (0);
    }
}

