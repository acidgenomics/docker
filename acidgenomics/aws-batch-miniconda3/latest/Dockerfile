FROM acidgenomics/miniconda3:latest
MAINTAINER docker@acidgenomics.com

RUN /opt/koopa/os/linux/common/bin/install-aws-cli

ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
