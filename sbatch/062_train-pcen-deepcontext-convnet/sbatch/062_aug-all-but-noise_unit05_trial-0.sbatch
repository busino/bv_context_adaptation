#!/bin/bash

#BATCH --job-name=062_aug-all-but-noise_unit05_trial-0
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=32:00:00
#SBATCH --mem=8GB
#SBATCH --output=../slurm/slurm_062_aug-all-but-noise_unit05_trial-0_%j.out

module purge

# The first argument is the name of the recording unit.
# The second argument is the duration of background.
python ../../../src/062_train-pcen-deepcontext-convnet.py all-but-noise unit05 0