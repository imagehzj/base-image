FROM centos:8

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my base image"

WORKDIR /opt/sh

RUN yum install -y glibc-langpack-en net-tools lsof vim tcpdump openssh-clients sudo unzip perf nc sysstat telnet bind-utils wget iotop dstat systemtap-sdt-devel && \
wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 && \
    chmod +x /usr/local/bin/dumb-init && \
    echo "alias ll='ls -al'" >> /etc/bashrc && \
    echo "alias ..='cd ..'" >> /etc/bashrc && \
    echo "alias ...='cd ../..'" >> /etc/bashrc && \
    echo "alias tailf='tail -f'" >> /etc/bashrc && \
    echo "set nu" >> /etc/vimrc && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh && \
    yum clean all && \
    rm -rf /var/cache/yum