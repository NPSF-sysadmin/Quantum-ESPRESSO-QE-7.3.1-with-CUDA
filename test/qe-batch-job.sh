#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks-per-node=16
#SBATCH --gres=gpu:A100-SXM4:1
#SBATCH --time=00:08:00
#SBATCH --partition=testp
#SBATCH --job-name=qe_test
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

echo "Starting at `date`"
echo "Running on hosts: $SLURM_NODELIST"
echo "Running on $SLURM_NNODES nodes."
echo "Running $SLURM_NTASKS tasks."
echo "Job submission directory is :$SLURM_SUBMIT_DIR"

cd $SLURM_SUBMIT_DIR

# Dynamically setting the QE bin directory path
BIN_DIR=$(pwd)/../qe-7.3.1-installation/bin

# Load the HPC SDK environment
source /opt/hpc-sdk-23.9/env.sh


# Running program
mpirun -np 16 -mca pml ucx -x UCX_NET_DEVICES -x LD_LIBRARY_PATH $BIN_DIR/pw.x < diamond.scf.in > output.file
