# """
# AWS Batch miniconda3 image.
# Updated 2020-03-04.
# """

FROM acidgenomics/miniconda3:latest
MAINTAINER mike@steinbaugh.com

USER nobody
WORKDIR /tmp

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
