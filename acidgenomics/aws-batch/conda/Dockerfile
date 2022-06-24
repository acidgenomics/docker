FROM docker.io/acidgenomics/conda:latest

USER root
RUN apt-get update \
 && apt-get install --no-install-recommends --yes 'unzip' \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER docker
RUN koopa install aws-cli

ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
