# """
# Install Mp3tag.
# Updated 2020-08-07.
# """

FROM steinbaugh/wine:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

ENTRYPOINT ["wine", "~/.wine/drive_c/Program\ Files/Mp3tag/Mp3tag.exe"]
