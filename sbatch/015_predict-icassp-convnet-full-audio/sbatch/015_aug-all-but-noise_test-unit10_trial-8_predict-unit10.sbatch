#!/bin/bash

#BATCH --job-name=015_aug-all-but-noise_test-unit10_trial-8_predict-unit10
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH --mem=250MB
#SBATCH --output=../slurm/015_aug-all-but-noise_test-unit10_trial-8_predict-unit10_%j.out

module purge
module load cuda/8.0.44
module load cudnn/8.0v5.1

# The first argument is the kind of augmentation.
# The second argument is the name of the test unit.
# The third argument is name of trial.
# The fourth argument is the name of the prediction unit.
python ../../../src/015_predict-icassp-convnet-full-audio.py all-but-noise unit10 trial-8 unit10