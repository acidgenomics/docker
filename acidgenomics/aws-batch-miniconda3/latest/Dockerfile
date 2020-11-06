FROM acidgenomics/miniconda3:latest
MAINTAINER docker@acidgenomics.com

RUN /usr/local/koopa/os/linux/bin/install-aws-cli

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
