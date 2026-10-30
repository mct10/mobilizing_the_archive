#!/bin/bash
# Unzip each data/*.zip with a password into unzipped_data/{name}.jsonl
set -euo pipefail

IN_DIR=${1:-./data}
OUT_DIR=${2:-./unzipped_data}
PASSWORD=${PASSWORD:-}

if [ -z "$PASSWORD" ]; then
    echo "Set PASSWORD, e.g. PASSWORD=... bash $0" >&2
    exit 1
fi

mkdir -p "$OUT_DIR"
for f in "$IN_DIR"/*.zip; do
    unzip -q -o -P "$PASSWORD" "$f" -d "$OUT_DIR"
    echo "$f -> $OUT_DIR/$(basename "$f" .zip).jsonl"
done
