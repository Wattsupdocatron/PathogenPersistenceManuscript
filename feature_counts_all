#!/bin/bash

##Run featureCounts on all metranscriptome mapped genomes##
# List of genome names
genomes=("E6" "E10" "E15" "E17" "Ec3" "Ec5" "Ec10" "Ec19" "K37" "K40")

# Iterate over each genome name
for genome in "${genomes[@]}"; do
    # Set corresponding .SAF and .bam file names
    saf_file="${genome}.SAF"
    bam_file="${genome}-DC1-sorted.bam" 
    output_file="${genome}-DC1.txt"

    # Check if the .SAF and .bam files exist before running featureCounts
    if [ -f "$saf_file" ] && [ -f "$bam_file" ]; then
        echo "Running featureCounts for $genome"
        featureCounts -p --countReadPairs -T 10 --verbose -F SAF -a "$saf_file" -o "$output_file" "$bam_file"
    else
        echo "Missing SAF or BAM file for $genome. Skipping."
    fi
done

echo "Complete, have a lovely day!"
