#!/usr/bin/env bash


####
# Construct a graph genome using vg
# using: https://gtpb.github.io/CPANG18/pages/toy_examples
####

# use the tiny example
if [[ ! -d vg/ ]]; then
  git clone https://github.com/vgteam/vg.git;
  mkdir exercise1;
  cd exercise1;
  ln -s ../vg/test/tiny;
fi

# construct a graph
vg construct -r tiny/tiny.fa -m 32 >tiny.ref.vg
# view the graph
vg view -d tiny.ref.vg | dot -Tpdf -o tiny.ref.pdf
# construct  a graph with variants
vg construct -r tiny/tiny.fa -v tiny/tiny.vcf.gz -m 32 >tiny.vg
# view the graph
vg view -dp tiny.ref.vg | dot -Tpdf -o tiny1.pdf;
vg view -dpS tiny.ref.vg | dot -Tpdf -o tiny2.pdf;
vg view -dpS tiny.ref.vg | neato -Tpdf -o tiny3.pdf;
