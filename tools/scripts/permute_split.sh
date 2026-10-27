#!/bin/sh
# usage: tools/scripts/permute_split.sh [SECONDS_EACH [JOBS_A [JOBS_B]]]
# Runs config/permute_queue.txt as two permute_queue.sh runs side by side:
# the entries are dealt alternately into tmp/permute/queue_a.txt and
# queue_b.txt. Defaults: 3600 s, 7 + 6 jobs (about 85% of 16 cores).
# Stop both after their current function: touch tmp/permute/STOP
set -u
T=${1:-3600}; JA=${2:-7}; JB=${3:-6}
mkdir -p tmp/permute
grep -v '^[[:space:]]*#' config/permute_queue.txt | grep -v '^[[:space:]]*$' > tmp/permute/queue_all.txt
awk 'NR % 2 == 1' tmp/permute/queue_all.txt > tmp/permute/queue_a.txt
awk 'NR % 2 == 0' tmp/permute/queue_all.txt > tmp/permute/queue_b.txt
rm -f tmp/permute/STOP
PERMUTE_QUEUE=tmp/permute/queue_a.txt nohup setsid tools/scripts/permute_queue.sh "$T" "$JA" > /dev/null 2>&1 &
sleep 1
PERMUTE_QUEUE=tmp/permute/queue_b.txt nohup setsid tools/scripts/permute_queue.sh "$T" "$JB" > /dev/null 2>&1 &
echo "started: $(wc -l < tmp/permute/queue_a.txt) funcs x $JA jobs, $(wc -l < tmp/permute/queue_b.txt) funcs x $JB jobs"
