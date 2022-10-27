export ZSH=$HOME/.oh-my-zsh

# brew
export HOMEBREW_BREW_GIT_REMOTE=https://mirrors.ustc.edu.cn/brew.git
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.ustc.edu.cn/homebrew-core.git
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# golang settings
export GO111MODULE=on
export GOPATH=$HOME/go
# export GOROOT=/usr/lib/golang
export GOPROXY=https://goproxy.cn
export PATH=$HOME/.local/bin:$GOPATH/bin:$PATH:/opt/homebrew/bin

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# locate
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Set fzf installation directory path
export FZF_BASE=/usr/bin/fzf

# Navi
# export PATH=$PATH:"$ZSH/custom/plugins/navi"

ZSH_THEME="bira"
# ZSH_THEME="maran"

plugins=(
  fasd
  fzf
  docker
  docker-compose
  git
  # macos
  python
  # navi
  z
  zsh-syntax-highlighting
  # you-get
  # youtube-dl
  )

fpath=(~/.zsh/completion $fpath)
. ~/.bash_aliases

# source "$(navi widget zsh)"
source $ZSH/oh-my-zsh.sh
