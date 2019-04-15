pkg="$1"
docker run -ti --user="bioc" --volume="${HOME}/git/packages/${pkg}:/${pkg}" --workdir="/${pkg}" acidgenomics/basejump bash
