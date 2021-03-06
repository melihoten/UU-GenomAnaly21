#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J DNA_assembly_evaluation_metaquast
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load quast

#1st pair
metaquast.py -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_1/final.contigs.fa \
-o /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/evaluation1/  \
-1 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz \
-2 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz

#2nd pair
metaquast.py -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_2/final.contigs.fa \
-o /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/evaluation2/  \
-1 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz
