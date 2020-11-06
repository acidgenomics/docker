# """
# AWS Batch miniconda3 image.
# Updated 2020-05-06.
# """

FROM acidgenomics/miniconda3:latest
MAINTAINER docker@acidgenomics.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
