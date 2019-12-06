#!/bin/sh

apk update
apk upgrade
apk add R bash curl fish git sudo zsh

rm -fr /usr/local/koopa

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
