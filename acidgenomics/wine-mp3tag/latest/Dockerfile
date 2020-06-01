# """
# Install Mp3tag.
# Updated 2020-06-01.
# """

FROM acidgenomics/wine:latest
MAINTAINER mike@steinbaugh.com

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

ENTRYPOINT wine /wine/drive_c/Program\ Files\ \(x86\)/Mp3tag/Mp3tag.exe
