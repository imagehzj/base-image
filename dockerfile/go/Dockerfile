#当前版本 ttbb/base:go
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is go base image"

ARG version=1.18.1
ARG TARGETARCH

RUN wget https://golang.org/dl/go$version.linux-$TARGETARCH.tar.gz && \
    tar -C /usr/local -xzf go$version.linux-$TARGETARCH.tar.gz && \
    ln -s /usr/local/go/bin/go /usr/bin/go && \
    ln -s /usr/local/go/bin/gofmt /usr/bin/gofmt && \
    rm -rf go$version.linux-$TARGETARCH.tar.gz