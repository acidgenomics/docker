FROM docker.io/acidgenomics/koopa:ubuntu
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
