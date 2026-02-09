# PathogenPersistenceManuscript
- Analysis scripts for metagenomics/metatranscriptomics for pathogen persistence (Nunez and Watts et al., 2026) in freshwater manuscript. 

- Where specified, each file set was analysed individually rather than with loops - i.e. the code that is reported in each file is a representative for a single metagenomics/metatranscriptomics sample. The input/ouput file names can be changed depending on the sample being analysed. 

- For metatranscriptomics, start with kraken2-filter script, continue to subread-align script for each group, then finish with featureCounts script.

- Read trimming and diamond blast scripts used in this manuscript were previously published here: Lappan, R., Shelley, G., Islam, Z.F. et al. Molecular hydrogen in seawater supports growth of diverse marine bacteria. Nat Microbiol 8, 581–595 (2023). https://doi.org/10.1038/s41564-023-01322-0 
- see github: : https://github.com/GreeningLab/MarineOxidationManuscript/tree/main
