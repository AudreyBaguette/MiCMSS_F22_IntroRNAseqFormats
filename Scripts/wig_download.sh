#!/bin/bash

# Download the data
wget -O left_ventricle_34m_minus.bigWig https://www.encodeproject.org/files/ENCFF217VGN/@@download/ENCFF217VGN.bigWig
wget -O left_ventricle_34m_plus.bigWig https://www.encodeproject.org/files/ENCFF844EMU/@@download/ENCFF844EMU.bigWig

# Convert, subset and re-convert
module load mugqic/kentUtils/302.1.0

bigWigToWig left_ventricle_34m_minus.bigWig left_ventricle_34m_minus.wig
bigWigToBedGraph left_ventricle_34m_minus.bigWig left_ventricle_34m_minus.bedGraph

