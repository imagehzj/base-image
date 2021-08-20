# 当前版本 ttbb/base:goc
# docker run -it ttbb/base:goc bash
FROM ttbb/base:go

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is goc base image"

RUN dnf install -y git make gcc && \
    dnf clean all