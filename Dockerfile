FROM ubuntu:22.04

#ENV TZ=Europe/France
#RUN touch /etc/localtime && echo $TZ > /etc/localtime

# Be on top
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y curl git build-essential
RUN git clone https://github.com/neovim/neovim
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y gettext
RUN cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && make install

# dependencies with the markdown neovim plugin
RUN apt-get install -y yarn
# dependencies with the mason neovim plugin to install some lsp
RUN apt-get install -y npm

# dependencies with the mason neovim plugin to install some lsp (clangd)
RUN apt-get install -y unzip

# dependencies with the mason neovim plugin to install some lsp (clang-format)
RUN apt-get install -y python

# personal tools
RUN apt-get install -y bash-completion

ARG uid=1000
ARG gid=1000
ARG code_path=code
RUN groupadd -g ${gid} developer
RUN useradd -m -u ${uid} -g ${gid} -s /bin/bash developer

# TODO: generate a key for fetch bitbucket
# RUN ssh-keygen -t ed25519

USER developer
WORKDIR /home/developer/${code_path}

# docker build --build-arg uid=$(id -u) --build-arg gid=$(id -g) --build-arg code_path=thecode -t environment .
# docker container run -it --rm --name $(echo $RANDOM)-yocto --volume "${PWD}":/home/developer/thecode environment:latest /bin/bash

