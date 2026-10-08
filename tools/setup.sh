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
# decomp-permuter, used by tools/autodecomp/autodecomp.py --permute
if [ ! -x decomp-permuter/.venv/bin/python ]; then
    [ -d decomp-permuter ] || git clone https://github.com/simonlindholm/decomp-permuter decomp-permuter
    (cd decomp-permuter && python3 -m venv .venv && .venv/bin/pip install -q toml pycparser)
fi
# m2c, for the draft in tools/autodecomp prompts (--target gba)
if [ ! -x m2c/.venv/bin/python ]; then
    [ -d m2c ] || git clone https://github.com/matt-kempster/m2c m2c
    (cd m2c && python3 -m venv .venv && .venv/bin/pip install -q pycparser)
fi
echo "tools ready"
