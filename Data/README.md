# Introduction to RNAseq file formats - Data


## FASTA files
* DNA.fasta
* 1HV4
A nucleotide FASTA file of *HBG2* ad *HBG1* was created from the UCSC GenomeBrowser. (The genes positions were searched in the search bar, then the sequences were obtained with View -> DNA).

A protein FASTA file of the human hemoglobin was obtained from the Protein Data Bank (https://www.rcsb.org/structure/1HV4).

`wget https://www.rcsb.org/fasta/entry/1HV4`

## FASTQ files
* left_ventricle_34m_100_rep1_R1.fastq
* left_ventricle_34m_100_rep1_R2.fastq
The FASTQ files come from two different studies, on ENCODE. The first one is RNA-seq data from a human heart left ventricle (male, 34 years https://www.encodeproject.org/experiments/ENCSR769LNJ/) and the second is RNA-seq data from a human brain (female, 66 years https://www.encodeproject.org/experiments/ENCSR274JRR/).

The paired files for the first two technical replicates of each sample were downloaded, subsetted and renamed. The commands used to download and transform the files are included in `Scripts/fastq_download.sh`.

## BAM file
* left_ventricle_34m_chr11.bam
The BAM file is the aligned file containing all reads of a human heart left ventricle (male, 34 years https://www.encodeproject.org/experiments/ENCSR769LNJ/). It was downloaded, subsetted to contain only one chromosome (chr11) and renamed.

The commands used to download and transform the files are included in `Scripts/bam_download.sh`.

## bigWig, wig and bedGraph files 
* left_ventricle_34m_minus.bigWig
* left_ventricle_34m_plus.bigWig
* left_ventricle_34m_minus.wig
* left_ventricle_34m_minus.bedGraph
The bigWig files contain the reads aligned to the minus or plus strands, from the same human left ventricle as above. The minus strand bigWig was then converted to a wig file and a bedGraph file.

The commands used to download and transform the files are included in `Scripts/wig_download.sh`.

## bed adn gtf files
* genes_hg38_chr11.bed
* genes_hg38_chr11.gtf
The bed file contains the gene annotation of chromosome 11, for the hg38 alignment.

The commands used to download and subset the files are included in `Scripts/bed_download.sh` and `Scripts/gtf_download.sh`.
