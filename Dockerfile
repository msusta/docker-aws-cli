FROM alpine:3

RUN apk -v --no-cache add py2-pip && \
    pip --no-cache-dir install --upgrade awscli

VOLUME [ "~/.aws" ]
