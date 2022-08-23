#!/bin/bash

alias vi='vim'
alias g='git'
alias ed='emacs --daemon -nw'
alias e='emacsclient -t'
alias gopen='gnome-open'
alias mkdir='mkdir -p'
alias ...='../..'
alias cnpm='npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc'

# alias docker-clean='docker rm $(docker ps -qa -f status=exited); docker rmi $(docker images -qa -f dangling=true)'
alias docker-clean='for i in `docker ps -qa -f status=exited`; do \
      docker rm $i; \
      echo "rm docker container $i"; \
    done; \
    for j in `docker images -qa -f dangling=true`; do \
      docker rmi $j; \
      echo "rm docker image $j"; \
    done'
alias pidinfo='gdb -ex "set pagination 0" -ex "thread apply all bt" --batch -p'
