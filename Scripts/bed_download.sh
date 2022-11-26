#!/bin/bash

# Download the data
wget https://hgdownload.soe.ucsc.edu/gbdb/hg38/knownGene.bb

# Subset and rename
module load mugqic/kentUtils/302.1.0
bigBedToBed -chrom=chr11 knownGene.bb genes_hg38_chr11.bed
