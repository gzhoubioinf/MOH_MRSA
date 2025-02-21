#!/bin/bash

#SBATCH --job-name=gwas_AST
#SBATCH --time=5-00:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=500GB
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ge.zhou@kaust.edu.sa
#conda activate scoary


source ~/miniconda3/envs/bio/bin/activate scoary
scoary -t trait_AST.csv -g snp_presence_absence.csv -s 4 --thread 32

