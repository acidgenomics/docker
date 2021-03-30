FROM acidgenomics/debian:minimal

USER root
RUN apt-get update \
 && apt-get install --no-install-recommends -y unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER docker koopa install aws-cli

ENTRYPOINT ["/opt/koopa/bin/aws-batch-fetch-and-run"]
