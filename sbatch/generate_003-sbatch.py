import os
import sys

sys.path.append("../src")
import localmodule


# Define constants.
units = localmodule.get_units()
augmentations = localmodule.get_augmentations()
del augmentations["original"]
script_name = "003_augment-clips.py"
script_path = os.path.join("..", "..", "..", "src", script_name)


# Loop over augmentations.
for aug_str in augmentations:
    n_instances = augmentations[aug_str]

    # Loop over instances.
    for instance_id in range(n_instances):
        instance_str = str(instance_id)

        # Loop over recording units.
        for unit_str in units:
            job_name = "_".join(["003", aug_str, instance_str, unit_str])
            file_name = job_name + ".sbatch"
            script_list = [script_path, aug_str, instance_str, unit_str]
            script_path_with_args = " ".join(script_list)
            with open(file_name, "w") as f:
                f.write("#!/bin/bash\n")
                f.write("\n")
                f.write("#BATCH --job-name=" + job_name + "\n")
                f.write("#SBATCH --nodes=1\n")
                f.write("#SBATCH --tasks-per-node=1\n")
                f.write("#SBATCH --cpus-per-task=1\n")
                f.write("#SBATCH --time=2:00:00\n")
                f.write("#SBATCH --mem=1GB\n")
                f.write("#SBATCH --output=slurm_" + job_name + "_%j.out\n")
                f.write("\n")
                f.write("module purge\n")
                f.write("module load rubberband/intel/1.8.1\n")
                f.write("\n")
                f.write("# The first argument is the name of the augmentation.\n")
                f.write("# The second argument is the instance ID of the augmentation.\n")
                f.write("# The third argument is the name of the recording unit.\n")
                f.write("python " + script_path_with_args)
