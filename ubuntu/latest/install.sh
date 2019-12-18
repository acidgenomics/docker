#!/usr/bin/env bash
set -Eeu -o pipefail

# Note that koopa currently doesn't activate at login for root user.
# For some reason, scripts in '/etc/profile.d/' are currently ignored for root.
#
# > su -
# Now koopa is accessible. However, the prompt doesn't change.

apt-get update
apt-get -y dist-upgrade
DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
        bc \
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
# Release is signed by Michael Rutter <marutter@gmail.com>.
# Refer to 'Secure apt' section for details.
apt-key adv \
    --keyserver keyserver.ubuntu.com \
    --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
if ! grep -q r-project.org /etc/apt/sources.list
then
    echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list
fi
apt-get update
DEBIAN_FRONTEND=noninteractive \
    apt-get -y install r-base r-base-dev

rm -fr /var/lib/apt/lists/*
rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
