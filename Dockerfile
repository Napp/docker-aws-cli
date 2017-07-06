FROM ubuntu:16.04
MAINTAINER Mads Møller, mm@napp.dk

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    zip \
    curl \
    python-pip \
    groff
    
RUN pip install -U pip && \
    pip install awscli
    
