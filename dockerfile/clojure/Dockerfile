FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

ARG version=1.10.3.822

RUN curl -O https://download.clojure.org/install/linux-install-$version.sh && \
chmod +x linux-install-$version.sh && \
./linux-install-$version.sh