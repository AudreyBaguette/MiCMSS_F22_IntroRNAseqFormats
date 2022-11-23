#!/bin/bash

# Download the data
`wget https://www.encodeproject.org/files/ENCFF015GRH/@@download/ENCFF015GRH.bam`

# Subset and rename
module load StdEnv/2020 samtools/1.16.1
samtools index ENCFF015GRH.bam
samtools view --bam -o left_ventricle_34m_chr11.bam ENCFF015GRH.bam chr11