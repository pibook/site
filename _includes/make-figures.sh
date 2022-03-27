#!/bin/sh

for filename in extras/cs-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure-id.lua --to markdown | pandoc --filter pandoc-fignos --to markdown | pandoc --lua-filter mm-figure.lua --to markdown > ./"$(basename "$filename")"
done

for filename in extras/bio-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure-id.lua --to markdown | pandoc --filter pandoc-fignos --to markdown | pandoc --lua-filter mm-figure.lua --to markdown > ./"$(basename "$filename")"
done

for filename in text/ch0*.txt; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=epigraph.lua --to markdown | pandoc --lua-filter=remove-include.lua --to markdown | pandoc --lua-filter=figure-id.lua --to markdown | pandoc --filter pandoc-fignos --to markdown | pandoc --lua-filter mm-figure.lua --to markdown | tail -n +2 > ./"$(basename "$filename" .txt).md"
done

