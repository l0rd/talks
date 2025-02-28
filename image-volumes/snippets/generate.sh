#! /bin/env bash

# iterate over all the files in the current directory
for file in *.sh; do
  # extract the filename without the extension
  filename=$(basename -- "$file" .sh)
  # generate the SVG diagram
  freeze "${file}" -c full -o "${filename}".svg
done
