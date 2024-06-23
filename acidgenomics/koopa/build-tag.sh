#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

main() {
    local -A dict
    dict['distro']="$(koopa_read 'Distro' '')"
    dict['local']="${HOME}/monorepo/docker/acidgenomics/koopa/${dict['distro']}"
    dict['remote']="public.ecr.aws/acidgenomics/koopa:${dict['distro']}"
    koopa_assert_is_dir "${dict['local']}"
    koopa app docker build \
        --local="${dict['local']}" \
        --remote="${dict['remote']}"
    return 0
}

main "$@"
