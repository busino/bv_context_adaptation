#!/bin/bash

#BATCH --job-name=057_aug-all-but-noise_test-unit07_trial-7_predict-unit03
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:20:00
#SBATCH --mem=500MB
#SBATCH --output=../slurm/slurm_057_aug-all-but-noise_test-unit07_trial-7_predict-unit03_%j.out

module purge

# The first argument is the kind of augmentation.
# The second argument is the name of the test unit.
# The third argument is name of trial.
# The fourth argument is the name of the prediction unit.
python ../../../src/057_predict-pcen-addntt-convnet-clips.py all-but-noise unit07 trial-7 unit03