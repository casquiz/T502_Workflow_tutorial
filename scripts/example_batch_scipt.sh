#!/bin/bash

#PBS -N Example_job_script_T502
#PBS -k o
#PBS -q debug
#PBS -l nodes=1:ppn=16,vmem=16gb
#PBS -l walltime=1:00:00
#PBS -m abe
#PBS -M campalex@umail.iu.edu

module load sra-toolkit
module load fastqc

WD=/N/u/campalex/Carbonate/T502_Workflow_tutorial

cd $WD

echo "Starting job"

echo "Downloading the files"

fastq-dump SRR2078285
fastq-dump SRR2078286

echo "Running fastqc on the files"

fastqc SRR2078285.fastq
fastqc SRR2078286.fastq
