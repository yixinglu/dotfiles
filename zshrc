export ZSH=$HOME/.oh-my-zsh
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

ZSH_THEME="bira"
# ZSH_THEME="maran"

plugins=(fasd git docker osx) # you-get youtube-dl python

source $ZSH/oh-my-zsh.sh
alias docker-clean='docker rm $(docker ps -qa -f status=exited); docker rmi $(docker images -qa -f dangling=true)'

. ~/.bash_aliases
