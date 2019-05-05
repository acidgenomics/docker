#!/usr/bin/env bash
set -Eeuxo pipefail

# Check an R package using a Docker image.

repo="$1"
version="$2"
r_pkg="$3"

image="acidgenomics/${repo}:${version}"
r_pkg_dir="${HOME}/git/packages/${r_pkg}"

docker pull "$image"
docker run -ti \
    --volume="${r_pkg_dir}:/${r_pkg}" \
    --workdir="/${r_pkg}" \
    "$image" \
    Rscript -e 'source("travis-docker.R")'
