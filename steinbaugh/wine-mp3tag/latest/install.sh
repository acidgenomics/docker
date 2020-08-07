#!/usr/bin/env bash

wine_install_mp3tag() {
    # """
    # Install Mp3tag.
    # @note Updated 2020-08-07.
    #
    # @seealso
    # - https://github.com/baztian/docker-wine-mp3tag
    # - https://hub.docker.com/r/scottyhardy/docker-wine/
    # - https://wiki.winehq.org/Wine_User%27s_Guide#How_to_install_and_run_
    #       Windows_programs
    # """
    file="mp3tagv302setup.exe"
    url="https://download.mp3tag.de/${file}"
    curl -O "$url"
    xvfb-run wine "$file" /S
    rm "$file"
}

wine_install_mp3tag
