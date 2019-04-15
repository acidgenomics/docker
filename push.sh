repo="basejump"
today=$(date "+%Y%m%d")

docker login
docker tag "${repo}:latest" "acidgenomics/${repo}:$today"
docker push "acidgenomics/${repo}:$today"

unset -v repo today
