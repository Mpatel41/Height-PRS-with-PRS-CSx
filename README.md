# Height-PRS-with-PRS-CSx
Creating PRS scores for height using PRS-CSx

Steps to using PRS-CSx 
1. Download Pan-UKBB summary statistics
   a. This can be done by using the Pan-UKBB website for any phenotype - https://pan.ukbb.broadinstitute.org
   
2. Download LD panels using - https://github.com/getian107/PRScsx/tree/master

3. Reformat the Pan-UKBB summary statistics using 01_reformat code
   a. This will add in the Rsids
   b. It will reformat the correct effect and alternative allele columns
   c. It will omit the null values

4. Run PRS-CSx using the mp_08_PRSCSx.py code
   a. All the files required to run it are in the files and there a test EAS and EUR_sumstats.txt

Major Resource - https://github.com/getian107/PRScsx/tree/master


