#!/bin/sh

koopa app docker build-all-tags \
    --local="${HOME}/.config/koopa/docker/acidgenomics/rnaeditingindexer" \
    --remote='public.ecr.aws/acidgenomics/rnaeditingindexer'
