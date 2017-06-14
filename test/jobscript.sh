#!/bin/bash

#SBATCH -J miniDFT
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=8
#SBATCH --time=4:00:00
#SBATCH --partition=merlin
#SBATCH --cpu-freq=High
#SBATCH --output=miniDFT.out

# Configure environment
source /etc/profile.d/modules.sh

echo "+ Preparing environment"
module purge
module load mpich
module load atlas
module load fftw

#Execute application
echo ""
echo "+ Starting execution at `date -R`"
(cd /home/vandon/ISC17-SCC-miniDFT/test ; export OMP_NUM_THREADS=8 ; mpirun -np 2 ../src/mini_dft -in small.in -nbgrp 2)
echo "+ Execution ended at `date -R`"
