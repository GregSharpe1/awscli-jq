FROM python:alpine

RUN apk -v --update add \
        py-pip \
        bash \
        coreutils \
        groff \
        less \
        mailcap \
        jq \
        && \
    pip install --upgrade awscli==1.18.103 && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

VOLUME /root/.aws

VOLUME /project

WORKDIR /project
