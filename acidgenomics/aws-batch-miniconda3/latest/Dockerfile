FROM acidgenomics/miniconda3:latest
MAINTAINER docker@acidgenomics.com

RUN koopa install aws-cli

ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
