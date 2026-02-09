#!/bin/bash

# List of Enterobacteriaceae genomes
genomes=("Ec3" "Ec5" "Ec10" "Ec19" "K37" "K40")

# Iterate over each genome
for genome in "${genomes[@]}"; do
    echo "Processing genome: $genome"

    # Build subread index
    subread-buildindex -o "${genome}-index" "${genome}_assembly.fasta" EC-DC1-contigs.fasta
    echo "Indexing complete for $genome"

    # Align using subread-align
    subread-align -t 1 -T 10 -d 50 -D 600 --multiMapping -B 1 -i "${genome}-index" -r "DC1_processed_R1.fq.gz" -R "DC1_processed_R2.fq.gz" -o "${genome}-DC1.bam"
    echo "Alignment complete for $genome"

    # Sort BAM file
    samtools sort "${genome}-DC1.bam" -o "${genome}-DC1-sorted.bam"
    echo "Sorting complete for $genome"

    # Index BAM file
    samtools index "${genome}-DC1-sorted.bam"
    echo "Indexing complete for $genome"
done

echo "All genomes processed. Have a great day!"
