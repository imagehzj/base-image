FROM ubuntu

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my ubuntu base image"

WORKDIR /opt/sh

RUN apt-get update && \
apt-get install -y wget sudo vim && \
apt-get clean all && \
wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 && \
chmod +x /usr/local/bin/dumb-init && \
echo "alias ll='ls -al'" >> /etc/bash.bashrc && \
echo "alias ..='cd ..'" >> /etc/bash.bashrc && \
echo "alias ...='cd ../..'" >> /etc/bash.bashrc && \
echo "alias tailf='tail -f'" >> /etc/bash.bashrc && \
echo "(apt-get update >/dev/null 2>&1 &)" >> /etc/bashrc && \
echo "set nu" >> /etc/vim/vimrc && \
groupadd sh -g 1024 && \
useradd -r -g sh sh -u 1024 -m -d /home/sh