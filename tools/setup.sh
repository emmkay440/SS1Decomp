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
echo "tools ready"
