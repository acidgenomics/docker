# """
# AWS Batch single-cell RNA-seq image.
# Updated 2020-03-04.
# """

FROM acidgenomics/singlecell:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
