#!/bin/bash

#run ribodetector on metatranscriptomics reads to remove ribosomal RNA
ribodetector_cpu -t 20 -l 100 -i DC1_1.fastq.gz DC1_2.fastq.gz -e rrna --chunk_size 256 -o DC1_1.processed.fq.gz DC1_2.processed.fq.gz
