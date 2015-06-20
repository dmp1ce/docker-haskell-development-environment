#!/bin/bash

# Init
# Make sure code is directory exists.
mkdir -p code
mkdir -p .home

docker_command() {
  echo "docker run --rm -it -u $(id -u):$(id -g) -w /home/env_home/code -e "HOME=/home/env_home" -v "$PWD"/code:/home/env_home/code -v "$PWD/.home:/home/env_home" haskell-development-environment"
}
