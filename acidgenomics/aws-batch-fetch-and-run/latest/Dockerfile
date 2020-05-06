# """
# AWS Batch fetch and run.
# Updated 2020-05-06.
# """

FROM acidgenomics/debian:minimal
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
