# Acid Genomics
# Bioconductor 3.8 / R 3.5.3
# Last updated 2019-04-14

FROM acidgenomics/bioc-release
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp

ADD 01-install-bioc.R .
RUN R -f 01-install-bioc.R

ADD 02-install-github.sh .
RUN chmod +x 02-install-github.sh
RUN ./02-install-github.sh
