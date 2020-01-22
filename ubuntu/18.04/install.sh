#!/usr/bin/env bash
set -Eeux -o pipefail

rm -fv /root/.{bashrc,profile}

# Fix for tzdata prompting during non-interactive session.
echo "America/New_York" > /etc/timezone

rm -fr /usr/local/koopa
curl -sSL https://koopa.acidgenomics.com/install \
    | bash -s -- --shared --test

# shellcheck disable=SC1091
source /usr/local/koopa/activate

configure-vm
