FROM ubuntu:18.04
MAINTAINER Mads Møller, mm@napp.dk

RUN apt-get update && \
    install -y --no-install-recommends \
    zip \
    curl \
    python-dev python3-dev \
    build-essential libssl-dev libffi-dev \
    libxml2-dev libxslt1-dev zlib1g-dev \
    python3-pip \
    groff \
    python3-setuptools \
    apt-transport-https \
    ca-certificates \ 
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && \
    apt-get update && \
    apt-get install -y docker-ce --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* 

RUN pip3 install awscli

RUN pip3 install aws-sam-cli
