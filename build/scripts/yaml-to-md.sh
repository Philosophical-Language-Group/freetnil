#!/usr/bin/env bash
set -e; shopt -s extglob nullglob

DATA="docs/data/"
mkdir -p "docs/md"
mkdir -p "output"

for file in "$DATA"/!(__*).yml; do
    pandoc --data-dir build --template category.md -f markdown -t markdown -s "$file" -o docs/md/$(basename -- "$file" .yml).md
done

pandoc -s -t gfm -o docs/md/categories.md docs/md/*.md

pandoc -s -o output/categories.html docs/md/categories.md
