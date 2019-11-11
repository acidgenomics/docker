# Bioconductor images

See also:

- [Bioconductor Docker help](https://www.bioconductor.org/help/docker/)

Dockerfiles:

- [bioconductor/release_base2](https://github.com/Bioconductor/bioc_docker/blob/master/out/release_base/Dockerfile)
- [bioconductor/release_core2](https://github.com/Bioconductor/bioc_docker/blob/master/out/release_core/Dockerfile)
- [bioconductor/devel_base2](https://github.com/Bioconductor/bioc_docker/blob/master/out/devel_base/Dockerfile)
- [bioconductor/devel_core2](https://github.com/Bioconductor/bioc_docker/blob/master/out/devel_core/Dockerfile)
- [rocker/r-base](https://github.com/rocker-org/rocker/blob/master/r-base/Dockerfile)
- [rocker/rstudio](https://hub.docker.com/r/rocker/rstudio/dockerfile)

Consider adding:

- AnnotationHub
- DelayedArray
- GenomicRanges
- IRanges
- ensembldb

libcurl4 conflict:

- magick > libcurl4-openssl-dev
- git2r > libgit2-dev > libcurl4-gnutls-dev

The version of libgit2-dev is too old for git2r anyway.
