FROM centos:8

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my base image"

WORKDIR /opt/sh

RUN yum install -yq glibc-langpack-en net-tools lsof vim tcpdump openssh-clients sudo unzip perf nc telnet bind-utils wget iotop systemtap-sdt-devel && \
    yum install -yq dstat sysstat && \
    rm -rf /var/cache/yum
RUN echo "alias ll='ls -al'" >> /etc/bashrc && \
    echo "alias ..='cd ..'" >> /etc/bashrc && \
    echo "alias ...='cd ../..'" >> /etc/bashrc && \
    echo "alias tailf='tail -f'" >> /etc/bashrc && \
    echo "set nu" >> /etc/vimrc && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh