#!/bin/sh

# To build a single distro:
# > koopa app docker build \
# >     --local="${HOME}/.config/koopa/docker/acidgenomics/koopa/debian" \
# >     --remote='public.ecr.aws/acidgenomics/koopa:debian'

koopa app docker build-all-tags \
    --local="${HOME}/monorepo/docker/acidgenomics/koopa" \
    --remote='public.ecr.aws/acidgenomics/koopa'
