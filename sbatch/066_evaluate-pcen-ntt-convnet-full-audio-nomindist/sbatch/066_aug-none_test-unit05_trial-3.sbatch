#!/bin/bash

#BATCH --job-name=066_aug-none_test-unit05_trial-3
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=64GB
#SBATCH --output=../slurm/slurm_066_aug-none_test-unit05_trial-3_%j.out

module purge

# The argument is the kind of data augmentation.
python ../../../src/066_evaluate-pcen-ntt-convnet-full-audio-nomindist.py none unit05 3