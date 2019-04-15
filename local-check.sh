pkg="$1"
docker run -ti --user bioc -v "${HOME}/git/packages/${pkg}:/${pkg}" acidgenomics/basejump bash
