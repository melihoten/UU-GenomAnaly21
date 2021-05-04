#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J DNA_assembly_evaluation_metaquast_combined_assembly2_04052021
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load quast

#Joined pairs
metaquast.py -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_all//final.contigs.fa \
-o /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/evaluation_comb_2/ \
-1 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/*_1.paired.trimmed.fastq.gz \
-2 /crex/proj/g2021012/4_Thrash_2017/DNA_trimmed/*_2.paired.trimmed.fastq.gz
