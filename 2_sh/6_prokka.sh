#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J annotation_prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load prokka

#run prokka

prokka --kingdom Archaea --prefix bin_1 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_1/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/1.fa
prokka --prefix bin_2 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_2/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/2.fa
prokka --prefix bin_3 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_3/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/3.fa
#prokka --kingdom Archaea --prefix bin_4 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_4/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/4.fa
prokka --prefix bin_5 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_5/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/5.fa
prokka --prefix bin_6 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_6/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/6.fa
prokka --prefix bin_7 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_7/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/7.fa
#prokka --prefix bin_8 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_8/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/8.fa
prokka --prefix bin_9 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_9/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/9.fa
#prokka --prefix bin_10 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_10/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/10.fa
prokka --prefix bin_11 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_11/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/11.fa
prokka --prefix bin_12 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_12/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/12.fa
prokka --prefix bin_13 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_13/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/13.fa
prokka --prefix bin_14 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_14/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/14.fa
#prokka --kingdom Archaea --prefix bin_15 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_15/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/15.fa
prokka --prefix bin_16 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_16/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/16.fa
prokka --prefix bin_17 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_17/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/17.fa
#prokka --prefix bin_18 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_18/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/18.fa
prokka --prefix bin_19 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_19/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/19.fa
prokka --prefix bin_20 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_20/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/20.fa
prokka --kingdom Archaea --prefix bin_21 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_21/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/21.fa
#prokka --prefix bin_22 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_22/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/22.fa
prokka --prefix bin_23 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_23/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/23.fa
#prokka --prefix bin_24 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_24/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/24.fa
prokka --prefix bin_25 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_25/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/25.fa
#prokka --prefix bin_26 --outdir /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/bin_26/ /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/26.fa 

###
# 8 bins are removed with bin evaluation. The bins number 26, 8, 10, 15, 18, 4, and 22 have contamination more than 10%.
# In the original paper, they removed bins with more than 10% contamination.
# The bin_24 is removed because it has 3.57% completeness, while in the original paper the bin used with the lowest completeness had 16.6% completeness.
###
