FROM alpine

RUN apk -v --no-cache add py2-pip && \
    pip --no-cache-dir install --upgrade awscli && \
    rm /var/cache/apk/*

VOLUME [ "~/.aws" ]
