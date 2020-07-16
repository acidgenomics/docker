#!/usr/bin/env bash
set -Eeu -o pipefail

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --verbose

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

configure-vm --minimal --verbose
