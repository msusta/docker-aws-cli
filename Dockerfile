FROM alpine

RUN apk -v --update add py-pip && \
    pip install --upgrade awscli && \
    rm /var/cache/apk/*

VOLUME [ "~/.aws" ]
