#当前版本 ttbb/base:jdk11
FROM ttbb/base:latest

LABEL maintainer="shoothzj@gmail.com"
LABEL description="This is jdk11 base image"


RUN dnf install -yq java-11-openjdk-devel && \
    dnf clean all
RUN wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.6.3/arthas-bin.zip && \
    mkdir -p /opt/sh/arthas && \
    unzip arthas-bin.zip -d /opt/sh/arthas && \
    rm -rf arthas-bin.zip && \
    echo "alias arthas='java -jar /opt/sh/arthas/arthas-boot.jar'" >> /etc/bashrc
RUN java_path=`find / -name java 2>/dev/null|grep jdk|grep -v jre|awk '{sub(/.{9}$/,"")}1'` && \
    echo "export JAVA_HOME='$java_path'" >> /etc/bashrc && \
    echo "export JAVA_HOME='$java_path'" >> /etc/profile