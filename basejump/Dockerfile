# Acid Genomics basejump toolkit image
# Bioconductor 3.8 / R 3.5.3

FROM acidgenomics/bioc-release
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

ADD 01-suggested.R .
RUN R -f 01-suggested.R

ADD 02-basejump.R .
RUN R -f 02-basejump.R

WORKDIR /
