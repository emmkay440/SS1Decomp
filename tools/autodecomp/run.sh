#!/bin/sh
# Start the autodecomp loop in the background (Ollama server too, if needed).
# Stop it with:  touch tools/autodecomp/STOP   (it finishes the current function)
cd "$(dirname "$0")/../.."
mkdir -p tools/autodecomp/logs
rm -f tools/autodecomp/STOP
if ! curl -s http://127.0.0.1:11434/api/tags >/dev/null; then
    nohup ollama serve > tools/autodecomp/logs/ollama.log 2>&1 &
    sleep 5
fi
nohup python3 tools/autodecomp/autodecomp.py "$@" >> tools/autodecomp/logs/run.log 2>&1 &
echo "autodecomp running (pid $!). Progress: tail -f tools/autodecomp/logs/run.log"
