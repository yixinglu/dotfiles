#!/bin/bash

alias vi='vim'
alias g='git'
alias gopen='gnome-open'
alias mkdir='mkdir -p'
alias ...='../..'
alias cnpm='npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc'
alias docker-clean='docker rm $(docker ps -qa -f status=exited) && docker rmi $(docker images -qa -f dangling=true)'
