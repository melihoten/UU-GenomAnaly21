#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 6:00:00
#SBATCH -J DNA_assembly_evaluation_metaquast_combined_assembly2_withoutfastqfiles
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load quast/4.5.4

#Joined pairs
metaquast.py -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_all/final.contigs.fa -o /crex/proj/g2021012/nobackup/melih/try/
