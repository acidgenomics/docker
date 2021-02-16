#!/usr/bin/env bash
set -Eeu -o pipefail

# shellcheck source=/dev/null
. "$(koopa header bash)"

koopa install bcl2fastq
koopa install cellranger
