#!/usr/bin/env bash
set -Eeuo pipefail

koopa app docker build-all-tags \
    --local="${HOME}/.config/koopa/docker/acidgenomics/conda" \
    --remote='public.ecr.aws/acidgenomics/conda'
