FROM python:3.7.4-alpine
MAINTAINER Bohdan Sukhov <macejiko@gmail.com>

WORKDIR /user/local

COPY requirements.txt requirements.txt

RUN apk add --no-cache python3-dev && \
    apk add --no-cache --virtual .build-deps libffi-dev build-base && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps


