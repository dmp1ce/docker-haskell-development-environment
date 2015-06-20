#!/bin/bash

source .common.sh

# Build 
$(docker_command) cabal build

# Run
IFS='.' read -ra ADDR <<< "$(cd code; ls *.cabal)"
project_name=${ADDR[0]}
./code/dist/build/$project_name/$project_name
