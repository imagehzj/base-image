#!/bin/bash

function main() 
{
    cd dockerfile/"$1"
    docker build . -t ttbb/base:$1
    docker push ttbb/base:$1
}

cd "$(dirname "$0")"
main "$1"