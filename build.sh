#!/usr/bin/env bash

docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate \
    -i openapi.yml \
    -l go \
    -o /local/dist/go
