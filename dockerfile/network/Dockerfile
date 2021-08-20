#当前版本 ttbb/base:network
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is network image"


RUN dnf install -y nftables nftables iptables iproute && \
    dnf clean all