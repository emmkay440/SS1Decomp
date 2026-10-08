Rules for matching this compiler (agbcc, GCC 2.95 for THUMB):

- Write plain C89: declarations at the top of a block, no `//` inside macros,
  no C99 features. Use the project types (u8, u16, u32, s8, s16, s32, bool32).
- Parameters narrower than 32 bits show up as `lsls rX, #24/#16` +
  `lsrs`/`asrs` at the start: lsrs = unsigned (u8/u16), asrs = signed.
- `ldrsh`/`asrs` mean signed values (s16/s32); `ldrh`/`lsrs` unsigned.
  Signed comparisons: bgt/blt/bge/ble. Unsigned: bhi/bcc/bcs/bls.
- Fields at `[rX, #offset]` from a pointer argument: declare a local struct
  with padding fields (`u8 unk0[0x10];`) so the field lands at that offset.
  Every struct is 4-byte aligned in this compiler.
- A literal pool word with a symbol name (`.4byte gFoo`) is a global:
  `extern <type> gFoo;`. A literal like `gFoo+0x20` (one word) comes from
  `&gFoo.field` or `gFoo.array + i`; loading a field (`ldr r0, =gFoo` then
  `[r0, #0x20]`) comes from `gFoo.field`.
- Calls (`bl Name`) need a prototype; if the result is used (r0 after the
  call), the function returns a value. If a function's r0 is untouched and
  returned, it may return its argument.
- When the diff shows the same instructions in a different order or with
  swapped registers, try: swapping operands (`a & b` vs `b & a`, `x + y` vs
  `y + x`), putting a value in a temporary variable first, changing
  declaration order, `for` vs `while`, `i++` placement, or a different
  integer type (u32 vs s32 vs u16).
- When the true/false blocks are in the wrong order, invert the condition
  or use an if/else with a result variable instead of early returns
  (or the other way round).
- Constants like `movs r0, #5; negs r0, r0` (= ~4) come from bitfield writes
  or int-width masks; a 16-bit literal (0xFFFB) comes from a u16 mask.
- A switch with a jump table: write a switch. Cases whose code is laid out in
  a particular order: write the cases in that order.
- Do not use inline assembly. Do not use goto unless the code really jumps
  backwards in a way loops can't express.
