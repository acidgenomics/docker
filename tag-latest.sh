#!/usr/bin/env bash
set -Eeuxo pipefail

repo="acidgenomics/$1"
version="$2"

docker login
docker pull "${repo}:${version}"
docker tag "${repo}:${version}" "${repo}:latest"
docker push "${repo}:latest"

