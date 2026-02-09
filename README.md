# PathogenPersistenceManuscript
- Analysis scripts for metagenomics/metatranscriptomics for pathogen persistence in freshwater manuscript (Nunez and Watts et al., 2026, BioRxiv). 

- Where specified, each file set was analysed individually rather than with loops - the code that is reported in each script is a representative for a single metagenomics/metatranscriptomics sample. The input/ouput file names can be changed depending on the sample being analysed. 

- For metatranscriptomics/metagenomics isolate genome mapping: process reads with bbduck as per Lappan et al., 2023 + ribodetector script (metaT samples), progress to kraken2-filter script, then use subread-align script for each group, then finish with featureCounts script to generate feature counts. Hits can be annotated using eggnogmapper (http://eggnog-mapper.embl.de or https://github.com/eggnogdb/eggnog-mapper), then COG group counts and TPM can be calculated and summed using Microsoft Excel.

- bbduk read trimming and diamond blastx scripts used in this manuscript were previously published here: Lappan, R., Shelley, G., Islam, Z.F. et al. Molecular hydrogen in seawater supports growth of diverse marine bacteria. Nat Microbiol 8, 581–595 (2023). https://doi.org/10.1038/s41564-023-01322-0 ... see github: : https://github.com/GreeningLab/MarineOxidationManuscript/tree/main
