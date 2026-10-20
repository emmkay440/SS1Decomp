#!/bin/sh
# usage: tools/scripts/dcheck.sh FUNC asm_module draft.c [-v]  -> diff of draft vs target (no build of the tree)
F=$1; M=$2; C=$3
D=$(mktemp -d)
{ printf '\t.include "asm/macros.inc"\n\t.syntax unified\n\t.text\n'; awk -v f="$F" '$1 ~ /thumb_func_start/ {p = ($2 == f)} p' asm/$M.s; } > "$D/target.s"
arm-none-eabi-as -mcpu=arm7tdmi -I include -o "$D/target.o" "$D/target.s" || exit 1
arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include -iquote include -P "$C" > "$D/base.c"
tools/agbcc/bin/agbcc -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -fprologue-bugfix -o "$D/base.s" "$D/base.c" || exit 1
printf '\t.text\n\t.align 2, 0\n' >> "$D/base.s"
arm-none-eabi-as -mcpu=arm7tdmi -o "$D/base.o" "$D/base.s"
dis() { arm-none-eabi-objdump -d --no-show-raw-insn "$1" | awk '/^ +[0-9a-f]+:/' | sed 's/^ *[0-9a-f]*:\t//; s/;.*//; s/<.*>//; s/[ \t]*$//; s/@.*//; s/^\(b[a-z]*\(\.n\)\?\)\t.*/\1/; s/^\(ldr\t[a-z0-9]*, \[pc\).*/\1/; s/[ \t]*$//'; }
dis "$D/target.o" > "$D/t"; dis "$D/base.o" > "$D/b"
n=$(diff "$D/t" "$D/b" | grep -c '^[<>]')
echo "$F: $(wc -l < "$D/t") target lines, $(wc -l < "$D/b") draft lines, $n diff lines"
[ "$4" = -v ] && diff -y -W 100 "$D/t" "$D/b" | grep -n '[|<>]' | head -${5:-60}
[ -n "$KEEP" ] && cp "$D/t" "$D/b" /tmp/ ; rm -rf "$D"
