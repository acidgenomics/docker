# """
# AWS Batch fetch and run.
# Updated 2020-11-11.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN /usr/local/koopa/os/linux/bin/install-aws-cli

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
