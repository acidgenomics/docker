# Docker images

Dockerfile recipes for the [Acid Genomics Docker Hub images](https://cloud.docker.com/u/acidgenomics/).

## Build a specific image version

For example, build the basejump toolkit against the current Bioconductor release.
Note that this script calls the recipe defined in `./basejump/bioc-release/`:

```sh
# [1] image  [2] tag
./bin/docker-build-image basejump bioc-release
```

## Build all versions of an image

```sh
# [1] image
./bin/docker-build-all-tags basejump
```

## Tag build as latest

```sh
# [1] image  [2] source_tag  [3] dest_tag
./bin/docker-tag basejump bioc-release latest
```

* * *

## Troubleshooting

### Start or stop the daemon

```sh
sudo systemctl stop docker
sudo systemctl start docker
sudo systemctl restart docker
```

### Enable Docker to run at login

See [post-install instructions](https://docs.docker.com/install/linux/linux-postinstall/) for details.

```sh
sudo systemctl enable docker
```

### Login

```sh
docker login
```

Config will save to `~/.docker/config.json` by default.

### Current config

Inspect current config:

```sh
docker info
```

Important! Make sure "Docker Root Dir" is set outside of main partition for VMs with small local disks.

### Image is too big

If you attempt to pull an image that is larger than 10 GB, you may run into an error due to the current default configuration of the Docker daemon (`dockerd`) on Linux.

```
docker info &>2 > /dev/null | grep 'Base Device Size:'
docker info &>2 > /dev/null | grep 'Storage Driver:'
```

You can fix this by setting the default `storage-opts` for the Docker daemon. I recommend doing this with a JSON config file on Linux, which can be saved at `/etc/docker/daemon.json`. Here's a minimal configuration for the `devicemapper` storage driver, increasing the default limit to 20 GB.

```
{
  "storage-driver": "devicemapper",
  "storage-opts": [
    "dm.basesize=20G"
  ]
}
```

### Remove images

Force remove an image:

```sh
docker image rm --force "<IMAGE ID>"
```

Delete all dangling data (recommended):

```sh
docker system prune
```

Remove all images, not just dangling ones:

```sh
docker system prune --all --force
```
