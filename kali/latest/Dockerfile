# Install Kali Linux
# Updated 2019-12-16.

FROM kalilinux/kali-rolling:latest
MAINTAINER mike@steinbaugh.com

# RUN apt-get update && \
#     apt-get -y install less

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
