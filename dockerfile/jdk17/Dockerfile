FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk17 base image"

ENV JAVA_HOME /usr/java/default

RUN wget -q https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm && \
    dnf clean all && \
    wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.5.4/arthas-bin.zip && \
    mkdir -p /opt/sh/arthas && \
    unzip arthas-bin.zip -d /opt/sh/arthas && \
    rm -rf arthas-bin.zip && \
    rpm -ih jdk-17_linux-x64_bin.rpm && \
    echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc && \
    rm -rf jdk-17_linux-x64_bin.rpm