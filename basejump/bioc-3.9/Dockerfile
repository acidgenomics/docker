# basejump on Bioconductor 3.9

FROM acidgenomics/bioc-3.9
MAINTAINER mike@steinbaugh.com

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
