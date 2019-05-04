#!/usr/bin/env bash
set -Eeuxo pipefail

# Build and push a docker image
#
# See also:
# - docker build --help
# - https://docs.docker.com/engine/reference/builder/#arg
#
# Use `--no-cache` flag to disable build cache.

repo="$1"
version="$2"

today=$(date "+%Y%m%d")
tag="${repo}:${version}"
tag_today="${tag}-${today}"

# Build a local copy of the image.
docker build \
    --no-cache \
    --tag="$tag" \
    --build-arg "GITHUB_PAT=${DOCKER_GITHUB_PAT}" \
    "${HOME}/git/docker/${repo}/${version}"

# Log in to Docker Hub.
docker login

# Stable, version-specific tag (e.g. basejump:bioc-3.8).
docker tag "$tag" "acidgenomics/${tag}"
docker push "acidgenomics/${tag}"

# Tag with date (e.g. basejump:bioc-3.8-20190101).
docker tag "$tag" "acidgenomics/${tag_today}"
docker push "acidgenomics/${tag_today}"

