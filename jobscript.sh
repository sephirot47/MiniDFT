#!/bin/bash

#SBATCH -J miniDFT
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1
#SBATCH --time=10:00
#SBATCH --partition=jetson-tx
#SBATCH --cpu-freq=High
#SBATCH --output=miniDFT.out

# Configure environment
source /etc/profile.d/modules.sh

echo "+ Preparing environment"
module purge
module load openmpi
module load atlas
module load fftw
module load netcdf

export LD_PRELOAD=/usr/lib/libmpi_f77.so.1

#Execute application
echo ""
echo "+ Starting execution at `date -R`"
mpirun -np 4 /home/vandon/ISC17-SCC-miniDFT/src/mini_dft -in /home/vandon/ISC17-SCC-miniDFT/test/small.in -nbgrp 4 > /home/vandon/ISC17-SCC-miniDFT/test/small.out
echo "+ Execution ended at `date -R`"
