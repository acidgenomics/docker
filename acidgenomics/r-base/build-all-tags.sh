#!/usr/bin/env bash
set -Eeuo pipefail

koopa app docker build-all-tags \
    --local="${PWD:?}" \
    --remote='public.ecr.aws/acidgenomics/r-base'
