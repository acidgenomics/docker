FROM acidgenomics/miniconda3:latest
RUN koopa install aws-cli
ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
