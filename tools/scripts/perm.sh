#!/bin/sh
# usage: tools/scripts/perm.sh FUNC asm_module draft.c seconds jobs   (run from the repo root)
set -e
F=$1; M=$2; C=$3; T=$4; J=$5
R=$(pwd); D=$R/tmp/permute/$F
rm -rf "$D"; mkdir -p "$D"
{ printf '\t.include "asm/macros.inc"\n\t.syntax unified\n\t.text\n'; awk -v f="$F" '$1 ~ /thumb_func_start/ {p = ($2 == f)} p' asm/$M.s; } > "$D/target.s"
arm-none-eabi-as -mcpu=arm7tdmi -I include -o "$D/target.o" "$D/target.s"
arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include -iquote include -P "$C" > "$D/base.c"
cat > "$D/compile.sh" <<EOF
#!/bin/sh
timeout 30 '$R/tools/agbcc/bin/agbcc' -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -fprologue-bugfix -o "\$3.s" "\$1"
printf '\\t.text\\n\\t.align 2, 0\\n' >> "\$3.s"
arm-none-eabi-as -mcpu=arm7tdmi -o "\$3" "\$3.s"
rc=\$?
rm -f "\$3.s"
exit \$rc
EOF
chmod +x "$D/compile.sh"
printf 'func_name = "%s"\ncompiler_type = "gcc"\n' "$F" > "$D/settings.toml"
(cd "$D" && ./compile.sh base.c -o base.o)
tools/decomp-permuter/.venv/bin/python tools/decomp-permuter/permuter.py "$D" --stop-on-zero --better-only --quiet -j "$J" > "$D/log.txt" 2>&1 &
P=$!
i=0
while [ $i -lt "$T" ] && kill -0 $P 2>/dev/null; do sleep 5; i=$((i + 5)); done
# the workers have the permute dir on their command line
pgrep -f "[p]ermuter.py $D" | xargs -r kill 2>/dev/null || true
sleep 2
pgrep -f "[p]ermuter.py $D" | xargs -r kill -9 2>/dev/null || true
# compiles that were still running (an agbcc can hang on a bad candidate)
pgrep -f "[c]ompile.sh" | while read c; do grep -qs "$D" /proc/$c/cmdline && pkill -9 -P $c; kill -9 $c 2>/dev/null; done || true
ls "$D" | grep output | sort -t- -k2 -n | head -3
