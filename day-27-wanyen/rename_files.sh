#!/bin/bash
i=1
for file in *.JPE *.jpg *.JPEG *.JPG; do
  [ -f "$file" ] || continue
  ext="${file##*.}"
  mv "$file" "$(printf "%03d.%s" "$i" "$ext")"
  i=$((i + 1))
done
