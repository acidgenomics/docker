#!/bin/sh

koopa app docker build-all-tags \
    --local="${HOME}/.config/koopa/docker/acidgenomics/r-base" \
    --remote='public.ecr.aws/acidgenomics/r-base'
