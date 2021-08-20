# docker run -it ttbb/base:jdk11-ssh bash
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

COPY ssh_config /opt/sh/ssh_config

RUN dnf install -y openssh-clients openssh-server && \
    dnf clean all && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -P ""  && \
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -P "" && \
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -P "" && \
    mkdir -p /root/.ssh && \
    ssh-keygen -t rsa -f /root/.ssh/id_rsa -P ""  && \
    cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys && \
    cp /opt/sh/ssh_config /etc/ssh/ssh_config && \
    rm -rf /opt/sh/ssh_config