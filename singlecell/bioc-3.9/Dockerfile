# Acid Genomics single-cell RNA-seq on Bioconductor 3.9
#
# See also:
# - https://singularity-hub.org/containers/5533
# - https://stackoverflow.com/questions/12141422

FROM acidgenomics/rnaseq:bioc-3.9
MAINTAINER mike@steinbaugh.com

ARG GITHUB_PAT

WORKDIR /tmp

RUN python2.7 -m pip install --upgrade --user virtualenv

# RUN apt-get install -qy python3-venv &&
#     python3 -m venv ~/.virtualenvs/reticulate

ADD reticulate.R .
RUN R -f reticulate.R

ADD trapnell.R .
RUN R -f trapnell.R

ADD satija.R .
RUN R -f satija.R

ADD acidgenomics.R .
RUN R -f acidgenomics.R

WORKDIR /
