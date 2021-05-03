#!/bin/bash -l
#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J PhyloPhlan_phylogenetic_placement
#SBATCH --mail-type=ALL
#SBATCH --mail-user melihoten@gmail.com

#load modules
module load bioinfo-tools
module load phylophlan/0.99
module load python/2.7.15
module load FastTree/2.1.10
module load muscle/3.8.1551
module load usearch/5.2.32

#phylophlan output directory
outdir=/domus/h1/moten/2021_genanaly/proj_data/1_analyses/4_phylogeny/

#set subdirectories that phylophlan needs
mkdir -p $outdir/input/metagenome   #project_name
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns

# soft linking phylophlan
ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/ppa.aln.tar.bz2 $outdir/data/ppaalns/
ln -sf /sw/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
#ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcuration

#input faa files for each bin in the study
for bin in bin_1 bin_2 bin_3 bin_5 bin_6 bin_7 bin_9 bin_11 bin_12 bin_13 bin_14 bin_16 bin_17 bin_19 bin_20 bin_23 bin_25
do
ln -sf /domus/h1/moten/2021_genanaly/proj_data/1_analyses/2_annotation/$bin/$bin.faa $outdir/input/metagenome
done

#run phylophlan
cd $outdir
phylophlan.py -i metagenome -t --nproc 2
