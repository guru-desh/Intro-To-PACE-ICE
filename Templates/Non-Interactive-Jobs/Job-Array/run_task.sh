#!/bin/sh
cd /CODE-DIRECTORY || exit
python3 task.py \
--jobArrayNum "${SLURM_ARRAY_TASK_ID}"