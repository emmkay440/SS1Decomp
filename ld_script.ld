OUTPUT_ARCH(arm)
ENTRY(_start)

INCLUDE ld_symbols.ld

SECTIONS {
    . = 0x08000000;

    .text : {
        asm/crt0.o(.text);
        asm/code.o(.text);
        src/display.o(.text);
        asm/display_layers.o(.text);
        src/display_misc.o(.text);
        asm/code_08000AF8.o(.text);
        src/copy_queue.o(.text);
        asm/code_08001210.o(.text);
        src/save.o(.text);
        asm/code_08001970.o(.text);
        src/game_flags.o(.text);
        asm/code_080077D0.o(.text);
        src/player_damage.o(.text);
        asm/code_0800B4B4.o(.text);
        src/enemy_damage.o(.text);
        src/enemy_util.o(.text);
        asm/code_0800EA00.o(.text);
        src/player_stats.o(.text);
        asm/code_08013AF8.o(.text);
        src/stats.o(.text);
        asm/code_08016F00.o(.text);
        src/exp_gain.o(.text);
        src/exp.o(.text);
        asm/code_08017150.o(.text);
        src/save_game.o(.text);
        asm/save_slot_info.o(.text);
        asm/save_load_or_new.o(.text);
        src/save_check.o(.text);
        src/save_options.o(.text);
        asm/code_0802F618.o(.text);
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
