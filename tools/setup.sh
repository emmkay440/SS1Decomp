#!/bin/sh
# Fetch and build the external tools (not stored in this repo).
set -e
cd "$(dirname "$0")"

if [ ! -x agbcc/bin/agbcc ]; then
    [ -d agbcc-src ] || git clone https://github.com/pret/agbcc agbcc-src
    (cd agbcc-src && ./build.sh && ./install.sh ../..)
fi

if [ ! -x gbadisasm/gbadisasm ]; then
    [ -d gbadisasm ] || git clone https://github.com/jiangzhengwenjz/gbadisasm gbadisasm
    (cd gbadisasm && git checkout -q 940def2 && git apply ../gbadisasm.patch && make)
fi
echo "tools ready"
