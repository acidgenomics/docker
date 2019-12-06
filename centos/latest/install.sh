#!/usr/bin/env bash
set -Eeu -o pipefail

# missing: R, parallel, fish
# How to install R?

# Need to install PowerTools to fix this.
# Error:
#  Problem: package R-3.6.1-1.el8.x86_64 requires R-devel = 3.6.1-1.el8, but none of the providers can be installed
#    - package R-devel-3.6.1-1.el8.x86_64 requires R-core-devel = 3.6.1-1.el8, but none of the providers can be installed
#      - conflicting requests
#        - nothing provides texinfo-tex needed by R-core-devel-3.6.1-1.el8.x86_64

yum -y update
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
# yum config-manager --set-enabled PowerTools
yum -y install \
    curl \
    git \
    hostname \
    man \
    sudo \
    tree \
    util-linux-user \
    wget \
    which \
    zsh
yum -y install R

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
