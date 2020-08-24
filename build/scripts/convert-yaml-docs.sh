#!/usr/bin/env bash
set -e; shopt -s extglob nullglob

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

CONVERT_ONE="$(dirname "$0")/convert-one.sh"
INPUT="$1" OUTPUT="$2" TEMPLATE="$3"
mkdir -p "$OUTPUT"

for file in "$INPUT"/!(__*).yml; do
  "$CONVERT_ONE" "$file" "$OUTPUT/$(basename -- "$file" .yml).html" "$TEMPLATE"
  ive_managed_to_do_something=indeed
done

test "$ive_managed_to_do_something" || \
  echo "Warning: no files converted in dir $INPUT"
