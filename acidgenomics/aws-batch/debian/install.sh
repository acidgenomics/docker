#!/usr/bin/env bash
set -Eeux -o pipefail

/usr/local/koopa/bin/koopa update

rm -fr /tmp/*
