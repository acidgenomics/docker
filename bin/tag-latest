#!/usr/bin/env bash
set -Eeuxo pipefail

repo="acidgenomics/$1"
tag="${2:-}"

if [[ -z "$tag" ]]
then
    tag="bioc-3.9"
fi

docker login
docker pull "${repo}:${tag}"
docker tag "${repo}:${tag}" "${repo}:latest"
docker push "${repo}:latest"

