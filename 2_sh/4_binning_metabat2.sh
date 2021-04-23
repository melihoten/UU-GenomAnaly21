#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:30:00
#SBATCH -J binning_analysis_metabat_2ndpair
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load MetaBat

#run metabat
metabat2 -t 2 -i /domus/h1/moten/2021_genanaly/proj_data/1_analyses/0_assembly/dna_assembly_2/final.contigs.fa -o /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/2ndpair/

