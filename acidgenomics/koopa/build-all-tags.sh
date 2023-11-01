#!/bin/sh

# To build a single distro:
# > koopa app docker build \
# >     --local="${HOME}/.config/koopa/docker/acidgenomics/koopa/debian" \
# >     --remote='public.ecr.aws/acidgenomics/koopa:debian'

koopa app docker build-all-tags \
    --local="${PWD:?}" \
    --remote='public.ecr.aws/acidgenomics/koopa'
koopa app docker prune-all-images
