FROM ubuntu:18.04

ARG USER_NAME="yee"
ARG USER_PASSWORD="yee"

LABEL MAINTAINER="Yee <yxlyee@gmail.com>"

COPY ubuntu/apt/sources.list.d/aliyun.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    apt-utils \
    autoconf \
    automake \
    autotools-dev \
    build-essential \
    ca-certificates \
    curl \
    fonts-powerline \
    git \
    linuxbrew-wrapper \
    locales \
    man-db \
    openssh-client \
    sudo \
    texinfo \
    tmux \
    vim \
    wget \
    zsh \
  # install emacs
  && add-apt-repository ppa:kelleyk/emacs \
  && apt-get update \
  && apt-get install -y emacs26 \
  # set up locale
  && locale-gen en_US.UTF-8 \
  # add a user (--disabled-password: the user won't be able to use the account until the password is set)
  && adduser --quiet --disabled-password --shell /bin/zsh --home /home/$USER_NAME --gecos "User" $USER_NAME \
  # update the password
  && echo "${USER_NAME}:${USER_PASSWORD}" | chpasswd && usermod -aG sudo $USER_NAME
  # && rm -rf /var/lib/apt/lists/*


# the user we're applying this too (otherwise it most likely install for root)
USER $USER_NAME
# terminal colors with xterm
ENV TERM xterm
# set the zsh theme
ENV ZSH_THEME agnoster

# oh my zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

USER yee
WORKDIR /home/yee
