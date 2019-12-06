#!/usr/bin/env bash
set -Eeu -o pipefail

yum -y update
yum -y install \
    curl \
    fish \
    git \
    hostname \
    man \
    parallel \
    sudo \
    tree \
    util-linux-user \
    wget \
    which \
    zsh
# Need to enable EPEL release before we can install R here.
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install R

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
