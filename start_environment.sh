#!/bin/bash

# Start haskell environment
docker run -t -i -v $PWD/code:/code haskell-development-environment /bin/bash
