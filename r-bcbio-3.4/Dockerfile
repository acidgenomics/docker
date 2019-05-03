# bcbio R package testing against R 3.4

FROM rocker/r-ver:3.4.4
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

ADD install.R .
RUN R -f install.R

WORKDIR /
