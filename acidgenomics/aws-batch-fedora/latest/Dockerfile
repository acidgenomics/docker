FROM docker.io/acidgenomics/fedora:minimal
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
