#!/usr/bin/env bash
set -Eeu -o pipefail

# Note that koopa currently doesn't activate at login for root user.
# For some reason, scripts in '/etc/profile.d/' are currently ignored for root.
#
# Check config in '/root/.bashrc'.
#
# > su -
# Note that koopa currently doesn't activate at login for root user.
# For some reason, scripts in '/etc/profile.d/' are currently ignored for root.
# Now koopa is accessible and the prompt changes.
#
# See also:
# - https://serverfault.com/questions/434321
# - http://www.linuxfromscratch.org/blfs/view/6.3/postlfs/profile.html

export DEBIAN_FRONTEND="noninteractive"

apt-get update
apt-get -y dist-upgrade
apt-get -y install \
    bc \
    curl \
    fish \
    git \
    gnupg \
    less \
    parallel \
    sudo \
    tree \
    wget \
    zsh

# Install latest version of R.
# https://cran.r-project.org/bin/linux/debian/
# Release is signed by Johannes Ranke <jranke@uni-bremen.de>.
# Refer to 'Secure apt' section for details.
apt-key adv \
    --keyserver keys.gnupg.net \
    --recv-key E19F5F87128899B192B1A2C2AD5F960A256A04AF
if ! grep -q r-project.org /etc/apt/sources.list
then
    echo 'deb https://cloud.r-project.org/bin/linux/debian buster-cran35/' >> /etc/apt/sources.list
fi
apt-get update
apt-get -y install r-base r-base-dev

rm -fr /var/lib/apt/lists/*
rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test
