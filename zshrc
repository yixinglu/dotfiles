export ZSH=$HOME/.oh-my-zsh
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export GO111MODULE=on
export GOPATH=$HOME/go
export GOROOT=/usr/lib/golang
export GOPROXY=https://goproxy.cn
export PATH=$PATH:$GOPATH/bin

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

ZSH_THEME="bira"
# ZSH_THEME="maran"

plugins=(
  fzf
  fasd
  git
  docker
  docker-compose
  osx
  ) # you-get youtube-dl python

source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh/completion $fpath)

. ~/.bash_aliases
