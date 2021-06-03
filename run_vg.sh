#!/usr/bin/env bash


####
# Construct a graph genome using vg
####

# Step 1: create a fasta
file_name="fake_genome.fa";
touch ${file_name};
echo ">fake_genome" >> ${file_name};
echo "GCAGTAGCTAGCTAGCTAGCGCCGCGATAGCACT" >> ${file_name};

# Step 2: Create the graph
vg construct -r ${file_name} -m 20 > ${file_name}.ref.vg;

# Step 3: Visualize the graph
vg view ${file_name};
