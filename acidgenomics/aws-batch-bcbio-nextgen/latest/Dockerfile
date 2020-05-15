# """
# AWS Batch bcbio-nextgen image.
# Updated 2020-05-15.
# """

FROM acidgenomics/bcbio-nextgen:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh

ENTRYPOINT ["/usr/local/koopa/bin/aws-batch-fetch-and-run"]
