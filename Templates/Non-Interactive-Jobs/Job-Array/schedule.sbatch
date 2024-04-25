#!/bin/bash

#SBATCH --job-name=Job-Array-Template
#SBATCH --nodes=1 --ntasks-per-node=24
#SBATCH --time=4:00:00
#SBATCH --qos=coc-ice
#SBATCH --output=logs/Task%a.out
#SBATCH --mail-type=NONE
#SBATCH --array=1-100

cd $SLURM_SUBMIT_DIR

module load anaconda3
conda activate environment_name
bash run_task.sh 