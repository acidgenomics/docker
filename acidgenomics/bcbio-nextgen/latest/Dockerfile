# """
# Install bcbio-nextgen.
# Updated 2020-03-06.
# """

FROM acidgenomics/debian:minimal
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
