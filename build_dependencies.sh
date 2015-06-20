#!/bin/bash

source .common.sh

# Build dependencies in sandbox
$(docker_command) cabal sandbox init
$(docker_command) cabal install
