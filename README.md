# Docker recipes

Dockerfile recipes for the [Acid Genomics Docker Hub images](https://cloud.docker.com/u/acidgenomics/).

## Build a specific image version

Here's how to build the basejump toolkit against the current Bioconductor release.

Note that this script calls the recipe defined in `basejump/bioc-release/`:

```sh
# [1] image  [2] tag
./bin/docker-build-image basejump bioc-release
```

## Build all versions of an image

Here's how to build all versions of an image:

```sh
# [1] image
./bin/docker-build-all-tags basejump
```

## Tag build as latest

Here's how to tag a versioned build as `latest`:

```sh
# [1] image  [2] source_tag  [3] dest_tag
./bin/docker-tag basejump bioc-release latest
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

## Troubleshooting

Enable Docker to run at login (Linux):

```sh
sudo systemctl enable docker
```

See [post-install instructions](https://docs.docker.com/install/linux/linux-postinstall/) for details.

User needs to authenticate:

```sh
docker login
```

Config will save to `~/.docker/config.json` by default.

Inspect current config with:

```sh
docker info
```

Important! Make sure "Docker Root Dir" is set outside of main partition for VMs with small local disks.
