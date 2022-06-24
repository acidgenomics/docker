FROM docker.io/acidgenomics/koopa:fedora
RUN koopa install aws-cli
ENTRYPOINT ["koopa", "app", "aws", "batch", "fetch-and-run"]
