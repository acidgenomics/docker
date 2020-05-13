# """
# AWS Batch Nextflow ChIP-seq image.
# Updated 2020-05-13.
# """

FROM acidgenomics/nextflow-chipseq:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
