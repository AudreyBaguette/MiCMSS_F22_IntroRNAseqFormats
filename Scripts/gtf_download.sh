#!/bin/bash

# Download the data
wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/genes/hg38.knownGene.gtf.gz

# Subset and rename
zcat hg38.knownGene.gtf.gz | grep chr11 > genes_hg38_chr11.gtf
