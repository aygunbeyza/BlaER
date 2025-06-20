#!/bin/bash
#SBATCH --output=%x.%A_%a.out
#SBATCH --error=%x.%A_%a.err
#SBATCH --time=01:00:00
#SBATCH --mem=32G
#SBATCH --cpus-per-task=4
#SBATCH --job-name=nametotrack
#SBATCH --mail-user=beyza.aygun@crg.eu
#SBATCH --mail-type=FAIL

conda init
conda activate qc3
NanoPlot --ubam /users/rg/baygun/BlaER/ref \
-o /users/rg/baygun/nanoplot/result_nanoplot \
--N50 \
--threads 4
conda deactivate
