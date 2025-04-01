#!/bin/bash 
#
#$ -S /bin/bash
#$ -cwd
#
#$ -pe smp 12
#$ -l a40=1
#$ -l r8=1
#$ -l s_rt=100:00:00

INPUTLIST='min.in heat1.in heat2.in md.in equil.in CDIN1_solv.prmtop CDIN1_solv.inpcrd'

SCR=$TMPDIR
ORIG=`pwd`

export OMP_NUM_THREADS=$NSLOTS
export MKL_NUM_THREADS=$NSLOTS
export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=3
module load openmpi4.1.1
module load plumed

source /usr/local/amber24/amber.sh


cp $INPUTLIST $SCR
cd $SCR

pmemd.cuda -O -i min.in -o min.out -p CDIN1_solv.prmtop -c CDIN1_solv.inpcrd -r min.rst -x min.crd -ref CDIN1_solv.inpcrd 
pmemd.cuda -O -i heat1.in -o heat1.out -p CDIN1_solv.prmtop -c min.rst -r heat1.rst -x heat1.crd -ref min.rst
pmemd.cuda -O -i heat2.in -o heat2.out -p CDIN1_solv.prmtop -c heat1.rst -r heat2.rst -x heat2.crd -ref heat1.rst
pmemd.cuda -O -i equil.in -o equil.out -p CDIN1_solv.prmtop -c heat2.rst -r equil.rst -x equil.crd -ref heat2.rst
pmemd.cuda -O -i md.in -o md.out -p CDIN1_solv.prmtop -c equil.rst -r md.rst -x md.crd -ref equil.rst


cp -R * $ORIG
