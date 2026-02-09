#!/bin/bash

# Loop over all paired-end fastq files
for r1 in *_1.fq.gz; do
  base=$(basename "$r1" _1.fq.gz)
  r2="${base}_2.fq.gz"

  echo "Running RGI on ${base}..."

  rgi bwt \
    -1 "$r1" \
    -2 "$r2" \
    -o "${base}_RGI" \
    --clean \
    --include_wildcard \
    -n 20
done
