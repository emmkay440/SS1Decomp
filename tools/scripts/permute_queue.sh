#!/bin/sh
# usage: tools/scripts/permute_queue.sh [SECONDS_EACH [JOBS [ROUNDS]]]
# (run from the repo root; defaults: 3600 s per function, 8 jobs, 1 round)
#
# Runs decomp-permuter on each function of config/permute_queue.txt in turn.
# A previous run's results are moved to tmp/permute_old/ first, never
# deleted. After each function, tmp/permute/queue.log gets the base score,
# the best output and both rebuilt with dcheck.sh (raw diff lines): the
# permuter score isn't always the real result.
#
# To stop after the current function: touch tmp/permute/STOP
# Long runs: nohup setsid tools/scripts/permute_queue.sh 3600 8 > /dev/null 2>&1 &
# Several queues at once: give each its own list with PERMUTE_QUEUE=file
# (tools/scripts/permute_split.sh does this); log lines carry the list name.
set -u
T=${1:-3600}; J=${2:-8}; ROUNDS=${3:-1}
Q=${PERMUTE_QUEUE:-config/permute_queue.txt}
LOG=tmp/permute/queue.log
mkdir -p tmp/permute tmp/permute_old
rm -f tmp/permute/STOP
TAG=$(basename "$Q" .txt)
CUR=tmp/permute/queue.cur.$TAG
log() { echo "$(date '+%F %T') [$TAG] $*" >> "$LOG"; }

lines() { tools/scripts/dcheck.sh "$1" "$2" "$3" 2>/dev/null | sed -n 's/.*draft lines, \([0-9]*\) diff lines/\1/p'; }

log "queue start: $T s each, $J jobs, $ROUNDS round(s)"
r=0
while [ "$r" -lt "$ROUNDS" ]; do
    r=$((r + 1))
    grep -v '^[[:space:]]*#' "$Q" | grep -v '^[[:space:]]*$' > "$CUR"
    while read -r F M C rest; do
        [ -e tmp/permute/STOP ] && { log "STOP found, ending"; exit 0; }
        if [ ! -f "$C" ]; then log "$F: draft $C missing, skipped"; continue; fi
        D=tmp/permute/$F
        if ls "$D" 2>/dev/null | grep -q '^output-'; then
            mv "$D" "tmp/permute_old/$F-$(date +%Y%m%d-%H%M%S)"
        fi
        log "$F: start (round $r)"
        tools/scripts/perm.sh "$F" "$M" "$C" "$T" "$J" > /dev/null 2>&1 < /dev/null
        base=$(sed -n 's/.*base score = \([0-9]*\).*/\1/p' "$D/log.txt" 2>/dev/null | head -1)
        best=$(ls "$D" 2>/dev/null | grep '^output-' | sort -t- -k2 -n | head -1)
        if [ -n "$best" ]; then
            log "$F: base score ${base:-?} ($(lines "$F" "$M" "$C") lines), best $best ($(lines "$F" "$M" "$D/$best/source.c") lines)"
        else
            log "$F: base score ${base:-?}, nothing better"
        fi
    done < "$CUR"
done
log "queue done"
