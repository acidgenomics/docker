# """
# AWS Batch Fedora image.
# Updated 2020-03-04.
# """

FROM acidgenomics/fedora:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
