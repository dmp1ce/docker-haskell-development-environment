#!/bin/bash

# Build 
docker run -w /code -t -i -v $PWD/code:/code haskell-development-environment cabal build

# Run
./code/dist/build/code/code
