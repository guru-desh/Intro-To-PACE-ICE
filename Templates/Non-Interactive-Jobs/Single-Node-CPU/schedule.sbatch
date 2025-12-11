#!/bin/bash

#SBATCH --job-name=Task
#SBATCH --nodes=1 --ntasks-per-node=24
#SBATCH --time=2:00:00
#SBATCH --output=./logs/task.out
#SBATCH --mail-type=NONE

cd $SLURM_SUBMIT_DIR

module load anaconda3
conda activate environment_name
bash task.sh 
