# Introduction to RNAseq file formats

## Overview
The goal of this workshop is to give an overview of the different file formats used in RNA sequencing. We will first look at raw reads, as output by the sequencers, and the related formats (FASTA and FASTQ). Then, we will look into file formats used after reads have been aligned to a reference genome (BAM and SAM). Finally, we will compare different formats for data visualization, and how those files can be transferred from one reference to another (Wig and BigWig, bed and bedGraph). 
   
## Requirements
Basic knowledge of UNIX commands is prefered. You can find a cheatsheet with UNIX commands here: https://commons.wikimedia.org/wiki/File:Unix_command_cheatsheet.pdf
The "File Commands" section will be the most useful.
   
## Software
During this workshop, we will use the following softwares:
* Samtools
* Bedtools
* LiftOver (https://genome.ucsc.edu/cgi-bin/hgLiftOver)
None of those need to be installed on you machine. LiftOver is a web tool, and the other two can be used on Mammouth. Mammouth is a super computer based in Sherbrooke, and a computation node as been kindly prepared for this workshop.

## Connecting to Mammouth
To connect to the server, you'll need to know the username and password combination attributed to you.
Once you have this, open a terminal (command prompt) and type in

`ssh username@workshop2021a.vhost37.genap.ca`

For example, if your username is `micm99`, you should type

`ssh micm99@workshop2021a.vhost37.genap.ca`

The prompt will then ask for your password. Write it in and press enter. **NOTE: The password will not be visible when you type it in.** You'll only know if you have typed/copied it right after pressing enter and either seeing an error message or being allew in. If the password is not right, you'll be able to try again.

**For Windows users:** The copy-paste keys are different than on Linux. On Linux, 'Ctrl + C' cancels the current process. Therefore, if you use 'Ctrl + C' to copy your password, it will fail and ask again. If you want to paste a copied password, you have to right click on the terminal. Again, the password will not show, so try to click only once, not twice. Similarly, to copy text in the terminal, 'Ctrl + V' won't work either. Selecting text then doing a right click will automatically copy it.

**How do you know that you're connected?** After a successful connection, you should see `[username@workshop2021a ~]$` in front of your cursor.

Once on Mammouth, you can load the modules to use samtools and bedtools by typing

`module load StdEnv/2020 samtools/1.16.1 bedtools/2.30.0`

To check that the load was successful, you can try

`samtools view --help`

This command should return details about `samtools view` and how to use it. Trying the command before loading the modules returns an error (`-bash: samtools: command not found`).

## Connecting to Mammouth for file transfer
To transfer files from your computer to the server, or from the server to the computer, you need to open a different type of connection, that is specialized for file transfer. It resembles the method to connect, with a few differences. Here is the step-by-step process:

1. Open a terminal
2. Move to the directory, on your local computer, that you would like to use to upload files from OR download files to. You can chage directory with `cd` on all OS. (NOTE: For Windows users, `ls` will not work to list the contents of the directory. You can use `dir` instead.)
3. Connect to the server, using `sftp` instead of `ssh`. Example: `sftp micm99@workshop2021a.vhost37.genap.ca`. The password is the same as before.

To copy a file from the server to the computer, use `get filename`, where filename is the name of the file you want to download. To do the opposite (upload from computer to server), use `put filename`.

* Example:

1. Connect to the server with ssh.
2. Once on the server (connection with ssh), create a text file with `echo 'Hello World' > test.txt`.
3. Open another terminal, move to the desired directory, and open the file transfer (sftp).
4. Download the file with `get test.txt`
5. The file should now be on your computer, and if you open it, it should read 'Hello World'.
   
## Data
* DNA.fasta
* 1HV4
* left_ventricle_34m_100_rep1_R1.fastq
* left_ventricle_34m_100_rep1_R2.fastq
* left_ventricle_34m_chr11.bam
* left_ventricle_34m_minus.bigWig
* left_ventricle_34m_plus.bigWig
* left_ventricle_34m_minus.wig
* left_ventricle_34m_minus.bedGraph
* genes_hg38_chr11.bed

The data we will use in this workshop comes from ENCODE and has been processed by their pipelines. All necessary files are in the Data folder, on the server. They are not included in the Data folder of the repository, because some of them were too big to be included. The details on how to download them from ENCODE is also included in the Scripts folder.

You can put the data in your space on the server with one of these 3 ways:
* The easy ways
1. Copy the files from my folder to yours `cp -R /home/aubag1/MiCMSS_F22_IntroRNAseqFormats/Data .`
OR
2. Create a symbolic link to my folder in your space. This will not copy the files, but simply make a "reference" to their location `ln -s /home/aubag1/MiCMSS_F22_IntroRNAseqFormats/Data .`
What is the difference between copying and creating a symbolic link? The `cp` command replicates the file in its entirety. This means that if 30 students copy a 1Gb file on their space, the files will take 31Gb (original + 30 copies) of space in total. Modifying your local copy will not change the original file. The `ln -s` command creates a shortcut to the path of the original file. This means that there will still be only one copy of the file in total, but it also means that changing the file through the symbolic link will change the original.

* The "hard" way, if you want a bit of a challenge.
Clone the git repository in the server. Download the data directly on the server, following the instructions in the README file of the Data folder.


## Outline
* Introduction (10 min)
    - NGS platforms
    - Single End vs Paired End sequencing
    - Stranded vs unstranded library prep
    - Adapters and PCR

* Raw sequence files: fasta and fastq (15 min)
    - Fasta vs fastq: what is the difference?
    - Decoding fastq quality scores
    - Hands on: Cutting a read at Q30 (5 min) 

* Aligning reads (25 min) 
    - How to choose the reference? 
    - Downloading a reference genome
    - SAM vs BAM format
    - CIGAR, MAPQ and Sam flags
    - Hands on: converting between formats (5 min) 

* Files for genomic regions analysis (30 min) 
    - Wig and bigWig 
    - bedGraph 
    - Bed and bigBed
    - gft
    - Formats along the genome
    - Liftover to change reference 
    - Hands on: Lifting genes with the liftover tool (5 min) 

## References
   
*Workshop created as part of the McGill Initiative in Computational Medicine*
