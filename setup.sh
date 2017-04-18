#!/bin/bash

apt-get update -yqq
apt-get install python zlib1g-dev clang make pkg-config curl

mkdir ./mason
curl -sSfL https://github.com/mapbox/mason/archive/v0.9.0.tar.gz | tar --gunzip --extract --strip-components=1 --exclude="*md" --exclude="test*" --directory=./mason

./mason/mason install mapnik latest
./mason/mason link mapnik latest

export PATH=$PATH:$(pwd)/mason_packages/.link/bin