FROM docker.io/acidgenomics/koopa:debian
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
