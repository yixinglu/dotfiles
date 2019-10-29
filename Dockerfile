FROM fedora:31

ARG USER_NAME="yee"
ARG USER_PASSWORD="yee"

LABEL MAINTAINER="Yee <xinglu.yee@gmail.com>"

RUN yum update -y && yum install -y \
  adobe-source-code-pro-fonts \
  aspell \
  ccls \
  curl \
  dstat \
  emacs \
  fzf \
  gdb \
  git \
  git-lfs \
  golang \
  graphviz \
  iproute \
  make \
  man-db \
  nc \
  net-tools \
  openssh \
  openssh-clients \
  powerline-fonts \
  procps-ng \
  ripgrep \
  smartmontools \
  sudo \
  sysstat \
  tcpdump \
  telnet \
  tmux \
  vim \
  wget \
  which \
  xterm \
  zsh

# fasd
RUN git clone https://github.com/clvv/fasd.git \
  && cd fasd \
  && make install \
  && rm -rf fasd

# RUN adduser --create-home --system --user-group --no-log-init --password $USER_PASSWORD --shell /bin/zsh $USER_NAME

USER $USER_NAME
WORKDIR /home/$USER_NAME

# terminal colors with xterm
# ENV TERM=xterm
ENV TERM=xterm-256color

# oh my zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# navi
ENV ZSH_CUSTOM=/home/$USER_NAME/.oh-my-zsh/custom
RUN mkdir -p $ZSH_CUSTOM/plugins \
  && git clone https://github.com/denisidoro/navi $ZSH_CUSTOM/plugins/navi

ENV PATH=$PATH:"$ZSH_CUSTOM/plugins/navi"

# golang
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn
ENV GOPATH="/home/$USER_NAME/go"
ENV PATH=${PATH}:${GOPATH}/bin
RUN go get -v golang.org/x/tools/gopls@latest \
  && go get -u -v golang.org/x/tools/cmd/godoc \
  && go get -u -v golang.org/x/tools/cmd/goimports \
  && go get -u -v golang.org/x/tools/cmd/gorename \
  && go get -u -v golang.org/x/tools/cmd/guru \
  && go get -u -v github.com/cweill/gotests/... \
  && go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct \
  && go get -u -v github.com/fatih/gomodifytags \
  && go get -u -v github.com/godoctor/godoctor \
  && go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint \
  && go get -u -v github.com/haya14busa/gopkgs/cmd/gopkgs \
  && go get -u -v github.com/josharian/impl \
  && go get -u -v github.com/mdempsky/gocode \
  && go get -u -v github.com/rogpeppe/godef \
  && go get -u -v github.com/zmb3/gogetdoc
