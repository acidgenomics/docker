#!/usr/bin/env bash
set -Eeuxo pipefail

docker build --tag="bioc-release" .
