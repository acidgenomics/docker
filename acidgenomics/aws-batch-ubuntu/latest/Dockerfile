FROM docker.io/acidgenomics/ubuntu:minimal
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
