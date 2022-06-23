FROM docker.io/acidgenomics/ubuntu:latest
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
