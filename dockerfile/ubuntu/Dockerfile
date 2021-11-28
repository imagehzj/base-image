FROM ubuntu

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my ubuntu base image"

WORKDIR /opt/sh

RUN apt-get update && \
    apt-get install -y wget sudo vim dumb-init && \
    apt-get clean all
RUN echo "alias ll='ls -al'" >> /etc/bash.bashrc && \
    echo "alias ..='cd ..'" >> /etc/bash.bashrc && \
    echo "alias ...='cd ../..'" >> /etc/bash.bashrc && \
    echo "alias tailf='tail -f'" >> /etc/bash.bashrc && \
    echo "(apt-get update >/dev/null 2>&1 &)" >> /etc/bashrc && \
    echo "set nu" >> /etc/vim/vimrc && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh