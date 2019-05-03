# Acid Genomics single-cell RNA-seq image
# Bioconductor 3.8
#
# See also:
# - https://singularity-hub.org/containers/5533
# - https://stackoverflow.com/questions/12141422

FROM acidgenomics/rnaseq
MAINTAINER mike@steinbaugh.com

# Pass through `GITHUB_PAT` to install R packages from GitHub.
ARG GITHUB_PAT

WORKDIR /tmp

RUN apt-get update && \
    apt-get install -y \
        libudunits2-dev \
        libgdal-dev \
        libfreetype6-dev libglu1-mesa-dev libx11-dev xorg \
        libcairo2-dev

# python3 doesn't currently work right for virtual environments with this image.
# > RUN apt-get install -y python3-venv
# > RUN python3 -m venv ~/.virtualenvs/reticulate

RUN python2.7 -m pip install --upgrade --user virtualenv

ADD reticulate.R .
RUN R -f reticulate.R

ADD trapnell.R .
RUN R -f trapnell.R

ADD satija.R .
RUN R -f satija.R

ADD acidgenomics.R .
RUN R -f acidgenomics.R

WORKDIR /
