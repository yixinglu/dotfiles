FROM ubuntu:18.04

LABEL MAINTAINER="Yee <yxlyee@gmail.com>"

COPY ubuntu/apt/sources.list.d/aliyun.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    ca-certificates \
    curl \
    git \
    man-db \
    sudo \
    tmux \
    vim \
    wget \
    zsh \
  && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '' yee \
  && adduser yee sudo \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER yee
WORKDIR /home/yee
