export ZSH=$HOME/.oh-my-zsh

export PATH=/opt/homebrew/bin:$PATH

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
