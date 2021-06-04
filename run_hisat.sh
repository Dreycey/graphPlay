#!/usr/bin/env bash


####
# Use a graph genome in HISAT2
####


# download HISAT2
if [[ ! -d "hisat2 hisat-genotype-top/" ]]; then
  git clone https://github.com/infphilo/hisat2 hisat-genotype-top;
  cd hisat-genotype-top;
  git checkout hisat2_v2.2.0_beta;
  make hisat2-align-s hisat2-build-s hisat2-inspect-s;
fi

# Download Reads
if [[ ! -d "simulation/" ]]; then
  cd evaluation;
  wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/data/hisat2_20181025.tar.gz;
  tar xvzf hisat2_20181025.tar.gz;
  mkdir aligners aligners/bin; cd aligners/bin; ln -s ../../../hisat2* .; cd ../..;
  mv hisat2/* .;
  cd simulation; ./init.py; cd ../real; ./init.py; cd ..;
fi

# Test 1 - 10 million simulated read pairs with SNPs and without sequencing errors
echo "Running the";
cd simulation/10M_DNA_mismatch_snp_reads_genome;
./calculate_read_cost.py --aligner-list hisat2 --paired-end --fresh;
