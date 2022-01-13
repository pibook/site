#!/bin/bash

for filename in extras/cs-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure-id.lua --to markdown | pandoc --filter pandoc-fignos --to html > ./"$(basename "$filename")"
done

for filename in extras/bio-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure-id.lua --to markdown | pandoc --filter pandoc-fignos --to html > ./"$(basename "$filename")"
done
