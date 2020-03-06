# """
# AWS Batch fetch and run.
# Updated 2020-03-06.
# """

FROM acidgenomics/amzn:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
