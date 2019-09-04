# Docker recipes

Dockerfile recipes for the [Acid Genomics Docker Hub images](https://cloud.docker.com/u/acidgenomics/).

## Build a specific image version

Here's how to build the basejump toolkit specifically against Bioconductor 3.9.

Note that this script calls the recipe defined in `basejump/bioc-3.9/`:

```sh
# [1] image  [2] tag
./bin/build-image basejump bioc-3.9
```

## Build all versions of an image

Here's how to build all versions of an image:

```sh
# [1] image
./bin/build-all-tags basejump
```

## Tag build as latest

Here's how to tag a versioned build as `latest`:

```sh
# [1] image  [2] tag
./bin/tag-latest basejump bioc-3.9
```

## Clean up

Delete all dangling data (recommended):

```sh
docker system prune
```

Remove all images, not just dangling ones:

```sh
docker system prune --all --force
```
