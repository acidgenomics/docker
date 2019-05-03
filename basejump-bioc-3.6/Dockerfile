# Acid Genomics basejump toolkit image
# Bioconductor 3.6

FROM acidgenomics/bioc-3.6
MAINTAINER mike@steinbaugh.com

# Install R packages.
WORKDIR /tmp
ARG GITHUB_PAT
ADD install.R .
RUN R -f install.R
WORKDIR /
