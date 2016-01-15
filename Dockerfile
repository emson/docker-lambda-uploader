FROM python:2.7-slim

RUN apt-get update && apt-get install --no-install-recommends -y \
	libssl-dev \
	libffi-dev \
	gcc \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install lambda-uploader \
    && mkdir /data

WORKDIR /data

ENTRYPOINT ["lambda-uploader"]
