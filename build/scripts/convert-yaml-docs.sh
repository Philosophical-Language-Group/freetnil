#!/usr/bin/env bash
#
# 1: INPUT - Directory to find yml data 
INPUT="$(ls $1[a-z]*.yml)"
# 2: OUTPUT - Directory to output documents
OUTPUT="$2"
# 3: TEMPLATE - Path to template file
TEMPLATE="$3"

for File in $INPUT
do
    fullfilename=$(basename -- "$File")
    filename="${fullfilename%.*}"
    pandoc --template "$TEMPLATE" -s -V "pagetitle:$filename" -V "title:$filename" -f markdown -o "$OUTPUT$filename.html" "$File"
    echo "Converted $fullfilename to $OUTPUT$filename.html!"
done
