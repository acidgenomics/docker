FROM acidgenomics/debian:minimal
RUN koopa install aws-cli
ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
