#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J DNA_assembly_together
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load megahit

#while running megahit do not give outputname as something exists, let megahit creates it.
#run megahit
megahit --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -1 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz -o /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_all
