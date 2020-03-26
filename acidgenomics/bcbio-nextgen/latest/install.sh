#!/usr/bin/env bash
set -Eeux -o pipefail

/usr/local/koopa/bin/koopa update
/usr/local/koopa/os/linux/bin/install-bcbio-nextgen

rm -fr /tmp/*
