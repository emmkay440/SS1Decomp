OUTPUT_ARCH(arm)
ENTRY(_start)

INCLUDE ld_symbols.ld

SECTIONS {
    . = 0x08000000;

    .text : {
        asm/crt0.o(.text);
        asm/code.o(.text);
        src/copy_queue.o(.text);
        asm/code_08001210.o(.text);
        asm/player_damage.o(.text);
        asm/code_0800B4B4.o(.text);
        asm/enemy_damage.o(.text);
        src/enemy_util.o(.text);
        asm/code_0800EA00.o(.text);
        src/player_stats.o(.text);
        asm/code_08013AF8.o(.text);
        src/sound.o(.text);
        asm/code_0803F468.o(.text);
        asm/lib/m4a_1.o(.text);
        src/lib/m4a.o(.text);
        asm/lib/libagbsyscall.o(.text);
        asm/lib/agb_flash.o(.text);
        asm/lib/libgcc.o(.text);
        asm/lib/libc.o(.text);
    } =0

    .rodata : {
        data/data.o(.rodata);
    } =0

    /DISCARD/ : { *(*) }
}
