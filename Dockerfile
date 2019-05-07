FROM python:2.7-alpine
MAINTAINER Bohdan Sukhov <macejiko@gmail.com>

WORKDIR /user/local

COPY requirements.txt requirements.txt

RUN apk add --no-cache libffi-dev libxml2-dev libxslt-dev python-dev musl-dev openssl-dev jpeg-dev zlib-dev && \
    apk add --no-cache --virtual .build-deps git gcc make && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir robotframework-databaselibrary==0.6 && \
    pip install --no-cache-dir robotframework-sshlibrary==2.1.1 && \
    apk del .build-deps


