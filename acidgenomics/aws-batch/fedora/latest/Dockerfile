FROM docker.io/acidgenomics/fedora:latest
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
