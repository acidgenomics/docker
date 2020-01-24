#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fv /root/.{bash_logout,bash_profile,bashrc,cshrc,tcshrc}

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

configure-vm
