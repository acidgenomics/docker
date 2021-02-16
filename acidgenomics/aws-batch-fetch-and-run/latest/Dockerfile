# """
# AWS Batch fetch and run.
# Updated 2020-11-11.
# """

FROM acidgenomics/debian:minimal
MAINTAINER docker@acidgenomics.com

RUN koopa install aws-cli

ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
