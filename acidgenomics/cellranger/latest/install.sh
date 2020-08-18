#!/usr/bin/env bash
set -Eeu -o pipefail

# shellcheck source=/dev/null
. "$(koopa header bash)"

install-bcl2fastq
install-cellranger
