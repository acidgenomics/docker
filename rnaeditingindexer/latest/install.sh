#!/usr/bin/env bash
set -Eeu -o pipefail

# Configure conda.
conda install --yes \
    bamutil=1.0.14 \
    bedtools=2.27.1 \
    python=2.7.16 \
    samtools=1.9
conda install --yes --channel=cyclus java-jdk=8.0.92
conda install --yes --channel=anaconda git

# Clone the git repo.
mkdir -pv /bin/AEI
git clone --recursive \
    https://github.com/shalomhillelroth/RNAEditingIndexer \
    /bin/AEI/RNAEditingIndexer

# Build the program.
(
    cd /bin/AEI/RNAEditingIndexer || exit 1
    make
)

# Index genome FASTA files using samtools.
find /bin/AEI/RNAEditingIndexer/Resources/Genomes \
    -type f -name "*.fa" \
    -print0 | xargs -0 -I {} \
        samtools faidx {}
