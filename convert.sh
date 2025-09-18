#!/bin/bash
# Simple wrapper: convert input PDF path to DOCX in same directory
# Usage: ./convert.sh /data/input.pdf /data/output_dir
INPUT="$1"
OUTDIR="$2"
if [ -z "$INPUT" ] || [ -z "$OUTDIR" ]; then
  echo "Usage: convert.sh <input.pdf> <outdir>"
  exit 1
fi
mkdir -p "$OUTDIR"
soffice --headless --convert-to docx "$INPUT" --outdir "$OUTDIR"
echo "Converted $INPUT -> $OUTDIR"
