#!/usr/bin/env bash

# See also:
# - https://github.com/baztian/docker-wine/blob/master/Dockerfile
# - https://gist.github.com/cschiewek/246a244ba23da8b9f0e7b11a68bf3285
# - https://gist.github.com/paul-krohn/e45f96181b1cf5e536325d1bdee6c949

export DEBIAN_FRONTEND=noninteractive

dpkg --add-architecture i386
apt-get update
apt-get \
    --no-install-recommends \
    --quiet \
    --yes \
    install \
        winbind \
        wine \
        wine32 \
        x11-apps \
        xauth \
        xvfb
apt-get clean

rm -fr /tmp/*
