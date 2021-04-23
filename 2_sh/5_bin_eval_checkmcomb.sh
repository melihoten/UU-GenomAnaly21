#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 4:00:00
#SBATCH -J binning_evaluation_checkm_combined
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load CheckM

#run checkm
checkm lineage_wf -t 4 -x fa --reduced_tree /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined_checkm/
