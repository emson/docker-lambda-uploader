FROM python:2.7-alpine

RUN apk add --update --no-cache bash zip gcc musl-dev openssl-dev libffi-dev \
    && pip install lambda-uploader \
    && mkdir /data

WORKDIR /data

ENTRYPOINT ["lambda-uploader"]
