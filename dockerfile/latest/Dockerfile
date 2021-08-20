# docker run -it ttbb/base:latest bash
FROM fedora

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my base image"

WORKDIR /opt/sh

RUN dnf install -y iputils net-tools iproute telnet bind-utils && \
dnf install -y glibc-langpack-en procps lsof vim tcpdump unzip perf nc sysstat wget iotop dstat systemtap-sdt-devel && \
dnf clean all && \
wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 && \
chmod +x /usr/local/bin/dumb-init && \
echo "alias ll='ls -al'" >> /etc/bashrc && \
echo "alias ..='cd ..'" >> /etc/bashrc && \
echo "alias ...='cd ../..'" >> /etc/bashrc && \
echo "alias tailf='tail -f'" >> /etc/bashrc && \
echo "(dnf updateinfo >/dev/null 2>&1 &)" >> /etc/bashrc && \
echo "set nu" >> /etc/vimrc && \
groupadd sh -g 1024 && \
useradd -r -g sh sh -u 1024 -m -d /home/sh