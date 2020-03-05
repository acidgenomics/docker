#!/usr/bin/env bash
set -Eeux -o pipefail

(
    cd /usr/local/koopa || exit 1
    git pull
)

# shellcheck disable=SC1091
source /usr/local/koopa/activate

koopa update
update-r-packages
venv-create-r-reticulate

rm -fr /tmp/*
