#!/usr/bin/env bash
set -Eeux -o pipefail

(
    cd /usr/local/koopa || exit 1
    git pull
)

/usr/local/koopa/bin/koopa update

rm -fr /tmp/*
