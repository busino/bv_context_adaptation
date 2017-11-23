# This shell script executes Slurm jobs for training
# Justin Salamon's ICASSP 2017 convolutional neural network
# on BirdVox-70k with PCEN input instead of
# log-mel-spectrogram (logmelspec) input.
# Trial ID: 8.
# Augmentation kind: all.

sbatch 030_aug-all_unit01_trial-8.sbatch
sbatch 030_aug-all_unit02_trial-8.sbatch
sbatch 030_aug-all_unit03_trial-8.sbatch
sbatch 030_aug-all_unit05_trial-8.sbatch
sbatch 030_aug-all_unit07_trial-8.sbatch
sbatch 030_aug-all_unit10_trial-8.sbatch
