# graphPlay
Playing around with graphs for the DNA code club.

# Before anything, install the following:
* use the following through conda:
```
conda install -c bioconda vg
```

* install bandage for visualizing graph genomes:
[Bandage Wesbite](https://rrwick.github.io/Bandage/)

* install the AWS CLI
```
conda install -c conda-forge awscli
```

# HISAT
aws s3 cp s3://genome-idx/bt/grch38_1kgmaj.zip .

```
export PATH=hisat-genotype-top:hisat-genotype-top/hisatgenotype_scripts:$PATH;
export PYTHONPATH=hisat-genotype-top/hisatgenotype_modules:$PYTHONPATH;
```

OR

```
echo "export PATH=hisat-genotype-top:hisat-genotype-top/hisatgenotype_scripts:$PATH;" >> ~/.bashrc;
echo "export PYTHONPATH=hisat-genotype-top/hisatgenotype_modules:$PYTHONPATH;" >> ~/.bashrc;
source ~/.bashrc;
```
# download the vg git repo, for examples
```
git clone https://github.com/vgteam/vg.git
```

# Usage
* use the following command to run the bash script:

```
bash run_vg.sh
```
# Next
* Check out the following guide on using the vg tiny example
[vg tiny example](https://gtpb.github.io/CPANG18/pages/toy_examples)
