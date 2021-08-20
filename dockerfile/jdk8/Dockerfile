#当前版本 ttbb/base:jdk8
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk8 base image"

RUN dnf install -y java-1.8.0-openjdk-devel && \
    dnf clean all && \
    wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.4.5/arthas-bin.zip && \
    mkdir -p /opt/sh/arthas && \
    unzip arthas-bin.zip -d /opt/sh/arthas && \
    rm -rf arthas-bin.zip && \
    echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc && \
    java_path=`find / -name java 2>/dev/null|grep jdk|grep -v jre|awk '{sub(/.{9}$/,"")}1'` && \
    echo "export JAVA_HOME='$java_path'" >> /etc/bashrc