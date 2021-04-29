#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J Htseq_read_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

#set directories for easy-use in for loop (gff-bam-output directories)
gff_dir=/home/moten/2021_genanaly/proj_data/1_analyses/2_annotation
bam_dir=/home/moten/2021_genanaly/proj_data/1_analyses/3_mapping
out_dir=/home/moten/2021_genanaly/proj_data/1_analyses/5_read_counting/

#run Htseq for two reads in for loop.
for bin in bin_1 bin_2 bin_3 bin_5 bin_6 bin_7 bin_9 bin_11 bin_12 bin_13 bin_14 bin_16 bin_17 bin_19 bin_20 bin_23 bin_25
do
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_dir}/${bin}_37_sorted.bam <(sed '/##FASTA/,$d' ${gff_dir}/$bin/$bin.gff) > ${out_dir}/${bin}_readcount_37.out
htseq-count -f bam -r pos -t CDS -i ID -s no ${bam_dir}/${bin}_39_sorted.bam <(sed '/##FASTA/,$d' ${gff_dir}/$bin/$bin.gff) > ${out_dir}/${bin}_readcount_39.out
done

