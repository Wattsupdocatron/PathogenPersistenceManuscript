#!/bin/bash
#run phyloflash on metaT or metaG dataset - repeat with each file DC1-DC3, metaG/metaT.
phyloFlash.pl -lib DC1_metaT -read1 DC1_1.fastq.gz -read2 DC1_2.fastq.gz -taxlevel 6 -readlength 150 -CPUs 5 -almosteverything -dbhome ~/user/Database/RNA_database/PhyloFlash/138
