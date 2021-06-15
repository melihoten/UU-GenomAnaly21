#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J htseq_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com



for i in bin_1 bin_2 bin_3 bin_5 bin_6 bin_7 bin_9 bin_11 bin_12 bin_13 bin_14 bin_16 bin_17 bin_19 bin_20 bin_23 bin_25
do
echo "##############################"
echo ${i}
echo "##############################"
echo "SRR4342137"
echo "##############################"
python3 10_htseq_expr_count.py /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/${i}/${i}.gff /domus/h1/moten/2021_genanaly/proj_data/1_analyses/5_read_counting/${i}_readcount_37.out
echo "##############################"
echo "SRR4342139"
echo "##############################"
python3 10_htseq_expr_count.py /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/${i}/${i}.gff /domus/h1/moten/2021_genanaly/proj_data/1_analyses/5_read_counting/${i}_readcount_39.out
done

