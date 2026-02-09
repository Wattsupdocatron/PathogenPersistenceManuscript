#!/bin/bash

#run each of these commands separately as their own SLURM job
#repeat this code for each metatranscriptomics sample.

##filter and assemble enterobacteriaceae/enterococcaceae contigs for co-mapping in subread##

#run kraken2 on sample DC1 
kraken2 --db ./kraken2db --paired DC1_metaT_processed_1.fq.gz DC1_metaT_processed_2.fq.gz --threads 36 --use-names --report --output DC1_kraken2

#extract kraken2 enterobacteriaceae reads
python extract_kraken_reads.py -k DC1_kraken2.out -s1 DC1_metaT_processed_1.fq.gz -s2 DC1_metaT_processed_2.fq.gz -t 543 --fastq-output --include-children -r DC1_kraken2_report -o enterobacteriaceae-DC1_R1.fastq -o2 enterobacteriaceae-DC1_R2.fastq

#extract kraken2 enterococcaceae reads
python extract_kraken_reads.py -k DC1_kraken2.out -s1 DC1_metaT_processed_1.fq.gz -s2 DC1_metaT_processed_2.fq.gz -t 81852  --fastq-output --include-children -r DC1_kraken2_report -o enterococcaceae-DC1_R1.fastq -o2 enterococcaceae-DC1_R2.fastq

#assemble enterobacteriaceae reads into contigs for sample DC1
spades.py --meta -1 enterobacteriaceae-DC1_R1.fastq -2 enterobacteriaceae-DC1_R2.fastq  -o EC-DC1-assembly 

#repeat for all samples
