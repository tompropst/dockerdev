# Docker Development Container

Use Docker to setup a simple development environment / container.

## Features

* Vim
* Git
* TODO: install other tools
* Container user named after host user
* Host home directory mapped to container (e.g. repository directories, SSH keys, etc)

## Caveats

* Since home directories are tied, the host `.bashrc` will be sourced when logging into the container
    - This may cause errors if there are host-specific commands in `.bashrc`

## Setup

* Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* Run `./build.sh` to build the image (will be cached and faster on subsequent runs)
    - To remove the container and image, run `./clean.sh`
* Enter the container with `docker exec -it dev bash`
