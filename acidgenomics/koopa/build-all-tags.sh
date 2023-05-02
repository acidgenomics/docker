#!/bin/sh

koopa app docker build-all-tags \
    --local="${HOME}/.config/koopa/docker/acidgenomics/koopa" \
    --remote="public.ecr.aws/acidgenomics/koopa"
