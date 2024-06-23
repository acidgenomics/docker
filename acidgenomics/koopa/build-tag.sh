#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(koopa header bash)"

main() {
    local distro
    koopa_assert_has_args "$#"
    for distro in "$@"
    do
        local -A dict
        dict['distro']="$distro"
        dict['local']="${HOME}/monorepo/docker/acidgenomics/\
koopa/${dict['distro']}"
        dict['remote']="public.ecr.aws/acidgenomics/koopa:${dict['distro']}"
        koopa_assert_is_dir "${dict['local']}"
        koopa app docker build \
            --local="${dict['local']}" \
            --remote="${dict['remote']}"
    done
    return 0
}

main "$@"
