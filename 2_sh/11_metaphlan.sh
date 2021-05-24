#!/bin/bash
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J organism_abundance
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load MetaPhlAn3

metaphlan /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz,/crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz --bowtie2out /crex/proj/g2021012/nobackup/work/melih/metaphlan/out.txt --input_type fastq --nproc 2 -o /crex/proj/g2021012/nobackup/work/melih/metaphlan/metagenome.txt
