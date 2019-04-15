#!/usr/bin/env bash
set -Eeuxo pipefail

# Build docker image
#
# See also:
# - docker build --help
# - https://docs.docker.com/engine/reference/builder/#arg

package="$1"
docker build --tag="$package" --build-arg "GITHUB_PAT=$DOCKER_GITHUB_PAT" "${HOME}/git/packages/${package}"
unset -v package
