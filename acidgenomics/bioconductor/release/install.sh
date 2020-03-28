#!/usr/bin/env bash
set -Eeux -o pipefail

# shellcheck disable=SC1090
force=1 source ~/.config/koopa/activate

koopa update
update-r-packages
venv-create-r-reticulate

rm -fr /tmp/*
