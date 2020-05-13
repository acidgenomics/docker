#!/usr/bin/env bash
set -Eeu -o pipefail

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

install-bcbio-nextgen --version="development"
