# This shell script executes Slurm jobs for thresholding
# predictions of convolutional
# neural network with adaptive threshold on BirdVox-70k full audio
# with logmelspec input.
# Augmentation kind: all-but-noise.
# Test unit: unit05.
# Trial ID: 2.

sbatch 045_aug-all-but-noise_test-unit05_predict-unit05_trial-2.sbatch
sbatch 045_aug-all-but-noise_test-unit05_predict-unit02_trial-2.sbatch
sbatch 045_aug-all-but-noise_test-unit05_predict-unit03_trial-2.sbatch