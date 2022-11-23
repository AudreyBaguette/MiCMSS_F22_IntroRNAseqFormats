# Introduction to RNAseq file formats - Data


## FASTA files
* DNA.fasta
* 1HV4
A nucleotide FASTA file of *HBG2* ad *HBG1* was created from the UCSC GenomeBrowser.

A protein FASTA file of the human hemoglobin was obtained from the Protein Data Bank (https://www.rcsb.org/structure/1HV4).

`wget https://www.rcsb.org/fasta/entry/1HV4`

## FASTQ files
* left_ventricle_34m_100_rep1_R1.fastq
* left_ventricle_34m_100_rep1_R2.fastq
* brain_66f_100_rep1_R1.fastq
* brain_66f_100_rep1_R2.fastq
The FASTQ files come from two different studies, on ENCODE. The first one is RNA-seq data from a human heart left ventricle (male, 34 years https://www.encodeproject.org/experiments/ENCSR769LNJ/) and the second is RNA-seq data from a human brain (female, 66 years https://www.encodeproject.org/experiments/ENCSR274JRR/).

The paired files for the first two technical replicates of each sample were downloaded, subsetted and renamed. The commands used to download and transform the files are included in `fastq_download.sh`.

## BAM file
* left_ventricle_34m_chr11.bam
The BAM file is the aligned file containing all reads of a human heart left ventricle (male, 34 years https://www.encodeproject.org/experiments/ENCSR769LNJ/). It was downloaded, subsetted to contain only one chromosome (chr11) and renamed.

The commands used to download and transform the files are included in `bam_download.sh`.

## bigWig file
*
The bigWig file contains the reads aligned to the minus and plus strands, from the same human left ventricle as above.
https://www.encodeproject.org/files/ENCFF217VGN/@@download/ENCFF217VGN.bigWig
https://www.encodeproject.org/files/ENCFF844EMU/@@download/ENCFF844EMU.bigWig
