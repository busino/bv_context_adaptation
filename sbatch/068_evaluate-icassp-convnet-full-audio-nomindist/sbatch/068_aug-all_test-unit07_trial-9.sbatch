#!/bin/bash

#BATCH --job-name=068_aug-all_test-unit07_trial-9
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=64GB
#SBATCH --output=../slurm/slurm_068_aug-all_test-unit07_trial-9_%j.out

module purge

# The argument is the kind of data augmentation.
python ../../../src/068_evaluate-icassp-convnet-full-audio-nomindist.py all unit07 9