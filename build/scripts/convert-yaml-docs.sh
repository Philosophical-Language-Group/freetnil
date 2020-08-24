#!/usr/bin/env bash
set -e; shopt -s extglob

if [ $# -ne 3 ]; then
  tee >&2 <<BAD
I need more or fewer arguments (3, to be exact):
${0} [input] [output] [template]
where:
  input = directory from which to draw .yml files
  output = directory to place the output files in (genius)
  template = template file (.html)
BAD
  exit 1
fi

INPUT="$1" OUTPUT="$2" TEMPLATE="$3"
mkdir -p "$OUTPUT"

for File in "$INPUT"/!(__*).yml; do
  filename="$(basename -s .yml -- "$File")"
  pandoc --template "$TEMPLATE" -s -V "pagetitle:$filename" -V "title:$filename" -f markdown -o "$OUTPUT/$filename.html" "$File"
  echo "Converted $filename.yml to $OUTPUT/$filename.html!"
done
