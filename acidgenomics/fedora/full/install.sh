#!/usr/bin/env bash
set -Eeu -o pipefail

curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --non-interactive --test

# Switch to develop branch.
(
    cd ~/.config/koopa/home || exit 1
    git fetch --all
    git checkout -b develop origin/develop
    git pull
)

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

configure-vm
# > koopa test
