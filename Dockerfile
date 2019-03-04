FROM ubuntu:18.04
MAINTAINER Mads Møller, mm@napp.dk

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y --no-install-recommends \
    zip \
    curl \
    python-dev python3-dev \
    build-essential libssl-dev libffi-dev \
    libxml2-dev libxslt1-dev zlib1g-dev \
    python3-pip \
    groff \
    python3-setuptools

RUN pip3 install awscli

RUN pip3 install aws-sam-cli