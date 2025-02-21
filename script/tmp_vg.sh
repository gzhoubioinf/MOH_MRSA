#!/bin/bash --login
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --ntasks=1
#SBATCH --mem=100G
#SBATCH --time=14-00:00:00
#SBATCH --mail-type=ALL

conda activate py2_srst2
path="/ibex/project/c2205/zhouge/MRSA2/data_new2"
foldername=filename_input
folder=${path}/${foldername}

#echo ${foldername}
       # Create the srst2 subdirectory if it doesn't exist
mkdir -p "${folder}/srst2_vf"

srst2 --input_pe "${folder}/${foldername}_1.fq.gz" "${folder}/${foldername}_2.fq.gz" \
      --output "${folder}/srst2_vf/${foldername}"_virulence_output_test \
      --log \
      --gene_db data/Staphylococcus_VF_clustered.fasta


