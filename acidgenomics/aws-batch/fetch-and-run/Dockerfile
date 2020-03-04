# """
# AWS Batch fetch and run.
# Updated 2020-03-04.
#
# https://github.com/awslabs/aws-batch-helpers
# """

FROM amazonlinux:latest
MAINTAINER mike@steinbaugh.com

RUN yum -y install which unzip aws-cli

ADD fetch-and-run /usr/local/bin/fetch-and-run
USER nobody
WORKDIR /tmp

ENTRYPOINT ["/usr/local/bin/fetch-and-run"]
