#!/usr/bin/env bash

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --no-dotfiles --non-interactive --test
