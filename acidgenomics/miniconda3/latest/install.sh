#!/usr/bin/env bash
set -Eeux -o pipefail

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

update-conda
install-aws-cli
install-azure-cli
install-google-cloud-sdk
