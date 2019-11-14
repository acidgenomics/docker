#!/usr/bin/env bash
set -Eeu -o pipefail

conda install \
    bamutil=1.0.14 \
    bedtools=2.27.1 \
    python=2.7.16 \
    samtools=1.9
conda install -c cyclus java-jdk=8.0.92
conda install -c anaconda git

mkdir -p /bin/AEI
git clone \
    https://github.com/shalomhillelroth/RNAEditingIndexer \
    /bin/AEI/RNAEditingIndexer

(
    cd /bin/AEI/RNAEditingIndexer || exit 1
    make
)

samtools faidx /bin/AEI/RNAEditingIndexer/Resources/Genomes/*/*.fa
