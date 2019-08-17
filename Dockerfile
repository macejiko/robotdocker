FROM python:2.7-alpine
MAINTAINER Bohdan Sukhov <macejiko@gmail.com>

WORKDIR /user/local

COPY requirements.txt requirements.txt

RUN apk add --no-cache libffi-dev libxml2-dev libxslt-dev python-dev musl-dev openssl-dev jpeg-dev zlib-dev && \
    apk add --no-cache --virtual .build-deps git gcc make curl && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir robotframework-databaselibrary==0.6 && \
    curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz && \
    tar xzvf docker-17.03.0-ce.tgz && \
    mv docker/docker /usr/local/bin && \
    rm -rf docker docker-17.03.0-ce.tgz && \
    apk del .build-deps


