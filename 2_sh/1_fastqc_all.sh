#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:45:00
#SBATCH -J FastQC_RNA_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load FastQC

#run fastqc on tr_DNA + tr_RNA + untr_RNA
fastqc -o /domus/h1/moten/2021_genanaly/project2021/0_data/DNA_trimmed/ /domus/h1/moten/2021_genanaly/project2021/0_data/DNA_trimmed/*.fastq.gz
fastqc -o /domus/h1/moten/2021_genanaly/project2021/0_data/RNA_trimmed/ /domus/h1/moten/2021_genanaly/project2021/0_data/RNA_trimmed/*.fastq.gz
fastqc -o /domus/h1/moten/2021_genanaly/project2021/0_data/RNA_untrimmed/ /domus/h1/moten/2021_genanaly/project2021/0_data/RNA_untrimmed/*.fastq.gz
