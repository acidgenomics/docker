#!/usr/bin/env bash
set -Eeu -o pipefail

apt-get update
apt-get -y dist-upgrade
apt-get -y install \
    curl \
    fish \
    git \
    gnupg \
    parallel \
    sudo \
    tree \
    wget \
    zsh

# Install latest version of R.
# https://cran.r-project.org/bin/linux/ubuntu/README.html
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
if ! grep -q 'r-project.org' /etc/apt/sources.list
then
    echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list
fi
apt-get update
apt-get -y install r-base r-base-dev

rm -fr /var/lib/apt/lists/*
rm -fr /usr/local/koopa

curl -sSL "https://koopa.acidgenomics.com/install" | bash -s -- --shared
