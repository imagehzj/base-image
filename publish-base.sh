#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/build-push-base.sh latest

bash $DIR/build-push-base.sh centos
bash $DIR/build-push-base.sh ubuntu

bash $DIR/build-push-base.sh erlang
bash $DIR/build-push-base.sh go
bash $DIR/build-push-base.sh goc
bash $DIR/build-push-base.sh jdk8
bash $DIR/build-push-base.sh jdk11
bash $DIR/build-push-base.sh jdk11-ssh
bash $DIR/build-push-base.sh node
bash $DIR/build-push-base.sh network

bash $DIR/build-push-base.sh clojure