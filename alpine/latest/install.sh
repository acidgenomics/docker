#!/usr/bin/env bash
set -Eeu -o pipefail

# Alpine uses ash (Almquist shell) by default, which isn't supported yet.
# koopa doesn't activate on login here either, just like Debian.

curl -sSL https://koopa.acidgenomics.com/install | bash -s -- --shared
