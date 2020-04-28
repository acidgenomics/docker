#!/usr/bin/env bash
set -Eeux -o pipefail

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test
