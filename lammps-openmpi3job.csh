#!/usr/bin/csh
#SBATCH --job-name=lammps-openmpi3job.csh
#SBATCH --output=lammps-openmpi3job-%j.out
#SBATCH --nodes=3                    # Run all processes on a single node	
#SBATCH --ntasks=96                  # Run a single task		
#SBATCH --cpus-per-task=1            # Number of CPU cores per task
#SBATCH --mail-user=ajay.vallabh@unh.edu
#SBATCH --mail-type=all
#SBATCH --mem-per-cpu=2000mb
#SBATCH --time=4-00:00:00

/usr/lib64/openmpi3/bin/mpirun -np 96 /usr/lib64/openmpi3/bin/lmp_openmpi3 -in Step2Attract.in
