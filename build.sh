#!/usr/bin/env bash

rm -rf dist

docker run --rm \
  -v $PWD/source:/usr/src/app/source \
  -w /usr/src/app/source \
  -v $PWD/dist:/usr/src/app/build \
  documentation_sdk \
  /bin/bash -c  "bundle exec middleman build --clean && chown -R $UID ../build"
