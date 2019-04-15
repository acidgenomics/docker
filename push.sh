repo="$1"
today=$(date "+%Y%m%d")

docker login

docker tag "${repo}:latest" "acidgenomics/${repo}:$today"
docker push "acidgenomics/${repo}:$today"

docker tag "${repo}:latest" "acidgenomics/${repo}:latest"
docker push "acidgenomics/${repo}:latest"

unset -v repo today
