#!/usr/bin/env bash
set -e

if [ $# -ne 3 ]; then
  tee >&2 <<BAD
I need more or fewer arguments (3, to be exact):
${0} [input.yml] [output.html] [template.html]
BAD
  exit 1
fi

INPUT="$1" OUTPUT="$2" TEMPLATE="$3"

filename="$(basename -- "$INPUT" .yml)"
pandoc --template "$TEMPLATE" -s -V "pagetitle:$filename" -V "title:$filename" -f markdown -o "$OUTPUT" "$INPUT"
echo "Converted $INPUT to $OUTPUT!"
