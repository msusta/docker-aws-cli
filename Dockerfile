FROM alpine

RUN apk -v --update add \
        py-pip && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

VOLUME [ "~/.aws" ]
ENTRYPOINT [ "/bin/ash" ]
