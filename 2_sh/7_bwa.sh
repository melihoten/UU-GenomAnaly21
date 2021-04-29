#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J mapping_with_BWA_SAMtools_included
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

###
#run bwa twice for each 17bins (once for each reference).
#then convert the output into BAM format.
###

#load modules
module load bioinfo-tools
module load bwa
module load samtools

#BIN_1
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/1.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/1.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/1.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin1_39.bam

#BIN_2
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/2.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/2.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/2.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin2_39.bam

#BIN_3
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/3.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/3.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/3.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin3_39.bam

#BIN_5
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/5.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/5.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/5.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin5_39.bam

#BIN_6
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/6.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/6.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/6.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin6_39.bam

#BIN_7
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/7.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/7.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/7.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin7_39.bam

#BIN_9
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/9.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/9.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/9.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin9_39.bam

#BIN_11
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/11.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/11.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/11.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin11_39.bam

#BIN_12
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/12.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/12.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37_sorted.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/12.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin12_39.bam

#BIN_13
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/13.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/13.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/13.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin13_39.bam

#BIN_14
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/14.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/14.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/14.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin14_39.bam

#BIN_16
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/16.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/16.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/14.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin16_39.bam

#BIN_17
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/17.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/17.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/17.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin17_39.bam

#BIN_19
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/19.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/19.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/19.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin19_39.bam

#BIN_20
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/20.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/20.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/20.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin20_39.bam

#BIN_23
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/23.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/23.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/23.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin23_39.bam

#BIN_25
bwa index /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/25.fa

#for read1_37
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/25.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_37.bam

#for read2_39
bwa mem -t 2 /domus/h1/moten/2021_genanaly/proj_data/1_analyses/1_binning/combined/25.fa /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/proj_data/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz  > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.sam
samtools view -S -b /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.sam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.bam
samtools sort /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.bam > /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39_sorted.bam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.sam
rm /domus/h1/moten/2021_genanaly/proj_data/1_analyses/3_mapping/aln-bin25_39.bam



