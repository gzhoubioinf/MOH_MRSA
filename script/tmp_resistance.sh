#!/bin/bash --login
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --ntasks=1
#SBATCH --mem=100G
#SBATCH --time=1-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ge.zhou@kaust.edu.sa

conda activate py2_srst2

path="/ibex/project/c2205/zhouge/MRSA2/data_new2"


foldername=filename_input
folder=${path}/${foldername}


# Create the srst2 subdirectory if it doesn't exist
mkdir -p "${folder}/srst2_AMR"

srst2 --input_pe "${folder}/${foldername}_1.fq.gz" "${folder}/${foldername}_2.fq.gz" \
      --output "${folder}/srst2_AMR/${foldername}"_AMR \
      --log \
      --gene_db data/CARD_v3.0.8_SRST2.fasta


