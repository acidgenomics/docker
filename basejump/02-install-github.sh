#!/usr/bin/env bash
set -Eeuxo pipefail

# Using this approach to avoid hitting GitHub rate limit with remotes package.
# There's no easy way to set a GITHUB_PAT token that increases the rate limit.

acid_install() {
    local pkg="$1"
    local base_url="https://codeload.github.com/acidgenomics"
    local branch="master"
    wget "${base_url}/${pkg}/tar.gz/${branch}" -O "${pkg}-${branch}.tar.gz"
    tar xzvf "${pkg}-${branch}.tar.gz"
    R CMD INSTALL "${pkg}-${branch}"
    rm -rf "${pkg}-${branch}"
    rm -f "${pkg}-${branch}.tar.gz"
}

acid_install "lintr"
acid_install "acidtest"
acid_install "bioverbs"
acid_install "goalie"
acid_install "transformer"
acid_install "syntactic"
acid_install "brio"
acid_install "freerange"
acid_install "basejump"
