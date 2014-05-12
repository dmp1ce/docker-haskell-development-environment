FROM dmp1ce/haskell
MAINTAINER David Parrish <daveparrish@gmail.com>

# Install git due to cabal-install bug (https://github.com/haskell/cabal/issues/1613)
RUN pacman -S --quiet --noconfirm git

# add haskell user due to volume permissions issue (https://github.com/dotcloud/docker/issues/3124)
# TODO: should change uid dending on host user
RUN useradd -m -d /home/haskell -s /bin/bash haskell -u 1000 
ENV HOME /home/haskell
WORKDIR /home/haskell
USER haskell
