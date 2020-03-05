#!/usr/bin/env bash
set -Eeux -o pipefail

# shellcheck disable=SC1091
source /usr/local/koopa/activate

koopa update
update-r-packages
venv-create-r-reticulate

rm -fr /tmp/*
