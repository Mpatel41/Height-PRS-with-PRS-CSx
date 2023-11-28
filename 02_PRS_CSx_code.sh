#!/bin/bash

mydir=/home/mansi/PRS_CSX/converted_a1_a2
#Standing height sample sizes https://docs.google.com/spreadsheets/d/1AeeADtT0U1AukliiNyiVzVRdLYPkTbruQSk38DeutU8/edit#gid=903887429
#AFR=6556, AMR=972, CSA=8657, EAS=2697, EUR=419596

pop1=AFR #population
n1=6556
pop2=EUR
n2=419596
#pop3=sas
#n3=8657
#pop4=eas
#n4=2397
#pop5=amr
#n5= 972
phi=1e-2

N_THREADS=5 #adjust if server is busy (check with htop)
export MKL_NUM_THREADS=$N_THREADS
export NUMEXPR_NUM_THREADS=$N_THREADS
export OMP_NUM_THREADS=$N_THREADS


python /home/mansi/PRS_CSX/PRScsx.py \
--ref_dir=/home/wheelerlab3/Data/PRS_LD_refs/ \
--bim_prefix=/home/wheelerlab3/2023-09-08_PRSCSx/PRSCSx_testing/METS756_merged_pre-imp_rsid_chr1-22 \
--sst_file=${mydir}/samp_${pop1^^}_height_gwas.txt,${mydir}/samp_${pop2^^}_height_gwas.txt \
--n_gwas=$n1,$n2 \
--pop=${pop1^^},${pop2^^} \
--phi=${phi} \
--out_dir=${mydir}/output_2/ \
--out_name=Standing_height \
--chrom=1,8,9,16,17 \
--seed=60605

#to run in the bkgd, enter this on the command line:

# nohup time ./08_run_prscsx.sh > prscsx.out.a &


#--chrom=1,8,9,16,17
#--chrom=2,7,10,15,18
#--chrom=3,6,11,14,19,22
#--chrom=4,5,12,13,20,21

#tab seperated txt files 
#filter out the ones that do not have standard error and beta 
#Do the first two populations 
#Compare the 2 populations with the 5 populations for all chromosomes
#all of us test and validation
