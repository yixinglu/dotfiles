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
    fasd \
    fonts-powerline \
    git \
    gnupg \
    graphviz \
    libncurses5-dev \
    linuxbrew-wrapper \
    locales \
    man-db \
    openssh-client \
    software-properties-common \
    sudo \
    texinfo \
    tmux \
    vim \
    wget \
    zlib1g-dev \
    zsh \
  # install emacs
  && add-apt-repository ppa:kelleyk/emacs \
  && apt-get update \
  && apt-get install -y emacs26 \
  # ripgrep
  && curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb \
  && dpkg -i ripgrep_11.0.2_amd64.deb \
  && rm -rf ripgrep_11.0.2_amd64.deb \
  # fzf
  && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf \
  && ~/.fzf/install \
  && rm -rf ~/.fzf \
  # set up locale
  && locale-gen en_US.UTF-8 \
  # add a user (--disabled-password: the user won't be able to use the account until the password is set)
  && adduser --quiet --disabled-password --shell /bin/zsh --home /home/$USER_NAME --gecos "User" $USER_NAME \
  # update the password
  && echo "${USER_NAME}:${USER_PASSWORD}" | chpasswd && usermod -aG sudo $USER_NAME

# the user we're applying this too (otherwise it most likely install for root)
USER $USER_NAME
WORKDIR /home/$USER_NAME

# terminal colors with xterm
ENV TERM xterm

# oh my zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# navi
ENV ZSH_CUSTOM /home/$USER_NAME/.oh-my-zsh/custom
RUN mkdir -p $ZSH_CUSTOM/plugins && git clone https://github.com/denisidoro/navi $ZSH_CUSTOM/plugins/navi
