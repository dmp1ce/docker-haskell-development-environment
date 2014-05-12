#!/bin/bash

# Build dependencies in sandbox
docker run -w /code -t -i -v $PWD/code:/code haskell-development-environment cabal sandbox init
docker run -w /code -t -i -v $PWD/code:/code haskell-development-environment cabal install
