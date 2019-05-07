#!/usr/bin/env bash
set -Eeuxo pipefail

repo="$1"
version="$2"

docker login
docker tag "${repo}:${version}" "${repo}:latest"
docker tag "${repo}:latest" "acidgenomics/${repo}:latest"
docker push "acidgenomics/${repo}:latest"

