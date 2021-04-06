#!/bin/bash
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:45:00
#SBATCH -J trim_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load trimmomatic

#run trimmomatic on untrimmed RNA
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 -trimlog /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/trimlog_SRR4342137 /domus/h1/moten/2021_genanaly/0_data/RNA_untrimmed/SRR4342137.1.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_untrimmed/SRR4342137.2.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342137_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342137_1_unpaired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342137_2_paired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342137_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 -trimlog /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/trimlog_SRR4342139 /domus/h1/moten/2021_genanaly/0_data/RNA_untrimmed/SRR4342139.1.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_untrimmed/SRR4342139.2.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342139_1_paired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342139_1_unpaired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342139_2_paired.fastq.gz /domus/h1/moten/2021_genanaly/0_data/RNA_trimmed/SRR4342139_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

