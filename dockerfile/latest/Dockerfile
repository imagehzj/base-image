FROM fedora:35

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is my base image"

WORKDIR /opt/sh

RUN dnf install -yq iputils net-tools iproute telnet bind-utils && \
    dnf install -yq util-linux tree && \
    dnf install -yq glibc-langpack-en procps lsof tcpdump unzip perf nc sysstat wget iotop dstat systemtap-sdt-devel && \
    dnf install -yq dumb-init && \
    dnf update -yq vim-minimal && \
    dnf install -yq vim && \
    dnf clean all
RUN echo "alias ll='ls -al'" >> /etc/bashrc && \
    echo "alias ..='cd ..'" >> /etc/bashrc && \
    echo "alias ...='cd ../..'" >> /etc/bashrc && \
    echo "alias tailf='tail -f'" >> /etc/bashrc && \
    echo "(dnf updateinfo >/dev/null 2>&1 &)" >> /etc/bashrc && \
    echo "set nu" >> /etc/vimrc && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    groupadd sh -g 1024 && \
    useradd -r -g sh sh -u 1024 -m -d /home/sh