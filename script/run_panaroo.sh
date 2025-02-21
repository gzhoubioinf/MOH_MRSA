#!/bin/bash --login
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --ntasks=1
#SBATCH --mem=50G
#SBATCH --time=1-00:00:00
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=ge.zhou@kaust.edu.sa


conda activate panaroo

panaroo -i /ibex/project/c2205/zhouge/MRSA2/gwas_genes/gff_file/*.gff -o ./  --clean-mode strict


