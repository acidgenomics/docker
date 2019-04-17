image="acidgenomics/$1"
pkg="$2"
docker run -ti --user="bioc" --volume="${HOME}/git/packages/${pkg}:/${pkg}" --workdir="/${pkg}" "$image" bash
